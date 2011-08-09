unit EKOrdenarGrilla;

interface

uses
  Messages, Controls, Dialogs, SysUtils, Classes, DBGrids, ZDataset,
  Graphics, windows, DBClient, Provider, DB, Registry, forms, Grids,
  StdCtrls, strutils, Menus;


type //Tipo de datos para poder acceder a las propiedades proptegidas de TCustomGrid
  THackGrid = class(TCustomGrid);


type //No se para que sirve
  TomaInvento = class(TControl);


type //Tipo de datos que representa una columna de la grilla
  TEKColumna = class(TCollectionItem)
  private
    function GetDisplayName : string; override;
  protected
    FTituloColumna: String; //tiene que cargarse el nombre del titulo que tiene la columna de la grilla
    FVisible: Boolean; //valor que indica como se inicia la columna, si visible o no
  public
    constructor Create(Collection: TCollection); override;
    destructor destroy ; override;
    procedure Assign(Source: TPersistent); override;
  published
    Property TituloColumna: String read FTituloColumna write FTituloColumna;
    Property Visible: Boolean read FVisible write FVisible;
  end;


type //Tipo de datos que representa el conjunto de columnas de la grilla
  TEKColumnas = Class(TCollection)
  private
  protected
   FOwner:TPersistent;
   function GetOwner:TPersistent; override;
   function GetItem(Index: Integer): TEKColumna;
   procedure SetItem(Index: Integer; Value: TEKColumna);
  public
    property Items[Index: Integer]: TEKColumna read GetItem write SetItem; default;
  end;


type //El componente ordenar grilla
  TEKOrdenarGrilla = class(TComponent)
  private
    { Private declarations }

    FPopUpMenuOriginal: TPopUpMenu; //si la grilla ya tiene un PopUpMenu seteado lo guardo en esta variable
    FPopUpMenu: TPopUpMenu; //PopUpMenu que va a contener los filtros
    FGrilla: TDBGrid; //Grilla que se va a filtrar
    FFiltros: TEKColumnas; //Filtros
    FNombreGuardar: String; //Nombre con el que se va a guardar la configuracion en la pc
    FAltoTituloColumna: integer; //Alto del titulo de la columna, desde 0 a este valor se va a mostrar el PopUp de los filtros
    FFuenteNormal: TFontStyles; //Fuente estandar del titulo de las columnas
    FFuenteOrdenado: TFontStyles; //Fuente del titulo de las columnas para cuando estan ordenadas
    FOrdenar: Boolean; //Variable que indica si se permite ordenar o no
    FMoverColumna: boolean; //variable que indica si se permite cambiar de posicion las columnas
    FFiltrar: boolean; //variable que indica si se permite filtrar o no las columnas

    procedure SetFGrilla(const Value: TDBGrid); //seteo de la grilla
    procedure SetFPopUpMenu(); //seteo del popup
    procedure setOpcionMover();
    procedure OnClickPopUp(Sender: TObject); //evento para cuando se selecciona una opcion del popup
    function GetIndex(grilla: TDBGrid; Nombre: string): Integer; //devuelve el indice en la grilla de la columna pasada como parametro
    function verificarGrilla(grilla: TDBGrid; indice: integer): boolean; //pone visible o invisible en la grilla la columna con el indice pasado como parametro
    procedure iniciarGrilla(grilla: TDBGrid; indice: integer; visible: boolean); //pongo visible los campos segun los filtros cargafos
    procedure iniciarFiltros(grilla: TDBGrid); //carga las opciones del popup extrayendo los datos de la grilla
    procedure MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer); //habilita el popup de los filtros cuando me posiciono en el titulo de la grilla
    procedure TitleClick(Column: TColumn); //evento para cuando se preciona en el tiulo que ordene o busque
    procedure DBGridGiraLaRueda(var Message: TMessage); //para usar la rueda del mouse para desplazarce por la grilla

    procedure GuardarFiltro(); //guardo los filtros en la pc
    procedure CargarFiltro();  //cargo los filtros guardados
    procedure GuardarOrdenar(); //guardo el orden en la pc
    procedure CargarOrdenar();  //cargo el orden guardados
  protected
    { Protected declarations }
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor destroy ; override;

    procedure GuardarConfigColumnas(); //guardo toda la configuracion de las columnas en la pc
    procedure CargarConfigColumnas();  //cargo toda la configuracion de las columnas desde la pc
  published
    Property Grilla: TDBGrid read FGrilla write SetFGrilla;
    Property Filtros: TEKColumnas read FFiltros write FFiltros;
    Property NombreGuardar: String read FNombreGuardar write FNombreGuardar;
    Property AltoTituloColumna: integer read FAltoTituloColumna write FAltoTituloColumna;
    Property FuenteNormal : TFontStyles read FFuenteNormal write FFuenteNormal;
    Property FuenteOrdenado : TFontStyles read FFuenteOrdenado write FFuenteOrdenado default [fsBold,fsUnderline];
    property PermitirOrdenar : Boolean read FOrdenar write FOrdenar;
    property PermitirMover : Boolean read FMoverColumna write FMoverColumna;
    property PermitirFiltrar : Boolean read FFiltrar write FFiltrar;
  end;

