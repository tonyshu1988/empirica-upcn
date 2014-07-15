unit UABM_CPB_FacturaObraSocial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, XPStyleActnCtrls, ActnMan,   QRCtrls, QuickRpt, Buttons, ImgList, 
  ComCtrls, ZStoredProcedure,
  DBClient, Menus, UOP_BuscarProductosOS, ZSqlUpdate, jpeg,
  ExtDlgs, ZSequence, cxClasses, ShellAPI, ZIBEventAlerter,
  ISOrdenarGrilla, ISVistaPreviaQR, ISDbSuma, ISListadoSQL,
  ISBusquedaAvanzada, ISDBDateTimePicker;

type
  TFABM_CPB_FacturaObraSocial = class(TForm)
    PanelFondo: TPanel;
    PanelVer: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnEnviarMail: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
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
    btnBuscarObraSocial: TSpeedButton;
    ImageListEntidad: TImageList;
    ZQ_VerCpb: TZQuery;
    ZQ_VerCpb_Producto: TZQuery;
    DS_VerCpb: TDataSource;
    DS_VerCpb_Producto: TDataSource;
    ZQ_VerCpbID_COMPROBANTE: TIntegerField;
    ZQ_VerCpbID_SUCURSAL: TIntegerField;
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
    ZQ_VerCpbESTADO: TStringField;
    DBGridListaCpb: TDBGrid;
    DBGridCpbActual_Producto: TDBGrid;
    GroupBoxCpbActual_Info: TGroupBox;
    Label24: TLabel;
    DBTxtMonto: TDBText;
    DBMemoCpbActual_Info: TDBMemo;
    DBText1: TDBText;
    Label1: TLabel;
    ZQ_VerCpbPUNTO_VENTA: TIntegerField;
    ZQ_VerCpbNUMERO_CPB: TIntegerField;
    lblTipoComprobante: TLabel;
    PanelEditar_DatosGralProveedor: TPanel;
    ZQ_ObraSocial: TZQuery;
    DS_ObraSocial: TDataSource;
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
    DS_Producto: TDataSource;
    CD_Producto: TClientDataSet;
    CD_Producto_idProducto: TIntegerField;
    CD_Producto_producto: TStringField;
    CD_Producto_afiliado_nombre: TStringField;
    CD_Producto_afiliado_numero: TStringField;
    Popup_Producto: TPopupMenu;
    PopItemProducto_Agregar: TMenuItem;
    PopItemProducto_Quitar: TMenuItem;
    ZQ_CpbProducto_Nombre: TStringField;
    ZQ_CpbProducto_Medida: TStringField;
    ZQ_CpbProducto_Color: TStringField;
    ZQ_Imagen: TZQuery;
    DS_Imagen: TDataSource;
    ZQ_ImagenIMAGEN: TBlobField;
    PopupGridProducto: TPopupMenu;
    PopUpItem_ProductoOcultarDetalle: TMenuItem;
    PanelFechas: TPanel;
    PanelFechaEmision: TPanel;
    ZQ_BuscarMail: TZQuery;
    ZQ_BuscarMailEMAIL: TStringField;
    btnConfirmar: TdxBarLargeButton;
    ZQ_CpbProductoCANTIDAD_RECIBIDA: TFloatField;
    ZQ_CpbProductoCANTIDAD_ALMACENADA: TFloatField;
    ZQ_ComprobanteID_TIPO_IVA: TIntegerField;
    ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_ComprobanteIMPORTE_VENTA: TFloatField;
    ZQ_CpbProductoID_STOCK_PRODUCTO: TIntegerField;
    ZQ_CpbProductoIMPORTE_VENTA: TFloatField;
    Label12: TLabel;
    lblTituloFecha_Carga: TLabel;
    ZQ_CpbProductoBASE_IMPONIBLE: TFloatField;
    ZQ_CpbProductoPORC_IVA: TFloatField;
    ZQ_CpbProductoIMPORTE_IVA: TFloatField;
    DS_ImagenSuc: TDataSource;
    editTotalProductos: TEdit;
    editTotalFinal: TEdit;
    Label25: TLabel;
    Label29: TLabel;
    DBTxtSaldo: TDBText;
    lblSaldo: TLabel;
    ZQ_VerCpbSALDO: TFloatField;
    Label28: TLabel;
    DBText4: TDBText;
    Label31: TLabel;
    DBText5: TDBText;
    DBText32: TDBText;
    StaticTxtConfirmado: TStaticText;
    RepListado: TQuickRep;
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
    lblAnulado: TLabel;
    DBTxtFechaAnulado: TDBText;
    Label6: TLabel;
    ZQ_ComprobanteIMAGEN: TBlobField;
    ZQ_VerCpbIMAGEN: TBlobField;
    ZQ_VerCpbNOMBRE: TStringField;
    ZQ_VerCpbDIRECCION: TStringField;
    ZQ_VerCpbTELEFONO: TStringField;
    ZQ_VerCpbCUIT_CUIL: TStringField;
    ZQ_VerCpbLOCALIDAD: TStringField;
    ZQ_VerCpbCODIGO_POSTAL: TStringField;
    ZQ_ComprobanteID_VENDEDOR: TIntegerField;
    ZQ_ComprobanteINSERT_MANUAL: TStringField;
    ZQ_ComprobanteID_POSICION_SUC_DESTINO: TIntegerField;
    ZQ_ComprobanteID_PREVENTA: TIntegerField;
    ZQ_ComprobanteID_OBRA_SOCIAL: TIntegerField;
    ZQ_ObraSocialID: TIntegerField;
    ZQ_ObraSocialID_OS: TIntegerField;
    ZQ_ObraSocialCODIGO: TStringField;
    ZQ_ObraSocialNOMBRE: TStringField;
    ZQ_ObraSocialDIRECCION: TStringField;
    ZQ_ObraSocialTELEFONO: TStringField;
    ZQ_ObraSocialDESCRIPCION: TStringField;
    ZQ_ObraSocialBAJA: TStringField;
    ZQ_ObraSocialCUIT_CUIL: TStringField;
    ZQ_ObraSocialLOCALIDAD: TStringField;
    ZQ_ObraSocialCODIGO_POSTAL: TStringField;
    ZQ_ObraSocialEMAIL: TStringField;
    ZQ_ObraSocialID_TIPO_IVA: TIntegerField;
    ZQ_ObraSocialNOMBRE_TIPO_IVA: TStringField;
    ZQ_ObraSocialCOD_IVA: TStringField;
    CD_Producto_idDetalleOS: TIntegerField;
    ZQ_ActualizarDetalleOS: TZQuery;
    ZSeq_CpbProducto: TZSequence;
    CD_Producto_idCPBDetalle: TIntegerField;
    ZQ_CpbProducto_IdDetalleOS: TIntegerField;
    ZQ_VerCpb_ProductoID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_VerCpb_ProductoID_COMPROBANTE: TIntegerField;
    ZQ_VerCpb_ProductoID_PRODUCTO: TIntegerField;
    ZQ_VerCpb_ProductoDETALLE: TStringField;
    ZQ_VerCpb_ProductoCANTIDAD: TFloatField;
    ZQ_VerCpb_ProductoIMPORTE_COSTO: TFloatField;
    ZQ_VerCpb_ProductoIMPORTE_FINAL: TFloatField;
    ZQ_VerCpb_ProductoPORC_DESCUENTO: TFloatField;
    ZQ_VerCpb_ProductoBASE_IMPONIBLE: TFloatField;
    ZQ_VerCpb_ProductoIMPORTE_UNITARIO: TFloatField;
    ZQ_VerCpb_ProductoIMPUESTO_INTERNO: TFloatField;
    ZQ_VerCpb_ProductoPORC_IVA: TFloatField;
    ZQ_VerCpb_ProductoCANTIDAD_RECIBIDA: TFloatField;
    ZQ_VerCpb_ProductoCANTIDAD_ALMACENADA: TFloatField;
    ZQ_VerCpb_ProductoID_STOCK_PRODUCTO: TIntegerField;
    ZQ_VerCpb_ProductoIMPORTE_VENTA: TFloatField;
    ZQ_VerCpb_ProductoIMPORTE_IVA: TFloatField;
    ZQ_VerCpb_ProductoIMPORTE_IF: TFloatField;
    ZQ_VerCpb_ProductoIMPORTE_IF_SINIVA: TFloatField;
    ZQ_VerCpb_ProductoIMPORTE_IVA_IF: TFloatField;
    ZQ_VerCpb_ProductoINSERT_MANUAL: TStringField;
    ZQ_VerCpb_ProductoNRO_AFILIADO: TStringField;
    ZQ_VerCpb_ProductoAFILIADO: TStringField;
    ZQ_VerCpb_ProductoID_DETALLE_OS: TIntegerField;
    btnImprimirRemito: TdxBarLargeButton;
    ZQ_VerCpbID_OBRA_SOCIAL: TIntegerField;
    CD_Producto_producto_imprimir: TStringField;
    ZQ_VerCpb_ProductoDETALLE_PROD_FACTURA: TStringField;
    ZQ_CpbProductoID_AUXILIAR: TIntegerField;
    StaticTxtLiquidado: TStaticText;
    ALiquidar: TAction;
    btFacturarFiscal: TdxBarLargeButton;
    DBLCBoxCondIva: TDBLookupComboBox;
    ZQ_Iva: TZQuery;
    ZQ_IvaID_TIPO_IVA: TIntegerField;
    ZQ_IvaNOMBRE_TIPO_IVA: TStringField;
    ZQ_IvaABREVIATURA: TStringField;
    ZQ_IvaDISCRIMINAR: TStringField;
    ZQ_IvaLETRA: TStringField;
    ZQ_IvaFISCAL: TStringField;
    ZQ_IvaCOEFICIENTE: TFloatField;
    ZQ_IvaVERIFICA_CUIT: TStringField;
    DS_Iva: TDataSource;
    ZQ_Fiscal: TZQuery;
    ZQ_FiscalIMPORTE_FISCAL: TFloatField;
    ZQ_VerCpbCODIGO: TStringField;
    ZIBEvent: TZIBEventAlerter;
    QRLabel5: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText9: TQRDBText;
    ZQ_VerCpbCODIGO_1: TStringField;
    ChildBand1: TQRChildBand;
    QRLabelCritBusqueda: TQRLabel;
    QRLabel48: TQRLabel;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepListado_Subtitulo: TQRLabel;
    RepListado_Titulo: TQRLabel;
    ISVistaPrevia: TISVistaPreviaQR;
    ISOrd_VerCpb: TISOrdenarGrilla;
    ISOrd_EditarProducto: TISOrdenarGrilla;
    ISOrd_VerCpb_Producto: TISOrdenarGrilla;
    ISSuma_Productos: TISDbSuma;
    ISListadoEntidad: TISListadoSQL;
    ISBuscar: TISBusquedaAvanzada;
    ISDBDateCarga: TISDBDateTimePicker;
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
    procedure btnImprimirListadoClick(Sender: TObject);
    procedure ZQ_VerCpbAfterScroll(DataSet: TDataSet);
    procedure modoEdicion(flag: boolean);
    procedure cargarTipoComprobante(tipo: integer);
    procedure btnBuscarObraSocialClick(Sender: TObject);
    procedure PopItemProducto_AgregarClick(Sender: TObject);
    procedure PopItemProducto_QuitarClick(Sender: TObject);
    procedure btnEliminarProductoClick(Sender: TObject);
    procedure agregarProducto();    
    procedure cargarProductosClienDataset();    
    procedure ZQ_CpbProductoAfterScroll(DataSet: TDataSet); //configuro la pantalla de visualizacion segun el tipo de comprobante
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
    procedure btnBajaClick(Sender: TObject);
    procedure btnImprimirRemitoClick(Sender: TObject);
    procedure guardarFactura;
    procedure btFacturarFiscalClick(Sender: TObject);
    procedure ZIBEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
  private
    confirmarComprobante: boolean;
    estadoPantalla: string;
    tipoComprobante: integer;
    id_comprobante, id_liquidacion: integer;
    vselProducto: TFOP_BuscarProductosOS;
    procedure onSelProducto;
    procedure onSelTodosProducto;
    function getColumnIndex(Grid: TDBGrid; Nombre: string): Integer;
  public
    { Public declarations }
  end;

