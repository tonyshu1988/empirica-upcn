unit UABM_CPB_Remito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt, Buttons, ImgList, EKListadoSQL,
  ComCtrls, EKDBDateTimePicker, EKFiltrarColumna, ZStoredProcedure,
  EKDbSuma, DBClient, Menus, UBuscarProducto, UBuscarPersona, ExtDlgs, jpeg;

type
  TFABM_CPB_Remito = class(TForm)
    PanelFondo: TPanel;
    PanelVer: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnEnviarMail: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    bntVerImagen: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelInfo: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AConfirmar: TAction;
    ABaja: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    PanelEditar: TPanel;
    PanelListaCpb: TPanel;
    PanelCpbActual: TPanel;
    Splitter1: TSplitter;
    PanelCpbActual_Producto: TPanel;
    PanelCpbActual_Info: TPanel;
    PanelEditar_DatosGral: TPanel;
    PanelEditar_Producto: TPanel;
    PanelEditar_ProductoInfo: TPanel;
    DBGridEditar_Producto: TDBGrid;
    btnEliminarProducto: TButton;
    btnBuscarEmpresa: TSpeedButton;
    ImageListEntidad: TImageList;
    ZQ_VerCpb: TZQuery;
    ZQ_VerCpb_Producto: TZQuery;
    DS_VerCpb: TDataSource;
    DS_VerCpb_Producto: TDataSource;
    ZQ_VerCpbID_COMPROBANTE: TIntegerField;
    ZQ_VerCpbID_SUCURSAL: TIntegerField;
    ZQ_VerCpbID_PROVEEDOR: TIntegerField;
    ZQ_VerCpbID_CLIENTE: TIntegerField;
    ZQ_VerCpbID_TIPO_CPB: TIntegerField;
    ZQ_VerCpbID_VENDEDOR: TIntegerField;
    ZQ_VerCpbID_COMP_ESTADO: TIntegerField;
    ZQ_VerCpbFECHA: TDateTimeField;
    ZQ_VerCpbOBSERVACION: TStringField;
    ZQ_VerCpbIMPORTE_TOTAL: TFloatField;
    ZQ_VerCpbENCABEZADO: TStringField;
    ZQ_VerCpbPIE: TStringField;
    ZQ_VerCpbFECHA_ENVIADA: TDateField;
    ZQ_VerCpbSUCURSAL: TStringField;
    ZQ_VerCpbPROVEEDOR: TStringField;
    ZQ_VerCpbCUIT_PROVEEDOR: TStringField;
    ZQ_VerCpbCLIENTE: TStringField;
    ZQ_VerCpbCLIENTE_DOCUMENTO: TStringField;
    ZQ_VerCpbCLIENTE_CUIL: TStringField;
    ZQ_VerCpbESTADO: TStringField;
    DBGridListaCpb: TDBGrid;
    DBGridCpbActual_Producto: TDBGrid;
    ZQ_VerCpb_ProductoID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_VerCpb_ProductoID_COMPROBANTE: TIntegerField;
    ZQ_VerCpb_ProductoID_PRODUCTO: TIntegerField;
    ZQ_VerCpb_ProductoDETALLE: TStringField;
    ZQ_VerCpb_ProductoCANTIDAD: TFloatField;
    ZQ_VerCpb_ProductoIMPORTE_FINAL: TFloatField;
    ZQ_VerCpb_ProductoPORC_DESCUENTO: TFloatField;
    ZQ_VerCpb_ProductoBASE_IMPONIBLE: TFloatField;
    ZQ_VerCpb_ProductoIMPORTE_UNITARIO: TFloatField;
    ZQ_VerCpb_ProductoPORC_IVA: TFloatField;
    ZQ_VerCpb_ProductoCOD_CABECERA: TStringField;
    ZQ_VerCpb_ProductoPRODUCTO: TStringField;
    ZQ_VerCpb_ProductoIMAGEN: TBlobField;
    ZQ_VerCpb_ProductoMEDIDA: TStringField;
    ZQ_VerCpb_ProductoCOLOR: TStringField;
    ZQ_VerCpb_ProductoMARCA: TStringField;
    ZQ_VerCpb_ProductoARTICULO: TStringField;
    ZQ_VerCpb_ProductoTIPO_ARTICULO: TStringField;
    ZQ_VerCpb_ProductoCOD_PRODUCTO: TStringField;
    EKOrd_VerCpb: TEKOrdenarGrilla;
    EKOrd_VerCpb_Producto: TEKOrdenarGrilla;
    GroupBoxCpbActual_Info: TGroupBox;
    PanelCpbActual_ProductoDetalle: TPanel;
    DBMemoCpbActual_Info: TDBMemo;
    ZQ_VerCpbPUNTO_VENTA: TIntegerField;
    ZQ_VerCpbNUMERO_CPB: TIntegerField;
    lblTipoComprobante: TLabel;
    EKListadoEntidad: TEKListadoSQL;
    PanelEditar_DatosGralCliente: TPanel;
    PanelEditar_DatosGralProveedor: TPanel;
    ZQ_Proveedor: TZQuery;
    ZQ_Cliente: TZQuery;
    DS_Proveedor: TDataSource;
    DS_Cliente: TDataSource;
    btnBuscarPersona: TSpeedButton;
    ZQ_ProveedorID: TIntegerField;
    ZQ_ProveedorID_EMPRESA: TIntegerField;
    ZQ_ProveedorID_PROVINCIA: TIntegerField;
    ZQ_ProveedorID_TIPO_IVA: TIntegerField;
    ZQ_ProveedorID_TIPO_EMPRESA: TIntegerField;
    ZQ_ProveedorCUIT_CUIL: TStringField;
    ZQ_ProveedorNOMBRE: TStringField;
    ZQ_ProveedorDIRECCION: TStringField;
    ZQ_ProveedorLOCALIDAD: TStringField;
    ZQ_ProveedorCODIGO_POSTAL: TStringField;
    ZQ_ProveedorTELEFONO: TStringField;
    ZQ_ProveedorEMAIL: TStringField;
    ZQ_ProveedorPAGINA_WEB: TStringField;
    ZQ_ProveedorBAJA: TStringField;
    ZQ_ProveedorDESCRIPCION: TStringField;
    ZQ_ProveedorDESCRIPCION_PRIVADA: TStringField;
    ZQ_ProveedorNOMBRE_PROVINCIA: TStringField;
    ZQ_ProveedorNOMBRE_TIPO_IVA: TStringField;
    ZQ_ProveedorCOD_IVA: TStringField;
    ZQ_ClienteID: TIntegerField;
    ZQ_ClienteID_PERSONA: TIntegerField;
    ZQ_ClienteID_PROVINCIA: TIntegerField;
    ZQ_ClienteID_TIPO_DOC: TIntegerField;
    ZQ_ClienteID_TIPO_IVA: TIntegerField;
    ZQ_ClienteNOMBRE: TStringField;
    ZQ_ClienteDIRECCION: TStringField;
    ZQ_ClienteLOCALIDAD: TStringField;
    ZQ_ClienteCODIGO_POSTAL: TStringField;
    ZQ_ClienteTELEFONO: TStringField;
    ZQ_ClienteEMAIL: TStringField;
    ZQ_ClienteFECHA_NACIMIENTO: TDateField;
    ZQ_ClienteNUMERO_DOC: TStringField;
    ZQ_ClienteSEXO: TStringField;
    ZQ_ClienteBAJA: TStringField;
    ZQ_ClienteDESCRIPCION: TStringField;
    ZQ_ClienteCUIT_CUIL: TStringField;
    ZQ_ClienteDESCUENTO_ESPECIAL: TFloatField;
    ZQ_ClienteNOMBRE_PROVINCIA: TStringField;
    ZQ_ClienteNOMBRE_TIPO_IVA: TStringField;
    ZQ_ClienteCOD_IVA: TStringField;
    ZQ_ClienteNOMBRE_TIPO_DOC: TStringField;
    ZQ_ProveedorTIPO_EMPRESA: TStringField;
    DBText7: TDBText;
    ZQ_ProveedorCODIGO_CORTO: TIntegerField;
    ZQ_ClienteCODIGO_CORTO: TIntegerField;
    Label2: TLabel;
    Label3: TLabel;
    DBText8: TDBText;
    Label4: TLabel;
    DBText9: TDBText;
    Label5: TLabel;
    DBText10: TDBText;
    Label6: TLabel;
    DBText11: TDBText;
    Label7: TLabel;
    DBText12: TDBText;
    Label8: TLabel;
    DBText13: TDBText;
    Label9: TLabel;
    DBText14: TDBText;
    Label10: TLabel;
    DBText15: TDBText;
    Label11: TLabel;
    DBText16: TDBText;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBText6: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    Label12: TLabel;
    LblCPB_PuntoVenta: TLabel;
    LblCPB_Numero: TLabel;
    Label26: TLabel;
    DBTxtCPB_PuntoVenta: TDBText;
    DBTxtCPB_Numero: TDBText;
    DBMemoCPB_Observacion: TDBMemo;
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
    ZQ_ComprobantePUNTO_VENTA: TIntegerField;
    ZQ_ComprobanteNUMERO_CPB: TIntegerField;
    DS_Comprobante: TDataSource;
    ZQ_ComprobanteFECHA_ANULADO: TDateField;
    ZQ_NumeroCpb: TZQuery;
    ZQ_NumeroCpbULTIMO_NUMERO: TIntegerField;
    ZQ_VerCpbFECHA_ANULADO: TDateField;
    ZQ_CpbProducto: TZQuery;
    DS_CpbProducto: TDataSource;
    ZQ_CpbProductoID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_CpbProductoID_COMPROBANTE: TIntegerField;
    ZQ_CpbProductoID_PRODUCTO: TIntegerField;
    ZQ_CpbProductoDETALLE: TStringField;
    ZQ_CpbProductoCANTIDAD: TFloatField;
    ZQ_CpbProductoIMPORTE_FINAL: TFloatField;
    ZQ_CpbProductoIMPORTE_UNITARIO: TFloatField;
    ZP_CpbID: TZStoredProc;
    ZP_CpbIDID: TIntegerField;
    ZQ_NumeroCpbID_TIPO_CPB: TIntegerField;
    ZQ_NumeroCpbNOMBRE_TIPO_CPB: TStringField;
    ZQ_NumeroCpbSIGNO_COBRO_PAGO: TIntegerField;
    ZQ_NumeroCpbSIGNO_STOCK: TIntegerField;
    ZQ_NumeroCpbSIGNO_CTA_CTE: TIntegerField;
    ZQ_NumeroCpbBAJA: TStringField;
    Panel1: TPanel;
    DS_Producto: TDataSource;
    CD_Producto: TClientDataSet;
    CD_Producto_idProducto: TIntegerField;
    CD_Producto_producto: TStringField;
    CD_Producto_medida: TStringField;
    CD_Producto_marca: TStringField;
    CD_Producto_tipoArticulo: TStringField;
    CD_Producto_articulo: TStringField;
    CD_Producto_codigoBarra: TStringField;
    CD_Producto_codProducto: TStringField;
    CD_Producto_codCabecera: TStringField;
    Popup_Producto: TPopupMenu;
    PopItemProducto_Agregar: TMenuItem;
    PopItemProducto_Quitar: TMenuItem;
    CD_Producto_precioVenta: TFloatField;
    ZQ_CpbProducto_Nombre: TStringField;
    ZQ_CpbProducto_Medida: TStringField;
    ZQ_CpbProducto_Color: TStringField;
    ZQ_CpbProducto_CodBarra: TStringField;
    CD_Producto_color: TStringField;
    ZQ_VerCpb_ProductoCODIGO_BARRA: TStringField;
    ZQ_VerCpb_ProductoPRECIO_COSTO: TFloatField;
    ZQ_VerCpb_ProductoPRECIO_VENTA: TFloatField;
    ZQ_VerCpb_ProductoCOEF_GANANCIA: TFloatField;
    ZQ_VerCpb_ProductoCOEF_DESCUENTO: TFloatField;
    ZQ_VerCpb_ProductoIMPUESTO_IVA: TFloatField;
    ZQ_Imagen: TZQuery;
    DS_Imagen: TDataSource;
    ZQ_ImagenIMAGEN: TBlobField;
    PopupGridProducto: TPopupMenu;
    PopUpItem_ProductoOcultarDetalle: TMenuItem;
    PanelFechas: TPanel;
    PanelFechaEnviado: TPanel;
    PanelFechaEmision: TPanel;
    EKDBDateEmision: TEKDBDateTimePicker;
    lblTituloFecha_Emision: TLabel;
    EKDBDateEnviado: TEKDBDateTimePicker;
    lblTituloFecha_Enviado: TLabel;
    ZQ_BuscarMail: TZQuery;
    ZQ_BuscarMailEMAIL: TStringField;
    btnConfirmar: TdxBarLargeButton;
    EKSuma_Productos: TEKDbSuma;
    EKOrd_EditarProducto: TEKOrdenarGrilla;
    ZQ_ComprobanteID_TIPO_IVA: TIntegerField;
    ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_ComprobanteIMPORTE_VENTA: TFloatField;
    ZQ_CpbProductoID_STOCK_PRODUCTO: TIntegerField;
    ZQ_VerCpb_ProductoIMPUESTO_INTERNO: TFloatField;
    ZQ_VerCpb_ProductoCANTIDAD_RECIBIDA: TFloatField;
    ZQ_VerCpb_ProductoCANTIDAD_ALMACENADA: TFloatField;
    ZQ_VerCpb_ProductoID_STOCK_PRODUCTO: TIntegerField;
    ZQ_VerCpb_ProductoIMPORTE_VENTA: TFloatField;
    Label30: TLabel;
    editTotalProductos: TEdit;
    editTotalFinal: TEdit;
    Label29: TLabel;
    ImagenProducto: TDBImage;
    ImagenSucursal: TDBImage;
    DBTxtCodBarra: TDBText;
    DBTxtNombre: TDBText;
    DBTxtMedida: TDBText;
    DBTxtColor: TDBText;
    DBTxtMarca: TDBText;
    DS_ImagenSuc: TDataSource;
    ZQ_CpbProducto_Marca: TStringField;
    ZQ_CpbProducto_TipoArticulo: TStringField;
    ZQ_CpbProducto_Articulo: TStringField;
    lblDatos_Proveedor: TLabel;
    DBTxtDatos_Proveedor: TDBText;
    lblDatos_Cliente: TLabel;
    DBTxtDatos_Cliente: TDBText;
    Label19: TLabel;
    DBText33: TDBText;
    Label31: TLabel;
    DBText34: TDBText;
    StaticTxtConfirmado: TStaticText;
    EKBuscar: TEKBusquedaAvanzada;
    GroupBox2: TGroupBox;
    DBMemoCpbActual_Producto: TDBMemo;
    Panel2: TPanel;
    DBImageProducto: TDBImage;
    Panel3: TPanel;
    Panel4: TPanel;
    DBText21: TDBText;
    Label32: TLabel;
    Label33: TLabel;
    DBText26: TDBText;
    Label34: TLabel;
    DBText27: TDBText;
    Label35: TLabel;
    DBText28: TDBText;
    Label36: TLabel;
    DBText29: TDBText;
    Label37: TLabel;
    DBText30: TDBText;
    Label38: TLabel;
    DBText31: TDBText;
    DBImageSucursal: TDBImage;
    DBTxtFechaAnulado: TDBText;
    lblAnulado: TLabel;
    DBTxtMonto: TDBText;
    Label1: TLabel;
    ZQ_VerCpb_ProductoIMPORTE_IVA: TFloatField;
    ZQ_VerCpb_ProductoIMPUESTO_INTERNO_1: TFloatField;
    Label23: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Splitter2: TSplitter;
    Panel7: TPanel;
    DBGrid1: TDBGrid;
    Panel8: TPanel;
    PanelCpbActual_FPago: TPanel;
    Label27: TLabel;
    Label25: TLabel;
    DBGridCpbActual_FPago: TDBGrid;
    DBGridVerFacturas: TDBGrid;
    Panel9: TPanel;
    GroupBox1: TGroupBox;
    Label24: TLabel;
    DBText1: TDBText;
    Label28: TLabel;
    DBText2: TDBText;
    Label39: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label40: TLabel;
    DBText5: TDBText;
    Label41: TLabel;
    DBMemo1: TDBMemo;
    Panel10: TPanel;
    Panel11: TPanel;
    DBText32: TDBText;
    DBText35: TDBText;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label42: TLabel;
    Label43: TLabel;
    Panel12: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    DBText36: TDBText;
    DBText37: TDBText;
    DBText38: TDBText;
    DBText39: TDBText;
    DBText40: TDBText;
    DBText41: TDBText;
    DBText42: TDBText;
    DBText43: TDBText;
    DBText44: TDBText;
    Panel13: TPanel;
    DBText45: TDBText;
    Label53: TLabel;
    Label54: TLabel;
    DBText46: TDBText;
    Label55: TLabel;
    DBText47: TDBText;
    Label56: TLabel;
    DBText48: TDBText;
    Label57: TLabel;
    DBText49: TDBText;
    Label58: TLabel;
    DBText50: TDBText;
    Label59: TLabel;
    DBText51: TDBText;
    Label60: TLabel;
    DBText52: TDBText;
    Label61: TLabel;
    DBText53: TDBText;
    Label62: TLabel;
    DBText54: TDBText;
    DBMemo2: TDBMemo;
    Panel14: TPanel;
    Panel15: TPanel;
    Label63: TLabel;
    EKDBDateTimePicker1: TEKDBDateTimePicker;
    edImagen: TDBImage;
    PanelEditar_FPago: TPanel;
    Label64: TLabel;
    PanelEditar_FPagoInfo: TPanel;
    Label65: TLabel;
    btnEliminarFPago: TButton;
    Edit1: TEdit;
    DBGridEditar_Fpago: TDBGrid;
    PanelFacturas: TPanel;
    Label66: TLabel;
    PanelFacturasEditar: TPanel;
    btnAgregarFactura: TSpeedButton;
    btnQuitarFactura: TSpeedButton;
    PanelFacturasDatos: TPanel;
    PanelFacturasInfo: TPanel;
    Label67: TLabel;
    editTotalFacturas: TEdit;
    DBGridFacturas: TDBGrid;
    buscarImagen: TOpenPictureDialog;
    PopupMenuImagen: TPopupMenu;
    popUp_VerImagen1: TMenuItem;
    popUp_CargarImagen1: TMenuItem;
    ZQ_ComprobanteIMAGEN: TBlobField;
    DBImagen: TDBImage;
    ZQ_VerCpbIMAGEN: TBlobField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    //------TECLAS RAPIDAS
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure AConfirmarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ZQ_VerCpbAfterScroll(DataSet: TDataSet);
    procedure modoEdicion(flag: boolean);
    procedure cargarTipoComprobante(tipo: integer);
    procedure btnTipoCpb_CancelarClick(Sender: TObject);
    procedure btnBuscarEmpresaClick(Sender: TObject);
    procedure btnBuscarPersonaClick(Sender: TObject);
    procedure PopItemProducto_AgregarClick(Sender: TObject);
    procedure PopItemProducto_QuitarClick(Sender: TObject);
    procedure btnEliminarProductoClick(Sender: TObject);
    procedure DBGridEditar_ProductoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure agregarProducto();
    procedure cargarProductosClienDataset();
    procedure cargarImagen(id_prducto: integer);
    procedure ZQ_CpbProductoAfterScroll(DataSet: TDataSet);
    procedure calcularImporteProducto(Sender: TField);
    procedure PopUpItem_ProductoOcultarDetalleClick(Sender: TObject);
    procedure configPanelFechas(panel: TPanel; Activar: boolean);
    procedure btnEnviarMailClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure DBGridListaCpbDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridEditar_ProductoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EKSuma_ProductosSumListChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEditar_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridCpbActual_ProductoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnBajaClick(Sender: TObject);
    procedure ZQ_VerCpb_ProductoAfterScroll(DataSet: TDataSet);
    procedure edImagenDblClick(Sender: TObject);
    procedure popUp_CargarImagen1Click(Sender: TObject);
    procedure popUp_VerImagen1Click(Sender: TObject);
    procedure CargaImagen(Archivo: string);
    procedure bntVerImagenClick(Sender: TObject);
  Private
    estadoPantalla: string;
    tipoComprobante: integer;
    id_comprobante: integer;
    vselProducto: TFBuscarProducto;
    vselPersona: TFBuscarPersona;
    procedure onSelPersona;
    procedure onSelProducto;
    procedure onSelTodosProducto;
  Public
    { Public declarations }
  end;

