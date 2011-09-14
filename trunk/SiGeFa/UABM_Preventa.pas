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
    BtModificar: TdxBarLargeButton;
    btBuscProd: TdxBarLargeButton;
    BtAgregarPago: TdxBarLargeButton;
    BtAceptarPago: TdxBarLargeButton;
    BtCancelarPago: TdxBarLargeButton;
    BtVendedor: TdxBarLargeButton;
    Bt_Cierre_Z: TdxBarLargeButton;
    btPreventa: TdxBarLargeButton;
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
    GrupoGuardarCancelar: TdxBarGroup;
    lblTotAPagar: TLabel;
    PanelStatusBar: TPanel;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    ATipoIVA: TAction;
    ACliente: TAction;
    APago: TAction;
    ASalir: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    AVendedor: TAction;
    ANuevoProd: TAction;
    ANuevaFormaPago: TAction;
    APreventa: TAction;
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
    CD_DetalleFacturaproducto: TStringField;
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
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    edProducto: TDBEdit;
    edCantidad: TDBEdit;
    edDesc: TDBEdit;
    edImporteFinal: TDBEdit;
    Label5: TLabel;
    Label11: TLabel;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    btnAceptarProd: TSpeedButton;
    btnCancelarProd: TSpeedButton;
    PLeerCodigo: TPanel;
    LeerCodBar: TLabel;
    codBarras: TEdit;
    Image2: TImage;
    Label8: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label18: TLabel;
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
    PConfirmarVenta: TPanel;
    Image1: TImage;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit15: TDBEdit;
    Bevel1: TBevel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Bevel2: TBevel;
    lblVtaDesc: TLabel;
    lblVtaIVA: TLabel;
    lblVtaTotal: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    lblVtaSubtotal: TLabel;
    Label33: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure btBuscProdClick(Sender: TObject);
    procedure VerLectorCB(sino: Boolean);
    procedure IdentificarCodigo();
    procedure LimpiarCodigo;
    procedure LeerCodigo(id:string;cod:String);
    procedure calcularMonto();
    procedure edCantidadExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure crearComprobante;
    procedure cargarClientePorDefecto();
    procedure ZQ_ProductosAfterScroll(DataSet: TDataSet);
    procedure RelojStockTimer(Sender: TObject);
    procedure codBarrasEnter(Sender: TObject);
    procedure codBarrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btsalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt_BuscarClienteClick(Sender: TObject);
    function ProductoYaCargado(id:Integer):Boolean ;
    procedure edDescExit(Sender: TObject);
    procedure edImporteExit(Sender: TObject);
    procedure BtAgregarPagoClick(Sender: TObject);
    procedure BtVendedorClick(Sender: TObject);
    function agregar(detalle: string;prod:integer):Boolean;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
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
    procedure edImporteFinalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtCancelarPagoClick(Sender: TObject);
    procedure BtAceptarPagoClick(Sender: TObject);
    procedure EKDbSuma1SumListChanged(Sender: TObject);
    procedure guardarComprobante();
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    vsel: TFBuscarProductoStock;
    vsel2: TFBuscarPersona;
    vsel3: TFBuscarPersona;
    procedure OnSelProd;
    procedure OnSelPers;
    procedure OnSelVendedor;
  public
    { Public declarations }
  end;

var
  FABM_Preventa: TFABM_Preventa;
  importeacob, punitoriosacob, acumulado,ClienteIVA,descCliente,acumuladoIVA: double;
  IdProd:String;
  cliente,IdVendedor,cajero,IDClienteIVA,idSucursal:Integer;

const
  abmComprobante='ABM Venta Mostrador';

implementation

uses UDM, UPrincipal,strutils, EKModelo, Math, UUtilidades;

{$R *.dfm}

procedure TFABM_Preventa.btBuscProdClick(Sender: TObject);
begin
if (CD_DetalleFactura.State<>dsBrowse) then exit;
if cliente<0 then
 begin
   //Application.MessageBox('Debe seleccionar el Cliente.', 'Atención');
   bt_BuscarCliente.Click;
   exit;
 end;

