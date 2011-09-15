unit UABM_CPB_FacturaCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt, Buttons, ImgList, EKListadoSQL,
  ComCtrls, EKDBDateTimePicker, EKFiltrarColumna, ZStoredProcedure,
  EKDbSuma, DBClient, Menus, UBuscarProducto, UBuscarPersona, ZSqlUpdate;

type
  TFABM_CPB_FacturaCompra = class(TForm)
    PanelFondo: TPanel;
    PanelVer: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnEnviarMail: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimirListado: TdxBarLargeButton;
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
    AReactivar: TAction;
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
    ZQ_VerCpbID_TIPO_CPB: TIntegerField;
    ZQ_VerCpbID_VENDEDOR: TIntegerField;
    ZQ_VerCpbID_COMP_ESTADO: TIntegerField;
    ZQ_VerCpbFECHA: TDateTimeField;
    ZQ_VerCpbOBSERVACION: TStringField;
    ZQ_VerCpbIMPORTE_TOTAL: TFloatField;
    ZQ_VerCpbENCABEZADO: TStringField;
    ZQ_VerCpbPIE: TStringField;
    ZQ_VerCpbFECHA_COBRADA: TDateField;
    ZQ_VerCpbSUCURSAL: TStringField;
    ZQ_VerCpbPROVEEDOR: TStringField;
    ZQ_VerCpbCUIT_PROVEEDOR: TStringField;
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
    GroupBox2: TGroupBox;
    DBMemoCpbActual_Producto: TDBMemo;
    lblVerFecha_Cpb_Dev: TLabel;
    Label24: TLabel;
    DBTxtMonto: TDBText;
    DBText2: TDBText;
    DBMemoCpbActual_Info: TDBMemo;
    DBText1: TDBText;
    Label1: TLabel;
    ZQ_VerCpbPUNTO_VENTA: TIntegerField;
    ZQ_VerCpbNUMERO_CPB: TIntegerField;
    lblTipoComprobante: TLabel;
    EKListadoEntidad: TEKListadoSQL;
    PanelEditar_DatosGralProveedor: TPanel;
    ZQ_Proveedor: TZQuery;
    DS_Proveedor: TDataSource;
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
    ZQ_ProveedorTIPO_EMPRESA: TStringField;
    ZQ_ProveedorCODIGO_CORTO: TIntegerField;
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
    DBMemoCPB_Observacion: TDBMemo;
    ZQ_Comprobante: TZQuery;
    ZQ_ComprobanteID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteID_SUCURSAL: TIntegerField;
    ZQ_ComprobanteID_PROVEEDOR: TIntegerField;
    ZQ_ComprobanteID_CLIENTE: TIntegerField;
    ZQ_ComprobanteID_TIPO_CPB: TIntegerField;
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
    Panel1: TPanel;
    ImagenProducto: TDBImage;
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
    ZQ_CpbProducto_Nombre: TStringField;
    ZQ_CpbProducto_Medida: TStringField;
    ZQ_CpbProducto_Color: TStringField;
    ZQ_CpbProducto_CodBarra: TStringField;
    CD_Producto_color: TStringField;
    Panel2: TPanel;
    DBImageProducto: TDBImage;
    ZQ_VerCpb_ProductoCODIGO_BARRA: TStringField;
    ZQ_VerCpb_ProductoPRECIO_COSTO: TFloatField;
    ZQ_VerCpb_ProductoPRECIO_VENTA: TFloatField;
    ZQ_VerCpb_ProductoCOEF_GANANCIA: TFloatField;
    ZQ_VerCpb_ProductoCOEF_DESCUENTO: TFloatField;
    ZQ_VerCpb_ProductoIMPUESTO_IVA: TFloatField;
    ZQ_Imagen: TZQuery;
    DS_Imagen: TDataSource;
    ZQ_ImagenIMAGEN: TBlobField;
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
    PopupGridProducto: TPopupMenu;
    PopUpItem_ProductoOcultarDetalle: TMenuItem;
    PanelFechas: TPanel;
    PanelFechaFactura: TPanel;
    PanelFechaEmision: TPanel;
    EKDBDateCarga: TEKDBDateTimePicker;
    EKDBDateFactura: TEKDBDateTimePicker;
    lblTituloFecha_Cobrado: TLabel;
    ZQ_BuscarMail: TZQuery;
    ZQ_BuscarMailEMAIL: TStringField;
    btnConfirmar: TdxBarLargeButton;
    ZQ_CpbProductoCANTIDAD_RECIBIDA: TFloatField;
    ZQ_CpbProductoCANTIDAD_ALMACENADA: TFloatField;
    EKSuma_Productos: TEKDbSuma;
    EKOrd_EditarProducto: TEKOrdenarGrilla;
    ZQ_ComprobanteID_TIPO_IVA: TIntegerField;
    ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_ComprobanteIMPORTE_VENTA: TFloatField;
    ZQ_CpbProductoID_STOCK_PRODUCTO: TIntegerField;
    ZQ_CpbProductoIMPORTE_VENTA: TFloatField;
    ZQ_VerCpb_ProductoIMPUESTO_INTERNO: TFloatField;
    ZQ_VerCpb_ProductoCANTIDAD_RECIBIDA: TFloatField;
    ZQ_VerCpb_ProductoCANTIDAD_ALMACENADA: TFloatField;
    ZQ_VerCpb_ProductoID_STOCK_PRODUCTO: TIntegerField;
    ZQ_VerCpb_ProductoIMPORTE_VENTA: TFloatField;
    DBEditPuntoVenta: TDBEdit;
    DBEditNumeroCpb: TDBEdit;
    Label12: TLabel;
    lblTituloFecha_Carga: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    ZQ_CpbProductoBASE_IMPONIBLE: TFloatField;
    ZQ_CpbProductoPORC_IVA: TFloatField;
    ZQ_CpbProductoIMPORTE_IVA: TFloatField;
    ImagenSucursal: TDBImage;
    DS_ImagenSuc: TDataSource;
    editTotalProductos: TEdit;
    editTotalImponible: TEdit;
    editTotalIva: TEdit;
    editTotalFinal: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBText3: TDBText;
    Label27: TLabel;
    ZQ_VerCpbSALDO: TFloatField;
    Label28: TLabel;
    DBText4: TDBText;
    Label31: TLabel;
    DBText5: TDBText;
    DBText32: TDBText;
    DBTxtCodBarra: TDBText;
    DBTxtNombre: TDBText;
    DBTxtMedida: TDBText;
    DBTxtColor: TDBText;
    DBTxtMarca: TDBText;
    ZQ_CpbProducto_Marca: TStringField;
    ZQ_CpbProducto_TipoArticulo: TStringField;
    ZQ_CpbProducto_Articulo: TStringField;
    StaticTxtConfirmado: TStaticText;
    EKBuscar: TEKBusquedaAvanzada;
    RepListado: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepListado_Subtitulo: TQRLabel;
    RepListado_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText1: TQRDBText;
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
    QRLabel30: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    EKVistaPrevia: TEKVistaPreviaQR;
    DS_ActualizarPrecio: TDataSource;
    ZQ_ActualizarPrecio: TZQuery;
    ZQ_ActualizarPrecioCOD_CABECERA: TStringField;
    ZQ_ActualizarPrecioPRODUCTO: TStringField;
    ZQ_ActualizarPrecioIMAGEN: TBlobField;
    ZQ_ActualizarPrecioMEDIDA: TStringField;
    ZQ_ActualizarPrecioCOLOR: TStringField;
    ZQ_ActualizarPrecioMARCA: TStringField;
    ZQ_ActualizarPrecioARTICULO: TStringField;
    ZQ_ActualizarPrecioTIPO_ARTICULO: TStringField;
    ZQ_ActualizarPrecioCOD_PRODUCTO: TStringField;
    ZQ_ActualizarPrecioCODIGO_BARRA: TStringField;
    ZQ_ActualizarPrecioPRECIO_COSTO: TFloatField;
    ZQ_ActualizarPrecioPRECIO_VENTA: TFloatField;
    ZQ_ActualizarPrecioCOEF_GANANCIA: TFloatField;
    ZQ_ActualizarPrecioCOEF_DESCUENTO: TFloatField;
    ZQ_ActualizarPrecioIMPUESTO_INTERNO: TFloatField;
    ZQ_ActualizarPrecioIMPUESTO_IVA: TFloatField;
    ZQ_ActualizarPrecioPRECIO_COSTO_CIMPUESTOS: TFloatField;
    ZQ_ActualizarPrecioIMPUESTO_ADICIONAL1: TFloatField;
    ZQ_ActualizarPrecioIMPUESTO_ADICIONAL2: TFloatField;
    ZQ_ActualizarLista: TZQuery;
    ZQ_ActualizarListaID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_ActualizarListaID_COMPROBANTE: TIntegerField;
    ZQ_ActualizarListaID_PRODUCTO: TIntegerField;
    ZQ_ActualizarListaDETALLE: TStringField;
    ZQ_ActualizarListaCANTIDAD: TFloatField;
    ZQ_ActualizarListaIMPORTE_FINAL: TFloatField;
    ZQ_ActualizarListaPORC_DESCUENTO: TFloatField;
    ZQ_ActualizarListaBASE_IMPONIBLE: TFloatField;
    ZQ_ActualizarListaIMPORTE_UNITARIO: TFloatField;
    ZQ_ActualizarListaIMPUESTO_INTERNO: TFloatField;
    ZQ_ActualizarListaPORC_IVA: TFloatField;
    ZQ_ActualizarListaCANTIDAD_RECIBIDA: TFloatField;
    ZQ_ActualizarListaCANTIDAD_ALMACENADA: TFloatField;
    ZQ_ActualizarListaID_STOCK_PRODUCTO: TIntegerField;
    ZQ_ActualizarListaIMPORTE_VENTA: TFloatField;
    ZQ_ActualizarListaIMPORTE_IVA: TFloatField;
    ZQ_ActualizarListaCOD_CABECERA: TStringField;
    ZQ_ActualizarListaPRODUCTO: TStringField;
    ZQ_ActualizarListaIMAGEN: TBlobField;
    ZQ_ActualizarListaMEDIDA: TStringField;
    ZQ_ActualizarListaCOLOR: TStringField;
    ZQ_ActualizarListaMARCA: TStringField;
    ZQ_ActualizarListaARTICULO: TStringField;
    ZQ_ActualizarListaTIPO_ARTICULO: TStringField;
    ZQ_ActualizarListaCOD_PRODUCTO: TStringField;
    ZQ_ActualizarListaCODIGO_BARRA: TStringField;
    ZQ_ActualizarListaPRECIO_COSTO: TFloatField;
    ZQ_ActualizarListaPRECIO_VENTA: TFloatField;
    ZQ_ActualizarListaCOEF_GANANCIA: TFloatField;
    ZQ_ActualizarListaCOEF_DESCUENTO: TFloatField;
    ZQ_ActualizarListaIMPUESTO_INTERNO_1: TFloatField;
    ZQ_ActualizarListaIMPUESTO_IVA: TFloatField;
    DS_ActualizarLista: TDataSource;
    ZU_ActualizarPrecio: TZUpdateSQL;
    EKOrd_Actualizar: TEKOrdenarGrilla;
    panelActualizarPrecio: TPanel;
    DBGridActualizarPrecio: TDBGrid;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    Panel7: TPanel;
    DBImage2: TDBImage;
    Panel9: TPanel;
    DBText7: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText8: TDBText;
    Label4: TLabel;
    DBText9: TDBText;
    Label5: TLabel;
    DBText10: TDBText;
    Label39: TLabel;
    DBText35: TDBText;
    Label40: TLabel;
    DBText36: TDBText;
    Label41: TLabel;
    DBText37: TDBText;
    Label42: TLabel;
    DBTxtPrecioCosto: TDBText;
    Label43: TLabel;
    DBText39: TDBText;
    Label44: TLabel;
    DBText40: TDBText;
    Label45: TLabel;
    DBText41: TDBText;
    Panel5: TPanel;
    btnAplicarActualizar: TBitBtn;
    btnCancelarActualizar: TBitBtn;
    btnActualizarPrecios: TdxBarLargeButton;
    DBImageSucursal: TDBImage;
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
    procedure AReactivarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirListadoClick(Sender: TObject);
    procedure ZQ_VerCpbAfterScroll(DataSet: TDataSet);
    procedure modoEdicion(flag: boolean);
    procedure cargarTipoComprobante(tipo: integer);
    procedure btnBuscarEmpresaClick(Sender: TObject);
    procedure PopItemProducto_AgregarClick(Sender: TObject);
    procedure PopItemProducto_QuitarClick(Sender: TObject);
    procedure btnEliminarProductoClick(Sender: TObject);
    procedure DBGridEditar_ProductoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure agregarProducto();
    procedure cargarProductosClienDataset();
    procedure cargarImagen(id_prducto: integer);
    procedure ZQ_CpbProductoAfterScroll(DataSet: TDataSet);
    procedure PopUpItem_ProductoOcultarDetalleClick(Sender: TObject); //configuro la pantalla de visualizacion segun el tipo de comprobante
    procedure configPanelFechas(panel: TPanel; Activar: boolean);
    procedure btnEnviarMailClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure DBGridListaCpbDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridEditar_ProductoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EKSuma_ProductosSumListChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEditar_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ZQ_CpbProductoCANTIDADChange(Sender: TField);
    procedure DBGridCpbActual_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure calcularImporteProducto(Sender: TField);
    procedure btnBajaClick(Sender: TObject);
    procedure btnActualizarPreciosClick(Sender: TObject);
    procedure btnCancelarActualizarClick(Sender: TObject);
    procedure ZQ_ActualizarListaAfterScroll(DataSet: TDataSet);
    procedure DBGridActualizarPrecioDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnAplicarActualizarClick(Sender: TObject);
    procedure ZQ_VerCpb_ProductoAfterScroll(DataSet: TDataSet);
  private
    confirmarComprobante: boolean;
    estadoPantalla: string;
    tipoComprobante: integer;
    id_comprobante: integer;
    vselProducto: TFBuscarProducto;
    procedure onSelProducto;
    procedure onSelTodosProducto;
    function getColumnIndex(Grid: TDBGrid; Nombre: string): Integer;
  public
    { Public declarations }
  end;