procedure Register;

implementation

uses ZAbstractRODataset;

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKOrdenarGrilla]);
end;


//-----------------------------------------------------------------
//      TEKColumna
//-----------------------------------------------------------------
constructor TEKColumna.Create(Collection: TCollection);
begin
  inherited;

  FVisible:= true; //por defecto todos los filtros que se cargan se ponen en visible
end;


destructor TEKColumna.destroy;
begin
  inherited;
end;


procedure TEKColumna.Assign(Source: TPersistent);
begin
//  if Source is TCheckConstraint then
//  begin
//   FGroupOperation := TEKDBSumaItem(Source).FGroupOperation;
//   FFieldName := TEKDBSumaItem(Source).FFieldName;
//   Value := TEKDBSumaItem(Source).Value;
//   SumValue := TEKDBSumaItem(Source).SumValue;
//  end;
//  inherited Assign(Source);
end;


//Procedimento para mostrar el nombre que se carga en la lista de filtros
function TEKColumna.GetDisplayName: string;
begin
  result:= FTituloColumna;
  if Result = '' then Result := inherited GetDisplayName;
end;


//-----------------------------------------------------------------
//      TEKColumnas
//-----------------------------------------------------------------
function TEKColumnas.GetOwner:TPersistent;
begin
  Result:= FOwner;
end;


function TEKColumnas.GetItem(Index: Integer): TEKColumna;
begin
  Result:= TEKColumna(inherited GetItem(Index));
end;


procedure TEKColumnas.SetItem(Index: Integer; Value: TEKColumna);
begin
  inherited SetItem(Index, Value);
end;


//-----------------------------------------------------------------
//      TEKOrdenarGrilla
//-----------------------------------------------------------------
//Constructor del componente
constructor TEKOrdenarGrilla.Create(AOwner: TComponent);
begin
  inherited;

  FFiltros := TEKColumnas.Create(TEKColumna);
  FAltoTituloColumna:= 15; //por defecto el tamaño de los titulos es de 15
  FFuenteOrdenado := [fsBold,fsUnderline];
  FFuenteNormal := [];
  FOrdenar:= true; //por defecto permite ordenar
  FMoverColumna:= true; //por defecto permite cambiar de posicion las columnas
  FFiltrar:= true; //por defecto permite filtrar  
end;


//Destructor del componente
destructor TEKOrdenarGrilla.destroy;
begin
  FFiltros.Free;

  inherited;
end;


//procedimiento que setea la grilla en el componente
procedure TEKOrdenarGrilla.SetFGrilla(const Value: TDBGrid);
begin
  FGrilla:= Value;

  if (csDesigning in ComponentState) then
    iniciarFiltros(FGrilla);

  SetFPopUpMenu();

  if Assigned(FGrilla.PopupMenu) then //si la grilla ya tiene un popup asignado lo guardo para que no se pierda
    FPopUpMenuOriginal:= FGrilla.PopupMenu
  else
    FPopUpMenuOriginal:= nil;

  if not ((csDesigning in ComponentState)) then
  begin
    if Assigned(FGrilla) then
    begin
      FGrilla.OnTitleClick := TitleClick;
      FGrilla.WindowProc := DBGridGiraLaRueda;
      FGrilla.OnMouseMove := MouseMove;
      setOpcionMover;
    end;
  end;
