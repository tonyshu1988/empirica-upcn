unit UABM_Preventa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Mask, DBCtrls, StdCtrls, Grids, DBGrids,
  ExtCtrls, Menus, ActnList, XPStyleActnCtrls, ActnMan, jpeg, EKEdit, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, EKListadoSQL,
  ZStoredProcedure, DBClient, EKDbSuma,
  UBuscarProductoStock, UBuscarPersona, Buttons, ComCtrls;

type
  TFABM_Preventa = class(TForm)
    PanelContenedorDerecha: TPanel;
    PanelListadoProducto: TPanel;
    Label9: TLabel;
    DBGridListadoProductos: TDBGrid;
    PieGrilla: TPanel;
    lblCantProductos: TLabel;
    btQuitarProducto: TButton;
    PanelCabeceraFactura: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label28: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    dxBarABM: TdxBarManager;
    BtBuscarProducto: TdxBarLargeButton;
    btBuscProd: TdxBarLargeButton;
    BtAgregarPago: TdxBarLargeButton;
    BtAceptarPago: TdxBarLargeButton;
    BtCancelarPago: TdxBarLargeButton;
    BtVendedor: TdxBarLargeButton;
    btsalir: TdxBarLargeButton;
    bt_BuscarCliente: TdxBarLargeButton;
    btIVA: TdxBarLargeButton;
    GrupoGuardarCancelar: TdxBarGroup;
    lblTotAPagar: TLabel;
    PanelStatusBar: TPanel;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    ATipoIVA: TAction;
    ACliente: TAction;
    ASalir: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    AVendedor: TAction;
    ANuevoProdCBarra: TAction;
    PopUpProductos: TPopupMenu;
    QuitarProd: TMenuItem;
    PProducto: TPanel;
    Panel1: TPanel;
    EKListadoProducto: TEKListadoSQL;
    ZQ_Productos: TZQuery;
    ZQ_ProductosNOMBRE_PRODUCTO: TStringField;
    ZQ_ProductosMEDIDA: TStringField;
    ZQ_ProductosARTICULO: TStringField;
    ZQ_ProductosTIPO_ARTICULO: TStringField;
    ZQ_ProductosNOMBRE_MARCA: TStringField;
    ZQ_ProductosDESCRIPCION: TStringField;
    ZQ_ProductosPRECIO_COSTO: TFloatField;
    ZQ_ProductosPRECIO_VENTA: TFloatField;
    ZQ_ProductosCOEF_GANANCIA: TFloatField;
    ZQ_ProductosCOEF_DESCUENTO: TFloatField;
    ZQ_ProductosIMPUESTO_INTERNO: TFloatField;
    ZQ_ProductosIMPUESTO_IVA: TFloatField;
    ZQ_ProductosCOD_CORTO: TStringField;
    ZQ_ProductosCODIGO_BARRA: TStringField;
    ZQ_ProductosID_PRODUCTO: TIntegerField;
    ZQ_ProductosIMAGEN: TBlobField;
    ZQ_ProductosDETALLE_PROD: TStringField;
    ZQ_ProductosSTOCK_ACTUAL: TFloatField;
    DS_Productos: TDataSource;
    RelojStock: TTimer;
    lblMaxVenta: TLabel;
    ZQ_Personas: TZQuery;
    ZQ_PersonasID_PERSONA: TIntegerField;
    ZQ_PersonasID_PROVINCIA: TIntegerField;
    ZQ_PersonasID_TIPO_DOC: TIntegerField;
    ZQ_PersonasID_TIPO_IVA: TIntegerField;
    ZQ_PersonasNOMBRE: TStringField;
    ZQ_PersonasDIRECCION: TStringField;
    ZQ_PersonasLOCALIDAD: TStringField;
    ZQ_PersonasCODIGO_POSTAL: TStringField;
    ZQ_PersonasTELEFONO: TStringField;
    ZQ_PersonasEMAIL: TStringField;
    ZQ_PersonasFECHA_NACIMIENTO: TDateField;
    ZQ_PersonasNUMERO_DOC: TStringField;
    ZQ_PersonasSEXO: TStringField;
    ZQ_PersonasBAJA: TStringField;
    ZQ_PersonasDESCRIPCION: TStringField;
    ZQ_PersonasCUIT_CUIL: TStringField;
    ZQ_PersonasDESCUENTO_ESPECIAL: TFloatField;
    ZQ_PersonasCODIGO_CORTO: TIntegerField;
    ZQ_PersonasPROV: TStringField;
    ZQ_PersonasTDOC: TStringField;
    ZQ_PersonasTIVA: TStringField;
    ZQ_PersonasPORCDESC: TFloatField;
    DS_Personas: TDataSource;
    CD_DetalleFactura: TClientDataSet;
    CD_DetalleFacturaID_COMPROBANTE_DETALLE: TIntegerField;
    CD_DetalleFacturaID_COMPROBANTE: TIntegerField;
    CD_DetalleFacturaID_PRODUCTO: TIntegerField;
    CD_DetalleFacturaDETALLE: TStringField;
    CD_DetalleFacturaCANTIDAD: TFloatField;
    CD_DetalleFacturaIMPORTE_FINAL: TFloatField;
    CD_DetalleFacturaPORC_DESCUENTO: TFloatField;
    CD_DetalleFacturaBASE_IMPONIBLE: TFloatField;
    CD_DetalleFacturaIMPORTE_UNITARIO: TFloatField;
    CD_DetalleFacturaIMPUESTO_INTERNO: TFloatField;
    CD_DetalleFacturaPORC_IVA: TFloatField;
    CD_DetalleFacturaIMPORTE_VENTA: TFloatField;
    CD_DetalleFacturaIMPORTE_IVA: TFloatField;
    ZSP_Comprobante: TZStoredProc;
    ZSP_ComprobanteID: TIntegerField;
    ZSP_ComprobanteCODIGO: TStringField;
    EKListadoIVA: TEKListadoSQL;
    EKDbSuma1: TEKDbSuma;
    ZQ_DetalleProd: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField1: TIntegerField;
    BlobField1: TBlobField;
    StringField9: TStringField;
    ZQ_TipoIVA: TZQuery;
    ZQ_TipoIVAID_TIPO_IVA: TIntegerField;
    ZQ_TipoIVANOMBRE_TIPO_IVA: TStringField;
    ZQ_TipoIVAABREVIATURA: TStringField;
    ZQ_TipoIVADISCRIMINAR: TStringField;
    ZQ_TipoIVALETRA: TStringField;
    ZQ_TipoIVAFISCAL: TStringField;
    CD_Comprobante: TClientDataSet;
    CD_ComprobanteID_COMPROBANTE: TIntegerField;
    CD_ComprobanteID_SUCURSAL: TIntegerField;
    CD_ComprobanteID_PROVEEDOR: TIntegerField;
    CD_ComprobanteID_CLIENTE: TIntegerField;
    CD_ComprobanteID_TIPO_CPB: TIntegerField;
    CD_ComprobanteID_VENDEDOR: TIntegerField;
    CD_ComprobanteID_COMP_ESTADO: TIntegerField;
    CD_ComprobanteCODIGO: TStringField;
    CD_ComprobanteFECHA: TDateTimeField;
    CD_ComprobanteOBSERVACION: TStringField;
    CD_ComprobanteBASE_IMPONIBLE: TFloatField;
    CD_ComprobanteSALDO: TFloatField;
    CD_ComprobanteIMPORTE_TOTAL: TFloatField;
    CD_ComprobantePORC_IVA: TFloatField;
    CD_ComprobanteIMPORTE_IVA: TFloatField;
    CD_ComprobantePORC_DESCUENTO: TFloatField;
    CD_ComprobanteIMPORTE_DESCUENTO: TFloatField;
    CD_ComprobanteENCABEZADO: TStringField;
    CD_ComprobantePIE: TStringField;
    CD_ComprobanteFECHA_COBRADA: TDateField;
    CD_ComprobanteFECHA_ENVIADA: TDateField;
    CD_ComprobanteFECHA_IMPRESA: TDateField;
    CD_ComprobanteFECHA_VENCIMIENTO: TDateField;
    CD_Comprobantepers_nombre: TStringField;
    CD_Comprobantepers_cuit: TStringField;
    CD_Comprobantepers_codigo: TStringField;
    CD_Comprobantepers_iva: TStringField;
    CD_Comprobantepers_tel: TStringField;
    CD_Comprobantepers_direccion: TStringField;
    CD_ComprobanteID_TIPO_IVA: TIntegerField;
    CD_ComprobantetipoIVA: TStringField;
    CD_Comprobantepers_desc: TStringField;
    CD_ComprobantenVendedor: TStringField;
    CD_ComprobantePUNTO_VENTA: TIntegerField;
    CD_ComprobanteNUMERO_CPB: TIntegerField;
    CD_ComprobanteFECHA_ANULADO: TDateField;
    CD_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField;
    CD_ComprobanteIMPORTE_VENTA: TFloatField;
    DS_Sucursal: TDataSource;
    DS_Comprobante: TDataSource;
    DBText7: TDBText;
    DBText8: TDBText;
    DS_DetalleFactura: TDataSource;
    Panel3: TPanel;
    DBImage1: TDBImage;
    edImagen: TDBImage;
    PanelDetalleProducto: TPanel;
    PLeerCodigo: TPanel;
    LeerCodBar: TLabel;
    codBarras: TEdit;
    Image2: TImage;
    Label8: TLabel;
    Label10: TLabel;
    Label19: TLabel;
    ZQ_PersonasCOEFIVA: TFloatField;
    grupoVertical: TdxBarGroup;
    EditarProd: TMenuItem;
    Label20: TLabel;
    Label2: TLabel;
    ZQ_Comprobante: TZQuery;
    ZQ_ComprobanteID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteID_SUCURSAL: TIntegerField;
    ZQ_ComprobanteID_PROVEEDOR: TIntegerField;
    ZQ_ComprobanteID_CLIENTE: TIntegerField;
    ZQ_ComprobanteID_TIPO_CPB: TIntegerField;
    ZQ_ComprobanteID_VENDEDOR: TIntegerField;
    ZQ_ComprobanteID_COMP_ESTADO: TIntegerField;
    ZQ_ComprobanteCODIGO: TStringField;
    ZQ_ComprobanteFECHA: TDateTimeField;
    ZQ_ComprobanteOBSERVACION: TStringField;
    ZQ_ComprobanteBASE_IMPONIBLE: TFloatField;
    ZQ_ComprobanteSALDO: TFloatField;
    ZQ_ComprobanteIMPORTE_TOTAL: TFloatField;
    ZQ_ComprobantePORC_IVA: TFloatField;
    ZQ_ComprobanteIMPORTE_IVA: TFloatField;
    ZQ_ComprobantePORC_DESCUENTO: TFloatField;
    ZQ_ComprobanteIMPORTE_DESCUENTO: TFloatField;
    ZQ_ComprobanteENCABEZADO: TStringField;
    ZQ_ComprobantePIE: TStringField;
    ZQ_ComprobanteFECHA_COBRADA: TDateField;
    ZQ_ComprobanteFECHA_ENVIADA: TDateField;
    ZQ_ComprobanteFECHA_IMPRESA: TDateField;
    ZQ_ComprobanteFECHA_VENCIMIENTO: TDateField;
    ZQ_Comprobantepers_nombre: TStringField;
    ZQ_Comprobantepers_direccion: TStringField;
    ZQ_Comprobantepers_cuit: TStringField;
    ZQ_Comprobantepers_codigo: TStringField;
    ZQ_ComprobantePUNTO_VENTA: TIntegerField;
    ZQ_ComprobanteNUMERO_CPB: TIntegerField;
    ZQ_ComprobanteFECHA_ANULADO: TDateField;
    ZQ_ComprobanteID_TIPO_IVA: TIntegerField;
    ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_ComprobanteIMPORTE_VENTA: TFloatField;
    ZQ_ComprobanteDetalle: TZQuery;
    ZQ_ComprobanteDetalleID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_ComprobanteDetalleID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteDetalleID_PRODUCTO: TIntegerField;
    ZQ_ComprobanteDetalleDETALLE: TStringField;
    ZQ_ComprobanteDetalleCANTIDAD: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_FINAL: TFloatField;
    ZQ_ComprobanteDetallePORC_DESCUENTO: TFloatField;
    ZQ_ComprobanteDetalleBASE_IMPONIBLE: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_UNITARIO: TFloatField;
    ZQ_ComprobanteDetalleIMPUESTO_INTERNO: TFloatField;
    ZQ_ComprobanteDetallePORC_IVA: TFloatField;
    ZQ_ComprobanteDetalleCANTIDAD_RECIBIDA: TFloatField;
    ZQ_ComprobanteDetalleCANTIDAD_ALMACENADA: TFloatField;
    ZQ_ComprobanteDetalleID_STOCK_PRODUCTO: TIntegerField;
    ZQ_ComprobanteDetalleIMPORTE_VENTA: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_IVA: TFloatField;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit6: TDBEdit;
    Label27: TLabel;
    CD_DetalleFacturaID_PROD_STOCK: TIntegerField;
    ZQ_ProductosID_STOCK_PRODUCTO: TIntegerField;
    edProducto: TDBEdit;
    edCantidad: TDBEdit;
    edUnitario: TDBEdit;
    edDesc: TDBEdit;
    Label5: TLabel;
    edImporteFinal: TDBEdit;
    btnAceptarProd: TSpeedButton;
    btnCancelarProd: TSpeedButton;
    Label3: TLabel;
    Label40: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    CD_DetalleFacturaproducto: TStringField;
    PConfirmarVenta: TPanel;
    Bevel1: TBevel;
    Image1: TImage;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label41: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit15: TDBEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    btnConfirmarVenta: TBitBtn;
    btnCancelarVenta: TBitBtn;
    Panel5: TPanel;
    Panel11: TPanel;
    Label37: TLabel;
    lblVtaTotal: TLabel;
    Panel9: TPanel;
    Label39: TLabel;
    lblVtaDesc: TLabel;
    Panel8: TPanel;
    lblVtaSubtotal: TLabel;
    Label33: TLabel;
    Panel10: TPanel;
    Label38: TLabel;
    lblVtaIVA: TLabel;
    edPorcDctoTotal: TDBEdit;
    Label7: TLabel;
    ZQ_TipoIVACOEFICIENTE: TFloatField;
    ZQ_TipoIVAVERIFICA_CUIT: TStringField;
    Label11: TLabel;
    PABM_FormaPago: TPanel;
    Label18: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    Label55: TLabel;
    Label61: TLabel;
    edDetalleMDPCbox: TDBLookupComboBox;
    edMDPFecha: TDBEdit;
    edMDPBanco: TDBEdit;
    edMDPNro: TDBEdit;
    edImporte: TDBEdit;
    edCodCuenta: TDBEdit;
    edCodMDP: TDBEdit;
    btFPAceptar: TBitBtn;
    btFPCancelar: TBitBtn;
    edDetalleMDP: TDBEdit;
    ZQ_FormasPago: TZQuery;
    ZQ_FormasPagoID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_FormasPagoDESCRIPCION: TStringField;
    ZQ_FormasPagoBAJA: TStringField;
    ZQ_FormasPagoIF: TStringField;
    ZQ_FormasPagoDESC_REC: TFloatField;
    ZQ_FormasPagoCOD_CORTO: TIntegerField;
    ZQ_FormasPagoGENERA_VUELTO: TStringField;
    ZQ_FormasPagoCOLUMNA_PRECIO: TIntegerField;
    ZQ_FormasPagoMODIFICABLE: TStringField;
    EKListadoCuenta: TEKListadoSQL;
    EKListadoMedio: TEKListadoSQL;
    ZQ_Cuentas: TZQuery;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasMEDIO_DEFECTO: TIntegerField;
    ZQ_CuentasCODIGO: TStringField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasNRO_CTA_BANCARIA: TStringField;
    ZQ_CuentasBAJA: TStringField;
    ZQ_CuentasA_CTA_CORRIENTE: TStringField;
    ZQ_CuentasID_SUCURSAL: TIntegerField;
    ZQ_CuentasA_NOTA_CREDITO: TStringField;
    ZQ_CuentasMODIFICABLE: TStringField;
    ZQ_Comprobante_FormaPago: TZQuery;
    ZQ_Comprobante_FormaPagoID_COMPROB_FP: TIntegerField;
    ZQ_Comprobante_FormaPagoID_COMPROBANTE: TIntegerField;
    ZQ_Comprobante_FormaPagoID_TIPO_FORMAPAG: TIntegerField;
    ZQ_Comprobante_FormaPagoMDCP_FECHA: TDateField;
    ZQ_Comprobante_FormaPagoMDCP_BANCO: TStringField;
    ZQ_Comprobante_FormaPagoMDCP_CHEQUE: TStringField;
    ZQ_Comprobante_FormaPagoIMPORTE: TFloatField;
    ZQ_Comprobante_FormaPagoCONCILIADO: TDateField;
    ZQ_Comprobante_FormaPagoCUENTA_INGRESO: TIntegerField;
    ZQ_Comprobante_FormaPagoCUENTA_EGRESO: TIntegerField;
    ZQ_Comprobante_FormaPagoFECHA_FP: TDateTimeField;
    ZQ_Comprobante_FormaPagoIMPORTE_REAL: TFloatField;
    DS_Comprobante_FormaPago: TDataSource;
    edCuenta: TDBEdit;
    ZQ_Comprobante_FormaPago_nombreCuenta: TStringField;
    ZQ_Comprobante_FormaPago_nombreMedio: TStringField;
    Panel6: TPanel;
    Label15: TLabel;
    lblSeniaTotal: TLabel;
    btnCargarSenia: TBitBtn;
    ACargarSenia: TAction;
    btnHistorial: TdxBarLargeButton;
    procedure btBuscProdClick(Sender: TObject);
    procedure VerLectorCB(sino: Boolean);
    procedure IdentificarCodigo();
    procedure LimpiarCodigo;
    procedure LeerCodigo(id: string; cod: string);
    procedure calcularMonto();
    procedure edCantidadExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure crearComprobante;
    procedure cargarClientePorDefecto();
    procedure ZQ_ProductosAfterScroll(DataSet: TDataSet);
    procedure codBarrasEnter(Sender: TObject);
    procedure codBarrasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btsalirClick(Sender: TObject);
    procedure bt_BuscarClienteClick(Sender: TObject);
    function ProductoYaCargado(id: Integer): Boolean;
    procedure edDescExit(Sender: TObject);
    procedure edImporteExit(Sender: TObject);
    procedure BtAgregarPagoClick(Sender: TObject);
    procedure BtVendedorClick(Sender: TObject);
    function agregar(detalle: string; prod: integer): Boolean;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnAceptarProdClick(Sender: TObject);
    procedure btnCancelarProdClick(Sender: TObject);
    procedure modoLecturaProd();
    procedure modoEscrituraProd();
    procedure btQuitarProductoClick(Sender: TObject);
    procedure CD_DetalleFacturaAfterScroll(DataSet: TDataSet);
    procedure QuitarProdClick(Sender: TObject);
    procedure EditarProdClick(Sender: TObject);
    procedure BtBuscarProductoClick(Sender: TObject);
    procedure btIVAClick(Sender: TObject);
    procedure edImporteFinalExit(Sender: TObject);
    procedure edImporteFinalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtCancelarPagoClick(Sender: TObject);
    procedure BtAceptarPagoClick(Sender: TObject);
    procedure EKDbSuma1SumListChanged(Sender: TObject);
    function guardarComprobante(): Boolean;
    procedure btnCancelarVentaClick(Sender: TObject);
    procedure Prorrateo();
    procedure grabarDetallesFactura;
    procedure edDescTotalExit(Sender: TObject);
    procedure recalcularBoleta();
    procedure btnConfirmarVentaClick(Sender: TObject);
    function validarBoleta(): Boolean;
    procedure cancelarProducto();
    function completarCodBar(cod: string): string;
    procedure edCantidadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPorcDctoTotalExit(Sender: TObject);
    procedure buscarCuenta(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure buscarFormaPago(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btFPCancelarClick(Sender: TObject);
    procedure btFPAceptarClick(Sender: TObject);
    procedure btnCargarSeniaClick(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure AClienteExecute(Sender: TObject);
    procedure ATipoIVAExecute(Sender: TObject);
    procedure AVendedorExecute(Sender: TObject);
    procedure ANuevoProdCBarraExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ASalirExecute(Sender: TObject);
    procedure ACargarSeniaExecute(Sender: TObject);
  Private
    { Private declarations }
    vsel: TFBuscarProductoStock;
    vsel2: TFBuscarPersona;
    vsel3: TFBuscarPersona;
    procedure OnSelProd;
    procedure OnSelPers;
    procedure OnSelVendedor;
  Public
    { Public declarations }
  end;

var
  FABM_Preventa: TFABM_Preventa;
  importeacob, punitoriosacob, acumulado, importeVenta, ClienteIVA, descCliente,
    acumuladoIVA, acumFpagoReal: double;
  IdProd: string;
  cliente, IdVendedor, cajero, IDClienteIVA, idSucursal: Integer;

const
  abmComprobante = 'ABM Venta Mostrador';

implementation

uses UDM, UPrincipal, strutils, EKModelo, Math, UUtilidades, DateUtils;

{$R *.dfm}

procedure TFABM_Preventa.btBuscProdClick(Sender: TObject);
begin
  if (CD_DetalleFactura.State <> dsBrowse) then
    exit;

  if cliente < 0 then
  begin
    bt_BuscarCliente.Click;
    exit;
  end;

  if IdVendedor < 0 then
  begin
    btVendedorClick(self);
    exit;
  end;

  if EKListadoProducto.Buscar then
    if (EKListadoProducto.Resultado <> '') then
    begin
      codBarras.Text:= 'I' + EKListadoProducto.Resultado;
      LeerCodigo('I', codBarras.Text);
      //IdentificarCodigo;
    end
end;


procedure TFABM_Preventa.VerLectorCB(sino: Boolean);
begin
  PLeerCodigo.Visible:= sino;
  PLeerCodigo.BringToFront;
  dm.centrarPanel(FABM_Preventa, PLeerCodigo);
  PanelContenedorDerecha.Enabled:= not (PLeerCodigo.Visible);
end;


procedure TFABM_Preventa.IdentificarCodigo();
var
  cod, num: string;
begin
  cod:= codBarras.Text;
  try
    begin
      if not (sonTodosNumeros(MidStr(cod, 2, Length(cod) - 1))) then
      begin
        Application.MessageBox('El código de ingresado es incorrecto', 'Código incorrecto');
        LimpiarCodigo;
        exit;
      end;
      if UpperCase(MidStr(Cod, 1, 1)) = 'C' then
      begin
        LeerCodigo('C', Cod);
        exit;
      end;

      if UpperCase(MidStr(Cod, 1, 1)) = 'I' then
      begin
        LeerCodigo('I', Cod);
        exit;
      end;

        // POR CODIGO DE BARRAS PRODUCTO
      if (Length(cod) <= LONG_COD_BARRAS) then
      begin
        LeerCodigo('B', completarCodBar(Cod));
        exit;
      end;

      if (Length(cod) > LONG_COD_BARRAS) then
      begin
        Application.MessageBox('Longitud de código incorrecta', 'Código incorrecto');
        LimpiarCodigo;
        exit;
      end;

      raise Exception(self);
    end
  except
    begin
      Application.MessageBox('El código de ingresado es incorrecto', 'Código incorrecto');
      LimpiarCodigo;
      exit;
    end;
  end;
end;


procedure TFABM_Preventa.LimpiarCodigo;
begin
  ZQ_Productos.Close;
  importeacob:= 0;
  codBarras.Clear;
  if (CD_DetalleFactura.State <> dsBrowse) then
  begin
    CD_DetalleFacturaCANTIDAD.AsFloat:= 1;
    CD_DetalleFacturaPORC_DESCUENTO.AsFloat:= 0;
    CD_DetalleFacturaIMPORTE_FINAL.AsFloat:= 0;
  end;
  RelojStock.Enabled:= false;
  //lblSinStock.Visible:=False;
  lblMaxVenta.Visible:= False;
end;


procedure TFABM_Preventa.LeerCodigo(id: string; cod: string);
var
  f1, f2, fecha: tdate;
  punit: double;
  diasm: integer;
begin

  RelojStock.Enabled:= false;
  lblMaxVenta.Visible:= False;

  try
    IdProd:= MidStr(cod, 2, Length(cod) - 1);
  except
    begin
      Application.MessageBox('El código de ingresado es incorrecto', 'Código incorrecto');
      LimpiarCodigo;
      exit;
    end
  end;
  //Codigo Corto
  if id = 'C' then
  begin
    ZQ_Productos.Close;
    ZQ_Productos.sql[15]:= Format('and(p.cod_corto=%s)', [QuotedStr(IdProd)]);
    ZQ_Productos.Open;
  end;

  if id = 'I' then
  begin
    ZQ_Productos.Close;
    ZQ_Productos.sql[15]:= Format('and(p.id_producto=%s)', [IdProd]);
    ZQ_Productos.Open;
  end;

     //Codigo de Barras
  if id = 'B' then
  begin
    ZQ_Productos.Close;
    ZQ_Productos.sql[15]:= Format('and( lpad(p.codigo_barra,%d,%s)=%s)', [LONG_COD_BARRAS, QuotedStr('0'), QuotedStr(cod)]);
    ZQ_Productos.Open;
  end;

  if not (ZQ_Productos.IsEmpty) then
  begin
    if ZQ_ProductosSTOCK_ACTUAL.AsFloat <= 0 then
    begin
      Application.MessageBox('El Stock del Producto es Insuficiente.', 'Stock Producto');
      LimpiarCodigo;
      exit;
    end;

    if ((id = 'B') or (id = 'C')) then
      if ZQ_Productos.RecordCount > 1 then
      begin
        Application.MessageBox('El código ingresado corresponde a más de un producto' + char(13) +
          '(utilice la búsqueda avanzada para seleccionar el adecuado)', 'Producto Repetido');
        LimpiarCodigo;
        exit;
      end;

    agregar('', ZQ_ProductosID_PRODUCTO.AsInteger);
  end
  else
  begin
    Application.MessageBox('El producto no pudo ser encontrado.' + char(13) +
      '(utilice la búsqueda avanzada para seleccionar el adecuado)', 'Código incorrecto');
    LimpiarCodigo;
    exit;
  end;
end;


procedure TFABM_Preventa.calcularMonto();
var
  desc, importe: double;
begin
  if not (ZQ_Productos.IsEmpty) then
  begin
    if (CD_DetalleFacturaCANTIDAD.AsFloat < 0) then CD_DetalleFacturaCANTIDAD.AsFloat:= 1;
    if (CD_DetalleFacturaPORC_DESCUENTO.AsFloat < 0) then CD_DetalleFacturaPORC_DESCUENTO.AsFloat:= 0;
    desc:= CD_DetalleFacturaPORC_DESCUENTO.AsFloat;
    CD_DetalleFacturaIMPORTE_FINAL.AsFloat:= CD_DetalleFacturaCANTIDAD.AsFloat * (CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat - (CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat * desc / 100));
  end
end;


procedure TFABM_Preventa.edCantidadExit(Sender: TObject);
begin
  if (not (ZQ_Productos.IsEmpty) and (CD_DetalleFactura.State in [dsInsert, dsEdit])) then
    calcularMonto();
end;


procedure TFABM_Preventa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(abmComprobante);
end;


procedure TFABM_Preventa.FormCreate(Sender: TObject);
begin
  CurrencyDecimals:= 2;
  DecimalSeparator:= '.';
  ThousandSeparator:= ',';
  DateSeparator:= '/';
  ShortDateFormat:= 'dd/MM/yyyy';
  dm.ZQ_Configuracion.Close;
  dm.ZQ_Configuracion.Open;
  idSucursal:= dm.ZQ_ConfiguracionDB_SUCURSAL.AsInteger;
  CD_Comprobante.CreateDataSet;
  CD_DetalleFactura.CreateDataSet;
  dm.EKModelo.abrir(ZQ_DetalleProd);
  Cliente:= -1;
  IdVendedor:= -1;
  descCliente:= 0;
  ClienteIVA:= 0;
  IDClienteIVA:= 0;
  crearComprobante();
  cargarClientePorDefecto();
  DS_Sucursal.DataSet:= dm.ZQ_Sucursal;
  DBImage1.DataField:= 'LOGO';
  modoLecturaProd();
  PConfirmarVenta.Visible:= False;
  DM.ZQ_Sucursal.Close;
  DM.ZQ_Sucursal.ParamByName('id_sucursal').AsInteger:= idSucursal;
  DM.ZQ_Sucursal.Open;
  edImagen.Visible:= not (ZQ_ProductosIMAGEN.IsNull);
  DBImage1.Visible:= True;
  DBImage1.BringToFront;
  FPrincipal.Iconos_Menu_32.GetBitmap(1, btnConfirmarVenta.Glyph);
  FPrincipal.Iconos_Menu_32.GetBitmap(0, btnCancelarVenta.Glyph);
  PABM_FormaPago.Visible:= False;

  dm.EKModelo.abrir(ZQ_Cuentas);
  dm.EKModelo.abrir(ZQ_FormasPago);
end;


procedure TFABM_Preventa.crearComprobante;
begin
  importeacob:= 0;
  punitoriosacob:= 0;
  acumulado:= 0;
  acumuladoIVA:= 0;
  IdProd:= '';
  RelojStock.Enabled:= false;
  lblMaxVenta.Visible:= False;
  //lblSinStock.Visible:=False;
  EKDbSuma1.SumCollection[0].SumValue:= 0;
  EKDbSuma1.SumCollection[1].SumValue:= 0;

  Cliente:= -1;
//  IdVendedor:= -1;
  descCliente:= 0;
  ClienteIVA:= 0;
  IDClienteIVA:= 0;

  CD_Comprobante.EmptyDataSet;
  CD_Comprobante.Append;
  CD_ComprobanteID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
  CD_ComprobanteID_CLIENTE.AsInteger:= cliente;
  CD_ComprobanteID_TIPO_CPB.AsInteger:= 10; //PREVENTA
  CD_ComprobanteID_VENDEDOR.AsInteger:= IdVendedor;
  CD_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_SIN_CONFIRMAR;
  CD_ComprobanteFECHA.AsDateTime:= dm.EKModelo.FechayHora();
  CD_ComprobanteOBSERVACION.AsString:= '';
  CD_ComprobanteBASE_IMPONIBLE.AsFloat:= 0;
  CD_ComprobanteSALDO.AsFloat:= 0;
  CD_ComprobanteIMPORTE_TOTAL.AsFloat:= 0;
  CD_ComprobantePORC_IVA.AsFloat:= ClienteIVA;
  CD_ComprobanteIMPORTE_IVA.AsInteger:= 0;

  if descCliente < 0 then descCliente:= descCliente * 100;

  CD_ComprobantePORC_DESCUENTO.AsFloat:= descCliente / 100;
  CD_ComprobanteIMPORTE_DESCUENTO.AsInteger:= 0;
  CD_ComprobanteENCABEZADO.AsString:= '';
  CD_ComprobantePIE.AsString:= '';
  CD_ComprobanteFECHA_COBRADA.Clear;
  CD_ComprobanteFECHA_ENVIADA.Clear;
  CD_ComprobanteFECHA_IMPRESA.Clear;
  CD_ComprobanteFECHA_VENCIMIENTO.AsDateTime:= dm.EKModelo.Fecha();

  lblCantProductos.Caption:= 'Cantidad Productos: ' + inttostr(CD_DetalleFactura.RecordCount);
end;


procedure TFABM_Preventa.cargarClientePorDefecto();
begin
  // Cargo Consumidor Final por defecto Id=0
  ZQ_Personas.Locate('id_persona', 0, []);
  Cliente:= ZQ_PersonasID_PERSONA.AsInteger;
  IdClienteIVA:= ZQ_PersonasID_TIPO_IVA.AsInteger;
  ClienteIVA:= ZQ_PersonasCOEFIVA.AsFloat;
  CD_ComprobanteID_CLIENTE.AsInteger:= Cliente;
  CD_ComprobanteID_TIPO_IVA.AsInteger:= IdClienteIVA;
  CD_ComprobantePORC_IVA.AsFloat:= ClienteIVA;
  descCliente:= ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat * 100;
end;


procedure TFABM_Preventa.ZQ_ProductosAfterScroll(DataSet: TDataSet);
begin
  edImagen.Visible:= not ((ZQ_ProductosIMAGEN.IsNull) or (ZQ_ProductosIMAGEN.AsString = ''));
  edImagen.BringToFront;
end;


procedure TFABM_Preventa.codBarrasEnter(Sender: TObject);
begin
  LimpiarCodigo;
end;


procedure TFABM_Preventa.codBarrasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
  begin
    IdentificarCodigo;

  end
  else
    if key = 27 then
    begin
      VerLectorCB(false);
      btnCancelarProd.Click;
    end
end;


procedure TFABM_Preventa.btsalirClick(Sender: TObject);
begin
  close;
end;


procedure TFABM_Preventa.bt_BuscarClienteClick(Sender: TObject);
begin
  if (CD_DetalleFactura.State = dsBrowse) then
    if not Assigned(vsel2) then
      vsel2:= TFBuscarPersona.Create(nil);
  vsel2.configRelacion(RELACION_CLIENTE, True);
  vsel2.EKBusqueda.Abrir;
  vsel2.OnSeleccionar:= OnSelPers;
  vsel2.ShowModal;
end;


procedure TFABM_Preventa.OnSelPers;
begin
  if not (vsel2.ZQ_Personas.IsEmpty) then
  begin
    ZQ_Personas.Refresh;
    ZQ_Personas.Locate('id_persona', vsel2.ZQ_PersonasID_PERSONA.AsInteger, []);
    Cliente:= ZQ_PersonasID_PERSONA.AsInteger;
    IdClienteIVA:= ZQ_PersonasID_TIPO_IVA.AsInteger;
    descCliente:= 0;
    if (not ZQ_PersonasDESCUENTO_ESPECIAL.IsNull) or (ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat <> 0) then
      if (application.MessageBox(pchar('El cliente seleccionado posee un descuento especial del ' + FloatToStr(ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat * 100) + '%.' +
        #13 + 'Desea aplicar este descuento para todos los productos que se carguen?'), 'Descuento Cliente', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      begin
        descCliente:= ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat * 100;
      end;

    CD_ComprobanteID_CLIENTE.AsInteger:= cliente;
    CD_ComprobanteID_TIPO_IVA.AsInteger:= IdClienteIVA;
    CD_ComprobantePORC_DESCUENTO.AsFloat:= descCliente;
  end;
  vsel2.Close;
end;



procedure TFABM_Preventa.OnSelVendedor;
begin
  if not (vsel3.ZQ_Personas.IsEmpty) then
  begin
    ZQ_Personas.Locate('id_persona', vsel3.ZQ_PersonasID_PERSONA.AsInteger, []);
    IdVendedor:= vsel3.ZQ_PersonasID_PERSONA.AsInteger;
    CD_ComprobanteID_VENDEDOR.AsInteger:= IdVendedor;
  end;
  vsel3.Close;
end;


function TFABM_Preventa.ProductoYaCargado(id: Integer): Boolean;
begin
  Result:= False;
//    CD_DetalleFactura.Filtered := false;
//    CD_DetalleFactura.Filter:= Format('id_producto = %d ',[id]);
//    CD_DetalleFactura.Filtered := true;
//    if not CD_DetalleFactura.IsEmpty then
//    begin
//      CD_DetalleFactura.Filtered := false;
//      Result:=True;
//      Application.MessageBox('El Producto seleccionado ya fue cargado','Carga Producto',MB_OK+MB_ICONINFORMATION);
//      exit;
//    end;
//    CD_DetalleFactura.Filtered := false;
end;


procedure TFABM_Preventa.edDescExit(Sender: TObject);
begin
  if (not (ZQ_Productos.IsEmpty) and (CD_DetalleFactura.State in [dsInsert, dsEdit])) then
    calcularMonto();
end;


procedure TFABM_Preventa.edImporteExit(Sender: TObject);
begin
  if edCantidad.Enabled then
    edCantidad.SetFocus;
end;


procedure TFABM_Preventa.BtAgregarPagoClick(Sender: TObject);
begin
  if (CD_DetalleFactura.State <> dsBrowse) then
    exit;
    
  if cliente < 0 then
  begin
   //Application.MessageBox('Debe seleccionar el Cliente.', 'Atención');
    bt_BuscarCliente.Click;
    exit;
  end;

  if IdVendedor < 0 then
  begin
   //Application.MessageBox('Debe seleccionar el Vendedor.', 'Atención');
    btVendedorClick(self);
    exit;
  end;

  modoLecturaProd();
  VerLectorCB(true);
  LimpiarCodigo();
  if codBarras.Enabled then
    codBarras.SetFocus;
end;


procedure TFABM_Preventa.BtVendedorClick(Sender: TObject);
begin
  if (CD_DetalleFactura.State = dsBrowse) then
    if not Assigned(vsel3) then
      vsel3:= TFBuscarPersona.Create(nil);
  vsel3.configRelacion(RELACION_EMPLEADO, True);
  vsel3.EKBusqueda.Abrir;
  vsel3.OnSeleccionar:= OnSelVendedor;
  vsel3.ShowModal;
end;


function TFABM_Preventa.agregar(detalle: string; prod: integer): Boolean;
begin
  Result:= False;
  if not (ProductoYaCargado(prod)) then
  begin

    CD_DetalleFactura.Append;
    CD_DetalleFacturaID_PRODUCTO.AsInteger:= prod;
    CD_DetalleFacturaproducto.AsString:= ZQ_ProductosDETALLE_PROD.AsString;
    CD_DetalleFacturaDETALLE.AsString:= detalle;
    CD_DetalleFacturaCANTIDAD.AsFloat:= 1;
    CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat:= ZQ_ProductosPRECIO_VENTA.AsFloat;
    CD_DetalleFacturaPORC_DESCUENTO.AsFloat:= (ZQ_ProductosCOEF_DESCUENTO.AsFloat * 100);
    CD_DetalleFacturaIMPUESTO_INTERNO.AsFloat:= ZQ_ProductosIMPUESTO_INTERNO.AsFloat;
    if ZQ_ProductosIMPUESTO_IVA.IsNull or (ZQ_ProductosIMPUESTO_IVA.AsFloat = 0) then
      CD_DetalleFacturaPORC_IVA.AsFloat:= 0.21
    else
      CD_DetalleFacturaPORC_IVA.AsFloat:= ZQ_ProductosIMPUESTO_IVA.AsFloat;
    CD_DetalleFacturaBASE_IMPONIBLE.AsFloat:= (CD_DetalleFacturaCANTIDAD.AsInteger * CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat);
    CD_DetalleFacturaIMPORTE_FINAL.AsFloat:= CD_DetalleFacturaBASE_IMPONIBLE.AsFloat;
    CD_DetalleFacturaIMPORTE_IVA.AsFloat:= CD_DetalleFacturaPORC_IVA.AsFloat * CD_DetalleFacturaIMPORTE_FINAL.AsFloat;
    CD_DetalleFacturaID_PROD_STOCK.AsInteger:= ZQ_ProductosID_STOCK_PRODUCTO.AsInteger;
//        CD_DetalleFacturaimporte_original.AsFloat:=CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat;
    modoEscrituraProd();
    Result:= True;
  end
end;


procedure TFABM_Preventa.SpeedButton1Click(Sender: TObject);
begin
  BtAgregarPago.Click;
end;


procedure TFABM_Preventa.btnAceptarProdClick(Sender: TObject);
begin
  if CD_DetalleFacturaIMPORTE_FINAL.AsFloat <= 0 then
  begin
    Application.MessageBox('El importe ingresado es incorrecto.', 'Atención');
    if edImporteFinal.Enabled then
      edImporteFinal.SetFocus;
    exit;
  end;

  if ((not (ZQ_Productos.IsEmpty)) and (CD_DetalleFacturaCANTIDAD.AsFloat > 0)) then
    if (ZQ_ProductosSTOCK_ACTUAL.AsFloat >= CD_DetalleFacturaCANTIDAD.AsFloat) then
    begin
      CD_DetalleFacturaIMPORTE_VENTA.AsFloat:= CD_DetalleFacturaIMPORTE_FINAL.AsFloat;
      CD_DetalleFacturaIMPORTE_IVA.AsFloat:= CD_DetalleFacturaPORC_IVA.AsFloat * CD_DetalleFacturaIMPORTE_VENTA.AsFloat;
      CD_DetalleFactura.Post;
      lblCantProductos.Caption:= 'Cantidad Productos/Servicios: ' + inttostr(CD_DetalleFactura.RecordCount);
      modoLecturaProd();
      if DBGridListadoProductos.Enabled then
        DBGridListadoProductos.SetFocus;
    end
    else
    begin
      Application.MessageBox('El stock actual del producto es insuficiente para la cantidad ingresada.', 'Atención');
      if edCantidad.Enabled then
        edCantidad.SetFocus;
      exit;
    end;
end;


procedure TFABM_Preventa.btnCancelarProdClick(Sender: TObject);
begin
  if (CD_DetalleFactura.State in [dsInsert, dsEdit]) then
    CD_DetalleFactura.Cancel;
  modoLecturaProd();
  if DBGridListadoProductos.Enabled then
    DBGridListadoProductos.SetFocus;
end;


procedure TFABM_Preventa.modoLecturaProd();
begin
  VerLectorCB(false);
  PProducto.Visible:= False;
  grupoVertical.Enabled:= True;
  GrupoGuardarCancelar.Enabled:= True;
  PanelDetalleProducto.Enabled:= False;
   //No trae productos si se cancela
  edImagen.Visible:= False;
  ZQ_Productos.Close;
end;


procedure TFABM_Preventa.modoEscrituraProd();
begin
  VerLectorCB(false);
  PProducto.Visible:= True;
  PanelDetalleProducto.Enabled:= True;
  grupoVertical.Enabled:= False;
  GrupoGuardarCancelar.Enabled:= False;
  PanelDetalleProducto.Color:= $00AFFED5;
  if edCantidad.Enabled then
    edCantidad.SetFocus;

   //Permisos para modif el importe directo o dar un descuento
  edDesc.Enabled:= dm.EKUsrLogin.PermisoAccion('CAJA_MODIF_IMPORTE');
  edUnitario.Enabled:= dm.EKUsrLogin.PermisoAccion('CAJA_MODIF_IMPORTE');
end;


procedure TFABM_Preventa.btQuitarProductoClick(Sender: TObject);
begin
  if not (CD_DetalleFactura.IsEmpty) then
  begin
    CD_DetalleFactura.Delete;
    lblCantProductos.Caption:= 'Cantidad Productos/Servicios: ' + inttostr(CD_DetalleFactura.RecordCount);
  end;
end;


procedure TFABM_Preventa.CD_DetalleFacturaAfterScroll(DataSet: TDataSet);
begin
  lblCantProductos.Caption:= 'Cantidad Productos/Servicios: ' + inttostr(CD_DetalleFactura.RecordCount);
end;


procedure TFABM_Preventa.QuitarProdClick(Sender: TObject);
begin
  btQuitarProducto.Click;
end;


procedure TFABM_Preventa.EditarProdClick(Sender: TObject);
begin
  if not (CD_DetalleFactura.IsEmpty) then
  begin
    ZQ_Productos.Close;
    ZQ_Productos.sql[15]:= Format('and(p.id_producto=%s)', [CD_DetalleFacturaID_PRODUCTO.AsString]);
    ZQ_Productos.Open;

    CD_DetalleFactura.Edit;
    modoEscrituraProd();
    if edCantidad.Enabled then
      edCantidad.SetFocus;
  end
end;


procedure TFABM_Preventa.BtBuscarProductoClick(Sender: TObject);
begin
  if (CD_DetalleFactura.State <> dsBrowse) then
    exit;

  if cliente < 0 then
  begin
   //Application.MessageBox('Debe seleccionar el Cliente.', 'Atención');
    bt_BuscarCliente.Click;
    exit;
  end;

  if IdVendedor < 0 then
  begin
   //Application.MessageBox('Debe seleccionar el Vendedor.', 'Atención');
    btVendedorClick(self);
    exit;
  end;

  if not Assigned(vsel) then
    vsel:= TFBuscarProductoStock.Create(nil);
  vsel.usaCajero:= 'S';
  vsel.OnSeleccionar:= OnSelProd;
  vsel.ShowModal;
  vsel.usaCajero:= 'N';
end;


procedure TFABM_Preventa.OnSelProd;
begin
  if not vsel.ZQ_Stock.IsEmpty then
  begin
    if not (ProductoYaCargado(vsel.ZQ_StockID_PRODUCTO.AsInteger)) then
    begin
      codBarras.Text:= 'I' + vsel.ZQ_StockID_PRODUCTO.AsString;
        //IdentificarCodigo;
      LeerCodigo('I', codBarras.Text);
      if edCantidad.Enabled then
        edCantidad.SetFocus;
    end;
    vsel.ZQ_Stock.Filtered:= False;
    vsel.Close;
  end;
end;


procedure TFABM_Preventa.btIVAClick(Sender: TObject);
begin
  if (CD_DetalleFactura.State = dsBrowse) then
    if (CD_Comprobante.State = dsInsert) then
      if EKListadoIVA.Buscar then
        CD_ComprobanteID_TIPO_IVA.AsInteger:= StrToInt(EKListadoIVA.Resultado);
end;


procedure TFABM_Preventa.edImporteFinalExit(Sender: TObject);
begin
  if CD_DetalleFactura.State in [dsInsert, dsEdit] then
    if edCantidad.Enabled then
      edCantidad.SetFocus;
end;


procedure TFABM_Preventa.edImporteFinalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    13: begin
        if (application.MessageBox(pchar('Desea Guardar el Producto?'), 'Pre-Venta Producto', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
          btnAceptarProd.Click;
      end;
    27: begin
        if (application.MessageBox(pchar('Desea Cancelar los cambios en el Producto?'), 'Pre-Venta Producto', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
          btnCancelarProd.Click;
      end;
  end
end;


procedure TFABM_Preventa.BtCancelarPagoClick(Sender: TObject);
begin
  if (CD_DetalleFactura.State = dsBrowse) then
    if (application.MessageBox(pchar('Desea Cancelar la Pre-Venta Actual y quitar todos sus Productos?'), 'Cancelar Pre-Venta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    begin
      cancelarProducto();
    end
end;


procedure TFABM_Preventa.BtAceptarPagoClick(Sender: TObject);
begin
  if validarBoleta() then
  begin
    if not (dm.EKModelo.verificar_transaccion(abmComprobante)) then //si no hay ninguna transaccion abierta
      if dm.EKModelo.iniciar_transaccion(abmComprobante, [ZQ_Comprobante, ZQ_ComprobanteDetalle, ZQ_Comprobante_FormaPago]) then
      begin //una vez iniciada la transaccion
        ZQ_Comprobante_FormaPago.Close;

        PConfirmarVenta.Visible:= True;
        PConfirmarVenta.BringToFront;
        dm.centrarPanel(FABM_Preventa, PConfirmarVenta);
        PanelContenedorDerecha.Enabled:= not (PConfirmarVenta.Visible);
        GrupoGuardarCancelar.Enabled:= False;
        grupoVertical.Enabled:= False;
        recalcularBoleta();
        if edPorcDctoTotal.Enabled then
          edPorcDctoTotal.SetFocus;
      end;
  end;
end;


procedure TFABM_Preventa.EKDbSuma1SumListChanged(Sender: TObject);
begin
  acumulado:= EKDbSuma1.SumCollection[0].SumValue;
  acumuladoIVA:= EKDbSuma1.SumCollection[1].SumValue;
  lblTotAPagar.Caption:= 'Total Venta: ' + FormatFloat('$ ##,###,##0.00 ', acumulado);

  if (CD_Comprobante.state = dsInsert) then
    CD_ComprobanteBASE_IMPONIBLE.AsFloat:= acumulado;

  if acumulado > MONTO_MAX_VENTA then
  begin
    lblTotAPagar.Color:= clRed;
    lblMaxVenta.Visible:= true;
  end
  else
  begin
    lblTotAPagar.Color:= $00C10000;
    lblMaxVenta.Visible:= false;
  end
end;


function TFABM_Preventa.guardarComprobante(): Boolean;
begin
  Result:= False;
//Hacer las validaciones correspondientes

  CD_Comprobante.Post;
  ZQ_Comprobante.Append;
  ZSP_Comprobante.Active:= True;
  ZQ_ComprobanteID_COMPROBANTE.AsInteger:= ZSP_ComprobanteID.AsInteger;
  ZQ_ComprobanteCODIGO.AsString:= ZSP_ComprobanteCODIGO.AsString;
  ZSP_Comprobante.Active:= False;
  ZQ_ComprobanteID_SUCURSAL.Value:= CD_ComprobanteID_SUCURSAL.Value;
  ZQ_ComprobanteID_PROVEEDOR.Clear;
  ZQ_ComprobanteID_CLIENTE.AsInteger:= CD_ComprobanteID_CLIENTE.AsInteger;
  ZQ_ComprobanteID_TIPO_CPB.value:= CD_ComprobanteID_TIPO_CPB.Value;
  ZQ_ComprobanteID_VENDEDOR.Value:= CD_ComprobanteID_VENDEDOR.Value;
  ZQ_ComprobanteID_COMP_ESTADO.Value:= CD_ComprobanteID_COMP_ESTADO.Value;
  ZQ_ComprobanteFECHA.AsDateTime:= CD_ComprobanteFECHA.AsDateTime;
  ZQ_ComprobanteOBSERVACION.Value:= CD_ComprobanteOBSERVACION.Value;
  ZQ_ComprobanteBASE_IMPONIBLE.Value:= CD_ComprobanteBASE_IMPONIBLE.Value;
  ZQ_ComprobanteSALDO.AsFloat:= CD_ComprobanteSALDO.Value;
  ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:= CD_ComprobanteIMPORTE_TOTAL.Value;
  ZQ_ComprobantePORC_IVA.AsFloat:= CD_ComprobantePORC_IVA.Value;
  ZQ_ComprobanteIMPORTE_IVA.AsFloat:= CD_ComprobanteIMPORTE_IVA.AsFloat;
  ZQ_ComprobantePORC_DESCUENTO.AsFloat:= CD_ComprobantePORC_DESCUENTO.AsFloat / 100;
  ZQ_ComprobanteIMPORTE_DESCUENTO.AsFloat:= CD_ComprobanteIMPORTE_DESCUENTO.AsFloat;
  ZQ_ComprobanteIMPORTE_VENTA.AsFloat:= CD_ComprobanteIMPORTE_VENTA.AsFloat;
  ZQ_ComprobanteIMPORTE_IVA.AsFloat:= CD_ComprobanteIMPORTE_IVA.AsFloat;
  ZQ_ComprobanteENCABEZADO.AsString:= CD_ComprobanteENCABEZADO.AsString;
  ZQ_ComprobantePIE.AsString:= CD_ComprobantePIE.AsString;
  ZQ_ComprobanteID_TIPO_IVA.AsInteger:= CD_ComprobanteID_TIPO_IVA.AsInteger;
  ZQ_ComprobanteFECHA_ENVIADA.Clear;
  ZQ_ComprobanteFECHA_IMPRESA.Clear;
  ZQ_ComprobanteFECHA_VENCIMIENTO.AsDateTime:= IncDay(CD_ComprobanteFECHA.AsDateTime, preventa_diasVencimiento);
  ZQ_Comprobante.Post;

  //si hay una seña cargada le seteo los datos faltantes
  if not ZQ_Comprobante_FormaPago.IsEmpty then
  begin
    ZQ_Comprobante_FormaPago.Edit;
    ZQ_Comprobante_FormaPagoFECHA_FP.AsDateTime:= ZQ_ComprobanteFECHA.AsDateTime;
    ZQ_Comprobante_FormaPagoID_COMPROBANTE.AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    ZQ_Comprobante_FormaPagoIMPORTE_REAL.AsFloat:= ZQ_Comprobante_FormaPagoIMPORTE.AsFloat;
    ZQ_Comprobante_FormaPago.Post;
  end;

  grabarDetallesFactura();

  try
    begin
      if not (dm.EKModelo.finalizar_transaccion(abmComprobante)) then
      begin
        dm.EKModelo.cancelar_transaccion(abmComprobante);
        Application.MessageBox('No se pudo crear el Comprobante', 'Atención');
      end
      else
      begin
        CD_DetalleFactura.EmptyDataSet;
        PanelContenedorDerecha.Enabled:= True;
        if DBGridListadoProductos.Enabled then
          DBGridListadoProductos.SetFocus;
        PConfirmarVenta.Visible:= False;
        GrupoGuardarCancelar.Enabled:= true;
        grupoVertical.Enabled:= true;
        LimpiarCodigo();
        crearComprobante();
        cargarClientePorDefecto();
        Result:= True;

        ZQ_Comprobante_FormaPago.Close;
        lblSeniaTotal.Caption:= FormatFloat('$ ##,###,##0.00 ', 0);
        lblTotAPagar.Caption:= 'Total Venta: ' + FormatFloat('$ ##,###,##0.00 ', 0);
      end
    end
  except
    begin
      Application.MessageBox('No se pudo crear el Comprobante', 'Atención');
    end;
  end;
end;


procedure TFABM_Preventa.btnCancelarVentaClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(abmComprobante) then
    if dm.EKModelo.cancelar_transaccion(abmComprobante) then
    begin
      CD_Comprobante.Edit;
      PConfirmarVenta.Visible:= False;
      PanelContenedorDerecha.Enabled:= not (PConfirmarVenta.Visible);
      GrupoGuardarCancelar.Enabled:= True;
      grupoVertical.Enabled:= True;
      if DBGridListadoProductos.Enabled then
        DBGridListadoProductos.SetFocus;

      if not ZQ_Comprobante_FormaPago.IsEmpty then
      begin
        ZQ_Comprobante_FormaPago.Close;
        lblSeniaTotal.Caption:= FormatFloat('$ ##,###,##0.00 ', 0);
      end
    end
end;


procedure TFABM_Preventa.grabarDetallesFactura;
begin
  Prorrateo();
  CD_DetalleFactura.First;
  while not CD_DetalleFactura.Eof do
  begin
    ZQ_ComprobanteDetalle.Open;
    ZQ_ComprobanteDetalle.Append;
    ZQ_ComprobanteDetalleID_COMPROBANTE.AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    ZQ_ComprobanteDetalleID_PRODUCTO.AsInteger:= CD_DetalleFacturaID_PRODUCTO.AsInteger;
    ZQ_ComprobanteDetalleDETALLE.AsString:= CD_DetalleFacturaDETALLE.AsString;
    ZQ_ComprobanteDetalleCANTIDAD.AsInteger:= CD_DetalleFacturaCANTIDAD.AsInteger;
    ZQ_ComprobanteDetalleIMPORTE_FINAL.AsFloat:= CD_DetalleFacturaIMPORTE_FINAL.AsFloat;
    ZQ_ComprobanteDetallePORC_DESCUENTO.AsFloat:= CD_DetalleFacturaPORC_DESCUENTO.AsFloat;
    ZQ_ComprobanteDetalleBASE_IMPONIBLE.AsFloat:= CD_DetalleFacturaBASE_IMPONIBLE.AsFloat;
    ZQ_ComprobanteDetalleIMPORTE_UNITARIO.AsFloat:= CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat;
    ZQ_ComprobanteDetalleIMPUESTO_INTERNO.AsFloat:= CD_DetalleFacturaIMPUESTO_INTERNO.AsFloat;
    ZQ_ComprobanteDetallePORC_IVA.AsFloat:= CD_DetalleFacturaPORC_IVA.AsFloat;
    ZQ_ComprobanteDetalleIMPORTE_IVA.AsFloat:= CD_DetalleFacturaIMPORTE_IVA.AsFloat;
    ZQ_ComprobanteDetalleIMPORTE_VENTA.AsFloat:= CD_DetalleFacturaIMPORTE_VENTA.AsFloat;
    ZQ_ComprobanteDetalleID_STOCK_PRODUCTO.AsInteger:= CD_DetalleFacturaID_PROD_STOCK.AsInteger;
    ZQ_ComprobanteDetalle.Post;

    CD_DetalleFactura.Next;
  end;
end;


procedure TFABM_Preventa.Prorrateo();
var
  totalProds, totalFP, coefic, acum: Double;
  cant, i: Integer;
begin
  //Cant Productos
  cant:= CD_DetalleFactura.RecordCount;
  totalProds:= acumulado;
  totalFP:= importeVenta;
  acum:= 0;
  coefic:= (totalFP / totalProds);

  if (totalFP > 0) then
  begin
    CD_DetalleFactura.First;
    i:= 1;
    while not (CD_DetalleFactura.Eof) do
    begin
      CD_DetalleFactura.Edit;
          //Si es el último
      if (i = cant) then
      begin
        CD_DetalleFacturaIMPORTE_VENTA.AsFloat:= totalFP - acum;
      end
      else
        CD_DetalleFacturaIMPORTE_VENTA.AsFloat:= CD_DetalleFacturaIMPORTE_FINAL.AsFloat * coefic;

      acum:= acum + CD_DetalleFacturaIMPORTE_VENTA.AsFloat;
      CD_DetalleFactura.Post;
      CD_DetalleFactura.Next;
      i:= i + 1;
    end;
  end
end;


procedure TFABM_Preventa.edDescTotalExit(Sender: TObject);
begin
  recalcularBoleta();
end;


procedure TFABM_Preventa.recalcularBoleta;
begin
  CD_ComprobanteIMPORTE_TOTAL.AsFloat:= acumulado;
  CD_ComprobanteIMPORTE_DESCUENTO.AsFloat:= CD_ComprobanteIMPORTE_TOTAL.AsFloat * CD_ComprobantePORC_DESCUENTO.AsFloat / 100;

  CD_ComprobanteSALDO.AsFloat:= 0;
  CD_ComprobanteIMPORTE_VENTA.AsFloat:= CD_ComprobanteIMPORTE_TOTAL.AsFloat - CD_ComprobanteIMPORTE_DESCUENTO.AsFloat;
  CD_ComprobanteIMPORTE_IVA.AsFloat:= CD_ComprobanteIMPORTE_VENTA.AsFloat * CD_ComprobantePORC_IVA.AsFloat;
  lblVtaTotal.Caption:= FormatFloat('$ ##,###,##0.00 ', CD_ComprobanteIMPORTE_VENTA.AsFloat);
  lblVtaIVA.Caption:= FormatFloat('$ ##,###,##0.00 ', CD_ComprobanteIMPORTE_IVA.AsFloat);
  lblVtaDesc.Caption:= FormatFloat('$ ##,###,##0.00 ', CD_ComprobanteIMPORTE_DESCUENTO.AsFloat);
  lblVtaSubtotal.Caption:= FormatFloat('$ ##,###,##0.00 ', CD_ComprobanteIMPORTE_TOTAL.AsFloat - CD_ComprobanteIMPORTE_IVA.AsFloat);
  importeVenta:= CD_ComprobanteIMPORTE_VENTA.AsFloat;
end;


procedure TFABM_Preventa.btnConfirmarVentaClick(Sender: TObject);
begin
  guardarComprobante()
end;


function TFABM_Preventa.validarBoleta: Boolean;
begin
  Result:= True;

  if (acumulado <= 0) then
  begin
    Application.MessageBox('El monto final debe ser superior a $ 0.00, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    result:= false;
    exit;
  end;

  if (cliente < 0) then
  begin
    Application.MessageBox('Debe seleccionar un Cliente, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    result:= false;
    exit;
  end;

  if (IdVendedor < 0) then
  begin
    Application.MessageBox('Debe seleccionar un Vendedor, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    result:= false;
    exit;
  end;

  if CD_DetalleFactura.IsEmpty then
  begin
    Application.MessageBox('Debe cargar al menos un Producto, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    result:= false;
    exit;
  end;

  if CD_ComprobanteID_TIPO_IVA.IsNull then
  begin
    Application.MessageBox('Debe cargar el tipo de IVA, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    result:= false;
    exit;
  end;

  if ((ZQ_TipoIVAVERIFICA_CUIT.AsString = 'S') and (not EsCUITValido(CD_Comprobantepers_cuit.AsString))) then
  begin
    Application.MessageBox('El CUIT/CUIL del cliente seleccionado es incorrecto, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    result:= false;
    exit;
  end;
end;


procedure TFABM_Preventa.cancelarProducto;
begin
  dm.EKModelo.abrir(ZQ_DetalleProd);
  Cliente:= -1;
  descCliente:= 0;
  ClienteIVA:= 0;
  IDClienteIVA:= 0;
  CD_DetalleFactura.EmptyDataSet;
  crearComprobante();
  lblCantProductos.Caption:= 'Cantidad Productos/Servicios: ' + inttostr(CD_DetalleFactura.RecordCount);
  cargarClientePorDefecto();
  modoLecturaProd();
  lblTotAPagar.Caption:= 'Total Venta: ' + FormatFloat('$ ##,###,##0.00 ', 0);
end;


function TFABM_Preventa.completarCodBar(cod: string): string;
begin
  Result:= StringOfChar('0', LONG_COD_BARRAS - Length(cod)) + cod;
end;


procedure TFABM_Preventa.edCantidadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not (dm.EKUsrLogin.PermisoAccion('CAJA_MODIF_IMPORTE')) then
  begin
    edImporteFinalKeyDown(Sender, Key, Shift);
  end
end;


procedure TFABM_Preventa.edPorcDctoTotalExit(Sender: TObject);
begin
  recalcularBoleta();
end;


procedure TFABM_Preventa.buscarCuenta(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  id_cuenta_fpago: integer;
begin
  if key = 118 then
  begin
    if EKListadoCuenta.Buscar then
    begin
      if EKListadoCuenta.Resultado <> '' then
      begin
        id_cuenta_fpago:= StrToInt(EKListadoCuenta.Resultado);
        ZQ_Cuentas.Locate('ID_CUENTA', id_cuenta_fpago, []);
        ZQ_Comprobante_FormaPagoCUENTA_INGRESO.AsInteger:= ZQ_CuentasID_CUENTA.AsInteger;
        ZQ_Comprobante_FormaPagoID_TIPO_FORMAPAG.AsInteger:= ZQ_CuentasMEDIO_DEFECTO.AsInteger;
      end;
    end;
  end;
end;


procedure TFABM_Preventa.buscarFormaPago(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  id_cuenta_fpago: integer;
begin
  if key = 118 then
  begin
    id_cuenta_fpago:= ZQ_Comprobante_FormaPagoCUENTA_INGRESO.AsInteger;
    EKListadoMedio.SQL.Clear;
    EKListadoMedio.SQL.Add(Format('select tipo.* ' +
      'from tipo_formapago tipo ' +
      'left join cuenta_tipo_formapago ctfp on (tipo.id_tipo_formapago = ctfp.id_tipo_formapago) ' +
      'where tipo.baja = %s ' +
      '  and ctfp.id_cuenta = %d ' +
      'order by tipo.descripcion',
      [QuotedStr('N'), id_cuenta_fpago]));

    if EKListadoMedio.Buscar then
    begin
      if EKListadoMedio.Resultado <> '' then
      begin
        ZQ_Comprobante_FormaPagoID_TIPO_FORMAPAG.AsInteger:= StrToInt(EKListadoMedio.Resultado);
      end;
    end;
  end;
end;


procedure TFABM_Preventa.btFPCancelarClick(Sender: TObject);
begin
  ZQ_Comprobante_FormaPago.RevertRecord;
  lblSeniaTotal.Caption:= FormatFloat('$ ##,###,##0.00 ', 0);

  PABM_FormaPago.Visible:= False;
  PConfirmarVenta.Enabled:= not (PABM_FormaPago.Visible);
end;


procedure TFABM_Preventa.btFPAceptarClick(Sender: TObject);
begin
  if (ZQ_Comprobante_FormaPagoIMPORTE.IsNull) or (ZQ_Comprobante_FormaPagoCUENTA_INGRESO.IsNull) or (ZQ_Comprobante_FormaPagoID_TIPO_FORMAPAG.IsNull) then
  begin
    ShowMessage('Falta cargar alguno de los datos, verifique');
    exit;
  end;

  lblSeniaTotal.Caption:= FormatFloat('$ ##,###,##0.00 ', ZQ_Comprobante_FormaPagoIMPORTE.AsFloat);

  PABM_FormaPago.Visible:= False;
  PConfirmarVenta.Enabled:= not (PABM_FormaPago.Visible);
  btnConfirmarVenta.SetFocus;
end;


procedure TFABM_Preventa.btnCargarSeniaClick(Sender: TObject);
begin
  if cliente <= 0 then
  begin
    ShowMessage('Para cargar la seña necesita asociarle un cliente distino de Consumidor Final al comprobante, verifique');
    exit;
  end;

  dm.centrarPanel(FABM_Preventa, PABM_FormaPago);
  PABM_FormaPago.Visible:= true;
  PConfirmarVenta.Enabled:= not (PABM_FormaPago.Visible);
  PABM_FormaPago.BringToFront;
  Application.ProcessMessages;
  edCodCuenta.SetFocus;

  if ZQ_Comprobante_FormaPago.IsEmpty then
  begin
    ZQ_Comprobante_FormaPago.Open;
    ZQ_Comprobante_FormaPago.Append;
  end
  else
    ZQ_Comprobante_FormaPago.edit;
end;


procedure TFABM_Preventa.ABuscarExecute(Sender: TObject);
begin
  if btBuscProd.Enabled then
    btBuscProd.Click;
end;


procedure TFABM_Preventa.ANuevoExecute(Sender: TObject);
begin
  if BtBuscarProducto.Enabled then
    BtBuscarProducto.Click;
end;


procedure TFABM_Preventa.AClienteExecute(Sender: TObject);
begin
  if bt_BuscarCliente.Enabled then
    bt_BuscarCliente.Click;
end;


procedure TFABM_Preventa.ATipoIVAExecute(Sender: TObject);
begin
  if btIVA.Enabled then
    btIVA.Click;
end;


procedure TFABM_Preventa.AVendedorExecute(Sender: TObject);
begin
  if BtVendedor.Enabled then
    BtVendedor.Click;
end;

procedure TFABM_Preventa.ANuevoProdCBarraExecute(Sender: TObject);
begin
  if BtAgregarPago.Enabled then
    BtAgregarPago.Click;
end;


procedure TFABM_Preventa.AGuardarExecute(Sender: TObject);
begin
  if BtAceptarPago.Enabled then
    BtAceptarPago.Click;
end;


procedure TFABM_Preventa.ACancelarExecute(Sender: TObject);
begin
  if BtCancelarPago.Enabled then
    BtCancelarPago.Click;
end;


procedure TFABM_Preventa.ASalirExecute(Sender: TObject);
begin
  if btsalir.Enabled then
    btsalir.Click;
end;


procedure TFABM_Preventa.ACargarSeniaExecute(Sender: TObject);
begin
  if PConfirmarVenta.Visible and (not PABM_FormaPago.Visible) then
    btnCargarSenia.Click;
end;


end.

