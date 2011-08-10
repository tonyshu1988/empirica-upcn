unit UABM_TipoComprobante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt;

type
  TFABM_TipoComprobante = class(TForm)
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
    ZQ_TipoComprobante: TZQuery;
    DS_TipoComprobante: TDataSource;
    DBGridTipo: TDBGrid;
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
    RepTipoCpb: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepTipoCpb_Subtitulo: TQRLabel;
    RepTipoCpb_Titulo: TQRLabel;
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
    ZQ_TipoComprobanteID_TIPO_CPB: TIntegerField;
    ZQ_TipoComprobanteNOMBRE_TIPO_CPB: TStringField;
    ZQ_TipoComprobanteSIGNO_COBRO_PAGO: TIntegerField;
    ZQ_TipoComprobanteSIGNO_STOCK: TIntegerField;
    ZQ_TipoComprobanteSIGNO_CTA_CTE: TIntegerField;
    ZQ_TipoComprobanteULTIMO_NUMERO: TIntegerField;
    Label2: TLabel;
    DBEUltimoNro: TDBEdit;
    DBCBoxSignoCP: TDBComboBox;
    DBCBoxSignoStock: TDBComboBox;
    DBCBoxSignoCC: TDBComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ZQ_TipoComprobanteBAJA: TStringField;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
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
    procedure DBGridTipoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
  FABM_TipoComprobante: TFABM_TipoComprobante;

const
  transaccion_ABM = 'ABM TIPO COMPRONAMTE';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFABM_TipoComprobante.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_TipoComprobante.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_TipoComprobante.btnBuscarClick(Sender: TObject);
begin
  EKbuscar.buscar;
  dm.mostrarCantidadRegistro(ZQ_TipoComprobante, lblCantidadRegistros);  
end;


procedure TFABM_TipoComprobante.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoComprobante]) then
  begin
    DBGridTipo.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_TipoComprobante.Append;
    ZQ_TipoComprobanteBAJA.AsString:= 'N';
    DBENombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_TipoComprobante.btnModificarClick(Sender: TObject);
begin
  if ZQ_TipoComprobante.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoComprobante]) then
  begin
    DBGridTipo.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_TipoComprobante.Edit;
    DBENombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_TipoComprobante.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_TipoComprobante.IsEmpty) OR (ZQ_TipoComprobanteBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja el "Tipo Comprobante" seleccionado?'), 'ABM Tipo Comprobante', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoComprobante]) then
    begin
      ZQ_TipoComprobante.Edit;
      ZQ_TipoComprobanteBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_TipoComprobante.RecNo;
    ZQ_TipoComprobante.Refresh;
    ZQ_TipoComprobante.RecNo:= recNo;
  end;
end;


procedure TFABM_TipoComprobante.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_TipoComprobante.IsEmpty) OR (ZQ_TipoComprobanteBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar el "Tipo Comprobante" seleccionado?'), 'ABM Tipo Comprobante', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoComprobante]) then
    begin
      ZQ_TipoComprobante.Edit;
      ZQ_TipoComprobanteBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_TipoComprobante.RecNo;
    ZQ_TipoComprobante.Refresh;
    ZQ_TipoComprobante.RecNo:= recNo;
  end;
end;


procedure TFABM_TipoComprobante.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if (trim(DBENombre.Text) = '') then
  begin
    Application.MessageBox('El campo "Tipo Comprobante" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBENombre.SetFocus;
    exit;
  end;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridTipo.Enabled:= true;
      DBGridTipo.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      PanelEdicion.Visible := false;
      recNo:= ZQ_TipoComprobante.RecNo;
      ZQ_TipoComprobante.Refresh;
      ZQ_TipoComprobante.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_TipoComprobante, lblCantidadRegistros);
end;


procedure TFABM_TipoComprobante.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridTipo.Enabled:=true;
    DBGridTipo.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    PanelEdicion.Visible := false;
  end;
end;


procedure TFABM_TipoComprobante.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla1.CargarConfigColumnas;

  StaticTxtBaja.Color:= FPrincipal.baja;

  EKBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_TipoComprobante, lblCantidadRegistros);
end;


procedure TFABM_TipoComprobante.DBGridTipoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_TipoComprobante.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridTipo, ZQ_TipoComprobanteBAJA.AsString, Rect, DataCol, Column, State);
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_TipoComprobante.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_TipoComprobante.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_TipoComprobante.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_TipoComprobante.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_TipoComprobante.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_TipoComprobante.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_TipoComprobante.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFABM_TipoComprobante.btnImprimirClick(Sender: TObject);
begin
  if ZQ_TipoComprobante.IsEmpty then
    exit;

  DM.VariablesReportes(RepTipoCpb);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
  EKVistaPrevia.VistaPrevia;
end;

end.
