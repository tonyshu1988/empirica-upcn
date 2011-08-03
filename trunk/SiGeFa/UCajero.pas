unit UCajero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Grids, DBGrids,
  EKEdit,UBuscarProductoStock, Mask, Provider, DBClient, ActnList,
  XPStyleActnCtrls, ActnMan, EKListadoSQL, ISDbSuma,UBuscarPersona, Buttons,
  EKDbSuma, ZStoredProcedure;

type
  TFCajero = class(TForm)
    PanelContenedor: TPanel;
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
    DS_Productos: TDataSource;
    PanelDetalleProducto: TPanel;
    PanelContenedorDerecha: TPanel;
    PanelFormaPago: TPanel;
    PanelListadoProducto: TPanel;
    PanelCabeceraFactura: TPanel;
    edImagen: TDBImage;
    DBGridListadoProductos: TDBGrid;
    PieGrilla: TPanel;
    DBGridFormaPago: TDBGrid;
    btQuitarProducto: TButton;
    PieGrillaFormaPago: TPanel;
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
    DS_ComprobanteDetalle: TDataSource;
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
    DS_Comprobante_FormaPago: TDataSource;
    dxBarABM: TdxBarManager;
    BtBuscarProducto: TdxBarLargeButton;
    BtModificar: TdxBarLargeButton;
    BtEliminar: TdxBarLargeButton;
    BtAgregarPago: TdxBarLargeButton;
    BtAceptarPago: TdxBarLargeButton;
    BtCancelarPago: TdxBarLargeButton;
    BtDuplicar: TdxBarLargeButton;
    Bt_Cierre_Z: TdxBarLargeButton;
    btBajar: TdxBarLargeButton;
    btsalir: TdxBarLargeButton;
    bt_accion: TdxBarControlContainerItem;
    bt_motivo_baja: TdxBarControlContainerItem;
    bt_VerDetalle: TdxBarLargeButton;
    bt_BuscarCliente: TdxBarLargeButton;
    Bt_Detalle: TdxBarLargeButton;
    Bt_Imprimir_Arqueo: TdxBarLargeButton;
    Bt_Imprimir_convenio: TdxBarLargeButton;
    BtLeerCodigo: TdxBarLargeButton;
    btIVA: TdxBarLargeButton;
    btLiquidar: TdxBarLargeButton;
    Bt_imprimir_listadoFP: TdxBarLargeButton;
    bt_cierre_X: TdxBarLargeButton;
    GrupoBuscarCliente: TdxBarGroup;
    GrupoLeerCodigo: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelStatusBar: TPanel;
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
    DS_Comprobante: TDataSource;
    codBarras: TEdit;
    CD_DetalleFactura: TClientDataSet;
    DS_DetalleFactura: TDataSource;
    DataSetProvider1: TDataSetProvider;
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
    EKListadoProducto: TEKListadoSQL;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    ATipoIVA: TAction;
    ACliente: TAction;
    APago: TAction;
    ASalir: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    ZQ_ProductosIMAGEN: TBlobField;
    btnBorrarPago: TButton;
    CD_Fpago: TClientDataSet;
    DSFpago: TDataSource;
    CD_FpagoID_COMPROB_FP: TIntegerField;
    CD_FpagoID_COMPROBANTE: TIntegerField;
    CD_FpagoID_TIPO_FORMAPAG: TIntegerField;
    CD_FpagoMDCP_FECHA: TDateField;
    CD_FpagoMDCP_BANCO: TStringField;
    CD_FpagoMDCP_CHEQUE: TStringField;
    CD_FpagoIMPORTE: TFloatField;
    CD_FpagoCONCILIADO: TDateField;
    CD_FpagoCUENTA_INGRESO: TIntegerField;
    CD_FpagoCUENTA_EGRESO: TIntegerField;
    Label11: TLabel;
    Label10: TLabel;
    lblCantProductos: TLabel;
    Label1: TLabel;
    Label19: TLabel;
    Importe: TEdit;
    Label20: TLabel;
    ImporteFpago: TEdit;
    ZQ_FormasPago: TZQuery;       
    ZQ_FormasPagoID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_FormasPagoDESCRIPCION: TStringField;
    ZQ_FormasPagoBAJA: TStringField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    edCantidad: TEKEdit;
    LeerCodBar: TLabel;
    Label9: TLabel;
    CD_FpagomedioPago: TStringField;
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
    Label12: TLabel;
    ZQ_PersonasDESCUENTO_ESPECIAL: TFloatField;
    ZQ_PersonasCODIGO_CORTO: TIntegerField;
    ZQ_PersonasPROV: TStringField;
    ZQ_PersonasTDOC: TStringField;
    ZQ_PersonasTIVA: TStringField;
    DataSource1: TDataSource;
    DBText1: TDBText;
    DS_Personas: TDataSource;
    DBText2: TDBText;
    DBText4: TDBText;
    DBText6: TDBText;
    ZQ_Comprobantepers_nombre: TStringField;
    ZQ_Comprobantepers_direccion: TStringField;
    ZQ_Comprobantepers_cuit: TStringField;
    ZQ_Comprobantepers_codigo: TStringField;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    btVendedor: TBitBtn;
    Label17: TLabel;
    DBText3: TDBText;
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
    Label18: TLabel;
    DBText5: TDBText;
    CD_Comprobantepers_tel: TStringField;
    CD_Comprobantepers_direccion: TStringField;
    CD_DetalleFacturaproducto: TStringField;
    ZQ_ProductosDETALLE_PROD: TStringField;
    DBText7: TDBText;
    DBText8: TDBText;
    ZQ_TipoIVA: TZQuery;
    ZQ_TipoIVAID_TIPO_IVA: TIntegerField;
    ZQ_TipoIVANOMBRE_TIPO_IVA: TStringField;
    ZQ_TipoIVAABREVIATURA: TStringField;
    ZQ_TipoIVADISCRIMINAR: TStringField;
    ZQ_TipoIVALETRA: TStringField;
    ZQ_TipoIVAFISCAL: TStringField;
    CD_ComprobanteID_TIPO_IVA: TIntegerField;
    ZQ_ComprobantePUNTO_VENTA: TIntegerField;
    ZQ_ComprobanteNUMERO_CPB: TIntegerField;
    ZQ_ComprobanteFECHA_ANULADO: TDateField;
    ZQ_ComprobanteID_TIPO_IVA: TIntegerField;
    CD_ComprobantetipoIVA: TStringField;
    EKListadoIVA: TEKListadoSQL;
    EKDbSuma1: TEKDbSuma;
    EKDbSuma2: TEKDbSuma;
    EKListadoClientes: TEKListadoSQL;
    Label21: TLabel;
    DBText9: TDBText;
    ZQ_PersonasPORCDESC: TFloatField;
    CD_Comprobantepers_desc: TStringField;
    ZSP_Comprobante: TZStoredProc;
    ZSP_ComprobanteID: TIntegerField;
    Label22: TLabel;
    edImporte: TEKEdit;
    Label23: TLabel;
    edDesc: TEKEdit;
    Label24: TLabel;
    Label25: TLabel;
    EKListadoVendedores: TEKListadoSQL;
    CD_ComprobantenVendedor: TStringField;
    EK_ListadoMedCobroPago: TEKListadoSQL;
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
    lblSinStock: TLabel;
    ZQ_ProductosSTOCK_ACTUAL: TFloatField;
    Label26: TLabel;
    DBEdit8: TDBEdit;
    procedure btsalirClick(Sender: TObject);
    procedure BtBuscarProductoClick(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    function agregar(detalle: string;prod:integer):Boolean;
    procedure BtAgregarPagoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btQuitarProductoClick(Sender: TObject);
    procedure btnBorrarPagoClick(Sender: TObject);
    procedure DBGridFormaPagoColEnter(Sender: TObject);
    procedure codBarrasEnter(Sender: TObject);
    procedure LimpiarCodigo;
    procedure codBarrasExit(Sender: TObject);
    procedure codBarrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IdentificarCodigo();
    procedure LeerCodigo();
    procedure BtLeerCodigoClick(Sender: TObject);
    procedure bt_BuscarClienteClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtAceptarPagoClick(Sender: TObject);
    procedure BtCancelarPagoClick(Sender: TObject);
    procedure crearComprobante();
    procedure btIVAClick(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure ASalirExecute(Sender: TObject);
    procedure ATipoIVAExecute(Sender: TObject);
    procedure AClienteExecute(Sender: TObject);
    procedure APagoExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure EKDbSuma1SumListChanged(Sender: TObject);
    procedure EKDbSuma2SumListChanged(Sender: TObject);
    function validarFPago():Boolean;
    procedure grabarPagos();
    procedure grabarDetallesFactura();
    procedure edCantidadExit(Sender: TObject);
    procedure calcularMonto();
    procedure btVendedorClick(Sender: TObject);
    procedure edImporteExit(Sender: TObject);
    procedure DBGridFormaPagoColExit(Sender: TObject);
    procedure DBGridFormaPagoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function ProductoYaCargado(id:Integer):Boolean ;
  private
    vsel: TFBuscarProductoStock;
    procedure OnSeleccionar;
    { Private declarations }
  public


    { Public declarations }
  end;

var
  FCajero: TFCajero;
  importeacob, punitoriosacob, acumulado, acumFpago: double;
  IdProd:Integer;
  cliente,IdVendedor,ClienteIVA,cajero:Integer;
  descCliente:double;
const
  abmComprobante='ABM Factura-Cajero';

implementation

uses UDM, UPrincipal,strutils, EKModelo, Math;

{$R *.dfm}


procedure TFCajero.FormCreate(Sender: TObject);
begin

  CurrencyDecimals := 2;
  DecimalSeparator := '.';
  ThousandSeparator := ',';
  DateSeparator := '/';
  ShortDateFormat := 'dd/MM/yyyy';
  dm.ZQ_Configuracion.Close;
  dm.ZQ_Configuracion.Open;
  CD_Comprobante.CreateDataSet;
  CD_DetalleFactura.CreateDataSet;
  CD_Fpago.CreateDataSet;
  dm.EKModelo.abrir(ZQ_FormasPago);
  dm.EKModelo.abrir(ZQ_DetalleProd);
  Cliente:=-1;
  IdVendedor:=-1;
  descCliente:=0;

  crearComprobante();

end;

procedure TFCajero.btsalirClick(Sender: TObject);
begin
close;
end;

procedure TFCajero.BtBuscarProductoClick(Sender: TObject);
begin
if not Assigned(vsel) then
  vsel:= TFBuscarProductoStock.Create(nil);
  vsel.usaCajero:='S';
  vsel.OnSeleccionar := OnSeleccionar;
  vsel.ShowModal;
  vsel.usaCajero:='N';
end;

procedure TFCajero.OnSeleccionar;
begin
 if not vsel.ZQ_Stock.IsEmpty then
  begin
      if not(ProductoYaCargado(vsel.ZQ_StockID_PRODUCTO.AsInteger)) then
      begin
        codBarras.Text:=vsel.ZQ_StockID_PRODUCTO.AsString;
        IdentificarCodigo;
        edCantidad.SetFocus;
      end;
    vsel.ZQ_Stock.Filtered:=False;
    vsel.Close;
  end;
end;

function TFCajero.agregar(detalle: string;prod:integer):Boolean;
begin
  if not(ProductoYaCargado(prod)) then
    begin
        calcularMonto();

        if edImporte.AsFloat<=0 then
         begin
           Application.MessageBox('El importe ingresado es incorrecto.', 'Atención');
           edImporte.SetFocus;
           Result:=False;
           exit;
         end;
        CD_DetalleFactura.Append;
        CD_DetalleFacturaID_PRODUCTO.AsInteger:=prod;
        CD_DetalleFacturaDETALLE.AsString:=detalle;
        CD_DetalleFacturaCANTIDAD.AsInteger:=edCantidad.AsInteger;
        CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat:=ZQ_ProductosPRECIO_VENTA.AsFloat;
        CD_DetalleFacturaPORC_DESCUENTO.AsFloat:=(edDesc.AsFloat)/100;
        CD_DetalleFacturaIMPUESTO_INTERNO.AsFloat:=00;
        CD_DetalleFacturaPORC_IVA.AsFloat:=00;
        CD_DetalleFacturaBASE_IMPONIBLE.AsFloat:=(CD_DetalleFacturaCANTIDAD.AsInteger*CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat);

        CD_DetalleFacturaIMPORTE_FINAL.AsFloat:=edImporte.AsFloat;


        CD_DetalleFactura.Post;

        lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
        Result:=True;
    end
end;
procedure TFCajero.ABuscarExecute(Sender: TObject);
begin
  if EKListadoProducto.Buscar then
   begin
     codBarras.Text:=ZQ_ProductosCODIGO_BARRA.AsString;
     edCantidad.SetFocus;
   end
end;

procedure TFCajero.BtAgregarPagoClick(Sender: TObject);
begin
if cliente<0 then
 begin
   Application.MessageBox('Debe seleccionar el Cliente.', 'Atención');
   bt_BuscarCliente.Click;
   exit;
 end;

if IdVendedor<0 then
 begin
   Application.MessageBox('Debe seleccionar el Vendedor.', 'Atención');
   btVendedor.Click;
   exit;
 end;



if ((not(ZQ_Productos.IsEmpty))and(edCantidad.AsInteger>0)) then
 if (ZQ_ProductosSTOCK_ACTUAL.AsFloat>=edCantidad.AsInteger) then
   begin
    if agregar('',ZQ_ProductosID_PRODUCTO.AsInteger) then
     begin
      LimpiarCodigo;
      codBarras.SetFocus;
      BtAgregarPago.Enabled := true;
      BtAceptarPago.Enabled := true;
      BtCancelarPago.Enabled := true;
     end
   end
  else
    begin
    Application.MessageBox('El stock actual del producto es insuficiente para la cantidad ingresada.', 'Atención');
    edCantidad.SetFocus;
    exit;
 end;
end;


procedure TFCajero.btQuitarProductoClick(Sender: TObject);
begin
if not(CD_DetalleFactura.IsEmpty) then
  begin
  CD_DetalleFactura.Delete;
  lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
  end;
  codBarras.SetFocus;
end;

procedure TFCajero.btnBorrarPagoClick(Sender: TObject);
begin
if not(CD_Fpago.IsEmpty) then
  CD_Fpago.Delete;
codBarras.SetFocus;
end;

procedure TFCajero.DBGridFormaPagoColEnter(Sender: TObject);
begin
 if (DBGridFormaPago.SelectedIndex = 1) then
    if CD_FpagoID_TIPO_FORMAPAG.IsNull then
    begin
//      keybd_event(VK_F2, 0, 0, 0);
//      keybd_event(VK_F2, 0, KEYEVENTF_KEYUP, 0);
//      keybd_event(VK_MENU, 0, 0, 0);
//      keybd_event(VK_DOWN, 0, 0, 0);
//      keybd_event(VK_DOWN, 0, KEYEVENTF_KEYUP, 0);
//      keybd_event(VK_MENU, 0, KEYEVENTF_KEYUP, 0);

    end;

  if (DBGridFormaPago.SelectedIndex = 2) then
    if (CD_FpagoID_TIPO_FORMAPAG.AsInteger = 1) then
      DBGridFormaPago.SelectedIndex := 5;
end;

procedure TFCajero.codBarrasEnter(Sender: TObject);
begin
  LeerCodBar.Visible := true;
  codBarras.Text := '';
  LimpiarCodigo;
end;

procedure TFCajero.LimpiarCodigo;
begin

  ZQ_Productos.Close;
  importeacob := 0;
  edCantidad.AsInteger := 1;
  edDesc.AsFloat:=descCliente*100;
  edImporte.AsFloat:=0;
  codBarras.SetFocus;
  lblSinStock.Visible:=false;
end;

procedure TFCajero.codBarrasExit(Sender: TObject);
begin
  LeerCodBar.Visible := false;
end;

procedure TFCajero.codBarrasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    IdentificarCodigo;
end;

procedure TFCajero.IdentificarCodigo();
var
  cod, num: string;
begin

  cod := codBarras.Text;

  // POR NRO DE PRESUPUESTO (EJ. P9494)
  if UpperCase(MidStr(Cod, 1, 1)) = 'P' then
  begin
//    CargarPresup(strtoint(MidStr(Cod, 2, Length(cod) - 1)));
  end
  else
    // POR NUMERO DE ProductoDetalle
    if (Length(cod) <= LONG_CODIGO) then
      begin
        //LeerCodigoID(strtoint(Cod));
        LeerCodigo
      end
    else
      // POR CODIGO DE BARRAS PRODUCTO
      if (Length(cod) <= LONG_COD_BARRAS) then
      begin
        // Verificar Sucursal (Primeros 3 digitos del codigo de barra)
    //    codSuc := UpperCase(MidStr(Cod, 1, 3));
    //    if StrToInt(codmuni) = StrToInt(org_id) then
    //      org_id:=''
    //    else
    //
    //      Org_msg.Visible:=true;
        LeerCodigo;
      end
      else
       if (Length(cod) > LONG_COD_BARRAS) then
        begin
          Application.MessageBox('Longitud de código incorrecta', 'Error');
          LimpiarCodigo;
          codBarras.Clear;
          exit;
        end;
end;

procedure TFCajero.LeerCodigo();
var
  f1, f2, fecha: tdate;
  punit: double;
  diasm: integer;
begin
  

  lblSinStock.Visible:=False;

  LimpiarCodigo;
  IdProd:=-1;
  try
    IdProd:= strToInt(codBarras.Text);
  except
    begin
      Application.MessageBox('Código incorrecto', 'Error');
      LimpiarCodigo;
      codBarras.Clear;
      exit;
    end
  end;
  //DigVerif:= MidStr(codBarras.Text, StrLen(PChar(codBarras.Text)), 1);

  ZQ_Productos.Close;
  ZQ_Productos.ParamByName('prod').AsInteger:=IdProd;
  ZQ_Productos.Open;

  if not(ZQ_Productos.IsEmpty) then
   begin
      lblSinStock.Visible:=ZQ_ProductosSTOCK_ACTUAL.AsFloat <= 0;
      edDesc.AsFloat:=(ZQ_ProductosCOEF_DESCUENTO.AsFloat+descCliente)*100;
      calcularMonto();
   end

end;



procedure TFCajero.BtLeerCodigoClick(Sender: TObject);
begin
LimpiarCodigo;
end;

procedure TFCajero.bt_BuscarClienteClick(Sender: TObject);
var
  sql:string;
begin
  sql:= Format('select per.id_persona, per.nombre||'+
               ' COALESCE('' | Nro.Doc: '' || per.numero_doc,'''')||'+
               ' COALESCE('' | CUIT/CUIL: '' || per.cuit_cuil,'''') As busqueda'+
               ' from persona per'+
               ' left join persona_relacion rel on (per.id_persona = rel.id_persona)'+
               ' where per.baja = %s '+
               ' and rel.id_relacion = %d '+
               ' order by per.nombre', [QuotedStr('N'), RELACION_CLIENTE]);

  EKListadoClientes.SQL.Text:= sql;

  if EKListadoClientes.Buscar then
    if (EKListadoClientes.Resultado <> '') then
    begin
      Cliente:=StrToInt(EKListadoClientes.Resultado);
      ClienteIVA:=ZQ_PersonasID_TIPO_IVA.AsInteger;
      CD_ComprobanteID_CLIENTE.AsInteger:=Cliente;
      CD_ComprobanteID_TIPO_IVA.AsInteger:=ClienteIVA;

      descCliente:= 0;
      if (not ZQ_PersonasDESCUENTO_ESPECIAL.IsNull) or (ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat <> 0) then
          if (application.MessageBox(pchar('El cliente seleccionado posee un descuento especial del '+FloatToStr(ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat*100)+'%.'+
              #13+'Desea aplicar este descuento para todos los productos que se carguen?'), 'Descuento Cliente', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
          begin
            descCliente:= ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat;
            edDesc.AsFloat:=(ZQ_ProductosCOEF_DESCUENTO.AsFloat+descCliente)*100;
            CD_ComprobantePORC_DESCUENTO.AsFloat:=(edDesc.AsFloat)/100;
          end;
    end
end;

procedure TFCajero.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose:= FPrincipal.cerrar_ventana(abmComprobante);
end;

procedure TFCajero.BtAceptarPagoClick(Sender: TObject);
begin

//Hacer las validaciones correspondientes (por ej formas de pago=acumulado)
if not(validarFPago()) then exit;

if dm.EKModelo.iniciar_transaccion(abmComprobante,[ZQ_Comprobante,ZQ_ComprobanteDetalle,ZQ_Comprobante_FormaPago]) then
   begin
      CD_ComprobanteIMPORTE_DESCUENTO.AsFloat:=CD_ComprobanteBASE_IMPONIBLE.AsFloat*CD_ComprobantePORC_DESCUENTO.AsFloat;
      CD_ComprobanteIMPORTE_IVA.AsFloat:=CD_ComprobanteBASE_IMPONIBLE.AsFloat*CD_ComprobantePORC_IVA.AsFloat;
      CD_ComprobanteIMPORTE_TOTAL.AsFloat:=CD_ComprobanteBASE_IMPONIBLE.AsFloat+CD_ComprobanteIMPORTE_IVA.AsFloat;
      CD_ComprobanteSALDO.AsFloat:=CD_ComprobanteIMPORTE_TOTAL.AsFloat;
      CD_Comprobante.Post;

      ZSP_Comprobante.Close;
      ZSP_Comprobante.Open;

      ZQ_Comprobante.Append;
      ZQ_ComprobanteID_COMPROBANTE.AsInteger:=ZSP_ComprobanteID.AsInteger;
      ZQ_ComprobanteID_SUCURSAL.Value:=CD_ComprobanteID_SUCURSAL.Value;
      ZQ_ComprobanteID_PROVEEDOR.Clear;
      ZQ_ComprobanteID_CLIENTE.AsInteger:=CD_ComprobanteID_CLIENTE.AsInteger;
      ZQ_ComprobanteID_TIPO_CPB.value:=CD_ComprobanteID_TIPO_CPB.Value;
      ZQ_ComprobanteID_VENDEDOR.Value:=CD_ComprobanteID_VENDEDOR.Value;
      ZQ_ComprobanteID_COMP_ESTADO.Value:=CD_ComprobanteID_COMP_ESTADO.Value;;
      ZQ_ComprobanteCODIGO.Value:=CD_ComprobanteCODIGO.Value;
      ZQ_ComprobanteFECHA.AsDateTime:=CD_ComprobanteFECHA.AsDateTime;
      ZQ_ComprobanteOBSERVACION.Value:=CD_ComprobanteOBSERVACION.Value;
      ZQ_ComprobanteBASE_IMPONIBLE.Value:=CD_ComprobanteBASE_IMPONIBLE.Value;
      ZQ_ComprobanteSALDO.AsFloat:=CD_ComprobanteSALDO.Value;
      ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:=CD_ComprobanteIMPORTE_TOTAL.Value;
      ZQ_ComprobantePORC_IVA.AsFloat:=CD_ComprobantePORC_IVA.Value;
      ZQ_ComprobanteIMPORTE_IVA.AsFloat:=CD_ComprobanteIMPORTE_IVA.AsFloat;
      ZQ_ComprobantePORC_DESCUENTO.AsFloat:=CD_ComprobantePORC_DESCUENTO.AsFloat;
      ZQ_ComprobanteIMPORTE_DESCUENTO.AsFloat:=CD_ComprobanteIMPORTE_DESCUENTO.AsFloat;
      ZQ_ComprobanteENCABEZADO.AsString:=CD_ComprobanteENCABEZADO.AsString;
      ZQ_ComprobantePIE.AsString:=CD_ComprobantePIE.AsString;
      ZQ_ComprobanteID_TIPO_IVA.AsInteger:=CD_ComprobanteID_TIPO_IVA.AsInteger;
      ZQ_ComprobanteFECHA_COBRADA.Clear;
      ZQ_ComprobanteFECHA_ENVIADA.Clear;
      ZQ_ComprobanteFECHA_IMPRESA.Clear;
      ZQ_ComprobanteFECHA_VENCIMIENTO.Clear;
      ZQ_Comprobante.Post;

      grabarDetallesFactura();
      grabarPagos();
   end;
   if not(dm.EKModelo.finalizar_transaccion(abmComprobante)) then
     begin
      dm.EKModelo.cancelar_transaccion(abmComprobante);
      Application.MessageBox('No se pudo crear el Comprobante', 'Atención');
     end;

      CD_DetalleFactura.EmptyDataSet;
      CD_Fpago.EmptyDataSet;
      LimpiarCodigo();
      crearComprobante();
      CD_ComprobanteID_CLIENTE.AsInteger:=cliente;
      CD_ComprobanteID_TIPO_IVA.AsInteger:=ClienteIVA;
      BtAgregarPago.Enabled := true;
      BtAceptarPago.Enabled := false;
      BtCancelarPago.Enabled := false;

end;

procedure TFCajero.BtCancelarPagoClick(Sender: TObject);
begin

  CD_DetalleFactura.EmptyDataSet;
  CD_Fpago.EmptyDataSet;

  Cliente:=-1;
  descCliente:=0;
  LimpiarCodigo();
  crearComprobante();

  BtAgregarPago.Enabled := true;
  BtAceptarPago.Enabled := false;
  BtCancelarPago.Enabled := false;

  ZQ_Personas.Close;
  dm.EKModelo.abrir(ZQ_Personas);
end;

procedure TFCajero.crearComprobante;
begin

  importeacob:=0;
  punitoriosacob:=0;
  acumulado:=0;
  acumFpago:=0;
  IdProd:=-1;
  edCantidad.AsInteger:=1;
  edDesc.AsFloat:=(descCliente*100);
  edImporte.AsFloat:=0;
  lblSinStock.Visible:=False;
  EKDbSuma1.SumCollection[0].SumValue := 0;
  EKDbSuma2.SumCollection[0].SumValue := 0;
  importe.Text := '';
  acumFpago := 0;
  ImporteFpago.Text := '';

  CD_Comprobante.EmptyDataSet;
  CD_Comprobante.Append;
  CD_ComprobanteID_SUCURSAL.AsInteger:=SUCURSAL_LOGUEO;
  CD_ComprobanteID_CLIENTE.AsInteger:=cliente;
  CD_ComprobanteID_TIPO_CPB.AsInteger:=11; //FACTURA
  CD_ComprobanteID_VENDEDOR.AsInteger:=IdVendedor;//Aca va el cajero, buscar el logueado
  CD_ComprobanteID_COMP_ESTADO.AsInteger:=0;//PENDIENTE
  CD_ComprobanteCODIGO.AsString:='';
  CD_ComprobanteFECHA.AsDateTime:=dm.EKModelo.Fecha();
  CD_ComprobanteOBSERVACION.AsString:='';
  CD_ComprobanteBASE_IMPONIBLE.AsFloat:=0;
  CD_ComprobanteSALDO.AsFloat:=0;
  CD_ComprobanteIMPORTE_TOTAL.AsFloat:=0;
  CD_ComprobantePORC_IVA.AsFloat:=0;
  CD_ComprobanteIMPORTE_IVA.AsInteger:=0;
  CD_ComprobantePORC_DESCUENTO.AsFloat:=descCliente;
  CD_ComprobanteIMPORTE_DESCUENTO.AsInteger:=0;
  CD_ComprobanteENCABEZADO.AsString:='';
  CD_ComprobantePIE.AsString:='';
  CD_ComprobanteFECHA_COBRADA.Clear;
  CD_ComprobanteFECHA_ENVIADA.Clear;
  CD_ComprobanteFECHA_IMPRESA.Clear;
  CD_ComprobanteFECHA_VENCIMIENTO.Clear;
  lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
end;



procedure TFCajero.btIVAClick(Sender: TObject);
begin
if (CD_Comprobante.State=dsInsert) then
  if EKListadoIVA.Buscar then
    CD_ComprobanteID_TIPO_IVA.AsInteger:=StrToInt(EKListadoIVA.Resultado);
end;

procedure TFCajero.ANuevoExecute(Sender: TObject);
begin
BtBuscarProducto.Click;
end;

procedure TFCajero.ASalirExecute(Sender: TObject);
begin
btsalir.Click;
end;

procedure TFCajero.ATipoIVAExecute(Sender: TObject);
begin
btIVA.Click;
end;

procedure TFCajero.AClienteExecute(Sender: TObject);
begin
bt_BuscarCliente.Click;
end;

procedure TFCajero.APagoExecute(Sender: TObject);
begin
BtAgregarPago.Click;
end;

procedure TFCajero.AGuardarExecute(Sender: TObject);
begin
BtAceptarPago.Click;
end;

procedure TFCajero.ACancelarExecute(Sender: TObject);
begin
BtCancelarPago.Click;
end;

procedure TFCajero.EKDbSuma1SumListChanged(Sender: TObject);
begin
  acumulado := EKDbSuma1.SumCollection[0].SumValue;
  importe.Text := FormatFloat('$ ##,###,##0.00 ', acumulado);
  
  if (CD_Comprobante.state=dsInsert) then
    CD_ComprobanteBASE_IMPONIBLE.AsFloat:=acumulado;
end;

procedure TFCajero.EKDbSuma2SumListChanged(Sender: TObject);
begin
  acumFpago := EKDbSuma2.SumCollection[0].SumValue;
  importeFpago.Text := FormatFloat('$ ##,###,##0.00 ', acumFpago);
end;

function TFCajero.validarFPago: Boolean;
begin
  Result:=True;

  if (acumulado<=0) then
  begin
    Application.MessageBox('El monto final debe ser superior a $0,00, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    result := false;
    exit;
  end;

  if (acumFpago > 0) and (CompareValue(acumulado, acumFpago, 0.001) <> 0) then
  begin
    Application.MessageBox('El monto en las Formas de Pago es incorrecto, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    result := false;
    exit;
  end;
end;



procedure TFCajero.grabarPagos;
begin
//---------------- FORMA DE PAGO -------------------------------------
    // Si no se cargo forma de pago asume todo en EFECTIVO
    if CD_Fpago.IsEmpty then
    begin
      ZQ_Comprobante_FormaPago.Open;
      ZQ_Comprobante_FormaPago.Append;
      ZQ_Comprobante_FormaPagoID_COMPROBANTE.AsInteger := ZQ_ComprobanteID_COMPROBANTE.AsInteger;
      ZQ_Comprobante_FormaPagoID_TIPO_FORMAPAG.AsInteger := 11;
      ZQ_Comprobante_FormaPagoIMPORTE.AsFloat := acumulado;
      ZQ_Comprobante_FormaPago.Post;
    end
    else
    begin
      CD_Fpago.First;
      while not CD_Fpago.Eof do
      begin
        ZQ_Comprobante_FormaPago.Open;
        ZQ_Comprobante_FormaPago.Append;
        ZQ_Comprobante_FormaPagoID_TIPO_FORMAPAG.AsInteger := CD_FpagoID_TIPO_FORMAPAG.AsInteger;
        if ZQ_Comprobante_FormaPagoID_TIPO_FORMAPAG.AsInteger <> 11 then
        begin
          ZQ_Comprobante_FormaPagoMDCP_FECHA.AsDateTime := CD_FpagoMDCP_FECHA.AsDateTime;
          ZQ_Comprobante_FormaPagoMDCP_BANCO.AsString := CD_FpagoMDCP_BANCO.AsString;
          ZQ_Comprobante_FormaPagoMDCP_CHEQUE.AsString := CD_FpagoMDCP_CHEQUE.AsString;
        end
        else
        begin
          ZQ_Comprobante_FormaPagoMDCP_CHEQUE.Clear;
          ZQ_Comprobante_FormaPagoMDCP_BANCO.Clear;
          ZQ_Comprobante_FormaPagoMDCP_FECHA.Clear;
        end;
        ZQ_Comprobante_FormaPagoIMPORTE.AsFloat := CD_FpagoIMPORTE.AsFloat;
        ZQ_Comprobante_FormaPago.Post;

        CD_Fpago.Next;
      end;
    end;
    //---------------------------------------------------------------------
end;

procedure TFCajero.grabarDetallesFactura;
begin
    CD_DetalleFactura.First;
      while not CD_DetalleFactura.Eof do
      begin
        ZQ_ComprobanteDetalle.Open;
        ZQ_ComprobanteDetalle.Append;
        ZQ_ComprobanteDetalleID_COMPROBANTE.AsInteger := ZQ_ComprobanteID_COMPROBANTE.AsInteger;
        ZQ_ComprobanteDetalleID_PRODUCTO.AsInteger:=CD_DetalleFacturaID_PRODUCTO.AsInteger;
        ZQ_ComprobanteDetalleDETALLE.AsString:=CD_DetalleFacturaDETALLE.AsString;
        ZQ_ComprobanteDetalleCANTIDAD.AsInteger := CD_DetalleFacturaCANTIDAD.AsInteger;
        ZQ_ComprobanteDetalleIMPORTE_FINAL.AsFloat:=CD_DetalleFacturaIMPORTE_FINAL.AsFloat;
        ZQ_ComprobanteDetallePORC_DESCUENTO.AsFloat:=CD_DetalleFacturaPORC_DESCUENTO.AsFloat;
        ZQ_ComprobanteDetalleBASE_IMPONIBLE.AsFloat := CD_DetalleFacturaBASE_IMPONIBLE.AsFloat;
        ZQ_ComprobanteDetalleIMPORTE_UNITARIO.AsFloat:=CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat;
        ZQ_ComprobanteDetalleIMPUESTO_INTERNO.AsFloat:=CD_DetalleFacturaIMPUESTO_INTERNO.AsFloat;
        ZQ_ComprobanteDetallePORC_IVA.AsFloat := CD_DetalleFacturaPORC_IVA.AsFloat;

        ZQ_ComprobanteDetalle.Post;

        CD_DetalleFactura.Next;
      end;
end;

procedure TFCajero.edCantidadExit(Sender: TObject);
begin
  if not(ZQ_Productos.IsEmpty) then
    calcularMonto();

end;

procedure TFCajero.calcularMonto;
var
desc:double;
begin
if not(ZQ_Productos.IsEmpty) then
 begin
  if (edCantidad.AsInteger<0) then edCantidad.AsInteger:=1;

  if (edDesc.AsFloat<0) then edDesc.AsFloat:=0;

  desc:=edDesc.AsFloat/100;

  edImporte.AsFloat:=edCantidad.AsInteger*(ZQ_ProductosPRECIO_VENTA.AsFloat - (ZQ_ProductosPRECIO_VENTA.AsFloat*desc) );

 end
end;

procedure TFCajero.btVendedorClick(Sender: TObject);
var
  sql:string;
begin
  sql:= Format('select per.id_persona, per.nombre||'+
               ' COALESCE('' | Nro.Doc: '' || per.numero_doc,'''')||'+
               ' COALESCE('' | CUIT/CUIL: '' || per.cuit_cuil,'''') As busqueda'+
               ' from persona per'+
               ' left join persona_relacion rel on (per.id_persona = rel.id_persona)'+
               ' where per.baja = %s '+
               ' and rel.id_relacion = %d '+
               ' order by per.nombre', [QuotedStr('N'), RELACION_EMPLEADO]);
  EKListadoVendedores.SQL.Text:= sql;

  if EKListadoVendedores.Buscar then
    if (EKListadoVendedores.Resultado <> '') then
    begin
      IdVendedor:=StrToInt(EKListadoVendedores.Resultado);
      CD_ComprobanteID_VENDEDOR.AsInteger:=IdVendedor;
    end;

end;

procedure TFCajero.edImporteExit(Sender: TObject);
begin
edCantidad.SetFocus;
end;

procedure TFCajero.DBGridFormaPagoColExit(Sender: TObject);
begin
 if CD_Fpago.State<>dsBrowse then //SI ESTOY DANDO DE ALTA O EDITANDO
  begin
    if ((sender as tdbgrid).SelectedField.FullName = 'ID_TIPO_FORMAPAG')then
      begin
        if EK_ListadoMedCobroPago.Buscar then
        begin
          CD_FpagoID_TIPO_FORMAPAG.AsInteger := StrToInt(EK_ListadoMedCobroPago.Resultado);
        end
      end
  end;
end;

procedure TFCajero.DBGridFormaPagoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 112 then
    begin
      if (((sender as tdbgrid).SelectedField.FullName = 'ID_TIPO_FORMAPAG')or ((sender as tdbgrid).SelectedField.FullName = 'medioPago')) then
          if EK_ListadoMedCobroPago.Buscar then
          begin
            CD_FpagoID_TIPO_FORMAPAG.AsInteger := StrToInt(EK_ListadoMedCobroPago.Resultado);
          end;
    end;
end;

function TFCajero.ProductoYaCargado(id:Integer):Boolean ;
begin
    Result:=False;
    CD_DetalleFactura.Filtered := false;
    CD_DetalleFactura.Filter:= Format('id_producto = %d ',[id]);
    CD_DetalleFactura.Filtered := true;
    if not CD_DetalleFactura.IsEmpty then
    begin
      CD_DetalleFactura.Filtered := false;
      Result:=True;
      Application.MessageBox('El Producto seleccionado ya fue cargado','Carga Producto',MB_OK+MB_ICONINFORMATION);
      codBarras.SetFocus;
      exit;
    end;
    CD_DetalleFactura.Filtered := false;
end;

end.