type
  THackDBGrid = class(TDBGrid);

var
  FABM_CPB_FacturaObraSocial: TFABM_CPB_FacturaObraSocial;

const
  transaccion_ABM = 'ABM FACTURA OBRA SOCIAL';
  EDITANDO = 'EDITANDO';
  VIENDO = 'VIENDO';
  LIQUIDANDO = 'LIQUIDANDO';

implementation

uses UPrincipal, UDM, UImpresion_Comprobantes, UMailEnviar, UVerImagen;

{$R *.dfm}

//Devuelve el indice en la grilla de la columna que se pasa como parametro

function TFABM_CPB_FacturaObraSocial.getColumnIndex(Grid: TDBGrid; Nombre: string): Integer;
var
  i: Integer;
begin
  Result:= -1;
  for i:= 0 to Grid.Columns.Count - 1 do
    if Nombre = Grid.Columns[i].FieldName then
    begin
      Result:= i;
      Exit;
    end;
end;


procedure TFABM_CPB_FacturaObraSocial.modoEdicion(flag: boolean);
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
    StaticTxtLiquidado.Visible:= false;
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
    StaticTxtLiquidado.Visible:= true;
    lblTipoComprobante.Caption:= 'FACTURA OBRA SOCIAL';

    GrupoEditando.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= false;
  end;