type
  THackDBGrid = class(TDBGrid);

var
  FABM_CPB_FacturaCompra: TFABM_CPB_FacturaCompra;

const
  transaccion_ABM = 'ABM FACTURA COMPRA';
  EDITANDO = 'EDITANDO';
  VIENDO   = 'VIENDO';

implementation

uses UPrincipal, UDM, EKModelo, UImpresion_Comprobantes, UMailEnviar;

{$R *.dfm}

//Devuelve el indice en la grilla de la columna que se pasa como parametro
function TFABM_CPB_FacturaCompra.getColumnIndex(Grid: TDBGrid; Nombre: string): Integer;
var
  i: Integer;
begin
  Result:= -1;
  for i:= 0 to Grid.Columns.Count -1 do
    if Nombre = Grid.Columns[i].FieldName then
    begin
      Result:= i;
      Exit;
    end;
end;


procedure TFABM_CPB_FacturaCompra.modoEdicion(flag:boolean);
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

    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
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

    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;
end;


procedure TFABM_CPB_FacturaCompra.FormCreate(Sender: TObject);
begin
  tipoComprobante:= CPB_FACTURA_COMPRA;

  EKOrd_VerCpb.CargarConfigColumnas;
  EKOrd_VerCpb_Producto.CargarConfigColumnas;
  EKOrd_EditarProducto.CargarConfigColumnas;

  modoEdicion(false);
  StaticTxtBaja.Color:= FPrincipal.baja;
  ImageListEntidad.GetBitmap(0, btnBuscarEmpresa.Glyph); //cargo la imagen del boton buscar entidad

  FPrincipal.Iconos_Menu_32.GetBitmap(10, btnAplicarActualizar.Glyph);
  FPrincipal.Iconos_Menu_32.GetBitmap(0, btnCancelarActualizar.Glyph);

  //abro todos los recibos del sistema
  EKBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);

  CD_Producto.CreateDataSet;

  DS_ImagenSuc.DataSet:= dm.ZQ_Sucursal;
  ImagenSucursal.DataField:= 'LOGO';
  ImagenProducto.Visible:= false;
  ImagenSucursal.Visible:= true;
