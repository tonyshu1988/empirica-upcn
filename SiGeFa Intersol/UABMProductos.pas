unit UABMProductos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls,
  ExtCtrls, Grids, DBGrids, EKDBGrid, dxBar, dxBarExtItems, StdCtrls,
  DBCtrls, Mask, EKBusquedaAvanzada, EKOrdenarGrilla, EKLlenarCombo, Menus,
  Buttons, ZStoredProcedure, jpeg, ExtDlgs, EKListadoSQL, DBClient,
  EKVistaPreviaQR, ActnList, XPStyleActnCtrls, ActnMan, QuickRpt, QRCtrls,
  qrFramelines, shellapi, ZSqlUpdate, cxClasses, ISOrdenarGrilla,
  ISBusquedaAvanzada, ISListadoSQL, ISVistaPreviaQR, ISDBGrid;

type
  TFABMProductos = class(TForm)
    ZQ_ProductoCabecera: TZQuery;
    ZQ_ProductoCabeceraID_PROD_CABECERA: TIntegerField;
    ZQ_ProductoCabeceraID_MARCA: TIntegerField;
    ZQ_ProductoCabeceraNOMBRE: TStringField;
    ZQ_ProductoCabeceraDESCRIPCION: TStringField;
    ZQ_ProductoCabeceraIMAGEN: TBlobField;
    ZQ_ProductoCabeceraBAJA: TStringField;
    ZQ_ProductoCabeceraID_ARTICULO: TIntegerField;
    DS_ProductoCabecera: TDataSource;
    dxBarABM: TdxBarManager;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnBuscar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimirListado: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    PanelCabecera: TPanel;
    ZQ_DetalleProducto: TZQuery;
    DS_DetalleProducto: TDataSource;
    ZQ_Articulo: TZQuery;
    ZQ_ArticuloID_ARTICULO: TIntegerField;
    ZQ_ArticuloDESCRIPCION: TStringField;
    ZQ_ArticuloID_TIPO_ARTICULO: TIntegerField;
    ZQ_ProductoCabecera_articulo: TStringField;
    DS_Articulo: TDataSource;
    ZQ_Marca: TZQuery;
    DS_Marca: TDataSource;
    ZQ_MarcaID_MARCA: TIntegerField;
    ZQ_MarcaNOMBRE_MARCA: TStringField;
    ZQ_ProductoCabecera_marca: TStringField;
    PopupMenuDetalleProd: TPopupMenu;
    AgregaDetalle: TMenuItem;
    QuitarDetalle: TMenuItem;
    EditarDetalle: TMenuItem;
    ZQ_MedidaArticulo: TZQuery;
    ZQ_MedidaArticuloID_ARTICULO: TIntegerField;
    ZQ_MedidaArticuloID_MEDIDA: TIntegerField;
    ZQ_MedidaArticuloMEDIDA: TStringField;
    DS_MedidaArticulo: TDataSource;
    ZSP_GenerarIDProdDeralle: TZStoredProc;
    ZSP_GenerarIDProdDeralleID: TIntegerField;
    ZQ_DetalleProducto_medida: TStringField;
    ZSP_GenerarIDProdCabecera: TZStoredProc;
    ZSP_GenerarIDProdCabeceraID: TIntegerField;
    ZQ_ProductoCabeceraCOD_CORTO: TStringField;
    buscarImagen: TOpenPictureDialog;
    StaticTxtBaja: TStaticText;
    lblResultadoBusqueda: TLabel;
    ZQ_ArticuloBAJA: TStringField;
    ZQ_ArticuloBUSQUEDA: TStringField;
    ZQ_MarcaBAJA: TStringField;
    ZQ_ArticuloTIPO_ARTICULO: TStringField;
    ZQ_ProductoCabecera_tipoArticulo: TStringField;
    PopMenuMedidas: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    CDMedidas: TClientDataSet;
    CDMedidasid_medida: TIntegerField;
    CDMedidasmedida: TStringField;
    DS_Medidas: TDataSource;
    ZQ_Color: TZQuery;
    ZQ_ProductoCabeceraCOLOR: TIntegerField;
    DS_Color: TDataSource;
    ZQ_MarcaCODIGO_MARCA: TIntegerField;
    ZQ_MarcaBUSQUEDA: TStringField;
    ZQ_ExisteCodigo: TZQuery;
    ZQ_ExisteCodigoID_PROD_CABECERA: TIntegerField;
    ZQ_ExisteCodigoID_MARCA: TIntegerField;
    ZQ_ExisteCodigoNOMBRE: TStringField;
    ZQ_ExisteCodigoDESCRIPCION: TStringField;
    ZQ_ExisteCodigoIMAGEN: TBlobField;
    ZQ_ExisteCodigoBAJA: TStringField;
    ZQ_ExisteCodigoID_ARTICULO: TIntegerField;
    ZQ_ExisteCodigoCOD_CORTO: TStringField;
    ZQ_ExisteCodigoCOLOR: TIntegerField;
    ZQ_ColorID_COLOR: TIntegerField;
    ZQ_ColorCODIGO_COLOR: TIntegerField;
    ZQ_ColorNOMBRE: TStringField;
    ZQ_ColorREFERENCIA: TStringField;
    ZQ_ColorBAJA: TStringField;
    ZQ_ColorRESUMEN: TStringField;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    RepProductoListado: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLblTituloListado: TQRLabel;
    RepProductoListado_Subtitulo: TQRLabel;
    RepProductoListado_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand11: TQRBand;
    QRlblPieDePaginaListado: TQRLabel;
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
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    BandaMedidasDatos: TQRSubDetail;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    BandaMedidasTitulo: TQRChildBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    ZQ_ProductoCabecera_color: TStringField;
    QRFrameline1: TQRFrameline;
    QRShape1: TQRShape;
    QRFrameline2: TQRFrameline;
    QRFrameline3: TQRFrameline;
    QRFrameline4: TQRFrameline;
    QRLabel10: TQRLabel;
    panelImprimirListado: TPanel;
    Panel1: TPanel;
    RadioGroupImprimirListado: TRadioGroup;
    btnImprimirListado_Aceptar: TButton;
    btnImprimirListado_Salir: TButton;
    btBuscarEnGoogle: TdxBarLargeButton;
    BajaDetalle1: TMenuItem;
    N1: TMenuItem;
    VerBajas1: TMenuItem;
    VerActivos1: TMenuItem;
    ReactivarDetalle1: TMenuItem;
    btnExcel: TdxBarLargeButton;
    ZQ_Precios: TZQuery;
    DS_Precios: TDataSource;
    ZQ_DetalleProductoID_PRODUCTO: TIntegerField;
    ZQ_DetalleProductoID_MEDIDA: TIntegerField;
    ZQ_DetalleProductoID_PROD_CABECERA: TIntegerField;
    ZQ_DetalleProductoDESCRIPCION: TStringField;
    ZQ_DetalleProductoCOD_CORTO: TStringField;
    ZQ_DetalleProductoCODIGO_BARRA: TStringField;
    ZQ_DetalleProductoSTOCK_MAX: TFloatField;
    ZQ_DetalleProductoSTOCK_MIN: TFloatField;
    ZQ_DetalleProductoLLEVAR_STOCK: TStringField;
    ZQ_DetalleProductoBAJA: TStringField;
    ZQ_PreciosID_PRECIO: TIntegerField;
    ZQ_PreciosID_PRODUCTO: TIntegerField;
    ZQ_PreciosID_SUCURSAL: TIntegerField;
    ZQ_PreciosPRECIO_COSTO: TFloatField;
    ZQ_PreciosPRECIO_VENTA: TFloatField;
    ZQ_PreciosCOEF_GANANCIA: TFloatField;
    ZQ_PreciosCOEF_DESCUENTO: TFloatField;
    ZQ_PreciosIMPUESTO_INTERNO: TFloatField;
    ZQ_PreciosIMPUESTO_IVA: TFloatField;
    ZQ_PreciosPRECIO_COSTO_CIMPUESTOS: TFloatField;
    ZQ_PreciosIMPUESTO_ADICIONAL1: TFloatField;
    ZQ_PreciosIMPUESTO_ADICIONAL2: TFloatField;
    ZQ_PreciosPRECIO1: TFloatField;
    ZQ_PreciosPRECIO2: TFloatField;
    ZQ_PreciosPRECIO3: TFloatField;
    ZQ_PreciosPRECIO4: TFloatField;
    ZQ_PreciosPRECIO5: TFloatField;
    ZUpdateSQL1: TZUpdateSQL;
    ZQ_DetalleProductoPRECIO_COSTO: TFloatField;
    ZQ_DetalleProductoPRECIO_VENTA: TFloatField;
    ZQ_DetalleProductoCOEF_GANANCIA: TFloatField;
    ZQ_DetalleProductoCOEF_DESCUENTO: TFloatField;
    ZQ_DetalleProductoIMPUESTO_INTERNO: TFloatField;
    ZQ_DetalleProductoIMPUESTO_IVA: TFloatField;
    ZQ_DetalleProductoPRECIO_COSTO_CIMPUESTOS: TFloatField;
    ZQ_DetalleProductoIMPUESTO_ADICIONAL1: TFloatField;
    ZQ_DetalleProductoIMPUESTO_ADICIONAL2: TFloatField;
    ZQ_DetalleProductoPRECIO1: TFloatField;
    ZQ_DetalleProductoPRECIO2: TFloatField;
    ZQ_DetalleProductoPRECIO3: TFloatField;
    ZQ_DetalleProductoPRECIO4: TFloatField;
    ZQ_DetalleProductoPRECIO5: TFloatField;
    ZQ_TodasMedidas: TZQuery;
    ZQ_TodasMedidasID_MEDIDA: TIntegerField;
    ZQ_TodasMedidasMEDIDA: TStringField;
    ZQ_TodasMedidasBAJA: TStringField;
    ZUpdateSQL2: TZUpdateSQL;
    Asociar_producto_pto_salida: TZStoredProc;
    grillaDetalle: TEKDBGrid;
    PanelDetalle: TPanel;
    PCabeceraProducto: TPanel;
    PContenedor: TPanel;
    PProducto: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label6: TLabel;
    Shape1: TShape;
    edImagen: TDBImage;
    edNombre: TDBEdit;
    DBEdit7: TDBEdit;
    edDescripcion: TDBMemo;
    cmbArticulo: TDBLookupComboBox;
    cmbMarca: TDBLookupComboBox;
    edCodCorto: TDBEdit;
    cmbColor: TDBLookupComboBox;
    PDatosdetalle: TPanel;
    PContenedorDetalle: TPanel;
    Label11: TLabel;
    Panel2: TPanel;
    btnGrupoAceptar: TBitBtn;
    btnGrupoCancelar: TBitBtn;
    Label9: TLabel;
    PMedidas: TPanel;
    Label5: TLabel;
    grillaMedidas: TDBGrid;
    PContenedorDetallePrecios: TPanel;
    PDetalle_Prod: TPanel;
    LabelCodCorto: TLabel;
    Label22: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label31: TLabel;
    LStockActual: TLabel;
    EDDCODCORTO: TDBEdit;
    EDDCODBARRAS: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    EditStockActual: TEdit;
    PPrecios: TPanel;
    Label23: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    lblImpuesto_Adicional2: TLabel;
    lblImpuesto_Adicional1: TLabel;
    Label10: TLabel;
    lbPrecio1: TLabel;
    lbPrecio2: TLabel;
    lbPrecio3: TLabel;
    lbPrecio4: TLabel;
    lbPrecio5: TLabel;
    Label7: TLabel;
    DBEditPrecioCostoNeto: TDBEdit;
    DBEditCoefGanancia: TDBEdit;
    DBEditImpuestoInterno: TDBEdit;
    DBEditPrecioVenta: TDBEdit;
    DBEditCoefDescuento: TDBEdit;
    DBEditImpuestoIva: TDBEdit;
    DBEditImpuestoAdicional2: TDBEdit;
    DBEditImpuestoAdicional1: TDBEdit;
    DBEditPrecioCostoCImpuestos: TDBEdit;
    DBEditPrecio1: TDBEdit;
    DBEditPrecio2: TDBEdit;
    DBEditPrecio3: TDBEdit;
    DBEditPrecio4: TDBEdit;
    DBEditPrecio5: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ISBuscar: TISBusquedaAvanzada;
    ISOrdenar: TISOrdenarGrilla;
    ISListadoMarca: TISListadoSQL;
    ISListadoArticulo: TISListadoSQL;
    ISListadoColor: TISListadoSQL;
    ISListadoMedidas: TISListadoSQL;
    ISOrdenarDetalle: TISOrdenarGrilla;
    ISVistaPreviaListado: TISVistaPreviaQR;
    Grilla: TISDBGrid;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure AgregaDetalleClick(Sender: TObject);
    procedure EditarDetalleClick(Sender: TObject);
    procedure ZQ_ProductoCabeceraAfterScroll(DataSet: TDataSet);
    procedure ZQ_ArticuloAfterScroll(DataSet: TDataSet);
    procedure edImagenDblClick(Sender: TObject);
    function validarcampos(): Boolean;
    function validarcamposDetalle(): Boolean;
    procedure CargaImagenProporcionado(Archivo: string);
    procedure tabsChanging(Sender: TObject; var AllowChange: Boolean);
    procedure cmbMarcaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cmbArticuloKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    function validarcamposDetalle2(): Boolean;
    procedure QuitarDetalleClick(Sender: TObject);
    procedure ZQ_ColorAfterScroll(DataSet: TDataSet);
    function armarCodBarras(cod1, cod2, cod3: string): string;
    procedure edCodCortoExit(Sender: TObject);
    procedure cmbColorKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    //------TECLAS RAPIDAS
    procedure ABuscarExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AReactivarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure btnImprimirListadoClick(Sender: TObject);
    procedure btnImprimirListado_SalirClick(Sender: TObject);
    procedure btnImprimirListado_AceptarClick(Sender: TObject);
    procedure btBuscarEnGoogleClick(Sender: TObject);
    procedure actualizarPrecios(llamador: string);
    procedure DBEditCoefGananciaEnter(Sender: TObject);
    procedure DBEditPrecioVentaEnter(Sender: TObject);
    procedure grillaDetalleDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnGrupoAceptarClick(Sender: TObject);
    procedure HabilitarCampos;
    procedure btnGrupoCancelarClick(Sender: TObject);
    procedure BajaDetalle1Click(Sender: TObject);
    procedure VerBajas1Click(Sender: TObject);
    procedure VerActivos1Click(Sender: TObject);
    procedure ReactivarDetalle1Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure ZQ_PreciosPRECIO_COSTOChange(Sender: TField);
    procedure ZQ_PreciosCOEF_GANANCIAChange(Sender: TField);
    procedure ZQ_PreciosPRECIO_VENTAChange(Sender: TField);
    procedure ZQ_PreciosIMPUESTO_IVAChange(Sender: TField);
    procedure ZQ_PreciosIMPUESTO_ADICIONAL1Change(Sender: TField);
    procedure ZQ_PreciosIMPUESTO_ADICIONAL2Change(Sender: TField);
    procedure EditStockActualExit(Sender: TObject);
    procedure Splitter1CanResize(Sender: TObject; var NewSize: Integer; var Accept: Boolean);
    procedure HabilitarPopMenu(estado: integer);
    procedure PopUpItem_AgrandarClick(Sender: TObject);
    procedure PopUpItem_ReducirClick(Sender: TObject);
    procedure GrillaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    campoQueCambia: string; //guardo que campo se tiene que recalcular automatica// cuando cambio el precio de costo
  public
    { Public declarations }
  end;

