unit UABM_Cuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, DBCtrls, Mask,
  QuickRpt, EKVistaPreviaQR, QRCtrls, EKOrdenarGrilla;

type
  TFABM_Cuentas = class(TForm)
    pContenedor: TPanel;
    dxBarABM: TdxBarManager;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    pDatos: TPanel;
    dbGridCuentas: TDBGrid;
    ZQ_Cuentas: TZQuery;
    DS_Cuentas: TDataSource;
    DS_Medios: TDataSource;
    ZQ_Medios: TZQuery;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasMEDIO_DE_PAGO: TStringField;
    ZQ_CuentasNRO_CUENTA_BANCARIA: TStringField;
    ZQ_CuentasULTIMO_NRO: TIntegerField;
    ZQ_CuentasAUTONUMERAR: TStringField;
    ZQ_CuentasMEDIO_POR_DEFECTO: TIntegerField;
    ZQ_MediosID_MEDIO: TIntegerField;
    ZQ_MediosNOMBRE_MEDIO_COBRO_PAGO: TStringField;
    ZQ_CuentasmedioCobro: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbEditNombreCuenta: TDBEdit;
    dbEditNroCuenta: TDBEdit;
    dbLookupCBoxMedio: TDBLookupComboBox;
    btnVerDetalle: TdxBarLargeButton;
    EKVistaPrevia: TEKVistaPreviaQR;
    btnImprimir: TdxBarLargeButton;
    RepCtas: TQuickRep;
    QRBand5: TQRBand;
    QRDBImage1: TQRDBImage;
    QRLabel11: TQRLabel;
    RepCtas_Reporte_Titulo_2: TQRLabel;
    RepCtas_Reporte_Titulo_1: TQRLabel;
    QRBandDetalle: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRChildBand2: TQRChildBand;
    QRLabel21: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand7: TQRBand;
    QRLabel35: TQRLabel;
    QRlblFechaHoy: TQRLabel;
    QRLabel24: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    QRExpr15: TQRExpr;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    ZQ_CuentasCOLOR_CONSILIADO: TStringField;
    btnColorConciliacion: TButton;
    ShapeColorConciliacion: TShape;
    ColorDialog: TColorDialog;
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnVerDetalleClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    function  validarDatos(): boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnColorConciliacionClick(Sender: TObject);
    procedure ZQ_CuentasAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_Cuentas: TFABM_Cuentas;

const
  transaccion_cuentas: string = 'ABM CUENTAS';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFABM_Cuentas.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_cuentas, [ZQ_Cuentas]) then
  begin
    dbGridCuentas.Enabled := false;
    pDatos.Visible := true;
    pDatos.Enabled := true;
    ZQ_Cuentas.Append;
    ZQ_CuentasAUTONUMERAR.AsString := 'N';
    dbEditNombreCuenta.SetFocus;
    GrupoVisualizando.Enabled := false;
    GrupoEditando.Enabled := true;
  end;
end;


procedure TFABM_Cuentas.btnModificarClick(Sender: TObject);
begin
  if ZQ_Cuentas.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_cuentas, [ZQ_Cuentas]) then
  begin
    dbGridCuentas.Enabled := false;
    pDatos.Visible := true;
    pDatos.Enabled := true;    
    dbEditNombreCuenta.SetFocus;
    GrupoVisualizando.Enabled := false;
    GrupoEditando.Enabled := true;
  end;
end;


procedure TFABM_Cuentas.btnEliminarClick(Sender: TObject);
begin
  if ZQ_Cuentas.IsEmpty then
    exit;

  if (application.MessageBox(pchar('¿Esta seguro que desea Eliminar la Cuenta?                        ' + #13 + #13), 'Eliminar Cuenta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_cuentas, [ZQ_Cuentas]) then
      ZQ_Cuentas.Delete
    else
      exit;
    try
      if not (dm.EKModelo.finalizar_transaccion(transaccion_cuentas)) then
        dm.EKModelo.cancelar_transaccion(transaccion_cuentas);

    except
      begin
        Application.MessageBox('La cuenta seleccionada no se puede borrar porque depende de otras tablas','Atención',MB_OK+MB_ICONINFORMATION);
        dm.EKModelo.cancelar_transaccion(transaccion_cuentas);
      end
    end;
  end;
end;


procedure TFABM_Cuentas.btnGuardarClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if not validarDatos() then
    exit;

  ZQ_Cuentas.Edit;  
  ZQ_CuentasCOLOR_CONSILIADO.AsString:= ColorToString(ShapeColorConciliacion.Brush.Color);

  if DM.EKModelo.finalizar_transaccion(transaccion_cuentas) then
  begin
    dbGridCuentas.Enabled := true;
    GrupoVisualizando.Enabled := true;
    GrupoEditando.Enabled := false;
    pDatos.Visible := false;
    pDatos.Enabled := false;
    ZQ_Cuentas.Refresh;
  end;
end;


procedure TFABM_Cuentas.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_cuentas) then
  begin
    dbGridCuentas.Enabled := true;
    pDatos.Visible := false;
    pDatos.Enabled := false;
    GrupoVisualizando.Enabled := true;
    GrupoEditando.Enabled := false;
  end;
end;


procedure TFABM_Cuentas.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFABM_Cuentas.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla1.CargarConfigColunmas;
  dm.ekModelo.abrir(ZQ_Cuentas);
  dm.ekModelo.abrir(ZQ_Medios);
end;


procedure TFABM_Cuentas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_cuentas) then
  begin
    if not (application.MessageBox(pchar('Si continua con el cierre se perderan los cambios realizados.'+#13+#13+'¿Salir de todos modos?'),'Atención', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose := False
    else
      dm.EKModelo.cancelar_transaccion(transaccion_cuentas);
  end;
end;


procedure TFABM_Cuentas.btnVerDetalleClick(Sender: TObject);
begin
  pDatos.Visible:= not pDatos.Visible;
  pDatos.Enabled:= not pDatos.Visible;
end;


procedure TFABM_Cuentas.btnImprimirClick(Sender: TObject);
begin
  if ZQ_Cuentas.IsEmpty then
    exit;

  QRlblFechaHoy.Caption:= FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  dm.VariablesReportes(RepCtas);

  EKVistaPrevia.VistaPrevia;
end;


function TFABM_Cuentas.validarDatos():boolean;
begin
  result:= true;

   if (ZQ_CuentasNOMBRE_CUENTA.IsNull) then
   begin
      Application.MessageBox('El campo "Nombre Cuenta" se encuentra vacío, Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      dbEditNombreCuenta.SetFocus;
      result:= false;
      exit;
   end;

   if (ZQ_CuentasNRO_CUENTA_BANCARIA.IsNull) then
   begin
      Application.MessageBox('El campo "Nro Cuenta Bancaria" se encuentra vacío, Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      dbEditNroCuenta.SetFocus;
      result:= false;
      exit;
   end;
end;


procedure TFABM_Cuentas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
end;


procedure TFABM_Cuentas.btnColorConciliacionClick(Sender: TObject);
begin
  if ColorDialog.Execute then
  begin
    ShapeColorConciliacion.Brush.Color:= ColorDialog.Color;
  end
end;

procedure TFABM_Cuentas.ZQ_CuentasAfterScroll(DataSet: TDataSet);
begin
  if ZQ_CuentasCOLOR_CONSILIADO.AsString = '' then
    ShapeColorConciliacion.Brush.Color:= clWhite
  else
    ShapeColorConciliacion.Brush.Color:= StringToColor(ZQ_CuentasCOLOR_CONSILIADO.AsString);
end;

end.