type
  THackDBGrid = class(TDBGrid);

var
  FABM_CPB_Remito: TFABM_CPB_Remito;

const
  transaccion_ABM = 'ABM REMITO';
  EDITANDO = 'EDITANDO';
  VIENDO = 'VIENDO';

implementation

uses UPrincipal, UDM, EKModelo, UImpresion_Comprobantes, UMailEnviar,
  UVerImagen;

{$R *.dfm}

procedure TFABM_CPB_Remito.modoEdicion(flag: boolean);
begin
  if flag then //si estoy en modo edicion
  begin
    estadoPantalla:= EDITANDO;
    PanelEditar.BringToFront;
    PanelEditar.Visible:= true;
    PanelVer.Visible:= false;

    lblCantidadRegistros.Visible:= false;
    StaticTxtBaja.Visible:= false;
    StaticTxtConfirmado.Visible:= false;
    lblTipoComprobante.Visible:= true;

    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;
  end
  else
  begin
    estadoPantalla:= VIENDO;
    PanelVer.BringToFront;
    PanelVer.Visible:= true;
    PanelEditar.Visible:= false;

    lblCantidadRegistros.Visible:= true;
    StaticTxtBaja.Visible:= true;
    StaticTxtConfirmado.Visible:= true;
    lblTipoComprobante.Visible:= false;

    GrupoEditando.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= false;
  end;