end;


//Crea el popup y agrega las opciones
procedure TEKOrdenarGrilla.SetFPopUpMenu();
var
  i: integer;
  menuItem : TMenuItem;
begin
  inherited;

  FPopUpMenu:= TPopupMenu.Create(nil); //creo el PopUpMenu
  FPopUpMenu.Name:= 'PopUpMenu';

  for i := 0 to FFiltros.Count - 1 do  //por cada un de los filtros cargados
  begin
    with TEKColumna(FFiltros.Items[i]) do
    begin
      menuItem:= TMenuItem.Create(FPopUpMenu); //creo el item del PopUp
      menuItem.Caption:= FTituloColumna; //con el nombre del filtro
      menuItem.Checked:= FVisible;
      menuItem.OnClick:= OnClickPopUp; //asigno el evento para cuando se selecciona
      FPopUpMenu.Items.Add(menuItem); //agrego el item al menu

      iniciarGrilla(FGrilla, i, FVisible); //inicio la columan de la grilla en visible o no segun el parametro
    end;
  end
end;


//Guardo las opciones seleccionadas en los filtros en el registro de windows
procedure TEKOrdenarGrilla.GuardarFiltro();
var
  Registro :TRegistry;
  F        :Byte;
  aplicacion: string;
begin
  if FNombreGuardar > '' then //si puse un nombre para guardar
  begin
    try
      aplicacion:= ExtractFileName(Application.Exename); //guardo el nombre de la aplicacion
      aplicacion:= LeftStr(aplicacion, (Length(aplicacion)-4));
      Registro:= TRegistry.Create;
      Registro.OpenKey('\Software\EmpiriKa\'+aplicacion+'\FiltrarGrilla\'+FGrilla.Name, TRUE);
                    //Ej: \Software\EmpiriKa\Sigefa\FiltrarGrilla\DBGridComprobante\

      for F:= 0 to FFiltros.Count - 1 do //Por cada uno de los filtros cargados
      begin
        with TEKColumna(FFiltros.Items[F]) do
          if FVisible then //si la columna esta visible
            Registro.WriteString(FNombreGuardar+'_'+FTituloColumna, 'TRUE')
          else //si la columna no esta visible
            Registro.WriteString(FNombreGuardar+'_'+FTituloColumna, 'FALSE')
      end;

      Registro.Free;
    except
    end;
  end;
end;


//Cargo las opciones seleccionadas en los filtros desde el registro de windows
procedure TEKOrdenarGrilla.CargarFiltro();
var
  Registro: TRegistry;
  F: Byte;
  aplicacion, titulo: string;
  columna: integer;
begin
  if FNombreGuardar > '' then //si puse un nombre para guardar
  begin
    try
      aplicacion:= ExtractFileName(Application.Exename); //guardo el nombre de la aplicacion
      aplicacion:= LeftStr(aplicacion, (Length(aplicacion)-4));
      Registro:= TRegistry.Create;
      Registro.OpenKey('\Software\EmpiriKa\'+aplicacion+'\FiltrarGrilla\'+FGrilla.Name, TRUE);

      for F:= 0 to FFiltros.Count - 1 do //Por cada uno de los filtros cargados
      begin
        with TEKColumna(FFiltros.Items[F]) do
          if Registro.ValueExists(FNombreGuardar+'_'+FTituloColumna) then //si existe el registro
          begin
            FVisible:= StrToBool(Registro.ReadString(FNombreGuardar+'_'+FTituloColumna));

            titulo:= FTituloColumna;
            delete(titulo, pos('&', titulo), 1);
            columna:= GetIndex(FGrilla, titulo); //busco el indice en la grilla del titulo pasado como parametro
            if columna >= 0 then //si encuentro la columna
            begin
              FGrilla.Columns[columna].Visible:= FVisible; //seteo el estado de la columna a visible o no
              FPopupMenu.Items[F].Checked:= FVisible;
            end
            else //si no encuentro la columna
              FPopupMenu.Items.Delete(F); //elimino la opcion correspondiente del popup
          end
      end;

      Registro.Free;
    except
    end;
  end;
end;


//Guarda el tamaño de las columnas y las posiciones de las mismas en la PC
procedure TEKOrdenarGrilla.GuardarOrdenar();
var
  Registro :TRegistry;
  F        :Byte;
  aplicacion: string;
begin
  if FNombreGuardar > '' then //si puse un nombre para guardar
  begin
    try
      aplicacion:= ExtractFileName(Application.Exename); //guardo el nombre de la aplicacion
      aplicacion:= LeftStr(aplicacion, (Length(aplicacion)-4));
      Registro:= TRegistry.Create;
      Registro.OpenKey('\Software\EmpiriKa\'+aplicacion+'\OrdenarGrilla\'+FGrilla.Name, TRUE);
                  //Ej: \Software\EmpiriKa\Sigefa\OrdenarGrilla\DBGridComprobante\

      for F:=0 to FGrilla.Columns.Count-1 do //por cada una de las columnas de la grilla
      begin
        Registro.WriteInteger(FNombreGuardar+'_'+FGrilla.Columns[F].Title.Caption+'_Width', FGrilla.Columns[F].Width); //guardo el tamaño
        Registro.WriteInteger(FNombreGuardar+'_'+FGrilla.Columns[F].Title.Caption+'_Index', F); //guardo el indice
      end;

      Registro.Free;
    except
    end;
  end;
end;


//Carga el tamaño de las columnas y las posiciones de las mismas desde la PC
procedure TEKOrdenarGrilla.CargarOrdenar();
var
  Registro: TRegistry;
  F: Byte;
  aplicacion: string;
  auxTitulos: array of String;
begin
  if FNombreGuardar > '' then //si puse un nombre para guardar
  begin
    try
      aplicacion:= ExtractFileName(Application.Exename); //guardo el nombre de la aplicacion
      aplicacion:= LeftStr(aplicacion, (Length(aplicacion)-4));
      Registro:= TRegistry.Create;
      Registro.OpenKey('\Software\EmpiriKa\'+aplicacion+'\OrdenarGrilla\'+FGrilla.Name, TRUE);
                  //Ej: \Software\EmpiriKa\Sigefa\OrdenarGrilla\DBGridComprobante\

      //para cargar el tamaño de la columna
      for F:=0 to FGrilla.Columns.Count-1 do //por cada uno de las columnas de la grilla
      begin
        if Registro.ValueExists(FNombreGuardar+'_'+FGrilla.Columns[F].Title.Caption+'_Width') then //si existe el valor en el registro
          FGrilla.Columns[F].Width:= Registro.ReadInteger(FNombreGuardar+'_'+FGrilla.Columns[F].Title.Caption+'_Width');
      end;

      SetLength(auxTitulos, FGrilla.Columns.Count);
      for F:= 0 to Length(auxTitulos)-1 do
      begin
        auxTitulos[F]:= (FGrilla.Columns[F].Title.Caption);
      end;

      //para cargar el indice de la columna
      for F:=0 to Length(auxTitulos)-1 do //por cada uno de las columnas de la grilla
      begin
        if Registro.ValueExists(FNombreGuardar+'_'+auxTitulos[F]+'_Index') then //si existe el valor en el registro
          FGrilla.Columns[GetIndex(FGrilla, auxTitulos[F])].Index:= Registro.ReadInteger(FNombreGuardar+'_'+auxTitulos[F]+'_index');
      end;

      Registro.Free;
    except
    end;
  end;
end;


procedure TEKOrdenarGrilla.GuardarConfigColumnas();
begin
  if PermitirFiltrar then
    GuardarFiltro;

  if PermitirOrdenar or PermitirMover then
    GuardarOrdenar;
end;


procedure TEKOrdenarGrilla.CargarConfigColumnas();
begin
  if PermitirFiltrar then
    CargarFiltro;

  if PermitirOrdenar or PermitirMover then
    CargarOrdenar;
end;


//devuelve el indice en la grilla de la columna pasada como parametro
function TEKOrdenarGrilla.GetIndex(grilla: TDBGrid; Nombre: string): Integer;
var
  i: Integer;
begin
  Result:= -1;

  if not Assigned(FGrilla) then //si no cargue ninguna grilla, entoces salgo
    exit;

  for i:= 0 to grilla.Columns.Count -1 do
    if Nombre = grilla.Columns[i].Title.Caption then
    begin
      Result:= i;
      Exit;
    end;
end;


//pone visible o invisible en la grilla la columna con el indice pasado como parametro
function TEKOrdenarGrilla.verificarGrilla(grilla: TDBGrid; indice: integer): boolean;
var
  columna: integer;
  titulo: string;
begin
  if not Assigned(FGrilla) then //si no cargue la grilla, entoces salgo
    exit;

  titulo:= FPopUpMenu.Items[indice].Caption;
  delete(titulo, pos('&', titulo), 1);
  columna:= GetIndex(grilla, titulo); //busco el indice en la grilla del titulo pasado como parametro

  if columna >= 0 then //si encuentro la columna
    if grilla.Columns[columna].Visible then
    begin
      grilla.Columns[columna].Visible:= false;
      TEKColumna(FFiltros.Items[indice]).FVisible:= false;
      Result:= false;
    end
    else
    begin
      grilla.Columns[columna].Visible:= true;
      TEKColumna(FFiltros.Items[indice]).FVisible:= true;
      Result:= true;
    end
end;


//Procedimiento que pone visible o no las columnas de las grillas segun el valor que se cargo en el componente
procedure TEKOrdenarGrilla.iniciarGrilla(grilla: TDBGrid; indice: integer; visible: boolean);
var
  columna: integer;
  titulo: string;
begin
  if not Assigned(FGrilla) then //si no cargue la grilla, entoces salgo
    exit;

  titulo:= FPopUpMenu.Items[indice].Caption;
  delete(titulo, pos('&', titulo), 1);
  columna:= GetIndex(grilla, titulo); //busco el indice en la grilla del titulo pasado como parametro

  if columna >= 0 then //si encuentro la columna
    grilla.Columns[columna].Visible:= visible;
end;


//Carga como filtros todos los campos que tienen la grilla
procedure TEKOrdenarGrilla.iniciarFiltros(grilla: TDBGrid);
var
  i: integer;
  itemNuevo: TEKColumna;
begin
  if not Assigned(FGrilla) then //si no cargue la grilla, entoces salgo
    exit;

  FFiltros.Clear;
  for i:= 0 to grilla.Columns.Count - 1 do
  begin
    TEKColumna(FFiltros.Add).FTituloColumna:= grilla.Columns[i].Title.Caption;
    FFiltros[i].FVisible:= grilla.Columns[i].Visible;
//    itemNuevo:= TEKColumna.Create(nil);
//    itemNuevo.FTituloColumna:= grilla.Columns[i].Title.Caption;
//    itemNuevo.FVisible:= grilla.Columns[i].Visible;
//    TEKColumna(FFiltros.Add):= itemNuevo;
  end
end;


//onclick del popup
procedure TEKOrdenarGrilla.OnClickPopUp(Sender: TObject);
begin
  with (Sender as TMenuItem) do
  begin
    (GetParentComponent as TPopupMenu).Items[MenuIndex].Checked:= verificarGrilla(FGrilla, MenuIndex);
  end;
end;


//procedimiento para mostrar el popupmenu cuando me posiciono en el titulo de las columnas
procedure TEKOrdenarGrilla.MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  FGrilla.ShowHint := false;

  if PermitirOrdenar then
    FGrilla.Hint := 'Click sobre el título para ordenar (+ CTRL para mas de un campo;  + SHIFT para buscar).'
  else
    FGrilla.Hint := 'Click + SHIFT sobre el título para buscar.';

  if y <= FAltoTituloColumna then //si estoy posicionado con el mouse en los titulos de la grilla
  begin
    FGrilla.ShowHint := true; //muestro el hint de los titulos
    if PermitirFiltrar then
      FGrilla.PopupMenu:= FPopUpMenu; //asigno el PopUpMenu del filtrado
  end
  else  //si no
     FGrilla.PopupMenu:= FPopUpMenuOriginal; //dejo el PopUpMenu que tenia por defecto
end;


//Procedure que habilita o no el movimiento de columnas de un lugar a otro
procedure TEKOrdenarGrilla.setOpcionMover();
begin
  with THackGrid(FGrilla) do
    if PermitirMover then
      Options := Options + [goColMoving] //si moverColumna es TRUE agrego la opcion de mover
    else
      Options := Options - [goColMoving]; //si moverColumna es FALSE quito la opcion de mover
end;


//Procedimiento que toma el giro de la rueda del mouse como un desplazamiento hacia arriba o abajo
procedure TEKOrdenarGrilla.DBGridGiraLaRueda(var Message: TMessage);
var
  Cuanto: short;
begin
  if (Message.Msg = WM_MOUSEWHEEL) then
  begin
    Cuanto:= HIWORD(Message.WParam);
    Cuanto:= Cuanto div 120;
    if not (FGrilla.DataSource.DataSet.State = dsInactive) then
      FGrilla.DataSource.DataSet.MoveBy(-Cuanto);
  end
  else
    TomaInvento(FGrilla).WndProc(Message);
end;


//Cuando hago click en el titulo de la grilla
procedure TEKOrdenarGrilla.TitleClick(Column: TColumn);
var
    filtro : string;
    x : integer;
    buscar : string;
    PulsoOk : boolean;
begin
    if not Assigned(column.Field) then
    begin
      ShowMessage('No se puede ordenar ni buscar sobre este tipo de campo');
      exit;
    end;

    if column.Field.FieldKind = fkLookup then   // saco los lockup porque dan error
    begin
      ShowMessage('No se puede ordenar ni buscar sobre este tipo de campo (lookup)');
      exit;
    end;

    //Buscar en la columna si esta el shift presionado
    if HiWord(GetKeyState(VK_SHIFT)) <> 0  then
    begin
        PulsoOk:= InputQuery('Busqueda en el campo '+column.Title.Caption, 'Ingrese la cadena a buscar:', buscar);
        if PulsoOk then
          if Not(FGrilla.DataSource.DataSet.Locate(column.Field.FieldName, buscar,[loCaseInsensitive, loPartialKey])) then
            ShowMessage('El Valor '+ buscar +' no se encuentra en el campo '+ column.Title.Caption +#13+'En los registros que esta visualizando en la ventana');
        exit;
    end;

    //si ordenar = false no se puede ordenar presionando sobre los titulos
    if not PermitirOrdenar then
      exit;

    //Ordeno la query por el titulo de la grilla presionado
    if FGrilla.DataSource.DataSet.ClassName = 'TClientDataSet'then
      filtro := TClientDataSet(FGrilla.DataSource.DataSet).IndexFieldNames
    else
      filtro := TZQuery(FGrilla.DataSource.DataSet).SortedFields;

    //si tengo apretado el CTRL permito ordenar por mas de un campo de la grilla
    if HiWord(GetKeyState(VK_CONTROL)) <> 0 then
    begin
      if filtro = '' then
        Filtro := column.Field.FieldName
      else
        if pos(column.Field.FieldName, filtro) = 0 then
          if FGrilla.DataSource.DataSet.ClassName = 'TClientDataSet'then
            filtro := filtro + '; '+column.Field.FieldName
          else
            filtro := filtro + ', '+column.Field.FieldName;
      Column.Title.Font.Style := FFuenteOrdenado;
    end
    else
    begin
      for x := 0 to FGrilla.Columns.Count - 1 do
        FGrilla.Columns.Items[x].Title.Font.Style := FFuenteNormal;
      if filtro = column.Field.FieldName then
        filtro := ''
      else
      begin
        Filtro := column.Field.FieldName;
        Column.Title.Font.Style := FFuenteOrdenado;
      end;
    end;

    if FGrilla.DataSource.DataSet.ClassName = 'TClientDataSet'then
      TClientDataSet(FGrilla.DataSource.DataSet).IndexFieldNames := filtro
    else
       TZQuery(FGrilla.DataSource.DataSet).SortedFields := filtro;
end;


procedure TEKOrdenarGrilla.Notification(AComponent: TComponent; Operation: TOperation);
var
  I: Integer;
  NeedLayout: Boolean;
begin
  inherited Notification(AComponent, Operation);

  if (Operation = opRemove) then
  begin
    if (AComponent is TDBGrid) then
    begin
      FGrilla:= nil;
    end
  end;
end;

end.
