unit UMovimientosInternos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  ZStoredProcedure, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  QRCtrls, QuickRpt, EKVistaPreviaQR, EKOrdenarGrilla, ComCtrls,
  EKDBDateTimePicker;

type
  TFMovimientosInternos = class(TForm)
    PanelFondo: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    EKVistaPrevia: TEKVistaPreviaQR;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepCuentas_Subtitulo: TQRLabel;
    RepCuentas_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand11: TQRBand;
    QRlblPieDePagina: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand12: TQRBand;
    QRExpr18: TQRExpr;
    TitleBand2: TQRBand;
    QRLabelCritBusqueda: TQRLabel;
    QRLabel48: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    PanelCalendario: TPanel;
    Calendario: TMonthCalendar;
    PanelMes: TPanel;
    PanelDia_Lista: TPanel;
    PanelMes_Info: TPanel;
    DBGridMes: TDBGrid;
    PanelDia_Movimiento: TPanel;
    PanelDia_InfoMovimiento: TPanel;
    PanelDia_InfoLista: TPanel;
    Label1: TLabel;
    lblFechaHoy: TLabel;
    Label2: TLabel;
    DBGridDia: TDBGrid;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    PanelDia_Cuentas: TPanel;
    DBGridFormaPago: TDBGrid;
    EKDBDateTimePicker1: TEKDBDateTimePicker;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridCuentasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    //------TECLAS RAPIDAS
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
  public
  end;

var
  FMovimientosInternos: TFMovimientosInternos;

const
  transaccion_ABM = 'MOVIMIENTOS INTERNOS';

implementation

uses UDM, UPrincipal, UUtilidades;

{$R *.dfm}

procedure TFMovimientosInternos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFMovimientosInternos.btnSalirClick(Sender: TObject);
begin
 Close;
end;


procedure TFMovimientosInternos.btnModificarClick(Sender: TObject);
begin
//  if ZQ_Cuentas.IsEmpty then
//      exit;
//
//  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas]) then
//  begin
//    DBGridCuentas.Enabled := false;
//    PanelEdicion.Visible:= true;
//
//    ZQ_Cuentas.Edit;
//    if ZQ_CuentasCODIGO.IsNull then
//    begin
//      ZQ_UltimoNro.Close;
//      ZQ_UltimoNro.Open;
//      if ZQ_UltimoNro.IsEmpty or (ZQ_UltimoNroCODIGO.AsString = '') then
//        ZQ_CuentasCODIGO.AsInteger:= 1
//      else
//        ZQ_CuentasCODIGO.AsInteger:= ZQ_UltimoNroCODIGO.AsInteger + 1;
//    end;
//
//    DBENombre.SetFocus;
//    GrupoEditando.Enabled := false;
//    GrupoGuardarCancelar.Enabled := true;
//  end;
end;


procedure TFMovimientosInternos.btnEliminarClick(Sender: TObject);
var
  recNo: integer;
begin
//  if (ZQ_Cuentas.IsEmpty) OR (ZQ_CuentasBAJA.AsString <> 'N') then
//    exit;
//
//  if (application.MessageBox(pchar('¿Desea dar de baja la Cuenta seleccionada?'), 'ABM Cuenta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
//  begin
//    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas]) then
//    begin
//      ZQ_Cuentas.Edit;
//      ZQ_CuentasBAJA.AsString:='S';
//    end
//    else
//      exit;
//
//    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
//      dm.EKModelo.cancelar_transaccion(transaccion_ABM);
//
//    recNo:= ZQ_Cuentas.RecNo;
//    ZQ_Cuentas.Refresh;
//    ZQ_Cuentas.RecNo:= recNo;
//  end;
end;