var
  FABMProductos: TFABMProductos;


const
  transaccion_ABMProductos = 'ABM PRODUCTOS';

implementation

uses UDM, UPrincipal, UUtilidades, Math;

{$R *.dfm}

procedure TFABMProductos.HabilitarPopMenu(estado: integer);
begin
  case estado of
    0: begin
        PopupMenuDetalleProd.Items.Items[0].Enabled:= true; //agregar
        PopupMenuDetalleProd.Items.Items[1].Enabled:= true; //editar
        PopupMenuDetalleProd.Items.Items[2].Enabled:= true; //quitar
        PopupMenuDetalleProd.Items.Items[3].Enabled:= true; //
        PopupMenuDetalleProd.Items.Items[4].Enabled:= true; //ver baja
        PopupMenuDetalleProd.Items.Items[5].Enabled:= true; //baja detalle
        PopupMenuDetalleProd.Items.Items[6].Enabled:= true; //ver activos
        PopupMenuDetalleProd.Items.Items[7].Enabled:= true; //reactivar
      end;   
    1: begin
        PopupMenuDetalleProd.Items.Items[0].Enabled:= true;
        PopupMenuDetalleProd.Items.Items[1].Enabled:= true;
        PopupMenuDetalleProd.Items.Items[2].Enabled:= true;
        PopupMenuDetalleProd.Items.Items[3].Enabled:= true;
        PopupMenuDetalleProd.Items.Items[4].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[5].Enabled:= true;
        PopupMenuDetalleProd.Items.Items[6].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[7].Enabled:= true;
      end;
    2: begin
        PopupMenuDetalleProd.Items.Items[0].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[1].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[2].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[3].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[4].Enabled:= true;
        PopupMenuDetalleProd.Items.Items[5].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[6].Enabled:= true;
        PopupMenuDetalleProd.Items.Items[7].Enabled:= false;
      end;
    3: begin
        PopupMenuDetalleProd.Items.Items[0].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[1].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[2].Enabled:= true;
        PopupMenuDetalleProd.Items.Items[3].Enabled:= true;
        PopupMenuDetalleProd.Items.Items[4].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[5].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[6].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[7].Enabled:= false;
      end;
    4: begin
        PopupMenuDetalleProd.Items.Items[0].Enabled:= true;
        PopupMenuDetalleProd.Items.Items[1].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[2].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[3].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[4].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[5].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[6].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[7].Enabled:= false;
      end;
    5: begin
        PopupMenuDetalleProd.Items.Items[0].Enabled:= true;
        PopupMenuDetalleProd.Items.Items[1].Enabled:= true;
        PopupMenuDetalleProd.Items.Items[2].Enabled:= true;
        PopupMenuDetalleProd.Items.Items[3].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[4].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[5].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[6].Enabled:= false;
        PopupMenuDetalleProd.Items.Items[7].Enabled:= false;
      end;
  end;