end;


procedure TFABM_CPB_Remito.FormCreate(Sender: TObject);
begin
  tipoComprobante:= CPB_REMITO_VENTA;

  EKOrd_VerCpb.CargarConfigColumnas;
  EKOrd_VerCpb_Producto.CargarConfigColumnas;
  EKOrd_EditarProducto.CargarConfigColumnas;

  modoEdicion(false);
  StaticTxtBaja.Color:= FPrincipal.baja;
  FPrincipal.EKImage_ABM_Comprobantes.GetBitmap(0, btnBuscarEmpresa.Glyph); //cargo la imagen del boton buscar entidad
  FPrincipal.EKImage_ABM_Comprobantes.GetBitmap(1, btnBuscarPersona.Glyph); //cargo la imagen del boton buscar entidad

  if dm.ZQ_SucursalesVisibles.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    TEKCriterioBA(EKBuscar.CriteriosBusqueda.Items[4]).ItemIndex:= dm.ZQ_SucursalesVisibles.RecNo - 1;

  //abro todos los recibos del sistema
  EKBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);

  CD_Producto.CreateDataSet;

  DS_ImagenSuc.DataSet:= dm.ZQ_Sucursal;
  ImagenSucursal.DataField:= 'LOGO';
  ImagenProducto.Visible:= false;
  ImagenSucursal.Visible:= true;
