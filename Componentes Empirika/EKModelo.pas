{$I EmpiriKa.inc}
unit EKModelo;

interface

Uses Windows, SysUtils, ComCtrls, Classes, DB,
     ZConnection, inifiles, ZAbstractRODataset,
     ZDataset, Forms, ZSqlMonitor, zdbcintfs,
     ZSqlProcessor, ZAbstractDataset, ZStoredProcedure, Controls, DateUtils
{$IFDEF MUNISF}
     ,EKUsrLogin
{$ENDIF}
     ;

type
  TEKControlDataSetError = procedure(Dataset : TDataSet; E: Exception) of object;

type
  ttransacciones_activas = record
  nombre   : string;
  CtrlError : TEKControlDataSetError;
  datasets : array of TZAbstractDataSet;
end;

type
  TEventoOnSql = procedure(Dataset : TDataSet) of object;

  TOldEvento = class(TComponent)
    private
      evento : TDataSetNotifyEvent;
      despues_de_abrir : TDataSetNotifyEvent;
      procedure link(DataSet: TDataSet);
  end;

  TEKModeloTransaccion = class(TComponent)
  private
    Fconeccion : TZConnection;
    transacciones_activas : array of ttransacciones_activas;
  protected
    { Protected declarations }
    FOnIniciarSql : TEventoOnSql;
    FOnfinalizarSql : TEventoOnSql;
    procedure informacion(info: string);
    procedure validacion;
  public
    { Public declarations }
    transaccion : string;
    transaccion_blk : string;
    autocommit : string;

    function autocommit_on(nombre : string; datasets : array of TZAbstractDataSet ) : boolean;
    function autocommit_off(nombre : string; datasets : array of TZAbstractDataSet ) : boolean;
    function verificar_transaccion(nombre : string) : boolean;
    function aplicar_modificaciones(nombre : string) : boolean;

    function iniciar_transaccion(nombre : string; datasets : array of TZAbstractDataSet ) : boolean; overload;
    function iniciar_transaccion(nombre : string; datasets : array of TZAbstractDataSet ; CtrlError : TEKControlDataSetError ) : boolean; overload;

    function finalizar_transaccion(nombre : string) : boolean;
    function cancelar_transaccion(nombre : string) : boolean;

    function hay_transaccion() : boolean;

    function abrir(dataset: TZAbstractDataSet): boolean;
    procedure asignar_eventos(dataset : TZAbstractDataSet);
    procedure antes_de_abrir(DataSet: TDataSet);
    procedure despues_de_abrir(DataSet: TDataSet);
    procedure antes_de_cerrar(DataSet: TDataSet);
    function bloquear_transaccion(nombre : string) : boolean;
    procedure Parametros_conexion(Conector: TZConnection);
    function FechayHora: TDateTime;
    function Fecha : Tdate;
    function Hora: TTime;
  published
    { Published declarations }
    Property
      Coneccion : TZConnection read FConeccion write FConeccion;
    Property
      OnIniciarSql : TEventoOnSql read FOnIniciarSql write FOnIniciarSql;
    Property
      OnFinalizarSql : TEventoOnSql read FOnFinalizarSql write FOnFinalizarSql;

  end;


procedure Register;

implementation

uses EKEncriptado, EKInformacion, EKcontrolerror;


procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKModeloTransaccion]);
end;


{ TEKModeloTransaccion }

function TEKModeloTransaccion.iniciar_transaccion(nombre : string; datasets : array of TZAbstractDataSet ) : boolean;
var
  CtrlError : TEKControlDataSetError;
begin
  iniciar_transaccion(nombre, datasets, CtrlError);
end;

function TEKModeloTransaccion.iniciar_transaccion(nombre : string; datasets : array of TZAbstractDataSet; CtrlError : TEKControlDataSetError ) : boolean;
var
  i, nds  : integer;
  ta      : integer;
  s       : string;
