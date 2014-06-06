unit UDebugging;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, StdCtrls, ExtCtrls, DBCtrls, Mask, Grids,
  DBGrids, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZSqlProcessor, Buttons, IBDatabaseInfo, IBDatabase;

type
  TFDebugging = class(TForm)
    Panel1: TPanel;
    DBGrid: TDBGrid;
    dxBarABM: TdxBarManager;
    btnCorregirParte: TdxBarLargeButton;
    btnCorregirFechas: TdxBarLargeButton;
    btnCorregirNC: TdxBarLargeButton;
    btnRecalcularSaldos: TdxBarLargeButton;
    btnBuscarErrores: TdxBarLargeButton;
    bt_salir: TdxBarLargeButton;
    Panel2: TPanel;
    ZQ_DesactivarT: TZQuery;
    ZQ_CorregirFechasCM: TZQuery;
    ZQ_CorregirSaldoNC: TZQuery;
    ZQ_RecalcularSaldos: TZQuery;
    ZQ_BuscarErrores: TZQuery;
    ZQ_ActivarT: TZQuery;
    ZQ_BuscarErroresLINEA: TStringField;
    lblEstadoT: TLabel;
    btnActivar: TButton;
    btnDesactivar: TButton;
    ZQ_CorregirParte: TZQuery;
    StringField1: TStringField;
    btnEjecutarActualizar: TdxBarLargeButton;
    ZQ_Actualizar: TZQuery;
    IBDatabaseInfo1: TIBDatabaseInfo;
    IBDatabase1: TIBDatabase;
    Panel4: TPanel;
    Memo1: TMemo;
    Panel3: TPanel;
    lblConexion1: TLabel;
    lblConexion2: TLabel;
    btnVerUser: TButton;
    Timer1: TTimer;
    DataSource: TDataSource;
    btnFechaOP: TdxBarLargeButton;
    ZQ_CorregirFechaOP: TZQuery;
    btnFechaCpb: TdxBarLargeButton;
    ZQ_CorregirFechaCPB: TZQuery;
    btnVaciarAuditoria: TdxBarLargeButton;
    panelTriggers: TPanel;
    Panel6: TPanel;
    btnAceptarTrigger: TButton;
    btnCancelarTrigger: TButton;
    RadioGroupTriggers: TRadioGroup;
    ZQ_ActualizarACTUALIZACION: TStringField;
    procedure bt_salirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarErroresClick(Sender: TObject);
    procedure btnCorregirParteClick(Sender: TObject);
    procedure btnCorregirFechasClick(Sender: TObject);
    procedure btnCorregirNCClick(Sender: TObject);
    procedure btnRecalcularSaldosClick(Sender: TObject);
    procedure btnActivarClick(Sender: TObject);
    procedure btnDesactivarClick(Sender: TObject);
    procedure btnEjecutarActualizarClick(Sender: TObject);
    procedure btnVerUserClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnFechaOPClick(Sender: TObject);
    procedure btnFechaCpbClick(Sender: TObject);
    procedure btnCancelarTriggerClick(Sender: TObject);
    procedure btnAceptarTriggerClick(Sender: TObject);
  private
    { Private declarations }
  public
    triggerActivo: boolean;
    anio: integer;
    usuariosConectados: integer;
  end;

var
  FDebugging: TFDebugging;

const
  Transaccion_Debug = 'DEBUGGING';

implementation

uses UDM, ZConnection, UPrincipal;

{$R *.dfm}

procedure TFDebugging.bt_salirClick(Sender: TObject);
begin
  close;
end;