end;


procedure TFABM_CPB_Remito.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_CPB_Remito.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_CPB_Remito.btnBuscarClick(Sender: TObject);
begin
  if EKbuscar.buscar then
  begin
    ZQ_VerCpb.Refresh;
    dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
  end
end;


procedure TFABM_CPB_Remito.configPanelFechas(panel: TPanel; Activar: boolean);
begin
  if activar then
  begin
    panel.Enabled:= true;
    panel.Width:= 127;
  end
  else
  begin
    panel.Enabled:= false;
    panel.Width:= 1;
  end;
end;


procedure TFABM_CPB_Remito.cargarTipoComprobante(tipo: integer);
begin
  lblTipoComprobante.Caption:= 'REMITO';
end;


procedure TFABM_CPB_Remito.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbProducto, ZQ_NumeroCpb]) then
  begin
    modoEdicion(true);

    ZQ_Proveedor.Close;
    ZQ_Cliente.Close;
    ZQ_Imagen.Close;

    ZQ_CpbProducto.Close;
    ZQ_CpbProducto.ParamByName('id_comprobante').AsInteger:= -1;
    ZQ_CpbProducto.Open;

    if not CD_Producto.IsEmpty then
      CD_Producto.EmptyDataSet;

    cargarTipoComprobante(tipoComprobante); //acomodo la pantalla de edicion segun el tipo de comprobante que es
    lblTipoComprobante.Caption:= lblTipoComprobante.Caption + ' - NUEVO';

    ZP_CpbID.Active:= false;
    ZP_CpbID.Active:= true;
    id_comprobante:= ZP_CpbIDID.AsInteger;
    ZP_CpbID.Active:= false;

    ZQ_NumeroCpb.Close;
    ZQ_NumeroCpb.ParamByName('id_tipo').AsInteger:= tipoComprobante;
    ZQ_NumeroCpb.Open;

    ZQ_Comprobante.Append;
    ZQ_ComprobanteID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_ComprobanteID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
    ZQ_ComprobanteID_TIPO_CPB.AsInteger:= tipoComprobante;
    ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_SIN_CONFIRMAR;
    ZQ_ComprobantePUNTO_VENTA.AsInteger:= 1;
    ZQ_ComprobanteNUMERO_CPB.AsInteger:= ZQ_NumeroCpbULTIMO_NUMERO.AsInteger + 1;
    ZQ_ComprobanteFECHA.AsDateTime:= dm.EKModelo.FechayHora;
    ZQ_ComprobanteFECHA_COBRADA.Clear;
    ZQ_ComprobanteFECHA_IMPRESA.Clear;
    ZQ_ComprobanteFECHA_VENCIMIENTO.Clear;
    ZQ_ComprobanteFECHA_ANULADO.Clear;
    ZQ_ComprobanteFECHA_ENVIADA.AsDateTime:= dm.EKModelo.FechayHora;

    EKDBDateEmision.SetFocus;
  end;
end;


procedure TFABM_CPB_Remito.btnTipoCpb_CancelarClick(Sender: TObject);
begin
  modoEdicion(false);
end;


procedure TFABM_CPB_Remito.btnModificarClick(Sender: TObject);
var
  estado: integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or
    ((estado = ESTADO_CONFIRMADO) or (estado = ESTADO_ANULADO))) then
    exit;

  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbProducto]) then
  begin
    modoEdicion(true);

    if not CD_Producto.IsEmpty then
      CD_Producto.EmptyDataSet;
    cargarProductosClienDataset();

    ZQ_Comprobante.Close;
    ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_Comprobante.Open;

    ZQ_CpbProducto.Close;
    ZQ_CpbProducto.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_CpbProducto.Open;

    if ZQ_ComprobanteID_CLIENTE.IsNull then
    begin
      PanelEditar_DatosGralProveedor.BringToFront;
      ZQ_Proveedor.Close;
      ZQ_Proveedor.ParamByName('id_empresa').AsInteger:= ZQ_ComprobanteID_PROVEEDOR.AsInteger;
      ZQ_Proveedor.Open;
      ZQ_Cliente.Close;
    end;

    if ZQ_ComprobanteID_PROVEEDOR.IsNull then
    begin
      PanelEditar_DatosGralCliente.BringToFront;
      ZQ_Cliente.Close;
      ZQ_Cliente.ParamByName('id_persona').AsInteger:= ZQ_ComprobanteID_CLIENTE.AsInteger;
      ZQ_Cliente.Open;
      ZQ_Proveedor.Close;
    end;

    cargarTipoComprobante(tipoComprobante); //acomodo la pantalla de edicion segun el tipo de comprobante que es
    lblTipoComprobante.Caption:= lblTipoComprobante.Caption + ' - MODIFICAR';

    ZQ_Comprobante.Edit;

    EKDBDateEmision.SetFocus;
  end;
end;


