unit UCajero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Grids, DBGrids,
  EKEdit,UBuscarProductoStock, Mask, Provider, DBClient, ActnList,
  XPStyleActnCtrls, ActnMan, EKListadoSQL, EKDbSuma,
  ZStoredProcedure,UBuscarPersona, Buttons, jpeg, Menus,UCargarPreventa,
  ComCtrls, IniFiles, ShellAPI;

type
  TFCajero = class(TForm)
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
    ZQ_FormasPago: TZQuery;
    ZQ_FormasPagoID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_FormasPagoDESCRIPCION: TStringField;
    ZQ_FormasPagoBAJA: TStringField;
    CD_FpagomedioPago: TStringField;
    EKDbSuma2: TEKDbSuma;
    EKListadoMedCobroPago: TEKListadoSQL;
    EKListadoCuenta: TEKListadoSQL;
    ZQ_Cuentas: TZQuery;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasMEDIO_DEFECTO: TIntegerField;
    ZQ_CuentasCODIGO: TStringField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasNRO_CTA_BANCARIA: TStringField;
    ZQ_CuentasBAJA: TStringField;
    CD_Fpago_ctaIngreso: TStringField;
    CD_Fpago_esCtaCorr: TStringField;
    ZQ_CuentasA_CTA_CORRIENTE: TStringField;
    ZQ_FormasPagoIF: TStringField;
    ZQ_FormasPagoDESC_REC: TFloatField;
    ZQ_FormasPagoCOD_CORTO: TIntegerField;
    ZQ_Comprobante_FormaPagoFECHA_FP: TDateTimeField;
    ZQ_Comprobante_FormaPagoIMPORTE_REAL: TFloatField;
    CD_Fpago_desc_rec: TFloatField;
    CD_Fpago_importeVenta: TFloatField;
    ZQ_CuentasID_SUCURSAL: TIntegerField;
    PLeerCodigo: TPanel;
    LeerCodBar: TLabel;
    Image2: TImage;
    Label8: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    codBarras: TEdit;
    PConfirmarVenta: TPanel;
    Bevel1: TBevel;
    Image1: TImage;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit15: TDBEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    btnConfirmarVenta: TBitBtn;
    btnCancelarVenta: TBitBtn;
    Panel5: TPanel;
    edPorcDctoTotal: TDBEdit;
    PanelContenedorDerecha: TPanel;
    PanelStatusBar: TPanel;
    DBText7: TDBText;
    DBText8: TDBText;
    PProducto: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    PanelProductosYFPago: TPanel;
    PanelListadoProducto: TPanel;
    Label9: TLabel;
    DBGridListadoProductos: TDBGrid;
    Panel6: TPanel;
    Label36: TLabel;
    btQuitarProducto: TButton;
    PanelFormaPago: TPanel;
    DBGridFormaPago: TDBGrid;
    PieGrilla: TPanel;
    lblTotAPagar: TLabel;
    lblMaxVenta: TLabel;
    btnQuitarPago: TButton;
    PanelDetalleProducto: TPanel;
    Label5: TLabel;
    Label11: TLabel;
    SpeedButton1: TSpeedButton;
    btnAceptarProd: TSpeedButton;
    btnCancelarProd: TSpeedButton;
    edProducto: TDBEdit;
    edCantidad: TDBEdit;
    edDesc: TDBEdit;
    edImporteFinal: TDBEdit;
    Panel7: TPanel;
    PanelCabeceraFactura: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label28: TLabel;
    Label20: TLabel;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    Panel3: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label7: TLabel;
    Label26: TLabel;
    DBImage1: TDBImage;
    edImagen: TDBImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit17: TDBEdit;
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
    grupoVertical: TdxBarGroup;
    EKListadoProducto: TEKListadoSQL;
    ZQ_Productos: TZQuery;
    ZQ_ProductosNOMBRE_PRODUCTO: TStringField;
    ZQ_ProductosMEDIDA: TStringField;
    ZQ_ProductosARTICULO: TStringField;
    ZQ_ProductosTIPO_ARTICULO: TStringField;
    ZQ_ProductosNOMBRE_MARCA: TStringField;
    ZQ_ProductosDESCRIPCION: TStringField;
    ZQ_ProductosCOD_CORTO: TStringField;
    ZQ_ProductosCODIGO_BARRA: TStringField;
    ZQ_ProductosID_PRODUCTO: TIntegerField;
    ZQ_ProductosIMAGEN: TBlobField;
    ZQ_ProductosDETALLE_PROD: TStringField;
    ZQ_ProductosSTOCK_ACTUAL: TFloatField;
    ZQ_ProductosID_STOCK_PRODUCTO: TIntegerField;
    DS_Productos: TDataSource;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    ATipoIVA: TAction;
    ACliente: TAction;
    ASalir: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    AVendedor: TAction;
    ANuevoProd: TAction;
    ANuevaFormaPago: TAction;
    APreventa: TAction;
    PopUpProductos: TPopupMenu;
    EditarProd: TMenuItem;
    QuitarProd: TMenuItem;
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
    ZQ_PersonasCOEFIVA: TFloatField;
    DS_Personas: TDataSource;
    ZQ_TipoIVA: TZQuery;
    ZQ_TipoIVAID_TIPO_IVA: TIntegerField;
    ZQ_TipoIVANOMBRE_TIPO_IVA: TStringField;
    ZQ_TipoIVAABREVIATURA: TStringField;
    ZQ_TipoIVADISCRIMINAR: TStringField;
    ZQ_TipoIVALETRA: TStringField;
    ZQ_TipoIVAFISCAL: TStringField;
    EKListadoIVA: TEKListadoSQL;
    EKDbSuma1: TEKDbSuma;
    ZSP_Comprobante: TZStoredProc;
    ZSP_ComprobanteID: TIntegerField;
    ZSP_ComprobanteCODIGO: TStringField;
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
    CD_DetalleFacturaID_PROD_STOCK: TIntegerField;
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
    DS_Comprobante: TDataSource;
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
    DS_DetalleFactura: TDataSource;
    DS_Sucursal: TDataSource;
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
    RelojStock: TTimer;
    DBGrid1: TDBGrid;
    Label41: TLabel;
    ZQ_PreventaProductos: TZQuery;
    DataSetProvider1: TDataSetProvider;
    ZQ_PreventaProductosID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_PreventaProductosID_COMPROBANTE: TIntegerField;
    ZQ_PreventaProductosID_PRODUCTO: TIntegerField;
    ZQ_PreventaProductosDETALLE: TStringField;
    ZQ_PreventaProductosCANTIDAD: TFloatField;
    ZQ_PreventaProductosIMPORTE_FINAL: TFloatField;
    ZQ_PreventaProductosPORC_DESCUENTO: TFloatField;
    ZQ_PreventaProductosBASE_IMPONIBLE: TFloatField;
    ZQ_PreventaProductosIMPORTE_UNITARIO: TFloatField;
    ZQ_PreventaProductosIMPUESTO_INTERNO: TFloatField;
    ZQ_PreventaProductosPORC_IVA: TFloatField;
    ZQ_PreventaProductosCANTIDAD_RECIBIDA: TFloatField;
    ZQ_PreventaProductosCANTIDAD_ALMACENADA: TFloatField;
    ZQ_PreventaProductosID_STOCK_PRODUCTO: TIntegerField;
    ZQ_PreventaProductosIMPORTE_VENTA: TFloatField;
    ZQ_PreventaProductosIMPORTE_IVA: TFloatField;
    ZQ_ComprobPreventa: TZQuery;
    ZQ_ComprobPreventaID_COMPROBANTE: TIntegerField;
    ZQ_ComprobPreventaID_SUCURSAL: TIntegerField;
    ZQ_ComprobPreventaID_PROVEEDOR: TIntegerField;
    ZQ_ComprobPreventaID_CLIENTE: TIntegerField;
    ZQ_ComprobPreventaID_TIPO_CPB: TIntegerField;
    ZQ_ComprobPreventaID_VENDEDOR: TIntegerField;
    ZQ_ComprobPreventaID_COMP_ESTADO: TIntegerField;
    ZQ_ComprobPreventaCODIGO: TStringField;
    ZQ_ComprobPreventaFECHA: TDateTimeField;
    ZQ_ComprobPreventaOBSERVACION: TStringField;
    ZQ_ComprobPreventaBASE_IMPONIBLE: TFloatField;
    ZQ_ComprobPreventaSALDO: TFloatField;
    ZQ_ComprobPreventaIMPORTE_TOTAL: TFloatField;
    ZQ_ComprobPreventaPORC_IVA: TFloatField;
    ZQ_ComprobPreventaIMPORTE_IVA: TFloatField;
    ZQ_ComprobPreventaPORC_DESCUENTO: TFloatField;
    ZQ_ComprobPreventaIMPORTE_DESCUENTO: TFloatField;
    ZQ_ComprobPreventaENCABEZADO: TStringField;
    ZQ_ComprobPreventaPIE: TStringField;
    ZQ_ComprobPreventaFECHA_COBRADA: TDateField;
    ZQ_ComprobPreventaFECHA_ENVIADA: TDateField;
    ZQ_ComprobPreventaFECHA_IMPRESA: TDateField;
    ZQ_ComprobPreventaFECHA_VENCIMIENTO: TDateField;
    ZQ_ComprobPreventaPUNTO_VENTA: TIntegerField;
    ZQ_ComprobPreventaNUMERO_CPB: TIntegerField;
    ZQ_ComprobPreventaFECHA_ANULADO: TDateField;
    ZQ_ComprobPreventaID_TIPO_IVA: TIntegerField;
    ZQ_ComprobPreventaID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_ComprobPreventaIMPORTE_VENTA: TFloatField;
    ZQ_ComprobPreventaIMAGEN: TBlobField;
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
    CD_ComprobantemontoRecibido: TCurrencyField;
    ZQ_FormasPagoGENERA_VUELTO: TStringField;
    CD_Fpago_efectivo: TStringField;
    Panel14: TPanel;
    Panel12: TPanel;
    Label42: TLabel;
    lblCambio: TLabel;
    Panel13: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    edRecibido: TDBEdit;
    CD_DetalleFacturaPRECIO1: TFloatField;
    CD_DetalleFacturaPRECIO2: TFloatField;
    CD_DetalleFacturaPRECIO3: TFloatField;
    CD_DetalleFacturaPRECIO4: TFloatField;
    CD_DetalleFacturaPRECIO5: TFloatField;
    CD_Fpago_nroPrecio: TStringField;
    ZQ_FormasPagoCOLUMNA_PRECIO: TIntegerField;
    CD_VentaFinal: TClientDataSet;
    CD_VentaFinal_medioPago: TStringField;
    CD_VentaFinalimporteVenta: TFloatField;
    CD_VentaFinalimporteDescuento: TFloatField;
    DS_VentaFinal: TDataSource;
    CD_VentaFinalid: TIntegerField;
    EKDbSuma3: TEKDbSuma;
    CD_VentaFinalgenera_vuelto: TStringField;
    lblCantProductos: TLabel;
    lblMontoProds: TLabel;
    ZQ_ProductosID_MEDIDA: TIntegerField;
    ZQ_ProductosID_PROD_CABECERA: TIntegerField;
    ZQ_ProductosSTOCK_MAX: TFloatField;
    ZQ_ProductosSTOCK_MIN: TFloatField;
    ZQ_ProductosLLEVAR_STOCK: TStringField;
    ZQ_ProductosPRECIO_COSTO_CIMPUESTOS: TFloatField;
    ZQ_ProductosIMPUESTO_ADICIONAL1: TFloatField;
    ZQ_ProductosIMPUESTO_ADICIONAL2: TFloatField;
    ZQ_ProductosBAJA: TStringField;
    ZQ_ProductosID_PRECIO: TIntegerField;
    ZQ_ProductosID_SUCURSAL: TIntegerField;
    ZQ_ProductosPRECIO_COSTO: TFloatField;
    ZQ_ProductosPRECIO_VENTA: TFloatField;
    ZQ_ProductosCOEF_GANANCIA: TFloatField;
    ZQ_ProductosCOEF_DESCUENTO: TFloatField;
    ZQ_ProductosIMPUESTO_INTERNO: TFloatField;
    ZQ_ProductosIMPUESTO_IVA: TFloatField;
    ZQ_ProductosPRECIO1: TFloatField;
    ZQ_ProductosPRECIO2: TFloatField;
    ZQ_ProductosPRECIO3: TFloatField;
    ZQ_ProductosPRECIO4: TFloatField;
    ZQ_ProductosPRECIO5: TFloatField;
    CD_DetalleFacturaIMPORTE_IF: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_IF: TFloatField;
    PanelCambiarFecha: TPanel;
    DateTimePicker_FechaCarga: TDateTimePicker;
    CheckBoxCambiarFecha: TCheckBox;
    ZQ_BuscarMedioPago: TZQuery;
    ZQ_BuscarMedioPagoID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_BuscarMedioPagoDESCRIPCION: TStringField;
    ZQ_BuscarMedioPagoBAJA: TStringField;
    ZQ_BuscarCuenta: TZQuery;
    ZQ_BuscarCuentaID_CUENTA: TIntegerField;
    ZQ_BuscarCuentaMEDIO_DEFECTO: TIntegerField;
    ZQ_BuscarCuentaCODIGO: TStringField;
    ZQ_BuscarCuentaNOMBRE_CUENTA: TStringField;
    ZQ_BuscarCuentaNRO_CTA_BANCARIA: TStringField;
    ZQ_BuscarCuentaBAJA: TStringField;
    ZQ_BuscarCuentaID_SUCURSAL: TIntegerField;
    ZQ_BuscarCuentaA_CTA_CORRIENTE: TStringField;
    ZQ_BuscarCuentaA_NOTA_CREDITO: TStringField;
    ZQ_BuscarCuentaMODIFICABLE: TStringField;
    CD_DetalleFacturaIMPORTE_IF_SINIVA: TFloatField;
    CD_DetalleFacturaIMPORTE_IVA_IF: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_IF_SINIVA: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_IVA_IF: TFloatField;
    ZQ_BuscarMedioPagoIF: TStringField;
    ZQ_BuscarMedioPagoDESC_REC: TFloatField;
    ZQ_BuscarMedioPagoCOD_CORTO: TIntegerField;
    ZQ_BuscarMedioPagoGENERA_VUELTO: TStringField;
    ZQ_BuscarMedioPagoCOLUMNA_PRECIO: TIntegerField;
    ZQ_BuscarMedioPagoMODIFICABLE: TStringField;
    CD_Fpago_fiscal: TStringField;
    CD_VentaFinalfiscal: TStringField;
    procedure btsalirClick(Sender: TObject);
    procedure BtBuscarProductoClick(Sender: TObject);
    function agregar(detalle: string;prod:integer):Boolean;
    procedure BtAgregarPagoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btQuitarProductoClick(Sender: TObject);
    procedure codBarrasEnter(Sender: TObject);
    procedure LimpiarCodigo;
    procedure codBarrasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure IdentificarCodigo();
    procedure LeerCodigo(id:string;cod:String);
    procedure bt_BuscarClienteClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtAceptarPagoClick(Sender: TObject);
    procedure BtCancelarPagoClick(Sender: TObject);
    procedure crearComprobante();
    procedure btIVAClick(Sender: TObject);
    procedure APagoExecute(Sender: TObject);
    procedure EKDbSuma1SumListChanged(Sender: TObject);
    procedure EKDbSuma2SumListChanged(Sender: TObject);
    function validarFPago():Boolean;
    procedure grabarPagos();
    procedure grabarDetallesFactura();
    procedure edCantidadExit(Sender: TObject);
    procedure calcularMonto();
    procedure btVendedorClick(Sender: TObject);
    procedure edImporteExit(Sender: TObject);
    function ProductoYaCargado(id:Integer):Boolean ;
    procedure DBGridFormaPagoColExit(Sender: TObject);
    function calcularSaldoCtaCorr():Double;
    procedure ZQ_ProductosAfterScroll(DataSet: TDataSet);
    procedure ANuevaFormaPagoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RelojStockTimer(Sender: TObject);
    procedure cargarClientePorDefecto();
    procedure Prorrateo();
    procedure RecalcularMontoPago();
    procedure APreventaExecute(Sender: TObject);
    procedure btPreventaClick(Sender: TObject);
    procedure VerLectorCB(sino: Boolean);
    procedure edDescExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure btnAceptarProdClick(Sender: TObject);
    procedure btnCancelarProdClick(Sender: TObject);
    procedure modoLecturaProd();
    procedure modoEscrituraProd();
    procedure CD_DetalleFacturaAfterScroll(DataSet: TDataSet);
    procedure EditarProdClick(Sender: TObject);
    procedure edImporteFinalExit(Sender: TObject);
    procedure edImporteFinalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function guardarComprobante():Boolean;
    procedure btnCancelarVentaClick(Sender: TObject);
    procedure edPorcDctoTotalExit(Sender: TObject);
    procedure recalcularBoleta();
    procedure btnConfirmarVentaClick(Sender: TObject);
    function validarBoleta():Boolean ;
    procedure btnQuitarPagoClick(Sender: TObject);
    procedure btBuscProdClick(Sender: TObject);
    procedure cargarPreventa();
    procedure edRecibidoExit(Sender: TObject);
    procedure calcularEfectivo();
    procedure cancelarProducto();
    procedure ProrrateoFiscal();
    procedure DateTimePicker_FechaCargaChange(Sender: TObject);
    procedure CheckBoxCambiarFechaClick(Sender: TObject);
    procedure buscarFormaPago();
    procedure buscarCuenta();
    procedure ABuscarExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure ATipoIVAExecute(Sender: TObject);
    procedure AClienteExecute(Sender: TObject);
    procedure ASalirExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure AVendedorExecute(Sender: TObject);
    procedure ANuevoProdExecute(Sender: TObject);
    function imprimirFiscal(comprob:Integer; tipoAccion: string):Boolean ;
    procedure leerSistemaIni;
  private
    vsel: TFBuscarProductoStock;
    vsel2: TFBuscarPersona;
    vsel3: TFBuscarPersona;
    vsel4: TFPreventa;
    procedure OnSelProd;
    procedure OnSelPers;
    procedure OnSelVendedor;
    procedure OnSelPreventa;
    { Private declarations }
  public


    { Public declarations }
  end;