end;


procedure TFABMProductos.HabilitarCampos();
begin
  if (imp_ad1_nombre <> '') then
  begin
    lblImpuesto_Adicional1.Caption:= imp_ad1_nombre + ' (%)';
    lblImpuesto_Adicional1.Visible:= true;
    DBEditImpuestoAdicional1.Visible:= true;
    grillaDetalle.Columns[GetIndexField(grillaDetalle, 'IMPUESTO_ADICIONAL1')].Title.Caption:= imp_ad1_nombre;
    grillaDetalle.Columns[GetIndexField(grillaDetalle, 'IMPUESTO_ADICIONAL1')].Visible:= true;
  end;

  if (imp_ad2_nombre <> '') then
  begin
    lblImpuesto_Adicional2.Caption:= imp_ad2_nombre + ' (%)';
    lblImpuesto_Adicional2.Visible:= true;
    DBEditImpuestoAdicional2.Visible:= true;
    grillaDetalle.Columns[GetIndexField(grillaDetalle, 'IMPUESTO_ADICIONAL2')].Title.Caption:= imp_ad2_nombre;
    grillaDetalle.Columns[GetIndexField(grillaDetalle, 'IMPUESTO_ADICIONAL2')].Visible:= true;
  end;

  if (precio1 <> '') then
  begin
    lbPrecio1.Caption:= precio1;
    lbPrecio1.Visible:= true;
    DBEditPrecio1.Visible:= true;
    grillaDetalle.Columns[GetIndexField(grillaDetalle, 'PRECIO1')].Title.Caption:= precio1;
    grillaDetalle.Columns[GetIndexField(grillaDetalle, 'PRECIO1')].Visible:= true;
  end;

  if (precio2 <> '') then
  begin
    lbPrecio2.Caption:= precio2;
    lbPrecio2.Visible:= true;
    DBEditPrecio2.Visible:= true;
    grillaDetalle.Columns[GetIndexField(grillaDetalle, 'PRECIO2')].Title.Caption:= precio2;
    grillaDetalle.Columns[GetIndexField(grillaDetalle, 'PRECIO2')].Visible:= true;
  end;

  if (precio3 <> '') then
  begin
    lbPrecio3.Caption:= precio3;
    lbPrecio3.Visible:= true;
    DBEditPrecio3.Visible:= true;
    grillaDetalle.Columns[GetIndexField(grillaDetalle, 'PRECIO3')].Title.Caption:= precio3;
    grillaDetalle.Columns[GetIndexField(grillaDetalle, 'PRECIO3')].Visible:= true;
  end;

  if (precio4 <> '') then
  begin
    lbPrecio4.Caption:= precio4;
    lbPrecio4.Visible:= true;
    DBEditPrecio4.Visible:= true;
    grillaDetalle.Columns[GetIndexField(grillaDetalle, 'PRECIO4')].Title.Caption:= precio4;
    grillaDetalle.Columns[GetIndexField(grillaDetalle, 'PRECIO4')].Visible:= true;
  end;

  if (precio5 <> '') then
  begin
    lbPrecio5.Caption:= precio5;
    lbPrecio5.Visible:= true;
    DBEditPrecio5.Visible:= true;
    grillaDetalle.Columns[GetIndexField(grillaDetalle, 'PRECIO5')].Title.Caption:= precio5;
    grillaDetalle.Columns[GetIndexField(grillaDetalle, 'PRECIO5')].Visible:= true;
  end;
end;


procedure TFABMProductos.btnBuscarClick(Sender: TObject);
begin
  if ISBuscar.Buscar then
    dm.mostrarCantidadRegistro(ZQ_ProductoCabecera, lblResultadoBusqueda);
end;


procedure TFABMProductos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABMProductos);
end;


procedure TFABMProductos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ISOrdenar.GuardarConfigColumnas;
  ISOrdenarDetalle.GuardarConfigColumnas;
  dm.ISIni.EsribirRegEntero('ABM_PRODUCTOS_GrillaPrinciparl.AltoFila', Grilla.DefaultRowHeight);
end;


procedure TFABMProductos.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFABMProductos.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;

  FPrincipal.Iconos_Menu_32.GetBitmap(1, btnGrupoAceptar.Glyph);
  FPrincipal.Iconos_Menu_32.GetBitmap(0, btnGrupoCancelar.Glyph);

  ISOrdenar.CargarConfigColunmas;
  ISOrdenarDetalle.CargarConfigColunmas;
  if dm.ISIni.LeerRegnumero('ABM_PRODUCTOS_GrillaPrinciparl.AltoFila') <> 0 then
    Grilla.DefaultRowHeight:= dm.ISIni.LeerRegnumero('ABM_PRODUCTOS_GrillaPrinciparl.AltoFila');

  HabilitarCampos;

  panelImprimirListado.Visible:= false;
  StaticTxtBaja.Color:= FPrincipal.baja;

  dm.ISModelo.abrir(ZQ_Articulo);
  dm.ISModelo.abrir(ZQ_Marca);
  dm.ISModelo.abrir(ZQ_Color);
  dm.ISModelo.abrir(ZQ_MedidaArticulo);
  dm.ISModelo.abrir(ZQ_TodasMedidas);

  HabilitarPopMenu(2); //solo ver bajas y ver activos
  lblResultadoBusqueda.Caption:= '';

  //PProducto.Height:= 1;
end;


procedure TFABMProductos.btnNuevoClick(Sender: TObject);
begin
  if dm.ISModelo.iniciar_transaccion(transaccion_ABMProductos, [ZQ_ProductoCabecera, ZQ_DetalleProducto, ZQ_Precios]) then
  begin
    HabilitarPopMenu(4); //solo agregar detalle
    //PCabeceraProducto.Height:= 221;
    PProducto.Visible:= True;
    //PProducto.Height:= 204;
    grilla.Enabled:= false;

    ZSP_GenerarIDProdCabecera.Active:= false;
    ZSP_GenerarIDProdCabecera.Active:= true;
    ZQ_ProductoCabecera.Append;
    ZQ_ProductoCabeceraID_PROD_CABECERA.AsInteger:= ZSP_GenerarIDProdCabeceraID.AsInteger;
    ZQ_ProductoCabeceraBAJA.AsString:= 'N';
    ZQ_ProductoCabeceraCOLOR.AsInteger:= 0;
    ZQ_ProductoCabeceraID_MARCA.AsInteger:= 0;

    GrupoEditando.Enabled:= true;
    GrupoVisualizando.Enabled:= false;

    LStockActual.Visible:= false;
    EditStockActual.Visible:= false;
    if (asociar_pto_salida = 'SI') then
    begin
      LStockActual.Visible:= true;
      EditStockActual.Visible:= true;
      EditStockActual.Text:= '0';
    end;
  end;
end;