if IdVendedor<0 then
 begin
   //Application.MessageBox('Debe seleccionar el Vendedor.', 'Atención');
   btVendedorClick(self);
   exit;
 end;
 
if EKListadoProducto.Buscar then
   begin
     if (EKListadoProducto.Resultado<>'') then
     begin
       codBarras.Text:='I'+EKListadoProducto.Resultado;
       IdentificarCodigo;
     end
   end
end;

procedure TFABM_Preventa.VerLectorCB(sino: Boolean);
begin
  PLeerCodigo.Visible:=sino;
  PLeerCodigo.BringToFront;
  dm.centrarPanel(FABM_Preventa, PLeerCodigo);
  PanelContenedorDerecha.Enabled:=not(PLeerCodigo.Visible);
end;

procedure TFABM_Preventa.IdentificarCodigo();
var
  cod, num: string;
begin
     cod := codBarras.Text;
     try
      begin
        if not(sonTodosNumeros(MidStr(cod,2,Length(cod)-1))) then
        begin
          Application.MessageBox('El código de ingresado es incorrecto', 'Código incorrecto');
          LimpiarCodigo;
          exit;
        end;
        if MidStr(Cod, 1, 1) = 'C' then
        begin
          LeerCodigo('C',Cod);
          exit;
        end;

        if MidStr(Cod, 1, 1) = 'I' then
        begin
          LeerCodigo('I',Cod);
          exit;
        end;

        // POR CODIGO DE BARRAS PRODUCTO
        if (Length(cod) <= LONG_COD_BARRAS) then
        begin
          LeerCodigo('B',Cod);
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
  importeacob := 0;
  codBarras.Clear;
  if (CD_DetalleFactura.State<>dsBrowse) then
   begin
      CD_DetalleFacturaCANTIDAD.AsFloat:=1;
      CD_DetalleFacturaPORC_DESCUENTO.AsFloat:=descCliente;
      CD_DetalleFacturaIMPORTE_FINAL.AsFloat:=0;
   end;
  RelojStock.Enabled:=false;
  //lblSinStock.Visible:=False;
  lblMaxVenta.Visible:=False;
end;

procedure TFABM_Preventa.LeerCodigo(id:string;cod:String);
var
  f1, f2, fecha: tdate;
  punit: double;
  diasm: integer;
begin

  RelojStock.Enabled:=false;
  //lblSinStock.Visible:=False;
  lblMaxVenta.Visible:=False;

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
     if id='C' then
      begin
        ZQ_Productos.Close;
        ZQ_Productos.sql[11]:=Format('and(p.cod_corto=%s)',[IdProd]);
        ZQ_Productos.Open;
      end;

     if id='I' then
      begin
        ZQ_Productos.Close;
        ZQ_Productos.sql[11]:=Format('and(p.id_producto=%s)',[IdProd]);
        ZQ_Productos.Open;
      end;
     //Codigo de Barras
     if id='B' then
       begin
        ZQ_Productos.Close;
        ZQ_Productos.sql[11]:=Format('and(p.codigo_barra=%s)',[cod]);
        ZQ_Productos.Open;
       end;

    if ZQ_Productos.RecordCount>1 then
      begin
        Application.MessageBox('El código ingresado corresponde a más de un producto'+char(13)+
                                '(utilice la búsqueda avanzada para seleccionar el adecuado)', 'Producto Repetido');
        LimpiarCodigo;
        exit;
      end;

    if not(ZQ_Productos.IsEmpty) then
     begin
        if ZQ_ProductosSTOCK_ACTUAL.AsFloat <= 0 then
         begin
           Application.MessageBox('El Stock del Producto es Insuficiente.', 'Stock Producto');
           LimpiarCodigo;
           exit;
         end;
     end;

    if not(ZQ_Productos.IsEmpty) then
       begin
        agregar('',ZQ_ProductosID_PRODUCTO.AsInteger);
       end
    else
       begin
        Application.MessageBox('El producto no pudo ser encontrado.'+char(13)+
                                  '(utilice la búsqueda avanzada para seleccionar el adecuado)', 'Código incorrecto');
        LimpiarCodigo;
        exit;
       end;