begin
  validacion;
  // Chequea que no este activa una TRANSACCION MODO 1
  //--------------------------------------------------
  if transaccion <> '' then
  begin
    Application.MessageBox('Hay transacciones en modo 1 activas', 'ERROR');
    result := false;
    exit;
  end;

  // Chequea modo AUTOCOMIT
  //-----------------------
  if Coneccion.AutoCommit then
  begin
      Application.MessageBox('No se puede iniciar transaccion en modo Autocommit', 'ERROR');
      result := false;
      exit;
  end;

  ta := length(transacciones_activas);
  // Si no hay transacciones activas inicializa variable de bloqueo transacciones
  //-----------------------------------------------------------------------------
  if ta = 0 then
    transaccion_blk := '';

  // Verifica que no halla un transaccion bloqueada
  //-----------------------------------------------
  if (transaccion_blk <> '') and (transaccion_blk <> nombre) then
  begin
    Application.MessageBox(pchar('La Transaccion : '+
          transaccion_blk+' esta Bloqueada.'+chr(13)+'No se puede iniciar otra transacción.'), 'ERROR');
    result := false;
    exit;
  end;


  // Verifica que no halla un transaccion del mismo tipo/nombre
  //-----------------------------------------------------------
  for i:=0 to ta-1 do
    if transacciones_activas[i].nombre = nombre then
    begin
      Application.MessageBox(pchar('Existe una Transaccion activa : '+
            nombre+chr(13)), 'ERROR');
      result := false;
      exit;
    end;


  // Guarda datos de la transaccion iniciada
  //----------------------------------------
  inc(ta);
  SetLength(transacciones_activas, ta);
  transacciones_activas[ta-1].nombre := nombre;
  transacciones_activas[ta-1].CtrlError := CtrlError;
  nds := 0;
  for i := 0 to length(datasets)-1 do
    if Assigned(datasets[i]) then
    begin
      inc(nds);
      setlength(transacciones_activas[ta-1].datasets, nds);
      transacciones_activas[ta-1].datasets[i]:= datasets[i];
    end;

  s := 'TA: ';
  for i:=0 to ta-1 do
    s := s + '['+transacciones_activas[i].nombre+']';

  // Recorre los datasets pasados a la funcion
  //------------------------------------------
  for i := 0 to length(transacciones_activas[ta-1].datasets)-1 do
  begin
      transacciones_activas[ta-1].datasets[i].CachedUpdates := true;
      (transacciones_activas[ta-1].datasets[i] as TZQuery).ReadOnly := False;
      asignar_eventos(transacciones_activas[ta-1].datasets[i]);
      if not transacciones_activas[ta-1].datasets[i].Active then
        transacciones_activas[ta-1].datasets[i].Active := true;
      //Principal.StatusBar1.Panels[3].Text := (datasets[i].Owner as tform).Caption;
  end;

  informacion(s);

  result := true;
end;



procedure TEKModeloTransaccion.asignar_eventos(dataset : TZAbstractDataSet);
var
  evento : TOldEvento;
begin
  if (dataset.Tag <> 55) then
  begin
    if Assigned(dataset.BeforeOpen) then
      Application.MessageBox(pchar('El evento BeforeOpen del componente '+dataset.Name+' ha sido reeplazado.'), 'Atención');
    dataset.BeforeOpen := antes_de_abrir;

    if Assigned(dataset.AfterOpen) then
    begin
      evento := TOldEvento.Create(dataset);
      evento.evento := dataset.AfterOpen;
      evento.despues_de_abrir := despues_de_abrir;
      dataset.AfterOpen := evento.link;
    end
    else
      dataset.AfterOpen := despues_de_abrir;

    if Assigned(dataset.BeforeRefresh) then
      Application.MessageBox(pchar('El evento BeforeRefresh del componente '+dataset.Name+' ha sido reeplazado.'), 'Atención');
    dataset.BeforeRefresh := antes_de_abrir;

    if Assigned(dataset.AfterRefresh) then
      Application.MessageBox(pchar('El evento AfterRefresh del componente '+dataset.Name+' ha sido reeplazado.'), 'Atención');
    dataset.AfterRefresh := despues_de_abrir;

    if Assigned(dataset.BeforeClose) then
      Application.MessageBox(pchar('El evento BeforeClose del componente '+dataset.Name+' ha sido reeplazado.'), 'Atención');
    dataset.BeforeClose := antes_de_cerrar;
  end;

  dataset.Tag := 55;
end;


procedure TEKModeloTransaccion.antes_de_abrir(DataSet: TDataSet);
begin
  (dataset as TZQuery).ReadOnly := False;
  if Assigned(FOnIniciarSql) then
    FOnIniciarSql(dataset);
