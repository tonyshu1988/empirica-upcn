unit UOP_ABMOrden_Tecnica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, DBCtrls, Grids, DBGrids, StdCtrls, Mask,
  Buttons, ComCtrls, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, DBClient, EKListadoSQL,StrUtils,UDM, UPrincipal, UBuscarPersona,
  UBuscarProductoStock, Provider, Menus, ZSequence, EKDbSuma,
  EKDBDateTimePicker, EKBusquedaAvanzada, EKOrdenarGrilla, ZSqlUpdate,
  cxClasses;

type
  TFOP_ABM_OrdenTecnica = class(TForm)
    PanelContenedorDerecha: TPanel;
    PanelProductosYFPago: TPanel;
    Label11: TLabel;
    PanelListadoProducto: TPanel;
    Panel6: TPanel;
    Label36: TLabel;
    lblCantProductos: TLabel;
    btQuitarProducto: TButton;
    DBGridListadoProductos: TDBGrid;
    PanelFormaPago: TPanel;
    DBGridFormaPago: TDBGrid;
    PieGrilla: TPanel;
    btnQuitarPago: TButton;
    PPieBoleta: TPanel;
    lblTotAPagar: TLabel;
    PanelDetalles: TPanel;
    PanelDetalleCliente: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label28: TLabel;
    Label_DetalleCliente: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit_DetalleCliente: TDBEdit;
    PDetalleOrden: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    dbAvisar: TDBCheckBox;
    PMedico: TPanel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    PanelStatusBar: TPanel;
    DBText7: TDBText;
    DBGridListadoOS: TDBGrid;
    POs: TPanel;
    Label1: TLabel;
    PProductos: TPanel;
    dxBarABM: TdxBarManager;
    btBuscProd: TdxBarLargeButton;
    BtBuscarProducto: TdxBarLargeButton;
    bt_BuscarCliente: TdxBarLargeButton;
    btCodif: TdxBarLargeButton;
    BtVendedor: TdxBarLargeButton;
    BtLeerCB: TdxBarLargeButton;
    btnFormaPago: TdxBarLargeButton;
    btObservac: TdxBarLargeButton;
    btnMedico: TdxBarLargeButton;
    btGuardarOrden: TdxBarLargeButton;
    BtCancelarOrden: TdxBarLargeButton;
    btsalir: TdxBarLargeButton;
    btCierreZ: TdxBarLargeButton;
    BtEntregado: TdxBarLargeButton;
    btDetallesOrden: TdxBarLargeButton;
    bt_Cargar_Orden: TdxBarLargeButton;
    GrupoGuardarCancelar: TdxBarGroup;
    grupoVertical: TdxBarGroup;
    Splitter1: TSplitter;
    PFormaPago: TPanel;
    PObservaciones: TPanel;
    dbObsOrden: TDBRichEdit;
    Label2: TLabel;
    PReceta: TPanel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label20: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    btQuitarOS: TButton;
    Panel1: TPanel;
    Label33: TLabel;
    ZQ_Orden: TZQuery;
    ZQ_OrdenDetalle: TZQuery;
    ZQ_OrdenDetalleOS: TZQuery;
    ZQ_OrdenID_ORDEN: TIntegerField;
    ZQ_OrdenCODIGO_CLI: TStringField;
    ZQ_OrdenID_CLIENTE: TIntegerField;
    ZQ_OrdenID_ESTADO: TIntegerField;
    ZQ_OrdenFECHA_ORDEN: TDateField;
    ZQ_OrdenFECHA_PROMETIDO: TDateField;
    ZQ_OrdenCOD_BARRAS: TStringField;
    ZQ_OrdenOBSERVACIONES: TStringField;
    ZQ_OrdenNRO_FACTURA: TStringField;
    ZQ_OrdenMONTO_TOTAL: TFloatField;
    ZQ_OrdenMONTO_ENTREGADO: TFloatField;
    ZQ_OrdenENTREGADO_POR: TIntegerField;
    ZQ_OrdenFACTURADO_POR: TIntegerField;
    ZQ_OrdenSALDO: TFloatField;
    ZQ_OrdenDetalleID_ORDEN_DETALLE: TIntegerField;
    ZQ_OrdenDetalleID_ORDEN: TIntegerField;
    ZQ_OrdenDetalleID_PRODUCTO: TIntegerField;
    ZQ_OrdenDetalleID_LABORATORIO: TIntegerField;
    ZQ_OrdenDetalleCANTIDAD: TFloatField;
    ZQ_OrdenDetalleOBSERVACIONES: TStringField;
    DS_OrdenDetalleOS: TDataSource;
    PLeerCodigo: TPanel;
    LeerCodBar: TLabel;
    Image2: TImage;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    codBarras: TEdit;
    EKListadoProducto: TEKListadoSQL;
    ZQ_Productos: TZQuery;
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
    ZQ_Ordenpers_nombre: TStringField;
    ZQ_Ordenpers_direccion: TStringField;
    DS_Orden: TDataSource;
    DS_OrdenDetalle: TDataSource;
    ZQ_ProductosNOMBRE_PRODUCTO: TStringField;
    ZQ_ProductosMEDIDA: TStringField;
    ZQ_ProductosARTICULO: TStringField;
    ZQ_ProductosTIPO_ARTICULO: TStringField;
    ZQ_ProductosNOMBRE_MARCA: TStringField;
    ZQ_ProductosIMAGEN: TBlobField;
    ZQ_ProductosDETALLE_PROD: TStringField;
    ZQ_ProductosSTOCK_ACTUAL: TFloatField;
    ZQ_ProductosID_STOCK_PRODUCTO: TIntegerField;
    ZQ_ProductosID_PRECIO: TIntegerField;
    ZQ_ProductosID_PRODUCTO: TIntegerField;
    ZQ_ProductosID_SUCURSAL: TIntegerField;
    ZQ_ProductosPRECIO_COSTO: TFloatField;
    ZQ_ProductosPRECIO_VENTA: TFloatField;
    ZQ_ProductosCOEF_GANANCIA: TFloatField;
    ZQ_ProductosCOEF_DESCUENTO: TFloatField;
    ZQ_ProductosIMPUESTO_INTERNO: TFloatField;
    ZQ_ProductosIMPUESTO_IVA: TFloatField;
    ZQ_ProductosPRECIO_COSTO_CIMPUESTOS: TFloatField;
    ZQ_ProductosIMPUESTO_ADICIONAL1: TFloatField;
    ZQ_ProductosIMPUESTO_ADICIONAL2: TFloatField;
    ZQ_ProductosPRECIO1: TFloatField;
    ZQ_ProductosPRECIO2: TFloatField;
    ZQ_ProductosPRECIO3: TFloatField;
    ZQ_ProductosPRECIO4: TFloatField;
    ZQ_ProductosPRECIO5: TFloatField;
    ZQ_ProductosINSERT_MANUAL: TStringField;
    ZQ_ProductosID_PRODUCTO_1: TIntegerField;
    ZQ_ProductosID_MEDIDA: TIntegerField;
    ZQ_ProductosID_PROD_CABECERA: TIntegerField;
    ZQ_ProductosDESCRIPCION: TStringField;
    ZQ_ProductosCOD_CORTO: TStringField;
    ZQ_ProductosCODIGO_BARRA: TStringField;
    ZQ_ProductosSTOCK_MAX: TFloatField;
    ZQ_ProductosSTOCK_MIN: TFloatField;
    ZQ_ProductosLLEVAR_STOCK: TStringField;
    ZQ_ProductosBAJA: TStringField;
    ZQ_Laboratorios: TZQuery;
    ZQ_LaboratoriosID_LABORATORIO: TIntegerField;
    ZQ_LaboratoriosNOMBRE: TStringField;
    ZQ_LaboratoriosDIRECCION: TStringField;
    ZQ_LaboratoriosTELEFONO: TStringField;
    ZQ_LaboratoriosCODIGO: TStringField;
    ZQ_LaboratoriosBAJA: TStringField;
    DS_Laboratorios: TDataSource;
    ZQ_OrdenID_MEDICO: TIntegerField;
    ZQ_Medico: TZQuery;
    ZQ_MedicoID_MEDICO: TIntegerField;
    ZQ_MedicoNOMBRE: TStringField;
    ZQ_MedicoDIRECCION: TStringField;
    ZQ_MedicoTELEFONO: TStringField;
    ZQ_MedicoMATRICULA: TStringField;
    ZQ_MedicoBAJA: TStringField;
    ZQ_Ordenmed_nombre: TStringField;
    ZQ_Ordenmed_matricula: TStringField;
    ZQ_Ordenmed_direccion: TStringField;
    EKListadoMedico: TEKListadoSQL;
    EKListadoOS: TEKListadoSQL;
    Popup_Producto: TPopupMenu;
    PopItemProducto_Agregar: TMenuItem;
    PopItemProducto_Quitar: TMenuItem;
    ZQ_DetalleProd: TZQuery;
    ZQ_GenOrdenDetalle: TZSequence;
    ZQ_OrdenDetalleOSID_DETALLE_OS: TIntegerField;
    ZQ_OrdenDetalleOSID_ORDEN_DETALLE: TIntegerField;
    ZQ_OrdenDetalleOSID_OS: TIntegerField;
    ZQ_OrdenDetalleOSMONTO_DESCONTADO: TFloatField;
    ZQ_OrdenDetalleOSOBSERVACIONES: TStringField;
    ZQ_GenOrden: TZSequence;
    ZQ_OrdenDetalleprod_detalle: TStringField;
    ZQ_OrdenDetalleprod_pventa: TCurrencyField;
    ZQ_OS: TZQuery;
    ZQ_OrdenDetalleOSos_detalle: TStringField;
    ZQ_OSID_OS: TIntegerField;
    ZQ_OSDETALLE: TStringField;
    PopupMenuOS: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    PCargaProd: TPanel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    btnAceptarProd: TButton;
    btnCancProd: TButton;
    DBEdit4: TDBEdit;
    DBText1: TDBText;
    edCant: TDBEdit;
    Label26: TLabel;
    edImporteUnitario: TDBEdit;
    PCargaOS: TPanel;
    Label39: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    btAceptarOS: TButton;
    btCancelarOs: TButton;
    DBEdit17: TDBEdit;
    edMontoOS: TDBEdit;
    Label40: TLabel;
    edObsOS: TDBMemo;
    edObsProd: TDBMemo;
    Label42: TLabel;
    edLabProd: TDBLookupComboBox;
    Label44: TLabel;
    DBText2: TDBText;
    EKDbSumaProd: TEKDbSuma;
    EKDbSumaOS: TEKDbSuma;
    ZQ_OrdenDetalleprod_laboratorio: TStringField;
    ZQ_LaboratoriosDETALLE: TStringField;
    EKDBDateTimePicker1: TEKDBDateTimePicker;
    EKDBDateTimePicker2: TEKDBDateTimePicker;
    ZQ_Ordenpers_cod: TStringField;
    ZQ_Ordenpers_cuit: TStringField;
    ZQ_PersonasCODIGO_BARRA: TStringField;
    ZQ_PersonasCLAVE: TStringField;
    ZQ_PersonasANIOS: TIntegerField;
    ZQ_Ordenpers_edad: TStringField;
    ZQ_Ordenpers_telefono: TStringField;
    PABM_FormaPago: TPanel;
    Label45: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    Label55: TLabel;
    Label58: TLabel;
    Label61: TLabel;
    edDetalleMDPCbox: TDBLookupComboBox;
    edMDPFecha: TDBEdit;
    edMDPBanco: TDBEdit;
    edMDPNro: TDBEdit;
    edImporte: TDBEdit;
    edCodCuenta: TDBEdit;
    edCuenta: TDBLookupComboBox;
    edImporteVenta: TDBEdit;
    edCodMDP: TDBEdit;
    btFPAceptar: TBitBtn;
    btFPCancelar: TBitBtn;
    edDetalleMDP: TDBEdit;
    ZQ_CodifRP: TZQuery;
    ZQ_CodifRPID_RECETA: TIntegerField;
    ZQ_CodifRPID_ORDEN: TIntegerField;
    ZQ_CodifRPNRO_HISTCLINICA: TStringField;
    ZQ_CodifRPID_MEDICO: TIntegerField;
    ZQ_CodifRPESF_LD: TStringField;
    ZQ_CodifRPESF_LI: TStringField;
    ZQ_CodifRPESF_CD: TStringField;
    ZQ_CodifRPESF_CI: TStringField;
    ZQ_CodifRPESF_ID: TStringField;
    ZQ_CodifRPESF_II: TStringField;
    ZQ_CodifRPCIL_LD: TStringField;
    ZQ_CodifRPCIL_LI: TStringField;
    ZQ_CodifRPCIL_CD: TStringField;
    ZQ_CodifRPCIL_CI: TStringField;
    ZQ_CodifRPCIL_ID: TStringField;
    ZQ_CodifRPCIL_II: TStringField;
    ZQ_CodifRPEJE_LD: TStringField;
    ZQ_CodifRPEJE_LI: TStringField;
    ZQ_CodifRPEJE_CD: TStringField;
    ZQ_CodifRPEJE_CI: TStringField;
    ZQ_CodifRPEJE_ID: TStringField;
    ZQ_CodifRPEJE_II: TStringField;
    DS_CodifRP: TDataSource;
    Label46: TLabel;
    Label52: TLabel;
    DBEdit5: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DS_Medico: TDataSource;
    ZQ_MedicoDETALLE: TStringField;
    ZQ_Orden_Entrega: TZQuery;
    DS_Orden_Entrega: TDataSource;
    ZQ_Orden_EntregaID_ENTREGA: TIntegerField;
    ZQ_Orden_EntregaID_ORDEN: TIntegerField;
    ZQ_Orden_EntregaID_TIPO_FORMAPAG: TIntegerField;
    ZQ_Orden_EntregaMDCP_FECHA: TDateField;
    ZQ_Orden_EntregaMDCP_BANCO: TStringField;
    ZQ_Orden_EntregaMDCP_CHEQUE: TStringField;
    ZQ_Orden_EntregaIMPORTE: TFloatField;
    ZQ_Orden_EntregaCONCILIADO: TDateField;
    ZQ_Orden_EntregaCUENTA_INGRESO: TIntegerField;
    ZQ_Orden_EntregaCUENTA_EGRESO: TIntegerField;
    ZQ_Orden_EntregaFECHA_FP: TDateTimeField;
    ZQ_Orden_EntregaIMPORTE_REAL: TFloatField;
    ZQ_Orden_EntregaID_RECIBO_OP: TIntegerField;
    ZQ_Orden_EntregaINSERT_MANUAL: TStringField;
    EKListadoCuenta: TEKListadoSQL;
    EKListadoMedio: TEKListadoSQL;
    ZQ_ColsPrecios: TZQuery;
    ZQ_ColsPreciosCOLUMNA_PRECIO: TIntegerField;
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
    ZQ_Orden_Entrega_ctaIngreso: TStringField;
    ZQ_Orden_EntregamedioPago: TStringField;
    ZQ_Orden_Entrega_desc_rec: TFloatField;
    ZQ_Orden_Entrega_efectivo: TStringField;
    ZQ_Orden_Entrega_nroPrecio: TStringField;
    ZQ_Orden_Entrega_fiscal: TStringField;
    ZQ_Orden_Entrega_esCtaCorr: TStringField;
    DS_Totales: TDataSource;
    PListado: TPanel;
    btNuevo: TdxBarLargeButton;
    btEditar: TdxBarLargeButton;
    Panel2: TPanel;
    PanelComprobante: TPanel;
    lblTotalOrdenes: TLabel;
    DBGridComprobantes: TDBGrid;
    PanelFPagoYProd: TPanel;
    Splitter3: TSplitter;
    PanelProducto: TPanel;
    lblTotalProducto: TLabel;
    DBGrid1: TDBGrid;
    PanelFpago: TPanel;
    lblTotalFPago: TLabel;
    DBGrid2: TDBGrid;
    btBuscarOrden: TdxBarLargeButton;
    EKBuscarOrdenes: TEKBusquedaAvanzada;
    grupoOrden: TdxBarGroup;
    DBText5: TDBText;
    ZQ_GenOrdenEntrega: TZSequence;
    ZQ_GenOrdenDetalleOS: TZSequence;
    ZQ_EstadoOrden: TZQuery;
    ZQ_EstadoOrdenID_ESTADO: TIntegerField;
    ZQ_EstadoOrdenDESCRIPCION: TStringField;
    ZQ_Orden_estado: TStringField;
    ZQ_OrdenAVISAR: TStringField;
    ZQ_Orden_vendedor: TStringField;
    EKDbSumaEntregas: TEKDbSuma;
    ZQ_OrdenMONTO_RECONOCIDO: TFloatField;
    ZQ_OrdenID_COMPROBANTE: TIntegerField;
    ZQ_OrdenID_SUCURSAL: TIntegerField;
    ZQ_OrdenDetalleIMPORTE_RECONOCIDO: TFloatField;
    ZQ_OrdenDetalleIMPORTE_UNITARIO: TFloatField;
    ZQ_OrdenDetalleIMPORTE_VENTA: TFloatField;
    ZQ_OrdenDetalleIMPORTE_TOTAL: TFloatField;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    ZQ_DetalleProdNOMBRE_PRODUCTO: TStringField;
    ZQ_DetalleProdMEDIDA: TStringField;
    ZQ_DetalleProdARTICULO: TStringField;
    ZQ_DetalleProdTIPO_ARTICULO: TStringField;
    ZQ_DetalleProdNOMBRE_MARCA: TStringField;
    ZQ_DetalleProdIMAGEN: TBlobField;
    ZQ_DetalleProdDETALLE_PROD: TStringField;
    ZQ_DetalleProdSTOCK_ACTUAL: TFloatField;
    ZQ_DetalleProdID_STOCK_PRODUCTO: TIntegerField;
    ZQ_DetalleProdID_PRECIO: TIntegerField;
    ZQ_DetalleProdID_PRODUCTO: TIntegerField;
    ZQ_DetalleProdID_SUCURSAL: TIntegerField;
    ZQ_DetalleProdPRECIO_COSTO: TFloatField;
    ZQ_DetalleProdPRECIO_VENTA: TFloatField;
    ZQ_DetalleProdCOEF_GANANCIA: TFloatField;
    ZQ_DetalleProdCOEF_DESCUENTO: TFloatField;
    ZQ_DetalleProdIMPUESTO_INTERNO: TFloatField;
    ZQ_DetalleProdIMPUESTO_IVA: TFloatField;
    ZQ_DetalleProdPRECIO_COSTO_CIMPUESTOS: TFloatField;
    ZQ_DetalleProdIMPUESTO_ADICIONAL1: TFloatField;
    ZQ_DetalleProdIMPUESTO_ADICIONAL2: TFloatField;
    ZQ_DetalleProdPRECIO1: TFloatField;
    ZQ_DetalleProdPRECIO2: TFloatField;
    ZQ_DetalleProdPRECIO3: TFloatField;
    ZQ_DetalleProdPRECIO4: TFloatField;
    ZQ_DetalleProdPRECIO5: TFloatField;
    ZQ_DetalleProdINSERT_MANUAL: TStringField;
    ZQ_DetalleProdID_PRODUCTO_1: TIntegerField;
    ZQ_DetalleProdID_MEDIDA: TIntegerField;
    ZQ_DetalleProdID_PROD_CABECERA: TIntegerField;
    ZQ_DetalleProdDESCRIPCION: TStringField;
    ZQ_DetalleProdCOD_CORTO: TStringField;
    ZQ_DetalleProdCODIGO_BARRA: TStringField;
    ZQ_DetalleProdSTOCK_MAX: TFloatField;
    ZQ_DetalleProdSTOCK_MIN: TFloatField;
    ZQ_DetalleProdLLEVAR_STOCK: TStringField;
    ZQ_DetalleProdBAJA: TStringField;
    EKDbSumaOrdenes: TEKDbSuma;
    ZU_Orden: TZUpdateSQL;
    ZQ_OrdenNOMBRE_CLI: TStringField;
    ZQ_OrdenDIRECC_CLI: TStringField;
    ZQ_OrdenNOMBRE_MED: TStringField;
    ZQ_OrdenMATRIC_MED: TStringField;
    ZQ_OrdenO_ESTADO: TStringField;
    Panel3: TPanel;
    lblEstado: TStaticText;
    Label54: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label66: TLabel;
    DBEdit1: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    EKDbSuma1: TEKDbSuma;
    Splitter2: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure btsalirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure crearOrdenT();
    procedure modoLecturaProd();
    procedure modoListado();
    procedure VerLectorCB(sino: Boolean);
    procedure btObservacClick(Sender: TObject);
    procedure btCodifClick(Sender: TObject);
    procedure BtLeerCBClick(Sender: TObject);
    procedure LimpiarCodigo;
    procedure btBuscProdClick(Sender: TObject);
    procedure LeerCodigo(id: string; cod: string);
    function agregar(detalle: string; prod: integer): Boolean;
    procedure IdentificarCodigo();
    function completarCodBar(cod: string): string;
    procedure bt_BuscarClienteClick(Sender: TObject);
    procedure modoEscrituraProd();
    procedure BtCancelarOrdenClick(Sender: TObject);
    procedure cancelarProducto;
    procedure btnMedicoClick(Sender: TObject);
    procedure btQuitarProductoClick(Sender: TObject);
    procedure buscarOS(id:Integer);
    procedure PopItemProducto_AgregarClick(Sender: TObject);
    procedure ZQ_OrdenDetalleCANTIDADChange(Sender: TField);
    function calcMonto():Real ;
    procedure DBGridListadoProductosKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btQuitarOSClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure btnAceptarProdClick(Sender: TObject);
    procedure btnCancProdClick(Sender: TObject);
    procedure PopItemProducto_QuitarClick(Sender: TObject);
    procedure btCancelarOsClick(Sender: TObject);
    procedure btAceptarOSClick(Sender: TObject);
    function verificarTotOS():Boolean;
    procedure modoEscrituraOS();
    procedure btnFormaPagoClick(Sender: TObject);
    procedure btFPAceptarClick(Sender: TObject);
    procedure btFPCancelarClick(Sender: TObject);
    procedure buscarCuenta(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCodCuentaExit(Sender: TObject);
    procedure calcularFP();
    procedure buscarFormaPago(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure codBarrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure codBarrasEnter(Sender: TObject);
    procedure btBuscarOrdenClick(Sender: TObject);
    procedure btNuevoClick(Sender: TObject);
    function guardarOrden(): Boolean;
    procedure btGuardarOrdenClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure editarOrdenT(id:Integer);
    procedure BtVendedorClick(Sender: TObject);
    procedure OnSelVendedor();
    procedure btnQuitarPagoClick(Sender: TObject);
    function validarBoleta(): Boolean;
    procedure EKDbSumaEntregasSumListChanged(Sender: TObject);
    procedure recalcularTotales();
    procedure RecalcularMontoPago();
    procedure edImporteUnitarioExit(Sender: TObject);
    procedure edCantExit(Sender: TObject);
    procedure EKDbSumaProdSumListChanged(Sender: TObject);
    procedure ZQ_OrdenDetalleBeforeDelete(DataSet: TDataSet);
    procedure ZQ_OrdenDetalleOSAfterPost(DataSet: TDataSet);
    procedure ZQ_OrdenDetalleOSAfterDelete(DataSet: TDataSet);
    procedure EKDbSumaOrdenesSumListChanged(Sender: TObject);
    procedure DBGridComprobantesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ZQ_OrdenAfterScroll(DataSet: TDataSet);
    procedure btDetallesOrdenClick(Sender: TObject);
    procedure BtEntregadoClick(Sender: TObject);
  private
    { Private declarations }
    vsel: TFBuscarProductoStock;
    vsel2: TFBuscarPersona;
    vsel3: TFBuscarPersona;
    vsel4: TFBuscarPersona;
    procedure OnSelProd;
    procedure OnSelPers;

  public
    { Public declarations }
  end;

var
  FOP_ABM_OrdenTecnica: TFOP_ABM_OrdenTecnica;
  acumEntrega, acumProductos,acumOS, acumFinal: double;
  acumPrecio1, acumPrecio2, acumPrecio3, acumPrecio4, acumPrecio5: double;
  coefPrecio1, coefPrecio2, coefPrecio3, coefPrecio4, coefPrecio5: double;
  IdProd: string;
  cliente, IdVendedor, cajero, idSucursal,cantProductos: Integer;
  borrarVendedor: Boolean;
  importeVenta, importeIF,descCliente: Double;
  permitirOnChangeFPAGO: boolean;
  ctaPorDefecto: Integer;
  //----Fiscal--------
  fiscal_Impresora, fiscal_ruta, fiscal_sistema: string;
  id_cuenta_fpago: integer;

const
  abmOrden = 'ABM Orden-Tecnica';
implementation

uses UUtilidades;



{$R *.dfm}

procedure TFOP_ABM_OrdenTecnica.FormCreate(Sender: TObject);
begin
  CurrencyDecimals:= 2;
  DecimalSeparator:= '.';
  ThousandSeparator:= ',';
  DateSeparator:= '/';
  ShortDateFormat:= 'dd/MM/yyyy';
  dm.ZQ_Configuracion.Close;
  dm.ZQ_Configuracion.Open;
  idSucursal:= dm.ZQ_ConfiguracionDB_SUCURSAL.AsInteger;

  dm.EKModelo.abrir(ZQ_OS);
  dm.EKModelo.abrir(ZQ_EstadoOrden);
  dm.EKModelo.abrir(ZQ_Laboratorios);
  dm.EKModelo.abrir(ZQ_Medico);
  dm.EKModelo.abrir(ZQ_FormasPago);
  dm.EKModelo.abrir(ZQ_Cuentas);
  dm.EKModelo.abrir(ZQ_DetalleProd);

  Cliente:=-1;
  IdVendedor:=-1;

  modoListado();
//
//  if not (dm.EKUsrLogin.PermisoAccion('NO_FISCAL')) then
//  begin
//    ZQ_FormasPago.Filtered:= False;
//    ZQ_FormasPago.Filter:= Format('IF = %s', [QuotedStr('S')]);
//    ZQ_FormasPago.Filtered:= True;
//    btnEfectivo.Visible:=False;
//  end
//  else
//  begin
//    ZQ_FormasPago.Filtered:= False;
//    ZQ_FormasPago.Filter:= '';
//    ZQ_FormasPago.Filtered:= True;
//    btnEfectivo.Visible:=True;
//  end;
//
  PABM_FormaPago.Visible:= False;
  //Formas de Pago
  FPrincipal.Iconos_Menu_16.GetBitmap(1, btFPAceptar.Glyph);
  FPrincipal.Iconos_Menu_16.GetBitmap(0, btFPCancelar.Glyph);

  ctaPorDefecto:= cajero_cuenta_defecto;
  edCuenta.DropDownRows:= cajero_tamanio_lista_fpago;

end;

procedure TFOP_ABM_OrdenTecnica.btsalirClick(Sender: TObject);
begin
close();
end;

procedure TFOP_ABM_OrdenTecnica.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(abmOrden);
end;

procedure TFOP_ABM_OrdenTecnica.crearOrdenT();
begin
  acumEntrega:= 0;
  acumProductos:= 0;
  acumOS:= 0;
  acumFinal:= 0;
  acumPrecio1:= 0;
  acumPrecio2:= 0;
  acumPrecio3:= 0;
  acumPrecio4:= 0;
  acumPrecio5:= 0;
  IdProd:= '';

//  EKDbSuma1.SumCollection[0].SumValue:= 0;
//  EKDbSuma1.SumCollection[1].SumValue:= 0;
//  EKDbSuma1.SumCollection[2].SumValue:= 0;
//  EKDbSuma1.SumCollection[3].SumValue:= 0;
//  EKDbSuma1.SumCollection[4].SumValue:= 0;
//  EKDbSuma1.SumCollection[5].SumValue:= 0;
//  EKDbSuma1.SumCollection[6].SumValue:= 0;
//  EKDbSuma1.SumCollection[7].SumValue:= 0;
//
//  EKDbSuma2.SumCollection[0].SumValue:= 0;
//  EKDbSuma2.SumCollection[1].SumValue:= 0;

  Cliente:= -1;
  IdVendedor:= -1;
  descCliente:= 0;

  ZQ_OrdenDetalle.Close;
  ZQ_OrdenDetalle.MasterSource:=nil;
  ZQ_Orden_Entrega.Close;
  ZQ_Orden_Entrega.MasterSource:=nil;
  ZQ_CodifRP.Close;
  ZQ_CodifRP.MasterSource:=nil;
  ZQ_Orden.Close;

  if dm.EKModelo.iniciar_transaccion(abmOrden, [ZQ_Orden,ZQ_OrdenDetalle,ZQ_OrdenDetalleOS,ZQ_Orden_Entrega,ZQ_CodifRP]) then
  begin

      ZQ_Orden.Insert;

      ZQ_OrdenID_ORDEN.AsInteger:=ZQ_GenOrden.GetNextValue;
      ZQ_OrdenID_CLIENTE.AsInteger:= cliente;

      ZQ_OrdenDetalle.MasterSource:=DS_Orden;
      ZQ_Orden_Entrega.MasterSource:=DS_Orden;
      ZQ_CodifRP.MasterSource:=DS_Orden;
      ZQ_OrdenID_SUCURSAL.AsInteger:=idSucursal;

      //Pongo el Estado PENDIENTE
      ZQ_OrdenID_ESTADO.AsInteger:=1;

      ZQ_OrdenOBSERVACIONES.AsString:= '';
      ZQ_OrdenMONTO_TOTAL.AsFloat:= 0;
      ZQ_OrdenSALDO.AsFloat:= 0;
      ZQ_OrdenMONTO_ENTREGADO.AsFloat:= 0;

      ZQ_OrdenCODIGO_CLI.AsString:=rellenar(ZQ_OrdenID_ORDEN.AsString,'0',9);
      ZQ_OrdenFECHA_ORDEN.AsDateTime:=dm.EKModelo.Fecha();
      ZQ_OrdenFECHA_PROMETIDO.clear;
      ZQ_OrdenCOD_BARRAS.Clear;
      ZQ_OrdenNRO_FACTURA.AsString:=rellenar(ZQ_OrdenID_ORDEN.AsString,'0',9);
      ZQ_OrdenENTREGADO_POR.Clear;
      ZQ_OrdenFACTURADO_POR.Clear;

      ZQ_CodifRP.Append;
      ZQ_CodifRPID_ORDEN.AsInteger:=ZQ_OrdenID_ORDEN.AsInteger;


      recalcularTotales();
  end;


end;

procedure TFOP_ABM_OrdenTecnica.VerLectorCB(sino: Boolean);
begin
  PLeerCodigo.Visible:= sino;
  PLeerCodigo.BringToFront;
  dm.centrarPanel(FOP_ABM_OrdenTecnica, PLeerCodigo);
  PanelContenedorDerecha.Enabled:= not (PLeerCodigo.Visible);
end;

procedure TFOP_ABM_OrdenTecnica.btObservacClick(Sender: TObject);
begin

 if btCodif.Down then btCodif.Down:=False;

 if btObservac.Down  then
     begin
      PObservaciones.BringToFront;
     end
 else
     begin
      PFormaPago.BringToFront;
     end
end;

procedure TFOP_ABM_OrdenTecnica.btCodifClick(Sender: TObject);
begin

 if btObservac.Down then btObservac.Down:=False;
 if btCodif.Down then
     begin
      PReceta.BringToFront
     end
 else
     begin
      PFormaPago.BringToFront;
     end
end;

procedure TFOP_ABM_OrdenTecnica.BtLeerCBClick(Sender: TObject);
begin
  if (ZQ_OrdenDetalle.State <> dsBrowse) then
    exit;

  if cliente < 0 then
  begin
    bt_BuscarCliente.Click;
    exit;
  end;

  VerLectorCB(true);
  LimpiarCodigo();
  if codBarras.Enabled then
    codBarras.SetFocus;
end;

procedure TFOP_ABM_OrdenTecnica.modoLecturaProd();
begin
  VerLectorCB(false);
  PListado.Enabled:= True;
  PListado.Visible:= false;
  PCargaProd.Enabled:=false;
  PFormaPago.BringToFront;
  PCargaProd.SendToBack;
  PCargaOS.SendToBack;
  PanelDetalles.Enabled:= true;
  grupoVertical.Enabled:= true;
  GrupoGuardarCancelar.Enabled:= true;
  grupoOrden.Enabled:= false;
  PanelContenedorDerecha.Enabled:=true;
end;

procedure TFOP_ABM_OrdenTecnica.modoListado();
begin
  VerLectorCB(false);
  PListado.Enabled:= True;
  PListado.Visible:= True;
  PFormaPago.BringToFront;
  PListado.BringToFront;
  PCargaProd.Enabled:=false;
  PCargaProd.SendToBack;
  PCargaOS.SendToBack;
  grupoOrden.Enabled:=true;
  grupoVertical.Enabled:= false;
  GrupoGuardarCancelar.Enabled:= false;
  PanelContenedorDerecha.Enabled:=false;

//  ZQ_Productos.Close;
  btCodif.Down:=false;
  btObservac.Down:=false;
end;

procedure TFOP_ABM_OrdenTecnica.LimpiarCodigo;
begin
  ZQ_Productos.Close;
  codBarras.Clear;
  if (ZQ_OrdenDetalle.State <> dsBrowse) then
  begin
    ZQ_OrdenDetalleCANTIDAD.AsFloat:= 1;
    ZQ_OrdenDetalleIMPORTE_UNITARIO.AsFloat:= 0;
    ZQ_OrdenDetalleIMPORTE_RECONOCIDO.AsFloat:= 0;
    ZQ_OrdenDetalleIMPORTE_VENTA.AsFloat:= 0;
    ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat:= 0;
  end;


end;

procedure TFOP_ABM_OrdenTecnica.btBuscProdClick(Sender: TObject);
begin
 if dm.EKModelo.verificar_transaccion(abmOrden) then //SI ESTOY DANDO DE ALTA O EDITANDO
 begin
  if cliente < 0 then
  begin
    bt_BuscarCliente.Click;
    exit;
  end;

  if EKListadoProducto.Buscar then
    if (EKListadoProducto.Resultado <> '') then
    begin
      codBarras.Text:= 'I' + EKListadoProducto.Resultado;
      LeerCodigo('I', codBarras.Text);
    end
 end;
end;

procedure TFOP_ABM_OrdenTecnica.IdentificarCodigo();
var
  cod, num: string;
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

procedure TFOP_ABM_OrdenTecnica.LeerCodigo(id: string; cod: string);
var
  f1, f2, fecha: tdate;
  punit: double;
  diasm: integer;
begin



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

    agregar('',ZQ_ProductosID_PRODUCTO.AsInteger);
  end
  else
  begin
    Application.MessageBox('El producto no pudo ser encontrado.' + char(13) +
      '(utilice la búsqueda avanzada para seleccionar el adecuado)', 'Código incorrecto');
    LimpiarCodigo;
    exit;
  end;
end;

function TFOP_ABM_OrdenTecnica.agregar(detalle: string; prod: integer): Boolean;
var
  i: Integer;
begin
  Result:= False;
  if dm.EKModelo.verificar_transaccion(abmOrden) then //SI ESTOY DANDO DE ALTA O EDITANDO
   begin
    ZQ_OrdenDetalle.Append;
    ZQ_OrdenDetalleID_ORDEN_DETALLE.AsInteger:=ZQ_GenOrdenDetalle.GetNextValue;
    ZQ_OrdenDetalleID_PRODUCTO.AsInteger:= prod;
    ZQ_OrdenDetalleID_ORDEN.AsInteger:=ZQ_OrdenID_ORDEN.AsInteger;
    ZQ_OrdenDetalleIMPORTE_UNITARIO.AsFloat:= ZQ_ProductosPRECIO_VENTA.AsFloat;
    ZQ_OrdenDetalleCANTIDAD.AsFloat:= 1;
    ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat:= ZQ_OrdenDetalleIMPORTE_UNITARIO.AsFloat*ZQ_OrdenDetalleCANTIDAD.AsFloat;
    ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat:=ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat-(descCliente/100)*ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat;

    // Cargo los precios que correspondan según configuración de Tipo_Formapago (Columna_precio=0 toma el PRECIO_VENTA)
//    ZQ_ColsPrecios.Close;
//    ZQ_ColsPrecios.Open;
//    for i:= 1 to 5 do
//    begin
//      ZQ_ColsPrecios.Filtered:= False;
//      ZQ_ColsPrecios.Filter:= Format('COLUMNA_PRECIO=%d', [i]);
//      ZQ_ColsPrecios.Filtered:= True;
//
//      if ZQ_ColsPreciosCOLUMNA_PRECIO.AsInteger = i then
//        CD_DetalleFactura.FieldByName(Format('PRECIO%d', [i])).AsFloat:= ZQ_Productos.FieldByName(Format('PRECIO%d', [i])).AsFloat
//      else
//        CD_DetalleFactura.FieldByName(Format('PRECIO%d', [i])).AsFloat:= ZQ_ProductosPRECIO_VENTA.AsFloat;
//    end;


    modoEscrituraProd();
    Result:= True;
   end;
end;

function TFOP_ABM_OrdenTecnica.completarCodBar(cod: string): string;
begin
  Result:= StringOfChar('0', LONG_COD_BARRAS - Length(cod)) + cod;
end;

procedure TFOP_ABM_OrdenTecnica.bt_BuscarClienteClick(Sender: TObject);
begin

  if (ZQ_Orden.State in [dsInsert,dsEdit]) then
  begin
    if not Assigned(vsel2) then
      vsel2:= TFBuscarPersona.Create(nil);

    vsel2.configRelacion(RELACION_CLIENTE, True);
    vsel2.EKBusqueda.Abrir;
    vsel2.OnSeleccionar:= OnSelPers;
    vsel2.ShowModal;
  end;
end;

procedure TFOP_ABM_OrdenTecnica.OnSelPers;
begin
  if not (vsel2.ZQ_Personas.IsEmpty) then
  begin
    ZQ_Personas.Refresh;
    ZQ_Personas.Locate('id_persona', vsel2.ZQ_PersonasID_PERSONA.AsInteger, []);
    Cliente:= ZQ_PersonasID_PERSONA.AsInteger;
    descCliente:= 0;
    if (not ZQ_PersonasDESCUENTO_ESPECIAL.IsNull) or (ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat <> 0) then
      if (application.MessageBox(pchar('El cliente seleccionado posee un descuento especial del ' + FloatToStr(ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat * 100) + '%.' +
        #13 + 'Desea aplicar este descuento para todos los productos que se carguen?'), 'Descuento Cliente', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      begin
        descCliente:= ZQ_PersonasDESCUENTO_ESPECIAL.AsFloat * 100;
      end;
    ZQ_OrdenID_CLIENTE.AsInteger:= cliente;
  end;
  vsel2.Close;
end;

procedure TFOP_ABM_OrdenTecnica.OnSelProd;
begin
  if not vsel.ZQ_Stock.IsEmpty then
  begin
      codBarras.Text:= 'I' + vsel.ZQ_StockID_PRODUCTO.AsString;
      LeerCodigo('I', codBarras.Text);
      if edCant.Enabled then
        edCant.SetFocus;
      vsel.ZQ_Stock.Filtered:= False;
      vsel.Close;
  end;
end;

procedure TFOP_ABM_OrdenTecnica.modoEscrituraProd();
begin
  VerLectorCB(false);
  PCargaProd.Enabled:=true;
  PCargaProd.BringToFront;
  PanelDetalles.Enabled:= False;
  grupoVertical.Enabled:= False;
  PanelContenedorDerecha.Enabled:=false;
  GrupoGuardarCancelar.Enabled:= False;
  dm.centrarPanel(FOP_ABM_OrdenTecnica, PCargaProd);
  if edCant.Enabled then
    edCant.SetFocus;

  edImporteUnitario.Enabled:= dm.EKUsrLogin.PermisoAccion('CAJA_MODIF_IMPORTE');
end;



procedure TFOP_ABM_OrdenTecnica.BtCancelarOrdenClick(Sender: TObject);
begin
    if (application.MessageBox(pchar('Desea Cancelar la Orden actual ?'), 'Cancelar Cambios', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
      cancelarProducto();
end;

procedure TFOP_ABM_OrdenTecnica.cancelarProducto;
begin
  dm.EKModelo.abrir(ZQ_OS);
  dm.EKModelo.abrir(ZQ_DetalleProd);
  
  if dm.EKModelo.verificar_transaccion(abmOrden) then
   dm.EKModelo.cancelar_transaccion(abmOrden);
  Cliente:= -1;
  IdVendedor:= -1;
  descCliente:= 0;

  ZQ_GenOrden.CloseSequence;

  modoListado();
end;

procedure TFOP_ABM_OrdenTecnica.btnMedicoClick(Sender: TObject);
begin
 if (ZQ_Orden.State in [dsInsert,dsEdit]) then
  if EKListadoMedico.Buscar then
    if (EKListadoMedico.Resultado <> '') then
    begin
      ZQ_OrdenID_MEDICO.AsInteger:=StrToInt(EKListadoMedico.Resultado);
    end
end;

procedure TFOP_ABM_OrdenTecnica.btQuitarProductoClick(Sender: TObject);
begin
if dm.EKModelo.verificar_transaccion(abmOrden) then
 if not (ZQ_OrdenDetalle.IsEmpty) then
  begin

    ZQ_OrdenDetalle.Delete;

    recalcularTotales();
  end;
end;


procedure TFOP_ABM_OrdenTecnica.buscarOS(id:Integer);
begin

  EKListadoOS.SQL[4]:=Format('and opos.id_persona=%d',[id]);
  if EKListadoOS.Buscar then
  begin
    if EKListadoOS.Resultado <> '' then
    begin
      ZQ_OrdenDetalleOS.Append;
      ZQ_OrdenDetalleOSID_DETALLE_OS.AsInteger:=ZQ_GenOrdenDetalleOS.GetNextValue;
      ZQ_ordenDetalleOSID_ORDEN_DETALLE.AsInteger:=ZQ_OrdenDetalleID_ORDEN_DETALLE.AsInteger;
      ZQ_OrdenDetalleOSID_OS.AsInteger:=StrToInt(EKListadoOS.Resultado);
      ZQ_OrdenDetalleOSMONTO_DESCONTADO.AsFloat:=0;
      modoEscrituraOS();
    end;
  end;
end;



procedure TFOP_ABM_OrdenTecnica.PopItemProducto_AgregarClick(
  Sender: TObject);
begin
  btBuscProd.Click;
end;

procedure TFOP_ABM_OrdenTecnica.ZQ_OrdenDetalleCANTIDADChange(
  Sender: TField);
begin
      if (not ZQ_OrdenDetalleprod_pventa.IsNull) then
         begin
           ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat:=ZQ_OrdenDetalleIMPORTE_UNITARIO.AsFloat*ZQ_OrdenDetalleCANTIDAD.AsFloat;
         end;
end;

function TFOP_ABM_OrdenTecnica.calcMonto():Real ;
var
tot:real;
begin

end;

procedure TFOP_ABM_OrdenTecnica.DBGridListadoProductosKeyUp(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if dm.EKModelo.verificar_transaccion(abmOrden) then //SI ESTOY DANDO DE ALTA O EDITANDO
   if key=112 then
      btBuscProd.Click;

end;

procedure TFOP_ABM_OrdenTecnica.btQuitarOSClick(Sender: TObject);
begin
if dm.EKModelo.verificar_transaccion(abmOrden)and(not ZQ_OrdenDetalleOS.IsEmpty) then
  begin
    ZQ_OrdenDetalleOS.Delete;
    recalcularTotales();
  end;
end;

procedure TFOP_ABM_OrdenTecnica.MenuItem1Click(Sender: TObject);
begin
    if dm.EKModelo.verificar_transaccion(abmOrden) then
       buscarOS(cliente);
end;

procedure TFOP_ABM_OrdenTecnica.MenuItem2Click(Sender: TObject);
begin
    btQuitarOS.Click;
end;

procedure TFOP_ABM_OrdenTecnica.btnAceptarProdClick(Sender: TObject);
begin
Perform(WM_NEXTDLGCTL, 0, 0);

  if ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat <= 0 then
  begin
    Application.MessageBox('El importe ingresado es incorrecto.', 'Atención');
    if edCant.Enabled then
      edCant.SetFocus;
    exit;
  end;

  if ((not (ZQ_Productos.IsEmpty)) and (ZQ_OrdenDetalleCANTIDAD.AsFloat > 0)) then

    if ((ZQ_ProductosLLEVAR_STOCK.AsString <> 'S') or (ZQ_ProductosSTOCK_ACTUAL.AsFloat >= ZQ_OrdenDetalleCANTIDAD.AsFloat)) then
    begin

      ZQ_OrdenDetalleIMPORTE_VENTA.AsFloat:=ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat;
      ZQ_OrdenDetalleIMPORTE_RECONOCIDO.AsFloat:=0;
      ZQ_OrdenDetalle.Post;

      recalcularTotales();
      ZQ_OrdenDetalle.Last;
      modoLecturaProd();
      if DBGridListadoProductos.Enabled then
        DBGridListadoProductos.SetFocus;
    end
    else
    begin
      Application.MessageBox('El stock actual del producto es insuficiente para la cantidad ingresada.', 'Atención');
      if edCant.Enabled then
        edCant.SetFocus;
      exit;
    end;
end;

procedure TFOP_ABM_OrdenTecnica.btnCancProdClick(Sender: TObject);
begin
  if (ZQ_OrdenDetalle.State in [dsInsert, dsEdit]) then
    ZQ_OrdenDetalle.Cancel;
  modoLecturaProd();

  if DBGridListadoProductos.Enabled then
    DBGridListadoProductos.SetFocus;
end;

procedure TFOP_ABM_OrdenTecnica.PopItemProducto_QuitarClick(
  Sender: TObject);
begin
   btQuitarProducto.Click;
end;

procedure TFOP_ABM_OrdenTecnica.btCancelarOsClick(Sender: TObject);
begin
  if (ZQ_OrdenDetalleOS.State in [dsInsert, dsEdit])and(not ZQ_OrdenDetalleOS.IsEmpty) then
    ZQ_OrdenDetalleOS.Delete;

  recalcularTotales();
  modoLecturaProd();

  if DBGridListadoOS.Enabled then
    DBGridListadoOS.SetFocus;
end;

procedure TFOP_ABM_OrdenTecnica.btAceptarOSClick(Sender: TObject);
var id:integer;
begin
Perform(WM_NEXTDLGCTL, 0, 0);

  if ZQ_OrdenDetalleOSMONTO_DESCONTADO.AsFloat <= 0 then
  begin
    Application.MessageBox('El importe ingresado es incorrecto.', 'Atención');
    if edMontoOS.Enabled then
      edMontoOS.SetFocus;
    exit;
  end;

  if (not (ZQ_OrdenDetalleOSID_OS.IsNull)) then
    begin
      id:=ZQ_OrdenDetalleOS.RecNo;
      ZQ_OrdenDetalleOS.Post;

      if not(verificarTotOS()) then
       begin
         ZQ_OrdenDetalleOS.last;
         ZQ_OrdenDetalleOS.Edit;
         modoEscrituraOS();
         exit;
       end
      else
       begin
        modoLecturaProd();
        recalcularTotales();
        ZQ_OrdenDetalleOS.Last;
        if DBGridListadoOS.Enabled then
          DBGridListadoOS.SetFocus;
       end
    end
end;

function TFOP_ABM_OrdenTecnica.verificarTotOS: Boolean;
begin
  Result:= True;

  if (ZQ_OrdenDetalleOSMONTO_DESCONTADO.AsFloat > ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat) then
  begin
    Application.MessageBox(PCHAR(Format('El monto a descontar no debe ser superior a $%s, por favor Verifique',[CurrToStr(ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat)])), 'Validación', MB_OK + MB_ICONINFORMATION);
    result:= false;
    exit;
  end;

  if ((acumOS+ZQ_OrdenDetalleOSMONTO_DESCONTADO.AsFloat) > acumProductos) then
  begin
    Application.MessageBox(PCHAR(Format('El monto reconocido total no debe ser superior a $%s, por favor Verifique',[CurrToStr(acumProductos)])), 'Validación', MB_OK + MB_ICONINFORMATION);
    result:= false;
    exit;
  end;
end;

procedure TFOP_ABM_OrdenTecnica.modoEscrituraOS;
begin
  VerLectorCB(false);
  PCargaOS.Enabled:=true;
  PCargaOS.BringToFront;
  PanelDetalles.Enabled:= False;
  grupoVertical.Enabled:= False;
  PanelContenedorDerecha.Enabled:=false;
  GrupoGuardarCancelar.Enabled:= False;
  dm.centrarPanel(FOP_ABM_OrdenTecnica, PCargaOS);
  if edMontoOS.Enabled then
    edMontoOS.SetFocus;
end;



procedure TFOP_ABM_OrdenTecnica.btnFormaPagoClick(Sender: TObject);
begin
 if not (btnFormaPago.Enabled) then
    exit;

  if (ZQ_Orden.State in [dsInsert, dsEdit]) and (not ZQ_OrdenDetalle.IsEmpty) and PanelProductosYFPago.Enabled then
  begin
    dm.centrarPanel(FOP_ABM_OrdenTecnica, PABM_FormaPago);
    PABM_FormaPago.Top:= FOP_ABM_OrdenTecnica.Height - 300;
    PABM_FormaPago.Visible:= true;
    PanelContenedorDerecha.Enabled:= not (PABM_FormaPago.Visible);
    PABM_FormaPago.BringToFront;
    grupoVertical.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= false;

    ZQ_Orden_Entrega.Append;
    ZQ_Orden_EntregaID_ORDEN.AsInteger:=ZQ_OrdenID_ORDEN.AsInteger;
    ZQ_Orden_EntregaID_ENTREGA.AsInteger:=ZQ_GenOrdenEntrega.GetNextValue;

    edCodCuenta.SetFocus;
    edImporte.SetFocus;
    edCodCuenta.SetFocus;

    ZQ_Cuentas.Locate('ID_CUENTA', ctaPorDefecto, []);

    ZQ_Orden_EntregaCUENTA_INGRESO.AsInteger:= ZQ_CuentasID_CUENTA.AsInteger;
    ZQ_Orden_EntregaID_TIPO_FORMAPAG.AsInteger:= ZQ_CuentasMEDIO_DEFECTO.AsInteger;

    ZQ_Orden_EntregaIMPORTE.AsFloat:= acumFinal ;
  end
end;

procedure TFOP_ABM_OrdenTecnica.btFPAceptarClick(Sender: TObject);
begin
 if ZQ_Orden_Entrega.State in [dsInsert, dsEdit] then
  begin
   if not(ZQ_Orden_EntregaCUENTA_INGRESO.IsNull or ZQ_Orden_EntregaID_TIPO_FORMAPAG.IsNull) then
    if ZQ_Orden_EntregaCUENTA_INGRESO.AsInteger = 1 then //si se eligio Cuenta Corriente
    begin
      if cliente <= 0 then //si es consumidor final
      begin
        ShowMessage('No se puede elegir Cuenta Corriente para el cliente CONSUMIDOR FINAL, verifique');
        exit;
      end
      else //si no es consumidor final
      begin
        if not dm.verificarCuentaCorriente(cliente) then //si no tiene cuenta corriente en el negocio
        begin
          ShowMessage('El cliente ' + ZQ_Ordenpers_nombre.AsString + ' no tiene Cuenta Corriente en el negocio, verifique');
          exit;
        end;
      end;
    end
    else
      if ZQ_Orden_EntregaCUENTA_INGRESO.AsInteger = 2 then //si se eligio Nota Credito
      begin
        if cliente <= 0 then //si es consumidor final
        begin
          ShowMessage('No se puede elegir Nota Credito para el cliente CONSUMIDOR FINAL, verifique');
          exit;
        end
      end;

    if ZQ_Orden_EntregaIMPORTE_REAL.IsNull then
       ZQ_Orden_EntregaIMPORTE_REAL.AsFloat:=ZQ_Orden_EntregaIMPORTE.AsFloat;

    ZQ_Orden_Entrega.Post;
    PABM_FormaPago.Visible:= False;
    PanelContenedorDerecha.Enabled:= not (PABM_FormaPago.Visible);
    grupoVertical.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= true;
    DBGridFormaPago.SetFocus;
    recalcularTotales();
  end
end;

procedure TFOP_ABM_OrdenTecnica.btFPCancelarClick(Sender: TObject);
begin
  if ZQ_Orden_Entrega.State in [dsInsert, dsEdit] then
  begin
    ZQ_Orden_Entrega.Cancel;
    PABM_FormaPago.Visible:= False;
    PanelContenedorDerecha.Enabled:= not (PABM_FormaPago.Visible);
    grupoVertical.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= true;
    DBGridFormaPago.SetFocus;
  end
end;

procedure TFOP_ABM_OrdenTecnica.buscarCuenta(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin
    EKListadoCuenta.SQL.Text:=dm.sql_cuentas_fpago_suc(0, true); //todas las cuentas de la suc
    if EKListadoCuenta.Buscar then
    begin
      if EKListadoCuenta.Resultado <> '' then
      begin
        id_cuenta_fpago:= StrToInt(EKListadoCuenta.Resultado);
        ZQ_Cuentas.Locate('ID_CUENTA', id_cuenta_fpago, []);
        ZQ_Orden_EntregaCUENTA_INGRESO.AsInteger:= ZQ_CuentasID_CUENTA.AsInteger;
      end;
    end;
  end;
end;


procedure TFOP_ABM_OrdenTecnica.edCodCuentaExit(Sender: TObject);
begin
  if not ((ZQ_Orden_Entrega_ctaIngreso.AsString = '') or (ZQ_Orden_EntregamedioPago.AsString = '')) then
//    calcularFP();
end;


procedure TFOP_ABM_OrdenTecnica.calcularFP();
var
  precio: Double;
begin
  if not (ZQ_OrdenDetalle.IsEmpty) then
    if ZQ_Orden_Entrega.State in [dsInsert, dsEdit] then
    begin
      //Si es una sola forma de pago le pongo el valor del total por defecto
      if ((acumProductos > 0) and ((ZQ_Orden_EntregaIMPORTE.IsNull) or (ZQ_Orden_EntregaIMPORTE.AsFloat = 0)))
        and not (ZQ_Orden_EntregaID_TIPO_FORMAPAG.IsNull and ZQ_Orden_EntregaCUENTA_INGRESO.IsNull) then
      begin
        ZQ_Orden_EntregaIMPORTE.AsFloat:= acumProductos;
      end;

      if not (ZQ_Orden_Entrega_nroPrecio.IsNull) then
      begin
        case ZQ_Orden_Entrega_nroPrecio.AsInteger of
          0:
            begin
              precio:= ZQ_Orden_EntregaIMPORTE.AsFloat;
            end;
          1:
            begin
              precio:= ZQ_Orden_EntregaIMPORTE.AsFloat * coefPrecio1;
            end;
          2:
            begin
              precio:= ZQ_Orden_EntregaIMPORTE.AsFloat * coefPrecio2;
            end;
          3:
            begin
              precio:= ZQ_Orden_EntregaIMPORTE.AsFloat * coefPrecio3;
            end;
          4:
            begin
              precio:= ZQ_Orden_EntregaIMPORTE.AsFloat * coefPrecio4;
            end;
          5:
            begin
              precio:= ZQ_Orden_EntregaIMPORTE.AsFloat * coefPrecio5;
            end;
        end;

        ZQ_Orden_EntregaIMPORTE_REAL.AsFloat:= precio + (precio * ZQ_Orden_Entrega_desc_rec.AsFloat);
      end;

      RecalcularMontoPago();

    end;
end;

procedure TFOP_ABM_OrdenTecnica.RecalcularMontoPago();
begin

  acumEntrega:= EKDbSumaEntregas.SumCollection[0].SumValue;
  acumFinal:= EKDbSumaEntregas.SumCollection[1].SumValue;
  lblTotAPagar.Caption:= 'Saldo Pendiente: ' + FormatFloat('$ ##,###,##0.00 ', acumFinal);

end;

procedure TFOP_ABM_OrdenTecnica.buscarFormaPago(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin
    id_cuenta_fpago:= ZQ_Orden_EntregaCUENTA_INGRESO.AsInteger;
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
        ZQ_Orden_EntregaID_TIPO_FORMAPAG.AsInteger:= StrToInt(EKListadoMedio.Resultado);
      end;
    end;
  end;
end;


procedure TFOP_ABM_OrdenTecnica.codBarrasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
  begin
    IdentificarCodigo;

  end
  else if key = 27 then
  begin
    VerLectorCB(false);
    modoLecturaProd();

  if DBGridListadoProductos.Enabled then
    DBGridListadoProductos.SetFocus;
  end
end;

procedure TFOP_ABM_OrdenTecnica.codBarrasEnter(Sender: TObject);
begin
  LimpiarCodigo;
end;

procedure TFOP_ABM_OrdenTecnica.btBuscarOrdenClick(Sender: TObject);
begin
  if FOP_ABM_OrdenTecnica.Active then
  begin
    if PListado.Visible then
      if EKBuscarOrdenes.Buscar then
        begin
          ZQ_Orden.First;
          dm.EKModelo.abrir(ZQ_OrdenDetalle);
          dm.EKModelo.abrir(ZQ_Orden_Entrega);
        end
  end
end;

procedure TFOP_ABM_OrdenTecnica.btNuevoClick(Sender: TObject);
begin

crearOrdenT();

modoLecturaProd();

end;

function TFOP_ABM_OrdenTecnica.guardarOrden(): Boolean;
var
  comprobante, vendedor: integer;
begin
  Result:= False;

  if (dm.EKModelo.verificar_transaccion(abmOrden)) then
   try
    begin
      if not (dm.EKModelo.finalizar_transaccion(abmOrden)) then
      begin
        dm.EKModelo.cancelar_transaccion(abmOrden);
        Application.MessageBox('No se pudo guardar la Orden Técnica.', 'Atención');
        modoListado();
      end
      else
      begin
        //Application.MessageBox(PChar(Format('Se creó el Comprobante Nro: %s',[ZQ_ComprobanteCODIGO.AsString])),'Atención');

//        if (totFiscal > 0) then
//        begin
//          imprimirFiscal(comprobante, 'F');
//        end;

        //ShowMessage(inttostr(comprobante)+' '+ZQ_FormasPagoDESCRIPCION.AsString+' '+ZQ_CuentasNOMBRE_CUENTA.AsString);

        PanelContenedorDerecha.Enabled:= True;
        if DBGridListadoProductos.Enabled then
          DBGridListadoProductos.SetFocus;

        LimpiarCodigo();
        modoListado();

        Result:= True;
      end;
    end
   except
    begin
      Application.MessageBox('No se pudo guardar la Orden Técnica.', 'Atención');
    end;
   end;
end;


procedure TFOP_ABM_OrdenTecnica.btGuardarOrdenClick(Sender: TObject);
begin

  ZQ_OrdenMONTO_TOTAL.AsFloat:=acumProductos;
  ZQ_OrdenMONTO_RECONOCIDO.AsFloat:=acumOS;
  ZQ_OrdenMONTO_ENTREGADO.AsFloat:=acumEntrega;
  ZQ_OrdenSALDO.AsFloat:=ZQ_OrdenMONTO_TOTAL.AsFloat-ZQ_OrdenMONTO_RECONOCIDO.AsFloat-ZQ_OrdenMONTO_ENTREGADO.AsFloat;

if validarBoleta() then
  begin
    guardarOrden();
  end
end;

procedure TFOP_ABM_OrdenTecnica.btEditarClick(Sender: TObject);
begin

 if (not(ZQ_Orden.IsEmpty)) then
  if (ZQ_OrdenID_ESTADO.AsInteger>1) then
   begin
      Application.MessageBox('Solo pueden modificarse Órdenes Técnicas pendientes de Facturación.'+
                  char(13)+'(Verifique el estado de dicha Orden)', 'Estado de Orden', MB_OK + MB_ICONINFORMATION);
      exit;
   end
   else
      editarOrdenT(ZQ_OrdenID_ORDEN.AsInteger);
end;

procedure TFOP_ABM_OrdenTecnica.editarOrdenT(id: Integer);
begin
  if dm.EKModelo.iniciar_transaccion(abmOrden, [ZQ_Orden,ZQ_OrdenDetalle,ZQ_OrdenDetalleOS,ZQ_Orden_Entrega,ZQ_CodifRP]) then
  begin
      cliente:=ZQ_OrdenID_CLIENTE.AsInteger;
      IdVendedor:=ZQ_OrdenFACTURADO_POR.AsInteger;
      recalcularTotales();
      ZQ_Orden.Edit;
      modoLecturaProd;
  end;
end;

procedure TFOP_ABM_OrdenTecnica.BtVendedorClick(Sender: TObject);
begin
    if not Assigned(vsel3) then
      vsel3:= TFBuscarPersona.Create(nil);

    vsel3.configRelacion(RELACION_EMPLEADO, false);
    vsel3.EKBusqueda.Abrir;
    vsel3.OnSeleccionar:= OnSelVendedor;
    vsel3.ShowModal;
end;

procedure TFOP_ABM_OrdenTecnica.OnSelVendedor;
var
s:String;
begin
  if not (vsel3.ZQ_Personas.IsEmpty) then
  begin
    ZQ_Personas.Locate('id_persona', vsel3.ZQ_PersonasID_PERSONA.AsInteger, []);

    if dm.EKUsrLogin.PermisoAccion('PEDIR_CLAVE_VENDEDOR') then
    begin
      PostMessage(Handle, WM_USER +123, 0, 0);
      InputQuery('Acceso Vendedor','Ingrese su Clave: ',s);

      if (vsel3.ZQ_PersonasCLAVE.AsString=s) then
       begin
        IdVendedor:= vsel3.ZQ_PersonasID_PERSONA.AsInteger;
        ZQ_OrdenFACTURADO_POR.AsInteger:= IdVendedor;
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
        ZQ_OrdenFACTURADO_POR.AsInteger:= IdVendedor;
      end
  end;
  vsel3.Close;
end;
procedure TFOP_ABM_OrdenTecnica.btnQuitarPagoClick(Sender: TObject);
begin
if dm.EKModelo.verificar_transaccion(abmOrden) then
 if not (ZQ_Orden_Entrega.IsEmpty) then
  begin
    ZQ_Orden_Entrega.Delete;
  end;
  recalcularTotales();
end;

function TFOP_ABM_OrdenTecnica.validarBoleta: Boolean;
begin

  Result:= True;

  if (acumFinal <= 0) then
  begin
    Application.MessageBox('El saldo pendiente debe ser superior a $ 0.00, por favor verifique'+char(13)+'(si desea abonar el monto total, cargue la Orden en el Cajero)', 'Validación', MB_OK + MB_ICONINFORMATION);
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

  if ZQ_OrdenDetalle.IsEmpty then
  begin
    Application.MessageBox('Debe cargar al menos un Producto, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    result:= false;
    exit;
  end;

end;

procedure TFOP_ABM_OrdenTecnica.EKDbSumaEntregasSumListChanged(
  Sender: TObject);
begin
   acumEntrega:=EKDbSumaEntregas.SumCollection[0].SumValue;
   lblTotalFPago.Caption:= 'Total Entregas: ' + FormatFloat('$ ##,###,##0.00 ', acumEntrega);
end;

procedure TFOP_ABM_OrdenTecnica.recalcularTotales;
begin

  if dm.EKModelo.verificar_transaccion(abmOrden) then
   begin
    EKDbSumaProd.RecalcAll;
    EKDbSumaOS.RecalcAll;
    EKDbSumaEntregas.RecalcAll;
   end;

  acumEntrega:=EKDbSumaEntregas.SumCollection[0].SumValue;
  acumOS:=EKDbSumaProd.SumCollection[2].SumValue;
  acumProductos:= EKDbSumaProd.SumCollection[0].SumValue;
  acumFinal:=acumProductos-acumOS-acumEntrega;
  cantProductos:=round(EKDbSumaProd.SumCollection[1].SumValue);
  lblTotAPagar.Caption:=Format('Saldo Pendiente: $ %s.',[CurrToStr(acumFinal)]);
  lblCantProductos.Caption:= 'Cantidad Productos/Servicios: ' + CurrToStr(cantProductos);

end;

procedure TFOP_ABM_OrdenTecnica.edImporteUnitarioExit(Sender: TObject);
begin
 if not (ZQ_OrdenDetalle.IsEmpty) then
  begin
    if (ZQ_OrdenDetalleCANTIDAD.AsFloat < 0) then ZQ_OrdenDetalleCANTIDAD.AsFloat:= 1;
    ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat:= (ZQ_OrdenDetalleCANTIDAD.AsFloat * ZQ_OrdenDetalleIMPORTE_UNITARIO.AsFloat);
    ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat:=ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat-(descCliente/100)*ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat;
  end
end;

procedure TFOP_ABM_OrdenTecnica.edCantExit(Sender: TObject);
begin
  if not (ZQ_OrdenDetalle.IsEmpty) then
  begin
    if (ZQ_OrdenDetalleCANTIDAD.AsFloat < 0) then ZQ_OrdenDetalleCANTIDAD.AsFloat:= 1;
    ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat:= (ZQ_OrdenDetalleCANTIDAD.AsFloat * ZQ_OrdenDetalleIMPORTE_UNITARIO.AsFloat);
    ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat:=ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat-(descCliente/100)*ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat;
  end
end;

procedure TFOP_ABM_OrdenTecnica.EKDbSumaProdSumListChanged(
  Sender: TObject);
begin
   if dm.EKModelo.verificar_transaccion(abmOrden) then
      EKDbSumaProd.RecalcAll;

  

end;

procedure TFOP_ABM_OrdenTecnica.ZQ_OrdenDetalleBeforeDelete(
  DataSet: TDataSet);
begin
  if not ZQ_OrdenDetalleOS.IsEmpty then
  begin
    ZQ_OrdenDetalleOS.First;
    while not ZQ_OrdenDetalleOS.EoF do
      begin
        ZQ_OrdenDetalleOS.Delete;
        ZQ_OrdenDetalleOS.Next; // esta línea hace que el bucle trabaje con el próximo registro
      end;
    end;

end;

procedure TFOP_ABM_OrdenTecnica.ZQ_OrdenDetalleOSAfterPost(
  DataSet: TDataSet);
begin

  if dm.EKModelo.verificar_transaccion(abmOrden) then
   begin
    EKDbSumaOS.RecalcAll;
    ZQ_OrdenDetalleOS.Last;
    ZQ_OrdenDetalle.Edit;
    ZQ_OrdenDetalleIMPORTE_RECONOCIDO.AsFloat:=EKDbSumaOS.SumCollection[0].SumValue;
    ZQ_OrdenDetalleIMPORTE_VENTA.AsFloat:=ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat-ZQ_OrdenDetalleIMPORTE_RECONOCIDO.AsFloat;
    ZQ_OrdenDetalle.Post;

   end;
end;

procedure TFOP_ABM_OrdenTecnica.ZQ_OrdenDetalleOSAfterDelete(
  DataSet: TDataSet);
begin
if dm.EKModelo.verificar_transaccion(abmOrden) then
   begin
    ZQ_OrdenDetalleOS.Last;
    ZQ_OrdenDetalle.Edit;
    EKDbSumaOS.RecalcAll;
    ZQ_OrdenDetalleIMPORTE_RECONOCIDO.AsFloat:=EKDbSumaOS.SumCollection[0].SumValue;
    ZQ_OrdenDetalleIMPORTE_VENTA.AsFloat:=ZQ_OrdenDetalleIMPORTE_TOTAL.AsFloat-ZQ_OrdenDetalleIMPORTE_RECONOCIDO.AsFloat;
    ZQ_OrdenDetalle.Post;

   end
end;

procedure TFOP_ABM_OrdenTecnica.EKDbSumaOrdenesSumListChanged(
  Sender: TObject);
var
tot1,tot2,tot3,totales:Double;
begin

  tot1:=EKDbSumaOrdenes.SumCollection[0].SumValue;
  tot2:=EKDbSumaOrdenes.SumCollection[1].SumValue;
  tot3:=EKDbSumaOrdenes.SumCollection[2].SumValue;
  totales:=EKDbSumaOrdenes.SumCollection[3].SumValue;


  lblTotalOrdenes.Caption:=Format('%s órdenes - Total Saldo Pendiente: $ %s de $ %s.',[CurrToStr(EKDbSumaOrdenes.SumCollection[4].SumValue),CurrToStr(totales),CurrToStr(tot1)]);
end;

procedure TFOP_ABM_OrdenTecnica.DBGridComprobantesDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not ZQ_Orden.IsEmpty then
    begin
      case ZQ_OrdenID_ESTADO.AsInteger of
       1:
         begin      //Pendientes
           DBGridComprobantes.Canvas.Brush.Color :=$00DEDEBC;
           DBGridComprobantes.Canvas.Font.Color := clBlack;
           if (gdFocused in State) or (gdSelected in State) then
             begin
              DBGridComprobantes.Canvas.Font.Style := DBGridComprobantes.Canvas.Font.Style + [fsBold];
             end
         end;
       2:
         begin       //Terminadas
           DBGridComprobantes.Canvas.Brush.Color :=$00C4FDE0;
           DBGridComprobantes.Canvas.Font.Color := clBlack;
           if (gdFocused in State) or (gdSelected in State) then
             begin
              DBGridComprobantes.Canvas.Font.Style := DBGridComprobantes.Canvas.Font.Style + [fsBold];
             end
         end;
       3:
         begin     //Cobradas
           DBGridComprobantes.Canvas.Brush.Color :=$00FF4646;
           DBGridComprobantes.Canvas.Font.Color := clBlack;
           if (gdFocused in State) or (gdSelected in State) then
             begin
              DBGridComprobantes.Canvas.Font.Style := DBGridComprobantes.Canvas.Font.Style + [fsBold];
             end
         end;
      end;

      DBGridComprobantes.DefaultDrawColumnCell(rect,datacol,column,state);
      
    end;

end;

procedure TFOP_ABM_OrdenTecnica.ZQ_OrdenAfterScroll(DataSet: TDataSet);
begin

   lblEstado.Caption:=Format('%s',[ZQ_OrdenO_ESTADO.AsString]);
   if not(ZQ_OrdenDetalle.State=dsInactive) then
    begin
      EKDbSuma1.RecalcAll;
    end;
   lblTotalProducto.Caption:= 'Total Producto/Servic.: ' + FormatFloat('$ ##,###,##0.00 ', EKDbSuma1.SumCollection[0].SumValue)+
                              ' / Total Reconocido OSs: ' + FormatFloat('$ ##,###,##0.00 ', EKDbSuma1.SumCollection[2].SumValue);
end;

procedure TFOP_ABM_OrdenTecnica.btDetallesOrdenClick(Sender: TObject);
begin

 if not(btDetallesOrden.Down) then
     begin

      PanelFPagoYProd.Visible:=false;
      Splitter2.Visible:=false;
     end
 else
     begin

      PanelFPagoYProd.BringToFront;
      PanelFPagoYProd.Visible:=true;
      Splitter2.Visible:=true;
     end
end;

procedure TFOP_ABM_OrdenTecnica.BtEntregadoClick(Sender: TObject);
begin
  if (ZQ_OrdenID_ESTADO.AsInteger = 3) or (ZQ_Orden.IsEmpty) then
  exit;

  if Application.MessageBox('Esta seguro que desea dar la orden por entregada?','Entregar Orden', MB_YESNO+MB_ICONQUESTION) = IDYES then
  begin
    if dm.EKModelo.iniciar_transaccion(abmOrden, [ZQ_Orden]) then
    begin
      ZQ_Orden.Edit;
      ZQ_OrdenID_ESTADO.AsInteger := 3;
      ZQ_Orden.Post;

      if not dm.EKModelo.finalizar_transaccion(abmOrden) then
        dm.EKModelo.cancelar_transaccion(abmOrden);
    end;
  end;
  
end;

end.
