unit UABM_TipoFormaPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt;

type
  TFABM_TipoFormaPago = class(TForm)
    PanelFondo: TPanel;
    PanelGrilla: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    ZQ_TipoFPago: TZQuery;
    DS_TipoFPago: TDataSource;
    DBGridTipoFPago: TDBGrid;
    PanelEdicion: TPanel;
    Label1: TLabel;
    DBENombre: TDBEdit;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    EKBuscar: TEKBusquedaAvanzada;
    RepTipoFPago: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepTipoFPago_Subtitulo: TQRLabel;
    RepTipoFPago_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
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
    QRLabel1: TQRLabel;
    EKVistaPrevia: TEKVistaPreviaQR;
    ZQ_TipoFPagoID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_TipoFPagoDESCRIPCION: TStringField;
    ZQ_TipoFPagoBAJA: TStringField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure DBGridTipoFPagoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    //------TECLAS RAPIDAS
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AReactivarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_TipoFormaPago: TFABM_TipoFormaPago;

const
  transaccion_ABM = 'ABM TIPO MEDIO PAGO';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFABM_TipoFormaPago.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_TipoFormaPago.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_TipoFormaPago.btnBuscarClick(Sender: TObject);
begin
  EKbuscar.buscar;
end;


procedure TFABM_TipoFormaPago.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoFPago]) then
  begin
    DBGridTipoFPago.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_TipoFPago.Append;
    ZQ_TipoFPagoBAJA.AsString:= 'N';
    DBENombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_TipoFormaPago.btnModificarClick(Sender: TObject);
begin
  if ZQ_TipoFPago.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoFPago]) then
  begin
    DBGridTipoFPago.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_TipoFPago.Edit;
    DBENombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_TipoFormaPago.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_TipoFPago.IsEmpty) OR (ZQ_TipoFPagoBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('�Desea dar de baja el "Tipo Medio Pago" seleccionado?'), 'ABM Tipo Medio Pago', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoFPago]) then
    begin
      ZQ_TipoFPago.Edit;
      ZQ_TipoFPagoBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_TipoFPago.RecNo;
    ZQ_TipoFPago.Refresh;
    ZQ_TipoFPago.RecNo:= recNo;
  end;
end;


procedure TFABM_TipoFormaPago.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_TipoFPago.IsEmpty) OR (ZQ_TipoFPagoBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('�Desea reactivar el "Tipo Medio Pago" seleccionado?'), 'ABM Tipo Medio Pago', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoFPago]) then
    begin
      ZQ_TipoFPago.Edit;
      ZQ_TipoFPagoBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_TipoFPago.RecNo;
    ZQ_TipoFPago.Refresh;
    ZQ_TipoFPago.RecNo:= recNo;
  end;
end;


procedure TFABM_TipoFormaPago.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if (trim(DBENombre.Text) = '') then
  begin
    Application.MessageBox('El campo "Tipo Medio Pago" se encuentra vac�o, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBENombre.SetFocus;
    exit;
  end;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridTipoFPago.Enabled:= true;
      DBGridTipoFPago.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      PanelEdicion.Visible := false;
      recNo:= ZQ_TipoFPago.RecNo;
      ZQ_TipoFPago.Refresh;
      ZQ_TipoFPago.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos est�n cargados correctamente.', 'Atenci�n',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_TipoFPago, lblCantidadRegistros);
end;


procedure TFABM_TipoFormaPago.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridTipoFPago.Enabled:=true;
    DBGridTipoFPago.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    PanelEdicion.Visible := false;
  end;
end;


procedure TFABM_TipoFormaPago.FormCreate(Sender: TObject);
begin
  StaticTxtBaja.Color:= FPrincipal.baja;

  ZQ_TipoFPago.Close;
  ZQ_TipoFPago.open;

  dm.mostrarCantidadRegistro(ZQ_TipoFPago, lblCantidadRegistros);
end;


procedure TFABM_TipoFormaPago.DBGridTipoFPagoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_TipoFPago.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridTipoFPago, ZQ_TipoFPagoBAJA.AsString, Rect, DataCol, Column, State);
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_TipoFormaPago.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_TipoFormaPago.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_TipoFormaPago.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_TipoFormaPago.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_TipoFormaPago.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_TipoFormaPago.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_TipoFormaPago.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFABM_TipoFormaPago.btnImprimirClick(Sender: TObject);
begin
  if ZQ_TipoFPago.IsEmpty then
    exit;

  DM.VariablesReportes(RepTipoFPago);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
  EKVistaPrevia.VistaPrevia;
end;

end.