end;

procedure TEKModeloTransaccion.despues_de_abrir(DataSet: TDataSet);
var
  i, j, ta, ta_a : integer;
begin
  // Busca numero de transaccion
  //----------------------------
  ta := length(transacciones_activas);
  ta_a := -1;
  for i:=0 to ta-1 do
    for j := 0 to length(transacciones_activas[i].datasets)-1 do
      if transacciones_activas[i].datasets[j] = DataSet then
        ta_a := j;

  // Verifica si encontro la transaccion
  //------------------------------------
  if ta_a = -1 then
    (dataset as TZQuery).ReadOnly := True;

  if Assigned(FOnfinalizarSql) then
    FOnfinalizarSql(DataSet);
end;

procedure TEKModeloTransaccion.antes_de_cerrar(DataSet: TDataSet);
var
  i, j, ta, ta_a : integer;
begin
  // Busca numero de transaccion
  //----------------------------
  ta := length(transacciones_activas);
  ta_a := -1;
  for i:=0 to ta-1 do
    for j := 0 to length(transacciones_activas[i].datasets)-1 do
      if transacciones_activas[i].datasets[j] = DataSet then
        ta_a := i;

  // Verifica si encontro la transaccion
  //------------------------------------
  if ta_a <> -1 then
  begin
    if (dataset as TZAbstractDataSet).UpdatesPending then
    begin
      if transaccion_blk <> '' then
      begin
        if transaccion_blk <> transacciones_activas[ta_a].nombre then
          Application.MessageBox(pchar('No se pueden guradar las modificaciones de la transacción :'+
                transacciones_activas[ta_a].nombre+
                chr(13)+'Hay otra transacción bloqueada'), 'ERROR')
        else
          (dataset as TZAbstractDataSet).ApplyUpdates;
      end
      else
      begin
        bloquear_transaccion(transacciones_activas[ta_a].nombre);
        (dataset as TZAbstractDataSet).ApplyUpdates;
      end;
    end;
  end;

end;


function TEKModeloTransaccion.abrir(dataset : TZAbstractDataSet) : boolean;
begin
  asignar_eventos(dataset);
  dataset.Open;
end;

function TEKModeloTransaccion.bloquear_transaccion(nombre : string) : boolean;
var
  ta, ta_a, i : integer;
  s : string;
begin

  // Verifica transaccion bloqueada
  //-----------------------------------------------
    if (transaccion_blk <> '')  then
  begin
    Application.MessageBox(pchar('La Transaccion : '+
          transaccion_blk+' ya esta Bloqueada.'+chr(13)+'No se puede bloquear la transaccion si esta bloqueada.'), 'ERROR');
    result := false;
    exit;
  end;

  // Busca numero de transaccion
  //----------------------------
  ta := length(transacciones_activas);
  ta_a := -1;
  for i:=0 to ta-1 do
    if transacciones_activas[i].nombre = nombre then
      ta_a := i;

  // Verifica si encontro la transaccion
  //------------------------------------
  if ta_a = -1 then
  begin
    Application.MessageBox(pchar('No Existe una Transaccion activa : '+
          nombre+chr(13)), 'ERROR');
    result := false;
    exit;
  end;

  transaccion_blk := nombre;

  s := 'TA: ';
  for i:=0 to ta-1 do
    if transacciones_activas[i].nombre = nombre then
      s := s + '['+ nombre +'-BLOQUEADA]'
    else
      s := s + '['+transacciones_activas[i].nombre+']';

  informacion(s);

  result := true;
end;

function TEKModeloTransaccion.finalizar_transaccion(nombre : string) : boolean;
var
  ta, ta_a, i : integer;
  s : string;
  bien : boolean;