end;

procedure TFABM_Preventa.calcularMonto();
var
desc,importe:double;
begin
if not(ZQ_Productos.IsEmpty) then
 begin
  if (CD_DetalleFacturaCANTIDAD.AsFloat<0) then CD_DetalleFacturaCANTIDAD.AsFloat:=1;
  if (CD_DetalleFacturaPORC_DESCUENTO.AsFloat<0) then CD_DetalleFacturaPORC_DESCUENTO.AsFloat:=0;
  desc:=CD_DetalleFacturaPORC_DESCUENTO.AsFloat;
  CD_DetalleFacturaIMPORTE_FINAL.AsFloat:=CD_DetalleFacturaCANTIDAD.AsFloat*(ZQ_ProductosPRECIO_VENTA.AsFloat - (ZQ_ProductosPRECIO_VENTA.AsFloat*desc/100) );
 end
end;

procedure TFABM_Preventa.edCantidadExit(Sender: TObject);
begin
 if (not(ZQ_Productos.IsEmpty)and(CD_DetalleFactura.State in [dsInsert,dsEdit])) then
    calcularMonto();
end;

procedure TFABM_Preventa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 CanClose:= FPrincipal.cerrar_ventana(abmComprobante);
end;

procedure TFABM_Preventa.FormCreate(Sender: TObject);
begin
  CurrencyDecimals := 2;
  DecimalSeparator := '.';
  ThousandSeparator := ',';
  DateSeparator := '/';
  ShortDateFormat := 'dd/MM/yyyy';
  dm.ZQ_Configuracion.Close;
  dm.ZQ_Configuracion.Open;
  idSucursal:=dm.ZQ_ConfiguracionDB_SUCURSAL.AsInteger;
  CD_Comprobante.CreateDataSet;
  CD_DetalleFactura.CreateDataSet;
  dm.EKModelo.abrir(ZQ_DetalleProd);
  Cliente:=-1;
  IdVendedor:=-1;
  descCliente:=0;
  ClienteIVA:=0;
  IDClienteIVA:=0;
  crearComprobante();
  cargarClientePorDefecto();

  DS_Sucursal.DataSet:=dm.ZQ_Sucursal;
  DBImage1.DataField:='LOGO';

  modoLecturaProd();
  PConfirmarVenta.Visible:=False;
  DM.ZQ_Sucursal.Close;
  DM.ZQ_Sucursal.ParamByName('id_sucursal').AsInteger:=idSucursal;
  DM.ZQ_Sucursal.Open;
end;


procedure TFABM_Preventa.crearComprobante;
begin

  importeacob:=0;
  punitoriosacob:=0;
  acumulado:=0;
  acumuladoIVA:=0;

  IdProd:='';

  RelojStock.Enabled:=false;
  lblMaxVenta.Visible:=False;
  //lblSinStock.Visible:=False;
  EKDbSuma1.SumCollection[0].SumValue := 0;

  CD_Comprobante.EmptyDataSet;
  CD_Comprobante.Append;
  CD_ComprobanteID_SUCURSAL.AsInteger:=SUCURSAL_LOGUEO;
  CD_ComprobanteID_CLIENTE.AsInteger:=cliente;
  CD_ComprobanteID_TIPO_CPB.AsInteger:=10; //PREVENTA
  CD_ComprobanteID_VENDEDOR.AsInteger:=IdVendedor;
  CD_ComprobanteID_COMP_ESTADO.AsInteger:=0; //PENDIENTE
  CD_ComprobanteFECHA.AsDateTime:=dm.EKModelo.FechayHora();
  CD_ComprobanteOBSERVACION.AsString:='';
  CD_ComprobanteBASE_IMPONIBLE.AsFloat:=0;
  CD_ComprobanteSALDO.AsFloat:=0;
  CD_ComprobanteIMPORTE_TOTAL.AsFloat:=0;
  CD_ComprobantePORC_IVA.AsFloat:=ClienteIVA;
  CD_ComprobanteIMPORTE_IVA.AsInteger:=0;
  CD_ComprobantePORC_DESCUENTO.AsFloat:=descCliente/100;
  CD_ComprobanteIMPORTE_DESCUENTO.AsInteger:=0;
  CD_ComprobanteENCABEZADO.AsString:='';
  CD_ComprobantePIE.AsString:='';
  CD_ComprobanteFECHA_COBRADA.Clear;
  CD_ComprobanteFECHA_ENVIADA.Clear;
  CD_ComprobanteFECHA_IMPRESA.Clear;
  CD_ComprobanteFECHA_VENCIMIENTO.Clear;

  lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