procedure TFABM_CPB_Remito.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if ZQ_ComprobanteID_PROVEEDOR.IsNull and ZQ_ComprobanteID_CLIENTE.IsNull then
  begin
    Application.MessageBox('Debe asociar una Persona o Empresa al Comprobante, por favor Verifique', 'Validar Datos', MB_OK + MB_ICONINFORMATION);
    EKDBDateEmision.SetFocus;
    exit;
  end;

  if ZQ_Comprobante.State = dsInsert then //si estoy dando de alta un comprobante
  begin
    //busco de nuevo cual es el ultimo numero
    ZQ_NumeroCpb.Close;
    ZQ_NumeroCpb.ParamByName('id_tipo').AsInteger:= tipoComprobante;
    ZQ_NumeroCpb.Open;

    //si el ultimo numero es distinto al que cargue al principio lo actualizo
    if ZQ_ComprobanteNUMERO_CPB.AsInteger <> (ZQ_NumeroCpbULTIMO_NUMERO.AsInteger + 1) then
    begin
      ZQ_ComprobantePUNTO_VENTA.AsInteger:= 1;
      ZQ_ComprobanteNUMERO_CPB.AsInteger:= ZQ_NumeroCpbULTIMO_NUMERO.AsInteger + 1;
    end;

    ZQ_NumeroCpb.Edit;
    ZQ_NumeroCpbULTIMO_NUMERO.AsInteger:= ZQ_ComprobanteNUMERO_CPB.AsInteger;
  end;

  EKSuma_Productos.RecalcAll; //el importe del comprobante es igual a la suma del importe de los productos
  ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:= EKSuma_Productos.SumCollection[1].SumValue;
  ZQ_ComprobanteIMPORTE_VENTA.AsFloat:= ZQ_ComprobanteIMPORTE_TOTAL.AsFloat;
  ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_SIN_CONFIRMAR;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      modoEdicion(false);
      DBGridListaCpb.SetFocus;

      ZQ_VerCpb.Refresh;
      ZQ_VerCpb.Locate('ID_COMPROBANTE', id_comprobante, []);
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención', MB_OK + MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_CPB_Remito.btnCancelarClick(Sender: TObject);
begin
  if (application.MessageBox(pchar('¿Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION - ABM Comprobantes', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
    begin
      modoEdicion(false);
      DBGridListaCpb.SetFocus;
    end;
end;


procedure TFABM_CPB_Remito.btnImprimirClick(Sender: TObject);
var
  estado: Integer;
  cliente, empresa: integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or (estado = ESTADO_ANULADO)) then
    exit;

  cliente:= -1;
  empresa:= -1;
  if not ZQ_VerCpbID_CLIENTE.IsNull then
    cliente:= ZQ_VerCpbID_CLIENTE.AsInteger;
  if not ZQ_VerCpbID_PROVEEDOR.IsNull then
    empresa:= ZQ_VerCpbID_PROVEEDOR.AsInteger;

  if not Assigned(FImpresion_Comprobantes) then
    FImpresion_Comprobantes:= TFImpresion_Comprobantes.Create(nil);
  FImpresion_Comprobantes.cargarDatos(ZQ_VerCpbID_COMPROBANTE.AsInteger, cliente, empresa, false);
  FImpresion_Comprobantes.imprimir;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------

procedure TFABM_CPB_Remito.ABuscarExecute(Sender: TObject);
begin //F1
  if estadoPantalla = VIENDO then
  begin
    if btnBuscar.Enabled then
      btnBuscar.Click
  end
  else
  begin
    if btnBuscarEmpresa.Enabled then
      btnBuscarEmpresa.Click;
  end;
end;

procedure TFABM_CPB_Remito.ANuevoExecute(Sender: TObject);
begin //F2
  if estadoPantalla = VIENDO then
  begin
    if btnNuevo.Enabled then
      btnNuevo.Click;
  end
  else
  begin
    if btnBuscarPersona.Enabled then
      btnBuscarPersona.Click;
  end;
end;

procedure TFABM_CPB_Remito.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_CPB_Remito.AConfirmarExecute(Sender: TObject);
begin
  if btnConfirmar.Enabled then
    btnConfirmar.Click;
end;

procedure TFABM_CPB_Remito.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_CPB_Remito.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_CPB_Remito.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFABM_CPB_Remito.ZQ_VerCpbAfterScroll(DataSet: TDataSet);
begin
  ZQ_VerCpb_Producto.Close;

  if ZQ_VerCpb.IsEmpty then
    exit;

  ZQ_VerCpb_Producto.ParamByName('id_comprobante').AsInteger:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  ZQ_VerCpb_Producto.Open;

  if ZQ_VerCpbID_CLIENTE.IsNull then
  begin
    DBTxtDatos_Proveedor.Visible:= true;
    lblDatos_Proveedor.Visible:= true;
    DBTxtDatos_Cliente.Visible:= false;
    lblDatos_Cliente.Visible:= false;
  end
  else
  begin
    DBTxtDatos_Proveedor.Visible:= false;
    lblDatos_Proveedor.Visible:= false;
    DBTxtDatos_Cliente.Visible:= true;
    lblDatos_Cliente.Visible:= true;
  end;

  if ZQ_VerCpbFECHA_ANULADO.IsNull then
  begin
    DBTxtFechaAnulado.Visible:= false;
    lblAnulado.Visible:= False;
  end
  else
  begin
    DBTxtFechaAnulado.Visible:= true;
    lblAnulado.Visible:= true;
  end;
end;


//PINTAR GRILLAS VISUALIZACION

procedure TFABM_CPB_Remito.btnBuscarEmpresaClick(Sender: TObject);
var
  sql: string;
begin
  sql:= Format('select emp.id_empresa as id, emp.nombre||%s|| coalesce(tipo.descripcion, %s) as busqueda ' +
    'from empresa emp ' +
    'left join tipo_empresa tipo on (emp.id_tipo_empresa = tipo.id_tipo_empresa) ' +
    'where emp.baja = %s ' +
    'order by emp.nombre', [QuotedStr(' - '), QuotedStr(''), QuotedStr('N')]);

  EKListadoEntidad.SQL.Text:= sql;

  if EKListadoEntidad.Buscar then
  begin
    if (EKListadoEntidad.Resultado <> '') then
    begin
      btnBuscarEmpresa.Down:= true;
      ZQ_Cliente.Close;
      PanelEditar_DatosGralProveedor.BringToFront;

      ZQ_Proveedor.Close;
      ZQ_Proveedor.ParamByName('id_empresa').AsInteger:= StrToInt(EKListadoEntidad.Resultado);
      ZQ_Proveedor.Open;

      if ZQ_Comprobante.State = dsBrowse then
        ZQ_Comprobante.Edit;
      ZQ_ComprobanteID_CLIENTE.Clear;
      ZQ_ComprobanteID_PROVEEDOR.AsInteger:= ZQ_ProveedorID_EMPRESA.AsInteger;
    end
    else
      if not ZQ_ComprobanteID_CLIENTE.IsNull then
        btnBuscarPersona.Down:= true;
  end
  else
    if not ZQ_ComprobanteID_CLIENTE.IsNull then
      btnBuscarPersona.Down:= true;

  EKDBDateEmision.SetFocus;
end;


procedure TFABM_CPB_Remito.btnBuscarPersonaClick(Sender: TObject);
begin
  if not Assigned(vselPersona) then
    vselPersona:= TFBuscarPersona.Create(nil);
  vselPersona.btnBuscar.Click;
  vselPersona.OnSeleccionar:= onSelPersona;
  vselPersona.ShowModal;
end;


procedure TFABM_CPB_Remito.onSelPersona;
begin
  if (not (vselPersona.ZQ_Personas.IsEmpty)) then //si se selecciona un cliente
  begin
    btnBuscarPersona.Down:= true;
    ZQ_Proveedor.Close;
    PanelEditar_DatosGralCliente.BringToFront;

    ZQ_Cliente.Close;
    ZQ_Cliente.ParamByName('id_persona').AsInteger:= vselPersona.ZQ_PersonasID_PERSONA.AsInteger;
    ZQ_Cliente.Open;

    if ZQ_Comprobante.State = dsBrowse then
      ZQ_Comprobante.Edit;
    ZQ_ComprobanteID_PROVEEDOR.Clear;
    ZQ_ComprobanteID_CLIENTE.AsInteger:= ZQ_ClienteID_PERSONA.AsInteger;
  end
  else
    if not ZQ_ComprobanteID_PROVEEDOR.IsNull then
      btnBuscarEmpresa.Down:= true;

  EKDBDateEmision.SetFocus;

  vselPersona.Close;
end;


//----------------------
//    DETALLE PRODUCTO
//----------------------

procedure TFABM_CPB_Remito.cargarProductosClienDataset();
begin
  if ZQ_VerCpb_Producto.IsEmpty then
    exit;

  ZQ_VerCpb_Producto.First;
  while not ZQ_VerCpb_Producto.Eof do
  begin
    CD_Producto.Append;
    CD_Producto_idProducto.AsInteger:= ZQ_VerCpb_ProductoID_PRODUCTO.AsInteger;
    CD_Producto_producto.AsString:= ZQ_VerCpb_ProductoPRODUCTO.AsString;
    CD_Producto_medida.AsString:= ZQ_VerCpb_ProductoMEDIDA.AsString;
    CD_Producto_color.AsString:= ZQ_VerCpb_ProductoCOLOR.AsString;
    CD_Producto_marca.AsString:= ZQ_VerCpb_ProductoMARCA.AsString;
    CD_Producto_tipoArticulo.AsString:= ZQ_VerCpb_ProductoTIPO_ARTICULO.AsString;
    CD_Producto_articulo.AsString:= ZQ_VerCpb_ProductoARTICULO.AsString;
    CD_Producto_codigoBarra.AsString:= ZQ_VerCpb_ProductoCODIGO_BARRA.AsString;
    CD_Producto_codCabecera.AsString:= ZQ_VerCpb_ProductoCOD_CABECERA.AsString;
    CD_Producto_codProducto.AsString:= ZQ_VerCpb_ProductoCOD_PRODUCTO.AsString;
    CD_Producto_precioVenta.AsFloat:= ZQ_VerCpb_ProductoPRECIO_VENTA.AsFloat;

    ZQ_VerCpb_Producto.Next;
  end;
end;

procedure TFABM_CPB_Remito.onSelProducto;
begin
  if not vselProducto.ZQ_Producto.IsEmpty then
  begin
    CD_Producto.Append;
    CD_Producto_idProducto.AsInteger:= vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    CD_Producto_producto.AsString:= vselProducto.ZQ_ProductoNOMBRE.AsString;
    CD_Producto_medida.AsString:= vselProducto.ZQ_ProductoMEDIDA.AsString;
    CD_Producto_color.AsString:= vselProducto.ZQ_ProductoCOLOR.AsString;
    CD_Producto_marca.AsString:= vselProducto.ZQ_ProductoNOMBRE_MARCA.AsString;
    CD_Producto_tipoArticulo.AsString:= vselProducto.ZQ_ProductoTIPO_ARTICULO.AsString;
    CD_Producto_articulo.AsString:= vselProducto.ZQ_ProductoNOMBRE_ARTICULO.AsString;
    CD_Producto_codigoBarra.AsString:= vselProducto.ZQ_ProductoCODIGO_BARRA.AsString;
    CD_Producto_codCabecera.AsString:= vselProducto.ZQ_ProductoCOD_CORTO.AsString;
    CD_Producto_codProducto.AsString:= vselProducto.ZQ_ProductoCOD_CORTO_1.AsString;
    CD_Producto_precioVenta.AsFloat:= vselProducto.ZQ_ProductoPRECIO_VENTA.AsFloat;

    ZQ_CpbProducto.Append;
    ZQ_CpbProductoID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_CpbProductoID_PRODUCTO.AsInteger:= vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    ZQ_CpbProductoIMPORTE_UNITARIO.AsFloat:= vselProducto.ZQ_ProductoPRECIO_VENTA.AsFloat;
    ZQ_CpbProductoCANTIDAD.AsFloat:= 0;

    cargarImagen(vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger);
  end;

  vselProducto.Close;
end;


procedure TFABM_CPB_Remito.onSelTodosProducto;
begin
  vselProducto.ZQ_Producto.First;
  while not vselProducto.ZQ_Producto.Eof do
  begin
    CD_Producto.Append;
    CD_Producto_idProducto.AsInteger:= vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    CD_Producto_producto.AsString:= vselProducto.ZQ_ProductoNOMBRE.AsString;
    CD_Producto_medida.AsString:= vselProducto.ZQ_ProductoMEDIDA.AsString;
    CD_Producto_color.AsString:= vselProducto.ZQ_ProductoCOLOR.AsString;
    CD_Producto_marca.AsString:= vselProducto.ZQ_ProductoNOMBRE_MARCA.AsString;
    CD_Producto_tipoArticulo.AsString:= vselProducto.ZQ_ProductoTIPO_ARTICULO.AsString;
    CD_Producto_articulo.AsString:= vselProducto.ZQ_ProductoNOMBRE_ARTICULO.AsString;
    CD_Producto_codigoBarra.AsString:= vselProducto.ZQ_ProductoCODIGO_BARRA.AsString;
    CD_Producto_codCabecera.AsString:= vselProducto.ZQ_ProductoCOD_CORTO.AsString;
    CD_Producto_codProducto.AsString:= vselProducto.ZQ_ProductoCOD_CORTO_1.AsString;
    CD_Producto_precioVenta.AsFloat:= vselProducto.ZQ_ProductoPRECIO_VENTA.AsFloat;

    ZQ_CpbProducto.Append;
    ZQ_CpbProductoID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_CpbProductoID_PRODUCTO.AsInteger:= vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    ZQ_CpbProductoIMPORTE_UNITARIO.AsFloat:= vselProducto.ZQ_ProductoPRECIO_VENTA.AsFloat;
    ZQ_CpbProductoCANTIDAD.AsFloat:= 0;

    cargarImagen(vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger);

    vselProducto.ZQ_Producto.Next;
  end;

  vselProducto.Close;
end;


procedure TFABM_CPB_Remito.PopItemProducto_AgregarClick(Sender: TObject);
begin
  agregarProducto;
end;


procedure TFABM_CPB_Remito.agregarProducto();
begin
  if not Assigned(vselProducto) then
    vselProducto:= TFBuscarProducto.Create(nil);

  vselProducto.OnSeleccionar:= onSelProducto;
  vselProducto.OnSeleccionarTodos:= onSelTodosProducto;
  vselProducto.btnSeleccionarTodos.Visible:= ivAlways;
  vselProducto.SeleccionarYSalir:= false;
  vselProducto.ShowModal;
end;


procedure TFABM_CPB_Remito.PopItemProducto_QuitarClick(Sender: TObject);
begin
  if not ZQ_CpbProducto.IsEmpty then
    ZQ_CpbProducto.Delete;
end;


procedure TFABM_CPB_Remito.btnEliminarProductoClick(Sender: TObject);
begin
  if not ZQ_CpbProducto.IsEmpty then
    ZQ_CpbProducto.Delete;
end;


procedure TFABM_CPB_Remito.DBGridEditar_ProductoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
  begin
    if key = 114 then
      agregarProducto;
  end;
end;


procedure TFABM_CPB_Remito.cargarImagen(id_prducto: integer);
begin
  ZQ_Imagen.Close;
  ZQ_Imagen.ParamByName('id_producto').AsInteger:= id_prducto;
  ZQ_Imagen.Open;

  if ZQ_ImagenIMAGEN.Value = '' then
  begin
    ImagenProducto.Visible:= false;
    ImagenSucursal.Visible:= true;
  end
  else
  begin
    ImagenProducto.Visible:= true;
    ImagenSucursal.Visible:= false;
  end
end;


procedure TFABM_CPB_Remito.ZQ_CpbProductoAfterScroll(DataSet: TDataSet);
begin
  ZQ_Imagen.Close;

  if ZQ_CpbProducto.IsEmpty then
    exit;

  cargarImagen(ZQ_CpbProductoID_PRODUCTO.AsInteger);
end;

//procedimiento para calcular automaticamente el importe final y la base imponible

procedure TFABM_CPB_Remito.calcularImporteProducto(Sender: TField);
var
  cantidad,
    precio_unitario,
    final: double;
begin
  cantidad:= 0;
  precio_unitario:= 0;

  if not ZQ_CpbProductoCANTIDAD.IsNull then
    cantidad:= ZQ_CpbProductoCANTIDAD.AsFloat;

  if not ZQ_CpbProductoIMPORTE_UNITARIO.IsNull then
    precio_unitario:= ZQ_CpbProductoIMPORTE_UNITARIO.AsFloat;

  final:= cantidad * precio_unitario;
  ZQ_CpbProductoIMPORTE_FINAL.AsFloat:= final;
end;


procedure TFABM_CPB_Remito.PopUpItem_ProductoOcultarDetalleClick(Sender: TObject);
begin
  if PanelCpbActual_ProductoDetalle.Visible then
    PopUpItem_ProductoOcultarDetalle.Caption:= 'Ver Detalle'
  else
    PopUpItem_ProductoOcultarDetalle.Caption:= 'Ocultar Detalle';

  PanelCpbActual_ProductoDetalle.Visible:= not PanelCpbActual_ProductoDetalle.Visible;
end;


procedure TFABM_CPB_Remito.btnEnviarMailClick(Sender: TObject);
var
  destino, archivoPDF: string;
  cliente, empresa: integer;
begin
  destino:= '';
  archivoPDF:= '';

  if ZQ_VerCpb.IsEmpty then
    exit;

  ZQ_BuscarMail.Close;
  if ZQ_VerCpbID_PROVEEDOR.IsNull then //si es un CLIENTE
  begin
    ZQ_BuscarMail.SQL.Text:= Format('select p.email from persona p where p.id_persona = %d',
      [ZQ_VerCpbID_CLIENTE.AsInteger]);
  end
  else
    if ZQ_VerCpbID_CLIENTE.IsNull then //si es un PROVEEDOR
    begin
      ZQ_BuscarMail.SQL.Text:= Format('select e.email from empresa e where e.id_empresa = %d',
        [ZQ_VerCpbID_PROVEEDOR.AsInteger]);
    end;

  ZQ_BuscarMail.Open;
  if (not ZQ_BuscarMailEMAIL.IsNull) or (ZQ_BuscarMailEMAIL.AsString <> '') then
    destino:= ZQ_BuscarMailEMAIL.AsString;

  cliente:= -1;
  empresa:= -1;
  if not ZQ_VerCpbID_CLIENTE.IsNull then
    cliente:= ZQ_VerCpbID_CLIENTE.AsInteger;
  if not ZQ_VerCpbID_PROVEEDOR.IsNull then
    empresa:= ZQ_VerCpbID_PROVEEDOR.AsInteger;

  if not Assigned(FImpresion_Comprobantes) then
    FImpresion_Comprobantes:= TFImpresion_Comprobantes.Create(nil);
  FImpresion_Comprobantes.cargarDatos(ZQ_VerCpbID_COMPROBANTE.AsInteger, cliente, empresa, false);
  archivoPDF:= FImpresion_Comprobantes.generarPDF;

  //if not Assigned(TFMailEnviar) then
  Application.CreateForm(TFMailEnviar, FMailEnviar);
  FMailEnviar.enviarConAdjunto(destino, dm.ZQ_SucursalNOMBRE.AsString, archivoPDF);
  FMailEnviar.ShowModal;
end;


procedure TFABM_CPB_Remito.btnConfirmarClick(Sender: TObject);
var
  recno, estado: Integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or
    ((estado = ESTADO_CONFIRMADO) or (estado = ESTADO_ANULADO))) then
    exit;

  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;

  if (application.MessageBox(pchar('¿Desea confirmar el Remito seleccionada?'), 'ABM Remito', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante]) then
    begin
      ZQ_Comprobante.Close;
      ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
      ZQ_Comprobante.Open;

      ZQ_Comprobante.Edit;
      ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_CONFIRMADO;

      try
        if not DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
          dm.EKModelo.cancelar_transaccion(transaccion_ABM)
      except
        begin
          Application.MessageBox('No se pudo confirmar el Remito.', 'Atención', MB_OK + MB_ICONINFORMATION);
          exit;
        end
      end;
    end;

  recNo:= ZQ_VerCpb.RecNo;
  ZQ_VerCpb.Refresh;
  ZQ_VerCpb.RecNo:= recNo;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


//Para renombrar el procedimiento Ctrl+Del que viene por defecto en las grillas

procedure TFABM_CPB_Remito.DBGridEditar_ProductoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  columna: string;
begin
  columna:= (sender as tdbgrid).SelectedField.FullName;

  if (Key = 13) or (key = 9) then { if it's an enter key }
  begin
    Key:= 0; {ignore}

    if (columna = 'CANTIDAD') then
    begin
      DBGridEditar_Producto.SelectedIndex:= 0;
      ZQ_CpbProducto.Append;
    end;
  end;

  if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
  begin
    Key:= 0; {ignore}
    btnEliminarProducto.Click;
  end
end;


procedure TFABM_CPB_Remito.EKSuma_ProductosSumListChanged(Sender: TObject);
var
  cantidad, precio: string;
begin
  cantidad:= FormatFloat('###,###,###,##0.00', EKSuma_Productos.SumCollection[0].SumValue);
  precio:= FormatFloat('$ ###,###,###,##0.00', EKSuma_Productos.SumCollection[1].SumValue);

  editTotalProductos.Text:= cantidad;
  editTotalFinal.Text:= precio;
end;


procedure TFABM_CPB_Remito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrd_VerCpb.GuardarConfigColumnas;
  EKOrd_VerCpb_Producto.GuardarConfigColumnas;
  EKOrd_EditarProducto.GuardarConfigColumnas;
end;


procedure TFABM_CPB_Remito.DBGridEditar_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridEditar_Producto, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_Remito.DBGridCpbActual_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridCpbActual_Producto, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_Remito.DBGridListaCpbDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGridListaCpb.Canvas.Font.Color:= clBlack;

  if (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_CONFIRMADO) or (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_ALMACENADO) then //si el registro esta dado de baja
  begin
    DBGridListaCpb.Canvas.Brush.Color:= StaticTxtConfirmado.Color;
    if (gdFocused in State) or (gdSelected in State) then
      DBGridListaCpb.Canvas.Font.Style:= DBGridListaCpb.Canvas.Font.Style + [fsBold];
  end;

  if (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_ANULADO) then //si el registro esta dado de baja
  begin
    DBGridListaCpb.Canvas.Brush.Color:= StaticTxtBaja.Color;
    if (gdFocused in State) or (gdSelected in State) then
      DBGridListaCpb.Canvas.Font.Style:= DBGridListaCpb.Canvas.Font.Style + [fsBold];
  end;

  DBGridListaCpb.DefaultDrawColumnCell(rect, datacol, column, state);

  FPrincipal.PintarFilasGrillas(DBGridListaCpb, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_Remito.btnBajaClick(Sender: TObject);
var
  recno, estado: Integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or (estado = ESTADO_ANULADO)) then
    exit;

  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;

  if (application.MessageBox(pchar('¿Desea anular el Remito seleccionado?'), 'ABM Remito', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante]) then
    begin
      ZQ_Comprobante.Close;
      ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
      ZQ_Comprobante.Open;

      ZQ_Comprobante.Edit;
      ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_ANULADO;
      ZQ_ComprobanteFECHA_ANULADO.AsDateTime:= dm.EKModelo.FechayHora;

      try
        if not DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
          dm.EKModelo.cancelar_transaccion(transaccion_ABM)
      except
        begin
          Application.MessageBox('No se pudo anular el Remito.', 'Atención', MB_OK + MB_ICONINFORMATION);
          exit;
        end
      end;
    end;

  recNo:= ZQ_VerCpb.RecNo;
  ZQ_VerCpb.Refresh;
  ZQ_VerCpb.RecNo:= recNo;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_CPB_Remito.ZQ_VerCpb_ProductoAfterScroll(
  DataSet: TDataSet);
begin
  if ZQ_VerCpb_ProductoIMAGEN.AsString = '' then
  begin
    DBImageProducto.Visible:= false;
    DBImageSucursal.Visible:= true;
  end
  else
  begin
    DBImageProducto.Visible:= true;
    DBImageSucursal.Visible:= false;
  end
end;

procedure TFABM_CPB_Remito.edImagenDblClick(Sender: TObject);
var
  jpg: TJpegImage;
begin
  try
    if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
      //si esta activa la transaccion
      if buscarImagen.Execute then //abro para buscar la imagen
      begin
        CargaImagen(buscarImagen.FileName);
      end
  except
    showmessage('Formato de Imagen no soportado (debe bajar la resolución).');
  end;

end;

procedure TFABM_CPB_Remito.popUp_CargarImagen1Click(Sender: TObject);
var
  jpg: TJpegImage;
begin
  try
    if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
      //si esta activa la transaccion
      if buscarImagen.Execute then //abro para buscar la imagen
      begin
        CargaImagen(buscarImagen.FileName);
      end
  except
    showmessage('Formato de Imagen no soportado (debe bajar la resolución).');
  end;

end;

procedure TFABM_CPB_Remito.popUp_VerImagen1Click(Sender: TObject);
begin
  Application.CreateForm(TFVerImagen, FVerImagen);
  FVerImagen.cargarImagenComprobante(ZQ_ComprobanteID_COMPROBANTE.AsInteger);
  FVerImagen.ShowModal;
  FVerImagen.Release;
end;


procedure TFABM_CPB_Remito.CargaImagen(Archivo: string);
var
  imagenArchivo: TGraphic; //contiene la imagen, es del tipo TGraphic poque puede ser jpg o bmp
  imagenJPG: TJPEGImage;
  Rectangulo: TRect;
  EscalaX,
    EscalaY,
    Escala: Single;
begin
  //creo el tipo correcto dependiendo de la extencion del archivo
  if pos('.jpg', archivo) > 0 then
    imagenArchivo:= TJPEGImage.Create
  else
    if pos('.jpeg', archivo) > 0 then
      imagenArchivo:= TJPEGImage.Create
    else
      if pos('.bmp', archivo) > 0 then
        imagenArchivo:= TBitmap.Create;

  try
    //cargo la imagen
    imagenArchivo.LoadFromFile(Archivo);

    //comprimo la imagen
    imagenJPG:= TJPEGImage.Create;
    imagenJPG.CompressionQuality:= 50;
    imagenJPG.Compress;

    if pos('.bmp', archivo) > 0 then
    begin
      imagenJPG.Assign(TBitmap(imagenArchivo))
    end
    else
    begin
      imagenJPG.Assign(imagenArchivo);
    end;

    //Por defecto, escala 1:1
    EscalaX:= 1.0;
    EscalaY:= 1.0;

    //    //Hallamos la escala de reducción Horizontal
    //    if edImagen.Width < imagenJPG.Width then
    //      EscalaX := edImagen.Width / imagenJPG.Width;
    //
    //    //La escala vertical
    //    if edImagen.Height < imagenJPG.Height then
    //      EscalaY := edImagen.Height / imagenJPG.Height;

        //Escogemos la menor de las 2
    if EscalaY < EscalaX then Escala:= EscalaY else Escala:= EscalaX;

    //Y la usamos para reducir el rectangulo destino
    with Rectangulo do begin
      Right:= Trunc(imagenJPG.Width * Escala);
      Bottom:= Trunc(imagenJPG.Height * Escala);
      Left:= 0;
      Top:= 0;
    end;

    //Dibujamos el bitmap con el nuevo tamaño en el TImage destino
    with edImagen.Picture.Bitmap do begin
      Width:= Rectangulo.Right;
      Height:= Rectangulo.Bottom;
      Canvas.StretchDraw(Rectangulo, imagenJPG);
    end;

  finally
    imagenArchivo.Free;
    imagenJPG.Free;
  end;
end;


procedure TFABM_CPB_Remito.bntVerImagenClick(Sender: TObject);
begin
  if ZQ_VerCpb.IsEmpty or ZQ_VerCpbIMAGEN.IsNull then
    exit;

  Application.CreateForm(TFVerImagen, FVerImagen);
  FVerImagen.cargarImagenComprobante(ZQ_VerCpbID_COMPROBANTE.AsInteger);
  FVerImagen.ShowModal;
  FVerImagen.Release;
end;

end.