begin

  // Verifica que no halla un transaccion bloqueada
  //-----------------------------------------------
  if (transaccion_blk <> '') and (transaccion_blk <> nombre) then
  begin
    Application.MessageBox(pchar('La Transaccion : '+
          transaccion_blk+' esta Bloqueada.'+chr(13)+'No se puede Finalizar otra transacción.'), 'ERROR');
    result := false;
    exit;
  end;

  // Busca numero de transaccion
  //----------------------------
  ta := length(transacciones_activas);
  ta_a := -1;
  for i:=0 to ta-1 do
    if transacciones_activas[i].nombre = nombre then
      ta_a := i;

  // Verifica si encontro la transaccion
  //------------------------------------
  if ta_a = -1 then
  begin
    Application.MessageBox(pchar('No Existe una Transaccion activa : '+
          nombre+chr(13)), 'ERROR');
    result := false;
    exit;
  end;

  try
    // Aplica las modificaciones
    bien := false;
    for i := 0 to length(transacciones_activas[ta_a].datasets)-1 do
    begin
	    if transacciones_activas[ta_a].datasets[i].Active then
        transacciones_activas[ta_a].datasets[i].ApplyUpdates;
    end;
    Coneccion.Commit;
    bien := true;
  except
    raise Exception.Create('');
//    on E: Exception do
//    begin
//        if Assigned(transacciones_activas[ta_a].CtrlError) then
//        transacciones_activas[ta_a].CtrlError(transacciones_activas[ta_a].datasets[i], e)
//      else
//        control_errores(E);
//    end
  end;
  if not bien then
  begin
    // Application.MessageBox(pchar('Se produjo un error al guardar los datos en la transacción '+nombre+chr(13)+'La Transacción quedara bloqueada hasta que se guarden correctamente los datos o se cancele la misma.'), 'ERROR');

    // No hace Coneccion.Rollback;
    // Si se produce un error bloquea la transaccion
    // (Solo se puede trabajar sobre esta transaccion)
    //
    // Mantiene la transaccion abierta con el servidor
    // Devuelve el control al punto donde fue llamada la funcion dando
    // la posibilidad de modificar los datos para eliminar el error o
    // Cancelar la transaccion.
    transaccion_blk := nombre;
    s := 'TA: ';
    for i:=0 to ta-1 do
      if transacciones_activas[i].nombre = nombre then
        s := s + '['+ nombre +'-BLOQUEADA]'
      else
        s := s + '['+transacciones_activas[i].nombre+']';
    informacion(s);
    result := false;
    exit;
  end;

  // Si todo salio bien limpia el cache de cada dataset
  // Cierra la transaccion
  //---------------------------------------------------
  for i := 0 to length(transacciones_activas[ta_a].datasets)-1 do
  begin
	if transacciones_activas[ta_a].datasets[i].Active then
    transacciones_activas[ta_a].datasets[i].CommitUpdates;
    transacciones_activas[ta_a].datasets[i].CachedUpdates := false;;
    (transacciones_activas[ta_a].datasets[i] as TZQuery).ReadOnly := True;
   end;

  for i := ta_a+1 to ta-1 do
    transacciones_activas[i-1] := transacciones_activas[i];

  SetLength(transacciones_activas, ta-1);
  ta := ta-1;

  s := 'TA: ';
  for i:=0 to ta-1 do
    s := s + '['+transacciones_activas[i].nombre+']';

  informacion(s);
  transaccion_blk := '';
  result := true;
end;

function TEKModeloTransaccion.cancelar_transaccion(nombre : string) : boolean;
var
  ta, ta_a, i : integer;
  s : string;