end;


procedure TFABM_CPB_FacturaCompra.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_CPB_FacturaCompra.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_CPB_FacturaCompra.btnBuscarClick(Sender: TObject);
begin
  if EKbuscar.buscar then
  begin
    ZQ_VerCpb.Refresh;
    dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
  end
end;


procedure TFABM_CPB_FacturaCompra.configPanelFechas(panel: TPanel; Activar: boolean);
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


procedure TFABM_CPB_FacturaCompra.cargarTipoComprobante(tipo: integer);
begin
  lblTipoComprobante.Caption:= 'FACTURA COMPRA';
end;


procedure TFABM_CPB_FacturaCompra.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbProducto]) then
  begin
    modoEdicion(true);
    confirmarComprobante:= false;

    ZQ_Proveedor.Close;
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

    ZQ_Comprobante.Append;
    ZQ_ComprobanteID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_ComprobanteID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
    ZQ_ComprobanteID_TIPO_CPB.AsInteger:= tipoComprobante;
    ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_SIN_CONFIRMAR;
    ZQ_ComprobantePUNTO_VENTA.Clear;
    ZQ_ComprobanteNUMERO_CPB.Clear;
    ZQ_ComprobanteFECHA.AsDateTime:= dm.EKModelo.FechayHora;
    ZQ_ComprobanteFECHA_COBRADA.AsDateTime:= dm.EKModelo.FechayHora;
    ZQ_ComprobanteFECHA_ENVIADA.Clear;
    ZQ_ComprobanteFECHA_IMPRESA.Clear;
    ZQ_ComprobanteFECHA_VENCIMIENTO.Clear;
    ZQ_ComprobanteFECHA_ANULADO.Clear;

    EKDBDateCarga.SetFocus;
  end;