end;


procedure TFABM_CPB_FacturaObraSocial.FormCreate(Sender: TObject);
begin
  tipoComprobante:= CPB_FACTURA_OSOCIAL;

  ISOrd_VerCpb.CargarConfigColunmas;
  ISOrd_VerCpb_Producto.CargarConfigColunmas;
  ISOrd_EditarProducto.CargarConfigColunmas;

  modoEdicion(false);
  StaticTxtBaja.Color:= FPrincipal.baja;
  FPrincipal.ISImage_ABM_Comprobantes.GetBitmap(4, btnBuscarObraSocial.Glyph); //cargo la imagen del boton buscar OS

  if dm.ZQ_SucursalesVisibles.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    TISCriterioBA(ISBuscar.CriteriosBusqueda.Items[4]).ItemIndex:= dm.ZQ_SucursalesVisibles.RecNo - 1;

  //abro todos los recibos del sistema
  ISBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
  dm.ISModelo.abrir(ZQ_Iva);
  CD_Producto.CreateDataSet;
end;


procedure TFABM_CPB_FacturaObraSocial.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_CPB_FacturaObraSocial.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_CPB_FacturaObraSocial.btnBuscarClick(Sender: TObject);
begin
  if ISbuscar.buscar then
  begin
    ZQ_VerCpb.Refresh;
    dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
  end
end;


procedure TFABM_CPB_FacturaObraSocial.configPanelFechas(panel: TPanel; Activar: boolean);
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


procedure TFABM_CPB_FacturaObraSocial.cargarTipoComprobante(tipo: integer);
begin
  lblTipoComprobante.Caption:= 'FACTURA OBRA SOCIAL';
end;


procedure TFABM_CPB_FacturaObraSocial.btnNuevoClick(Sender: TObject);
begin
  if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbProducto]) then
  begin
    modoEdicion(true);
    confirmarComprobante:= false;

    ZQ_ObraSocial.Close;
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
    ZQ_ComprobanteFECHA.AsDateTime:= dm.ISModelo.FechayHora;
    ZQ_ComprobanteFECHA_COBRADA.Clear;
    ZQ_ComprobanteFECHA_ENVIADA.Clear;
    ZQ_ComprobanteFECHA_IMPRESA.Clear;
    ZQ_ComprobanteFECHA_VENCIMIENTO.Clear;
    ZQ_ComprobanteFECHA_ANULADO.Clear;

    ISDBDateCarga.SetFocus;
  end;
end;


procedure TFABM_CPB_FacturaObraSocial.btnModificarClick(Sender: TObject);
var
  estado: integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or ((estado = ESTADO_CONFIRMADO) or (estado = ESTADO_ANULADO))) then
    exit;

  confirmarComprobante:= false;
  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;

  if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbProducto]) then
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
    ZQ_ObraSocial.Close;
    ZQ_ObraSocial.ParamByName('id_os').AsInteger:= ZQ_ComprobanteID_OBRA_SOCIAL.AsInteger;
    ZQ_ObraSocial.Open;

    cargarTipoComprobante(tipoComprobante); //acomodo la pantalla de edicion segun el tipo de comprobante que es
    lblTipoComprobante.Caption:= lblTipoComprobante.Caption + ' - MODIFICAR';

    ZQ_Comprobante.Edit;

    ISDBDateCarga.SetFocus;
  end;
end;