procedure TFDebugging.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  btnActivar.Click;

  if dm.EKModelo.verificar_transaccion(Transaccion_Debug) then
  begin
    if not (application.MessageBox(pchar('La Transacción esta activa, hay cambios sin guardar. Los Cancela?'), 'Pregunta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose:= False
    else
      dm.EKModelo.cancelar_transaccion(Transaccion_Debug);
  end;
end;


procedure TFDebugging.FormCreate(Sender: TObject);
begin
  Memo1.Clear;
  lblConexion1.Caption:= '';
  lblConexion2.Caption:= '';

  IBDatabase1.DatabaseName:= dm.Conexion.HostName + ':' + dm.Conexion.Database;
  IBDatabase1.Params.Clear;
  IBDatabase1.Params.Add('user_name=SYSDBA');
  IBDatabase1.Params.Add('password=masterkey');
  IBDatabase1.SQLDialect:= 3;
  IBDatabase1.Connected:= true;

  btnVerUser.Click;
  triggerActivo:= false;
  btnActivar.Click;
end;


procedure TFDebugging.btnVerUserClick(Sender: TObject);
var
  i: integer;
  sysdba: boolean;
begin
  usuariosConectados:= IBDatabaseInfo1.UserNames.Count - 1;

  sysdba:= false;
  memo1.Clear;
  for i:= 0 to IBDatabaseInfo1.UserNames.Count - 1 do
  begin
    Memo1.Lines.Add(IBDatabaseInfo1.UserNames[i]);
    if (IBDatabaseInfo1.UserNames[i] = 'SYSDBA') and (not sysdba) then
    begin
      sysdba:= true;
      Memo1.Lines.Delete(i);
    end
  end;

  lblConexion1.Caption:= 'Total Conectados: ' + IntToStr(IBDatabaseInfo1.UserNames.Count - 1);
  lblConexion2.Caption:= '(incluido esta conexión)';
end;


procedure TFDebugging.btnBuscarErroresClick(Sender: TObject);
var
  strAnio: string;
begin
//  if InputQuery('Buscar Errores', 'Ingrese el año:', strAnio) then
//  begin
//    DataSource.DataSet:= ZQ_BuscarErrores;
//
//    anio:= StrToInt(strAnio);
//    ZQ_BuscarErrores.Close;
//    ZQ_BuscarErrores.ParamByName('anio').AsInteger:= anio;
//    ZQ_BuscarErrores.Open;
//  end
end;


procedure TFDebugging.btnCorregirParteClick(Sender: TObject);
var
  strParte: string;
begin
//  btnVerUser.Click;
//
//  if usuariosConectados > 1 then //si hay mas de 1 usuario conectado salgo
//  begin
//    ShowMessage('Hay mas de un usuario conectado');
//    exit;
//  end;
//
//  if triggerActivo then //si los triggers estan activos salgo
//  begin
//    ShowMessage('Primero debe desactivar los triggers');
//    exit;
//  end;
//
//  if InputQuery('Corregir Parte', 'Ingrese el Nro del Parte:', strParte) then
//  begin
//    if dm.Modelo.iniciar_transaccion(Transaccion_Debug, []) then
//    begin
//      try
//        DataSource.DataSet:= ZQ_CorregirParte;
//        anio:= StrToInt(strParte);
//        ZQ_CorregirParte.Close;
//        ZQ_CorregirParte.ParamByName('parte_numero').AsInteger:= anio;
//        ZQ_CorregirParte.ExecSQL;
//      finally //si se produce una excepcion cierro la transaccion y pongo en false la variable triggerActivo
//        if not dm.Modelo.finalizar_transaccion(Transaccion_Debug) then
//        begin
//           dm.Modelo.cancelar_transaccion(Transaccion_Debug);
//           ShowMessage('No se pudo corregir el Parte Diario '+strParte+'!');
//        end
//        else
//           ShowMessage('Parte Diario '+strParte+' corregidas con Exito!');
//      end;
//    end;
//  end;
end;


procedure TFDebugging.btnCorregirFechasClick(Sender: TObject);
begin
//  btnVerUser.Click;
//
//  if usuariosConectados > 1 then //si hay mas de 1 usuario conectado salgo
//  begin
//    ShowMessage('Hay mas de un usuario conectado');
//    exit;
//  end;
//
//  if triggerActivo then //si los triggers estan activos salgo
//  begin
//    ShowMessage('Primero debe desactivar los triggers');
//    exit;
//  end;
//
//  if dm.Modelo.iniciar_transaccion(Transaccion_Debug, []) then
//  begin
//    try
//      ZQ_CorregirFechasCM.Close;
//      ZQ_CorregirFechasCM.ExecSQL;
//    finally //si se produce una excepcion cierro la transaccion y pongo en false la variable triggerActivo
//      if not dm.Modelo.finalizar_transaccion(Transaccion_Debug) then
//      begin
//         dm.Modelo.cancelar_transaccion(Transaccion_Debug);
//         ShowMessage('No se pudieron corregir las Fechas de las Ctas Mov!');
//      end
//      else
//         ShowMessage('Fechas de las Ctas Mov corregidas con Exito!');
//    end;
//  end;
end;


procedure TFDebugging.btnCorregirNCClick(Sender: TObject);
begin
//  btnVerUser.Click;
//
//  if usuariosConectados > 1 then //si hay mas de 1 usuario conectado salgo
//  begin
//    ShowMessage('Hay mas de un usuario conectado');
//    exit;
//  end;
//
//  if triggerActivo then //si los triggers estan activos salgo
//  begin
//    ShowMessage('Primero debe desactivar los triggers');
//    exit;
//  end;
//
//  if dm.Modelo.iniciar_transaccion(Transaccion_Debug, []) then
//  begin
//    try
//      ZQ_CorregirSaldoNC.Close;
//      ZQ_CorregirSaldoNC.ExecSQL;
//    finally //si se produce una excepcion cierro la transaccion y pongo en false la variable triggerActivo
//      if not dm.Modelo.finalizar_transaccion(Transaccion_Debug) then
//      begin
//          dm.Modelo.cancelar_transaccion(Transaccion_Debug);
//          ShowMessage('No se pudieron corregir las Notas de Creditos!');
//      end
//      else
//          ShowMessage('Notas de Creditos corregidas con Exito!');
//    end;
//  end;
end;


procedure TFDebugging.btnRecalcularSaldosClick(Sender: TObject);
var
  strAnio: string;
begin
//  btnVerUser.Click;
//
//  if usuariosConectados > 1 then //si hay mas de 1 usuario conectado salgo
//  begin
//    ShowMessage('Hay mas de un usuario conectado');
//    exit;
//  end;
//
//  if triggerActivo then //si los triggers estan activos salgo
//  begin
//    ShowMessage('Primero debe desactivar los triggers');
//    exit;
//  end;
//
//  if InputQuery('Buscar Errores', 'Ingrese el año:', strAnio) then
//  begin
//    if dm.Modelo.iniciar_transaccion(Transaccion_Debug, []) then
//    begin
//      try
//        anio:= StrToInt(strAnio);
//        ZQ_RecalcularSaldos.Close;
//        ZQ_RecalcularSaldos.ParamByName('anio_recalcular').AsInteger:= anio;
//        ZQ_RecalcularSaldos.ExecSQL;
//
//      finally //si se produce una excepcion cierro la transaccion y pongo en false la variable triggerActivo
//        if not dm.Modelo.finalizar_transaccion(Transaccion_Debug) then
//        begin
//           dm.Modelo.cancelar_transaccion(Transaccion_Debug);
//           ShowMessage('No se pudieron Recalcular los Saldos!');
//        end
//        else
//           ShowMessage('Saldos Recalculados con Exito!');
//      end;
//    end;
//  end;
end;


procedure TFDebugging.btnActivarClick(Sender: TObject);
begin
  if triggerActivo then //si los trigger estan activados salgo
    exit;

  if dm.EKModelo.iniciar_transaccion(Transaccion_Debug, []) then
  begin
    try
      triggerActivo:= true;
      lblEstadoT.Caption:= 'TRIGGERS ACTIVADOS';

      ZQ_ActivarT.Close;
      ZQ_ActivarT.ParamByName('TIPO').AsString:= 'T';
      ZQ_ActivarT.ExecSQL;

      if not dm.EKModelo.finalizar_transaccion(Transaccion_Debug) then
      begin
        dm.EKModelo.cancelar_transaccion(Transaccion_Debug);
      end;

    except //si se produce una excepcion cierro la transaccion y pongo en true la variable triggerActivo
      if not dm.EKModelo.finalizar_transaccion(Transaccion_Debug) then
      begin
        triggerActivo:= false;
        dm.EKModelo.cancelar_transaccion(Transaccion_Debug);
      end;
    end;
  end;
end;


procedure TFDebugging.btnDesactivarClick(Sender: TObject);
begin
  btnVerUser.Click;

  if usuariosConectados > 1 then //si hay mas de 1 usuario conectado salgo
  begin
    ShowMessage('Hay mas de un usuario conectado');
    exit;
  end;

  if not triggerActivo then //si los triggers estan desactivados salgo
    exit;

  panelTriggers.Visible:= true;
  panelTriggers.BringToFront;
end;


procedure TFDebugging.btnCancelarTriggerClick(Sender: TObject);
begin
  panelTriggers.Visible:= false;
end;


procedure TFDebugging.btnAceptarTriggerClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(Transaccion_Debug, []) then
  begin
    try
      triggerActivo:= false;

      ZQ_DesactivarT.Close;
      case RadioGroupTriggers.ItemIndex of
        0: begin
            lblEstadoT.Caption:= 'TODOS LOS TRIGGERS DESACTIVADOS';
            ZQ_DesactivarT.ParamByName('Tipo').AsString:= 'T';
          end;
        1: begin
            lblEstadoT.Caption:= 'TRIGGERS DEL SISTEMA DESACTIVADOS';
            ZQ_DesactivarT.ParamByName('Tipo').AsString:= 'S';
          end;
        2: begin
            lblEstadoT.Caption:= 'TRIGGERS DE AUDITORIA DESACTIVADOS';
            ZQ_DesactivarT.ParamByName('Tipo').AsString:= 'A';
          end;
      end;
      ZQ_DesactivarT.ExecSQL;
      panelTriggers.Visible:= false;
      if not dm.EKModelo.finalizar_transaccion(Transaccion_Debug) then
      begin
        dm.EKModelo.cancelar_transaccion(Transaccion_Debug);
      end;

    except //si se produce una excepcion cierro la transaccion y pongo en false la variable triggerActivo
      if not dm.EKModelo.finalizar_transaccion(Transaccion_Debug) then
      begin
        triggerActivo:= true;
        panelTriggers.Visible:= false;
        dm.EKModelo.cancelar_transaccion(Transaccion_Debug);
      end;
    end;
  end;
end;


procedure TFDebugging.btnEjecutarActualizarClick(Sender: TObject);
begin
  try
    begin
      DataSource.DataSet:= ZQ_Actualizar;

      ZQ_Actualizar.Close;
      ZQ_Actualizar.Open;
      ZQ_Actualizar.CommitUpdates;
      
      ShowMessage('Actualización Completada');
    end
  except
    ShowMessage('Se produjo un error');
  end;
end;


procedure TFDebugging.Timer1Timer(Sender: TObject);
begin
  btnVerUser.Click;
end;


procedure TFDebugging.btnFechaOPClick(Sender: TObject);
begin
//  btnVerUser.Click;
//
//  if usuariosConectados > 1 then //si hay mas de 1 usuario conectado salgo
//  begin
//    ShowMessage('Hay mas de un usuario conectado');
//    exit;
//  end;
//
//  if triggerActivo then //si los triggers estan activos salgo
//  begin
//    ShowMessage('Primero debe desactivar los triggers');
//    exit;
//  end;
//
//  if ISBusquedaFechaOP.BuscarSinEjecutar then
//  begin
//    if (ISBusquedaFechaOP.ParametrosSelecReales1[0] = '') then
//    begin
//      Application.MessageBox('El campo "ID CPB" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
//      exit;
//    end;
//
//    if (ISBusquedaFechaOP.ParametrosSelecReales1[1] = '') then
//    begin
//      Application.MessageBox('El campo "Tipo Cambio" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
//      exit;
//    end;
//
//    if (ISBusquedaFechaOP.ParametrosSelecReales1[2] = '') then
//    begin
//      Application.MessageBox('El campo "Fecha" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
//      exit;
//    end;
//
//    if dm.Modelo.iniciar_transaccion(Transaccion_Debug, []) then
//    begin
//      try
//        ZQ_CorregirFechaOP.Close;
//        ZQ_CorregirFechaOP.ParamByName('id_cpb').AsInteger:= StrToInt(ISBusquedaFechaOP.ParametrosSeleccionados1[0]);
//        if ISBusquedaFechaOP.ParametrosSeleccionados1[1] = 'O' then //si es un cambio de feche de la OP
//        begin
//          ZQ_CorregirFechaOP.ParamByName('fecha_orden_nueva').AsDate := StrToDate(ISBusquedaFechaOP.ParametrosSeleccionados1[2]);
//          ZQ_CorregirFechaOP.ParamByName('fecha_anulado_nueva').Clear;
//        end
//        else //si es un cambio de fecha de anulacion
//        begin
//          ZQ_CorregirFechaOP.ParamByName('fecha_orden_nueva').clear;
//          ZQ_CorregirFechaOP.ParamByName('fecha_anulado_nueva').AsDate := StrToDate(ISBusquedaFechaOP.ParametrosSeleccionados1[2]);
//        end;
//        ZQ_CorregirFechaOP.ExecSQL;
//      finally //si se produce una excepcion cierro la transaccion y pongo en false la variable triggerActivo
//        if not dm.Modelo.finalizar_transaccion(Transaccion_Debug) then
//        begin
//           dm.Modelo.cancelar_transaccion(Transaccion_Debug);
//           ShowMessage('No se pudo corregir la Fecha de la OP!');
//        end
//        else
//           ShowMessage('Fecha de OP corregida con Exito!');
//      end;
//    end;
//  end;
end;

procedure TFDebugging.btnFechaCpbClick(Sender: TObject);
begin
//  btnVerUser.Click;
//
//  if usuariosConectados > 1 then //si hay mas de 1 usuario conectado salgo
//  begin
//    ShowMessage('Hay mas de un usuario conectado');
//    exit;
//  end;
//
//  if triggerActivo then //si los triggers estan activos salgo
//  begin
//    ShowMessage('Primero debe desactivar los triggers');
//    exit;
//  end;
//
//  if ISBusquedaFechaCPB.BuscarSinEjecutar then
//  begin
//    if (ISBusquedaFechaCPB.ParametrosSelecReales1[0] = '') then
//    begin
//      Application.MessageBox('El campo "ID Comprobante" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
//      exit;
//    end;
//
//    if (ISBusquedaFechaCPB.ParametrosSelecReales1[1] = '') then
//    begin
//      Application.MessageBox('El campo "Tipo Cambio" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
//      exit;
//    end;
//
//    if (ISBusquedaFechaCPB.ParametrosSelecReales1[2] = '') then
//    begin
//      Application.MessageBox('El campo "Fecha" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
//      exit;
//    end;
//
//    if dm.Modelo.iniciar_transaccion(Transaccion_Debug, []) then
//    begin
//      try
//        ZQ_CorregirFechaCPB.Close;
//        ZQ_CorregirFechaCPB.ParamByName('id_comprobante').AsInteger:= StrToInt(ISBusquedaFechaCPB.ParametrosSeleccionados1[0]);
//        if ISBusquedaFechaCPB.ParametrosSeleccionados1[1] = 'C' then //si es un cambio de feche de la OP
//        begin
//          ZQ_CorregirFechaCPB.ParamByName('fecha_cpb_nueva').AsDate := StrToDate(ISBusquedaFechaCPB.ParametrosSeleccionados1[2]);
//          ZQ_CorregirFechaCPB.ParamByName('fecha_anulado_nueva').Clear;
//        end
//        else //si es un cambio de fecha de anulacion
//        begin
//          ZQ_CorregirFechaCPB.ParamByName('fecha_cpb_nueva').clear;
//          ZQ_CorregirFechaCPB.ParamByName('fecha_anulado_nueva').AsDate := StrToDate(ISBusquedaFechaCPB.ParametrosSeleccionados1[2]);
//        end;
//        ZQ_CorregirFechaCPB.ExecSQL;
//      finally //si se produce una excepcion cierro la transaccion y pongo en false la variable triggerActivo
//        if not dm.Modelo.finalizar_transaccion(Transaccion_Debug) then
//        begin
//           dm.Modelo.cancelar_transaccion(Transaccion_Debug);
//           ShowMessage('No se pudo corregir la Fecha del Comprobante!');
//        end
//        else
//           ShowMessage('Fecha del Comprobante corregida con Exito!');
//      end;
//    end;
//  end;
end;

end.