end;

procedure TFABM_Preventa.cargarClientePorDefecto();
begin
  // Cargo Consumidor Final por defecto Id=0
  ZQ_Personas.Locate('id_persona',0,[]);
  Cliente:=ZQ_PersonasID_PERSONA.AsInteger;
  IdClienteIVA:=ZQ_PersonasID_TIPO_IVA.AsInteger;
  ClienteIVA:=ZQ_PersonasCOEFIVA.AsFloat;
  CD_ComprobanteID_CLIENTE.AsInteger:=Cliente;
  CD_ComprobanteID_TIPO_IVA.AsInteger:=IdClienteIVA;
  CD_ComprobantePORC_IVA.AsFloat:=ClienteIVA;
  descCliente:= ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat*100;
end;


procedure TFABM_Preventa.ZQ_ProductosAfterScroll(DataSet: TDataSet);
begin
     edImagen.Visible:=not((ZQ_ProductosIMAGEN.IsNull) or (ZQ_ProductosIMAGEN.AsString=''));
     edImagen.BringToFront;
end;

procedure TFABM_Preventa.RelojStockTimer(Sender: TObject);
begin
// lblSinStock.Visible:=not(lblSinStock.Visible);
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

procedure TFABM_Preventa.FormShow(Sender: TObject);
begin
//ANuevoProd.Execute;
end;

procedure TFABM_Preventa.bt_BuscarClienteClick(Sender: TObject);
begin
if (CD_DetalleFactura.State=dsBrowse) then
if not Assigned(vsel2) then
  vsel2:= TFBuscarPersona.Create(nil);
  vsel2.configRelacion(RELACION_CLIENTE);
  vsel2.EKBusqueda.Abrir;
  vsel2.OnSeleccionar := OnSelPers;
  vsel2.ShowModal;
end;