procedure TFMovimientosInternos.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
//  DBECodigo.SetFocus;
//
//  if (trim(DBECodigo.Text) = '') then
//  begin
//    Application.MessageBox('El campo "Código" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
//    DBECodigo.SetFocus;
//    exit;
//  end;
//
//  if (trim(DBENombre.Text) = '') then
//  begin
//    Application.MessageBox('El campo "Nombre" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
//    DBENombre.SetFocus;
//    exit;
//  end;
//
//  try
//    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
//    begin
//      DBGridCuentas.Enabled:= true;
//      DBGridCuentas.SetFocus;
//      GrupoEditando.Enabled := true;
//      GrupoGuardarCancelar.Enabled := false;
//      PanelEdicion.Visible := false;
//      recNo:= ZQ_Cuentas.RecNo;
//      ZQ_Cuentas.Refresh;
//      ZQ_Cuentas.RecNo:= recNo;
//    end
//  except
//    begin
//      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
//      exit;
//    end
//  end;
//
//  dm.mostrarCantidadRegistro(ZQ_Cuentas, lblCantidadRegistros);
end;


procedure TFMovimientosInternos.btnCancelarClick(Sender: TObject);
begin
// if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
//  begin
//    DBGridCuentas.Enabled:=true;
//    DBGridCuentas.SetFocus;
//    GrupoEditando.Enabled := true;
//    GrupoGuardarCancelar.Enabled := false;
//    PanelEdicion.Visible := false;
//  end;
end;


procedure TFMovimientosInternos.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
//  if (ZQ_Cuentas.IsEmpty) OR (ZQ_CuentasBAJA.AsString <> 'S') then
//    exit;
//
//  if (application.MessageBox(pchar('¿Desea reactivar la Cuenta seleccionada?'), 'ABM Cuenta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
//  begin
//    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas]) then
//    begin
//      ZQ_Cuentas.Edit;
//      ZQ_CuentasBAJA.AsString:='N';
//    end
//    else
//      exit;
//
//    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
//      dm.EKModelo.cancelar_transaccion(transaccion_ABM);
//
//    recNo:= ZQ_Cuentas.RecNo;
//    ZQ_Cuentas.Refresh;
//    ZQ_Cuentas.RecNo:= recNo;
//  end;
end;


procedure TFMovimientosInternos.btnBuscarClick(Sender: TObject);
begin
//  EKBuscar.Buscar;
end;


procedure TFMovimientosInternos.btnNuevoClick(Sender: TObject);
begin
//  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Cuentas]) then
//  begin
//    DBGridCuentas.Enabled := false;
//    PanelEdicion.Visible:= true;
//
//    ZQ_UltimoNro.Close;
//    ZQ_UltimoNro.Open;
//
//    ZQ_Cuentas.Append;
//    if ZQ_UltimoNro.IsEmpty then
//      ZQ_CuentasCODIGO.AsInteger:= 1
//    else
//      ZQ_CuentasCODIGO.AsInteger:= ZQ_UltimoNroCODIGO.AsInteger + 1;
//    ZQ_CuentasBAJA.AsString:= 'N';
//
//    DBENombre.SetFocus;
//    GrupoEditando.Enabled := false;
//    GrupoGuardarCancelar.Enabled := true;
//  end;
end;


procedure TFMovimientosInternos.FormCreate(Sender: TObject);
begin
//  dm.EKModelo.abrir(ZQ_Cuentas);
//  dm.EKModelo.abrir(ZQ_MedioPago);
//  dm.mostrarCantidadRegistro(ZQ_Cuentas, lblCantidadRegistros);
end;


procedure TFMovimientosInternos.DBGridCuentasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//  if ZQ_Cuentas.IsEmpty then
//    exit;
//
//  FPrincipal.PintarFilasGrillasConBajas(DBGridCuentas, ZQ_CuentasBAJA.AsString, Rect, DataCol, Column, State);
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFMovimientosInternos.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFMovimientosInternos.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFMovimientosInternos.ABajaExecute(Sender: TObject);
begin
  if btnEliminar.Enabled then
    btnEliminar.Click;
end;

procedure TFMovimientosInternos.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFMovimientosInternos.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;

procedure TFMovimientosInternos.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFMovimientosInternos.btnImprimirClick(Sender: TObject);
begin
//  if ZQ_Cuentas.IsEmpty then
//    exit;
//
//  DM.VariablesReportes(RepCuentas);
//  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
//  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
//  EKVistaPrevia.VistaPrevia;
end;

end.