var
  FCajero: TFCajero;
  punitoriosacob, acumulado,ClienteIVA,descCliente,acumuladoIVA,
  acumFpagoReal,acumFpago,acumEfectivo,acumuladoProd,totFiscal : double;
  acumPrecio1,acumPrecio2,acumPrecio3,acumPrecio4,acumPrecio5:double;
  coefPrecio1,coefPrecio2,coefPrecio3,coefPrecio4,coefPrecio5:double;
  IdProd:String;
  cliente,IdVendedor,cajero,IDClienteIVA,idSucursal:Integer;
  modoCargaPrevia:Boolean;
  importeVenta,importeIF:Double;

  //----Fiscal--------
  Impresora : string;
  Ruta : String;
const
  abmComprobante='ABM Factura-Cajero';

implementation

uses UDM, UPrincipal,strutils, EKModelo, Math, UUtilidades;

{$R *.dfm}

procedure TFCajero.leerSistemaIni;
var
  Ini : TIniFile;
begin
  Ini := TIniFile.Create( '.\SISTEMA.INI' );
  Ruta := Ini.ReadString('IMPRESORA', 'RutaImpresora', '');
  Impresora := Ini.ReadString('IMPRESORA', 'TipoImpresora', '');
  Ini.Free;
end;

procedure TFCajero.VerLectorCB(sino: Boolean);
begin
  PLeerCodigo.Visible:=sino;
  PLeerCodigo.BringToFront;
  dm.centrarPanel(FCajero, PLeerCodigo);
  PanelContenedorDerecha.Enabled:=not(PLeerCodigo.Visible);