begin

  // Verifica que no halla un transaccion bloqueada
  //-----------------------------------------------
  if (transaccion_blk <> '') and (transaccion_blk <> nombre) then
  begin
    Application.MessageBox(pchar('La Transaccion : '+
          transaccion_blk+' esta Bloqueada.'+chr(13)+'No se puede cancelar otra transacción.'), 'ERROR');
    result := false;
    exit;
  end;

  // Busca numero de transaccion
  //----------------------------
  ta := length(transacciones_activas);
  ta_a := -1;
  for i:=0 to ta-1 do
    if transacciones_activas[i].nombre = nombre then
      ta_a := i;

  // Verifica si encontro la transaccion
  //------------------------------------
  if ta_a = -1 then
  begin
    Application.MessageBox(pchar('No Existe una Transaccion activa : '+
          nombre+chr(13)), 'ERROR');
    result := false;
    exit;
  end;

  // Cancela Modificaciones
  //-----------------------
  for i := 0 to length(transacciones_activas[ta_a].datasets)-1 do
  begin
	if transacciones_activas[ta_a].datasets[i].Active then
    begin
    transacciones_activas[ta_a].datasets[i].CancelUpdates;
    transacciones_activas[ta_a].datasets[i].CachedUpdates := false;
    (transacciones_activas[ta_a].datasets[i] as TZQuery).ReadOnly := True;
    end;
  end;

  Coneccion.Rollback;

  // Si esta cancelando una transaccion bloqueada refresco los datasets
  // Si NO refrescara quedarian incosistente los datos que fueron aplicados
  // antes de producirse el error.
  // Si es un procedimiento almacenado no deberia modificar tablas
  //-----------------------------------------------------------------------
  if transaccion_blk <> '' then
    for i := 0 to length(transacciones_activas[ta_a].datasets)-1 do
	 if transacciones_activas[ta_a].datasets[i].Active then
      transacciones_activas[ta_a].datasets[i].Refresh;

  for i := ta_a+1 to ta-1 do
    transacciones_activas[i-1] := transacciones_activas[i];

  SetLength(transacciones_activas, ta-1);
  ta := ta-1;

  s := 'TA: ';
  for i:=0 to ta-1 do
    s := s + '['+transacciones_activas[i].nombre+']';

  informacion(s);
  transaccion_blk := '';
  result := true;
end;


function TEKModeloTransaccion.verificar_transaccion(nombre : string) : boolean;
var
  ta, ta_a, i : integer;
begin
  ta := length(transacciones_activas);
  ta_a := -1;
  for i:=0 to ta-1 do
    if transacciones_activas[i].nombre = nombre then
      ta_a := i;

  if ta_a = -1 then
    result := false
  else
    result := true;
end;

function TEKModeloTransaccion.autocommit_on(nombre : string; datasets : array of TZAbstractDataSet ) : boolean;
var
  i  : integer;
  ta : integer;
  s  : string;
begin

  // Chequea que no este activa una TRANSACCION MODO 1
  //--------------------------------------------------
  if transaccion <> '' then
  begin
    Application.MessageBox('Hay transacciones en modo 1 activas', 'ERROR');
    result := false;
    exit;
  end;

  // Chequea modo AUTOCOMMIT
  //-----------------------
  if Coneccion.AutoCommit then
  begin
      Application.MessageBox('No se puede iniciar modo AutoCommit, ya esta en AutoCommit', 'ERROR');
      result := false;
      exit;
  end;

  ta := length(transacciones_activas);
  // Si no hay transacciones activas inicializa variable de bloqueo transacciones
  //-----------------------------------------------------------------------------
  if ta > 0 then
  begin
    Application.MessageBox('No se puede iniciar modo AutoCommit, Hay transacciones modo 2 activas', 'ERROR');
    exit;
  end;

  // Recorre los datasets pasados a la funcion
  //------------------------------------------
  for i := 0 to length(datasets)-1 do
  begin
      datasets[i].CachedUpdates := false;
      (datasets[i] as TZQuery).ReadOnly := False;
      datasets[i].Active := true;
  end;

  Coneccion.AutoCommit := true;
  autocommit := nombre;

  s:= '['+nombre+'-MODO AUTOCOMMIT]';
  informacion(s);

  result := true;
end;

function TEKModeloTransaccion.autocommit_off(nombre : string; datasets : array of TZAbstractDataSet ) : boolean;
var
  i  : integer;
  s  : string;
begin

  if autocommit <> nombre then
  begin
      Application.MessageBox('No se puede finalizar modo AutoCommit', 'ERROR');
      result := false;
      exit;
  end;


  // Chequea modo AUTOCOMMIT
  //-----------------------
  if not Coneccion.AutoCommit then
  begin
      Application.MessageBox('No se puede finalizar modo AutoCommit, no esta en AutoCommit', 'ERROR');
      result := false;
      exit;
  end;


  // Recorre los datasets pasados a la funcion
  //------------------------------------------
  for i := 0 to length(datasets)-1 do
  begin
      datasets[i].ApplyUpdates;
      datasets[i].CachedUpdates := false;
      (datasets[i] as TZQuery).ReadOnly := True;
  end;

  Coneccion.AutoCommit := false;
  autocommit := '';

  s:= '';
  informacion(s);

  result := true;

end;


function TEKModeloTransaccion.hay_transaccion() : boolean;
begin
  if length(transacciones_activas) > 0 then
    result := true
  else
    result := false;