end;


procedure TFABM_CPB_FacturaCompra.btnModificarClick(Sender: TObject);
var
  estado: integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or ((estado = ESTADO_CONFIRMADO) or (estado = ESTADO_ALMACENADO))) then
    exit;

  confirmarComprobante:= false;
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

    PanelEditar_DatosGralProveedor.BringToFront;
    ZQ_Proveedor.Close;
    ZQ_Proveedor.ParamByName('id_empresa').AsInteger:= ZQ_ComprobanteID_PROVEEDOR.AsInteger;
    ZQ_Proveedor.Open;

    cargarTipoComprobante(tipoComprobante); //acomodo la pantalla de edicion segun el tipo de comprobante que es
    lblTipoComprobante.Caption:= lblTipoComprobante.Caption + ' - MODIFICAR';

    ZQ_Comprobante.Edit;

    EKDBDateCarga.SetFocus;
  end;
end;


procedure TFABM_CPB_FacturaCompra.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if ZQ_ComprobanteID_PROVEEDOR.IsNull and ZQ_ComprobanteID_CLIENTE.IsNull then
  begin
    Application.MessageBox('Debe asociar una Persona o Empresa al Comprobante, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    EKDBDateCarga.SetFocus;
    exit;
  end;

  EKSuma_Productos.RecalcAll; //el importe del comprobante es igual a la suma del importe de los productos
  ZQ_ComprobanteBASE_IMPONIBLE.AsFloat:= EKSuma_Productos.SumCollection[1].SumValue;
  ZQ_ComprobanteIMPORTE_IVA.AsFloat:= EKSuma_Productos.SumCollection[2].SumValue;
  ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:= EKSuma_Productos.SumCollection[3].SumValue;
  ZQ_ComprobanteIMPORTE_VENTA.AsFloat:= EKSuma_Productos.SumCollection[3].SumValue;
  ZQ_ComprobanteSALDO.AsFloat:= EKSuma_Productos.SumCollection[3].SumValue;

  if confirmarComprobante then
    ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_CONFIRMADO
  else
    ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_SIN_CONFIRMAR;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      modoEdicion(false);
      DBGridListaCpb.SetFocus;

      ZQ_VerCpb.Refresh;
      ZQ_VerCpb.Locate('ID_COMPROBANTE',id_comprobante,[]);
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_CPB_FacturaCompra.btnCancelarClick(Sender: TObject);
begin
  if (application.MessageBox(pchar('¿Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
    begin
      modoEdicion(false);
      DBGridListaCpb.SetFocus;
    end;
end;


procedure TFABM_CPB_FacturaCompra.btnImprimirListadoClick(Sender: TObject);
begin
  if ZQ_VerCpb.IsEmpty then
    exit;

  DM.VariablesReportes(RepListado);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
  EKVistaPrevia.VistaPrevia;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_CPB_FacturaCompra.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_CPB_FacturaCompra.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_CPB_FacturaCompra.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_CPB_FacturaCompra.AConfirmarExecute(Sender: TObject);
begin
  if btnConfirmar.Enabled then
    btnConfirmar.Click;
end;

procedure TFABM_CPB_FacturaCompra.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_CPB_FacturaCompra.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_CPB_FacturaCompra.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_CPB_FacturaCompra.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFABM_CPB_FacturaCompra.ZQ_VerCpbAfterScroll(DataSet: TDataSet);
begin
  ZQ_VerCpb_Producto.Close;

  if ZQ_VerCpb.IsEmpty then
    exit;

  ZQ_VerCpb_Producto.ParamByName('id_comprobante').AsInteger:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  ZQ_VerCpb_Producto.Open;
end;


//PINTAR GRILLAS VISUALIZACION
procedure TFABM_CPB_FacturaCompra.btnBuscarEmpresaClick(Sender: TObject);
var
  sql: string;
begin
  if confirmarComprobante then
    exit;

  sql:= Format('select emp.id_empresa as id, emp.nombre||%s|| coalesce(tipo.descripcion, %s) as busqueda '+
               'from empresa emp '+
               'left join tipo_empresa tipo on (emp.id_tipo_empresa = tipo.id_tipo_empresa) '+
               'where emp.baja = %s '+
               'order by emp.nombre', [QuotedStr(' - '), QuotedStr(''), QuotedStr('N')]);

  EKListadoEntidad.SQL.Text:= sql;

  if EKListadoEntidad.Buscar then
  begin
    if (EKListadoEntidad.Resultado <> '') then
    begin
      btnBuscarEmpresa.Down:= true;
      PanelEditar_DatosGralProveedor.BringToFront;

      ZQ_Proveedor.Close;
      ZQ_Proveedor.ParamByName('id_empresa').AsInteger:= StrToInt(EKListadoEntidad.Resultado);
      ZQ_Proveedor.Open;

      if ZQ_Comprobante.State = dsBrowse then
        ZQ_Comprobante.Edit;
      ZQ_ComprobanteID_CLIENTE.Clear;
      ZQ_ComprobanteID_PROVEEDOR.AsInteger:= ZQ_ProveedorID_EMPRESA.AsInteger;
    end
  end;

  EKDBDateCarga.SetFocus;
end;


//----------------------
//    DETALLE PRODUCTO
//----------------------
procedure TFABM_CPB_FacturaCompra.cargarProductosClienDataset();
begin
  if ZQ_VerCpb_Producto.IsEmpty then
    exit;

  ZQ_VerCpb_Producto.First;
  while not ZQ_VerCpb_Producto.Eof do
  begin
    CD_Producto.Append;
    CD_Producto_idProducto.AsInteger := ZQ_VerCpb_ProductoID_PRODUCTO.AsInteger;
    CD_Producto_producto.AsString := ZQ_VerCpb_ProductoPRODUCTO.AsString;
    CD_Producto_medida.AsString := ZQ_VerCpb_ProductoMEDIDA.AsString;
    CD_Producto_color.AsString := ZQ_VerCpb_ProductoCOLOR.AsString;
    CD_Producto_marca.AsString := ZQ_VerCpb_ProductoMARCA.AsString;
    CD_Producto_tipoArticulo.AsString := ZQ_VerCpb_ProductoTIPO_ARTICULO.AsString;
    CD_Producto_articulo.AsString := ZQ_VerCpb_ProductoARTICULO.AsString;
    CD_Producto_codigoBarra.AsString := ZQ_VerCpb_ProductoCODIGO_BARRA.AsString;
    CD_Producto_codCabecera.AsString := ZQ_VerCpb_ProductoCOD_CABECERA.AsString;
    CD_Producto_codProducto.AsString := ZQ_VerCpb_ProductoCOD_PRODUCTO.AsString;

    ZQ_VerCpb_Producto.Next;
  end;
end;

procedure TFABM_CPB_FacturaCompra.onSelProducto;
begin
  if not vselProducto.ZQ_Producto.IsEmpty then
  begin
    CD_Producto.Append;
    CD_Producto_idProducto.AsInteger := vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    CD_Producto_producto.AsString := vselProducto.ZQ_ProductoNOMBRE.AsString;
    CD_Producto_medida.AsString := vselProducto.ZQ_ProductoMEDIDA.AsString;
    CD_Producto_color.AsString := vselProducto.ZQ_ProductoCOLOR.AsString;
    CD_Producto_marca.AsString := vselProducto.ZQ_ProductoNOMBRE_MARCA.AsString;
    CD_Producto_tipoArticulo.AsString := vselProducto.ZQ_ProductoTIPO_ARTICULO.AsString;
    CD_Producto_articulo.AsString := vselProducto.ZQ_ProductoNOMBRE_ARTICULO.AsString;
    CD_Producto_codigoBarra.AsString := vselProducto.ZQ_ProductoCODIGO_BARRA.AsString;
    CD_Producto_codCabecera.AsString := vselProducto.ZQ_ProductoCOD_CORTO.AsString;
    CD_Producto_codProducto.AsString := vselProducto.ZQ_ProductoCOD_CORTO_1.AsString;

    ZQ_CpbProducto.Append;
    ZQ_CpbProductoID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_CpbProductoID_PRODUCTO.AsInteger:= vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    ZQ_CpbProductoCANTIDAD.AsFloat:= 0;
    ZQ_CpbProductoCANTIDAD_ALMACENADA.AsFloat:= 0;
    ZQ_CpbProductoPORC_IVA.AsFloat:= 0;    

    cargarImagen(vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger);
  end;

  vselProducto.Close;
end;


procedure TFABM_CPB_FacturaCompra.onSelTodosProducto;
begin
  vselProducto.ZQ_Producto.First;
  while not vselProducto.ZQ_Producto.Eof do
  begin
    CD_Producto.Append;
    CD_Producto_idProducto.AsInteger := vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    CD_Producto_producto.AsString := vselProducto.ZQ_ProductoNOMBRE.AsString;
    CD_Producto_medida.AsString := vselProducto.ZQ_ProductoMEDIDA.AsString;
    CD_Producto_color.AsString := vselProducto.ZQ_ProductoCOLOR.AsString;
    CD_Producto_marca.AsString := vselProducto.ZQ_ProductoNOMBRE_MARCA.AsString;
    CD_Producto_tipoArticulo.AsString := vselProducto.ZQ_ProductoTIPO_ARTICULO.AsString;
    CD_Producto_articulo.AsString := vselProducto.ZQ_ProductoNOMBRE_ARTICULO.AsString;
    CD_Producto_codigoBarra.AsString := vselProducto.ZQ_ProductoCODIGO_BARRA.AsString;
    CD_Producto_codCabecera.AsString := vselProducto.ZQ_ProductoCOD_CORTO.AsString;
    CD_Producto_codProducto.AsString := vselProducto.ZQ_ProductoCOD_CORTO_1.AsString;

    ZQ_CpbProducto.Append;
    ZQ_CpbProductoID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_CpbProductoID_PRODUCTO.AsInteger:= vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    ZQ_CpbProductoCANTIDAD.AsFloat:= 0;
    ZQ_CpbProductoCANTIDAD_ALMACENADA.AsFloat:= 0;
    ZQ_CpbProductoPORC_IVA.AsFloat:= 0;

    cargarImagen(vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger);

    vselProducto.ZQ_Producto.Next;
  end;

  vselProducto.Close;
end;


procedure TFABM_CPB_FacturaCompra.PopItemProducto_AgregarClick(Sender: TObject);
begin
  agregarProducto;
end;


procedure TFABM_CPB_FacturaCompra.agregarProducto();
begin
  if not Assigned(vselProducto) then
    vselProducto:= TFBuscarProducto.Create(nil);

  if not ZQ_ComprobanteID_PROVEEDOR.IsNull then
    vselProducto.filtrarEmpresa(ZQ_ComprobanteID_PROVEEDOR.AsInteger);

  vselProducto.OnSeleccionar := onSelProducto;
  vselProducto.OnSeleccionarTodos := onSelTodosProducto;
  vselProducto.btnSeleccionarTodos.Visible:= ivAlways;
  vselProducto.SeleccionarYSalir:= false;
  vselProducto.ShowModal;
end;


procedure TFABM_CPB_FacturaCompra.PopItemProducto_QuitarClick(Sender: TObject);
begin
  if confirmarComprobante and (ZQ_CpbProductoCANTIDAD.AsFloat <> 0) then
    exit;

  if not ZQ_CpbProducto.IsEmpty then
    ZQ_CpbProducto.Delete;
end;


procedure TFABM_CPB_FacturaCompra.btnEliminarProductoClick(Sender: TObject);
begin
  if confirmarComprobante and (ZQ_CpbProductoCANTIDAD.AsFloat <> 0) then
    exit;

  if not ZQ_CpbProducto.IsEmpty then
    ZQ_CpbProducto.Delete;
end;


procedure TFABM_CPB_FacturaCompra.DBGridEditar_ProductoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
  begin
    if key = 112 then
      agregarProducto;
  end;
end;


procedure TFABM_CPB_FacturaCompra.cargarImagen(id_prducto: integer);
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


procedure TFABM_CPB_FacturaCompra.ZQ_CpbProductoAfterScroll(DataSet: TDataSet);
begin
  ZQ_Imagen.Close;

  if ZQ_CpbProducto.IsEmpty then
    exit;

  cargarImagen(ZQ_CpbProductoID_PRODUCTO.AsInteger);
end;


procedure TFABM_CPB_FacturaCompra.PopUpItem_ProductoOcultarDetalleClick(Sender: TObject);
begin
  if PanelCpbActual_ProductoDetalle.Visible then
    PopUpItem_ProductoOcultarDetalle.Caption:= 'Ver Detalle'
  else
    PopUpItem_ProductoOcultarDetalle.Caption:= 'Ocultar Detalle';

  PanelCpbActual_ProductoDetalle.Visible:= not PanelCpbActual_ProductoDetalle.Visible;
end;


procedure TFABM_CPB_FacturaCompra.btnEnviarMailClick(Sender: TObject);
var
  destino, archivoPDF: string;
begin
//  destino:= '';
//  archivoPDF:= '';
//
//  if ZQ_VerCpb.IsEmpty then
//    exit;
//
//  ZQ_BuscarMail.Close;
//  if ZQ_VerCpbID_PROVEEDOR.IsNull then //si es un CLIENTE
//  begin
//      ZQ_BuscarMail.SQL.Text:= Format('select p.email from persona p where p.id_persona = %d',
//                                       [ZQ_VerCpbID_CLIENTE.AsInteger]);
//  end
//  else
//    if ZQ_VerCpbID_CLIENTE.IsNull then //si es un PROVEEDOR
//    begin
//      ZQ_BuscarMail.SQL.Text:= Format('select e.email from empresa e where e.id_empresa = %d',
//                                       [ZQ_VerCpbID_PROVEEDOR.AsInteger]);
//    end;
//
//  ZQ_BuscarMail.Open;
//  if (not ZQ_BuscarMailEMAIL.IsNull) or (ZQ_BuscarMailEMAIL.AsString <> '') then
//    destino:= ZQ_BuscarMailEMAIL.AsString;
//
//  if not Assigned(FImpresion_Comprobantes) then
//    FImpresion_Comprobantes := TFImpresion_Comprobantes.Create(nil);
//  FImpresion_Comprobantes.cargarDatos(ZQ_VerCpbID_COMPROBANTE.AsInteger, ZQ_VerCpbID_CLIENTE.AsInteger, ZQ_VerCpbID_PROVEEDOR.AsInteger, false);
//  archivoPDF:= FImpresion_Comprobantes.generarPDF;
//
//  //if not Assigned(TFMailEnviar) then
//    Application.CreateForm(TFMailEnviar, FMailEnviar);
//  FMailEnviar.enviarConAdjunto(destino, dm.ZQ_SucursalNOMBRE.AsString, archivoPDF);
//  FMailEnviar.ShowModal;
end;


procedure TFABM_CPB_FacturaCompra.btnConfirmarClick(Sender: TObject);
var
  recno, estado: Integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or
     ((estado = ESTADO_CONFIRMADO) or (estado = ESTADO_ALMACENADO) or (estado = ESTADO_ANULADO))) then
    exit;

  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;

  if (application.MessageBox(pchar('¿Desea confirmar la Factura de Compra seleccionada?'), 'ABM Factura de Compra', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
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
          Application.MessageBox('No se pudo confirmar la Factura de Compra.', 'Atención',MB_OK+MB_ICONINFORMATION);
          exit;
        end
      end;
    end;

  recNo:= ZQ_VerCpb.RecNo;
  ZQ_VerCpb.Refresh;
  ZQ_VerCpb.RecNo:= recNo;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_CPB_FacturaCompra.ZQ_CpbProductoCANTIDADChange(Sender: TField);
begin
  ZQ_CpbProductoCANTIDAD_RECIBIDA.AsFloat:= ZQ_CpbProductoCANTIDAD.AsFloat;
  ZQ_CpbProductoIMPORTE_VENTA.AsFloat:= ZQ_CpbProductoCANTIDAD.AsFloat*ZQ_CpbProductoIMPORTE_UNITARIO.AsFloat;
end;


//Para renombrar el procedimiento Ctrl+Del que viene por defecto en las grillas
procedure TFABM_CPB_FacturaCompra.DBGridEditar_ProductoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  columna: string;
begin
  columna:= (sender as tdbgrid).SelectedField.FullName;

  if (Key = 13) or (key = 9) then  { if it's an enter key }
  begin
    Key := 0; {ignore}
    if (columna = 'IMPORTE_FINAL') then
    begin
      DBGridEditar_Producto.SelectedIndex:= 0;
      ZQ_CpbProducto.Append;
    end;
  end;

  if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
  begin
    Key := 0; {ignore}
    btnEliminarProducto.Click;
  end
end;


procedure TFABM_CPB_FacturaCompra.EKSuma_ProductosSumListChanged(Sender: TObject);
var
  cantidad, imponible, iva, total: string;
begin
  cantidad:= FormatFloat('###,###,###,##0.00', EKSuma_Productos.SumCollection[0].SumValue);
  imponible:= FormatFloat('$ ###,###,###,##0.00', EKSuma_Productos.SumCollection[1].SumValue);
  iva:= FormatFloat('###,###,###,##0.00', EKSuma_Productos.SumCollection[2].SumValue);
  total:= FormatFloat('$ ###,###,###,##0.00', EKSuma_Productos.SumCollection[3].SumValue);

  editTotalProductos.Text:= cantidad;
  editTotalImponible.Text:= imponible;
  editTotalIva.Text:= iva;
  editTotalFinal.Text:= total;
end;


procedure TFABM_CPB_FacturaCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrd_VerCpb.GuardarConfigColumnas;
  EKOrd_VerCpb_Producto.GuardarConfigColumnas;
  EKOrd_EditarProducto.GuardarConfigColumnas;
end;


procedure TFABM_CPB_FacturaCompra.DBGridEditar_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridEditar_Producto, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_FacturaCompra.DBGridListaCpbDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_CONFIRMADO) or (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_ALMACENADO) then //si el registro esta dado de baja
  begin
    DBGridListaCpb.Canvas.Brush.Color:= StaticTxtConfirmado.Color;
    if (gdFocused in State) or (gdSelected in State) then
      DBGridListaCpb.Canvas.Font.Style := DBGridListaCpb.Canvas.Font.Style + [fsBold];
  end;

  if (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_ANULADO) then //si el registro esta dado de baja
  begin
    DBGridListaCpb.Canvas.Brush.Color:= StaticTxtBaja.Color;
    if (gdFocused in State) or (gdSelected in State) then
      DBGridListaCpb.Canvas.Font.Style := DBGridListaCpb.Canvas.Font.Style + [fsBold];
  end;


  DBGridListaCpb.DefaultDrawColumnCell(rect,datacol,column,state);

  FPrincipal.PintarFilasGrillas(DBGridListaCpb, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_FacturaCompra.DBGridCpbActual_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridCpbActual_Producto, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_FacturaCompra.calcularImporteProducto(Sender: TField);
var
  cantidad,
  precio_unitario,
  coef_iva,
  importe_iva,
  imponible: double;
  final: double;
begin
  cantidad:= 0;
  precio_unitario:= 0;
  coef_iva:= 0;

  if not ZQ_CpbProductoCANTIDAD.IsNull then
    cantidad:= ZQ_CpbProductoCANTIDAD.AsFloat;

  if not ZQ_CpbProductoIMPORTE_UNITARIO.IsNull then
    precio_unitario:= ZQ_CpbProductoIMPORTE_UNITARIO.AsFloat;

  if not ZQ_CpbProductoPORC_IVA.IsNull then
    coef_iva:= ZQ_CpbProductoPORC_IVA.AsFloat;

  imponible:= cantidad * precio_unitario;
  importe_iva:= imponible * coef_iva;
  final:= imponible + importe_iva;

  ZQ_CpbProductoCANTIDAD_RECIBIDA.AsFloat:= cantidad;
  ZQ_CpbProductoBASE_IMPONIBLE.AsFloat:= imponible;
  ZQ_CpbProductoIMPORTE_IVA.AsFloat:= importe_iva;
  ZQ_CpbProductoIMPORTE_FINAL.AsFloat:= final;
  ZQ_CpbProductoIMPORTE_VENTA.AsFloat:= final;
end;


procedure TFABM_CPB_FacturaCompra.btnBajaClick(Sender: TObject);
var
  recno, estado: Integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or
     ((estado = ESTADO_ALMACENADO) or (estado = ESTADO_ANULADO))) then
    exit;

  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;

  if (application.MessageBox(pchar('¿Desea anular la Factura de Compra seleccionada?'), 'ABM Factura de Compra', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
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
          Application.MessageBox('No se pudo anular la Factura de Compra.', 'Atención',MB_OK+MB_ICONINFORMATION);
          exit;
        end
      end;
    end;

  recNo:= ZQ_VerCpb.RecNo;
  ZQ_VerCpb.Refresh;
  ZQ_VerCpb.RecNo:= recNo;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_CPB_FacturaCompra.btnActualizarPreciosClick(Sender: TObject);
begin
  if ZQ_VerCpb_Producto.isEmpty then
    exit;

  ZQ_ActualizarLista.Close;
  ZQ_ActualizarLista.ParamByName('id_comprobante').AsInteger:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  ZQ_ActualizarLista.Open;

  PanelVer.Enabled:= false;
  panelActualizarPrecio.BringToFront;
  panelActualizarPrecio.Visible:= true;
  dm.centrarPanel(FABM_CPB_FacturaCompra, panelActualizarPrecio);
  GrupoEditando.Enabled:= false;
  DBGridActualizarPrecio.SetFocus;
end;


procedure TFABM_CPB_FacturaCompra.btnCancelarActualizarClick(Sender: TObject);
begin
  PanelVer.Enabled:= true;
  panelActualizarPrecio.SendToBack;
  panelActualizarPrecio.Visible:= false;
  GrupoEditando.Enabled:= true;
end;


procedure TFABM_CPB_FacturaCompra.ZQ_ActualizarListaAfterScroll(DataSet: TDataSet);
begin
  ZQ_ActualizarPrecio.Close;
  ZQ_ActualizarPrecio.ParamByName('id_producto').AsInteger:= ZQ_ActualizarListaID_PRODUCTO.AsInteger;
  ZQ_ActualizarPrecio.Open;

  if ZQ_ActualizarPrecioPRECIO_COSTO.AsFloat > ZQ_ActualizarListaIMPORTE_UNITARIO.AsFloat  then
  begin
    DBTxtPrecioCosto.Font.Color:= $00009500;
  end
  else
    if ZQ_ActualizarPrecioPRECIO_COSTO.AsFloat < ZQ_ActualizarListaIMPORTE_UNITARIO.AsFloat  then
    begin
      DBTxtPrecioCosto.Font.Color:= clRed;
    end
end;


procedure TFABM_CPB_FacturaCompra.DBGridActualizarPrecioDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridActualizarPrecio, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_FacturaCompra.btnAplicarActualizarClick(Sender: TObject);
var
  costo_neto, costo_con_impuestos, imp_adicional_1,
  imp_adicional_2, imp_iva, coef_ganancia, precio_venta: double;
begin
  DBGridActualizarPrecio.Enabled:= false;
  ZQ_ActualizarLista.First;
  while not ZQ_ActualizarLista.Eof do
  begin
    if (not ZQ_ActualizarListaIMPORTE_UNITARIO.IsNull) and (ZQ_ActualizarListaIMPORTE_UNITARIO.AsFloat <> 0) and //si el importe final no es null y si no es igual a 0
       (ZQ_ActualizarPrecioPRECIO_COSTO.AsFloat <> ZQ_ActualizarListaIMPORTE_UNITARIO.AsFloat) then //y si es distincto al precio de costo actual del producto
      if (application.MessageBox(pchar('¿Desea actualizar el precio de costo del producto seleccionada (Actual: '+
                                         ZQ_ActualizarPrecioPRECIO_COSTO.AsString+' - Nuevo: '+ZQ_ActualizarListaIMPORTE_UNITARIO.AsString+')?'), 'Actualizar Precio', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
        if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_ActualizarPrecio]) then
        begin
          imp_adicional_1:= 0;
          imp_adicional_2:= 0;
          imp_iva:= 0;
          coef_ganancia:= 0;

          costo_neto:= ZQ_ActualizarListaIMPORTE_UNITARIO.AsFloat;
          if not ZQ_ActualizarPrecioIMPUESTO_ADICIONAL1.IsNull then
            imp_adicional_1:= ZQ_ActualizarPrecioIMPUESTO_ADICIONAL1.AsFloat;
          if not ZQ_ActualizarPrecioIMPUESTO_ADICIONAL2.IsNull then
            imp_adicional_2:= ZQ_ActualizarPrecioIMPUESTO_ADICIONAL2.AsFloat;
          if not ZQ_ActualizarPrecioIMPUESTO_IVA.IsNull then
            imp_iva:= ZQ_ActualizarPrecioIMPUESTO_IVA.AsFloat;
          if not ZQ_ActualizarPrecioCOEF_GANANCIA.IsNull then
            coef_ganancia:= ZQ_ActualizarPrecioCOEF_GANANCIA.AsFloat;

          costo_con_impuestos:= costo_neto + (costo_neto * (imp_adicional_1/100)) + (costo_neto * (imp_adicional_2/100)) + (costo_neto * (imp_iva/100));
          precio_venta:= costo_con_impuestos * (1 + coef_ganancia);

          ZQ_ActualizarPrecio.Edit;
          ZQ_ActualizarPrecioPRECIO_COSTO.AsFloat:= costo_neto;
          ZQ_ActualizarPrecioPRECIO_COSTO_CIMPUESTOS.AsFloat:= costo_con_impuestos;
          ZQ_ActualizarPrecioPRECIO_VENTA.AsFloat:= precio_venta;
          ZQ_ActualizarPrecio.ApplyUpdates;

          try
            if not DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
              dm.EKModelo.cancelar_transaccion(transaccion_ABM)
          except
            begin
              Application.MessageBox('No se pudo anular actualizar el precio.', 'Atención',MB_OK+MB_ICONINFORMATION);
              exit;
            end
          end;
        end;

    ZQ_ActualizarLista.Next;
  end;

  DBGridActualizarPrecio.Enabled:= true;
  PanelVer.Enabled:= true;
  panelActualizarPrecio.SendToBack;
  panelActualizarPrecio.Visible:= false;
  GrupoEditando.Enabled:= true;
end;

procedure TFABM_CPB_FacturaCompra.ZQ_VerCpb_ProductoAfterScroll(
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

end.