end;


procedure TFCajero.IdentificarCodigo();
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


procedure TFCajero.LimpiarCodigo;
begin
  ZQ_Productos.Close;
  codBarras.Clear;
  if (CD_DetalleFactura.State<>dsBrowse) then
   begin
      CD_DetalleFacturaCANTIDAD.AsFloat:=1;
      CD_DetalleFacturaPORC_DESCUENTO.AsFloat:=0;
      CD_DetalleFacturaIMPORTE_FINAL.AsFloat:=0;
   end;
  RelojStock.Enabled:=false;
  //lblSinStock.Visible:=False;
  lblMaxVenta.Visible:=False;
end;


procedure TFCajero.LeerCodigo(id:string;cod:String);
var
  f1, f2, fecha: tdate;
  punit: double;
  diasm: integer;
begin
  RelojStock.Enabled:=false;
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
        ZQ_Productos.sql[15]:=Format('and(p.cod_corto=%s)',[IdProd]);
        ZQ_Productos.Open;
      end;

     if id='I' then
      begin
        ZQ_Productos.Close;
        ZQ_Productos.sql[15]:=Format('and(p.id_producto=%s)',[IdProd]);
        ZQ_Productos.Open;
      end;

     //Codigo de Barras
     if id='B' then
       begin
        ZQ_Productos.Close;
        ZQ_Productos.sql[15]:=Format('and(p.codigo_barra=%s)',[cod]);
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


procedure TFCajero.calcularMonto();
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


procedure TFCajero.edCantidadExit(Sender: TObject);
begin
 if (not(ZQ_Productos.IsEmpty)and(CD_DetalleFactura.State in [dsInsert,dsEdit])) then
    calcularMonto();
end;


procedure TFCajero.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose:= FPrincipal.cerrar_ventana(abmComprobante);
end;


procedure TFCajero.FormCreate(Sender: TObject);
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
  CD_Fpago.CreateDataSet;
  CD_VentaFinal.CreateDataSet;
  dm.EKModelo.abrir(ZQ_FormasPago);
  dm.EKModelo.abrir(ZQ_DetalleProd);
  dm.EKModelo.abrir(ZQ_Cuentas);
  Cliente:=-1;
  IdVendedor:=-1;
  descCliente:=0;
  ClienteIVA:=0;
  IDClienteIVA:=0;
  crearComprobante();
  cargarClientePorDefecto();
  modoCargaPrevia:=False;
  DS_Sucursal.DataSet:=dm.ZQ_Sucursal;
  DBImage1.DataField:='LOGO';

  modoLecturaProd();
  PConfirmarVenta.Visible:=False;
  DM.ZQ_Sucursal.Close;
  DM.ZQ_Sucursal.ParamByName('id_sucursal').AsInteger:=idSucursal;
  DM.ZQ_Sucursal.Open;
  edImagen.Visible:=not(ZQ_ProductosIMAGEN.IsNull);
  DBImage1.Visible:=True;
  DBImage1.BringToFront;
  
  FPrincipal.Iconos_Menu_32.GetBitmap(1, btnConfirmarVenta.Glyph);
  FPrincipal.Iconos_Menu_32.GetBitmap(0, btnCancelarVenta.Glyph);

  PanelCambiarFecha.Visible:= false;
  CheckBoxCambiarFecha.Checked:= false;
  if dm.EKUsrLogin.PermisoAccion('CAMBIAR_FECHA_CAJERO') then
  begin
    PanelCambiarFecha.Visible:= true;
    DateTimePicker_FechaCarga.DateTime:= dm.EKModelo.FechayHora;
  end
end;


procedure TFCajero.crearComprobante;
begin
  punitoriosacob:=0;
  acumulado:=0;
  acumuladoIVA:=0;
  acumuladoProd:=0;
  acumFpago:=0;
  acumFpagoReal:=0;
  acumPrecio1:= 0;
  acumPrecio2:=  0;
  acumPrecio3:=  0;
  acumPrecio4:=  0;
  acumPrecio5:=  0;
  IdProd:='';
  totFiscal:=0;
  RelojStock.Enabled:=false;
  lblMaxVenta.Visible:=False;

  EKDbSuma1.SumCollection[0].SumValue := 0;
  EKDbSuma1.SumCollection[1].SumValue := 0;
  EKDbSuma1.SumCollection[2].SumValue := 0;
  EKDbSuma1.SumCollection[3].SumValue := 0;
  EKDbSuma1.SumCollection[4].SumValue := 0;
  EKDbSuma1.SumCollection[5].SumValue := 0;
  EKDbSuma1.SumCollection[6].SumValue := 0;
  EKDbSuma1.SumCollection[7].SumValue := 0;

  EKDbSuma2.SumCollection[0].SumValue := 0;
  EKDbSuma2.SumCollection[1].SumValue := 0;

  CD_Comprobante.EmptyDataSet;
  CD_Comprobante.Append;
  CD_ComprobanteID_SUCURSAL.AsInteger:=SUCURSAL_LOGUEO;
  CD_ComprobanteID_CLIENTE.AsInteger:=cliente;
  CD_ComprobanteID_TIPO_CPB.AsInteger:=11; //Factura
  CD_ComprobanteID_VENDEDOR.AsInteger:=IdVendedor;
  CD_ComprobanteID_COMP_ESTADO.AsInteger:=ESTADO_SIN_CONFIRMAR;
  if CheckBoxCambiarFecha.Checked then
    CD_ComprobanteFECHA.AsDateTime:= DateTimePicker_FechaCarga.DateTime
  else
    CD_ComprobanteFECHA.AsDateTime:=dm.EKModelo.FechayHora();
  CD_ComprobanteOBSERVACION.AsString:='';
  CD_ComprobanteBASE_IMPONIBLE.AsFloat:=0;
  CD_ComprobanteSALDO.AsFloat:=0;
  CD_ComprobanteIMPORTE_TOTAL.AsFloat:=0;
  CD_ComprobantePORC_IVA.AsFloat:=ClienteIVA;
  CD_ComprobanteIMPORTE_IVA.AsInteger:=0;

  if descCliente<0 then descCliente:=descCliente*100;

  CD_ComprobantePORC_DESCUENTO.AsFloat:=descCliente/100;
  CD_ComprobanteIMPORTE_DESCUENTO.AsInteger:=0;
  CD_ComprobanteENCABEZADO.AsString:='';
  CD_ComprobantePIE.AsString:='';
  CD_ComprobanteFECHA_COBRADA.Clear;
  CD_ComprobanteFECHA_ENVIADA.Clear;
  CD_ComprobanteFECHA_IMPRESA.Clear;
  CD_ComprobanteFECHA_VENCIMIENTO.Clear;

  lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
  lblMontoProds.Caption :='Total Productos: '+ FormatFloat('$ ##,###,##0.00 ', EKDbSuma1.SumCollection[0].SumValue);
  lblTotAPagar.Caption :='Total Venta: '+ FormatFloat('$ ##,###,##0.00 ', 0);
  modoCargaPrevia:=False;
end;


procedure TFCajero.cargarClientePorDefecto();
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


procedure TFCajero.ZQ_ProductosAfterScroll(DataSet: TDataSet);
begin
  edImagen.Visible:=not((ZQ_ProductosIMAGEN.IsNull) or (ZQ_ProductosIMAGEN.AsString=''));
  edImagen.BringToFront;
end;


procedure TFCajero.RelojStockTimer(Sender: TObject);
begin
// lblSinStock.Visible:=not(lblSinStock.Visible);
end;


procedure TFCajero.codBarrasEnter(Sender: TObject);
begin
  LimpiarCodigo;
end;


procedure TFCajero.codBarrasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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


procedure TFCajero.btsalirClick(Sender: TObject);
begin
  close;
end;


procedure TFCajero.FormShow(Sender: TObject);
begin
//ANuevoProd.Execute;
end;