end;

function TEKModeloTransaccion.aplicar_modificaciones(nombre : string) : boolean;
var
  bien : boolean;
  ta, ta_a, i : integer;
  s : string;
begin

  // Verifica transaccion bloqueada
  //-----------------------------------------------
  if (transaccion_blk = '') then
    bloquear_transaccion(nombre);


  if (transaccion_blk <> nombre) then
  begin
    Application.MessageBox(pchar('La Transaccion : '+
          transaccion_blk+' esta Bloqueada.'+chr(13)+'No se puede Bloquear otra transacción.'), 'ERROR');
    result := false;
    exit;
  end;

  // Busca numero de transaccion
  //----------------------------
  ta := length(transacciones_activas);
  ta_a := -1;
  for i:=0 to ta-1 do
    if transacciones_activas[i].nombre = nombre then
      ta_a := i;

  // Verifica si encontro la transaccion
  //------------------------------------
  if ta_a = -1 then
  begin
    Application.MessageBox(pchar('No Existe una Transaccion activa : '+
          nombre+chr(13)), 'ERROR');
    result := false;
    exit;
  end;

  try
    bien := false;
    // Aplica las modificaciones
    for i := 0 to length(transacciones_activas[ta_a].datasets)-1 do
      transacciones_activas[ta_a].datasets[i].ApplyUpdates;
    bien := true;
  except
    on E: Exception do control_errores(E);
  end;

  if not bien then
  begin

    // No hace Coneccion.Rollback;
    // Si se produce un error bloquea la transaccion
    // (Solo se puede trabajar sobre esta transaccion)
    //
    // Mantiene la transaccion abierta con el servidor
    // Devuelve el control al punto donde fue llamada la funcion dando
    // la posibilidad de modificar los datos para eliminar el error o
    // Cancelar la transaccion.
    Application.MessageBox(pchar('Se produjo un error al guardar los datos en la transacción '+nombre+chr(13)+'La Transacción quedara bloqueada hasta que se guarden correctamente los datos o se cancele la misma.'), 'ERROR');

    s := 'TA: ';
    for i:=0 to ta-1 do
      if transacciones_activas[i].nombre = nombre then
        s := s + '['+ nombre +'-BLOQUEADA]'
      else
        s := s + '['+transacciones_activas[i].nombre+']';
    informacion(s);
    result := false;
  end;
  result := bien;
end;

procedure TEKModeloTransaccion.validacion();
begin
end;

procedure TEKModeloTransaccion.informacion(info: string);
begin
    if Assigned(EKInformacion1) then
      if Assigned(EKInformacion1.StatusBar) then
        if EKInformacion1.IndiceTransaccion > -1 then
        begin
          EKInformacion1.StatusBar.Panels.Items[EKInformacion1.IndiceTransaccion].Text := info;
          EKInformacion1.StatusBar.Repaint;
        end;
end;

procedure TEKModeloTransaccion.Parametros_conexion(Conector: TZConnection);
begin
begin
  conector.HostName := Coneccion.HostName;
  conector.Password := Coneccion.Password;
  conector.User := Coneccion.User;
  conector.Database := Coneccion.Database;
  conector.Properties := Coneccion.Properties;
  conector.Protocol := Coneccion.Protocol;
  conector.AutoCommit := false;
  conector.TransactIsolationLevel:= tiReadCommitted;
end;


end;

function TEKModeloTransaccion.FechayHora: TdateTime;
  var sql : TZQuery;
begin
  sql := TZQuery.Create(self);
  sql.Connection := Fconeccion;
  sql.SQL.Text := 'Select current_timestamp as fechayhora from RDB$DATABASE';
  sql.Active := true;
  result := sql.fieldbyname('fechayhora').AsDateTime;
  sql.Close;
  sql.Free;
end;

function TEKModeloTransaccion.Fecha: TDate;
begin
  fecha := DateOf(fechayhora);
end;

function TEKModeloTransaccion.Hora: TTime;
begin
  hora := timeOf(fechayhora);
end;


{ TOldEvento }

procedure TOldEvento.link(DataSet: TDataSet);
begin
  evento(DataSet);
  despues_de_abrir(DataSet);
end;

end.
