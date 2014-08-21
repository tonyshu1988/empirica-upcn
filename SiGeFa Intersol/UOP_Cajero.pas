unit UOP_Cajero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Grids, DBGrids,
  UBuscarProductoStock, Mask, Provider, DBClient, ActnList,
  XPStyleActnCtrls, ActnMan,
  ZStoredProcedure, UBuscarPersona, Buttons, jpeg, Menus, UCargarPreventa,
  ComCtrls, IniFiles, ShellAPI, dxBarExtDBItems, UOP_CargarOrden, cxClasses,
  ISDbSuma, ISListadoSQL;

type
  TFOP_Cajero = class(TForm)
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
    ZQ_Cuentas: TZQuery;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasMEDIO_DEFECTO: TIntegerField;
    ZQ_CuentasCODIGO: TStringField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasNRO_CTA_BANCARIA: TStringField;
    ZQ_CuentasBAJA: TStringField;
    CD_Fpago_ctaIngreso: TStringField;
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
    PanelProductosYFPago: TPanel;
    PanelListadoProducto: TPanel;
    Label9: TLabel;
    Panel6: TPanel;
    Label36: TLabel;
    btQuitarProducto: TButton;
    PanelFormaPago: TPanel;
    DBGridFormaPago: TDBGrid;
    PieGrilla: TPanel;
    lblMaxVenta: TLabel;
    btnQuitarPago: TButton;
    Label11: TLabel;
    PanelDetalles: TPanel;
    PanelCabeceraFactura: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label28: TLabel;
    Label20: TLabel;
    Label_DetalleCliente: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit_DetalleCliente: TDBEdit;
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
    btnBuscarProductoAvanzada: TdxBarLargeButton;
    btnVentaRapida: TdxBarLargeButton;
    btnBuscarProductoListado: TdxBarLargeButton;
    btnLeerCB: TdxBarLargeButton;
    BtAceptarPago: TdxBarLargeButton;
    BtCancelarPago: TdxBarLargeButton;
    btnBuscarVendedor: TdxBarLargeButton;
    btnPreventa: TdxBarLargeButton;
    btsalir: TdxBarLargeButton;
    btnBuscarCliente: TdxBarLargeButton;
    btIVA: TdxBarLargeButton;
    btnFormaPago: TdxBarLargeButton;
    GrupoGuardarCancelar: TdxBarGroup;
    grupoVertical: TdxBarGroup;
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
    ZSP_Comprobante: TZStoredProc;
    ZSP_ComprobanteID: TIntegerField;
    ZSP_ComprobanteCODIGO: TStringField;
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
    CD_DetalleFacturaIMPORTE_IF_SINIVA: TFloatField;
    CD_DetalleFacturaIMPORTE_IVA_IF: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_IF_SINIVA: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_IVA_IF: TFloatField;
    CD_VentaFinalfiscal: TStringField;
    btCierreZ: TdxBarLargeButton;
    BtCierreX: TdxBarLargeButton;
    PABM_FormaPago: TPanel;
    Label18: TLabel;
    Label47: TLabel;
    edDetalleMDPCbox: TDBLookupComboBox;
    Label48: TLabel;
    edMDPFecha: TDBEdit;
    Label49: TLabel;
    edMDPBanco: TDBEdit;
    Label50: TLabel;
    edMDPNro: TDBEdit;
    Label51: TLabel;
    edImporte: TDBEdit;
    Label53: TLabel;
    edCodCuenta: TDBEdit;
    Label55: TLabel;
    edCuenta: TDBLookupComboBox;
    Label58: TLabel;
    edImporteVenta: TDBEdit;
    Label61: TLabel;
    edCodMDP: TDBEdit;
    btFPAceptar: TBitBtn;
    PopupFP: TPopupMenu;
    menuEditarFP: TMenuItem;
    menuQuitarFP: TMenuItem;
    ZQ_FormasPagoMODIFICABLE: TStringField;
    ZQ_CuentasA_NOTA_CREDITO: TStringField;
    ZQ_CuentasMODIFICABLE: TStringField;
    CD_Fpago_fiscal: TStringField;
    CD_Fpago_esCtaCorr: TStringField;
    CD_DetalleFacturaimporte_original: TFloatField;
    ZQ_TipoIVACOEFICIENTE: TFloatField;
    CD_VentaFinalidTipoPago: TIntegerField;
    CD_VentaFinalidCta: TIntegerField;
    CD_VentaFinalmdpFecha: TDateField;
    CD_VentaFinalmdpBanco: TStringField;
    CD_VentaFinalmdpNro: TStringField;
    btFPCancelar: TBitBtn;
    CD_DetalleFacturaproducto: TStringField;
    ZQ_PreventaProductosIMPORTE_IF: TFloatField;
    ZQ_PreventaProductosIMPORTE_IF_SINIVA: TFloatField;
    ZQ_PreventaProductosIMPORTE_IVA_IF: TFloatField;
    ZQ_TipoIVAVERIFICA_CUIT: TStringField;
    ZQ_ColsPrecios: TZQuery;
    ZQ_ColsPreciosCOLUMNA_PRECIO: TIntegerField;
    AVentaRapida: TAction;
    ZQ_SaldoNotaCredito: TZQuery;
    ZQ_SaldoNotaCreditoSALDO: TFloatField;
    edDetalleMDP: TDBEdit;
    ZQ_UltimoCPB: TZQuery;
    ZQ_UltimoCPBNUMERO_CPB: TIntegerField;
    ZQ_PreventaFP: TZQuery;
    ZQ_PreventaFPID_COMPROB_FP: TIntegerField;
    ZQ_PreventaFPID_COMPROBANTE: TIntegerField;
    ZQ_PreventaFPID_TIPO_FORMAPAG: TIntegerField;
    ZQ_PreventaFPMDCP_FECHA: TDateField;
    ZQ_PreventaFPMDCP_BANCO: TStringField;
    ZQ_PreventaFPMDCP_CHEQUE: TStringField;
    ZQ_PreventaFPIMPORTE: TFloatField;
    ZQ_PreventaFPCONCILIADO: TDateField;
    ZQ_PreventaFPCUENTA_INGRESO: TIntegerField;
    ZQ_PreventaFPCUENTA_EGRESO: TIntegerField;
    ZQ_PreventaFPFECHA_FP: TDateTimeField;
    ZQ_PreventaFPIMPORTE_REAL: TFloatField;
    ZQ_PreventaFPID_RECIBO_OP: TIntegerField;
    ZQ_PreventaFPINSERT_MANUAL: TStringField;
    Panel1: TPanel;
    lblTotAPagar: TLabel;
    lblNroCPB: TLabel;
    PanelDetallePreventa: TPanel;
    Label54: TLabel;
    Label56: TLabel;
    DBEdit20: TDBEdit;
    Label59: TLabel;
    DBEdit21: TDBEdit;
    Label60: TLabel;
    DBEdit22: TDBEdit;
    DS_ComprobPreventa: TDataSource;
    DS_PreventaFP: TDataSource;
    CD_Fpago_esSenia: TStringField;
    CD_DetalleFacturaIMPORTE_COSTO: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_COSTO: TFloatField;
    ZQ_PreventaProductosIMPORTE_COSTO: TFloatField;
    btnAuditoriaFiscal: TdxBarLargeButton;
    ZQ_ComprobanteFECHA_COBRADA: TDateTimeField;
    ZQ_ComprobanteFECHA_ENVIADA: TDateField;
    ZQ_ComprobanteFECHA_IMPRESA: TDateField;
    ZQ_ComprobanteFECHA_VENCIMIENTO: TDateField;
    CD_ComprobanteID_PREVENTA: TIntegerField;
    ZQ_ComprobanteID_PREVENTA: TIntegerField;
    btnCargarOrdenTecnica: TdxBarLargeButton;
    ZQ_OrdenProductos: TZQuery;
    ZQ_OpticaEntrega: TZQuery;
    ZQ_OpticaEntregaID_ENTREGA: TIntegerField;
    ZQ_OpticaEntregaID_ORDEN: TIntegerField;
    ZQ_OpticaEntregaID_TIPO_FORMAPAG: TIntegerField;
    ZQ_OpticaEntregaMDCP_FECHA: TDateField;
    ZQ_OpticaEntregaMDCP_BANCO: TStringField;
    ZQ_OpticaEntregaMDCP_CHEQUE: TStringField;
    ZQ_OpticaEntregaIMPORTE: TFloatField;
    ZQ_OpticaEntregaCONCILIADO: TDateField;
    ZQ_OpticaEntregaCUENTA_INGRESO: TIntegerField;
    ZQ_OpticaEntregaCUENTA_EGRESO: TIntegerField;
    ZQ_OpticaEntregaFECHA_FP: TDateTimeField;
    ZQ_OpticaEntregaIMPORTE_REAL: TFloatField;
    ZQ_OpticaEntregaID_RECIBO_OP: TIntegerField;
    ZQ_OpticaEntregaINSERT_MANUAL: TStringField;
    ZQ_Optica_Orden: TZQuery;
    ZQ_Optica_OrdenID_ORDEN: TIntegerField;
    ZQ_Optica_OrdenFECHA_ORDEN: TDateField;
    ZQ_Optica_OrdenFECHA_PROMETIDO: TDateField;
    ZQ_Optica_OrdenID_ESTADO: TIntegerField;
    ZQ_Optica_OrdenFACTURADO_POR: TIntegerField;
    PanelDetalleOrdenOptica: TPanel;
    Label14: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    DBEdit13: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    ZQ_Optica_OrdenMONTO_ENTREGADO: TFloatField;
    DS_Optica_Orden: TDataSource;
    ZQ_Optica_OrdenID_COMPROBANTE: TIntegerField;
    ZQ_Optica_OrdenSALDO: TFloatField;
    CD_FpagoFECHA_FP: TDateTimeField;
    ZQ_Optica_OrdenCODIGO_CLI: TStringField;
    ZQ_Optica_OrdenID_CLIENTE: TIntegerField;
    ZQ_Optica_OrdenCOD_BARRAS: TStringField;
    ZQ_Optica_OrdenOBSERVACIONES: TStringField;
    ZQ_Optica_OrdenNRO_FACTURA: TStringField;
    ZQ_Optica_OrdenMONTO_TOTAL: TFloatField;
    ZQ_Optica_OrdenENTREGADO_POR: TIntegerField;
    ZQ_Optica_OrdenID_MEDICO: TIntegerField;
    ZQ_Optica_OrdenAVISAR: TStringField;
    ZQ_Optica_OrdenMONTO_RECONOCIDO: TFloatField;
    ZQ_Optica_OrdenID_SUCURSAL: TIntegerField;
    Label69: TLabel;
    DBEdit25: TDBEdit;
    ZQ_ProductosSECCION: TStringField;
    DBEdit26: TDBEdit;
    ISListadoMedio: TISListadoSQL;
    ISListadoCuenta: TISListadoSQL;
    ISListadoIVA: TISListadoSQL;
    ISListadoProducto: TISListadoSQL;
    ISDbSumaFPago: TISDbSuma;
    ISDbSumaDetalleFactura: TISDbSuma;
    ISDbSumaVentaFinal: TISDbSuma;
    PCargaProd: TPanel;
    PCargaProdBotones: TPanel;
    lblReconocimVenta: TLabel;
    btnProdAceptar: TButton;
    btnProdCancelar: TButton;
    DBGridListadoProductos: TDBGrid;
    CD_DetalleFacturamonto_reconocido: TFloatField;
    PopupReconocim: TPopupMenu;
    popReconocimAgregar: TMenuItem;
    popReconocimQuitar: TMenuItem;
    DS_Reconocimientos: TDataSource;
    ZQ_ReconocimOSS: TZQuery;
    ZQ_ComprobanteDetalleINSERT_MANUAL: TStringField;
    ZQ_ComprobanteDetalleID_AUXILIAR: TIntegerField;
    ZQ_ComprobanteDetalleIMPORTE_RECONOC_OS: TFloatField;
    ZQ_ReconocimOSSID_RECONOCIMIENTO: TIntegerField;
    ZQ_ReconocimOSSID_OS: TIntegerField;
    ZQ_ReconocimOSSID_PRODUCTO: TIntegerField;
    ZQ_ReconocimOSSPRECIO_VENTA: TFloatField;
    ZQ_ReconocimOSSMONTO_RECONOCIDO: TFloatField;
    ZQ_ReconocimOSSID_COMPROBANTE_DETALLE: TIntegerField;
    PCargaProdPlanes: TPanel;
    PCargaProdDetalle: TPanel;
    Label1: TLabel;
    DBGridListadoOS: TDBGrid;
    Label76: TLabel;
    Label72: TLabel;
    Label71: TLabel;
    Label70: TLabel;
    edImporteUnitario: TDBEdit;
    eddesc: TDBEdit;
    edCant: TDBEdit;
    DBText3: TDBText;
    Bevel2: TBevel;
    Label10: TLabel;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    ZQ_planes_productos: TZQuery;
    ZQ_planes_productosID_PRODUCTOS_RECONOCIDOS: TIntegerField;
    ZQ_planes_productosMONTO_RECONOCIDO: TFloatField;
    ZQ_planes_productosID_PRODUCTO: TIntegerField;
    ZQ_planes_productosID_OS: TIntegerField;
    DS_planes_productos: TDataSource;
    ZQ_planes_productosDETALLE: TStringField;
    CD_Reconocimientos: TClientDataSet;
    POssBotones: TPanel;
    Label4: TLabel;
    btAceptarOss: TButton;
    btCancelarOss: TButton;
    CD_Reconocimientosid_os: TIntegerField;
    CD_Reconocimientosmonto_reconocido: TFloatField;
    CD_Reconocimientosdetalle: TStringField;
    CD_Reconocimientosid_prod: TIntegerField;
    ISDbSumaReconocim: TISDbSuma;
    lblReconocimTot: TLabel;
    Panel7: TPanel;
    lblDctoMutual: TLabel;
    ZQ_DctoMutual: TZQuery;
    ZQ_DctoMutualID_PERSONA_OS: TIntegerField;
    ZQ_DctoMutualNRO_AFILIADO: TStringField;
    ZQ_DctoMutualID_OS: TIntegerField;
    ZQ_DctoMutualID_PERSONA: TIntegerField;
    ZQ_DctoMutualDESCUENTO: TFloatField;
    ZQ_DctoMutualPORC_FINAL: TStringField;
    ZQ_DctoMutualNOMBRE: TStringField;
    ZQ_PersonasCODIGO_CORTO: TStringField;
    ZQ_PersonasCODIGO_BARRA: TStringField;
    ZQ_PersonasCLAVE: TStringField;
    ZQ_PersonasIMPORTADO: TStringField;
    ZQ_PersonasNRO_AFILIADO: TStringField;
    ZSP_Comprobante_Detalle: TZStoredProc;
    ZSP_Comprobante_DetalleID: TIntegerField;
    ZQ_ReconocMutual: TZQuery;
    ZQ_ReconocMutualID_RECONOC_MUTUAL: TIntegerField;
    ZQ_ReconocMutualMONTO_RECONOCIDO: TFloatField;
    ZQ_ReconocMutualID_OS: TIntegerField;
    ZQ_ReconocMutualID_COMPROBANTE: TIntegerField;
    ZQ_OrdenDetOss: TZQuery;
    ZQ_OrdenProductosID_ORDEN_DETALLE: TIntegerField;
    ZQ_OrdenProductosID_ORDEN: TIntegerField;
    ZQ_OrdenProductosID_PRODUCTO: TIntegerField;
    ZQ_OrdenProductosCANTIDAD: TFloatField;
    ZQ_OrdenProductosOBSERVACIONES: TStringField;
    ZQ_OrdenProductosID_LABORATORIO: TIntegerField;
    ZQ_OrdenProductosIMPORTE_RECONOCIDO: TFloatField;
    ZQ_OrdenProductosIMPORTE_VENTA: TFloatField;
    ZQ_OrdenProductosIMPORTE_UNITARIO: TFloatField;
    ZQ_OrdenProductosIMPORTE_TOTAL: TFloatField;
    ZQ_OrdenDetOssID_DETALLE_OS: TIntegerField;
    ZQ_OrdenDetOssID_ORDEN_DETALLE: TIntegerField;
    ZQ_OrdenDetOssID_OS: TIntegerField;
    ZQ_OrdenDetOssMONTO_DESCONTADO: TFloatField;
    ZQ_OrdenDetOssOBSERVACIONES: TStringField;
    ZQ_OrdenDetOssID_FACTURA_OS: TIntegerField;
    ZQ_OrdenDetOssDETALLE_PROD_FACTURA: TStringField;
    procedure btsalirClick(Sender: TObject);
    function agregar(detalle: string; prodStock: integer): Boolean;
    procedure FormCreate(Sender: TObject);
    procedure btQuitarProductoClick(Sender: TObject);
    procedure codBarrasEnter(Sender: TObject);
    procedure LimpiarCodigo;
    procedure codBarrasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure IdentificarCodigo();
    procedure LeerCodigo(id: string; cod: string);
    procedure btnBuscarClienteClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BtAceptarPagoClick(Sender: TObject);
    procedure BtCancelarPagoClick(Sender: TObject);
    procedure crearComprobante();
    procedure btIVAClick(Sender: TObject);
    procedure APagoExecute(Sender: TObject);
    function validarFPago(): Boolean;
    procedure grabarPagos();
    procedure grabarDetallesFactura();
    procedure edCantidadExit(Sender: TObject);
    procedure calcularMonto();
    procedure btnBuscarVendedorClick(Sender: TObject);
    procedure edImporteExit(Sender: TObject);
    function ProductoYaCargado(id: Integer): Boolean;
    function calcularSaldoCtaCorr(): Double;
    procedure ZQ_ProductosAfterScroll(DataSet: TDataSet);
    procedure ANuevaFormaPagoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cargarClientePorDefecto();
    procedure Prorrateo();
    procedure RecalcularMontoPago();
    procedure APreventaExecute(Sender: TObject);
    procedure btnPreventaClick(Sender: TObject);
    procedure VerLectorCB(flag: Boolean);
    procedure edDescExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnAceptarProdClick(Sender: TObject);
    procedure btnCancelarProdClick(Sender: TObject);
    procedure modoLecturaProd();
    procedure modoEscrituraProd();
    procedure CD_DetalleFacturaAfterScroll(DataSet: TDataSet);
    procedure EditarProdClick(Sender: TObject);
    procedure edImporteFinalExit(Sender: TObject);
    procedure edImporteFinalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function guardarComprobante(): Boolean;
    procedure btnCancelarVentaClick(Sender: TObject);
    procedure edPorcDctoTotalExit(Sender: TObject);
    procedure recalcularBoleta();
    procedure btnConfirmarVentaClick(Sender: TObject);
    function validarBoleta(): Boolean;
    procedure btnQuitarPagoClick(Sender: TObject);
    procedure cargarPreventa();
    procedure edRecibidoExit(Sender: TObject);
    procedure calcularEfectivo();
    procedure cancelarProducto();
    procedure ProrrateoFiscal();
    procedure DateTimePicker_FechaCargaChange(Sender: TObject);
    procedure CheckBoxCambiarFechaClick(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure ATipoIVAExecute(Sender: TObject);
    procedure AClienteExecute(Sender: TObject);
    procedure ASalirExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure AVendedorExecute(Sender: TObject);
    procedure ANuevoProdExecute(Sender: TObject);
    function imprimirFiscal(comprob: Integer; tipoAccion: string): Boolean;
    procedure leerConfigFiscal;
    procedure calcularFP();
    function completarCodBar(cod: string): string;
    procedure edCantidadKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btFPAceptarClick(Sender: TObject);
    procedure btnFormaPagoClick(Sender: TObject);
    procedure CD_FpagoCUENTA_INGRESOChange(Sender: TField);
    procedure edCodCuentaExit(Sender: TObject);
    procedure menuEditarFPClick(Sender: TObject);
    procedure menuQuitarFPClick(Sender: TObject);
    procedure sacarRepetidosFP();
    procedure btFPCancelarClick(Sender: TObject);
    procedure btnEfectivoClick(Sender: TObject);
    procedure btnEfectivoFClick(Sender: TObject);
    procedure buscarCuenta(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure buscarFormaPago(Sender: TObject; var Key: Word; Shift: TShiftState);
    function verificarSaldoNotaCredito(query: TDataSet; id_cliente: integer): boolean;
    procedure ultimoIDPago();
    procedure panelPreventa(flag: boolean);
    procedure panelOrden(flag: boolean);
    procedure btnCargarOrdenTecnicaClick(Sender: TObject);
    procedure cargarOrden();
    procedure accionBtnBuscar(Sender: TObject);
    procedure ISDbSumaFPagoSumListChanged(Sender: TObject);
    procedure ISDbSumaDetalleFacturaSumListChanged(Sender: TObject);
    procedure popReconocimAgregarClick(Sender: TObject);
    procedure btAceptarOssClick(Sender: TObject);
    procedure btCancelarOssClick(Sender: TObject);
    procedure popReconocimQuitarClick(Sender: TObject);
    procedure ISDbSumaReconocimSumListChanged(Sender: TObject);
    procedure ZQ_DctoMutualAfterOpen(DataSet: TDataSet);
    procedure ZQ_DctoMutualAfterClose(DataSet: TDataSet);
    procedure edDetalleMDPChange(Sender: TObject);
  private
    vsel: TFBuscarProductoStock;
    vsel2: TFBuscarPersona;
    vsel3: TFBuscarPersona;
    vsel4: TFPreventa;
    vsel5: TFOP_CargarOrden;
    procedure OnSelProd;
    procedure OnSelPers;
    procedure OnSelVendedor;
    procedure OnSelPreventa;
    procedure OnSelOrden;
    procedure pmInputQuery(var Msg: TMessage); message WM_USER + 123;
  public
    nota_credito_saldo, nota_credito_total: double;
    mensaje: string;
  end;

var
  FOP_Cajero: TFOP_Cajero;
  punitoriosacob, acumulado,dctoMutual, ClienteIVA, descCliente, acumuladoIVA,
  acumFpagoReal, acumFpago, acumEfectivo, acumuladoProd, totFiscal: double;
  acumPrecio1, acumPrecio2, acumPrecio3, acumPrecio4, acumPrecio5: double;
  coefPrecio1, coefPrecio2, coefPrecio3, coefPrecio4, coefPrecio5: double;
  IdProdStock: string;
  cliente, IdVendedor, cajero, IDClienteIVA, idSucursal: Integer;
  modoCargaPrevia, borrarVendedor, modoCargaOrden: Boolean;
  importeVenta, importeIF: Double;
  permitirOnChangeFPAGO: boolean;
  ctaPorDefecto: Integer;
  //----Fiscal--------
  fiscal_Impresora, fiscal_ruta, fiscal_sistema: string;
  id_cuenta_fpago: integer;
  auditoriaFiscalDesde, auditoriaFiscalHasta, auditoriaFiscalTipo: string;
const
  abmComprobante = 'ABM Factura-Cajero';

implementation

uses UDM, UPrincipal, strutils, ismodelo, Math, UUtilidades, DateUtils;

{$R *.dfm}

procedure TFOP_Cajero.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(abmComprobante);
end;


procedure TFOP_Cajero.FormCreate(Sender: TObject);
begin
  if Optica then   // Si la variable optica esta en true entonces el menu optica estara visible.
    btnCargarOrdenTecnica.Visible:= ivAlways
  else
    btnCargarOrdenTecnica.Visible:= ivNever;

  CurrencyDecimals:= 2;
  DecimalSeparator:= '.';
  ThousandSeparator:= ',';
  DateSeparator:= '/';
  ShortDateFormat:= 'dd/MM/yyyy';

  idSucursal:= SUCURSAL_LOGUEO;

  CD_Comprobante.CreateDataSet;
  CD_DetalleFactura.CreateDataSet;
  CD_Fpago.CreateDataSet;
  CD_VentaFinal.CreateDataSet;

  CD_Reconocimientos.CreateDataSet;



  dm.ismodelo.abrir(ZQ_FormasPago);
  dm.ismodelo.abrir(ZQ_Cuentas);
  dm.ismodelo.abrir(ZQ_DetalleProd);

  Cliente:= -1;
  IdVendedor:= -1;
  descCliente:= 0;
  ClienteIVA:= 0;
  IDClienteIVA:= 0;

  crearComprobante();
  cargarClientePorDefecto();

  modoCargaPrevia:= False;
  modoCargaOrden:= false;

  DS_Sucursal.DataSet:= dm.ZQ_Sucursal;
  DBImage1.DataField:= 'LOGO';

  ctaPorDefecto:= cajero_cuenta_defecto;
  borrarVendedor:= cajero_borrar_vendedor;
  edCuenta.DropDownRows:= cajero_tamanio_lista_fpago;

  modoLecturaProd();
  PConfirmarVenta.Visible:= False;

  edImagen.Visible:= not (ZQ_ProductosIMAGEN.IsNull);
  DBImage1.Visible:= True;
  DBImage1.BringToFront;

  PanelCambiarFecha.Visible:= false;
  CheckBoxCambiarFecha.Checked:= false;
  if dm.ISUsrLogin.PermisoAccion('CAJA_CAMBIAR_FECHA') then
  begin
    PanelCambiarFecha.Visible:= true;
    DateTimePicker_FechaCarga.DateTime:= dm.ismodelo.FechayHora;
  end;

  if not (dm.ISUsrLogin.PermisoAccion('NO_FISCAL')) then
  begin
    ZQ_FormasPago.Filtered:= False;
    ZQ_FormasPago.Filter:= Format('IF = %s', [QuotedStr('S')]);
    ZQ_FormasPago.Filtered:= True;

  end
  else
  begin
    ZQ_FormasPago.Filtered:= False;
    ZQ_FormasPago.Filter:= '';
    ZQ_FormasPago.Filtered:= True;

  end;

  PABM_FormaPago.Visible:= False;
  //Formas de Pago
  FPrincipal.Iconos_Menu_16.GetBitmap(1, btFPAceptar.Glyph);
  FPrincipal.Iconos_Menu_16.GetBitmap(0, btFPCancelar.Glyph);
  //Confirmación Venta
  FPrincipal.Iconos_Menu_32.GetBitmap(1, btnConfirmarVenta.Glyph);
  FPrincipal.Iconos_Menu_32.GetBitmap(0, btnCancelarVenta.Glyph);


  panelPreventa(false);
  panelOrden(false);
end;


procedure TFOP_Cajero.btsalirClick(Sender: TObject);
begin
  close;
end;


procedure TFOP_Cajero.FormShow(Sender: TObject);
begin
  //ANuevoProd.Execute;
end;


procedure TFOP_Cajero.leerConfigFiscal;
begin
  dm.ZQ_Fiscal.Close;
  dm.ZQ_Fiscal.ParamByName('id_fiscal').AsInteger:= ID_FISCAL;
  dm.ZQ_Fiscal.Open;

  fiscal_Impresora:= DM.ZQ_FiscalMODELO.AsString;
  fiscal_ruta:= DM.ZQ_FiscalRUTA_ARCHIVO.AsString;
  fiscal_sistema:= DM.ZQ_FiscalSISTEMA.AsString;
end;


procedure TFOP_Cajero.VerLectorCB(flag: Boolean);
begin
  PLeerCodigo.Visible:= flag;
  PLeerCodigo.BringToFront;
  dm.centrarPanel(FOP_Cajero, PLeerCodigo);
  PanelContenedorDerecha.Enabled:= not (PLeerCodigo.Visible);
end;


procedure TFOP_Cajero.IdentificarCodigo();
var
  cod: string;
begin
  cod:= codBarras.Text;
  try
    begin
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
      end
      else if (Length(cod) > LONG_COD_BARRAS) then
      begin
        Application.MessageBox('Longitud de código incorrecta', 'Código incorrecto', MB_ICONINFORMATION);
        LimpiarCodigo;
        exit;
      end;

      raise Exception(self);
    end
  except
    begin
      Application.MessageBox('El código de ingresado es incorrecto', 'Código incorrecto', MB_ICONINFORMATION);
      LimpiarCodigo;
      exit;
    end;
  end;
end;


procedure TFOP_Cajero.LimpiarCodigo;
begin
  ZQ_Productos.Close;
  codBarras.Clear;

  if (CD_DetalleFactura.State <> dsBrowse) then
  begin
    CD_DetalleFacturaCANTIDAD.AsFloat:= 1;
    CD_DetalleFacturaPORC_DESCUENTO.AsFloat:= 0;
    CD_DetalleFacturaIMPORTE_FINAL.AsFloat:= 0;
  end;

  RelojStock.Enabled:= false;
  lblMaxVenta.Visible:= False;
end;


procedure TFOP_Cajero.LeerCodigo(id: string; cod: string);
begin
  RelojStock.Enabled:= false;
  lblMaxVenta.Visible:= False;

  try
    IdProdStock:= MidStr(cod, 2, Length(cod) - 1);
  except
    begin
      Application.MessageBox('El código de ingresado es incorrecto', 'Código incorrecto', MB_ICONINFORMATION);
      LimpiarCodigo;
      exit;
    end
  end;

  if id = 'I' then
  begin
    ZQ_Productos.Close;
    ZQ_Productos.sql[15]:= Format('and(sp.id_stock_producto=%d)', [strToInt(IdProdStock)]);
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
    if ((id = 'B') or (id = 'C')) then
      if ZQ_Productos.RecordCount > 1 then
      begin
        Application.MessageBox('El código ingresado corresponde a más de un producto y/o se encuentra ubicado en más de un sector al mismo tiempo.' + char(13) +
          '(utilice la búsqueda avanzada para seleccionar el adecuado)', 'Producto Repetido', MB_ICONINFORMATION);
        exit;
      end;
    if ZQ_ProductosSTOCK_ACTUAL.AsFloat <= 0 then
    begin
      Application.MessageBox('El Stock del Producto es Insuficiente.', 'Stock Producto', MB_ICONINFORMATION);
      exit;
    end;
    agregar('', ZQ_ProductosID_STOCK_PRODUCTO.AsInteger);
  end
  else
  begin
    Application.MessageBox('El producto no pudo ser encontrado.' + char(13) +
      '(utilice la búsqueda avanzada para seleccionar el adecuado)', 'Código incorrecto', MB_ICONINFORMATION);
    LimpiarCodigo;
    exit;
  end;
end;


procedure TFOP_Cajero.accionBtnBuscar(Sender: TObject);
begin
  if modoCargaPrevia or modoCargaOrden then
  begin
    Application.MessageBox('No puede modificar una venta/Orden ya cerrada.', 'Carga Venta', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if (CD_DetalleFactura.State <> dsBrowse) then
    exit;

  if cliente < 0 then
  begin
    btnBuscarCliente.Click;
    exit;
  end;

  if IdVendedor < 0 then
  begin
    btnBuscarVendedorClick(self);
    exit;
  end;

  if TdxBarLargeButton(Sender).Name = 'btnBuscarProductoListado' then
  begin
    if ISListadoProducto.Buscar then
      if (ISListadoProducto.Resultado <> '') then
      begin
      //Traigo el ID_producto_stock
        codBarras.Text:= 'I' + ISListadoProducto.Resultado;
        LeerCodigo('I', codBarras.Text);

      end
  end
  else if TdxBarLargeButton(Sender).Name = 'btnBuscarProductoAvanzada' then
  begin
    if not Assigned(vsel) then
      vsel:= TFBuscarProductoStock.Create(nil);
    vsel.usaCajero:= 'S';
    vsel.OnSeleccionar:= OnSelProd;
    vsel.ShowModal;
    vsel.usaCajero:= 'N';
  end
  else if TdxBarLargeButton(Sender).Name = 'btnLeerCB' then
  begin
    modoLecturaProd();
    VerLectorCB(true);
    LimpiarCodigo();
    if codBarras.Enabled then
      codBarras.SetFocus;
  end;
end;


procedure TFOP_Cajero.OnSelProd;
begin
  if not vsel.ZQ_Stock.IsEmpty then
  begin
    if not (ProductoYaCargado(vsel.ZQ_StockID_STOCK_PRODUCTO.AsInteger)) then
    begin
      codBarras.Text:= 'I' + vsel.ZQ_StockID_STOCK_PRODUCTO.AsString;
      //IdentificarCodigo;
      LeerCodigo('I', codBarras.Text);
      if edCant.Enabled then
        edCant.SetFocus;
    end;
    vsel.ZQ_Stock.Filtered:= False;
    vsel.Close;
  end;
end;


procedure TFOP_Cajero.SpeedButton1Click(Sender: TObject);
begin
  btnLeerCB.Click;
end;

procedure TFOP_Cajero.btnBuscarClienteClick(Sender: TObject);
begin
  if modoCargaPrevia or modoCargaOrden then
  begin
    Application.MessageBox('No puede modificar una venta ya cerrada.', 'Carga Venta', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if (CD_DetalleFactura.State = dsBrowse) then
  begin
    if not Assigned(vsel2) then
      vsel2:= TFBuscarPersona.Create(nil);

    vsel2.configRelacion(RELACION_CLIENTE, True);
    vsel2.ISBusqueda.Abrir;
    vsel2.OnSeleccionar:= OnSelPers;
    vsel2.ShowModal;
  end;
end;


procedure TFOP_Cajero.OnSelPers;
begin
  if not (vsel2.ZQ_Personas.IsEmpty) then
  begin
    ZQ_Personas.Refresh;
    ZQ_Personas.Locate('id_persona', vsel2.ZQ_PersonasID_PERSONA.AsInteger, []);
    Cliente:= ZQ_PersonasID_PERSONA.AsInteger;
    IdClienteIVA:= ZQ_PersonasID_TIPO_IVA.AsInteger;
    ClienteIVA:= ZQ_PersonasCOEFIVA.AsFloat;
    descCliente:= 0;
    if (not ZQ_PersonasDESCUENTO_ESPECIAL.IsNull) or (ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat <> 0) then
      if (application.MessageBox(pchar('El cliente seleccionado posee un descuento especial del ' + FloatToStr(ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat * 100) + '%.' +
        #13 + 'Desea aplicar este descuento para todos los productos que se carguen?'), 'Descuento Cliente', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      begin
        descCliente:= ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat * 100;
      end;

    CD_Comprobante.Edit;
    CD_ComprobanteID_CLIENTE.AsInteger:= cliente;
    CD_ComprobanteID_TIPO_IVA.AsInteger:= IdClienteIVA;
    CD_ComprobantePORC_DESCUENTO.AsFloat:= descCliente;
    CD_ComprobantePORC_IVA.AsFloat:= ClienteIVA;

    // Selecciono el descuento final segun el plan mutual que tenga
    ZQ_DctoMutual.close;
    ZQ_DctoMutual.ParamByName('idPers').AsInteger:=cliente;
    dm.ISModelo.abrir(ZQ_DctoMutual);

    ISDbSumaDetalleFacturaSumListChanged(self);

    if ZQ_DctoMutualDESCUENTO.AsInteger>0 then
       lblDctoMutual.Caption:=Format('Total descuento por %s (%d ',[ZQ_DctoMutualNOMBRE.AsString,ZQ_DctoMutualDESCUENTO.AsInteger])+'%): ' +FormatFloat('$ ##,###,##0.00  ', dctoMutual)
    else
       lblDctoMutual.Caption:='';
  end;
  vsel2.Close;
end;


procedure TFOP_Cajero.btIVAClick(Sender: TObject);
begin
  if modoCargaPrevia or modoCargaOrden then
  begin
    Application.MessageBox('No puede modificar una venta/Orden ya cerrada.', 'Carga Venta', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if (CD_DetalleFactura.State = dsBrowse) then
    if (CD_Comprobante.State = dsInsert) then
      if ISListadoIVA.Buscar then
      begin
        IdClienteIVA:= StrToInt(ISListadoIVA.Resultado);
        CD_ComprobanteID_TIPO_IVA.AsInteger:= IDClienteIVA;
        ClienteIVA:= ZQ_PersonasCOEFIVA.AsFloat;
        CD_ComprobantePORC_IVA.AsFloat:= ClienteIVA;
      end
end;


procedure TFOP_Cajero.btnBuscarVendedorClick(Sender: TObject);
begin
  if (CD_DetalleFactura.State = dsBrowse) then
  begin
    if not Assigned(vsel3) then
      vsel3:= TFBuscarPersona.Create(nil);

    vsel3.configRelacion(RELACION_EMPLEADO, false);
    vsel3.ISBusqueda.Abrir;
    vsel3.OnSeleccionar:= OnSelVendedor;
    vsel3.ShowModal;
  end;
end;


procedure TFOP_Cajero.OnSelVendedor;
var
  s: string;
begin
  if not (vsel3.ZQ_Personas.IsEmpty) then
  begin
    ZQ_Personas.Locate('id_persona', vsel3.ZQ_PersonasID_PERSONA.AsInteger, []);

    if dm.ISUsrLogin.PermisoAccion('PEDIR_CLAVE_VENDEDOR') then
    begin
      PostMessage(Handle, WM_USER + 123, 0, 0);
      InputQuery('Acceso Vendedor', 'Ingrese su Clave: ', s);

      if (vsel3.ZQ_PersonasCLAVE.AsString = s) then
      begin
        IdVendedor:= vsel3.ZQ_PersonasID_PERSONA.AsInteger;
        CD_ComprobanteID_VENDEDOR.AsInteger:= IdVendedor;
      end
      else
      begin
        Application.MessageBox('La clave ingresada es incorrecta!', 'Clave Vendedor', MB_OK + MB_ICONEXCLAMATION);
        exit;
      end
    end
    else
    begin
      IdVendedor:= vsel3.ZQ_PersonasID_PERSONA.AsInteger;
      CD_ComprobanteID_VENDEDOR.AsInteger:= IdVendedor;
    end
  end;
  vsel3.Close;
end;


procedure TFOP_Cajero.btnPreventaClick(Sender: TObject);
begin
  if modoCargaPrevia or modoCargaOrden then
  begin
    Application.MessageBox('Ya existe cargada una preventa/Orden.', 'Carga Venta', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if not (CD_DetalleFactura.IsEmpty) then
  begin
    Application.MessageBox('Debe cargar la Venta en un Comprobante vacio.' +
      char(13) + '(Borre los productos previamente cargados).', 'Carga de PreVenta ', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if not Assigned(vsel4) then
    vsel4:= TFPreventa.Create(nil);
  vsel4.OnSeleccionar:= OnSelPreventa;
  vsel4.ShowModal;
  vsel4:= nil;
end;


procedure TFOP_Cajero.OnSelPreventa;
begin
  if not vsel4.ZQ_Comprobante.IsEmpty then
  begin
    if vsel4.ZQ_ComprobanteVENCIDA.AsString = 'S' then
    begin
      Application.MessageBox('No puede cargar una venta Vencida.', 'Carga Venta', MB_OK + MB_ICONINFORMATION);
      exit;
    end
    else if (CD_DetalleFactura.IsEmpty) then
    begin
      cargarPreventa();
      if DBGridFormaPago.Enabled then
        DBGridFormaPago.SetFocus;
    end;
  end;
  vsel4.Close;
end;


procedure TFOP_Cajero.btnCargarOrdenTecnicaClick(Sender: TObject);
begin
  if IdVendedor < 0 then
  begin
    btnBuscarVendedorClick(self);
    exit;
  end;

  if not (CD_DetalleFactura.IsEmpty) then
  begin
    Application.MessageBox('Debe cargar la Venta en un Comprobante vacio.' +
      char(13) + '(Borre los productos previamente cargados).', 'Carga de PreVenta ', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if not Assigned(vsel4) then
    vsel5:= TFOP_CargarOrden.Create(nil);
  vsel5.OnSeleccionar:= OnSelOrden;
  vsel5.ISBusquedaAvanzadaOrden.Abrir;
  vsel5.ShowModal;
  vsel5:= nil;
end;

procedure TFOP_Cajero.OnSelOrden;
begin
  if not vsel5.ZQ_Optica_Orden.IsEmpty then
  begin
    if (CD_DetalleFactura.IsEmpty) then
    begin
      cargarOrden();
      if DBGridFormaPago.Enabled then
        DBGridFormaPago.SetFocus;
    end;
  end;
  vsel5.Close;
end;

procedure TFOP_Cajero.calcularMonto();
var
  desc,monto_reconoc: double;
begin
  if not (ZQ_Productos.IsEmpty) then
  begin
    if (CD_DetalleFacturaCANTIDAD.AsFloat < 0) then
      CD_DetalleFacturaCANTIDAD.AsFloat:= 1;

    ISDbSumaReconocim.RecalcAll;
    monto_reconoc:= ISDbSumaReconocim.SumCollection[0].SumValue;

    desc:= CD_DetalleFacturaPORC_DESCUENTO.AsFloat;
    CD_DetalleFacturamonto_reconocido.AsFloat:=monto_reconoc;
    CD_DetalleFacturaIMPORTE_FINAL.AsFloat:= CD_DetalleFacturaCANTIDAD.AsFloat * (CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat * (1 - (desc / 100)));
    CD_DetalleFacturaIMPORTE_FINAL.AsFloat:= CD_DetalleFacturaIMPORTE_FINAL.AsFloat - CD_DetalleFacturamonto_reconocido.AsFloat;
    lblReconocimVenta.Caption:= 'Total Restante: ' + FormatFloat('$ ##,###,##0.00 ', CD_DetalleFacturaIMPORTE_FINAL.AsFloat);
  end
end;


procedure TFOP_Cajero.edCantidadExit(Sender: TObject);
begin
  if (not (ZQ_Productos.IsEmpty) and (CD_DetalleFactura.State in [dsInsert, dsEdit])) then
    calcularMonto();
end;


procedure TFOP_Cajero.edCantidadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not (dm.ISUsrLogin.PermisoAccion('CAJA_MODIF_IMPORTE')) then
  begin
    edImporteFinalKeyDown(Sender, Key, Shift);
  end
end;


procedure TFOP_Cajero.edDescExit(Sender: TObject);
begin
  if (not (ZQ_Productos.IsEmpty) and (CD_DetalleFactura.State in [dsInsert, dsEdit])) then
    calcularMonto();
end;


procedure TFOP_Cajero.edImporteFinalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
//  case key of
//    13:
//      begin
//        if (application.MessageBox(pchar('Desea Guardar el Producto?'), 'Venta Producto', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
//          btnAceptarProd.Click;
//      end;
//    27:
//      begin
//        if (application.MessageBox(pchar('Desea Cancelar los cambios en el Producto?'), 'Venta Producto', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
//          btnCancelarProd.Click;
//      end;
//  end
end;


procedure TFOP_Cajero.crearComprobante;
begin
  punitoriosacob:= 0;
  acumulado:= 0;
  acumuladoIVA:= 0;
  acumuladoProd:= 0;
  acumFpago:= 0;
  acumFpagoReal:= 0;
  acumPrecio1:= 0;
  acumPrecio2:= 0;
  acumPrecio3:= 0;
  acumPrecio4:= 0;
  acumPrecio5:= 0;
  IdProdStock:= '';
  totFiscal:= 0;
  dctoMutual:=0;
  RelojStock.Enabled:= false;
  lblMaxVenta.Visible:= False;

  ISDbSumaDetalleFactura.SumCollection[0].SumValue:= 0;
  ISDbSumaDetalleFactura.SumCollection[1].SumValue:= 0;
  ISDbSumaDetalleFactura.SumCollection[2].SumValue:= 0;
  ISDbSumaDetalleFactura.SumCollection[3].SumValue:= 0;
  ISDbSumaDetalleFactura.SumCollection[4].SumValue:= 0;
  ISDbSumaDetalleFactura.SumCollection[5].SumValue:= 0;
  ISDbSumaDetalleFactura.SumCollection[6].SumValue:= 0;
  ISDbSumaDetalleFactura.SumCollection[7].SumValue:= 0;

  ISDbSumaFPago.SumCollection[0].SumValue:= 0;
  ISDbSumaFPago.SumCollection[1].SumValue:= 0;

  Cliente:= -1;
  IdVendedor:= -1;
  descCliente:= 0;
  ClienteIVA:= 0;
  IDClienteIVA:= 0;

  CD_Comprobante.EmptyDataSet;
  CD_Comprobante.Append;
  CD_ComprobanteID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
  CD_ComprobanteID_CLIENTE.AsInteger:= cliente;
  CD_ComprobanteID_TIPO_CPB.AsInteger:= 11; //Factura
  CD_ComprobanteID_VENDEDOR.AsInteger:= IdVendedor;
  CD_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_CONFIRMADO;
  CD_ComprobanteID_PREVENTA.Clear;

  if CheckBoxCambiarFecha.Checked then
    CD_ComprobanteFECHA.AsDateTime:= DateTimePicker_FechaCarga.DateTime
  else
    CD_ComprobanteFECHA.AsDateTime:= dm.ismodelo.FechayHora();

  CD_ComprobanteOBSERVACION.AsString:= '';
  CD_ComprobanteBASE_IMPONIBLE.AsFloat:= 0;
  CD_ComprobanteSALDO.AsFloat:= 0;
  CD_ComprobanteIMPORTE_TOTAL.AsFloat:= 0;
  CD_ComprobantePORC_IVA.AsFloat:= ClienteIVA;
  CD_ComprobanteIMPORTE_IVA.AsInteger:= 0;

  if descCliente < 0 then
    descCliente:= descCliente * 100;

  CD_ComprobantePORC_DESCUENTO.AsFloat:= descCliente / 100;
  CD_ComprobanteIMPORTE_DESCUENTO.AsInteger:= 0;
  CD_ComprobanteENCABEZADO.AsString:= '';
  CD_ComprobantePIE.AsString:= '';
  CD_ComprobanteFECHA_COBRADA.Clear;
  CD_ComprobanteFECHA_ENVIADA.Clear;
  CD_ComprobanteFECHA_IMPRESA.Clear;
  CD_ComprobanteFECHA_VENCIMIENTO.Clear;

  lblCantProductos.Caption:= 'Cantidad Productos/Servicios: ' + inttostr(CD_DetalleFactura.RecordCount);
  lblMontoProds.Caption:= 'Total Productos/Servicios: ' + FormatFloat('$ ##,###,##0.00 ', ISDbSumaDetalleFactura.SumCollection[0].SumValue);
  lblTotAPagar.Caption:= 'Total Venta: ' + FormatFloat('$ ##,###,##0.00 ', 0);
  

  modoCargaPrevia:= False;
  modoCargaOrden:= false;
  DBEdit_DetalleCliente.DataField:= 'pers_direccion';
  Label_DetalleCliente.Caption:= 'Dirección:';

  //Cargo el último nro de comprobante (para que sepa cual sigue)
  ultimoIDPago();
end;


procedure TFOP_Cajero.cargarClientePorDefecto();
begin
//  // Cargo Consumidor Final por defecto Id=0
//  ZQ_Personas.Locate('id_persona', 0, []);
//  Cliente:= ZQ_PersonasID_PERSONA.AsInteger;
//  IdClienteIVA:= ZQ_PersonasID_TIPO_IVA.AsInteger;
//  ClienteIVA:= ZQ_PersonasCOEFIVA.AsFloat;
//  descCliente:= ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat * 100;
//
//  CD_Comprobante.Edit;
//  CD_ComprobanteID_CLIENTE.AsInteger:= Cliente;
//  CD_ComprobanteID_TIPO_IVA.AsInteger:= IdClienteIVA;
//  CD_ComprobantePORC_IVA.AsFloat:= ClienteIVA;
//  CD_ComprobantePORC_DESCUENTO.AsFloat:= descCliente / 100;
end;


procedure TFOP_Cajero.ZQ_ProductosAfterScroll(DataSet: TDataSet);
begin
  edImagen.Visible:= not ((ZQ_ProductosIMAGEN.IsNull) or (ZQ_ProductosIMAGEN.AsString = ''));
  edImagen.BringToFront;
end;


procedure TFOP_Cajero.codBarrasEnter(Sender: TObject);
begin
  LimpiarCodigo;
end;


procedure TFOP_Cajero.codBarrasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
  begin
    IdentificarCodigo;

  end
  else if key = 27 then
  begin
    VerLectorCB(false);
    btnProdCancelar.Click;
  end
end;


function TFOP_Cajero.ProductoYaCargado(id: Integer): Boolean;
begin
  Result:= False;
// Comentado deja cargar mas de un producto repetido...
  CD_DetalleFactura.Filtered := false;
  CD_DetalleFactura.Filter:= Format('id_prod_stock = %d ',[id]);
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


//AGREGAR UN PRODUCTO
function TFOP_Cajero.agregar(detalle: string; prodStock: integer): Boolean;
var
  i: Integer;
begin
  Result:= False;
  if not (ProductoYaCargado(prodStock)) then
  begin
    CD_DetalleFactura.Append;

    CD_DetalleFacturaID_PRODUCTO.AsInteger:= ZQ_ProductosID_PRODUCTO.AsInteger;
    CD_DetalleFacturaID_PROD_STOCK.AsInteger:= prodStock;
    CD_DetalleFacturaproducto.AsString:= ZQ_ProductosDETALLE_PROD.AsString;
    CD_DetalleFacturaDETALLE.AsString:= detalle;
    CD_DetalleFacturaCANTIDAD.AsFloat:= 1;
    CD_DetalleFacturaIMPORTE_COSTO.AsFloat:= ZQ_ProductosPRECIO_COSTO.AsFloat;
    CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat:= ZQ_ProductosPRECIO_VENTA.AsFloat;
    CD_DetalleFacturaPORC_DESCUENTO.AsFloat:= (ZQ_ProductosCOEF_DESCUENTO.AsFloat * 100);
    CD_DetalleFacturaIMPUESTO_INTERNO.AsFloat:= ZQ_ProductosIMPUESTO_INTERNO.AsFloat;
    CD_DetalleFacturamonto_reconocido.AsFloat:= 0;
    //si el iva que tiene configurado el producto es 0 o nulo le meto 21%
    if ZQ_ProductosIMPUESTO_IVA.IsNull or (ZQ_ProductosIMPUESTO_IVA.AsFloat = 0) then
      CD_DetalleFacturaPORC_IVA.AsFloat:= 0.21
    else
      CD_DetalleFacturaPORC_IVA.AsFloat:= ZQ_ProductosIMPUESTO_IVA.AsFloat;
    //base imponible = cantidad x precio unitario de venta
    CD_DetalleFacturaBASE_IMPONIBLE.AsFloat:= (CD_DetalleFacturaCANTIDAD.AsInteger * CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat);
    CD_DetalleFacturaIMPORTE_FINAL.AsFloat:= CD_DetalleFacturaBASE_IMPONIBLE.AsFloat;
    //porcentaje de iva x importe final
    CD_DetalleFacturaIMPORTE_IVA.AsFloat:= CD_DetalleFacturaPORC_IVA.AsFloat * CD_DetalleFacturaIMPORTE_FINAL.AsFloat;
    CD_DetalleFacturaimporte_original.AsFloat:= CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat;

    // Cargo los precios que correspondan según configuración de Tipo_Formapago (Columna_precio=0 toma el PRECIO_VENTA)
    ZQ_ColsPrecios.Close;
    ZQ_ColsPrecios.Open;
    for i:= 1 to 5 do
    begin
      ZQ_ColsPrecios.Filtered:= False;
      ZQ_ColsPrecios.Filter:= Format('COLUMNA_PRECIO=%d', [i]);
      ZQ_ColsPrecios.Filtered:= True;

      if ZQ_ColsPreciosCOLUMNA_PRECIO.AsInteger = i then
        CD_DetalleFactura.FieldByName(Format('PRECIO%d', [i])).AsFloat:= ZQ_Productos.FieldByName(Format('PRECIO%d', [i])).AsFloat
      else
        CD_DetalleFactura.FieldByName(Format('PRECIO%d', [i])).AsFloat:= ZQ_ProductosPRECIO_VENTA.AsFloat;
    end;

    //Filtro el CDS para que traiga los reconocimientos del prod editado
    CD_Reconocimientos.Filtered:=False;
    CD_Reconocimientos.Filter:=Format('id_prod=%d',[CD_DetalleFacturaID_PRODUCTO.AsInteger]);
    CD_Reconocimientos.Filtered:=True;

    modoEscrituraProd();
    Result:= True;
  end
end;


procedure TFOP_Cajero.btnAceptarProdClick(Sender: TObject);
var
 monto_reconoc:Real;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if CD_DetalleFacturaIMPORTE_FINAL.AsFloat <= 0 then
  begin
    Application.MessageBox('El importe ingresado es incorrecto.', 'Atención', MB_ICONINFORMATION);
    if edImporteUnitario.Enabled then
      edImporteUnitario.SetFocus;
    exit;
  end;



  if (CD_DetalleFacturaIMPORTE_FINAL.AsFloat <= monto_reconoc) then
  begin
    Application.MessageBox('El importe total no debe ser menor al Reconocido.', 'Atención', MB_ICONINFORMATION);
    exit;
  end;

  if ((not (ZQ_Productos.IsEmpty)) and (CD_DetalleFacturaCANTIDAD.AsFloat > 0)) then
    if ((ZQ_ProductosLLEVAR_STOCK.AsString <> 'S') or (ZQ_ProductosSTOCK_ACTUAL.AsFloat >= CD_DetalleFacturaCANTIDAD.AsFloat)) then
    begin
      CD_DetalleFacturaIMPORTE_VENTA.AsFloat:= CD_DetalleFacturaIMPORTE_FINAL.AsFloat;
      CD_DetalleFacturaIMPORTE_IVA.AsFloat:= CD_DetalleFacturaPORC_IVA.AsFloat * CD_DetalleFacturaIMPORTE_VENTA.AsFloat;
      CD_DetalleFactura.Post;

      lblCantProductos.Caption:= 'Cantidad Productos/Servicios: ' + inttostr(CD_DetalleFactura.RecordCount);
      lblMontoProds.Caption:= 'Total Productos/Servicios: ' + FormatFloat('$ ##,###,##0.00 ', ISDbSumaDetalleFactura.SumCollection[0].SumValue);

      if ZQ_DctoMutualDESCUENTO.AsInteger>0 then
       lblDctoMutual.Caption:=Format('Total descuento por %s (%d ',[ZQ_DctoMutualNOMBRE.AsString,ZQ_DctoMutualDESCUENTO.AsInteger])+'%): ' +FormatFloat('$ ##,###,##0.00  ', dctoMutual)
      else
       lblDctoMutual.Caption:='';

      modoLecturaProd();

      if DBGridListadoProductos.Enabled then
        DBGridListadoProductos.SetFocus;
    end
    else
    begin
      Application.MessageBox('El stock actual del producto en dicha sección es insuficiente para la cantidad ingresada.', 'Atención', MB_ICONINFORMATION);
      if edCant.Enabled then
        edCant.SetFocus;
      exit;
    end;
end;


procedure TFOP_Cajero.btnCancelarProdClick(Sender: TObject);
begin
  if (CD_DetalleFactura.State in [dsInsert, dsEdit]) then
    CD_DetalleFactura.Cancel;

  modoLecturaProd();

  if DBGridListadoProductos.Enabled then
    DBGridListadoProductos.SetFocus;
end;


procedure TFOP_Cajero.modoLecturaProd();
begin
  VerLectorCB(false);
  PCargaProd.Visible:= False;
  PCargaProd.SendToBack;
  PanelProductosYFPago.Enabled:= True;
  PanelDetalles.Enabled:= True;
  grupoVertical.Enabled:= True;
  GrupoGuardarCancelar.Enabled:= True;

  //No trae productos si se cancela
  edImagen.Visible:= False;
  ZQ_Productos.Close;
end;


procedure TFOP_Cajero.modoEscrituraProd();
begin
  VerLectorCB(false);

  PCargaProd.Visible:= True;
  PCargaProd.BringToFront;
  dm.centrarPanel(FOP_Cajero,PCargaProd);

  ISDbSumaReconocim.SumCollection[0].SumValue:= 0;

  PanelProductosYFPago.Enabled:= False;
  PanelDetalles.Enabled:= False;
  grupoVertical.Enabled:= False;
  GrupoGuardarCancelar.Enabled:= False;

  if edCant.Enabled then
    edCant.SetFocus;

  //Permisos para modif el importe directo o dar un descuento
  edDesc.Enabled:= dm.ISUsrLogin.PermisoAccion('CAJA_MODIF_IMPORTE');
  edImporteUnitario.Enabled:= dm.ISUsrLogin.PermisoAccion('CAJA_MODIF_IMPORTE');
end;


procedure TFOP_Cajero.EditarProdClick(Sender: TObject);
begin
  if modoCargaPrevia or modoCargaOrden then
  begin
    Application.MessageBox('No puede modificar una venta/Orden ya cerrada.', 'Carga Venta', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if not (CD_DetalleFactura.IsEmpty) then
  begin
    ZQ_Productos.Close;
    ZQ_Productos.sql[15]:= Format('and(sp.id_stock_producto=%s)', [CD_DetalleFacturaID_PROD_STOCK.AsString]);
    ZQ_Productos.Open;

    //Filtro el CDS para que Juanmatraiga los reconocimientos del prod editado
    CD_Reconocimientos.Filtered:=False;
    CD_Reconocimientos.Filter:=Format('id_prod=%d',[CD_DetalleFacturaID_PRODUCTO.AsInteger]);
    CD_Reconocimientos.Filtered:=True;


    CD_DetalleFactura.Edit;
    modoEscrituraProd();
    if edCant.Enabled then
      edCant.SetFocus;
  end
end;


procedure TFOP_Cajero.CD_DetalleFacturaAfterScroll(DataSet: TDataSet);
begin
  lblCantProductos.Caption:= 'Cantidad Productos/Servicios: ' + inttostr(CD_DetalleFactura.RecordCount);
  lblMontoProds.Caption:= 'Total Productos/Servicios: ' + FormatFloat('$ ##,###,##0.00 ', ISDbSumaDetalleFactura.SumCollection[0].SumValue);
  if ZQ_DctoMutualDESCUENTO.AsInteger>0 then
   lblDctoMutual.Caption:=Format('Total descuento por %s (%d ',[ZQ_DctoMutualNOMBRE.AsString,ZQ_DctoMutualDESCUENTO.AsInteger])+'%): ' +FormatFloat('$ ##,###,##0.00  ', dctoMutual)
  else
   lblDctoMutual.Caption:='';
end;


procedure TFOP_Cajero.btQuitarProductoClick(Sender: TObject);
begin
  if modoCargaPrevia or modoCargaOrden then
  begin
    Application.MessageBox('No puede modificar una venta/Orden ya cerrada.', 'Carga Venta', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if not (CD_DetalleFactura.IsEmpty) then
  begin
    CD_DetalleFactura.Delete;

    lblCantProductos.Caption:= 'Cantidad Productos/Servicios: ' + inttostr(CD_DetalleFactura.RecordCount);
    lblMontoProds.Caption:= 'Total Productos/Servicios: ' + FormatFloat('$ ##,###,##0.00 ', ISDbSumaDetalleFactura.SumCollection[0].SumValue);
    if ZQ_DctoMutualDESCUENTO.AsInteger>0 then
     lblDctoMutual.Caption:=Format('Total descuento por %s (%d ',[ZQ_DctoMutualNOMBRE.AsString,ZQ_DctoMutualDESCUENTO.AsInteger])+'%): ' +FormatFloat('$ ##,###,##0.00  ', dctoMutual)
    else
     lblDctoMutual.Caption:='';
     end;
end;
///////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////


procedure TFOP_Cajero.btnQuitarPagoClick(Sender: TObject);
begin
  if CD_Fpago.IsEmpty or (CD_Fpago_esSenia.AsString = 'S') then
    exit;

  CD_Fpago.Delete;
  ISDbSumaFPago.RecalcAll;
end;


procedure TFOP_Cajero.edImporteFinalExit(Sender: TObject);
begin
  if CD_DetalleFactura.State in [dsInsert, dsEdit] then
    if edCant.Enabled then
      edCant.SetFocus;
end;


procedure TFOP_Cajero.BtCancelarPagoClick(Sender: TObject);
begin
  if (CD_DetalleFactura.State = dsBrowse) then
    if (application.MessageBox(pchar('Desea Cancelar la Boleta Actual y quitar todos sus Productos?'), 'Borrar Productos', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
      cancelarProducto();
end;


procedure TFOP_Cajero.BtAceptarPagoClick(Sender: TObject);
begin
  if not (validarFPago()) then
    exit;

  if validarBoleta() then
  begin
    PConfirmarVenta.Visible:= True;
    PConfirmarVenta.BringToFront;
    dm.centrarPanel(FOP_Cajero, PConfirmarVenta);
    PanelContenedorDerecha.Enabled:= not (PConfirmarVenta.Visible);
    GrupoGuardarCancelar.Enabled:= False;
    grupoVertical.Enabled:= False;
    CD_ComprobantemontoRecibido.AsFloat:= 0;
    recalcularBoleta();
    edPorcDctoTotal.Enabled:= dm.ISUsrLogin.PermisoAccion('CAJA_MODIF_IMPORTE');
    if edPorcDctoTotal.Enabled then
      edPorcDctoTotal.SetFocus;
  end;
end;


//GUARDAR COMPROBANTE
function TFOP_Cajero.guardarComprobante(): Boolean;
var
  comprobante, vendedor: integer;
begin
  Result:= False;
  //Hacer las validaciones correspondientes

  if not (dm.ismodelo.verificar_transaccion(abmComprobante)) then
    if dm.ismodelo.iniciar_transaccion(abmComprobante, [ZQ_Comprobante, ZQ_Comprobante_FormaPago, ZQ_ComprobanteDetalle, ZQ_ComprobPreventa, ZQ_Optica_Orden,ZQ_ReconocimOSS,ZQ_ReconocMutual]) then
    begin
      CD_Comprobante.Post;
      ZQ_Comprobante.Append;
      ZSP_Comprobante.Active:= True;
      ZQ_ComprobanteID_COMPROBANTE.AsInteger:= ZSP_ComprobanteID.AsInteger;
      ZQ_ComprobanteCODIGO.AsString:= ZSP_ComprobanteCODIGO.AsString;
      ZSP_Comprobante.Active:= False;
      comprobante:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
      ZQ_ComprobanteID_SUCURSAL.Value:= CD_ComprobanteID_SUCURSAL.Value;
      ZQ_ComprobanteID_PROVEEDOR.Clear;
      ZQ_ComprobanteID_CLIENTE.AsInteger:= CD_ComprobanteID_CLIENTE.AsInteger;
      ZQ_ComprobanteID_TIPO_CPB.value:= CD_ComprobanteID_TIPO_CPB.Value;
      ZQ_ComprobanteID_VENDEDOR.Value:= CD_ComprobanteID_VENDEDOR.Value;
      vendedor:= ZQ_ComprobanteID_VENDEDOR.Value;
      ZQ_ComprobanteID_COMP_ESTADO.Value:= CD_ComprobanteID_COMP_ESTADO.Value;

      ZQ_ComprobanteFECHA.AsDateTime:= CD_ComprobanteFECHA.AsDateTime;
      ZQ_ComprobanteFECHA_COBRADA.AsDateTime:= ZQ_ComprobanteFECHA.AsDateTime; //antes tenia la del DM.ismodelo
      ZQ_ComprobanteOBSERVACION.Value:= CD_ComprobanteOBSERVACION.Value;
      ZQ_ComprobanteBASE_IMPONIBLE.Value:= CD_ComprobanteBASE_IMPONIBLE.Value;
      ZQ_ComprobanteSALDO.AsFloat:= CD_ComprobanteSALDO.Value;
      ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:= CD_ComprobanteIMPORTE_TOTAL.Value;
      ZQ_ComprobantePORC_IVA.AsFloat:= CD_ComprobantePORC_IVA.Value;
      ZQ_ComprobanteIMPORTE_IVA.AsFloat:= CD_ComprobanteIMPORTE_IVA.AsFloat;
      ZQ_ComprobantePORC_DESCUENTO.AsFloat:= CD_ComprobantePORC_DESCUENTO.AsFloat / 100;
      ZQ_ComprobanteIMPORTE_DESCUENTO.AsFloat:= CD_ComprobanteIMPORTE_DESCUENTO.AsFloat;
      ZQ_ComprobanteIMPORTE_VENTA.AsFloat:= CD_ComprobanteIMPORTE_VENTA.AsFloat;
      ZQ_ComprobanteENCABEZADO.AsString:= CD_ComprobanteENCABEZADO.AsString;
      ZQ_ComprobantePIE.AsString:= CD_ComprobantePIE.AsString;
      ZQ_ComprobanteID_TIPO_IVA.AsInteger:= CD_ComprobanteID_TIPO_IVA.AsInteger;
      ZQ_ComprobanteID_PREVENTA.AsInteger:= CD_ComprobanteID_PREVENTA.AsInteger;
      ZQ_ComprobanteFECHA_ENVIADA.Clear;
      ZQ_ComprobanteFECHA_IMPRESA.Clear;
      ZQ_ComprobanteFECHA_VENCIMIENTO.Clear;
      ZQ_Comprobante.Post;


      //Grabo el descuento por mutual si existe
      if not(ZQ_DctoMutual.IsEmpty) then
       begin
        ZQ_ReconocMutual.Append;
        ZQ_ReconocMutualMONTO_RECONOCIDO.AsFloat:=dctoMutual;
        ZQ_ReconocMutualID_OS.AsInteger:=ZQ_DctoMutualID_OS.AsInteger;
        ZQ_ReconocMutualID_COMPROBANTE.AsInteger:=comprobante;
        ZQ_ReconocMutual.Post;
       end;



      if modoCargaPrevia then
      begin
        ZQ_ComprobPreventa.Edit;
        ZQ_ComprobPreventaFECHA_COBRADA.AsDateTime:= dm.ismodelo.FechayHora();
        ZQ_ComprobPreventaID_COMP_ESTADO.AsInteger:= ESTADO_ALMACENADO;
        ZQ_ComprobPreventa.Post;
      end;

      if modoCargaOrden then
      begin
        ZQ_Optica_Orden.Edit;
        //ZQ_Optica_OrdenFECHA_ORDEN.AsDateTime:= dm.ismodelo.FechayHora();
        ZQ_Optica_OrdenID_ESTADO.AsInteger:= 2;
        ZQ_Optica_OrdenFACTURADO_POR.AsInteger:= ZQ_ComprobanteID_VENDEDOR.AsInteger;
        ZQ_Optica_OrdenID_COMPROBANTE.AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
        ZQ_Optica_OrdenSALDO.AsFloat:= 0;
        ZQ_Optica_Orden.Post;
      end;

      grabarDetallesFactura();
      grabarPagos();
    end;

  try
    begin
      if not (dm.ismodelo.finalizar_transaccion(abmComprobante)) then
      begin
        dm.ismodelo.cancelar_transaccion(abmComprobante);
        Application.MessageBox('No se pudo crear el Comprobante', 'Atención', MB_ICONINFORMATION);
        dm.ismodelo.cancelar_transaccion(abmComprobante);
      end
      else
      begin
        if (totFiscal > 0) then
          imprimirFiscal(comprobante, 'F');

        CD_Fpago.EmptyDataSet;
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
        ZQ_DctoMutual.close;
        // Mantengo el vendedor dpes de una venta
        if not (borrarVendedor) then
          IdVendedor:= vendedor;

        CD_Comprobante.Edit;
        CD_ComprobanteID_VENDEDOR.Value:= IdVendedor;
        Result:= True;
        panelPreventa(false);
        panelOrden(false);
      end;
    end
  except
    begin
      Application.MessageBox('No se pudo crear el Comprobante', 'Atención', MB_ICONINFORMATION);
    end;
  end;
end;


procedure TFOP_Cajero.btnCancelarVentaClick(Sender: TObject);
begin
  if dm.ismodelo.verificar_transaccion(abmComprobante) then
    dm.ismodelo.cancelar_transaccion(abmComprobante);
  CD_Comprobante.Edit;
  PConfirmarVenta.Visible:= False;
  PanelContenedorDerecha.Enabled:= not (PConfirmarVenta.Visible);
  GrupoGuardarCancelar.Enabled:= True;
  grupoVertical.Enabled:= True;
  if DBGridListadoProductos.Enabled then
    DBGridListadoProductos.SetFocus;
end;


procedure TFOP_Cajero.grabarDetallesFactura;
var
  parcial, auxTotalIva: Double;
  i, cant: integer;
begin
  Prorrateo();
  ProrrateoFiscal();
  parcial:= 0;
  auxTotalIva:= 0;
  i:= 1;
  cant:= CD_DetalleFactura.RecordCount;

  CD_DetalleFactura.First;
  while not CD_DetalleFactura.Eof do
  begin
    ZQ_ComprobanteDetalle.Open;
    ZQ_ComprobanteDetalle.Append;

    ZSP_Comprobante_Detalle.Active:= True;
    ZQ_ComprobanteDetalleID_COMPROBANTE_DETALLE.AsInteger:= ZSP_Comprobante_DetalleID.AsInteger;
    ZSP_Comprobante_Detalle.Active:= False;

    ZQ_ComprobanteDetalleID_COMPROBANTE.AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    ZQ_ComprobanteDetalleID_PRODUCTO.AsInteger:= CD_DetalleFacturaID_PRODUCTO.AsInteger;
    ZQ_ComprobanteDetalleID_STOCK_PRODUCTO.AsInteger:= CD_DetalleFacturaID_PROD_STOCK.AsInteger;
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
    ZQ_ComprobanteDetalleIMPORTE_IF.AsFloat:= CD_DetalleFacturaIMPORTE_IF.AsFloat;
    ZQ_ComprobanteDetalleIMPORTE_COSTO.AsFloat:= CD_DetalleFacturaIMPORTE_COSTO.AsFloat;
    ZQ_ComprobanteDetalleIMPORTE_RECONOC_OS.AsFloat:= CD_DetalleFacturamonto_reconocido.AsFloat;

    ZQ_ComprobanteDetalleIMPORTE_IF_SINIVA.AsFloat:= ZQ_ComprobanteDetalleIMPORTE_IF.AsFloat / (1 + CD_DetalleFacturaPORC_IVA.AsFloat);
    ZQ_ComprobanteDetalleIMPORTE_IF_SINIVA.AsFloat:= RoundTo(ZQ_ComprobanteDetalleIMPORTE_IF_SINIVA.AsFloat, -2);
    ZQ_ComprobanteDetalleIMPORTE_IVA_IF.AsFloat:= RoundTo(ZQ_ComprobanteDetalleIMPORTE_IF.AsFloat - ZQ_ComprobanteDetalleIMPORTE_IF_SINIVA.AsFloat, -2);

    parcial:= parcial + ZQ_ComprobanteDetalleIMPORTE_IF_SINIVA.AsFloat;
    auxTotalIva:= auxTotalIva + ZQ_ComprobanteDetalleIMPORTE_IVA_IF.AsFloat;

    //Si es el ultimo...
    if (i = cant) then
    begin
      ZQ_ComprobanteDetalleIMPORTE_IF_SINIVA.AsFloat:= ZQ_ComprobanteDetalleIMPORTE_IF_SINIVA.AsFloat + (totFiscal - parcial - auxTotalIva);
    end;

    //Filtro el CDS para que traiga los reconocimientos del prod editado
    CD_Reconocimientos.Filtered:=False;
    CD_Reconocimientos.Filter:=Format('id_prod=%d',[CD_DetalleFacturaID_PRODUCTO.AsInteger]);
    CD_Reconocimientos.Filtered:=True;

    //Guardo los reconocimientos de Oss de cada producto en OPTICA_RECONOCIM_OSS
    if ZQ_ComprobanteDetalleIMPORTE_RECONOC_OS.AsFloat>0 then
     begin
         CD_Reconocimientos.First;
         while not CD_Reconocimientos.Eof do
         begin
            ZQ_ReconocimOSS.Append;
            ZQ_ReconocimOSSID_OS.AsInteger:=CD_Reconocimientosid_os.AsInteger;
            ZQ_ReconocimOSSID_PRODUCTO.AsInteger:=CD_Reconocimientosid_prod.AsInteger;
            ZQ_ReconocimOSSMONTO_RECONOCIDO.AsFloat:=CD_Reconocimientosmonto_reconocido.AsFloat;
            ZQ_ReconocimOSSID_COMPROBANTE_DETALLE.AsInteger:=ZQ_ComprobanteDetalleID_COMPROBANTE_DETALLE.AsInteger;
            ZQ_ReconocimOSS.Post;

            CD_Reconocimientos.Next;
         end;
     end;
    CD_Reconocimientos.Filtered:=False;
    ZQ_ComprobanteDetalle.Post;
    inc(i);
    CD_DetalleFactura.Next;
  end;

//  ZQ_Comprobante.edit;
//  ZQ_ComprobanteIMPORTE_IVA.AsFloat:= auxTotalIva;
//  ZQ_Comprobante.post;
end;


procedure TFOP_Cajero.Prorrateo();
var
  totalProds, totalFP, coefic, acum: Double;
  cant, i: Integer;
begin
  //Can Productos
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


procedure TFOP_Cajero.ProrrateoFiscal();
var
  totalProds, totalFP, coefic, acum: Double;
  cant, i: Integer;
begin
  //Can Productos
  cant:= CD_DetalleFactura.RecordCount;
  totalProds:= acumulado;
  totalFP:= 0;
  acum:= 0;

  totFiscal:= 0;

  CD_VentaFinal.First;
  while not (CD_VentaFinal.Eof) do
  begin
    //ZQ_FormasPago.Locate('id_tipo_formapago',CD_FpagoID_TIPO_FORMAPAG.AsInteger,[]);
    if (CD_VentaFinalfiscal.AsString = 'S') then
      totalFP:= totalFP + CD_VentaFinalimporteDescuento.AsFloat;
    CD_VentaFinal.Next;
  end;

  totFiscal:= totalFP;

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
        CD_DetalleFacturaIMPORTE_IF.AsFloat:= totalFP - acum;
      end
      else
        CD_DetalleFacturaIMPORTE_IF.AsFloat:= CD_DetalleFacturaIMPORTE_VENTA.AsFloat * coefic;

      acum:= acum + CD_DetalleFacturaIMPORTE_IF.AsFloat;
      CD_DetalleFactura.Post;
      CD_DetalleFactura.Next;
      i:= i + 1;
    end;
  end
end;


procedure TFOP_Cajero.edPorcDctoTotalExit(Sender: TObject);
begin
  recalcularBoleta();
  if edRecibido.Enabled then
    edRecibido.SetFocus;
end;


procedure TFOP_Cajero.recalcularBoleta;
begin
  CD_ComprobanteIMPORTE_TOTAL.AsFloat:= acumFpagoReal;
  CD_ComprobanteIMPORTE_DESCUENTO.AsFloat:= CD_ComprobanteIMPORTE_TOTAL.AsFloat * CD_ComprobantePORC_DESCUENTO.AsFloat / 100;

  CD_ComprobanteSALDO.AsFloat:= 0;
  CD_ComprobanteIMPORTE_VENTA.AsFloat:= CD_ComprobanteIMPORTE_TOTAL.AsFloat - CD_ComprobanteIMPORTE_DESCUENTO.AsFloat;
  CD_ComprobanteIMPORTE_IVA.AsFloat:= CD_ComprobanteIMPORTE_VENTA.AsFloat * CD_ComprobantePORC_IVA.AsFloat;
  lblVtaTotal.Caption:= FormatFloat('$ ##,###,##0.00 ', CD_ComprobanteIMPORTE_VENTA.AsFloat);
  lblVtaIVA.Caption:= FormatFloat('$ ##,###,##0.00 ', CD_ComprobanteIMPORTE_IVA.AsFloat);
  lblVtaDesc.Caption:= FormatFloat('$ ##,###,##0.00 ', CD_ComprobanteIMPORTE_DESCUENTO.AsFloat);
  lblVtaSubtotal.Caption:= FormatFloat('$ ##,###,##0.00 ', CD_ComprobanteIMPORTE_TOTAL.AsFloat - CD_ComprobanteIMPORTE_IVA.AsFloat);

  CD_VentaFinal.EmptyDataSet;
  CD_Fpago.First;

  ISDbSumaVentaFinal.SumCollection[1].SumValue:= 0;

  //Agrupo las formas de Pago iguales
  sacarRepetidosFP();

  RecalcularMontoPago();

  ISDbSumaVentaFinal.RecalcAll;
  calcularEfectivo();
  importeVenta:= CD_ComprobanteIMPORTE_VENTA.AsFloat;
end;


procedure TFOP_Cajero.btnConfirmarVentaClick(Sender: TObject);
begin
  guardarComprobante();
  ultimoIDPago();
end;


function TFOP_Cajero.validarBoleta: Boolean;
var
  mensaje: string;
begin
  result:= true;
  mensaje:= '';

  if (acumulado <= 0) then
  begin
    mensaje:= 'El monto final debe ser superior a $ 0.00.';
    result:= false;
  end;

  if (cliente < 0) then
  begin
    mensaje:= 'Debe seleccionar un Cliente.';
    result:= false;
  end;

  if (IdVendedor < 0) then
  begin
    mensaje:= 'Debe seleccionar un Vendedor.';
    result:= false;
  end;

  if CD_DetalleFactura.IsEmpty then
  begin
    mensaje:= 'Debe cargar al menos un Producto.';
    result:= false;
  end;

  if CD_ComprobanteID_TIPO_IVA.IsNull then
  begin
    mensaje:= 'Debe cargar el tipo de IVA.';
    result:= false;
  end;

  //Verifica_CUIT es un campo de la tabla TIPO_CUIT, se configura ahí si se le exige el NroCUIT
  if (ZQ_TipoIVAVERIFICA_CUIT.AsString='S') then
    if not EsCUITValido(CD_Comprobantepers_cuit.AsString) then
    begin
      mensaje:= mensaje+#13+'El valor ingresado en el campo Cuit/Cuil es invalido.'+char(13)+'(sólo debe ingresar números, sin guiones)';
      result := false;
    end;

  if Result = False then
  begin
    mensaje:= mensaje+#13#13+'Verifique.';
    Application.MessageBox(pchar(mensaje), 'Validación', MB_OK+MB_ICONINFORMATION);
  end;
end;


procedure TFOP_Cajero.APagoExecute(Sender: TObject);
begin
  btnLeerCB.Click;
end;


function TFOP_Cajero.validarFPago: Boolean;
begin
  Result:= True;

  if (acumulado <= 0) then
  begin
    Application.MessageBox('El monto final debe ser superior a $0,00, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    result:= false;
    exit;
  end;

  if (acumFpago <= 0) or (CompareValue(acumulado, acumFpago, 0.001) <> 0) then
  begin
    Application.MessageBox('El monto en las Formas de Pago es incorrecto, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    result:= false;
    exit;
  end;

  //Saco las formas de pago que sean con importe=0 o sale si no tiene cuenta(al cuete)
  CD_Fpago.First;
  while not (CD_Fpago.Eof) do
  begin
    if CD_Fpago_importeVenta.AsFloat <= 0 then
      CD_Fpago.Delete;
    if (CD_FpagoID_TIPO_FORMAPAG.IsNull or CD_FpagoCUENTA_INGRESO.IsNull) then
    begin
      Application.MessageBox('El Tipo de Pago y/o Cuenta en las Formas de Pago es incorrecto, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
      result:= false;
      exit;
    end;

    CD_Fpago.Next;
  end;

  //verifico si lo que me paga con Nota de credito es menor o igual al saldo disponible en Nota de credito si el Cleinte no es Consum Final
  if ((cliente <> 0) and (not verificarSaldoNotaCredito(CD_Fpago, CD_ComprobanteID_CLIENTE.AsInteger))) then
  begin
    mensaje:= format('El Cliente no posee una Nota de Credito con' + #13 +
      'saldo suficiente para realizar la operación' + #13 +
      '(Total Nota Credito = %n / Saldo Nota Credito = %n)', [nota_credito_total, nota_credito_saldo]);
    Application.MessageBox(pchar(mensaje), 'Atención', MB_OK + MB_ICONINFORMATION);
    result:= false;
    exit;
  end;
end;


procedure TFOP_Cajero.RecalcularMontoPago();
begin
  acumFpago:= ISDbSumaFPago.SumCollection[0].SumValue;

  acumFpagoReal:= ISDbSumaFPago.SumCollection[1].SumValue;
  lblTotAPagar.Caption:= 'Total a Pagar: ' + FormatFloat('$ ##,###,##0.00 ', acumFpagoReal);


  if (CD_Comprobante.state = dsInsert) then
    CD_ComprobanteBASE_IMPONIBLE.AsFloat:= acumFpago;

  if acumFpagoReal > MONTO_MAX_VENTA then
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


procedure TFOP_Cajero.grabarPagos;
begin
  CD_Fpago.First;
  while not CD_Fpago.Eof do
  begin
    ZQ_Comprobante_FormaPago.Append;
    ZQ_Comprobante_FormaPagoID_COMPROBANTE.AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;

//    if CD_Fpago_esSenia.AsString = 'S' then
//      //si es una seña cambio la fecha de pago a la fecha de la seña por las estadisticas
//      ZQ_Comprobante_FormaPagoFECHA_FP.AsDateTime:= ZQ_PreventaFPFECHA_FP.AsDateTime
//    else
//      //si no es una seña la fecha de pago es la misma del comprobante
//      ZQ_Comprobante_FormaPagoFECHA_FP.AsDateTime:= ZQ_ComprobanteFECHA.AsDateTime;

    if CD_FpagoFECHA_FP.IsNull then
      ZQ_Comprobante_FormaPagoFECHA_FP.AsDateTime:= ZQ_ComprobanteFECHA.AsDateTime
    else
      ZQ_Comprobante_FormaPagoFECHA_FP.AsDateTime:= CD_FpagoFECHA_FP.AsDateTime;

    ZQ_Comprobante_FormaPagoID_TIPO_FORMAPAG.AsInteger:= CD_FpagoID_TIPO_FORMAPAG.AsInteger;
    if CD_FpagoMDCP_FECHA.IsNull then
      ZQ_Comprobante_FormaPagoMDCP_FECHA.Clear
    else
      ZQ_Comprobante_FormaPagoMDCP_FECHA.AsDateTime:= CD_FpagoMDCP_FECHA.AsDateTime;

    ZQ_Comprobante_FormaPagoMDCP_BANCO.AsString:= CD_FpagoMDCP_BANCO.AsString;
    ZQ_Comprobante_FormaPagoMDCP_CHEQUE.AsString:= CD_FpagoMDCP_CHEQUE.AsString;
    ZQ_Comprobante_FormaPagoIMPORTE.AsFloat:= CD_FpagoIMPORTE.AsFloat - (CD_FpagoIMPORTE.AsFloat * CD_ComprobantePORC_DESCUENTO.AsFloat / 100);
    ZQ_Comprobante_FormaPagoCUENTA_INGRESO.AsInteger:= CD_FpagoCUENTA_INGRESO.AsInteger;
    ZQ_Comprobante_FormaPagoIMPORTE_REAL.AsFloat:= CD_Fpago_importeVenta.AsFloat - (CD_Fpago_importeVenta.AsFloat * CD_ComprobantePORC_DESCUENTO.AsFloat / 100);
    ZQ_Comprobante_FormaPago.Post;
    CD_Fpago.Next;
  end;
end;


procedure TFOP_Cajero.calcularFP();
var
  precio: Double;
begin
  if not (CD_DetalleFactura.IsEmpty) then
    if CD_Fpago.State in [dsInsert, dsEdit] then
    begin
      //Si es una sola forma de pago le pongo el valor del total por defecto
      if ((acumulado > 0) and ((CD_FpagoIMPORTE.IsNull) or (CD_FpagoIMPORTE.AsFloat = 0)))
        and not (CD_FpagoID_TIPO_FORMAPAG.IsNull and CD_FpagoCUENTA_INGRESO.IsNull) then
      begin
        CD_FpagoIMPORTE.AsFloat:= acumulado - acumFpago;
      end;

      //Si esta en modo Carga orden el coefPrecio siempre es 1 ya que no se puede modificar el precio.
      // ni aplicar descuentos a cada producto en particular.. si al final
      if modoCargaOrden then
      begin
        coefPrecio1:= 1;
        coefPrecio2:= 1;
        coefPrecio3:= 1;
        coefPrecio4:= 1;
        coefPrecio5:= 1;
      end;


      if not (CD_Fpago_nroPrecio.IsNull) then
      begin
        case CD_Fpago_nroPrecio.AsInteger of
          0:
            begin
              precio:= CD_FpagoIMPORTE.AsFloat;
            end;
          1:
            begin
              precio:= CD_FpagoIMPORTE.AsFloat * coefPrecio1;
            end;
          2:
            begin
              precio:= CD_FpagoIMPORTE.AsFloat * coefPrecio2;
            end;
          3:
            begin
              precio:= CD_FpagoIMPORTE.AsFloat * coefPrecio3;
            end;
          4:
            begin
              precio:= CD_FpagoIMPORTE.AsFloat * coefPrecio4;
            end;
          5:
            begin
              precio:= CD_FpagoIMPORTE.AsFloat * coefPrecio5;
            end;
        end;

        CD_Fpago_importeVenta.AsFloat:= precio + (precio * CD_Fpago_desc_rec.AsFloat);
      end;

      RecalcularMontoPago();
    end;
end;


function TFOP_Cajero.calcularSaldoCtaCorr(): Double;
var
  acum: Double;
begin
  acum:= 0;
  CD_Fpago.First;
  while not CD_Fpago.Eof do
  begin
    if (CD_Fpago_esCtaCorr.AsString = 'S') then
      acum:= acum + CD_Fpago_importeVenta.AsFloat;
    CD_Fpago.Next;
  end;
  Result:= acum;
end;


//CARGAR LA PREVENTA
procedure TFOP_Cajero.cargarPreventa;
var
  i: Integer;
begin
  panelPreventa(true);

  ZQ_PreventaProductos.Close;
  ZQ_PreventaProductos.ParamByName('comprob').AsInteger:= vsel4.ZQ_ComprobanteID_COMPROBANTE.AsInteger;
  ZQ_PreventaProductos.Open;

  if not (ZQ_PreventaProductos.IsEmpty) then
  begin
    CD_DetalleFactura.EmptyDataSet;
    while not (ZQ_PreventaProductos.Eof) do
    begin

      ZQ_Productos.Close;
      ZQ_Productos.sql[15]:= Format('and(sp.id_stock_producto=%s)', [ZQ_PreventaProductosID_STOCK_PRODUCTO.AsString]);
      ZQ_Productos.Open;

      CD_DetalleFactura.Append;
      CD_DetalleFacturaID_PRODUCTO.AsInteger:= ZQ_PreventaProductosID_PRODUCTO.AsInteger;
      CD_DetalleFacturaproducto.AsString:= ZQ_ProductosDETALLE_PROD.AsString;
      CD_DetalleFacturaDETALLE.AsString:= ZQ_PreventaProductosDETALLE.AsString;
      CD_DetalleFacturaCANTIDAD.AsFloat:= ZQ_PreventaProductosCANTIDAD.AsFloat;
      CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat:= ZQ_PreventaProductosIMPORTE_UNITARIO.AsFloat;
      CD_DetalleFacturaPORC_DESCUENTO.AsFloat:= ZQ_PreventaProductosPORC_DESCUENTO.AsFloat;
      CD_DetalleFacturaIMPUESTO_INTERNO.AsFloat:= ZQ_PreventaProductosIMPUESTO_INTERNO.AsFloat;
      CD_DetalleFacturaPORC_IVA.AsFloat:= ZQ_PreventaProductosPORC_IVA.AsFloat;
      CD_DetalleFacturaBASE_IMPONIBLE.AsFloat:= ZQ_PreventaProductosBASE_IMPONIBLE.AsFloat;
      CD_DetalleFacturaIMPORTE_FINAL.AsFloat:= ZQ_PreventaProductosIMPORTE_FINAL.AsFloat;
      CD_DetalleFacturaIMPORTE_IVA.AsFloat:= ZQ_PreventaProductosIMPORTE_IVA.AsFloat;
      CD_DetalleFacturaID_PROD_STOCK.AsInteger:= ZQ_PreventaProductosID_STOCK_PRODUCTO.AsInteger;
      CD_DetalleFacturaIMPORTE_VENTA.AsFloat:= ZQ_PreventaProductosIMPORTE_VENTA.AsFloat;
      CD_DetalleFacturaID_PROD_STOCK.AsInteger:= ZQ_PreventaProductosID_STOCK_PRODUCTO.AsInteger;
      CD_DetalleFacturaIMPORTE_COSTO.AsFloat:= ZQ_PreventaProductosIMPORTE_COSTO.AsFloat;
      // Cargo los precios que correspondan según configuración de Tipo_Formapago (Columna_precio)
      ZQ_ColsPrecios.Close;
      ZQ_ColsPrecios.Open;
      for i:= 1 to 5 do
      begin
        ZQ_ColsPrecios.Filtered:= False;
        ZQ_ColsPrecios.Filter:= Format('COLUMNA_PRECIO=%d', [i]);
        ZQ_ColsPrecios.Filtered:= True;

        if ZQ_ColsPreciosCOLUMNA_PRECIO.AsInteger = i then
          CD_DetalleFactura.FieldByName(Format('PRECIO%d', [i])).AsFloat:= ZQ_Productos.FieldByName(Format('PRECIO%d', [i])).AsFloat
        else
          CD_DetalleFactura.FieldByName(Format('PRECIO%d', [i])).AsFloat:= ZQ_ProductosPRECIO_VENTA.AsFloat;
      end;

      CD_DetalleFacturaimporte_original.AsFloat:= ZQ_ProductosPRECIO_VENTA.AsFloat;
      CD_DetalleFactura.Post;
      ZQ_PreventaProductos.Next;
    end;

    //Cargo el mismo Cliente y detalles del comprobante
    ZQ_Personas.Locate('id_persona', vsel4.ZQ_ComprobanteID_CLIENTE.AsInteger, []);
    Cliente:= ZQ_PersonasID_PERSONA.AsInteger;
    IdClienteIVA:= ZQ_PersonasID_TIPO_IVA.AsInteger;
    descCliente:= vsel4.ZQ_ComprobantePORC_DESCUENTO.AsFloat * 100;

    CD_ComprobanteID_CLIENTE.AsInteger:= cliente;
    CD_ComprobanteID_TIPO_IVA.AsInteger:= IdClienteIVA;
    CD_ComprobantePORC_DESCUENTO.AsFloat:= descCliente;
//    CD_ComprobanteOBSERVACION.AsString:= Format('Venta de Mostrador, comprobante Nro:%s', [vsel4.ZQ_ComprobanteCODIGO.AsString]);
    CD_ComprobanteID_PREVENTA.AsInteger:= vsel4.ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    CD_ComprobanteID_TIPO_IVA.AsInteger:= vsel4.ZQ_ComprobanteID_TIPO_IVA.AsInteger;
    CD_ComprobanteID_VENDEDOR.AsInteger:= vsel4.ZQ_ComprobanteID_VENDEDOR.AsInteger;
    IdVendedor:= CD_ComprobanteID_VENDEDOR.AsInteger;

    DBEdit_DetalleCliente.DataField:= 'OBSERVACION';
    Label_DetalleCliente.Caption:= 'Detalle:';
    CD_ComprobanteOBSERVACION.AsString:= vsel4.ZQ_ComprobanteOBSERVACION.AsString;

    ZQ_ComprobPreventa.Close;
    ZQ_ComprobPreventa.ParamByName('id').AsInteger:= vsel4.ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    ZQ_ComprobPreventa.Open;

    //cargo las señas de la preventa como formas de pago!
    ZQ_PreventaFP.Close;
    ZQ_PreventaFP.ParamByName('comprob').AsInteger:= vsel4.ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    ZQ_PreventaFP.Open;

    if ZQ_PreventaFP.RecordCount > 0 then
    begin
      ZQ_PreventaFP.First;
      while not (ZQ_PreventaFP.Eof) do
      begin
        CD_Fpago.Append;
        CD_Fpago_esSenia.AsString:= 'S';
        CD_FpagoID_TIPO_FORMAPAG.AsInteger:= ZQ_PreventaFPID_TIPO_FORMAPAG.AsInteger;
        CD_FpagoCUENTA_INGRESO.AsInteger:= ZQ_PreventaFPCUENTA_INGRESO.AsInteger;
        if ZQ_PreventaFPMDCP_FECHA.IsNull then
          CD_FpagoMDCP_FECHA.clear
        else
          CD_FpagoMDCP_FECHA.AsDateTime:= ZQ_PreventaFPMDCP_FECHA.AsDateTime;

        CD_FpagoFECHA_FP.AsDateTime:= ZQ_PreventaFPFECHA_FP.AsDateTime;
        CD_FpagoMDCP_BANCO.AsString:= ZQ_PreventaFPMDCP_BANCO.AsString;
        CD_FpagoMDCP_CHEQUE.AsString:= ZQ_PreventaFPMDCP_CHEQUE.AsString;
        CD_FpagoIMPORTE.AsFloat:= ZQ_PreventaFPIMPORTE.AsFloat;

        calcularFP();
        CD_Fpago.Post;
        ZQ_PreventaFP.Next;
      end;
    end;

    lblCantProductos.Caption:= 'Cantidad Productos/Servicios: ' + inttostr(CD_DetalleFactura.RecordCount);
    lblMontoProds.Caption:= 'Total Productos/Servicios: ' + FormatFloat('$ ##,###,##0.00 ', ISDbSumaDetalleFactura.SumCollection[0].SumValue);
    if ZQ_DctoMutualDESCUENTO.AsInteger>0 then
     lblDctoMutual.Caption:=Format('Total descuento por %s (%d ',[ZQ_DctoMutualNOMBRE.AsString,ZQ_DctoMutualDESCUENTO.AsInteger])+'%): ' +FormatFloat('$ ##,###,##0.00  ', dctoMutual)
    else
     lblDctoMutual.Caption:='';

    //Permite que no se modifique la venta
    modoCargaPrevia:= True;
  end
end;


procedure TFOP_Cajero.edRecibidoExit(Sender: TObject);
begin
  calcularEfectivo();
end;


procedure TFOP_Cajero.calcularEfectivo();
begin
  acumEfectivo:= 0;
  CD_VentaFinal.First;
  while not (CD_VentaFinal.Eof) do
  begin
    if (CD_VentaFinalgenera_vuelto.AsString = 'S') then
      acumEfectivo:= acumEfectivo + CD_VentaFinalimporteDescuento.AsFloat;
    CD_VentaFinal.Next;
  end;
  lblCambio.Caption:= FormatFloat('$ ##,###,##0.00 ', CD_ComprobantemontoRecibido.AsFloat - acumEfectivo);
end;


procedure TFOP_Cajero.cancelarProducto;
begin
  dm.ismodelo.abrir(ZQ_FormasPago);
  dm.ismodelo.abrir(ZQ_DetalleProd);
  dm.ismodelo.abrir(ZQ_Cuentas);

  ZQ_DctoMutual.Close;

  Cliente:= -1;
  IdVendedor:= -1;
  descCliente:= 0;
  ClienteIVA:= 0;
  IDClienteIVA:= 0;
  CD_DetalleFactura.EmptyDataSet;
  CD_Fpago.EmptyDataSet;
  crearComprobante();
  lblCantProductos.Caption:= 'Cantidad Productos/Servicios: ' + inttostr(CD_DetalleFactura.RecordCount);
  lblMontoProds.Caption:= 'Total Productos/Servicios: ' + FormatFloat('$ ##,###,##0.00 ', ISDbSumaDetalleFactura.SumCollection[0].SumValue);
  lblDctoMutual.Caption:='';

  cargarClientePorDefecto();
  modoCargaPrevia:= False;
  modoCargaOrden:= false;
  modoLecturaProd();
  RecalcularMontoPago();
  panelPreventa(false);
  panelOrden(false);
end;


procedure TFOP_Cajero.DateTimePicker_FechaCargaChange(Sender: TObject);
begin
  CD_Comprobante.Edit;
  if CheckBoxCambiarFecha.Checked then
    CD_ComprobanteFECHA.AsDateTime:= DateTimePicker_FechaCarga.DateTime
  else
    CD_ComprobanteFECHA.AsDateTime:= dm.ismodelo.FechayHora();
end;


procedure TFOP_Cajero.CheckBoxCambiarFechaClick(Sender: TObject);
begin
  CD_Comprobante.Edit;
  if CheckBoxCambiarFecha.Checked then
    CD_ComprobanteFECHA.AsDateTime:= DateTimePicker_FechaCarga.DateTime
  else
    CD_ComprobanteFECHA.AsDateTime:= dm.ismodelo.FechayHora();
end;


procedure TFOP_Cajero.ABuscarExecute(Sender: TObject);
begin
  if btnBuscarProductoListado.Enabled then
    btnBuscarProductoListado.Click;
end;


procedure TFOP_Cajero.ANuevoExecute(Sender: TObject);
begin
  if btnBuscarProductoAvanzada.Enabled then
    btnBuscarProductoAvanzada.Click;
end;


procedure TFOP_Cajero.ATipoIVAExecute(Sender: TObject);
begin
  if btIVA.Enabled then
    btIVA.Click;
end;


procedure TFOP_Cajero.AClienteExecute(Sender: TObject);
begin
  if btnBuscarCliente.Enabled then
    btnBuscarCliente.Click;
end;


procedure TFOP_Cajero.ASalirExecute(Sender: TObject);
begin
  if btsalir.Enabled then
    btsalir.Click;
end;


procedure TFOP_Cajero.AGuardarExecute(Sender: TObject);
begin
  if BtAceptarPago.Enabled then
    BtAceptarPago.Click;
end;


procedure TFOP_Cajero.ACancelarExecute(Sender: TObject);
begin
  if BtCancelarPago.Enabled then
    BtCancelarPago.Click;
end;


procedure TFOP_Cajero.AVendedorExecute(Sender: TObject);
begin
  if btnBuscarVendedor.Enabled then
    btnBuscarVendedor.Click;
end;


procedure TFOP_Cajero.APreventaExecute(Sender: TObject);
begin
  if btnPreventa.Enabled then
    btnPreventa.Click;
end;


procedure TFOP_Cajero.ANuevoProdExecute(Sender: TObject);
begin
  if btnLeerCB.Enabled then
    btnLeerCB.Click;
end;


procedure TFOP_Cajero.ANuevaFormaPagoExecute(Sender: TObject);
begin
  if not (btnFormaPago.Enabled) then
    exit;

  if PCargaProd.Visible or PConfirmarVenta.Visible then
    exit;

  if (CD_Comprobante.State in [dsInsert, dsEdit]) and (not CD_DetalleFactura.IsEmpty) and PanelProductosYFPago.Enabled then
  begin
    dm.centrarPanel(FOP_Cajero, PABM_FormaPago);
    PABM_FormaPago.Top:= FOP_Cajero.Height - 300;
    PABM_FormaPago.Visible:= true;
    PanelContenedorDerecha.Enabled:= not (PABM_FormaPago.Visible);
    PABM_FormaPago.BringToFront;
    grupoVertical.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= false;
    CD_Fpago.Append;
    edCodCuenta.SetFocus;
    edImporte.SetFocus;
    edCodCuenta.SetFocus;
    ZQ_Cuentas.Locate('ID_CUENTA', ctaPorDefecto, []);
    CD_FpagoCUENTA_INGRESO.AsInteger:= ZQ_CuentasID_CUENTA.AsInteger;
    edImporte.SetFocus;
  end
end;


function TFOP_Cajero.imprimirFiscal(comprob: Integer; tipoAccion: string): Boolean;
begin
  Result:= True;
  leerConfigFiscal;

  if fiscal_sistema = 'VISUAL' then {//IMPRIMIR DESDE VISUAL}
  begin
    if tipoAccion = 'F' then //si es una factura
      ShellExecute(FPrincipal.Handle, nil, pchar(fiscal_ruta), pchar(' -l ' + IntToStr(comprob) + ' -i ' + fiscal_Impresora + ' -c ' + tipoAccion), nil, SW_SHOWNORMAL)
    else //si es cierre z o x
      ShellExecute(FPrincipal.Handle, nil, pchar(fiscal_ruta), pchar(' -i ' + fiscal_Impresora + ' -c ' + tipoAccion), nil, SW_SHOWNORMAL);
  end
  else if fiscal_sistema = 'DELPHI' then {//IMPRIMIR DESDE ELPHI}
  begin
    if tipoAccion = 'F' then //si es una factura
      ShellExecute(FPrincipal.Handle, nil, pchar(fiscal_ruta), pchar('-l' + IntToStr(comprob) + ' -c' + tipoAccion + ' -id' + inttostr(ID_FISCAL)), nil, SW_SHOWNORMAL)
    else if tipoAccion = 'A' then //si es la auditoria
      ShellExecute(FPrincipal.Handle, nil, pchar(fiscal_ruta), pchar('-c' + tipoAccion + ' -t' + auditoriaFiscalTipo + ' -d' + auditoriaFiscalDesde + ' -h' + auditoriaFiscalHasta + ' -id' + inttostr(ID_FISCAL)), nil, SW_SHOWNORMAL)
    else //si es cierre z o x
      ShellExecute(FPrincipal.Handle, nil, pchar(fiscal_ruta), pchar('-c' + tipoAccion + ' -id' + inttostr(ID_FISCAL)), nil, SW_SHOWNORMAL);
  end;
end;


function TFOP_Cajero.completarCodBar(cod: string): string;
begin
  Result:= StringOfChar('0', LONG_COD_BARRAS - Length(cod)) + cod;
end;



procedure TFOP_Cajero.btFPAceptarClick(Sender: TObject);
begin
  if CD_Fpago.State in [dsInsert, dsEdit] then
  begin
    if CD_FpagoCUENTA_INGRESO.AsInteger = 1 then {//si se eligio Cuenta Corriente}
    begin
      if cliente <= 0 then {//si es consumidor final}
      begin
        ShowMessage('No se puede elegir Cuenta Corriente para el cliente CONSUMIDOR FINAL, verifique');
        exit;
      end
      else {//si no es consumidor final}
      begin
        if not dm.verificarCuentaCorriente(cliente) then {//si no tiene cuenta corriente en el negocio}
        begin
          ShowMessage('El cliente ' + CD_Comprobantepers_nombre.AsString + ' no tiene Cuenta Corriente en el negocio, verifique');
          exit;
        end;
      end;
    end
    else if CD_FpagoCUENTA_INGRESO.AsInteger = 2 then {//si se eligio Nota Credito}
    begin
      if cliente <= 0 then {//si es consumidor final}
      begin
        ShowMessage('No se puede elegir Nota Credito para el cliente CONSUMIDOR FINAL, verifique');
        exit;
      end
    end;

    CD_Fpago.Post;
    PABM_FormaPago.Visible:= False;
    PanelContenedorDerecha.Enabled:= not (PABM_FormaPago.Visible);
    grupoVertical.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= true;
    DBGridFormaPago.SetFocus;
  end

//  if CD_Fpago.State in [dsInsert, dsEdit] then
//  begin
//    CD_Fpago.Post;
//    PABM_FormaPago.Visible:= False;
//    PanelContenedorDerecha.Enabled:= not (PABM_FormaPago.Visible);
//    grupoVertical.Enabled:= true;
//    GrupoGuardarCancelar.Enabled:= true;
//    DBGridFormaPago.SetFocus;
//  end
end;


procedure TFOP_Cajero.btnFormaPagoClick(Sender: TObject);
begin
  ANuevaFormaPago.Execute;
end;


procedure TFOP_Cajero.CD_FpagoCUENTA_INGRESOChange(Sender: TField);
begin
  if CD_Fpago_esSenia.AsString = 'S' then
    exit;

  if CD_Fpago.State in [dsInsert, dsEdit] then
  begin
    ZQ_FormasPago.Locate('ID_TIPO_FORMAPAGO', ZQ_CuentasMEDIO_DEFECTO.AsInteger, []);
    CD_FpagoID_TIPO_FORMAPAG.AsInteger:= ZQ_FormasPagoID_TIPO_FORMAPAGO.AsInteger;
  end
end;


procedure TFOP_Cajero.edCodCuentaExit(Sender: TObject);
begin
  if not ((CD_Fpago_ctaIngreso.AsString = '') or (CD_FpagomedioPago.AsString = '')) then
    calcularFP();
end;


procedure TFOP_Cajero.edImporteExit(Sender: TObject);
begin
  if edCant.Enabled then
    edCant.SetFocus;
end;


procedure TFOP_Cajero.menuEditarFPClick(Sender: TObject);
begin
  if PCargaProd.Visible or PConfirmarVenta.Visible or (CD_Fpago_esSenia.AsString = 'S') then
    exit;
  if CD_Fpago.IsEmpty then exit;
  
  if (CD_Comprobante.State in [dsInsert, dsEdit]) and (not CD_DetalleFactura.IsEmpty) and PanelProductosYFPago.Enabled then
  begin
    dm.centrarPanel(FOP_Cajero, PABM_FormaPago);
    PABM_FormaPago.Top:= FOP_Cajero.Height - 300;
    PABM_FormaPago.Visible:= true;
    PABM_FormaPago.BringToFront;
    PanelContenedorDerecha.Enabled:= not (PABM_FormaPago.Visible);
    grupoVertical.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= false;
    CD_Fpago.Edit;
    edCodCuenta.SetFocus;
    edImporte.SetFocus;
  end
end;


procedure TFOP_Cajero.menuQuitarFPClick(Sender: TObject);
begin
  btnQuitarPago.Click;
end;


procedure TFOP_Cajero.sacarRepetidosFP();
begin
  CD_Fpago.First;
  while not (CD_Fpago.Eof) do
  begin

    CD_VentaFinal.Filtered:= false;
    CD_VentaFinal.Filter:= Format('IdTipoPago=%d and idCta=%d and mdpBanco=%s and mdpNro=%s',
      [CD_FpagoID_TIPO_FORMAPAG.AsInteger, CD_FpagoCUENTA_INGRESO.AsInteger,
      QuotedStr(CD_FpagoMDCP_BANCO.AsString), QuotedStr(CD_FpagoMDCP_CHEQUE.AsString)]);
    CD_VentaFinal.Filtered:= true;

    if CD_VentaFinal.IsEmpty then
    begin
      CD_VentaFinal.Append;
      CD_VentaFinal_medioPago.AsString:= CD_FpagomedioPago.AsString;
      CD_VentaFinalimporteVenta.AsFloat:= CD_Fpago_importeVenta.AsFloat;
      CD_VentaFinalimporteDescuento.AsFloat:= CD_VentaFinalimporteVenta.AsFloat - (CD_VentaFinalimporteVenta.AsFloat * CD_ComprobantePORC_DESCUENTO.AsFloat / 100);
      CD_VentaFinalid.AsInteger:= CD_FpagoID_COMPROB_FP.AsInteger;
      CD_VentaFinalgenera_vuelto.AsString:= CD_Fpago_efectivo.AsString;
      CD_VentaFinalfiscal.AsString:= CD_Fpago_fiscal.AsString;

      CD_VentaFinalidTipoPago.AsInteger:= CD_FpagoID_TIPO_FORMAPAG.AsInteger;
      CD_VentaFinalidCta.AsInteger:= CD_FpagoCUENTA_INGRESO.AsInteger;
      CD_VentaFinalmdpFecha.AsDateTime:= CD_FpagoMDCP_FECHA.AsDateTime;
      CD_VentaFinalmdpBanco.AsString:= CD_FpagoMDCP_BANCO.AsString;
      CD_VentaFinalmdpNro.AsString:= CD_FpagoMDCP_CHEQUE.AsString;
    end
    else
    begin
      CD_VentaFinal.Locate('id', CD_FpagoID_COMPROB_FP.AsInteger, []);
      CD_VentaFinal.Edit;
      CD_VentaFinalimporteVenta.AsFloat:= CD_VentaFinalimporteVenta.AsFloat + CD_Fpago_importeVenta.AsFloat;
      CD_VentaFinalimporteDescuento.AsFloat:= CD_VentaFinalimporteVenta.AsFloat - (CD_VentaFinalimporteVenta.AsFloat * CD_ComprobantePORC_DESCUENTO.AsFloat / 100);
    end;
    CD_VentaFinal.Post;
    CD_VentaFinal.Filtered:= false;

    CD_Fpago.Next;
  end;
end;


procedure TFOP_Cajero.btFPCancelarClick(Sender: TObject);
begin
  if CD_Fpago.State in [dsInsert, dsEdit] then
  begin
    CD_Fpago.Cancel;
    PABM_FormaPago.Visible:= False;
    PanelContenedorDerecha.Enabled:= not (PABM_FormaPago.Visible);
    grupoVertical.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= true;
    DBGridFormaPago.SetFocus;
  end
end;


procedure TFOP_Cajero.btnEfectivoClick(Sender: TObject);
begin
  //ZQ_FormasPago.Locate('IF;GENERA_VUELTO',VarArrayOf(['N', 'S']),[]);
  //CD_FpagoID_TIPO_FORMAPAG.AsInteger:=ZQ_FormasPagoID_TIPO_FORMAPAGO.AsInteger;

  calcularFP();
  CD_Fpago.Post;
  recalcularBoleta();
  BtAceptarPago.Click;
  btnConfirmarVenta.Click;
end;


procedure TFOP_Cajero.btnEfectivoFClick(Sender: TObject);
begin
  //Genera Vuelto y es FISCAL (Efectivo Fiscal)
  ZQ_FormasPago.Locate('IF;GENERA_VUELTO', VarArrayOf(['S', 'S']), []);
  CD_FpagoID_TIPO_FORMAPAG.AsInteger:= ZQ_FormasPagoID_TIPO_FORMAPAGO.AsInteger;

  calcularFP();

  CD_Fpago.Post;
  recalcularBoleta();
  BtAceptarPago.Click;
  btnConfirmarVenta.Click;

end;


procedure TFOP_Cajero.buscarCuenta(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin
    ISListadoCuenta.SQL.Text:= dm.sql_cuentas_fpago_suc(0, true); //todas las cuentas de la suc
    if ISListadoCuenta.Buscar then
    begin
      if ISListadoCuenta.Resultado <> '' then
      begin
        id_cuenta_fpago:= StrToInt(ISListadoCuenta.Resultado);
        ZQ_Cuentas.Locate('ID_CUENTA', id_cuenta_fpago, []);
        CD_FpagoCUENTA_INGRESO.AsInteger:= ZQ_CuentasID_CUENTA.AsInteger;
        edDetalleMDPChange(self);
      end;
    end;
  end;
end;


procedure TFOP_Cajero.buscarFormaPago(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin
    id_cuenta_fpago:= CD_FpagoCUENTA_INGRESO.AsInteger;
    ISListadoMedio.SQL.Clear;
    ISListadoMedio.SQL.Add(Format('select tipo.* ' +
      'from tipo_formapago tipo ' +
      'left join cuenta_tipo_formapago ctfp on (tipo.id_tipo_formapago = ctfp.id_tipo_formapago) ' +
      'where tipo.baja = %s ' +
      '  and ctfp.id_cuenta = %d ' +
      'order by tipo.descripcion',
      [QuotedStr('N'), id_cuenta_fpago]));

    if ISListadoMedio.Buscar then
    begin
      if ISListadoMedio.Resultado <> '' then
      begin
        CD_FpagoID_TIPO_FORMAPAG.AsInteger:= StrToInt(ISListadoMedio.Resultado);
        edDetalleMDPChange(self);
      end;
    end;
  end;
end;


function TFOP_Cajero.verificarSaldoNotaCredito(query: TDataSet; id_cliente: integer): boolean;
begin
  Result:= true;
  if query.IsEmpty then
    exit;

  //obtengo el saldo en nota de credito que tiene el cliente
  ZQ_SaldoNotaCredito.Close;
  ZQ_SaldoNotaCredito.ParamByName('id_cliente').AsInteger:= id_cliente;
  ZQ_SaldoNotaCredito.Open;
  nota_credito_saldo:= ZQ_SaldoNotaCreditoSALDO.AsFloat;

  //calculo todo lo que me va a pagar con Nota de Credito
  nota_credito_total:= 0;
  query.First;
  while not query.Eof do {//por cada una de las formas de pago cargadas}
  begin
    //si la forma de pago es nota de credito
    if query.FieldByName('CUENTA_INGRESO').AsInteger = 2 then
      nota_credito_total:= nota_credito_total + query.FieldByName('IMPORTE').AsFloat;

    query.Next;
  end;

  //si lo que esta pagando en Nota de Credito es mayo al saldo que tiene devuelvo False
  //para que no lo deje cancelar
  if nota_credito_total > nota_credito_saldo then
    Result:= false;
end;

procedure TFOP_Cajero.ultimoIDPago;
begin
  ZQ_UltimoCPB.Close;
  ZQ_UltimoCPB.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
  dm.ismodelo.abrir(ZQ_UltimoCPB);
  lblNroCPB.Caption:= Format(' Nº CPB: %d', [ZQ_UltimoCPBNUMERO_CPB.AsInteger + 1]);
end;


procedure TFOP_Cajero.panelPreventa(flag: boolean);
begin
  if flag then
  begin
    PanelDetallePreventa.Visible:= true;
    PanelDetalles.Height:= 160;
  end
  else
  begin
    PanelDetallePreventa.Visible:= false;
    PanelDetalles.Height:= 160 - PanelDetallePreventa.Height;
  end
end;


procedure TFOP_Cajero.pmInputQuery(var Msg: TMessage); //message WM_USER +123;
var
  f: TForm;
  ed: TEdit;
  i: integer;
begin
  f:= Screen.ActiveForm;

  if (f <> nil) and (f.Handle = GetLastActivePopup(Application.Handle)) then
  begin
    ed:= nil;
    i:= 0;
    while (i < f.ComponentCount) and (ed = nil) do
    begin
      if f.Components[i] is TEdit then
        ed:= TEdit(f.Components[i]);

      Inc(i);
    end;

    if ed <> nil then
      ed.PasswordChar:= '*';
  end;
end;


//CARGAR ORDEN OPTICA
procedure TFOP_Cajero.cargarOrden;
var
  i: Integer;
  Importe_Producto: real;
begin
  panelOrden(true);

  ZQ_Optica_Orden.Close;
  ZQ_Optica_Orden.ParamByName('ID_ORDEN').AsInteger:= vsel5.ZQ_Optica_OrdenID_ORDEN.AsInteger;
  ZQ_Optica_Orden.open;

  ZQ_OrdenProductos.Close;
  ZQ_OrdenProductos.ParamByName('ID_ORDEN').AsInteger:= vsel5.ZQ_Optica_OrdenID_ORDEN.AsInteger;
  ZQ_OrdenProductos.Open;

  //Cargo el mismo Cliente y detalles del comprobante
  ZQ_Personas.Locate('id_persona', vsel5.ZQ_Optica_OrdenID_CLIENTE.AsInteger, []);
  Cliente:= ZQ_PersonasID_PERSONA.AsInteger;
  IdClienteIVA:= ZQ_PersonasID_TIPO_IVA.AsInteger;
  CD_ComprobanteID_CLIENTE.AsInteger:= cliente;
  CD_ComprobanteID_TIPO_IVA.AsInteger:= IdClienteIVA;
  CD_ComprobanteOBSERVACION.AsString:= Format('Orden Nro: %s', [vsel5.ZQ_Optica_OrdenNRO_FACTURA.AsString]);

  DBEdit_DetalleCliente.DataField:= 'OBSERVACION';
  Label_DetalleCliente.Caption:= 'Detalle:';
  CD_ComprobanteOBSERVACION.AsString:= vsel5.ZQ_Optica_OrdenOBSERVACIONES.AsString;

  // Selecciono el descuento final segun el plan mutual que tenga
  ZQ_DctoMutual.close;
  ZQ_DctoMutual.ParamByName('idPers').AsInteger:=cliente;
  dm.ISModelo.abrir(ZQ_DctoMutual);

  ISDbSumaDetalleFacturaSumListChanged(self);

  if ZQ_DctoMutualDESCUENTO.AsInteger>0 then
     lblDctoMutual.Caption:=Format('Total descuento por %s (%d ',[ZQ_DctoMutualNOMBRE.AsString,ZQ_DctoMutualDESCUENTO.AsInteger])+'%): ' +FormatFloat('$ ##,###,##0.00  ', dctoMutual)
  else
     lblDctoMutual.Caption:='';
  if not (ZQ_OrdenProductos.IsEmpty) then
  begin
    CD_DetalleFactura.EmptyDataSet;
    while not (ZQ_OrdenProductos.Eof) do
    begin
      ZQ_Productos.Close;
      ZQ_Productos.sql[15]:= Format('and(sp.id_producto=%s)', [ZQ_OrdenProductosID_PRODUCTO.AsString]);
      ZQ_Productos.Open;

      Importe_Producto:= ZQ_OrdenProductosIMPORTE_VENTA.AsFloat;

      CD_DetalleFactura.Append;
      CD_DetalleFacturaID_PRODUCTO.AsInteger:= ZQ_OrdenProductosID_PRODUCTO.AsInteger;
      CD_DetalleFacturaproducto.AsString:= ZQ_ProductosDETALLE_PROD.AsString;
      CD_DetalleFacturaDETALLE.AsString:= ZQ_ProductosDETALLE_PROD.AsString;
      CD_DetalleFacturaCANTIDAD.AsFloat:= ZQ_OrdenProductosCANTIDAD.AsFloat;

      CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat:= ZQ_OrdenProductosIMPORTE_UNITARIO.AsFloat;
      CD_DetalleFacturaIMPUESTO_INTERNO.AsFloat:= ZQ_ProductosIMPUESTO_INTERNO.AsFloat;
      CD_DetalleFacturaPORC_IVA.AsFloat:= ZQ_ProductosIMPUESTO_IVA.AsFloat;
      CD_DetalleFacturaBASE_IMPONIBLE.AsFloat:= Importe_Producto;
      CD_DetalleFacturaIMPORTE_FINAL.AsFloat:= Importe_Producto;
      CD_DetalleFacturaIMPORTE_IVA.AsFloat:= Importe_Producto * ZQ_ProductosIMPUESTO_IVA.AsFloat;
      CD_DetalleFacturaID_PROD_STOCK.AsInteger:= ZQ_ProductosID_STOCK_PRODUCTO.AsInteger;
      CD_DetalleFacturaIMPORTE_VENTA.AsFloat:= Importe_Producto;
      CD_DetalleFacturaIMPORTE_COSTO.AsFloat:= ZQ_ProductosPRECIO_COSTO.AsFloat;
      CD_DetalleFacturaimporte_original.AsFloat:= CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat;
      CD_DetalleFacturamonto_reconocido.AsFloat:= ZQ_OrdenProductosIMPORTE_RECONOCIDO.AsFloat;
      
      ZQ_ColsPrecios.Close;
      ZQ_ColsPrecios.Open;
      for i:= 1 to 5 do
      begin
        ZQ_ColsPrecios.Filtered:= False;
        ZQ_ColsPrecios.Filter:= Format('COLUMNA_PRECIO=%d', [i]);
        ZQ_ColsPrecios.Filtered:= True;

        if ZQ_ColsPreciosCOLUMNA_PRECIO.AsInteger = i then
          CD_DetalleFactura.FieldByName(Format('PRECIO%d', [i])).AsFloat:= Importe_Producto //ZQ_Productos.FieldByName(Format('PRECIO%d', [i])).AsFloat
        else
          CD_DetalleFactura.FieldByName(Format('PRECIO%d', [i])).AsFloat:= Importe_Producto; //ZQ_ProductosPRECIO_VENTA.AsFloat;
      end;

      //Por cada producto que cargo de la orden, cargo los reconocimientos de Oss del sobre
      ZQ_OrdenDetOss.Close;
      ZQ_OrdenDetOss.ParamByName('ID').AsInteger:=ZQ_OrdenProductosID_ORDEN_DETALLE.AsInteger;
      ZQ_OrdenDetOss.Open;
      ZQ_OrdenDetOss.First;
      while not(ZQ_OrdenDetOss.Eof) do
       begin
          CD_Reconocimientos.Append;
          CD_Reconocimientosid_os.AsInteger:=ZQ_OrdenDetOssID_OS.AsInteger;
          CD_Reconocimientosmonto_reconocido.AsFloat:=ZQ_OrdenDetOssMONTO_DESCONTADO.AsFloat;
          CD_Reconocimientosdetalle.AsString:=ZQ_OrdenDetOssOBSERVACIONES.AsString;
          CD_Reconocimientosid_prod.AsInteger:=ZQ_OrdenProductosID_PRODUCTO.AsInteger;
          CD_Reconocimientos.Post;

          ZQ_OrdenDetOss.Next;
       end;
      ZQ_OrdenDetOss.Close;



      CD_DetalleFactura.Post;

      lblCantProductos.Caption:= 'Cantidad Productos/Servicios: ' + inttostr(CD_DetalleFactura.RecordCount);
      lblMontoProds.Caption:= 'Total Productos/Servicios: ' + FormatFloat('$ ##,###,##0.00 ', ISDbSumaDetalleFactura.SumCollection[0].SumValue);
      if ZQ_DctoMutualDESCUENTO.AsInteger>0 then
        lblDctoMutual.Caption:=Format('Total descuento por %s (%d ',[ZQ_DctoMutualNOMBRE.AsString,ZQ_DctoMutualDESCUENTO.AsInteger])+'%): ' +FormatFloat('$ ##,###,##0.00  ', dctoMutual)
      else
        lblDctoMutual.Caption:='';

      //Permite que no se modifique la venta
      modoCargaOrden:= True;
      ZQ_OrdenProductos.Next;
    end;

////cargo las señas de la Orden como formas de pago!
    ZQ_OpticaEntrega.Close;
    ZQ_OpticaEntrega.ParamByName('ID_ORDEN').AsInteger:= vsel5.ZQ_Optica_OrdenID_ORDEN.AsInteger;
    ZQ_OpticaEntrega.Open;

    if ZQ_OpticaEntrega.RecordCount > 0 then
    begin
      ZQ_OpticaEntrega.First;
      while not (ZQ_OpticaEntrega.Eof) do
      begin
        CD_Fpago.Append;
        CD_Fpago_esSenia.AsString:= 'S';
        CD_FpagoID_TIPO_FORMAPAG.AsInteger:= ZQ_OpticaEntregaID_TIPO_FORMAPAG.AsInteger;
        CD_FpagoCUENTA_INGRESO.AsInteger:= ZQ_OpticaEntregaCUENTA_INGRESO.AsInteger;
        if ZQ_OpticaEntregaMDCP_FECHA.IsNull then
          CD_FpagoMDCP_FECHA.clear
        else
          CD_FpagoMDCP_FECHA.AsDateTime:= ZQ_OpticaEntregaMDCP_FECHA.AsDateTime;

        CD_FpagoFECHA_FP.AsDateTime:= ZQ_OpticaEntregaFECHA_FP.AsDateTime;
        CD_FpagoMDCP_BANCO.AsString:= ZQ_OpticaEntregaMDCP_BANCO.AsString;
        CD_FpagoMDCP_CHEQUE.AsString:= ZQ_OpticaEntregaMDCP_CHEQUE.AsString;
        CD_FpagoIMPORTE.AsFloat:= ZQ_OpticaEntregaIMPORTE.AsFloat;

        CD_Fpago_importeVenta.AsFloat:= ZQ_OpticaEntregaIMPORTE_REAL.AsFloat;

        CD_Fpago.Post;
        ZQ_OpticaEntrega.Next;
      end;
    end;
  end;
end;


procedure TFOP_Cajero.panelorden(flag: boolean);
begin
  if flag then
  begin
    PanelDetalleOrdenOptica.Visible:= true;
    PanelDetalles.Height:= 160;
  end
  else
  begin
    PanelDetalleOrdenOptica.Visible:= false;
    PanelDetalles.Height:= 160 - PanelDetalleOrdenOptica.Height;
  end
end;

procedure TFOP_Cajero.ISDbSumaFPagoSumListChanged(Sender: TObject);
begin
  recalcularMontoPago();
end;

procedure TFOP_Cajero.ISDbSumaDetalleFacturaSumListChanged(Sender: TObject);
var
porcDctoMutual:double;
begin
  porcDctoMutual:=ZQ_DctoMutualDESCUENTO.AsFloat;
  acumulado:= ISDbSumaDetalleFactura.SumCollection[0].SumValue;
  //Le resto al total de productos(saldo) el descuento por mutual
  dctoMutual:= acumulado * (porcDctoMutual/100);
  acumulado:= acumulado - dctoMutual;
  if acumulado<0 then acumulado:=0;
  acumuladoProd:= ISDbSumaDetalleFactura.SumCollection[7].SumValue;
  if (acumuladoProd = 0) then
    acumuladoProd:= acumulado;

  acumuladoIVA:= ISDbSumaDetalleFactura.SumCollection[1].SumValue;
  acumPrecio1:= ISDbSumaDetalleFactura.SumCollection[2].SumValue;
  acumPrecio2:= ISDbSumaDetalleFactura.SumCollection[3].SumValue;
  acumPrecio3:= ISDbSumaDetalleFactura.SumCollection[4].SumValue;
  acumPrecio4:= ISDbSumaDetalleFactura.SumCollection[5].SumValue;
  acumPrecio5:= ISDbSumaDetalleFactura.SumCollection[6].SumValue;

  coefPrecio1:= 1;
  coefPrecio2:= 1;
  coefPrecio3:= 1;
  coefPrecio4:= 1;
  coefPrecio5:= 1;

  if (acumulado > 0) then
  begin
    coefPrecio1:= acumPrecio1 / acumuladoProd;
    coefPrecio2:= acumPrecio2 / acumuladoProd;
    coefPrecio3:= acumPrecio3 / acumuladoProd;
    coefPrecio4:= acumPrecio4 / acumuladoProd;
    coefPrecio5:= acumPrecio5 / acumuladoProd;
  end;

  if coefPrecio1 < 0 then
    coefPrecio1:= 1;
  if coefPrecio2 < 0 then
    coefPrecio2:= 1;
  if coefPrecio3 < 0 then
    coefPrecio3:= 1;
  if coefPrecio4 < 0 then
    coefPrecio4:= 1;
  if coefPrecio5 < 0 then
    coefPrecio5:= 1;

  if ZQ_DctoMutualDESCUENTO.AsInteger>0 then
     lblDctoMutual.Caption:=Format('Total descuento por %s (%d ',[ZQ_DctoMutualNOMBRE.AsString,ZQ_DctoMutualDESCUENTO.AsInteger])+'%): ' +FormatFloat('$ ##,###,##0.00  ', dctoMutual)
  else
  lblDctoMutual.Caption:='';

end;

procedure TFOP_Cajero.popReconocimAgregarClick(Sender: TObject);
begin
  if CD_DetalleFacturaID_PRODUCTO.IsNull then exit;

  PCargaProdDetalle.Enabled:=False;
  PCargaProdPlanes.Visible:=true;
  PCargaProdPlanes.BringToFront;
  //Cargo los Planes de Obra Social disponibles y sus reconocim
  ZQ_planes_productos.Close;
  ZQ_planes_productos.ParamByName('idProd').AsInteger:=CD_DetalleFacturaID_PRODUCTO.AsInteger;
  ZQ_planes_productos.ParamByName('idPers').AsInteger:=CD_ComprobanteID_CLIENTE.AsInteger;
  dm.ISModelo.abrir(ZQ_planes_productos);

  if ZQ_planes_productos.IsEmpty then
   begin
        ZQ_planes_productos.Close;
        exit;
   end;
end;

procedure TFOP_Cajero.btAceptarOssClick(Sender: TObject);
begin
  if not(ZQ_planes_productos.IsEmpty) then
   begin
     CD_Reconocimientos.Append;
     CD_Reconocimientosid_os.AsInteger:=ZQ_planes_productosID_OS.AsInteger;
     CD_Reconocimientosmonto_reconocido.AsFloat:=ZQ_planes_productosMONTO_RECONOCIDO.AsFloat;
     CD_Reconocimientosdetalle.AsString:=ZQ_planes_productosDETALLE.AsString;
     CD_Reconocimientosid_prod.AsInteger:=ZQ_planes_productosID_PRODUCTO.AsInteger;

     CD_Reconocimientos.Post;
     calcularMonto();
   end;
  PCargaProdDetalle.Enabled:=True;
  PCargaProdPlanes.Visible:=False;
end;

procedure TFOP_Cajero.btCancelarOssClick(Sender: TObject);
begin
  PCargaProdDetalle.Enabled:=True;
  PCargaProdPlanes.Visible:=False;
end;

procedure TFOP_Cajero.popReconocimQuitarClick(Sender: TObject);
begin
  if CD_Reconocimientos.IsEmpty then exit;
  CD_Reconocimientos.Delete;
  calcularMonto();
end;

procedure TFOP_Cajero.ISDbSumaReconocimSumListChanged(Sender: TObject);
begin
   lblReconocimTot.Caption:= 'Total Reconocido: ' + FormatFloat('$ ##,###,##0.00 ', ISDbSumaReconocim.SumCollection[0].SumValue);
end;

procedure TFOP_Cajero.ZQ_DctoMutualAfterOpen(DataSet: TDataSet);
begin
  if ZQ_DctoMutualDESCUENTO.AsInteger>0 then
    lblDctoMutual.Caption:=Format('Total descuento por %s (%d ',[ZQ_DctoMutualNOMBRE.AsString,ZQ_DctoMutualDESCUENTO.AsInteger])+'%): ' +FormatFloat('$ ##,###,##0.00  ', dctoMutual)
  else
    lblDctoMutual.Caption:='';
end;

procedure TFOP_Cajero.ZQ_DctoMutualAfterClose(DataSet: TDataSet);
begin
  lblDctoMutual.Caption:='';
end;

procedure TFOP_Cajero.edDetalleMDPChange(Sender: TObject);
begin
  if not ((CD_Fpago_ctaIngreso.AsString = '') or (CD_FpagomedioPago.AsString = '')) then
    calcularFP();
end;

end.