procedure TFABM_Preventa.OnSelPers;
begin
 if not(vsel2.ZQ_Personas.IsEmpty) then
      begin
      ZQ_Personas.Locate('id_persona',vsel2.ZQ_PersonasID_PERSONA.AsInteger,[]);
      Cliente:=ZQ_PersonasID_PERSONA.AsInteger;
      IdClienteIVA:=ZQ_PersonasID_TIPO_IVA.AsInteger;
      descCliente:= 0;
      if (not ZQ_PersonasDESCUENTO_ESPECIAL.IsNull) or (ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat <> 0) then
          if (application.MessageBox(pchar('El cliente seleccionado posee un descuento especial del '+FloatToStr(ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat*100)+'%.'+
              #13+'Desea aplicar este descuento para todos los productos que se carguen?'), 'Descuento Cliente', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
          begin
            descCliente:= ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat*100;
          end;

      CD_ComprobanteID_CLIENTE.AsInteger:=cliente;
      CD_ComprobanteID_TIPO_IVA.AsInteger:=IdClienteIVA;

     end;
     vsel2.Close;
end;



procedure TFABM_Preventa.OnSelVendedor;
begin
   if not(vsel3.ZQ_Personas.IsEmpty) then
      begin
        ZQ_Personas.Locate('id_persona',vsel3.ZQ_PersonasID_PERSONA.AsInteger,[]);
        IdVendedor:=vsel3.ZQ_PersonasID_PERSONA.AsInteger;
        CD_ComprobanteID_VENDEDOR.AsInteger:=IdVendedor;
      end;
      vsel3.Close;
end;


function TFABM_Preventa.ProductoYaCargado(id:Integer):Boolean ;
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
      exit;
    end;
    CD_DetalleFactura.Filtered := false;
end;

procedure TFABM_Preventa.edDescExit(Sender: TObject);
begin
if (not(ZQ_Productos.IsEmpty)and(CD_DetalleFactura.State in [dsInsert,dsEdit])) then
    calcularMonto();
end;

procedure TFABM_Preventa.edImporteExit(Sender: TObject);
begin
edCantidad.SetFocus;
end;

procedure TFABM_Preventa.BtAgregarPagoClick(Sender: TObject);
begin
if (CD_DetalleFactura.State<>dsBrowse) then exit;
if cliente<0 then
 begin
   //Application.MessageBox('Debe seleccionar el Cliente.', 'Atención');
   bt_BuscarCliente.Click;
   exit;
 end;

if IdVendedor<0 then
 begin
   //Application.MessageBox('Debe seleccionar el Vendedor.', 'Atención');
   btVendedorClick(self);
   exit;
 end;

  modoLecturaProd();
  VerLectorCB(true);
  LimpiarCodigo();      
  codBarras.SetFocus;
end;

procedure TFABM_Preventa.BtVendedorClick(Sender: TObject);
begin
if (CD_DetalleFactura.State=dsBrowse) then
 if not Assigned(vsel3) then
  vsel3:= TFBuscarPersona.Create(nil);
  vsel3.configRelacion(RELACION_EMPLEADO);
  vsel3.EKBusqueda.Abrir;
  vsel3.OnSeleccionar := OnSelVendedor;
  vsel3.ShowModal;
end;

function TFABM_Preventa.agregar(detalle: string;prod:integer):Boolean;
begin
 Result:=False;
 if not(ProductoYaCargado(prod)) then
    begin

        CD_DetalleFactura.Append;
        CD_DetalleFacturaID_PRODUCTO.AsInteger:=prod;
        CD_DetalleFacturaDETALLE.AsString:=detalle;
        CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat:=ZQ_ProductosPRECIO_VENTA.AsFloat;
        CD_DetalleFacturaPORC_DESCUENTO.AsFloat:=(ZQ_ProductosCOEF_DESCUENTO.AsFloat*100)+descCliente;
        CD_DetalleFacturaIMPUESTO_INTERNO.AsFloat:=ZQ_ProductosIMPUESTO_INTERNO.AsFloat;
        CD_DetalleFacturaPORC_IVA.AsFloat:=ZQ_ProductosIMPUESTO_IVA.AsFloat;
        CD_DetalleFacturaBASE_IMPONIBLE.AsFloat:=(CD_DetalleFacturaCANTIDAD.AsInteger*CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat);
        CD_DetalleFacturaCANTIDAD.AsFloat:=1;
        CD_DetalleFacturaIMPORTE_FINAL.AsFloat:=CD_DetalleFacturaBASE_IMPONIBLE.AsFloat;
        CD_DetalleFacturaIMPORTE_IVA.AsFloat:=CD_DetalleFacturaPORC_IVA.AsFloat * CD_DetalleFacturaIMPORTE_FINAL.AsFloat;

        modoEscrituraProd();
        Result:=True;
    end
end;
procedure TFABM_Preventa.SpeedButton1Click(Sender: TObject);
begin
 BtAgregarPago.Click;
end;

procedure TFABM_Preventa.Image1DblClick(Sender: TObject);
begin
   SpeedButton1.Click;
end;

procedure TFABM_Preventa.btnAceptarProdClick(Sender: TObject);
begin
   if CD_DetalleFacturaIMPORTE_FINAL.AsFloat<=0 then
    begin
       Application.MessageBox('El importe ingresado es incorrecto.', 'Atención');
       edImporteFinal.SetFocus;
       exit;
    end;

 if ((not(ZQ_Productos.IsEmpty))and(CD_DetalleFacturaCANTIDAD.AsFloat>0)) then
  if (ZQ_ProductosSTOCK_ACTUAL.AsFloat>=CD_DetalleFacturaCANTIDAD.AsFloat) then
   begin
    CD_DetalleFactura.Post;
    lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
    modoLecturaProd();
   end
  else
   begin
    Application.MessageBox('El stock actual del producto es insuficiente para la cantidad ingresada.', 'Atención');
    edCantidad.SetFocus;
    exit;
   end;

end;

procedure TFABM_Preventa.btnCancelarProdClick(Sender: TObject);
begin
 // if (CD_DetalleFactura.State=dsInsert) then
  CD_DetalleFactura.Cancel;
  modoLecturaProd();
end;

procedure TFABM_Preventa.modoLecturaProd();
begin
   VerLectorCB(false);
   Panel1.Enabled:=True;
   grupoVertical.Enabled:=True;
   PanelDetalleProducto.Enabled:=False;
   PanelDetalleProducto.Color:=Panel1.Color;
end;

procedure TFABM_Preventa.modoEscrituraProd();
begin
   VerLectorCB(false);
   PanelDetalleProducto.Enabled:=True;
   Panel1.Enabled:=False;
   grupoVertical.Enabled:=False;
   PanelDetalleProducto.Color:=$0080FFFF;
   edCantidad.SetFocus;
end;
procedure TFABM_Preventa.btQuitarProductoClick(Sender: TObject);
begin
if not(CD_DetalleFactura.IsEmpty) then
  begin
    CD_DetalleFactura.Delete;
    lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
  end;
end;

procedure TFABM_Preventa.CD_DetalleFacturaAfterScroll(DataSet: TDataSet);
begin
lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
end;

procedure TFABM_Preventa.QuitarProdClick(Sender: TObject);
begin
 btQuitarProducto.Click;
end;

procedure TFABM_Preventa.EditarProdClick(Sender: TObject);
begin
  if not(CD_DetalleFactura.IsEmpty) then
   begin
   CD_DetalleFactura.Edit;
   modoEscrituraProd();
   edCantidad.SetFocus;
   end

end;

procedure TFABM_Preventa.BtBuscarProductoClick(Sender: TObject);
begin
if (CD_DetalleFactura.State<>dsBrowse) then exit;

if cliente<0 then
 begin
   //Application.MessageBox('Debe seleccionar el Cliente.', 'Atención');
   bt_BuscarCliente.Click;
   exit;
 end;

if IdVendedor<0 then
 begin
   //Application.MessageBox('Debe seleccionar el Vendedor.', 'Atención');
   btVendedorClick(self);
   exit;
 end;

if not Assigned(vsel) then
  vsel:= TFBuscarProductoStock.Create(nil);
  vsel.usaCajero:='S';
  vsel.OnSeleccionar := OnSelProd;
  vsel.ShowModal;
  vsel.usaCajero:='N';
end;

procedure TFABM_Preventa.OnSelProd;
begin
 if not vsel.ZQ_Stock.IsEmpty then
  begin
      if not(ProductoYaCargado(vsel.ZQ_StockID_PRODUCTO.AsInteger)) then
      begin
        codBarras.Text:='I'+vsel.ZQ_StockID_PRODUCTO.AsString;
        IdentificarCodigo;
        edCantidad.SetFocus;
      end;
      vsel.ZQ_Stock.Filtered:=False;
      vsel.Close;
  end;
end;

procedure TFABM_Preventa.btIVAClick(Sender: TObject);
begin
if (CD_DetalleFactura.State=dsBrowse) then
if (CD_Comprobante.State=dsInsert) then
  if EKListadoIVA.Buscar then
    CD_ComprobanteID_TIPO_IVA.AsInteger:=StrToInt(EKListadoIVA.Resultado);
end;

procedure TFABM_Preventa.edImporteFinalExit(Sender: TObject);
begin
if CD_DetalleFactura.State in [dsInsert,dsEdit] then
    edCantidad.SetFocus;
end;

procedure TFABM_Preventa.edImporteFinalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
case key of
 13:begin
    if (application.MessageBox(pchar('Desea Guardar el Producto?'), 'Venta Producto', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      btnAceptarProd.Click;
    end;
 27:begin
    if (application.MessageBox(pchar('Desea Cancelar los cambios en el Producto?'), 'Venta Producto', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      btnCancelarProd.Click;
    end;
end
end;

procedure TFABM_Preventa.BtCancelarPagoClick(Sender: TObject);
begin
if (CD_DetalleFactura.State=dsBrowse) then
 if (application.MessageBox(pchar('Desea Cancelar la Boleta Actual y quitar todos sus Productos?'), 'Borrar Productos', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
   CD_DetalleFactura.EmptyDataSet;

   lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
  end
end;

procedure TFABM_Preventa.BtAceptarPagoClick(Sender: TObject);
begin
//if (CD_DetalleFactura.State=dsBrowse) then
//Guarda la Venta
  PConfirmarVenta.Visible:=True;
  PConfirmarVenta.BringToFront;
  dm.centrarPanel(FABM_Preventa, PConfirmarVenta);
  PanelContenedorDerecha.Enabled:=not(PConfirmarVenta.Visible);
end;

procedure TFABM_Preventa.EKDbSuma1SumListChanged(Sender: TObject);
begin
  acumulado := EKDbSuma1.SumCollection[0].SumValue;
  
  acumuladoIVA := EKDbSuma1.SumCollection[1].SumValue;

  lblTotAPagar.Caption :='Total Venta: '+ FormatFloat('$ ##,###,##0.00 ', acumulado);

  if (CD_Comprobante.state=dsInsert) then
    CD_ComprobanteBASE_IMPONIBLE.AsFloat:=acumulado;

  if acumulado>MONTO_MAX_VENTA then
     begin
       lblTotAPagar.Color:=clRed;
       lblMaxVenta.Visible:=true;
     end
  else
    begin
    lblTotAPagar.Color:=$00C10000;
    lblMaxVenta.Visible:=false;
    end
end;

procedure TFABM_Preventa.guardarComprobante;
begin

//Hacer las validaciones correspondientes

if not(dm.EKModelo.verificar_transaccion(abmComprobante)) then
 if dm.EKModelo.iniciar_transaccion(abmComprobante,[ZQ_Comprobante,ZQ_ComprobanteDetalle]) then
   begin
      CD_ComprobanteIMPORTE_DESCUENTO.AsFloat:=CD_ComprobanteBASE_IMPONIBLE.AsFloat*CD_ComprobantePORC_DESCUENTO.AsFloat;
      CD_ComprobanteIMPORTE_IVA.AsFloat:=CD_ComprobanteBASE_IMPONIBLE.AsFloat*CD_ComprobantePORC_IVA.AsFloat;
      CD_ComprobanteIMPORTE_TOTAL.AsFloat:=CD_ComprobanteBASE_IMPONIBLE.AsFloat+CD_ComprobanteIMPORTE_IVA.AsFloat;
      CD_ComprobanteSALDO.AsFloat:=0;
      CD_ComprobanteIMPORTE_VENTA.AsFloat := CD_ComprobanteIMPORTE_TOTAL.AsFloat;
      CD_Comprobante.Post;

      ZQ_Comprobante.Append;
      ZSP_Comprobante.Active:=True;
      ZQ_ComprobanteID_COMPROBANTE.AsInteger:=ZSP_ComprobanteID.AsInteger;
      ZQ_ComprobanteCODIGO.AsString:=ZSP_ComprobanteCODIGO.AsString;
      ZSP_Comprobante.Active:=False;
      ZQ_ComprobanteID_SUCURSAL.Value:=CD_ComprobanteID_SUCURSAL.Value;
      ZQ_ComprobanteID_PROVEEDOR.Clear;
      ZQ_ComprobanteID_CLIENTE.AsInteger:=CD_ComprobanteID_CLIENTE.AsInteger;
      ZQ_ComprobanteID_TIPO_CPB.value:=CD_ComprobanteID_TIPO_CPB.Value;
      ZQ_ComprobanteID_VENDEDOR.Value:=CD_ComprobanteID_VENDEDOR.Value;
      ZQ_ComprobanteID_COMP_ESTADO.Value:=CD_ComprobanteID_COMP_ESTADO.Value;;
      ZQ_ComprobanteFECHA.AsDateTime:=CD_ComprobanteFECHA.AsDateTime;
      ZQ_ComprobanteOBSERVACION.Value:=CD_ComprobanteOBSERVACION.Value;
      ZQ_ComprobanteBASE_IMPONIBLE.Value:=CD_ComprobanteBASE_IMPONIBLE.Value;
      ZQ_ComprobanteSALDO.AsFloat:=CD_ComprobanteSALDO.Value;
      ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:=CD_ComprobanteIMPORTE_TOTAL.Value;
      ZQ_ComprobantePORC_IVA.AsFloat:=CD_ComprobantePORC_IVA.Value;
      ZQ_ComprobanteIMPORTE_IVA.AsFloat:=CD_ComprobanteIMPORTE_IVA.AsFloat;
      ZQ_ComprobantePORC_DESCUENTO.AsFloat:=CD_ComprobantePORC_DESCUENTO.AsFloat;
      ZQ_ComprobanteIMPORTE_DESCUENTO.AsFloat:=CD_ComprobanteIMPORTE_DESCUENTO.AsFloat;
      ZQ_ComprobanteIMPORTE_VENTA.AsFloat := CD_ComprobanteIMPORTE_VENTA.AsFloat;
      ZQ_ComprobanteIMPORTE_IVA.AsFloat := CD_ComprobanteIMPORTE_IVA.AsFloat;
      ZQ_ComprobanteENCABEZADO.AsString:=CD_ComprobanteENCABEZADO.AsString;
      ZQ_ComprobantePIE.AsString:=CD_ComprobantePIE.AsString;
      ZQ_ComprobanteID_TIPO_IVA.AsInteger:=CD_ComprobanteID_TIPO_IVA.AsInteger;
      ZQ_ComprobanteFECHA_COBRADA.Clear;
      ZQ_ComprobanteFECHA_ENVIADA.Clear;
      ZQ_ComprobanteFECHA_IMPRESA.Clear;
      ZQ_ComprobanteFECHA_VENCIMIENTO.Clear;
      ZQ_Comprobante.Post;

      //grabarDetallesFactura();
   end;

   try
     begin
      if not(dm.EKModelo.finalizar_transaccion(abmComprobante)) then
       begin
        dm.EKModelo.cancelar_transaccion(abmComprobante);
        Application.MessageBox('No se pudo crear el Comprobante', 'Atención');
        dm.EKModelo.cancelar_transaccion(abmComprobante);
       end;
        CD_DetalleFactura.EmptyDataSet;
        LimpiarCodigo();
        crearComprobante();
        CD_ComprobanteID_CLIENTE.AsInteger:=cliente;
        CD_ComprobanteID_TIPO_IVA.AsInteger:=IDClienteIVA;

     end
   except
    begin
        Application.MessageBox('No se pudo crear el Comprobante', 'Atención');
    end;
   end;
end;

procedure TFABM_Preventa.BitBtn2Click(Sender: TObject);
begin
  PConfirmarVenta.Visible:=False;
  PanelContenedorDerecha.Enabled:=not(PConfirmarVenta.Visible);
end;

end.