procedure TFABM_CPB_FacturaObraSocial.guardarFactura;
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if ZQ_ComprobanteID_OBRA_SOCIAL.IsNull then
  begin
    Application.MessageBox('Debe asociar una Obra Social al Comprobante, por favor Verifique', 'Validar Datos', MB_OK + MB_ICONINFORMATION);
    ISDBDateCarga.SetFocus;
    exit;
  end;

  ISSuma_Productos.RecalcAll; //el importe del comprobante es igual a la suma del importe de todos los productos
  ISSuma_Productos.RecalcAll;
  ZQ_ComprobanteBASE_IMPONIBLE.AsFloat:= ISSuma_Productos.SumCollection[1].SumValue;
  ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:= ISSuma_Productos.SumCollection[1].SumValue;
  ZQ_ComprobanteIMPORTE_VENTA.AsFloat:= ISSuma_Productos.SumCollection[1].SumValue;
  ZQ_ComprobanteSALDO.AsFloat:= ISSuma_Productos.SumCollection[1].SumValue;

  if confirmarComprobante then
    ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_CONFIRMADO
  else
    ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_SIN_CONFIRMAR;

  ZQ_CpbProducto.ApplyUpdates;
  ZQ_CpbProducto.First;
  while not ZQ_CpbProducto.Eof do
  begin
    ZQ_ActualizarDetalleOS.ParamByName('id').AsInteger:= ZQ_CpbProducto_IdDetalleOS.AsInteger;
    ZQ_ActualizarDetalleOS.ParamByName('id_factura').AsInteger:= ZQ_CpbProductoID_COMPROBANTE_DETALLE.AsInteger;
    ZQ_ActualizarDetalleOS.ParamByName('detalle').AsString:= ZQ_CpbProducto_Nombre.AsString;
    ZQ_ActualizarDetalleOS.ExecSQL;

    if (ZQ_CpbProductoDETALLE.IsNull) or (trim(ZQ_CpbProductoDETALLE.AsString) = '') then
    begin
      ZQ_CpbProducto.edit;
      ZQ_CpbProductoDETALLE.AsString:= ZQ_CpbProducto_Nombre.AsString;
    end;

    ZQ_CpbProducto.Next;
  end;

  try
    if DM.ISModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      modoEdicion(false);
      DBGridListaCpb.SetFocus;

      ZQ_VerCpb.Refresh;
      ZQ_VerCpb.Locate('ID_COMPROBANTE', id_comprobante, []);
    end
  except
    begin
      Application.MessageBox('Verifique que los datos est�n cargados correctamente.', 'Atenci�n', MB_OK + MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_CPB_FacturaObraSocial.btnGuardarClick(Sender: TObject);
begin
  guardarFactura;
end;


procedure TFABM_CPB_FacturaObraSocial.btnCancelarClick(Sender: TObject);
begin
  if (application.MessageBox(pchar('�Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.ISModelo.cancelar_transaccion(transaccion_ABM) then
    begin
      modoEdicion(false);
      DBGridListaCpb.SetFocus;
    end;
end;


procedure TFABM_CPB_FacturaObraSocial.btnImprimirListadoClick(Sender: TObject);
begin
  if ZQ_VerCpb.IsEmpty then
    exit;

  DM.VariablesReportes(RepListado);
  QRlblPieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ', dm.ISModelo.Fecha);
  QRLabelCritBusqueda.Caption:= ISBuscar.ParametrosBuscados;
  ISVistaPrevia.VistaPrevia;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------

procedure TFABM_CPB_FacturaObraSocial.ABuscarExecute(Sender: TObject);
begin //F1
  if estadoPantalla = VIENDO then
  begin
    if btnBuscar.Enabled then
      btnBuscar.Click
  end
  else
  begin
    if btnBuscarObraSocial.Enabled then
      btnBuscarObraSocial.Click;
  end;
end;

procedure TFABM_CPB_FacturaObraSocial.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_CPB_FacturaObraSocial.AModificarExecute(Sender: TObject);
begin
  if dm.ISModelo.verificar_transaccion(transaccion_ABM) then
  begin
    agregarProducto;
  end;

  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_CPB_FacturaObraSocial.AConfirmarExecute(Sender: TObject);
begin
  if btnConfirmar.Enabled then
    btnConfirmar.Click;
end;

procedure TFABM_CPB_FacturaObraSocial.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_CPB_FacturaObraSocial.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_CPB_FacturaObraSocial.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFABM_CPB_FacturaObraSocial.ZQ_VerCpbAfterScroll(DataSet: TDataSet);
begin
  ZQ_VerCpb_Producto.Close;

  if ZQ_VerCpb.IsEmpty then
    exit;

  ZQ_VerCpb_Producto.ParamByName('id_comprobante').AsInteger:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  ZQ_VerCpb_Producto.ParamByName('id_os').AsInteger:= ZQ_VerCpbID_OBRA_SOCIAL.AsInteger;
  ZQ_VerCpb_Producto.Open;

  if ZQ_VerCpbFECHA_ANULADO.IsNull then
  begin
    DBTxtFechaAnulado.Visible:= false;
    lblAnulado.Visible:= False;

    DBTxtSaldo.Visible:= true;
    lblSaldo.Visible:= true;
  end
  else
  begin
    DBTxtFechaAnulado.Visible:= true;
    lblAnulado.Visible:= true;

    DBTxtSaldo.Visible:= false;
    lblSaldo.Visible:= False;
  end;
end;


//PINTAR GRILLAS VISUALIZACION

procedure TFABM_CPB_FacturaObraSocial.btnBuscarObraSocialClick(Sender: TObject);
var
  sql: string;
begin
  if confirmarComprobante then
    exit;

  if ISListadoEntidad.Buscar then
  begin
    if (ISListadoEntidad.Resultado <> '') then
    begin
      if not ZQ_CpbProducto.IsEmpty then
      begin
        CD_Producto.EmptyDataSet;
        ZQ_CpbProducto.First;
        while not ZQ_CpbProducto.Eof do
          ZQ_CpbProducto.Delete;
      end;

      if not CD_Producto.IsEmpty then
        CD_Producto.EmptyDataSet;

      if Assigned(vselProducto) then
        vselProducto.ZQ_Producto.Close;

      btnBuscarObraSocial.Down:= true;
      PanelEditar_DatosGralProveedor.BringToFront;

      ZQ_ObraSocial.Close;
      ZQ_ObraSocial.ParamByName('id_os').AsInteger:= StrToInt(ISListadoEntidad.Resultado);
      ZQ_ObraSocial.Open;

      if ZQ_Comprobante.State = dsBrowse then
        ZQ_Comprobante.Edit;
      ZQ_ComprobanteID_OBRA_SOCIAL.AsInteger:= ZQ_ObraSocialID_OS.AsInteger;
      ZQ_ComprobanteID_TIPO_IVA.AsInteger:= ZQ_ObraSocialID_TIPO_IVA.AsInteger;
    end
  end;

  ISDBDateCarga.SetFocus;
end;


//----------------------
//    DETALLE PRODUCTO
//----------------------

procedure TFABM_CPB_FacturaObraSocial.cargarProductosClienDataset();
begin
  if ZQ_VerCpb_Producto.IsEmpty then
    exit;

  ZQ_VerCpb_Producto.First;
  while not ZQ_VerCpb_Producto.Eof do
  begin
    CD_Producto.Append;
    CD_Producto_idDetalleOS.AsInteger:= ZQ_VerCpb_ProductoID_DETALLE_OS.AsInteger;
    CD_Producto_idProducto.AsInteger:= ZQ_VerCpb_ProductoID_PRODUCTO.AsInteger;
    CD_Producto_idCPBDetalle.AsInteger:= ZQ_VerCpb_ProductoID_COMPROBANTE_DETALLE.AsInteger;
    CD_Producto_producto.AsString:= ZQ_VerCpb_ProductoDETALLE_PROD_FACTURA.AsString; //producto real
    CD_Producto_producto_imprimir.AsString:= ZQ_VerCpb_ProductoDETALLE.AsString; //renglon que se imprime
    CD_Producto_afiliado_nombre.AsString:= ZQ_VerCpb_ProductoAFILIADO.AsString;
    CD_Producto_afiliado_numero.AsString:= ZQ_VerCpb_ProductoNRO_AFILIADO.AsString;

    ZQ_VerCpb_Producto.Next;
  end;
end;

procedure TFABM_CPB_FacturaObraSocial.onSelProducto;
var
  nombre_producto: string;
  id_cpb_detalle: integer;
begin
  if not vselProducto.ZQ_Producto.IsEmpty then
  begin
    CD_Producto.Filter:= 'idDetalleOS = ' + vselProducto.ZQ_ProductoID_DETALLE_OS.AsString;
    CD_Producto.Filtered:= true;
    if CD_Producto.IsEmpty then //si el producto no esta cargado lo agrego
    begin
      id_cpb_detalle:= ZSeq_CpbProducto.GetNextValue;

      nombre_producto:= vselProducto.ZQ_ProductoPRODUCTO_NOMBRE.AsString + ' ' +
        vselProducto.ZQ_ProductoPRODUCTO_MARCA.AsString + ' ' +
        vselProducto.ZQ_ProductoPRODUCTO_MEDIDA.AsString + ' ' +
        vselProducto.ZQ_ProductoPRODUCTO_COLOR.AsString + ' ' +
        vselProducto.ZQ_ProductoPRODUCTO_TIPO_ARTICULO.AsString + ' ' +
        vselProducto.ZQ_ProductoPRODUCTO_ARTICULO.AsString;

      CD_Producto.Filtered:= false;
      CD_Producto.Append;
      CD_Producto_idDetalleOS.AsInteger:= vselProducto.ZQ_ProductoID_DETALLE_OS.AsInteger;
      CD_Producto_idProducto.AsInteger:= vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
      CD_Producto_idCPBDetalle.AsInteger:= id_cpb_detalle;
      CD_Producto_producto.AsString:= nombre_producto; //producto real
      CD_Producto_producto_imprimir.AsString:= ''; //renglon que se imprime
      CD_Producto_afiliado_nombre.AsString:= vselProducto.ZQ_ProductoAFILIADO_NOMBRE.AsString;
      CD_Producto_afiliado_numero.AsString:= vselProducto.ZQ_ProductoAFILIADO_NUMERO.AsString;

      ZQ_CpbProducto.Append;
      ZQ_CpbProductoID_COMPROBANTE.AsInteger:= id_comprobante;
      ZQ_CpbProductoID_COMPROBANTE_DETALLE.AsInteger:= id_cpb_detalle;
      ZQ_CpbProductoID_PRODUCTO.AsInteger:= vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
      ZQ_CpbProductoID_AUXILIAR.AsInteger:= vselProducto.ZQ_ProductoID_PERSONA_AFILIADO.AsInteger;
      ZQ_CpbProductoDETALLE.AsString:= ''; //renglon que se imprime
      ZQ_CpbProductoCANTIDAD.AsFloat:= vselProducto.ZQ_ProductoCANTIDAD.AsFloat;
      ZQ_CpbProductoIMPORTE_FINAL.AsFloat:= vselProducto.ZQ_ProductoMONTO_DESCONTADO.AsFloat;
      ZQ_CpbProductoIMPORTE_UNITARIO.AsFloat:= vselProducto.ZQ_ProductoMONTO_DESCONTADO.AsFloat;
      ZQ_CpbProductoIMPORTE_VENTA.AsFloat:= vselProducto.ZQ_ProductoMONTO_DESCONTADO.AsFloat;
      ZQ_CpbProductoPORC_IVA.AsFloat:= vselProducto.ZQ_ProductoIMPUESTO_IVA.AsFloat;
      if (ZQ_CpbProductoPORC_IVA.AsFloat = 0) or (ZQ_CpbProductoPORC_IVA.IsNull) then
        ZQ_CpbProductoPORC_IVA.AsFloat:= 0.21;        
    end
    else
      CD_Producto.Filtered:= false;
  end;

  if vselProducto.SeleccionarYSalir then
    vselProducto.Close;
end;


procedure TFABM_CPB_FacturaObraSocial.onSelTodosProducto;
var
  nombre_producto: string;
  id_cpb_detalle: integer;
begin
  if not vselProducto.ZQ_Producto.IsEmpty then
  begin
    vselProducto.ZQ_Producto.First;
    while not vselProducto.ZQ_Producto.Eof do
    begin
      CD_Producto.Filter:= 'idDetalleOS = ' + vselProducto.ZQ_ProductoID_DETALLE_OS.AsString;
      CD_Producto.Filtered:= true;
      if not CD_Producto.IsEmpty then //si el producto ya esta cargado, paso al proximo
      begin
        CD_Producto.Filtered:= false;
      end
      else
      begin
        id_cpb_detalle:= ZSeq_CpbProducto.GetNextValue;

        nombre_producto:= vselProducto.ZQ_ProductoPRODUCTO_NOMBRE.AsString + ' ' +
          vselProducto.ZQ_ProductoPRODUCTO_MARCA.AsString + ' ' +
          vselProducto.ZQ_ProductoPRODUCTO_MEDIDA.AsString + ' ' +
          vselProducto.ZQ_ProductoPRODUCTO_COLOR.AsString + ' ' +
          vselProducto.ZQ_ProductoPRODUCTO_TIPO_ARTICULO.AsString + ' ' +
          vselProducto.ZQ_ProductoPRODUCTO_ARTICULO.AsString;

        CD_Producto.Filtered:= false;
        CD_Producto.Append;
        CD_Producto_idDetalleOS.AsInteger:= vselProducto.ZQ_ProductoID_DETALLE_OS.AsInteger;
        CD_Producto_idProducto.AsInteger:= vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
        CD_Producto_idCPBDetalle.AsInteger:= id_cpb_detalle;
        CD_Producto_producto.AsString:= nombre_producto; //producto real
        CD_Producto_producto_imprimir.AsString:= ''; //renglon que se imprime
        CD_Producto_afiliado_nombre.AsString:= vselProducto.ZQ_ProductoAFILIADO_NOMBRE.AsString;
        CD_Producto_afiliado_numero.AsString:= vselProducto.ZQ_ProductoAFILIADO_NUMERO.AsString;

        ZQ_CpbProducto.Append;
        ZQ_CpbProductoID_COMPROBANTE.AsInteger:= id_comprobante;
        ZQ_CpbProductoID_COMPROBANTE_DETALLE.AsInteger:= id_cpb_detalle;
        ZQ_CpbProductoID_PRODUCTO.AsInteger:= vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
        ZQ_CpbProductoID_AUXILIAR.AsInteger:= vselProducto.ZQ_ProductoID_PERSONA_AFILIADO.AsInteger;
        ZQ_CpbProductoDETALLE.AsString:= ''; //renglon que se imprime
        ZQ_CpbProductoCANTIDAD.AsFloat:= vselProducto.ZQ_ProductoCANTIDAD.AsFloat;
        ZQ_CpbProductoIMPORTE_FINAL.AsFloat:= vselProducto.ZQ_ProductoMONTO_DESCONTADO.AsFloat;
        ZQ_CpbProductoIMPORTE_UNITARIO.AsFloat:= vselProducto.ZQ_ProductoMONTO_DESCONTADO.AsFloat;
        ZQ_CpbProductoIMPORTE_VENTA.AsFloat:= vselProducto.ZQ_ProductoMONTO_DESCONTADO.AsFloat;
        ZQ_CpbProductoPORC_IVA.AsFloat:= vselProducto.ZQ_ProductoIMPUESTO_IVA.AsFloat;
        if (ZQ_CpbProductoPORC_IVA.AsFloat = 0) or (ZQ_CpbProductoPORC_IVA.IsNull) then
          ZQ_CpbProductoPORC_IVA.AsFloat:= 0.21;
      end;

      vselProducto.ZQ_Producto.Next;
    end;
  end;

  vselProducto.Close;
end;


procedure TFABM_CPB_FacturaObraSocial.PopItemProducto_AgregarClick(Sender: TObject);
begin
  agregarProducto;
end;


procedure TFABM_CPB_FacturaObraSocial.agregarProducto();
begin
  if ZQ_ComprobanteID_OBRA_SOCIAL.IsNull then
  begin
    ShowMessage('No se selecciono ninguna Obra Social, Verifique');
    exit;
  end;

  if not Assigned(vselProducto) then
    vselProducto:= TFOP_BuscarProductosOS.Create(nil);

  vselProducto.ISBuscarProducto.SQL_Where.ValueFromIndex[2]:= IntToStr(ZQ_ComprobanteID_OBRA_SOCIAL.AsInteger);
  vselProducto.ZQ_Producto.Close;
  vselProducto.OnSeleccionar:= onSelProducto;
  vselProducto.OnSeleccionarTodos:= onSelTodosProducto;
  vselProducto.btnSeleccionarTodos.Visible:= ivAlways;
  vselProducto.SeleccionarYSalir:= false;
  vselProducto.ShowModal;
end;


procedure TFABM_CPB_FacturaObraSocial.PopItemProducto_QuitarClick(Sender: TObject);
begin
  if confirmarComprobante and (ZQ_CpbProductoCANTIDAD.AsFloat <> 0) then
    exit;

  if not ZQ_CpbProducto.IsEmpty then
  begin
    CD_Producto.Locate('idCPBDetalle', ZQ_CpbProductoID_COMPROBANTE_DETALLE.AsInteger, []);
    CD_Producto.Delete;
    ZQ_CpbProducto.Delete;
  end
end;


procedure TFABM_CPB_FacturaObraSocial.btnEliminarProductoClick(Sender: TObject);
begin
  if confirmarComprobante and (ZQ_CpbProductoCANTIDAD.AsFloat <> 0) then
    exit;

  if not ZQ_CpbProducto.IsEmpty then
  begin
    CD_Producto.Locate('idCPBDetalle', ZQ_CpbProductoID_COMPROBANTE_DETALLE.AsInteger, []);
    CD_Producto.Delete;
    ZQ_CpbProducto.Delete;
  end
end;


procedure TFABM_CPB_FacturaObraSocial.ZQ_CpbProductoAfterScroll(DataSet: TDataSet);
begin
  ZQ_Imagen.Close;

  if ZQ_CpbProducto.IsEmpty then
    exit;
end;


procedure TFABM_CPB_FacturaObraSocial.btnEnviarMailClick(Sender: TObject);
var
  destino, archivoPDF: string;
begin
  destino:= '';
  archivoPDF:= '';

  if ZQ_VerCpb.IsEmpty then
    exit;

  ZQ_BuscarMail.Close;
  ZQ_BuscarMail.SQL.Text:= Format('select p.email from optica_os p where p.id_os = %d', [ZQ_VerCpbID_OBRA_SOCIAL.AsInteger]);
  ZQ_BuscarMail.Open;

  if (not ZQ_BuscarMailEMAIL.IsNull) or (ZQ_BuscarMailEMAIL.AsString <> '') then
    destino:= ZQ_BuscarMailEMAIL.AsString;

  if not Assigned(FImpresion_Comprobantes) then
    FImpresion_Comprobantes := TFImpresion_Comprobantes.Create(nil);
  FImpresion_Comprobantes.cargarDatos(ZQ_VerCpbID_COMPROBANTE.AsInteger, -1, -1, ZQ_VerCpbID_OBRA_SOCIAL.AsInteger, false);
  archivoPDF:= FImpresion_Comprobantes.generarPDF;

  //if not Assigned(TFMailEnviar) then
    Application.CreateForm(TFMailEnviar, FMailEnviar);
  FMailEnviar.enviarConAdjunto(destino, dm.ZQ_SucursalNOMBRE.AsString, archivoPDF);
  FMailEnviar.ShowModal;
end;


procedure TFABM_CPB_FacturaObraSocial.btnConfirmarClick(Sender: TObject);
var
  recno, estado: Integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or ((estado = ESTADO_CONFIRMADO) or (estado = ESTADO_ANULADO))) then
    exit;

  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;

  if (application.MessageBox(pchar('�Desea confirmar la Factura de Obra Social seleccionada?'), 'ABM Factura de Obra Social', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante]) then
    begin
      ZQ_Comprobante.Close;
      ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
      ZQ_Comprobante.Open;

      ZQ_Comprobante.Edit;
      ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_CONFIRMADO;

      try
        if not DM.ISModelo.finalizar_transaccion(transaccion_ABM) then
          dm.ISModelo.cancelar_transaccion(transaccion_ABM)
      except
        begin
          Application.MessageBox('No se pudo confirmar la Factura de Obra Social.', 'Atenci�n', MB_OK + MB_ICONINFORMATION);
          exit;
        end
      end;
    end;

  recNo:= ZQ_VerCpb.RecNo;
  ZQ_VerCpb.Refresh;
  ZQ_VerCpb.RecNo:= recNo;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_CPB_FacturaObraSocial.ZQ_CpbProductoCANTIDADChange(Sender: TField);
begin

end;


//Para renombrar el procedimiento Ctrl+Del que viene por defecto en las grillas

procedure TFABM_CPB_FacturaObraSocial.DBGridEditar_ProductoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  columna: string;
begin
  columna:= (sender as tdbgrid).SelectedField.FullName;

  if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
  begin
    Key:= 0; {ignore}
    btnEliminarProducto.Click;
  end
end;


procedure TFABM_CPB_FacturaObraSocial.EKSuma_ProductosSumListChanged(Sender: TObject);
var
  cantidad, total: string;
begin
  cantidad:= FormatFloat('###,###,###,##0.00', ISSuma_Productos.SumCollection[0].SumValue);
  total:= FormatFloat('$ ###,###,###,##0.00', ISSuma_Productos.SumCollection[1].SumValue);

  editTotalProductos.Text:= cantidad;
  editTotalFinal.Text:= total;
end;


procedure TFABM_CPB_FacturaObraSocial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ISOrd_VerCpb.GuardarConfigColumnas;
  ISOrd_VerCpb_Producto.GuardarConfigColumnas;
  ISOrd_EditarProducto.GuardarConfigColumnas;
end;


procedure TFABM_CPB_FacturaObraSocial.DBGridEditar_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridEditar_Producto, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_FacturaObraSocial.DBGridListaCpbDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (ZQ_VerCpbID_COMP_ESTADO.AsInteger = ESTADO_CONFIRMADO) then //si el registro esta dado de baja
  begin
    if not ZQ_VerCpbPUNTO_VENTA.IsNull then //si tiene puento de venta esta facturada
    begin
      DBGridListaCpb.Canvas.Brush.Color:= StaticTxtLiquidado.Color;
      if (gdFocused in State) or (gdSelected in State) then
        DBGridListaCpb.Canvas.Font.Style:= DBGridListaCpb.Canvas.Font.Style + [fsBold];
    end
    else
    begin
      DBGridListaCpb.Canvas.Brush.Color:= StaticTxtConfirmado.Color;
      if (gdFocused in State) or (gdSelected in State) then
        DBGridListaCpb.Canvas.Font.Style:= DBGridListaCpb.Canvas.Font.Style + [fsBold];
    end
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


procedure TFABM_CPB_FacturaObraSocial.DBGridCpbActual_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridCpbActual_Producto, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_FacturaObraSocial.btnBajaClick(Sender: TObject);
var
  recno, estado: Integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or ((estado = ESTADO_ANULADO))) then
    exit;

  if not ((ZQ_VerCpbPUNTO_VENTA.IsNull) and (ZQ_VerCpbNUMERO_CPB.IsNull)) then
  begin
    Application.MessageBox(PChar('El comprobante seleccionado ya esta Facturado y no puede Anularse.'), 'Anular Factura OS', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;

  if (application.MessageBox(pchar('�Desea anular la Factura de OS seleccionada?'), 'ABM Factura OS', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante]) then
    begin
      ZQ_Comprobante.Close;
      ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
      ZQ_Comprobante.Open;

      ZQ_Comprobante.Edit;
      ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_ANULADO;
      ZQ_ComprobanteFECHA_ANULADO.AsDateTime:= dm.ISModelo.FechayHora;

      ZQ_VerCpb_Producto.First;
      while not ZQ_VerCpb_Producto.Eof do
      begin
        ZQ_ActualizarDetalleOS.ParamByName('id').AsInteger:= ZQ_VerCpb_ProductoID_DETALLE_OS.AsInteger;
        ZQ_ActualizarDetalleOS.ParamByName('id_factura').clear;
        ZQ_ActualizarDetalleOS.ParamByName('detalle').clear;
        ZQ_ActualizarDetalleOS.ExecSQL;

        ZQ_VerCpb_Producto.Next;
      end;

      try
        if not DM.ISModelo.finalizar_transaccion(transaccion_ABM) then
          dm.ISModelo.cancelar_transaccion(transaccion_ABM)
      except
        begin
          Application.MessageBox('No se pudo anular la Factura de OS.', 'Atenci�n', MB_OK + MB_ICONINFORMATION);
          exit;
        end
      end;
    end;

  recNo:= ZQ_VerCpb.RecNo;
  ZQ_VerCpb.Refresh;
  ZQ_VerCpb.RecNo:= recNo;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_CPB_FacturaObraSocial.btnImprimirRemitoClick(
  Sender: TObject);
var
  estado: Integer;
  obra_social: integer;
begin
  if ZQ_VerCpb.IsEmpty then
    exit;

  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if (estado <> ESTADO_CONFIRMADO) then
  begin
    Application.MessageBox(PChar('No se puede hacer un Remito de un comprobante Sin Confirmar o Anulado.'), 'Remito OS', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  obra_social:= -1;
  if not ZQ_VerCpbID_OBRA_SOCIAL.IsNull then
    obra_social:= ZQ_VerCpbID_OBRA_SOCIAL.AsInteger;

  if not Assigned(FImpresion_Comprobantes) then
    FImpresion_Comprobantes:= TFImpresion_Comprobantes.Create(nil);
  FImpresion_Comprobantes.cargarDatos(ZQ_VerCpbID_COMPROBANTE.AsInteger, -1, -1, obra_social, false);
  FImpresion_Comprobantes.imprimir;
end;


procedure TFABM_CPB_FacturaObraSocial.btFacturarFiscalClick(Sender: TObject);
var
  fiscal_Impresora, fiscal_ruta, fiscal_sistema: string;
  estado: Integer;
begin
  if ZQ_VerCpb.IsEmpty then
    exit;

  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if (estado <> ESTADO_CONFIRMADO) then
  begin
    Application.MessageBox(PChar('No se puede Facturar un comprobante Sin Confirmar o Anulado.'), 'Facturaci�n OS', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  if not ((ZQ_VerCpbPUNTO_VENTA.IsNull) and (ZQ_VerCpbNUMERO_CPB.IsNull)) then
  begin
    Application.MessageBox(PChar('El comprobante seleccionado ya esta Facturado.'), 'Facturaci�n OS', MB_OK + MB_ICONINFORMATION);
    Exit;
  end;

  dm.ZQ_Fiscal.Close;
  dm.ZQ_Fiscal.ParamByName('id_fiscal').AsInteger:= ID_FISCAL;
  dm.ZQ_Fiscal.Open;

  fiscal_Impresora:= DM.ZQ_FiscalMODELO.AsString;
  fiscal_ruta:= DM.ZQ_FiscalRUTA_ARCHIVO.AsString;
  fiscal_sistema:= DM.ZQ_FiscalSISTEMA.AsString;

  if (application.MessageBox(pchar('Desea Imprimir el Comprobante Nro:' + ZQ_VerCpbCODIGO.AsString + ' ?'), 'Impresi�n de Comprobantes', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
  begin
    if fiscal_sistema = 'DELPHI' then //IMPRIMIR DESDE ELPHI
    begin
      ShellExecute(FPrincipal.Handle, nil, pchar(fiscal_ruta), pchar('-l'+IntToStr(ZQ_VerCpbID_COMPROBANTE.AsInteger)+' -cO'+' -id'+inttostr(ID_FISCAL)), nil, SW_SHOWNORMAL);
    end;
  end;
end;


procedure TFABM_CPB_FacturaObraSocial.ZIBEventEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
var
  id_cpb: integer;
begin
  if EventName = 'FACTURA_IMPRESA' then
  begin
    id_cpb:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
    ZQ_VerCpb.Refresh;
    ZQ_VerCpb.Locate('ID_COMPROBANTE', VarArrayOf([id_cpb]), []);
  end;
end;

end.