function TFABMProductos.validarcampos(): Boolean;
begin
  result:= true;

  if (ZQ_ProductoCabeceraCOD_CORTO.IsNull) or (trim(ZQ_ProductoCabeceraCOD_CORTO.AsString) = '') then
  begin
    ZQ_ProductoCabeceraCOD_CORTO.AsString:= ZQ_ProductoCabeceraID_PROD_CABECERA.AsString;
  end;

  if (ZQ_ProductoCabeceraNOMBRE.IsNull) then
  begin
    Application.MessageBox('El campo Nombre se encuentra vacío, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    edNombre.SetFocus;
    result:= false;
    exit;
  end;

  if (ZQ_ProductoCabeceraID_MARCA.IsNull) then
  begin
    Application.MessageBox('El campo Marca se encuentra vacío, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    cmbMarca.SetFocus;
    result:= false;
    exit;
  end;

  if (ZQ_ProductoCabeceraID_ARTICULO.IsNull) then
  begin
    Application.MessageBox('El campo Artículo se encuentra vacío, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    cmbArticulo.SetFocus;
    result:= false;
    exit;
  end;

  if (ZQ_ProductoCabeceraCOLOR.IsNull) then
  begin
    Application.MessageBox('El campo Color se encuentra vacío, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    cmbColor.SetFocus;
    result:= false;
    exit;
  end;

  if (ZQ_ProductoCabecera.State = dsInsert) then
  begin
    ZQ_ExisteCodigo.Close;
    ZQ_ExisteCodigo.ParamByName('codigo').AsString:= edCodCorto.Text;
    ZQ_ExisteCodigo.ParamByName('idMarca').AsInteger:= ZQ_ProductoCabeceraID_MARCA.AsInteger;
    ZQ_ExisteCodigo.Open;

    if not ZQ_ExisteCodigo.IsEmpty then
      if (application.MessageBox(pchar('El Codigo Corto ' + ZQ_ProductoCabeceraCOD_CORTO.AsString + ' ya existe para la marca ' + ZQ_ProductoCabecera_marca.AsString + #13 + '¿Desea cargarlo igualmente?'), 'Código Corto Repetido', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
        exit
      else
      begin
        edCodCorto.SetFocus;
        result:= false;
        exit;
      end;
  end;
  if (ZQ_DetalleProducto.IsEmpty) then
  begin
    Application.MessageBox('Debe cargar al menos un detalle del Producto Cabecera (se detallan precio de costo, precio de venta, medidas, etc), por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    grillaDetalle.SetFocus;
    result:= false;
    exit;
  end;
end;


function TFABMProductos.validarcamposDetalle(): Boolean;
begin
  result:= true;

  if (ZQ_DetalleProductoCOD_CORTO.IsNull) then
  begin
    Application.MessageBox('El campo Código Corto se encuentra vacío, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
//    dpCodCorto.SetFocus;
    result:= false;
    exit;
  end;

  if (zq_preciosPRECIO_COSTO.IsNull) then
  begin
    Application.MessageBox('El campo Precio Costo se encuentra vacío, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    //dpCosto.SetFocus;
    result:= false;
    exit;
  end;

  if (zq_preciosPRECIO_VENTA.IsNull) then
  begin
    Application.MessageBox('El campo Precio Venta se encuentra vacío, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    //dpVenta.SetFocus;
    result:= false;
    exit;
  end;

  if (ZQ_DetalleProductoID_MEDIDA.IsNull) then
  begin
    Application.MessageBox('El campo Medida se encuentra vacío, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
//    dpMedida.SetFocus;
    result:= false;
    exit;
  end;
end;


function TFABMProductos.validarcamposDetalle2(): Boolean;
begin
  result:= true;

//  if (ZQ_PreciosCOEF_GANANCIA.AsFloat>1) then
//  begin
//    Application.MessageBox('El campo Coef. Ganancia es incorrecto, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
//    //dpCosto.SetFocus;
//    result:= false;
//    exit;
//  end;

  if (ZQ_PreciosCOEF_DESCUENTO.AsFloat>1) then
  begin
    Application.MessageBox('El campo Coef. Dcto. es incorrecto, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    //dpVenta.SetFocus;
    result:= false;
    exit;
  end;

  if (zq_preciosPRECIO_COSTO.IsNull) then
  begin
    Application.MessageBox('El campo Precio Costo se encuentra vacío, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    //dpCosto.SetFocus;
    result:= false;
    exit;
  end;

  if ((zq_preciosPRECIO_VENTA.IsNull)or(zq_preciosPRECIO_VENTA.AsFloat<=0)) then
  begin
    Application.MessageBox('El campo Precio Venta se encuentra vacío, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    //dpVenta.SetFocus;
    result:= false;
    exit;
  end;

  if (CDMedidas.IsEmpty) then
  begin
    Application.MessageBox('El campo Medida se encuentra vacío, por favor Verifique', 'Validación', MB_OK + MB_ICONINFORMATION);
    grillaMedidas.SetFocus;
    result:= false;
    exit;
  end;
end;


procedure TFABMProductos.btnGuardarClick(Sender: TObject);
var
  modoinsercion: Boolean;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if not validarcampos() then
    exit;

  try
    if DM.ISModelo.finalizar_transaccion(transaccion_ABMProductos) then
    begin
      HabilitarPopMenu(2); //solo ver bajas y activos
      GrupoEditando.Enabled:= false;
      GrupoVisualizando.Enabled:= true;
      VerActivos1.Click;
      ZQ_DetalleProducto.Refresh;

      LStockActual.Visible:= false;
      EditStockActual.Visible:= false;

      PProducto.Visible:= false;
      //PProducto.Height:= 1;
      Grilla.Enabled:= true;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención', MB_OK + MB_ICONINFORMATION);
      exit;
    end
  end;

// Asociamos el producto con el pto de salida de forma automatica y a una posic de la configuracion, de esta manera ya esta asociado a producto_stock
  if modoInsercion then
  begin
    if (asociar_pto_salida = 'SI') and (EditStockActual.Text <> '') then
    begin
      if (asociar_pto_salida_id > 0) then
      begin
        if dm.ISModelo.iniciar_transaccion('ASOCIAR', []) then
        begin
          ZQ_DetalleProducto.First;
          while not ZQ_DetalleProducto.Eof do
          begin
            Asociar_producto_pto_salida.Close;
            Asociar_producto_pto_salida.ParamByName('ID_PRODUCTO').AsInteger:= ZQ_DetalleProductoID_PRODUCTO.AsInteger;
            Asociar_producto_pto_salida.ParamByName('STOCK_MIN').AsFloat:= ZQ_DetalleProductoSTOCK_MIN.AsInteger;
            Asociar_producto_pto_salida.ParamByName('STOCK_MAX').AsFloat:= ZQ_DetalleProductoSTOCK_MAX.AsInteger;
            Asociar_producto_pto_salida.ParamByName('STOCK_ACTUAL').AsFloat:= StrToFloat(EditStockActual.Text);
            Asociar_producto_pto_salida.ParamByName('ID_POSIC_SUCURSAL').AsInteger:= asociar_pto_salida_id;
            Asociar_producto_pto_salida.ExecProc;

            ZQ_DetalleProducto.Next;
          end;

          if not (dm.ISModelo.finalizar_transaccion('ASOCIAR')) then
            dm.ISModelo.cancelar_transaccion('ASOCIAR');
        end;
      end
      else
        ShowMessage('Debe asociar el producto manualmente y/o configurar la Sección/Posición por Defecto!');
    end;
  end
end;


procedure TFABMProductos.btnCancelarClick(Sender: TObject);
begin
  if (application.MessageBox(pchar('¿Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION - ABM Productos', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.ISModelo.cancelar_transaccion(transaccion_ABMProductos) then
    begin
      HabilitarPopMenu(2); //solo ver bajas y activos
      GrupoVisualizando.Enabled:= true;
      GrupoEditando.Enabled:= false;
      VerActivos1.Click;

      LStockActual.Visible:= false;
      EditStockActual.Visible:= false;

      PProducto.Visible:= false;
      //PProducto.Height:= 1;
      Grilla.Enabled:= true;
    end;
end;


procedure TFABMProductos.btnModificarClick(Sender: TObject);
begin
  if ZQ_ProductoCabecera.IsEmpty then
    exit;

  if dm.ISModelo.iniciar_transaccion(transaccion_ABMProductos, [ZQ_ProductoCabecera, ZQ_DetalleProducto, ZQ_Precios]) then
  begin
    HabilitarPopMenu(0); //todos activos
    ZQ_ProductoCabecera.edit;

    GrupoEditando.Enabled:= true;
    GrupoVisualizando.Enabled:= false;

    //PCabeceraProducto.Height := 221;
    PProducto.Visible:= True;
    //PProducto.Height:= 204;
    Grilla.Enabled:= false;
  end;
end;


procedure TFABMProductos.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_ProductoCabecera.IsEmpty) or (ZQ_ProductoCabeceraBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja el Producto seleccionado?'), 'ABM Productos', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABMProductos, [ZQ_ProductoCabecera, ZQ_DetalleProducto]) then
    begin
      ZQ_ProductoCabecera.Edit;
      ZQ_ProductoCabeceraBAJA.AsString:= 'S';

      ZQ_DetalleProducto.Filtered:= false;
      ZQ_DetalleProducto.First;
      while not (ZQ_DetalleProducto.eof) do
      begin
        ZQ_DetalleProducto.Edit;
        ZQ_DetalleProductoBAJA.AsString:= 'S';
        ZQ_DetalleProducto.Post;
        ZQ_DetalleProducto.Next;
      end;
      ZQ_DetalleProducto.Filtered:= true;
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABMProductos)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABMProductos);

    recNo:= ZQ_ProductoCabecera.RecNo;
    ZQ_ProductoCabecera.Refresh;
    ZQ_ProductoCabecera.RecNo:= recNo;
  end;
end;


procedure TFABMProductos.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_ProductoCabecera.IsEmpty) or (ZQ_ProductoCabeceraBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar el Producto seleccionado?'), 'ABM Productos', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABMProductos, [ZQ_ProductoCabecera, ZQ_DetalleProducto]) then
    begin
      ZQ_ProductoCabecera.Edit;
      ZQ_ProductoCabeceraBAJA.AsString:= 'N';

      if Application.MessageBox('Desea Reactivar el Detalle Producto?', 'ABM Productos', MB_YESNO + MB_ICONQUESTION) = IDYES then
      begin
        ZQ_DetalleProducto.Filtered:= false;
        ZQ_DetalleProducto.First;
        while not (ZQ_DetalleProducto.eof) do
        begin
          ZQ_DetalleProducto.Edit;
          ZQ_DetalleProductoBAJA.AsString:= 'N';
          ZQ_DetalleProducto.Post;
          ZQ_DetalleProducto.Next;
        end;
        ZQ_DetalleProducto.Filtered:= true;
      end;

    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABMProductos)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABMProductos);

    recNo:= ZQ_ProductoCabecera.RecNo;
    ZQ_ProductoCabecera.Refresh;
    ZQ_ProductoCabecera.RecNo:= recNo;
  end;
end;


procedure TFABMProductos.AgregaDetalleClick(Sender: TObject);
begin
  if (ZQ_ProductoCabecera.State <> dsedit) and (ZQ_ProductoCabecera.State <> dsinsert) then
    exit;

  if ZQ_ProductoCabeceraID_ARTICULO.IsNull then
  begin
    showmessage('Debe cargar algún artículo!');
    exit;
  end;

///////////////////////Deshabilito el cod corto cuando inserto un nuevo producto, lo genera solo el sistema,  POR QUE??????? ///////////
//  LabelCodCorto.Enabled:= false;
//  EDDCODCORTO.Enabled := false;
///////////////////////////////////////////////
  grilla.Height:=1;
  
  ZQ_Articulo.Refresh;

  ZQ_DetalleProducto.Append;
  ZQ_DetalleProductoLLEVAR_STOCK.AsString:= 'S';
  ZQ_DetalleProductoSTOCK_MIN.AsFloat:= 0;
  ZQ_DetalleProductoSTOCK_MAX.AsFloat:= 0;
  ZQ_DetalleProductoID_PROD_CABECERA.AsInteger:= ZQ_ProductoCabeceraID_PROD_CABECERA.AsInteger;

  ZQ_Precios.Append;
  ZQ_PreciosPRECIO_COSTO.AsFloat:= 0;
  ZQ_PreciosPRECIO_COSTO_CIMPUESTOS.AsFloat:= 0;
  ZQ_PreciosPRECIO_VENTA.AsFloat:= 0;
  ZQ_PreciosCOEF_GANANCIA.AsFloat:= 0;
  ZQ_PreciosCOEF_DESCUENTO.AsFloat:= 0;
  ZQ_PreciosIMPUESTO_INTERNO.AsFloat:= 0;
  ZQ_PreciosIMPUESTO_IVA.AsFloat:= 0;
  ZQ_PreciosIMPUESTO_ADICIONAL1.AsFloat:= 0;
  ZQ_PreciosIMPUESTO_ADICIONAL2.AsFloat:= 0;

  PMedidas.Visible:= True;
  grillaDetalle.PopupMenu:= nil;
  grillaDetalle.Enabled:= False;
  GrupoEditando.Enabled:= false;

  PDatosDetalle.Visible:= true;

  campoQueCambia:= '';
  if (asociar_pto_salida = 'SI') then
  begin
    LStockActual.Visible:= true;
    EditStockActual.Visible:= true;
    EditStockActual.Text:= '0';
  end;
end;


procedure TFABMProductos.EditarDetalleClick(Sender: TObject);
begin
  if ZQ_DetalleProducto.IsEmpty then
    exit;

  if (ZQ_ProductoCabecera.State <> dsedit) and (ZQ_ProductoCabecera.State <> dsinsert) then
    exit;

  PMedidas.Visible:= False;
  grillaDetalle.PopupMenu:= nil;
  grillaDetalle.Enabled:= false;
  GrupoEditando.Enabled:= false;
  ZQ_DetalleProducto.Edit;
  LabelCodCorto.Enabled:= true;
  EDDCODCORTO.Enabled:= true;
    grilla.Height:=1;
  PDatosDetalle.Visible:= true;

  campoQueCambia:= '';

  if (ZQ_ProductoCabecera.State = dsedit) then
  begin
    ZQ_Precios.Close;
    ZQ_Precios.ParamByName('id_producto').AsInteger:= ZQ_DetalleProductoID_PRODUCTO.AsInteger;
    ZQ_Precios.ParamByName('sucursal').AsInteger:= SUCURSAL_LOGUEO;
    dm.ISModelo.abrir(ZQ_Precios);
    ZQ_Precios.Edit;
  end
  else
  if (ZQ_ProductoCabecera.State = dsinsert) then
  begin
    if ZQ_precios.Locate('ID_PRODUCTO', ZQ_DetalleProductoID_PRODUCTO.AsInteger, []) then
      ZQ_Precios.Edit;
  end;
end;


procedure TFABMProductos.ZQ_ProductoCabeceraAfterScroll(DataSet: TDataSet);
begin
  ZQ_DetalleProducto.Close;
  ZQ_DetalleProducto.ParamByName('prod').AsInteger:= ZQ_ProductoCabeceraID_PROD_CABECERA.AsInteger;
  ZQ_DetalleProducto.ParamByName('sucursal').AsInteger:= SUCURSAL_LOGUEO;
  dm.ISModelo.abrir(ZQ_DetalleProducto);
end;


procedure TFABMProductos.ZQ_ArticuloAfterScroll(DataSet: TDataSet);
begin
  ZQ_MedidaArticulo.Close;
  ZQ_MedidaArticulo.ParamByName('artic').AsInteger:= ZQ_ProductoCabeceraID_ARTICULO.AsInteger;
  dm.ISModelo.abrir(ZQ_MedidaArticulo);
  ZQ_MedidaArticulo.First;

  if dm.ISModelo.verificar_transaccion(transaccion_ABMProductos) then
  begin
        //Traigo las medidas que correspondan a un tipo de articulo
    CDMedidas.EmptyDataSet;
    ZQ_MedidaArticulo.Close;
    ZQ_MedidaArticulo.ParamByName('artic').AsInteger:= ZQ_ProductoCabeceraID_ARTICULO.AsInteger;
    dm.ISModelo.abrir(ZQ_MedidaArticulo);
    ZQ_MedidaArticulo.First;

    while not (ZQ_MedidaArticulo.Eof) do
    begin
      ZQ_DetalleProducto.Filtered:= false;
      ZQ_DetalleProducto.Filter:= Format('id_medida = %d', [ZQ_MedidaArticuloID_MEDIDA.AsInteger]);
      ZQ_DetalleProducto.Filtered:= true;
      if (ZQ_DetalleProducto.IsEmpty) then
      begin
        CDMedidas.Append;
        CDMedidasid_medida.AsInteger:= ZQ_MedidaArticuloID_MEDIDA.AsInteger;
        CDMedidasmedida.AsString:= ZQ_MedidaArticuloMEDIDA.AsString;
        CDMedidas.Post;
      end;
      ZQ_MedidaArticulo.Next;
    end;
    ZQ_DetalleProducto.Filtered:= False;
  end;
end;


procedure TFABMProductos.edImagenDblClick(Sender: TObject);
var
  jpg: TJpegImage;
begin
  try
    if dm.ISModelo.verificar_transaccion(transaccion_ABMProductos) then
    //si esta activa la transaccion
      if buscarImagen.Execute then //abro para buscar la imagen
      begin
        CargaImagenProporcionado(buscarImagen.FileName);
      end
  except
    showmessage('Formato de Imagen no soportado (debe bajar la resolución).');
  end;
end;


procedure TFABMProductos.CargaImagenProporcionado(Archivo: string);
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

    //Hallamos la escala de reducción Horizontal
    if edImagen.Width < imagenJPG.Width then
      EscalaX:= edImagen.Width / imagenJPG.Width;

    //La escala vertical
    if edImagen.Height < imagenJPG.Height then
      EscalaY:= edImagen.Height / imagenJPG.Height;

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


procedure TFABMProductos.GrillaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(Grilla, ZQ_ProductoCabeceraBAJA.AsString, Rect, DataCol, Column, State);
end;


procedure TFABMProductos.tabsChanging(Sender: TObject; var AllowChange: Boolean);
begin
  if (ZQ_DetalleProducto.state = dsInsert) or (ZQ_DetalleProducto.state = dsEdit) then
    AllowChange:= False;
end;


procedure TFABMProductos.cmbMarcaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
    if ISListadoMarca.Buscar then
    begin
      ZQ_ProductoCabecera.Edit;
      ZQ_ProductoCabeceraID_MARCA.AsInteger:= StrToInt(ISListadoMarca.Resultado);
      cmbMarca.setfocus;
    end;
end;


procedure TFABMProductos.cmbArticuloKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
    if ISListadoArticulo.Buscar then
    begin
      ZQ_ProductoCabecera.Edit;
      ZQ_ProductoCabeceraID_ARTICULO.AsInteger:= StrToInt(ISListadoArticulo.Resultado);
      cmbArticulo.setfocus;
    end;
end;


procedure TFABMProductos.MenuItem1Click(Sender: TObject);
begin
  ISListadoMedidas.SQL.Clear;
  ISListadoMedidas.SQL.Add(Format('select m.* from medida_articulo ma ' +
    'join medida m on (ma.id_medida=m.id_medida)' +
    'where (ma.id_articulo=%d)and(ma.baja<>%s)' +
    ' order by m.medida', [ZQ_ArticuloID_ARTICULO.AsInteger, QuotedStr('S')]));
  if ISListadoMedidas.Buscar then
  begin
    CDMedidas.Filter:= 'id_medida = ' + ISListadoMedidas.Resultado;
    CDMedidas.Filtered:= true;
    if not CDMedidas.IsEmpty then
    begin
      CDMedidas.Filtered:= false;
      Application.MessageBox('Esta medida ya fue cargada', 'Carga medida', MB_OK + MB_ICONINFORMATION);
      exit;
    end;
    CDMedidas.Filtered:= false;
    CDMedidas.Append;
    CDMedidasid_medida.AsString:= ISListadoMedidas.Resultado;
    CDMedidasmedida.AsString:= ISListadoMedidas.Seleccion;
    CDMedidas.Post;
  end;
end;


procedure TFABMProductos.MenuItem3Click(Sender: TObject);
begin
  if not CDMedidas.IsEmpty then
    CDMedidas.Delete;
end;


procedure TFABMProductos.QuitarDetalleClick(Sender: TObject);
begin
  if ZQ_DetalleProducto.IsEmpty then
    exit;

  ZQ_DetalleProducto.Delete;
end;


procedure TFABMProductos.ZQ_ColorAfterScroll(DataSet: TDataSet);
begin
  if not (ZQ_ColorREFERENCIA.IsNull) then
    Shape1.Brush.Color:= StringToColor(ZQ_ColorREFERENCIA.AsString);
end;


function TFABMProductos.armarCodBarras(cod1, cod2, cod3: string): string;
begin
  //asdasd
  Result:= cod1 + cod2 + cod3;
end;


procedure TFABMProductos.edCodCortoExit(Sender: TObject);
begin
  if edCodCorto.Text <> '' then
    edCodCorto.Text:= rellenar(edCodCorto.Text, '0', 5);

  if ZQ_ProductoCabeceraNOMBRE.IsNull then
    ZQ_ProductoCabeceraNOMBRE.AsString:= edCodCorto.Text;
end;


procedure TFABMProductos.cmbColorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 112 then
    if ISListadoColor.Buscar then
    begin
      ZQ_ProductoCabecera.Edit;
      ZQ_ProductoCabeceraCOLOR.AsInteger:= StrToInt(ISListadoColor.Resultado);
      cmbColor.setfocus;
    end;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------

procedure TFABMProductos.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABMProductos.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABMProductos.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABMProductos.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABMProductos.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABMProductos.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABMProductos.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFABMProductos.btnImprimirListadoClick(Sender: TObject);
begin
  if ZQ_ProductoCabecera.IsEmpty then
    exit;

  panelImprimirListado.Visible:= true;
  panelImprimirListado.BringToFront;
  dm.centrarPanel(FABMProductos, panelImprimirListado);
  GrupoVisualizando.Enabled:= false;
end;


procedure TFABMProductos.btnImprimirListado_SalirClick(Sender: TObject);
begin
  panelImprimirListado.Visible:= false;
  GrupoVisualizando.Enabled:= true;
end;


procedure TFABMProductos.btnImprimirListado_AceptarClick(Sender: TObject);
begin
  case RadioGroupImprimirListado.ItemIndex of
    0: begin
        BandaMedidasDatos.Enabled:= true;
        BandaMedidasTitulo.Enabled:= true;
      end;
    1: begin
        BandaMedidasDatos.Enabled:= false;
        BandaMedidasTitulo.Enabled:= false;
      end;
  end;

  DM.VariablesReportes(RepProductoListado);
  QRlblPieDePaginaListado.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ', dm.ISModelo.Fecha);
  QRLabelCritBusqueda.Caption:= ISBuscar.ParametrosBuscados;
  ISVistaPreviaListado.VistaPrevia;

  panelImprimirListado.Visible:= false;
  GrupoVisualizando.Enabled:= true;
end;


procedure TFABMProductos.btBuscarEnGoogleClick(Sender: TObject);
begin
  if ZQ_ProductoCabecera.IsEmpty then
    exit;

  ShellExecute(self.handle, 'open', pchar('http://www.google.com.ar/#hl=es-419&q=' + ZQ_ProductoCabeceraNOMBRE.AsString + '&oq'), nil, nil,
    SW_SHOWNORMAL);
end;


procedure TFABMProductos.actualizarPrecios(llamador: string);
var
  costo_neto, costo_con_impuestos, imp_adicional_1,
    imp_adicional_2, imp_iva, coef_ganancia, precio_venta, impuesto_interno: double;
begin
  costo_neto:= ZQ_PreciosPRECIO_COSTO.AsFloat;
  costo_con_impuestos:= ZQ_PreciosPRECIO_COSTO_CIMPUESTOS.AsFloat;
  imp_adicional_1:= ZQ_PreciosIMPUESTO_ADICIONAL1.AsFloat;
  imp_adicional_2:= ZQ_PreciosIMPUESTO_ADICIONAL2.AsFloat;
  imp_iva:= ZQ_PreciosIMPUESTO_IVA.AsFloat;
  coef_ganancia:= ZQ_PreciosCOEF_GANANCIA.AsFloat;
  precio_venta:= ZQ_PreciosPRECIO_VENTA.AsFloat;
  impuesto_interno:= ZQ_PreciosIMPUESTO_INTERNO.AsFloat;


  if llamador <> 'PRECIO_VENTA' then
  begin
    campoQueCambia:= 'PRECIO_VENTA';
    costo_con_impuestos:= costo_neto + (costo_neto * imp_adicional_1) + (costo_neto * imp_adicional_2) + (costo_neto * imp_iva) + impuesto_interno;
    precio_venta:= RoundTo(costo_con_impuestos * (1 + coef_ganancia), -2);


    ZQ_PreciosPRECIO_COSTO_CIMPUESTOS.AsFloat:= costo_con_impuestos;
    ZQ_PreciosPRECIO_VENTA.AsFloat:= precio_venta;
  end
  else
  begin
    campoQueCambia:= 'COEF_GANANCIA';

    if costo_con_impuestos = 0 then
    begin
      costo_con_impuestos:= costo_neto + (costo_neto * imp_adicional_1) + (costo_neto * imp_adicional_2) + (costo_neto * imp_iva) + impuesto_interno;
      ZQ_PreciosPRECIO_COSTO_CIMPUESTOS.AsFloat:= costo_con_impuestos;
    end;

    if costo_con_impuestos <> 0 then
      coef_ganancia:= (precio_venta / costo_con_impuestos) - 1
    else
      coef_ganancia:= 0;
    ZQ_PreciosCOEF_GANANCIA.AsFloat:= coef_ganancia;
  end;
end;


procedure TFABMProductos.DBEditCoefGananciaEnter(Sender: TObject);
begin
  campoQueCambia:= 'PRECIO_VENTA';
end;



procedure TFABMProductos.DBEditPrecioVentaEnter(Sender: TObject);
begin
  campoQueCambia:= 'COEF_GANANCIA';
end;


procedure TFABMProductos.grillaDetalleDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(grillaDetalle, ZQ_DetalleProductoBAJA.AsString, Rect, DataCol, Column, State);
end;


procedure TFABMProductos.btnGrupoAceptarClick(Sender: TObject);
var
  codc, codb, descr, llevarStock: string;
  pc, pv, cg, cd, iint, iiva, smin, smax, iad1, iad2, pci: Real;
begin
  //Si inserto uno nuevo genero un id nuevo y meto las medidas
  if (ZQ_DetalleProducto.State = dsInsert) then
  begin
    CDMedidas.First;
    if not (validarcamposDetalle2) then
      exit;

    //Guardo los valores en comun para cada detalle
    llevarStock:= ZQ_DetalleProductoLLEVAR_STOCK.AsString;
    codc:= ZQ_DetalleProductoCOD_CORTO.AsString;
    codb:= ZQ_DetalleProductoCODIGO_BARRA.AsString;
    smin:= ZQ_DetalleProductoSTOCK_MIN.AsFloat;
    smax:= ZQ_DetalleProductoSTOCK_MAX.AsFloat;
    descr:= ZQ_DetalleProductoDESCRIPCION.AsString;
    pc:= ZQ_preciosPRECIO_COSTO.AsFloat;
    pci:= ZQ_preciosPRECIO_COSTO_CIMPUESTOS.AsFloat;
    pv:= ZQ_preciosPRECIO_VENTA.AsFloat;
    cg:= ZQ_preciosCOEF_GANANCIA.AsFloat;
    cd:= ZQ_preciosCOEF_DESCUENTO.AsFloat;
    iint:= ZQ_preciosIMPUESTO_INTERNO.AsFloat;
    iiva:= ZQ_preciosIMPUESTO_IVA.AsFloat;
    iad1:= ZQ_preciosIMPUESTO_ADICIONAL1.AsFloat;
    iad2:= ZQ_preciosIMPUESTO_ADICIONAL2.AsFloat;

    //genero el id_producto y guardo los del detalle
    ZSP_GenerarIDProdDeralle.Active:= False;
    ZSP_GenerarIDProdDeralle.Active:= True;
    ZQ_DetalleProductoID_PRODUCTO.AsInteger:= ZSP_GenerarIDProdDeralleID.AsInteger;
    ZQ_DetalleProductoID_PROD_CABECERA.AsInteger:= ZQ_ProductoCabeceraID_PROD_CABECERA.AsInteger;
    ZQ_DetalleProductoID_MEDIDA.AsInteger:= CDMedidasid_medida.AsInteger;
    ZQ_preciosID_PRODUCTO.AsInteger:= ZSP_GenerarIDProdDeralleID.AsInteger;
    ZQ_preciosID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;

    //si no tiene codigo corto el producto, le pongo el id_producto
    if ZQ_DetalleProductoCOD_CORTO.AsString = '' then
      ZQ_DetalleProductoCOD_CORTO.AsString:= IntToStr(ZSP_GenerarIDProdDeralleID.AsInteger); //rellenar(CDMedidasmedida.AsString,'0',5);

    //si no tiene codigo de barra el producto, le pongo el id_producto rellenado con ceros adelante (20)
    if ZQ_DetalleProductoCODIGO_BARRA.AsString = '' then
      ZQ_DetalleProductoCODIGO_BARRA.AsString:= rellenar(ZSP_GenerarIDProdDeralleID.AsString, '0', LONG_COD_BARRAS); //armarCodBarras(ZQ_ProductoCabeceraCOD_CORTO.AsString,ZQ_ColorCODIGO.AsString,ZQ_DetalleProductoCOD_CORTO.AsString);

    if (precio1 <> '') then
    begin
      if (ZQ_PreciosPRECIO1.IsNull) or (ZQ_PreciosPRECIO1.AsFloat = 0) then
        ZQ_PreciosPRECIO1.AsFloat:= pv;
    end
    else
      ZQ_PreciosPRECIO1.AsFloat:= pv;

    if (precio2 <> '') then
    begin
      if (ZQ_PreciosPRECIO2.IsNull) or (ZQ_PreciosPRECIO2.AsFloat = 0) then
        ZQ_PreciosPRECIO2.AsFloat:= pv;
    end
    else
      ZQ_PreciosPRECIO2.AsFloat:= pv;

    if (precio3 <> '') then
    begin
      if (ZQ_PreciosPRECIO3.IsNull) or (ZQ_PreciosPRECIO3.AsFloat = 0) then
        ZQ_PreciosPRECIO3.AsFloat:= pv;
    end
    else
      ZQ_PreciosPRECIO3.AsFloat:= pv;

    if (precio4 <> '') then
    begin
      if (ZQ_PreciosPRECIO4.IsNull) or (ZQ_PreciosPRECIO4.AsFloat = 0) then
        ZQ_PreciosPRECIO4.AsFloat:= pv;
    end
    else
      ZQ_PreciosPRECIO4.AsFloat:= pv;

    if (precio5 <> '') then
    begin
      if (ZQ_PreciosPRECIO5.IsNull) or (ZQ_PreciosPRECIO5.AsFloat = 0) then
        ZQ_PreciosPRECIO5.AsFloat:= pv;
    end
    else
      ZQ_PreciosPRECIO5.AsFloat:= pv;

    ZQ_precios.post;
    ZQ_DetalleProducto.Post;

    ZQ_DetalleProducto.Filtered:= false;
    ZQ_DetalleProducto.Filter:= Format('id_medida = %d', [CDMedidasid_medida.AsInteger]);
    ZQ_DetalleProducto.Filtered:= true;
    //Si existe cancelo el registro actual
    if (ZQ_DetalleProducto.RecordCount > 1) then
    begin
      ZQ_precios.Locate('ID_PRODUCTO', ZSP_GenerarIDProdDeralleID.AsInteger, []);
      ZQ_Precios.Delete;
      ZQ_DetalleProducto.Locate('ID_PRODUCTO', ZSP_GenerarIDProdDeralleID.AsInteger, []);
      ZQ_DetalleProducto.Delete;
      Application.MessageBox('Esta medida ya fue cargada', 'Carga medida', MB_OK + MB_ICONINFORMATION);
    end;
    ZQ_DetalleProducto.Filtered:= False;

    //Recorro las medidas (a partir de la segunda, la 1era ya la guardé)y creo los detalles uno a uno.
    CDMedidas.Next;
    while not (CDMedidas.Eof) do
    begin
      ZQ_DetalleProducto.Filtered:= false;
      ZQ_DetalleProducto.Filter:= Format('id_medida = %d', [CDMedidasid_medida.AsInteger]);
      ZQ_DetalleProducto.Filtered:= true;
      if (ZQ_DetalleProducto.IsEmpty) then
      begin
          //Cada detalle tiene los mismos datos precargados
        ZQ_DetalleProducto.Append;
        ZQ_DetalleProductoID_PROD_CABECERA.AsInteger:= ZQ_ProductoCabeceraID_PROD_CABECERA.AsInteger;
        ZQ_DetalleProductoID_MEDIDA.AsInteger:= CDMedidasid_medida.AsInteger;
        ZQ_DetalleProductoLLEVAR_STOCK.AsString:= llevarStock;
        ZQ_DetalleProductoSTOCK_MIN.AsFloat:= smin;
        ZQ_DetalleProductoSTOCK_MAX.AsFloat:= smax;
        ZQ_DetalleProductoDESCRIPCION.AsString:= descr;
        ZQ_DetalleProductoBAJA.AsString:= 'N';

        ZQ_Precios.Append;
        ZQ_PreciosPRECIO_COSTO.AsFloat:= pc;
        ZQ_PreciosPRECIO_COSTO_CIMPUESTOS.AsFloat:= pci;
        ZQ_PreciosPRECIO_VENTA.AsFloat:= pv;
        ZQ_PreciosCOEF_GANANCIA.AsFloat:= cg;
        ZQ_PreciosCOEF_DESCUENTO.AsFloat:= cd;
        ZQ_PreciosIMPUESTO_INTERNO.AsFloat:= iint;
        ZQ_PreciosIMPUESTO_IVA.AsFloat:= iiva;
        ZQ_PreciosIMPUESTO_ADICIONAL1.AsFloat:= iad1;
        ZQ_PreciosIMPUESTO_ADICIONAL2.AsFloat:= iad2;

        if (precio1 <> '') then
        begin
          if (ZQ_PreciosPRECIO1.IsNull) or (ZQ_PreciosPRECIO1.AsFloat = 0) then
            ZQ_PreciosPRECIO1.AsFloat:= pv;
        end
        else
          ZQ_PreciosPRECIO1.AsFloat:= pv;

        if (precio2 <> '') then
        begin
          if (ZQ_PreciosPRECIO2.IsNull) or (ZQ_PreciosPRECIO2.AsFloat = 0) then
            ZQ_PreciosPRECIO2.AsFloat:= pv;
        end
        else
          ZQ_PreciosPRECIO2.AsFloat:= pv;

        if (precio3 <> '') then
        begin
          if (ZQ_PreciosPRECIO3.IsNull) or (ZQ_PreciosPRECIO3.AsFloat = 0) then
            ZQ_PreciosPRECIO3.AsFloat:= pv;
        end
        else
          ZQ_PreciosPRECIO3.AsFloat:= pv;

        if (precio4 <> '') then
        begin
          if (ZQ_PreciosPRECIO4.IsNull) or (ZQ_PreciosPRECIO4.AsFloat = 0) then
            ZQ_PreciosPRECIO4.AsFloat:= pv;
        end
        else
          ZQ_PreciosPRECIO4.AsFloat:= pv;

        if (precio5 <> '') then
        begin
          if (ZQ_PreciosPRECIO5.IsNull) or (ZQ_PreciosPRECIO5.AsFloat = 0) then
            ZQ_PreciosPRECIO5.AsFloat:= pv;
        end
        else
          ZQ_PreciosPRECIO5.AsFloat:= pv;

         //Si inserto uno nuevo genero un id nuevo
        if (ZQ_DetalleProducto.State = dsInsert) then
        begin
          ZSP_GenerarIDProdDeralle.Active:= False;
          ZSP_GenerarIDProdDeralle.Active:= True;
          ZQ_DetalleProductoID_PRODUCTO.AsInteger:= ZSP_GenerarIDProdDeralleID.AsInteger;
          ZQ_PreciosID_PRODUCTO.AsInteger:= ZSP_GenerarIDProdDeralleID.AsInteger;
          ZQ_PreciosID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;

          if ZQ_DetalleProductoCOD_CORTO.AsString = '' then
            ZQ_DetalleProductoCOD_CORTO.AsString:= IntToStr(ZQ_DetalleProductoID_PRODUCTO.AsInteger);

          if ZQ_DetalleProductoCODIGO_BARRA.AsString = '' then
            ZQ_DetalleProductoCODIGO_BARRA.AsString:= rellenar(ZQ_DetalleProductoID_PRODUCTO.AsString, '0', LONG_COD_BARRAS);
        end;

        ZQ_Precios.Post;
        ZQ_DetalleProducto.Post;

        ZQ_DetalleProducto.Filtered:= false;
        ZQ_DetalleProducto.Filter:= Format('id_medida = %d', [CDMedidasid_medida.AsInteger]);
        ZQ_DetalleProducto.Filtered:= true;
        //Si existe cancelo el registro actual
        if (ZQ_DetalleProducto.RecordCount > 1) then
        begin
          ZQ_Precios.Locate('ID_PRODUCTO', ZSP_GenerarIDProdDeralleID.AsInteger, []);
          ZQ_Precios.Delete;
          ZQ_DetalleProducto.Locate('ID_PRODUCTO', ZSP_GenerarIDProdDeralleID.AsInteger, []);
          ZQ_DetalleProducto.Delete;
          Application.MessageBox('Esta medida ya fue cargada', 'Carga medida', MB_OK + MB_ICONINFORMATION);
        end;
      end;

      ZQ_DetalleProducto.Filtered:= False;
      CDMedidas.Next;
    end;
  end
  else //si estoy modificando un producto
  begin
    if not (validarcamposDetalle) then
      exit;

    ZQ_PreciosID_PRODUCTO.AsInteger:= ZQ_DetalleProductoID_PRODUCTO.AsInteger;
    ZQ_PreciosID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;

    if ZQ_DetalleProductoCOD_CORTO.AsString = '' then
      ZQ_DetalleProductoCOD_CORTO.AsString:= IntToStr(ZQ_DetalleProductoID_PRODUCTO.AsInteger);

    if ZQ_DetalleProductoCODIGO_BARRA.AsString = '' then
      ZQ_DetalleProductoCODIGO_BARRA.AsString:= rellenar(ZQ_DetalleProductoID_PRODUCTO.AsString, '0', LONG_COD_BARRAS);

    if (precio1 <> '') then
    begin
      if (ZQ_PreciosPRECIO1.IsNull) or (ZQ_PreciosPRECIO1.AsFloat = 0) then
        ZQ_PreciosPRECIO1.AsFloat:= ZQ_PreciosPRECIO_VENTA.AsFloat;
    end
    else
      ZQ_PreciosPRECIO1.AsFloat:= ZQ_PreciosPRECIO_VENTA.AsFloat;

    if (precio2 <> '') then
    begin
      if (ZQ_PreciosPRECIO2.IsNull) or (ZQ_PreciosPRECIO2.AsFloat = 0) then
        ZQ_PreciosPRECIO2.AsFloat:= ZQ_PreciosPRECIO_VENTA.AsFloat;
    end
    else
      ZQ_PreciosPRECIO2.AsFloat:= ZQ_PreciosPRECIO_VENTA.AsFloat;

    if (precio3 <> '') then
    begin
      if (ZQ_PreciosPRECIO3.IsNull) or (ZQ_PreciosPRECIO3.AsFloat = 0) then
        ZQ_PreciosPRECIO3.AsFloat:= ZQ_PreciosPRECIO_VENTA.AsFloat;
    end
    else
      ZQ_PreciosPRECIO3.AsFloat:= ZQ_PreciosPRECIO_VENTA.AsFloat;

    if (precio4 <> '') then
    begin
      if (ZQ_PreciosPRECIO4.IsNull) or (ZQ_PreciosPRECIO4.AsFloat = 0) then
        ZQ_PreciosPRECIO4.AsFloat:= ZQ_PreciosPRECIO_VENTA.AsFloat;
    end
    else
      ZQ_PreciosPRECIO4.AsFloat:= ZQ_PreciosPRECIO_VENTA.AsFloat;

    if (precio5 <> '') then
    begin
      if (ZQ_PreciosPRECIO5.IsNull) or (ZQ_PreciosPRECIO5.AsFloat = 0) then
        ZQ_PreciosPRECIO5.AsFloat:= ZQ_PreciosPRECIO_VENTA.AsFloat;
    end
    else
      ZQ_PreciosPRECIO5.AsFloat:= ZQ_PreciosPRECIO_VENTA.AsFloat;

    zq_precios.Post;
    ZQ_DetalleProducto.Post;
  end;

  grillaDetalle.PopupMenu:= PopupMenuDetalleProd;
  grillaDetalle.Enabled:= True;
  GrupoEditando.Enabled:= true;
  PDatosDetalle.Visible:= false;

  if (ZQ_ProductoCabecera.State = dsedit) then
    HabilitarPopMenu(0) //todos activos
  else
    if (ZQ_ProductoCabecera.State = dsinsert) then
      HabilitarPopMenu(5); //agregar, editar y quitar
end;


procedure TFABMProductos.btnGrupoCancelarClick(Sender: TObject);
begin
  grillaDetalle.PopupMenu:= PopupMenuDetalleProd;
  ZQ_DetalleProducto.RevertRecord;
  GrupoEditando.Enabled:= true;
  grillaDetalle.Enabled:= True;
  PDatosDetalle.Visible:= false;

  if (ZQ_ProductoCabecera.State = dsedit) then
    HabilitarPopMenu(0) //todos activos
  else
    if (ZQ_ProductoCabecera.State = dsinsert) then
      HabilitarPopMenu(5); //agregar, editar y quitar
end;


procedure TFABMProductos.BajaDetalle1Click(Sender: TObject);
begin
  if ZQ_DetalleProducto.IsEmpty then
    exit;

  ZQ_DetalleProducto.Edit;
  ZQ_DetalleProductoBAJA.AsString:= 'S';
  ZQ_DetalleProducto.Post;
end;


procedure TFABMProductos.VerBajas1Click(Sender: TObject);
begin
  ZQ_DetalleProducto.Filtered:= false;
  ZQ_DetalleProducto.Filter:= 'baja <> ''N''';
  ZQ_DetalleProducto.Filtered:= true;

  VerBajas1.Visible:= false;
  BajaDetalle1.Visible:= false;
  VerActivos1.Visible:= true;
  ReactivarDetalle1.Visible:= true;
end;


procedure TFABMProductos.VerActivos1Click(Sender: TObject);
begin
  ZQ_DetalleProducto.Filtered:= false;
  ZQ_DetalleProducto.Filter:= 'baja <> ''S''';
  ZQ_DetalleProducto.Filtered:= true;

  VerBajas1.Visible:= true;
  BajaDetalle1.Visible:= true;
  VerActivos1.Visible:= false;
  ReactivarDetalle1.Visible:= false;
end;


procedure TFABMProductos.ReactivarDetalle1Click(Sender: TObject);
begin
  if ZQ_DetalleProducto.IsEmpty then
    exit;

  if ZQ_ProductoCabeceraBAJA.AsString = 'S' then
  begin
    Application.MessageBox('Debe estar dado de alta el producto cabecera. VERIFIQUE', 'ABM Productos', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  ZQ_DetalleProducto.Edit;
  ZQ_DetalleProductoBAJA.AsString:= 'N';
  ZQ_DetalleProducto.Post;
end;


procedure TFABMProductos.btnExcelClick(Sender: TObject);
begin
  if not ZQ_ProductoCabecera.IsEmpty then
    dm.ExportarEXCEL(Grilla);
end;


procedure TFABMProductos.ZQ_PreciosPRECIO_COSTOChange(Sender: TField);
begin
  actualizarPrecios('PRECIO_COSTO');
end;


procedure TFABMProductos.ZQ_PreciosCOEF_GANANCIAChange(Sender: TField);
begin
  if campoQueCambia <> 'COEF_GANANCIA' then
    actualizarPrecios('COEF_GANANCIA');
end;


procedure TFABMProductos.ZQ_PreciosPRECIO_VENTAChange(Sender: TField);
begin
  if campoQueCambia <> 'PRECIO_VENTA' then
    actualizarPrecios('PRECIO_VENTA');
end;


procedure TFABMProductos.ZQ_PreciosIMPUESTO_IVAChange(Sender: TField);
begin
  actualizarPrecios('IMP_IVA');
end;


procedure TFABMProductos.ZQ_PreciosIMPUESTO_ADICIONAL1Change(
  Sender: TField);
begin
  actualizarPrecios('IMP_ADICIONAL1');
end;


procedure TFABMProductos.ZQ_PreciosIMPUESTO_ADICIONAL2Change(
  Sender: TField);
begin
  actualizarPrecios('IMP_ADICIONAL2');
end;


procedure TFABMProductos.EditStockActualExit(Sender: TObject);
var
  control: real;
begin
  try
    control:= StrToFloat(EditStockActual.Text);

  except
    begin
      Application.MessageBox('No se permiten simbolos ni letras en el campo STOCK ACTUAL. VERIFIQUE', '', MB_OK + MB_ICONINFORMATION);
      EditStockActual.SetFocus;
    end
  end;

end;


procedure TFABMProductos.Splitter1CanResize(Sender: TObject; var NewSize: Integer; var Accept: Boolean);
begin
  if NewSize >= 510 then
    NewSize:= 509;


  if dm.ISModelo.verificar_transaccion(transaccion_ABMProductos) then
    Accept:= false
  else
    Accept:= true;
end;


procedure TFABMProductos.PopUpItem_AgrandarClick(Sender: TObject);
begin
  Grilla.DefaultRowHeight:= Grilla.DefaultRowHeight + 5;
end;


procedure TFABMProductos.PopUpItem_ReducirClick(Sender: TObject);
begin
  Grilla.DefaultRowHeight:= Grilla.DefaultRowHeight - 5;
end;



end.