procedure TFCajero.bt_BuscarClienteClick(Sender: TObject);
begin
//  if PanelDetalleProducto.Enabled or PConfirmarVenta.Visible then
//    exit;
    
  if modoCargaPrevia then
  begin
    Application.MessageBox('No puede modificar una venta ya cerrada.','Carga Venta',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  if (CD_DetalleFactura.State = dsBrowse) then
  begin
    if not Assigned(vsel2) then
      vsel2:= TFBuscarPersona.Create(nil);
      
    vsel2.configRelacion(RELACION_CLIENTE);
    vsel2.EKBusqueda.Abrir;
    vsel2.OnSeleccionar := OnSelPers;
    vsel2.ShowModal;
  end;
end;


procedure TFCajero.OnSelPers;
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
      CD_ComprobantePORC_DESCUENTO.AsFloat:=descCliente;
     end;
     vsel2.Close;
end;


procedure TFCajero.OnSelVendedor;
begin
   if not(vsel3.ZQ_Personas.IsEmpty) then
      begin
        ZQ_Personas.Locate('id_persona',vsel3.ZQ_PersonasID_PERSONA.AsInteger,[]);
        IdVendedor:=vsel3.ZQ_PersonasID_PERSONA.AsInteger;
        CD_ComprobanteID_VENDEDOR.AsInteger:=IdVendedor;
      end;
      vsel3.Close;
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
      exit;
    end;
    CD_DetalleFactura.Filtered := false;
end;


procedure TFCajero.edDescExit(Sender: TObject);
begin
if (not(ZQ_Productos.IsEmpty)and(CD_DetalleFactura.State in [dsInsert,dsEdit])) then
    calcularMonto();
end;


procedure TFCajero.edImporteExit(Sender: TObject);
begin
  edCantidad.SetFocus;
end;


procedure TFCajero.BtAgregarPagoClick(Sender: TObject);
begin
//  if PConfirmarVenta.Visible then
//    exit;

  if modoCargaPrevia then
  begin
    Application.MessageBox('No puede modificar una venta ya cerrada.','Carga Venta',MB_OK+MB_ICONINFORMATION);
    exit;
  end;
 
  if (CD_DetalleFactura.State<>dsBrowse) then
    exit;

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


procedure TFCajero.BtVendedorClick(Sender: TObject);
begin
//  if PanelDetalleProducto.Enabled or PConfirmarVenta.Visible then
//    exit;
    
  if (CD_DetalleFactura.State=dsBrowse) then
  begin
    if not Assigned(vsel3) then
      vsel3:= TFBuscarPersona.Create(nil);

    vsel3.configRelacion(RELACION_EMPLEADO);
    vsel3.EKBusqueda.Abrir;
    vsel3.OnSeleccionar := OnSelVendedor;
    vsel3.ShowModal;
  end;
end;


function TFCajero.agregar(detalle: string;prod:integer):Boolean;
begin
 Result:=False;
 if not(ProductoYaCargado(prod)) then
    begin
        CD_DetalleFactura.Append;
        CD_DetalleFacturaID_PRODUCTO.AsInteger:=prod;
        CD_DetalleFacturaDETALLE.AsString:=detalle;
        CD_DetalleFacturaCANTIDAD.AsFloat:=1;
        CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat:=ZQ_ProductosPRECIO_VENTA.AsFloat;
        CD_DetalleFacturaPORC_DESCUENTO.AsFloat:=(ZQ_ProductosCOEF_DESCUENTO.AsFloat*100);
        CD_DetalleFacturaIMPUESTO_INTERNO.AsFloat:=ZQ_ProductosIMPUESTO_INTERNO.AsFloat;
        CD_DetalleFacturaPORC_IVA.AsFloat:=ZQ_ProductosIMPUESTO_IVA.AsFloat;
        CD_DetalleFacturaBASE_IMPONIBLE.AsFloat:=(CD_DetalleFacturaCANTIDAD.AsInteger*CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat);
        CD_DetalleFacturaIMPORTE_FINAL.AsFloat:=CD_DetalleFacturaBASE_IMPONIBLE.AsFloat;
        CD_DetalleFacturaIMPORTE_IVA.AsFloat:=CD_DetalleFacturaPORC_IVA.AsFloat * CD_DetalleFacturaIMPORTE_FINAL.AsFloat;
        CD_DetalleFacturaID_PROD_STOCK.AsInteger:=ZQ_ProductosID_STOCK_PRODUCTO.AsInteger;

        CD_DetalleFacturaPRECIO1.AsFloat:=ZQ_ProductosPRECIO1.AsFloat;
        CD_DetalleFacturaPRECIO2.AsFloat:=ZQ_ProductosPRECIO2.AsFloat;
        CD_DetalleFacturaPRECIO3.AsFloat:=ZQ_ProductosPRECIO3.AsFloat;
        CD_DetalleFacturaPRECIO4.AsFloat:=ZQ_ProductosPRECIO4.AsFloat;
        CD_DetalleFacturaPRECIO5.AsFloat:=ZQ_ProductosPRECIO5.AsFloat;

        modoEscrituraProd();
        Result:=True;
    end
end;


procedure TFCajero.SpeedButton1Click(Sender: TObject);
begin
  BtAgregarPago.Click;
end;


procedure TFCajero.Image1DblClick(Sender: TObject);
begin
   SpeedButton1.Click;
end;


procedure TFCajero.btnAceptarProdClick(Sender: TObject);
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
    CD_DetalleFacturaIMPORTE_VENTA.AsFloat:=CD_DetalleFacturaIMPORTE_FINAL.AsFloat;
    CD_DetalleFacturaIMPORTE_IVA.AsFloat:=CD_DetalleFacturaPORC_IVA.AsFloat * CD_DetalleFacturaIMPORTE_VENTA.AsFloat;
    CD_DetalleFactura.Post;
    lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
    lblMontoProds.Caption :='Total Productos: '+ FormatFloat('$ ##,###,##0.00 ', EKDbSuma1.SumCollection[0].SumValue);
    modoLecturaProd();
    DBGridListadoProductos.SetFocus;
   end
  else
   begin
    Application.MessageBox('El stock actual del producto es insuficiente para la cantidad ingresada.', 'Atención');
    edCantidad.SetFocus;
    exit;
   end;

end;


procedure TFCajero.btnCancelarProdClick(Sender: TObject);
begin
  if (CD_DetalleFactura.State in [dsInsert,dsEdit]) then
    CD_DetalleFactura.Cancel;
  modoLecturaProd();
  DBGridListadoProductos.SetFocus;
end;


procedure TFCajero.modoLecturaProd();
begin
   VerLectorCB(false);
   PanelProductosYFPago.Enabled:=True;
   grupoVertical.Enabled:=True;
   PanelDetalleProducto.Enabled:=False;
   PanelDetalleProducto.Color:=PanelProductosYFPago.Color;
end;


procedure TFCajero.modoEscrituraProd();
begin
   VerLectorCB(false);
   PanelDetalleProducto.Enabled:=True;
   PanelProductosYFPago.Enabled:=False;
   grupoVertical.Enabled:=False;
   PanelDetalleProducto.Color:=$0080FFFF;
   edCantidad.SetFocus;
end;


procedure TFCajero.btnQuitarPagoClick(Sender: TObject);
begin
    if not(CD_Fpago.IsEmpty) then
       CD_Fpago.Delete;
end;


procedure TFCajero.CD_DetalleFacturaAfterScroll(DataSet: TDataSet);
begin
lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
lblMontoProds.Caption :='Total Productos: '+ FormatFloat('$ ##,###,##0.00 ', EKDbSuma1.SumCollection[0].SumValue);
end;


procedure TFCajero.EditarProdClick(Sender: TObject);
begin
if modoCargaPrevia then
 begin
    Application.MessageBox('No puede modificar una venta ya cerrada.','Carga Venta',MB_OK+MB_ICONINFORMATION);
    exit;
 end;
 
  if not(CD_DetalleFactura.IsEmpty) then
   begin
   CD_DetalleFactura.Edit;
   modoEscrituraProd();
   edCantidad.SetFocus;
   end

end;


procedure TFCajero.BtBuscarProductoClick(Sender: TObject);
begin
//  if PanelDetalleProducto.Enabled or PConfirmarVenta.Visible then
//    exit;

  if modoCargaPrevia then
  begin
    Application.MessageBox('No puede modificar una venta ya cerrada.','Carga Venta',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  if (CD_DetalleFactura.State<>dsBrowse) then
    exit;

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


procedure TFCajero.OnSelProd;
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


procedure TFCajero.btIVAClick(Sender: TObject);
begin
//  if PanelDetalleProducto.Enabled or PConfirmarVenta.Visible then
//    exit;
    
  if modoCargaPrevia then
  begin
    Application.MessageBox('No puede modificar una venta ya cerrada.','Carga Venta',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  if (CD_DetalleFactura.State=dsBrowse) then
    if (CD_Comprobante.State=dsInsert) then
      if EKListadoIVA.Buscar then
        CD_ComprobanteID_TIPO_IVA.AsInteger:=StrToInt(EKListadoIVA.Resultado);
end;


procedure TFCajero.edImporteFinalExit(Sender: TObject);
begin
if CD_DetalleFactura.State in [dsInsert,dsEdit] then
    edCantidad.SetFocus;
end;


procedure TFCajero.edImporteFinalKeyDown(Sender: TObject;
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


procedure TFCajero.BtCancelarPagoClick(Sender: TObject);
begin
//  if PanelDetalleProducto.Enabled or PConfirmarVenta.Visible then
//    exit;
    
  if (CD_DetalleFactura.State=dsBrowse) then
    if (application.MessageBox(pchar('Desea Cancelar la Boleta Actual y quitar todos sus Productos?'), 'Borrar Productos', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
      cancelarProducto();
end;


procedure TFCajero.BtAceptarPagoClick(Sender: TObject);
begin
//  if PanelDetalleProducto.Enabled or PConfirmarVenta.Visible then
//    exit;

  if not(validarFPago()) then
    exit;

  if validarBoleta() then
  begin
    PConfirmarVenta.Visible:=True;
    PConfirmarVenta.BringToFront;
    dm.centrarPanel(FCajero, PConfirmarVenta);
    PanelContenedorDerecha.Enabled:=not(PConfirmarVenta.Visible);
    GrupoGuardarCancelar.Enabled:=False;
    grupoVertical.Enabled:=False;
    CD_ComprobantemontoRecibido.AsFloat:=0;
    recalcularBoleta();
    edPorcDctoTotal.SetFocus;
  end;
end;


procedure TFCajero.EKDbSuma1SumListChanged(Sender: TObject);
begin
  acumulado := EKDbSuma1.SumCollection[0].SumValue;
  acumuladoProd := EKDbSuma1.SumCollection[7].SumValue;
  acumuladoIVA := EKDbSuma1.SumCollection[1].SumValue;

  acumPrecio1:= EKDbSuma1.SumCollection[2].SumValue;
  acumPrecio2:= EKDbSuma1.SumCollection[3].SumValue;
  acumPrecio3:= EKDbSuma1.SumCollection[4].SumValue;
  acumPrecio4:= EKDbSuma1.SumCollection[5].SumValue;
  acumPrecio5:= EKDbSuma1.SumCollection[6].SumValue;

  coefPrecio1:= 1;
  coefPrecio2:= 1;
  coefPrecio3:= 1;
  coefPrecio4:= 1;
  coefPrecio5:= 1;

  if acumulado>0 then
  begin
    coefPrecio1:= acumPrecio1/acumuladoProd;
    coefPrecio2:= acumPrecio2/acumuladoProd;
    coefPrecio3:= acumPrecio3/acumuladoProd;
    coefPrecio4:= acumPrecio4/acumuladoProd;
    coefPrecio5:= acumPrecio5/acumuladoProd;
  end;

  if coefPrecio1<0 then
     coefPrecio1:= 1;
  if coefPrecio2<0 then
     coefPrecio2:= 1;
  if coefPrecio3<0 then
     coefPrecio3:= 1;
  if coefPrecio4<0 then
     coefPrecio4:= 1;
  if coefPrecio5<0 then
     coefPrecio5:= 1;

  lblTotAPagar.Caption :='Total Venta: '+ FormatFloat('$ ##,###,##0.00 ', acumulado);

end;


function TFCajero.guardarComprobante():Boolean;
var
comprobante : integer;
begin

  Result:=False;
  //Hacer las validaciones correspondientes

  if not(dm.EKModelo.verificar_transaccion(abmComprobante)) then
    if dm.EKModelo.iniciar_transaccion(abmComprobante,[ZQ_Comprobante,ZQ_Comprobante_FormaPago,ZQ_ComprobanteDetalle,ZQ_ComprobPreventa]) then
    begin
      CD_Comprobante.Post;

      ZQ_Comprobante.Append;
      ZSP_Comprobante.Active:=True;
      ZQ_ComprobanteID_COMPROBANTE.AsInteger:=ZSP_ComprobanteID.AsInteger;
      ZQ_ComprobanteCODIGO.AsString:=ZSP_ComprobanteCODIGO.AsString;
      ZSP_Comprobante.Active:=False;
      comprobante := ZQ_ComprobanteID_COMPROBANTE.AsInteger;
      ZQ_ComprobanteID_SUCURSAL.Value:=CD_ComprobanteID_SUCURSAL.Value;
      ZQ_ComprobanteID_PROVEEDOR.Clear;
      ZQ_ComprobanteID_CLIENTE.AsInteger:=CD_ComprobanteID_CLIENTE.AsInteger;
      ZQ_ComprobanteID_TIPO_CPB.value:=CD_ComprobanteID_TIPO_CPB.Value;
      ZQ_ComprobanteID_VENDEDOR.Value:=CD_ComprobanteID_VENDEDOR.Value;
      ZQ_ComprobanteID_COMP_ESTADO.Value:=CD_ComprobanteID_COMP_ESTADO.Value;;
      ZQ_ComprobanteFECHA.AsDateTime:=CD_ComprobanteFECHA.AsDateTime;
      ZQ_ComprobanteFECHA_COBRADA.AsDateTime:= ZQ_ComprobanteFECHA.AsDateTime; //antes tenia la del DM.EKMODELO
      ZQ_ComprobanteOBSERVACION.Value:=CD_ComprobanteOBSERVACION.Value;
      ZQ_ComprobanteBASE_IMPONIBLE.Value:=CD_ComprobanteBASE_IMPONIBLE.Value;
      ZQ_ComprobanteSALDO.AsFloat:=CD_ComprobanteSALDO.Value;
      ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:=CD_ComprobanteIMPORTE_TOTAL.Value;
      ZQ_ComprobantePORC_IVA.AsFloat:=CD_ComprobantePORC_IVA.Value;
      ZQ_ComprobanteIMPORTE_IVA.AsFloat:=CD_ComprobanteIMPORTE_IVA.AsFloat;
      ZQ_ComprobantePORC_DESCUENTO.AsFloat:=CD_ComprobantePORC_DESCUENTO.AsFloat/100;
      ZQ_ComprobanteIMPORTE_DESCUENTO.AsFloat:=CD_ComprobanteIMPORTE_DESCUENTO.AsFloat;
      ZQ_ComprobanteIMPORTE_VENTA.AsFloat := CD_ComprobanteIMPORTE_VENTA.AsFloat;
      ZQ_ComprobanteIMPORTE_IVA.AsFloat := CD_ComprobanteIMPORTE_IVA.AsFloat;
      ZQ_ComprobanteENCABEZADO.AsString:=CD_ComprobanteENCABEZADO.AsString;
      ZQ_ComprobantePIE.AsString:=CD_ComprobantePIE.AsString;
      ZQ_ComprobanteID_TIPO_IVA.AsInteger:=CD_ComprobanteID_TIPO_IVA.AsInteger;
      ZQ_ComprobanteFECHA_ENVIADA.Clear;
      ZQ_ComprobanteFECHA_IMPRESA.Clear;
      ZQ_ComprobanteFECHA_VENCIMIENTO.Clear;
      ZQ_Comprobante.Post;

      if modoCargaPrevia then
      begin
        ZQ_ComprobPreventa.Edit;
        ZQ_ComprobPreventaFECHA_COBRADA.AsDateTime:=dm.EKModelo.FechayHora();
        ZQ_ComprobPreventaID_COMP_ESTADO.AsInteger:=ESTADO_CONFIRMADO;
      end;

      grabarDetallesFactura();
      grabarPagos();
    end;

   try
     begin
      if not(dm.EKModelo.finalizar_transaccion(abmComprobante)) then
       begin
          dm.EKModelo.cancelar_transaccion(abmComprobante);
          Application.MessageBox('No se pudo crear el Comprobante', 'Atención');
          dm.EKModelo.cancelar_transaccion(abmComprobante);
       end
      else
        begin
          Application.MessageBox(PChar(Format('Se creó el Comprobante Nro: %s',[ZQ_ComprobanteCODIGO.AsString])),'Atención');

          // Si se guarda ok el comprobante OK y hay formas de pago que van a la fiscal
          // llamo al proc que imprime en fiscal, sino solo guarda el comprob.
          if (totFiscal>0) then
          begin
           imprimirFiscal(comprobante, 'F');
          end;

          CD_Fpago.EmptyDataSet;
          CD_DetalleFactura.EmptyDataSet;
          PanelContenedorDerecha.Enabled:=True;
          DBGridListadoProductos.SetFocus;
          PConfirmarVenta.Visible:=False;
          GrupoGuardarCancelar.Enabled:=true;
          grupoVertical.Enabled:=true;
          LimpiarCodigo();
          crearComprobante();
          CD_ComprobanteID_CLIENTE.AsInteger:=cliente;
          CD_ComprobanteID_TIPO_IVA.AsInteger:=IDClienteIVA;
          Result:=True;
        end;
     end
   except
    begin
        Application.MessageBox('No se pudo crear el Comprobante', 'Atención');
    end;
   end;
end;


procedure TFCajero.btnCancelarVentaClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(abmComprobante) then
     dm.EKModelo.cancelar_transaccion(abmComprobante); 
  CD_Comprobante.Edit;
  PConfirmarVenta.Visible:=False;
  PanelContenedorDerecha.Enabled:=not(PConfirmarVenta.Visible);
  GrupoGuardarCancelar.Enabled:=True;
  grupoVertical.Enabled:=True;
  DBGridListadoProductos.SetFocus;
end;


procedure TFCajero.grabarDetallesFactura;
begin
    Prorrateo();
    ProrrateoFiscal();
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
        ZQ_ComprobanteDetalleIMPORTE_IVA.AsFloat:= CD_DetalleFacturaIMPORTE_IVA.AsFloat;
        ZQ_ComprobanteDetalleIMPORTE_VENTA.AsFloat:= CD_DetalleFacturaIMPORTE_VENTA.AsFloat;
        ZQ_ComprobanteDetalleIMPORTE_IF.AsFloat:= CD_DetalleFacturaIMPORTE_IF.AsFloat;
        ZQ_ComprobanteDetalleIMPORTE_IVA_IF.AsFloat:=ZQ_ComprobantePORC_IVA.AsFloat * ZQ_ComprobanteDetalleIMPORTE_IF.AsFloat;
        ZQ_ComprobanteDetalleIMPORTE_IF_SINIVA.AsFloat:= ZQ_ComprobanteDetalleIMPORTE_IF.AsFloat-ZQ_ComprobanteDetalleIMPORTE_IVA_IF.AsFloat;
        ZQ_ComprobanteDetalleID_STOCK_PRODUCTO.AsInteger:=CD_DetalleFacturaID_PROD_STOCK.AsInteger;
        ZQ_ComprobanteDetalle.Post;

        CD_DetalleFactura.Next;
      end;
end;


procedure TFCajero.edPorcDctoTotalExit(Sender: TObject);
begin
    recalcularBoleta();
    edRecibido.SetFocus;
end;


procedure TFCajero.recalcularBoleta;
begin

  CD_ComprobanteIMPORTE_TOTAL.AsFloat:=acumFpagoReal;
  CD_ComprobanteIMPORTE_DESCUENTO.AsFloat:=CD_ComprobanteIMPORTE_TOTAL.AsFloat*CD_ComprobantePORC_DESCUENTO.AsFloat/100;

  CD_ComprobanteSALDO.AsFloat:=0;
  CD_ComprobanteIMPORTE_VENTA.AsFloat := CD_ComprobanteIMPORTE_TOTAL.AsFloat-CD_ComprobanteIMPORTE_DESCUENTO.AsFloat;
  CD_ComprobanteIMPORTE_IVA.AsFloat:=CD_ComprobanteIMPORTE_VENTA.AsFloat*CD_ComprobantePORC_IVA.AsFloat;
  lblVtaTotal.Caption:= FormatFloat('$ ##,###,##0.00 ', CD_ComprobanteIMPORTE_VENTA.AsFloat);
  lblVtaIVA.Caption:= FormatFloat('$ ##,###,##0.00 ', CD_ComprobanteIMPORTE_IVA.AsFloat);
  lblVtaDesc.Caption:= FormatFloat('$ ##,###,##0.00 ',CD_ComprobanteIMPORTE_DESCUENTO.AsFloat);
  lblVtaSubtotal.Caption:= FormatFloat('$ ##,###,##0.00 ', CD_ComprobanteIMPORTE_TOTAL.AsFloat-CD_ComprobanteIMPORTE_IVA.AsFloat);

  CD_VentaFinal.EmptyDataSet;
  CD_Fpago.First;

  EKDbSuma3.SumCollection[1].SumValue:=0;

  while not(CD_Fpago.Eof) do
   begin
     CD_VentaFinal.Append;
     CD_VentaFinal_medioPago.AsString:=CD_FpagomedioPago.AsString;
     CD_VentaFinalimporteVenta.AsFloat:=CD_Fpago_importeVenta.AsFloat;
     CD_VentaFinalimporteDescuento.AsFloat:=CD_VentaFinalimporteVenta.AsFloat-(CD_VentaFinalimporteVenta.AsFloat*CD_ComprobantePORC_DESCUENTO.AsFloat/100);
     CD_VentaFinalid.AsInteger:=CD_FpagoID_COMPROB_FP.AsInteger;
     CD_VentaFinalgenera_vuelto.AsString:=CD_Fpago_efectivo.AsString;
     CD_VentaFinalfiscal.AsString:=CD_Fpago_fiscal.AsString;
     CD_VentaFinal.Post;

     CD_Fpago.Next;
   end;

  RecalcularMontoPago();

  EKDbSuma3.RecalcAll;
  calcularEfectivo();
  importeVenta:=CD_ComprobanteIMPORTE_VENTA.AsFloat;
end;


procedure TFCajero.btnConfirmarVentaClick(Sender: TObject);
begin
  guardarComprobante()
end;


function TFCajero.validarBoleta: Boolean;
begin
    //asas
    Result:=True;

  if (acumulado<=0) then
  begin
    Application.MessageBox('El monto final debe ser superior a $ 0.00, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    result := false;
    exit;
  end;

  if (cliente < 0)  then
  begin
    Application.MessageBox('Debe seleccionar un Cliente, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    result := false;
    exit;
  end;

  if (IdVendedor < 0)  then
  begin
    Application.MessageBox('Debe seleccionar un Vendedor, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    result := false;
    exit;
   end;

  if CD_DetalleFactura.IsEmpty then
   begin
    Application.MessageBox('Debe cargar al menos un Producto, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    result := false;
    exit;
   end;

  if CD_ComprobanteID_TIPO_IVA.IsNull then
   begin
    Application.MessageBox('Debe cargar el tipo de IVA, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    result := false;
    exit;
   end;
end;


procedure TFCajero.btPreventaClick(Sender: TObject);
begin
//  if PanelDetalleProducto.Enabled or PConfirmarVenta.Visible then
//    exit;
    
  if modoCargaPrevia then
  begin
    Application.MessageBox('No puede modificar una venta ya cerrada.','Carga Venta',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  if not(CD_DetalleFactura.IsEmpty) then
  begin
    Application.MessageBox('Debe cargar la Venta en un Comprobante vacio.'+
                  char(13)+'(Borre los productos previamente cargados).','Carga de PreVenta ',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  if not Assigned(vsel) then
    vsel4:= TFPreventa.Create(nil);
  vsel4.OnSeleccionar := OnSelPreventa;
  vsel4.ShowModal;
end;


procedure TFCajero.OnSelPreventa;
begin
 if not vsel4.ZQ_Comprobante.IsEmpty then
  begin
  if vsel4.ZQ_ComprobanteVENCIDA.AsString='S' then
  begin
    Application.MessageBox('No puede cargar una venta Vencida.','Carga Venta',MB_OK+MB_ICONINFORMATION);
    exit;
   end
  else
    if (CD_DetalleFactura.IsEmpty) then
      begin
        cargarPreventa();
        DBGridFormaPago.SetFocus;
      end;
  end;
  vsel4.Close;
end;


procedure TFCajero.btQuitarProductoClick(Sender: TObject);
begin
if modoCargaPrevia then
 begin
    Application.MessageBox('No puede modificar una venta ya cerrada.','Carga Venta',MB_OK+MB_ICONINFORMATION);
    exit;
 end;

if not(CD_DetalleFactura.IsEmpty) then
  begin
    CD_DetalleFactura.Delete;
    lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
    lblMontoProds.Caption :='Total Productos: '+ FormatFloat('$ ##,###,##0.00 ', EKDbSuma1.SumCollection[0].SumValue);
  end;
end;



procedure TFCajero.APagoExecute(Sender: TObject);
begin
  BtAgregarPago.Click;
end;


procedure TFCajero.EKDbSuma2SumListChanged(Sender: TObject);
begin
  recalcularMontoPago();
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

  if (acumFpago <= 0) or (CompareValue(acumulado, acumFpago, 0.001) <> 0) then
  begin
    Application.MessageBox('El monto en las Formas de Pago es incorrecto, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    result := false;
    exit;
  end;

  //Saco las formas de pago que sean con importe=0 o sale si no tiene cuenta(al cuete)
  CD_Fpago.First;
  while not(CD_Fpago.Eof) do
   begin
     if CD_Fpago_importeVenta.AsFloat<=0 then
      CD_Fpago.Delete;
     if (CD_FpagoID_TIPO_FORMAPAG.IsNull or CD_FpagoCUENTA_INGRESO.IsNull) then
       begin
        Application.MessageBox('El Tipo de Pago y/o Cuenta en las Formas de Pago es incorrecto, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
        result := false;
        exit;
      end;

     CD_Fpago.Next;
   end;


end;


procedure TFCajero.RecalcularMontoPago();
begin
  acumFpago := EKDbSuma2.SumCollection[0].SumValue;
  //importeFpago.Text := FormatFloat('$ ##,###,##0.00 ', acumFpago);

  acumFpagoReal :=EKDbSuma2.SumCollection[1].SumValue;
  lblTotAPagar.Caption :='Total a Pagar: '+ FormatFloat('$ ##,###,##0.00 ', acumFpagoReal);

  
  if (CD_Comprobante.state=dsInsert) then
    CD_ComprobanteBASE_IMPONIBLE.AsFloat:=acumFpago;

  if acumFpagoReal>MONTO_MAX_VENTA then
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


procedure TFCajero.grabarPagos;
begin
  CD_Fpago.First;
  while not CD_Fpago.Eof do
  begin
    ZQ_Comprobante_FormaPago.Append;
    ZQ_Comprobante_FormaPagoID_COMPROBANTE.AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    ZQ_Comprobante_FormaPagoFECHA_FP.AsDateTime:= ZQ_ComprobanteFECHA.AsDateTime;
    ZQ_Comprobante_FormaPagoID_TIPO_FORMAPAG.AsInteger:= CD_FpagoID_TIPO_FORMAPAG.AsInteger;
    if CD_FpagoMDCP_FECHA.IsNull then
       ZQ_Comprobante_FormaPagoMDCP_FECHA.Clear
    else
       ZQ_Comprobante_FormaPagoMDCP_FECHA.AsDateTime:= CD_FpagoMDCP_FECHA.AsDateTime;
    ZQ_Comprobante_FormaPagoMDCP_BANCO.AsString:= CD_FpagoMDCP_BANCO.AsString;
    ZQ_Comprobante_FormaPagoMDCP_CHEQUE.AsString:= CD_FpagoMDCP_CHEQUE.AsString;
    ZQ_Comprobante_FormaPagoIMPORTE.AsFloat:= CD_FpagoIMPORTE.AsFloat-(CD_FpagoIMPORTE.AsFloat*CD_ComprobantePORC_DESCUENTO.AsFloat/100);
    ZQ_Comprobante_FormaPagoCUENTA_INGRESO.AsInteger:= CD_FpagoCUENTA_INGRESO.AsInteger;
    ZQ_Comprobante_FormaPagoIMPORTE_REAL.AsFloat:= CD_Fpago_importeVenta.AsFloat-(CD_Fpago_importeVenta.AsFloat*CD_ComprobantePORC_DESCUENTO.AsFloat/100);
    ZQ_Comprobante_FormaPago.Post;
    CD_Fpago.Next;
  end;
end;


procedure TFCajero.buscarFormaPago();
begin
  if not CD_FpagoID_TIPO_FORMAPAG.IsNull then
    exit;

  if EKListadoMedCobroPago.Buscar then
  begin
    if EKListadoMedCobroPago.Resultado <> '' then
    begin
      ZQ_BuscarMedioPago.Close;
      ZQ_BuscarMedioPago.ParamByName('id_tipo').AsInteger:= StrToInt(EKListadoMedCobroPago.Resultado);
      ZQ_BuscarMedioPago.Open;

      CD_Fpago.edit; //pongo en modo edicion
      CD_FpagoID_TIPO_FORMAPAG.AsInteger:= ZQ_BuscarMedioPagoID_TIPO_FORMAPAGO.AsInteger;
      CD_Fpago_fiscal.AsString:=ZQ_BuscarMedioPagoIF.AsString;
      CD_Fpago.Post;
    end;
  end;
end;


procedure TFCajero.buscarCuenta();
begin
  if (not CD_FpagoCUENTA_INGRESO.IsNull) then
    exit;

  if EKListadoCuenta.Buscar then
  begin
    if EKListadoCuenta.Resultado <> '' then
    begin
      ZQ_BuscarCuenta.Close;
      ZQ_BuscarCuenta.ParamByName('id_cuenta').AsInteger:= StrToInt(EKListadoCuenta.Resultado);
      ZQ_BuscarCuenta.Open;

      ZQ_BuscarMedioPago.Close;
      ZQ_BuscarMedioPago.ParamByName('id_tipo').AsInteger:= ZQ_BuscarCuentaMEDIO_DEFECTO.AsInteger;
      ZQ_BuscarMedioPago.Open;

      CD_Fpago.edit; //pongo en modo edicion
      CD_FpagoCUENTA_INGRESO.AsInteger:= ZQ_BuscarCuentaID_CUENTA.AsInteger;
      CD_FpagoID_TIPO_FORMAPAG.AsInteger:= ZQ_BuscarCuentaMEDIO_DEFECTO.AsInteger;
      CD_Fpago_esCtaCorr.AsString:= ZQ_BuscarCuentaA_CTA_CORRIENTE.Asstring;
      CD_Fpago_fiscal.AsString:=ZQ_BuscarMedioPagoIF.AsString;
      CD_Fpago.Post;
    end;
  end;
end;

procedure TFCajero.DBGridFormaPagoColExit(Sender: TObject);
var
  precio:Double;
begin
  if not(CD_DetalleFactura.IsEmpty) then
  begin
    // Si elijo una cuenta de Ingreso, pogo el medio por defecto en medio de pago.
    if (((sender as tdbgrid).SelectedField.FullName = 'CUENTA_INGRESO') or
        ((sender as tdbgrid).SelectedField.FullName = '_ctaIngreso')) then
    begin
      buscarCuenta;
    end;

    // Si elijo un medio de pago, pogo la cuenta por defecto del medio de pago.
    if (((sender as tdbgrid).SelectedField.FullName = 'medioPago') or
       ((sender as tdbgrid).SelectedField.FullName = 'ID_TIPO_FORMAPAG')) then
    begin
      buscarFormaPago;
    end;

    //Si es una sola forma de pago le pongo el valor del total por defecto
    if ((acumulado > 0) and ((CD_FpagoIMPORTE.IsNull) or (CD_FpagoIMPORTE.AsFloat = 0)))
       and not(CD_FpagoID_TIPO_FORMAPAG.IsNull and CD_FpagoCUENTA_INGRESO.IsNull) then
    begin
      CD_Fpago.edit;
      CD_FpagoIMPORTE.AsFloat:=acumulado - acumFpago;
      CD_Fpago.Post;
    end;

    if not(CD_Fpago_nroPrecio.IsNull) then
    begin
      CD_Fpago.Edit;
      case CD_Fpago_nroPrecio.AsInteger of
      0:begin
          precio:=CD_FpagoIMPORTE.AsFloat;
        end;
      1:begin
          precio:=CD_FpagoIMPORTE.AsFloat * coefPrecio1;
        end;
      2:begin
          precio:=CD_FpagoIMPORTE.AsFloat * coefPrecio2;
        end;
      3:begin
          precio:=CD_FpagoIMPORTE.AsFloat * coefPrecio3;
        end;
      4:begin
          precio:=CD_FpagoIMPORTE.AsFloat * coefPrecio4;
        end;
      5:begin
          precio:=CD_FpagoIMPORTE.AsFloat * coefPrecio5;
        end;
      end;

      CD_Fpago_importeVenta.AsFloat:= precio + (precio *  CD_Fpago_desc_rec.AsFloat);
      CD_Fpago.Post;
    end;

    RecalcularMontoPago();
 end;
end;


function TFCajero.calcularSaldoCtaCorr(): Double;
var
acum:Double;
begin
    acum:=0;
    CD_Fpago.First;
      while not CD_Fpago.Eof do
      begin
       if (CD_Fpago_esCtaCorr.AsString='S') then
        acum:=acum+CD_Fpago_importeVenta.AsFloat;
       CD_Fpago.Next;
      end;
    Result:=acum;
end;


procedure TFCajero.Prorrateo();
var
totalProds,totalFP,coefic,acum:Double;
cant,i:Integer;
begin
  //Can Productos
   cant:=CD_DetalleFactura.RecordCount;
   totalProds:=acumulado;
   totalFP:=importeVenta;
   acum:=0;
//  CD_Fpago.First;
//  while not(CD_Fpago.Eof) do
//   begin
//      ZQ_FormasPago.Locate('id_tipo_formapago',CD_FpagoID_TIPO_FORMAPAG.AsInteger,[]);
//      if (ZQ_FormasPagoIF.AsString='S') then
//       totalFP:=totalFP + CD_FpagoIMPORTE.AsFloat;
//      CD_Fpago.Next;
//   end;

   coefic:= (totalFP/totalProds);

   if (totalFP>0) then
    begin
      CD_DetalleFactura.First;
       i:=1;
       while not(CD_DetalleFactura.Eof) do
       begin
          CD_DetalleFactura.Edit;
          //Si es el último
          if (i=cant) then
              begin
                CD_DetalleFacturaIMPORTE_VENTA.AsFloat := totalFP - acum;
              end
          else
              CD_DetalleFacturaIMPORTE_VENTA.AsFloat := CD_DetalleFacturaIMPORTE_FINAL.AsFloat * coefic;

          acum:= acum+CD_DetalleFacturaIMPORTE_VENTA.AsFloat;
          CD_DetalleFactura.Post;
          CD_DetalleFactura.Next;
          i:=i+1;
       end;
    end
end;


procedure TFCajero.ProrrateoFiscal();
var
totalProds,totalFP,coefic,acum:Double;
cant,i:Integer;
begin
  //Can Productos
   cant:=CD_DetalleFactura.RecordCount;
   totalProds:=acumulado;
   totalFP:=0;
   acum:=0;

  totFiscal:=0;

  CD_VentaFinal.First;
  while not(CD_VentaFinal.Eof) do
   begin
      //ZQ_FormasPago.Locate('id_tipo_formapago',CD_FpagoID_TIPO_FORMAPAG.AsInteger,[]);
      if (CD_VentaFinalfiscal.AsString='S') then
       totalFP:=totalFP + CD_VentaFinalimporteDescuento.AsFloat;
      CD_VentaFinal.Next;
   end;

   totFiscal:=totalFP;

   coefic:= (totalFP/totalProds);

   if (totalFP>0) then
    begin
      CD_DetalleFactura.First;
       i:=1;
       while not(CD_DetalleFactura.Eof) do
       begin
          CD_DetalleFactura.Edit;
          //Si es el último
          if (i=cant) then
              begin
                CD_DetalleFacturaIMPORTE_IF.AsFloat := totalFP - acum;
              end
          else
              CD_DetalleFacturaIMPORTE_IF.AsFloat := CD_DetalleFacturaIMPORTE_VENTA.AsFloat * coefic;

          acum:= acum+CD_DetalleFacturaIMPORTE_IF.AsFloat;
          CD_DetalleFactura.Post;
          CD_DetalleFactura.Next;
          i:=i+1;
       end;
    end
end;


procedure TFCajero.btBuscProdClick(Sender: TObject);
begin
//  if PanelDetalleProducto.Enabled or PConfirmarVenta.Visible then
//    exit;

  if modoCargaPrevia then
  begin
    Application.MessageBox('No puede modificar una venta ya cerrada.','Carga Venta',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

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
    if (EKListadoProducto.Resultado<>'') then
    begin
      codBarras.Text:='I'+EKListadoProducto.Resultado;
      IdentificarCodigo;
    end
end;


procedure TFCajero.cargarPreventa;
begin
 ZQ_PreventaProductos.Close;
 ZQ_PreventaProductos.ParamByName('comprob').AsInteger:=vsel4.ZQ_ComprobanteID_COMPROBANTE.AsInteger;
 ZQ_PreventaProductos.Open;

 if not(ZQ_PreventaProductos.IsEmpty) then
  begin
     CD_DetalleFactura.EmptyDataSet;
     while not(ZQ_PreventaProductos.Eof) do
      begin

        ZQ_Productos.Close;
        ZQ_Productos.sql[15]:=Format('and(p.id_producto=%s)',[ZQ_PreventaProductosID_PRODUCTO.AsString]);
        ZQ_Productos.Open;

        CD_DetalleFactura.Append;
        CD_DetalleFacturaID_PRODUCTO.AsInteger:=ZQ_PreventaProductosID_PRODUCTO.AsInteger;
        CD_DetalleFacturaDETALLE.AsString:=ZQ_PreventaProductosDETALLE.AsString;
        CD_DetalleFacturaCANTIDAD.AsFloat:=ZQ_PreventaProductosCANTIDAD.AsFloat;
        CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat:=ZQ_PreventaProductosIMPORTE_UNITARIO.AsFloat;
        CD_DetalleFacturaPORC_DESCUENTO.AsFloat:=ZQ_PreventaProductosPORC_DESCUENTO.AsFloat;
        CD_DetalleFacturaIMPUESTO_INTERNO.AsFloat:=ZQ_PreventaProductosIMPUESTO_INTERNO.AsFloat;
        CD_DetalleFacturaPORC_IVA.AsFloat:=ZQ_PreventaProductosPORC_IVA.AsFloat;
        CD_DetalleFacturaBASE_IMPONIBLE.AsFloat:=ZQ_PreventaProductosBASE_IMPONIBLE.AsFloat;
        CD_DetalleFacturaIMPORTE_FINAL.AsFloat:=ZQ_PreventaProductosIMPORTE_FINAL.AsFloat;
        CD_DetalleFacturaIMPORTE_IVA.AsFloat:=ZQ_PreventaProductosIMPORTE_IVA.AsFloat;
        CD_DetalleFacturaID_PROD_STOCK.AsInteger:=ZQ_PreventaProductosID_STOCK_PRODUCTO.AsInteger;
        CD_DetalleFacturaIMPORTE_VENTA.AsFloat:=ZQ_PreventaProductosIMPORTE_VENTA.AsFloat;
        CD_DetalleFacturaID_PROD_STOCK.AsInteger:=ZQ_PreventaProductosID_STOCK_PRODUCTO.AsInteger;

        CD_DetalleFacturaPRECIO1.AsFloat:=ZQ_ProductosPRECIO1.AsFloat;
        CD_DetalleFacturaPRECIO2.AsFloat:=ZQ_ProductosPRECIO2.AsFloat;
        CD_DetalleFacturaPRECIO3.AsFloat:=ZQ_ProductosPRECIO3.AsFloat;
        CD_DetalleFacturaPRECIO4.AsFloat:=ZQ_ProductosPRECIO4.AsFloat;
        CD_DetalleFacturaPRECIO5.AsFloat:=ZQ_ProductosPRECIO5.AsFloat;


        CD_DetalleFactura.Post;

        ZQ_PreventaProductos.Next;
      end;

      //Cargo el mismo Cliente y detalles del comprobante
      ZQ_Personas.Locate('id_persona',vsel4.ZQ_ComprobanteID_CLIENTE.AsInteger,[]);
      Cliente:=ZQ_PersonasID_PERSONA.AsInteger;
      IdClienteIVA:=ZQ_PersonasID_TIPO_IVA.AsInteger;
      descCliente:= vsel4.ZQ_ComprobantePORC_DESCUENTO.AsFloat*100;;
      CD_ComprobanteID_CLIENTE.AsInteger:=cliente;
      CD_ComprobanteID_TIPO_IVA.AsInteger:=IdClienteIVA;
      CD_ComprobantePORC_DESCUENTO.AsFloat:=descCliente;
      CD_ComprobanteOBSERVACION.AsString:=Format('Venta de Mostrador, comprobante Nro:%s',[vsel4.ZQ_ComprobanteCODIGO.AsString]);
      CD_ComprobanteID_TIPO_IVA.AsInteger:=vsel4.ZQ_ComprobanteID_TIPO_IVA.AsInteger;

      CD_ComprobanteID_VENDEDOR.AsInteger:=vsel4.ZQ_ComprobanteID_VENDEDOR.AsInteger;
      IdVendedor:=CD_ComprobanteID_VENDEDOR.AsInteger;

      ZQ_ComprobPreventa.Close;
      ZQ_ComprobPreventa.ParamByName('id').AsInteger:=vsel4.ZQ_ComprobanteID_COMPROBANTE.AsInteger;
      ZQ_ComprobPreventa.Open;
      lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
      lblMontoProds.Caption :='Total Productos: '+ FormatFloat('$ ##,###,##0.00 ', EKDbSuma1.SumCollection[0].SumValue);
      //Permite que no se modifique la venta
      modoCargaPrevia:=True;
  end
end;


procedure TFCajero.edRecibidoExit(Sender: TObject);
begin
  calcularEfectivo();
end;


procedure TFCajero.calcularEfectivo();
begin
  acumEfectivo:=0;
  CD_VentaFinal.First;
  while not(CD_VentaFinal.Eof) do
  begin
      if (CD_VentaFinalgenera_vuelto.AsString='S') then
          acumEfectivo:=acumEfectivo+CD_VentaFinalimporteDescuento.AsFloat;
      CD_VentaFinal.Next;
  end;
  lblCambio.Caption:= FormatFloat('$ ##,###,##0.00 ',CD_ComprobantemontoRecibido.AsFloat-acumEfectivo);
end;


procedure TFCajero.cancelarProducto;
begin
  dm.EKModelo.abrir(ZQ_FormasPago);
  dm.EKModelo.abrir(ZQ_DetalleProd);
  dm.EKModelo.abrir(ZQ_Cuentas);
  Cliente:=-1;
  //IdVendedor:=-1;
  descCliente:=0;
  ClienteIVA:=0;
  IDClienteIVA:=0;
  CD_DetalleFactura.EmptyDataSet;
  CD_Fpago.EmptyDataSet;
  crearComprobante();
  lblCantProductos.Caption:='Cantidad Productos: '+inttostr(CD_DetalleFactura.RecordCount);
  lblMontoProds.Caption :='Total Productos: '+ FormatFloat('$ ##,###,##0.00 ', EKDbSuma1.SumCollection[0].SumValue);
  cargarClientePorDefecto();
  modoCargaPrevia:=False;
  modoLecturaProd();
  RecalcularMontoPago();
end;


procedure TFCajero.DateTimePicker_FechaCargaChange(Sender: TObject);
begin
  CD_Comprobante.Edit;
  if CheckBoxCambiarFecha.Checked then
    CD_ComprobanteFECHA.AsDateTime:= DateTimePicker_FechaCarga.DateTime
  else
    CD_ComprobanteFECHA.AsDateTime:=dm.EKModelo.FechayHora();
end;


procedure TFCajero.CheckBoxCambiarFechaClick(Sender: TObject);
begin
  CD_Comprobante.Edit;
  if CheckBoxCambiarFecha.Checked then
    CD_ComprobanteFECHA.AsDateTime:= DateTimePicker_FechaCarga.DateTime
  else
    CD_ComprobanteFECHA.AsDateTime:=dm.EKModelo.FechayHora();
end;


procedure TFCajero.ABuscarExecute(Sender: TObject);
begin
  if btBuscProd.Enabled then
    btBuscProd.Click;
end;


procedure TFCajero.ANuevoExecute(Sender: TObject);
begin
  if BtBuscarProducto.Enabled then
    BtBuscarProducto.Click;
end;


procedure TFCajero.ATipoIVAExecute(Sender: TObject);
begin
  if btIVA.Enabled then
    btIVA.Click;
end;


procedure TFCajero.AClienteExecute(Sender: TObject);
begin
  if bt_BuscarCliente.Enabled then
    bt_BuscarCliente.Click;
end;


procedure TFCajero.ASalirExecute(Sender: TObject);
begin
  if btsalir.Enabled then
    btsalir.Click;
end;


procedure TFCajero.AGuardarExecute(Sender: TObject);
begin
  if BtAceptarPago.Enabled then
    BtAceptarPago.Click;
end;


procedure TFCajero.ACancelarExecute(Sender: TObject);
begin
  if BtCancelarPago.Enabled then
    BtCancelarPago.Click;
end;


procedure TFCajero.AVendedorExecute(Sender: TObject);
begin
  if BtVendedor.Enabled then
    btVendedor.Click;
end;


procedure TFCajero.APreventaExecute(Sender: TObject);
begin
  if btPreventa.Enabled then
    btPreventa.Click;
end;


procedure TFCajero.ANuevaFormaPagoExecute(Sender: TObject);
begin
  if PanelDetalleProducto.Enabled or PConfirmarVenta.Visible then
    exit;

  if (CD_Comprobante.State in [dsInsert,dsEdit]) and (not CD_DetalleFactura.IsEmpty) and PanelProductosYFPago.Enabled then
  begin
    DBGridFormaPago.SetFocus;
    DBGridFormaPago.SelectedField:= DBGridFormaPago.Fields[0]; //sigo en la misma columna
    CD_Fpago.Append;
  end
end;

                                               
procedure TFCajero.ANuevoProdExecute(Sender: TObject);
begin
  if BtAgregarPago.Enabled then
    BtAgregarPago.Click;
end;


function TFCajero.imprimirFiscal(comprob:Integer; tipoAccion: string): Boolean;
begin
  Result:=True;

  if tipoAccion = 'F' then
    ShellExecute(FPrincipal.Handle, nil, pchar(Ruta), pchar(' -l '+IntToStr(comprob)+' -i '+Impresora+' -c '+tipoAccion), nil, SW_SHOWNORMAL)
  else
    ShellExecute(FPrincipal.Handle, nil, pchar(Ruta), pchar(' -i '+Impresora+' -c '+tipoAccion), nil, SW_SHOWNORMAL);


//  if (acumulado<=0) then
//  begin
//    Application.MessageBox('El monto final debe ser superior a $0,00, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
//    result := false;
//    exit;
//  end;

end;

end.
