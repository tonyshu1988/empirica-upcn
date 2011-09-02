unit UABMProductos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls,
  ExtCtrls, Grids, DBGrids, EKDBGrid, dxBar, dxBarExtItems, StdCtrls,
  DBCtrls, Mask, EKBusquedaAvanzada, EKOrdenarGrilla, EKLlenarCombo, Menus,
  Buttons, ZStoredProcedure, jpeg, ExtDlgs, EKListadoSQL, DBClient,
  EKVistaPreviaQR, ActnList, XPStyleActnCtrls, ActnMan, QuickRpt, QRCtrls,
  qrFramelines, shellapi;

type
  TFABMProductos = class(TForm)
    tabs: TPageControl;
    tabCabecera: TTabSheet;
    tabDetalle: TTabSheet;
    PProducto: TPanel;
    PDetalles: TPanel;
    ZQ_ProductoCabecera: TZQuery;
    ZQ_ProductoCabeceraID_PROD_CABECERA: TIntegerField;
    ZQ_ProductoCabeceraID_MARCA: TIntegerField;
    ZQ_ProductoCabeceraNOMBRE: TStringField;
    ZQ_ProductoCabeceraDESCRIPCION: TStringField;
    ZQ_ProductoCabeceraIMAGEN: TBlobField;
    ZQ_ProductoCabeceraBAJA: TStringField;
    ZQ_ProductoCabeceraID_ARTICULO: TIntegerField;
    DS_ProductoCabecera: TDataSource;
    Grilla: TEKDBGrid;
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
    btverbajados: TdxBarLargeButton;
    BtBusquedaNueva: TdxBarLargeButton;
    btnSiguiente: TdxBarLargeButton;
    btnAnterior: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edNombre: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    edImagen: TDBImage;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    edDescripcion: TDBMemo;
    PanelCabecera: TPanel;
    EKBuscar: TEKBusquedaAvanzada;
    EKOrdenar: TEKOrdenarGrilla;
    ZQ_DetalleProducto: TZQuery;
    DS_DetalleProducto: TDataSource;
    ZQ_DetalleProductoID_PRODUCTO: TIntegerField;
    ZQ_DetalleProductoID_MEDIDA: TIntegerField;
    ZQ_DetalleProductoID_PROD_CABECERA: TIntegerField;
    ZQ_DetalleProductoDESCRIPCION: TStringField;
    ZQ_DetalleProductoPRECIO_COSTO: TFloatField;
    ZQ_DetalleProductoPRECIO_VENTA: TFloatField;
    ZQ_DetalleProductoCOEF_GANANCIA: TFloatField;
    ZQ_DetalleProductoCOEF_DESCUENTO: TFloatField;
    ZQ_DetalleProductoIMPUESTO_INTERNO: TFloatField;
    ZQ_DetalleProductoIMPUESTO_IVA: TFloatField;
    ZQ_DetalleProductoCOD_CORTO: TStringField;
    ZQ_DetalleProductoCODIGO_BARRA: TStringField;
    ZQ_DetalleProductoSTOCK_MAX: TFloatField;
    ZQ_DetalleProductoSTOCK_MIN: TFloatField;
    Label18: TLabel;
    ZQ_Articulo: TZQuery;
    ZQ_ArticuloID_ARTICULO: TIntegerField;
    ZQ_ArticuloDESCRIPCION: TStringField;
    ZQ_ArticuloID_TIPO_ARTICULO: TIntegerField;
    ZQ_ProductoCabecera_articulo: TStringField;
    cmbArticulo: TDBLookupComboBox;
    DS_Articulo: TDataSource;
    ZQ_Marca: TZQuery;
    DS_Marca: TDataSource;
    cmbMarca: TDBLookupComboBox;
    ZQ_MarcaID_MARCA: TIntegerField;
    ZQ_MarcaNOMBRE_MARCA: TStringField;
    ZQ_ProductoCabecera_marca: TStringField;
    Label19: TLabel;
    grillaDetalle: TEKDBGrid;
    grupoPrecios: TGroupBox;
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
    Label20: TLabel;
    edCodCorto: TDBEdit;
    buscarImagen: TOpenPictureDialog;
    ZQ_DetalleProductoLLEVAR_STOCK: TStringField;
    StaticTxtBaja: TStaticText;
    lblResultadoBusqueda: TLabel;
    ZQ_ArticuloBAJA: TStringField;
    ZQ_ArticuloBUSQUEDA: TStringField;
    ZQ_MarcaBAJA: TStringField;
    EKListadoMarca: TEKListadoSQL;
    EKListadoArticulo: TEKListadoSQL;
    ZQ_ArticuloTIPO_ARTICULO: TStringField;
    ZQ_ProductoCabecera_tipoArticulo: TStringField;
    grupoDetalle: TGroupBox;
    Label22: TLabel;
    LabelCodCorto: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    EDDCODCORTO: TDBEdit;
    EDDCODBARRAS: TDBEdit;
    DBEdit11: TDBEdit;
    DBMemo1: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    Label23: TLabel;
    DBEditPrecioCostoNeto: TDBEdit;
    Label25: TLabel;
    DBEditCoefGanancia: TDBEdit;
    Label27: TLabel;
    DBEditImpuestoInterno: TDBEdit;
    Label24: TLabel;
    DBEditPrecioVenta: TDBEdit;
    Label26: TLabel;
    DBEditCoefDescuento: TDBEdit;
    Label28: TLabel;
    DBEditImpuestoIva: TDBEdit;
    PEdicion: TPanel;
    grupoAceptar: TBitBtn;
    grupoCancelar: TBitBtn;
    Label31: TLabel;
    DBEdit10: TDBEdit;
    PopMenuMedidas: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    CDMedidas: TClientDataSet;
    CDMedidasid_medida: TIntegerField;
    CDMedidasmedida: TStringField;
    DS_Medidas: TDataSource;
    EKListadoMedidas: TEKListadoSQL;
    Label5: TLabel;
    grillaMedidas: TDBGrid;
    PMedidas: TPanel;
    Label6: TLabel;
    cmbColor: TDBLookupComboBox;
    ZQ_Color: TZQuery;
    ZQ_ProductoCabeceraCOLOR: TIntegerField;
    DS_Color: TDataSource;
    Shape1: TShape;
    EKListadoColor: TEKListadoSQL;
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
    EKVistaPreviaListado: TEKVistaPreviaQR;
    EKVistaPreviaQR2: TEKVistaPreviaQR;
    EKVistaPreviaQR3: TEKVistaPreviaQR;
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
    EKOrdenarDetalle: TEKOrdenarGrilla;
    QRLabel10: TQRLabel;
    panelImprimirListado: TPanel;
    Panel1: TPanel;
    RadioGroupImprimirListado: TRadioGroup;
    btnImprimirListado_Aceptar: TButton;
    btnImprimirListado_Salir: TButton;
    btBuscarEnGoogle: TdxBarLargeButton;
    lblImpuesto_Adicional2: TLabel;
    lblImpuesto_Adicional1: TLabel;
    DBEditImpuestoAdicional2: TDBEdit;
    DBEditImpuestoAdicional1: TDBEdit;
    DBEditPrecioCostoCImpuestos: TDBEdit;
    Label10: TLabel;
    ZQ_DetalleProductoPRECIO_COSTO_CIMPUESTOS: TFloatField;
    ZQ_DetalleProductoIMPUESTO_ADICIONAL1: TFloatField;
    ZQ_DetalleProductoIMPUESTO_ADICIONAL2: TFloatField;
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
    procedure grupoAceptarClick(Sender: TObject);
    procedure grupoCancelarClick(Sender: TObject);
    procedure ZQ_ProductoCabeceraAfterScroll(DataSet: TDataSet);
    procedure ZQ_ArticuloAfterScroll(DataSet: TDataSet);
    procedure edImagenDblClick(Sender: TObject);
    procedure GrillaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    function validarcampos():Boolean;
    function validarcamposDetalle():Boolean;
    procedure CargaImagenProporcionado(Archivo: string);
    procedure tabsChanging(Sender: TObject; var AllowChange: Boolean);
    procedure ZQ_DetalleProductoCOEF_GANANCIAChange(Sender: TField);
    procedure ZQ_DetalleProductoPRECIO_VENTAChange(Sender: TField);
    procedure cmbMarcaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cmbArticuloKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ZQ_DetalleProductoPRECIO_COSTOChange(Sender: TField);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    function validarcamposDetalle2():Boolean;
    procedure QuitarDetalleClick(Sender: TObject);
    procedure ZQ_ColorAfterScroll(DataSet: TDataSet);
    function armarCodBarras(cod1,cod2,cod3:String):String ;
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
    procedure ZQ_DetalleProductoIMPUESTO_IVAChange(Sender: TField);
    procedure ZQ_DetalleProductoIMPUESTO_ADICIONAL1Change(Sender: TField);
    procedure ZQ_DetalleProductoIMPUESTO_ADICIONAL2Change(Sender: TField);
    procedure DBEditCoefGananciaEnter(Sender: TObject);
    procedure DBEditPrecioVentaEnter(Sender: TObject);
    procedure grillaDetalleDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
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

uses UDM, UPrincipal, UUtilidades;

{$R *.dfm}

procedure TFABMProductos.btnBuscarClick(Sender: TObject);
begin
  if EKBuscar.Buscar then
    dm.mostrarCantidadRegistro(ZQ_ProductoCabecera, lblResultadoBusqueda);
end;


procedure TFABMProductos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABMProductos);
end;


procedure TFABMProductos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenar.GuardarConfigColumnas;
  EKOrdenarDetalle.GuardarConfigColumnas;
end;


procedure TFABMProductos.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFABMProductos.FormCreate(Sender: TObject);
begin
  EKOrdenar.CargarConfigColumnas;
  EKOrdenarDetalle.CargarConfigColumnas;

  lblImpuesto_Adicional1.Caption:= imp_ad1_nombre;
  lblImpuesto_Adicional2.Caption:= imp_ad2_nombre;

  grillaDetalle.Columns[GetIndexField(grillaDetalle, 'IMPUESTO_ADICIONAL1')].Title.Caption:= imp_ad1_nombre;
  grillaDetalle.Columns[GetIndexField(grillaDetalle, 'IMPUESTO_ADICIONAL2')].Title.Caption:= imp_ad2_nombre;

  panelImprimirListado.Visible:= false;
  StaticTxtBaja.Color:= FPrincipal.baja;

  dm.EKModelo.abrir(ZQ_Articulo);
  dm.EKModelo.abrir(ZQ_Marca);
  dm.EKModelo.abrir(ZQ_Color);
  dm.EKModelo.abrir(ZQ_MedidaArticulo);

  EKOrdenarDetalle.PopUpGrilla:= nil;
  tabs.ActivePageIndex:= 0;
  PProducto.Enabled:= False;
  lblResultadoBusqueda.Caption:= '';
end;


procedure TFABMProductos.btnNuevoClick(Sender: TObject);
begin
if dm.EKModelo.iniciar_transaccion(transaccion_ABMProductos, [ZQ_ProductoCabecera,ZQ_DetalleProducto]) then
  begin
    EKOrdenarDetalle.PopUpGrilla:=PopupMenuDetalleProd;;
    grilla.Enabled := false;
    tabs.Enabled:= true;
    tabs.ActivePageIndex:= 0;
    PProducto.Enabled:=True;

    ZQ_ProductoCabecera.Append;
    ZQ_ProductoCabeceraBAJA.AsString:= 'N';
    ZQ_ProductoCabeceraCOLOR.AsInteger:= 0;
    ZQ_ProductoCabeceraID_MARCA.AsInteger:= 0;

    edCodCorto.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoVisualizando.Enabled := false;

    //Es medio obvio pero si o si hay q ponerlo aca, para el id q vá en detalle prod
     if (ZQ_ProductoCabecera.State=dsinsert) then
      begin
          ZSP_GenerarIDProdCabecera.Active:=false;
          ZSP_GenerarIDProdCabecera.Active:=true;
          ZQ_ProductoCabeceraID_PROD_CABECERA.AsInteger:=ZSP_GenerarIDProdCabeceraID.AsInteger;
      end;
  end;
end;


function TFABMProductos.validarcampos():Boolean;
begin
 result := true;

  if (ZQ_ProductoCabeceraCOD_CORTO.IsNull) then
  begin
    Application.MessageBox('El campo Código Corto se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    tabs.ActivePageIndex:= 0;
    edCodCorto.SetFocus;
    result := false;
    exit;
  end;

  if (ZQ_ProductoCabeceraNOMBRE.IsNull) then
  begin
    Application.MessageBox('El campo Nombre se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    tabs.ActivePageIndex:= 0;
    edNombre.SetFocus;
    result := false;
    exit;
  end;

  if (ZQ_ProductoCabeceraID_MARCA.IsNull) then
  begin
    Application.MessageBox('El campo Marca se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    tabs.ActivePageIndex:= 0;
    cmbMarca.SetFocus;
    result := false;
    exit;
  end;

  if (ZQ_ProductoCabeceraID_ARTICULO.IsNull) then
  begin
    Application.MessageBox('El campo Artículo se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    tabs.ActivePageIndex:= 0;
    cmbArticulo.SetFocus;
    result := false;
    exit;
  end;

  if (ZQ_ProductoCabeceraCOLOR.IsNull) then
  begin
    Application.MessageBox('El campo Color se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    tabs.ActivePageIndex:= 0;
    cmbColor.SetFocus;
    result := false;
    exit;
  end;

  if (ZQ_ProductoCabecera.State=dsInsert) then
  begin
    ZQ_ExisteCodigo.Close;
    ZQ_ExisteCodigo.ParamByName('codigo').AsString:= edCodCorto.Text;
    ZQ_ExisteCodigo.ParamByName('idMarca').AsInteger:= ZQ_ProductoCabeceraID_MARCA.AsInteger;
    ZQ_ExisteCodigo.Open;

    if not ZQ_ExisteCodigo.IsEmpty then
      if (application.MessageBox(pchar('El Codigo Corto '+ZQ_ProductoCabeceraCOD_CORTO.AsString+ ' ya existe para la marca '+ZQ_ProductoCabecera_marca.AsString+#13+'¿Desea cargarlo igualmente?'), 'Código Corto Repetido', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
        exit
      else
      begin
        tabs.ActivePageIndex:= 0;
        edCodCorto.SetFocus;
        result := false;
        exit;
      end;
  end;
end;


function TFABMProductos.validarcamposDetalle():Boolean;
begin
  result := true;

  if (ZQ_DetalleProductoCOD_CORTO.IsNull) then
  begin
    Application.MessageBox('El campo Código Corto se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    tabs.ActivePageIndex:= 1;
//    dpCodCorto.SetFocus;
    result := false;
    exit;
  end;

  if (ZQ_DetalleProductoPRECIO_COSTO.IsNull) then
  begin
    Application.MessageBox('El campo Precio Costo se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    tabs.ActivePageIndex:= 1;
    //dpCosto.SetFocus;
    result := false;
    exit;
  end;

  if (ZQ_DetalleProductoPRECIO_VENTA.IsNull) then
  begin
    Application.MessageBox('El campo Precio Venta se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    tabs.ActivePageIndex:= 1;
    //dpVenta.SetFocus;
    result := false;
    exit;
  end;

   if (ZQ_DetalleProductoID_MEDIDA.IsNull) then
  begin
    Application.MessageBox('El campo Medida se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    tabs.ActivePageIndex:= 1;
//    dpMedida.SetFocus;
    result := false;
    exit;
  end;
end;


function TFABMProductos.validarcamposDetalle2():Boolean;
begin
  result := true;

 
  if (ZQ_DetalleProductoPRECIO_COSTO.IsNull) then
  begin
    Application.MessageBox('El campo Precio Costo se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    tabs.ActivePageIndex:= 1;
    //dpCosto.SetFocus;
    result := false;
    exit;
  end;

  if (ZQ_DetalleProductoPRECIO_VENTA.IsNull) then
  begin
    Application.MessageBox('El campo Precio Venta se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    tabs.ActivePageIndex:= 1;
    //dpVenta.SetFocus;
    result := false;
    exit;
  end;

   if (CDMedidas.IsEmpty) then
  begin
    Application.MessageBox('El campo Medida se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    tabs.ActivePageIndex:= 1;
    grillaMedidas.SetFocus;
    result := false;
    exit;
  end;
end;


procedure TFABMProductos.btnGuardarClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if not validarcampos() then
    exit;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABMProductos) then
    begin
      Grilla.Enabled := true;
      tabs.Enabled:= false;
      EKOrdenarDetalle.PopUpGrilla:= nil;
      GrupoEditando.Enabled := false;
      GrupoVisualizando.Enabled := true;
      tabs.Enabled:= true;
      PProducto.Enabled:=False;
      PEdicion.Visible:=False;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end
end;


procedure TFABMProductos.btnCancelarClick(Sender: TObject);
begin
  if (application.MessageBox(pchar('¿Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION - ABM Productos', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
   if dm.EKModelo.cancelar_transaccion(transaccion_ABMProductos) then
    begin
      Grilla.Enabled := true;
      EKOrdenarDetalle.PopUpGrilla:=nil;
      GrupoVisualizando.Enabled := true;
      GrupoEditando.Enabled := false;
      tabs.Enabled:= true;
      PProducto.Enabled:=False;
      PEdicion.Visible:=False;
    end;
end;


procedure TFABMProductos.btnModificarClick(Sender: TObject);
begin
if ZQ_ProductoCabecera.IsEmpty then exit;

if dm.EKModelo.iniciar_transaccion(transaccion_ABMProductos, [ZQ_ProductoCabecera,ZQ_DetalleProducto]) then
  begin
    grilla.Enabled := false;
    EKOrdenarDetalle.PopUpGrilla:=PopupMenuDetalleProd;
    tabs.Enabled:= true;
    tabs.ActivePageIndex:= 0;
    PProducto.Enabled:=True;
    ZQ_ProductoCabecera.edit;

    edNombre.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoVisualizando.Enabled := false;
  end;
end;


procedure TFABMProductos.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
 if (ZQ_ProductoCabecera.IsEmpty) OR (ZQ_ProductoCabeceraBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja el Producto seleccionado?'), 'ABM Productos', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMProductos, [ZQ_ProductoCabecera]) then
    begin
      ZQ_ProductoCabecera.Edit;
      ZQ_ProductoCabeceraBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMProductos)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMProductos);

    recNo:= ZQ_ProductoCabecera.RecNo;
    ZQ_ProductoCabecera.Refresh;
    ZQ_ProductoCabecera.RecNo:= recNo;
  end;
end;


procedure TFABMProductos.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_ProductoCabecera.IsEmpty) OR (ZQ_ProductoCabeceraBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar el Producto seleccionado?'), 'ABM Productos', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMProductos, [ZQ_ProductoCabecera]) then
    begin
      ZQ_ProductoCabecera.Edit;
      ZQ_ProductoCabeceraBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMProductos)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMProductos);

    recNo:= ZQ_ProductoCabecera.RecNo;
    ZQ_ProductoCabecera.Refresh;
    ZQ_ProductoCabecera.RecNo:= recNo;
  end;
end;


procedure TFABMProductos.AgregaDetalleClick(Sender: TObject);
begin
 if  (ZQ_ProductoCabecera.State <> dsedit) and (ZQ_ProductoCabecera.State <> dsinsert) then
   exit;

 if ZQ_ProductoCabeceraID_ARTICULO.IsNull then
 begin
    showmessage('Debe cargar algún artículo!');
    exit;
 end;

  //Deshabilito el cod corto cuando inserto un nuevo producto, lo genera solo el sistema
  LabelCodCorto.Enabled:= false;
  EDDCODCORTO.Enabled := false;

  ZQ_Articulo.Refresh;

  ZQ_DetalleProducto.Append;
  ZQ_DetalleProductoLLEVAR_STOCK.AsString:= 'S';
  ZQ_DetalleProductoPRECIO_COSTO.AsFloat:= 0;
  ZQ_DetalleProductoPRECIO_COSTO_CIMPUESTOS.AsFloat:= 0;
  ZQ_DetalleProductoPRECIO_VENTA.AsFloat:= 0;
  ZQ_DetalleProductoCOEF_GANANCIA.AsFloat:= 0;
  ZQ_DetalleProductoCOEF_DESCUENTO.AsFloat:= 0;
  ZQ_DetalleProductoIMPUESTO_INTERNO.AsFloat:= 0;
  ZQ_DetalleProductoIMPUESTO_IVA.AsFloat:= 0;
  ZQ_DetalleProductoIMPUESTO_ADICIONAL1.AsFloat:= 0;
  ZQ_DetalleProductoIMPUESTO_ADICIONAL2.AsFloat:= 0;
  ZQ_DetalleProductoSTOCK_MIN.AsFloat:= 0;
  ZQ_DetalleProductoSTOCK_MAX.AsFloat:= 0;
  ZQ_DetalleProductoID_PROD_CABECERA.AsInteger:= ZQ_ProductoCabeceraID_PROD_CABECERA.AsInteger;

  PEdicion.Visible:=True;
  PMedidas.Visible:=True;
  EKOrdenarDetalle.PopUpGrilla:=nil;
  grillaDetalle.Enabled:=False;
  GrupoEditando.Enabled:= false;

  campoQueCambia:= '';
end;


procedure TFABMProductos.EditarDetalleClick(Sender: TObject);
begin
  if ZQ_DetalleProducto.IsEmpty then
    exit;

  if  (ZQ_ProductoCabecera.State <> dsedit) and (ZQ_ProductoCabecera.State <> dsinsert) then
    exit;

  PEdicion.Visible:=True;
  PMedidas.Visible:=False;
  EKOrdenarDetalle.PopUpGrilla:=nil;
  grillaDetalle.Enabled:=false;
  GrupoEditando.Enabled :=false;
  ZQ_DetalleProducto.Edit;
  LabelCodCorto.Enabled:= true;
  EDDCODCORTO.Enabled := true;
  
  campoQueCambia:= '';
end;


procedure TFABMProductos.grupoAceptarClick(Sender: TObject);
  var
codc,codb,descr,llevarStock:String;
pc,pv,cg,cd,iint,iiva,smin,smax, iad1, iad2, pci:Real;
begin

 //Si inserto uno nuevo genero un id nuevo y meto las medidas
 if (ZQ_DetalleProducto.State=dsInsert) then
 begin
  CDMedidas.First;
  if not(validarcamposDetalle2) then
   exit;
    //Guardo los valores en comun para cada detalle
    llevarStock:=ZQ_DetalleProductoLLEVAR_STOCK.AsString;
    codc:=ZQ_DetalleProductoCOD_CORTO.AsString;
    codb:=ZQ_DetalleProductoCODIGO_BARRA.AsString;
    pc:=ZQ_DetalleProductoPRECIO_COSTO.AsFloat;
    pci:=ZQ_DetalleProductoPRECIO_COSTO_CIMPUESTOS.AsFloat;
    pv:=ZQ_DetalleProductoPRECIO_VENTA.AsFloat;
    cg:=ZQ_DetalleProductoCOEF_GANANCIA.AsFloat;
    cd:=ZQ_DetalleProductoCOEF_DESCUENTO.AsFloat;
    iint:=ZQ_DetalleProductoIMPUESTO_INTERNO.AsFloat;
    iiva:=ZQ_DetalleProductoIMPUESTO_IVA.AsFloat;
    iad1:=ZQ_DetalleProductoIMPUESTO_ADICIONAL1.AsFloat;
    iad2:=ZQ_DetalleProductoIMPUESTO_ADICIONAL2.AsFloat;
    smin:=ZQ_DetalleProductoSTOCK_MIN.AsFloat;
    smax:=ZQ_DetalleProductoSTOCK_MAX.AsFloat;
    descr:=ZQ_DetalleProductoDESCRIPCION.AsString;
    ZQ_DetalleProductoID_PROD_CABECERA.AsInteger:= ZQ_ProductoCabeceraID_PROD_CABECERA.AsInteger;
    ZQ_DetalleProductoID_MEDIDA.AsInteger:=CDMedidasid_medida.AsInteger;
    ZSP_GenerarIDProdDeralle.Active:=False;
    ZSP_GenerarIDProdDeralle.Active:=True;
    ZQ_DetalleProductoID_PRODUCTO.AsInteger:=ZSP_GenerarIDProdDeralleID.AsInteger;

    if ZQ_DetalleProductoCOD_CORTO.AsString='' then
       ZQ_DetalleProductoCOD_CORTO.AsString:=IntToStr(ZSP_GenerarIDProdDeralleID.AsInteger);//rellenar(CDMedidasmedida.AsString,'0',5);

    if ZQ_DetalleProductoCODIGO_BARRA.AsString='' then
      ZQ_DetalleProductoCODIGO_BARRA.AsString:=rellenar(ZSP_GenerarIDProdDeralleID.AsString,'0',20);//armarCodBarras(ZQ_ProductoCabeceraCOD_CORTO.AsString,ZQ_ColorCODIGO.AsString,ZQ_DetalleProductoCOD_CORTO.AsString);

    ZQ_DetalleProducto.Post;
    ZQ_DetalleProducto.Filtered := false;
    ZQ_DetalleProducto.Filter:= Format('id_medida = %d',[CDMedidasid_medida.AsInteger]);
    ZQ_DetalleProducto.Filtered := true;
    //Si existe cancelo el registro actual

    if (ZQ_DetalleProducto.RecordCount>1) then
     begin
      ZQ_DetalleProducto.Locate('ID_PRODUCTO',ZSP_GenerarIDProdDeralleID.AsInteger,[]);
      ZQ_DetalleProducto.Delete;
      Application.MessageBox('Esta medida ya fue cargada','Carga medida',MB_OK+MB_ICONINFORMATION);
     end;



    ZQ_DetalleProducto.Filtered:=False;

    //Recorro las medidas (a partir de la segunda, la 1era ya la guardé)y creo los detalles uno a uno.
    CDMedidas.Next;

  while not(CDMedidas.Eof) do
  begin
    ZQ_DetalleProducto.Filtered := false;
    ZQ_DetalleProducto.Filter:= Format('id_medida = %d',[CDMedidasid_medida.AsInteger]);
    ZQ_DetalleProducto.Filtered := true;

    if (ZQ_DetalleProducto.IsEmpty) then
     begin
        ZQ_DetalleProducto.Append;
        //Cada detalle tiene los mismos datos precargados
        ZQ_DetalleProductoLLEVAR_STOCK.AsString:=llevarStock;
        //ZQ_DetalleProductoCOD_CORTO.AsString:=codc;
        //ZQ_DetalleProductoCODIGO_BARRA.AsString:=codb;
        ZQ_DetalleProductoPRECIO_COSTO.AsFloat:=pc;
        ZQ_DetalleProductoPRECIO_COSTO_CIMPUESTOS.AsFloat:=pci;
        ZQ_DetalleProductoPRECIO_VENTA.AsFloat:=pv;
        ZQ_DetalleProductoCOEF_GANANCIA.AsFloat:=cg;
        ZQ_DetalleProductoCOEF_DESCUENTO.AsFloat:=cd;
        ZQ_DetalleProductoIMPUESTO_INTERNO.AsFloat:=iint;
        ZQ_DetalleProductoIMPUESTO_IVA.AsFloat:=iiva;
        ZQ_DetalleProductoIMPUESTO_ADICIONAL1.AsFloat:=iad1;
        ZQ_DetalleProductoIMPUESTO_ADICIONAL2.AsFloat:=iad2;
        ZQ_DetalleProductoSTOCK_MIN.AsFloat:=smin;
        ZQ_DetalleProductoSTOCK_MAX.AsFloat:=smax;
        ZQ_DetalleProductoID_PROD_CABECERA.AsInteger:= ZQ_ProductoCabeceraID_PROD_CABECERA.AsInteger;
        ZQ_DetalleProductoID_MEDIDA.AsInteger:=CDMedidasid_medida.AsInteger;
        ZQ_DetalleProductoDESCRIPCION.AsString:=descr;

       //Si inserto uno nuevo genero un id nuevo
       if (ZQ_DetalleProducto.State=dsInsert) then
       begin
        ZSP_GenerarIDProdDeralle.Active:=False;
        ZSP_GenerarIDProdDeralle.Active:=True;
        ZQ_DetalleProductoID_PRODUCTO.AsInteger:=ZSP_GenerarIDProdDeralleID.AsInteger;
        if ZQ_DetalleProductoCOD_CORTO.AsString='' then
           ZQ_DetalleProductoCOD_CORTO.AsString:=IntToStr(ZQ_DetalleProductoID_PRODUCTO.AsInteger);

        if ZQ_DetalleProductoCODIGO_BARRA.AsString='' then
           ZQ_DetalleProductoCODIGO_BARRA.AsString:=rellenar(ZQ_DetalleProductoID_PRODUCTO.AsString,'0',20);
       end;
        ZQ_DetalleProducto.Post;
        ZQ_DetalleProducto.Filtered := false;
        ZQ_DetalleProducto.Filter:= Format('id_medida = %d',[CDMedidasid_medida.AsInteger]);
        ZQ_DetalleProducto.Filtered := true;
        //Si existe cancelo el registro actual

        if (ZQ_DetalleProducto.RecordCount>1) then
         begin
          ZQ_DetalleProducto.Locate('ID_PRODUCTO',ZSP_GenerarIDProdDeralleID.AsInteger,[]);
          ZQ_DetalleProducto.Delete;
          Application.MessageBox('Esta medida ya fue cargada','Carga medida',MB_OK+MB_ICONINFORMATION);
         end;
     end;
     ZQ_DetalleProducto.Filtered:=False;
     CDMedidas.Next;
  end;
 end
else
  begin
   if not(validarcamposDetalle) then
    exit;

  if ZQ_DetalleProductoCOD_CORTO.AsString='' then
     ZQ_DetalleProductoCOD_CORTO.AsString:=IntToStr(ZQ_DetalleProductoID_PRODUCTO.AsInteger);

  if ZQ_DetalleProductoCODIGO_BARRA.AsString='' then
     ZQ_DetalleProductoCODIGO_BARRA.AsString:=rellenar(ZQ_DetalleProductoID_PRODUCTO.AsString,'0',20);

   ZQ_DetalleProducto.Post;
  end;

   PEdicion.Visible:=False;
   EKOrdenarDetalle.PopUpGrilla:=PopupMenuDetalleProd;
   grillaDetalle.Enabled:=True;
   GrupoEditando.Enabled :=true;
end;


procedure TFABMProductos.grupoCancelarClick(Sender: TObject);
begin
  EKOrdenarDetalle.PopUpGrilla:=PopupMenuDetalleProd;
  ZQ_DetalleProducto.RevertRecord;
  GrupoEditando.Enabled :=true;
  grillaDetalle.Enabled:=True;
  PEdicion.Visible:=false;
end;


procedure TFABMProductos.ZQ_ProductoCabeceraAfterScroll(DataSet: TDataSet);
begin
  ZQ_DetalleProducto.Close;
  ZQ_DetalleProducto.ParamByName('prod').AsInteger:=ZQ_ProductoCabeceraID_PROD_CABECERA.AsInteger;
  dm.EKModelo.abrir(ZQ_DetalleProducto);
end;


procedure TFABMProductos.ZQ_ArticuloAfterScroll(DataSet: TDataSet);
begin
    ZQ_MedidaArticulo.Close;
        ZQ_MedidaArticulo.ParamByName('artic').AsInteger:=ZQ_ProductoCabeceraID_ARTICULO.AsInteger;
        dm.EKModelo.abrir(ZQ_MedidaArticulo);
        ZQ_MedidaArticulo.First;
        
   if dm.EKModelo.verificar_transaccion(transaccion_ABMProductos) then
     begin
        //Traigo las medidas que correspondan a un tipo de articulo
        CDMedidas.EmptyDataSet;
        ZQ_MedidaArticulo.Close;
        ZQ_MedidaArticulo.ParamByName('artic').AsInteger:=ZQ_ProductoCabeceraID_ARTICULO.AsInteger;
        dm.EKModelo.abrir(ZQ_MedidaArticulo);
        ZQ_MedidaArticulo.First;

        while not(ZQ_MedidaArticulo.Eof) do
        begin
          ZQ_DetalleProducto.Filtered := false;
          ZQ_DetalleProducto.Filter:= Format('id_medida = %d',[ZQ_MedidaArticuloID_MEDIDA.AsInteger]);
          ZQ_DetalleProducto.Filtered := true;
          if (ZQ_DetalleProducto.IsEmpty) then
             begin
                CDMedidas.Append;
                CDMedidasid_medida.AsInteger:=ZQ_MedidaArticuloID_MEDIDA.AsInteger;
                CDMedidasmedida.AsString:=ZQ_MedidaArticuloMEDIDA.AsString;
                CDMedidas.Post;
             end;
          ZQ_MedidaArticulo.Next;
        end;
        ZQ_DetalleProducto.Filtered:=False;
     end;
end;


procedure TFABMProductos.edImagenDblClick(Sender: TObject);
var
  jpg: TJpegImage;
begin
  try
   if dm.EKModelo.verificar_transaccion(transaccion_ABMProductos) then
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
  imagen: TGraphic; //contiene la imagen, es del tipo TGraphic poque puede ser jpg o bmp
  auxBmp: TBitmap;
  Rectangulo: TRect;
  EscalaX,
  EscalaY,
  Escala: Single;
begin
  auxBMP:= TBitMap.Create;

  //creo el tipo correcto dependiendo de la extencion del archivo
  if pos('.jpg', archivo) > 0 then
    imagen:= TJPEGImage.Create
  else
    if pos('.jpeg', archivo) > 0 then
      imagen:= TJPEGImage.Create
    else
      if pos('.bmp', archivo) > 0 then
        imagen:= TBitmap.Create;

  try
    //cargo la imagen
    imagen.LoadFromFile(Archivo);

//    //comprimo la imagen
    auxBMP.Assign(imagen);
//    TJPEGImage (imagen).Palette:= TIcon(FPrincipal.Iconos_Menu_32.Components[1]).Palette;
    TJPEGImage (imagen).CompressionQuality:= 50;
    TJPEGImage (imagen).Compress;

    //Por defecto, escala 1:1
    EscalaX := 1.0;
    EscalaY := 1.0;

    //Hallamos la escala de reducción Horizontal
    if edImagen.Width < imagen.Width then
      EscalaX := edImagen.Width / imagen.Width;

    //La escala vertical
    if edImagen.Height < imagen.Height then
      EscalaY := edImagen.Height / imagen.Height;

    //Escogemos la menor de las 2
    if EscalaY < EscalaX then Escala := EscalaY else Escala := EscalaX;

    //Y la usamos para reducir el rectangulo destino
    with Rectangulo do begin
      Right := Trunc(imagen.Width * Escala);
      Bottom := Trunc(imagen.Height * Escala);
      Left := 0;
      Top := 0;
    end;

    //Dibujamos el bitmap con el nuevo tamaño en el TImage destino
    with edImagen.Picture.Bitmap do begin
      Width := Rectangulo.Right;
      Height := Rectangulo.Bottom;
      Canvas.StretchDraw(Rectangulo, imagen);
    end;

  finally
    imagen.Free;
    auxBmp.Free;
  end;
end;


procedure TFABMProductos.GrillaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(Grilla, ZQ_ProductoCabeceraBAJA.AsString, Rect, DataCol, Column, State);
end;


procedure TFABMProductos.tabsChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
 if (ZQ_DetalleProducto.state=dsInsert)or(ZQ_DetalleProducto.state=dsEdit) then
    AllowChange:=False;
end;


procedure TFABMProductos.cmbMarcaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
    if EKListadoMarca.Buscar then
    begin
      ZQ_ProductoCabecera.Edit;
      ZQ_ProductoCabeceraID_MARCA.AsInteger := StrToInt(EKListadoMarca.Resultado);
      cmbMarca.setfocus;
    end;
end;


procedure TFABMProductos.cmbArticuloKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
    if EKListadoArticulo.Buscar then
    begin
      ZQ_ProductoCabecera.Edit;
      ZQ_ProductoCabeceraID_ARTICULO.AsInteger := StrToInt(EKListadoArticulo.Resultado);
      cmbArticulo.setfocus;
    end;
end;


procedure TFABMProductos.MenuItem1Click(Sender: TObject);
begin
  EKListadoMedidas.SQL.Clear;
  EKListadoMedidas.SQL.Add(Format('select m.* from medida_articulo ma '+
                               'join medida m on (ma.id_medida=m.id_medida)'+
                               'where (ma.id_articulo=%d)and(ma.baja<>%s)' +
                               ' order by m.medida',[ZQ_ArticuloID_ARTICULO.AsInteger,QuotedStr('S')]));
  if EKListadoMedidas.Buscar then
    begin
      CDMedidas.Filter:= 'id_medida = '+EKListadoMedidas.Resultado;
      CDMedidas.Filtered := true;
      if not CDMedidas.IsEmpty then
       begin
        CDMedidas.Filtered := false;
        Application.MessageBox('Esta medida ya fue cargada','Carga medida',MB_OK+MB_ICONINFORMATION);
        exit;
       end;
      CDMedidas.Filtered := false;
      CDMedidas.Append;
      CDMedidasid_medida.AsString := EKListadoMedidas.Resultado;
      CDMedidasmedida.AsString := EKListadoMedidas.Seleccion;
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
  ZQ_DetalleProducto.Delete;
end;


procedure TFABMProductos.ZQ_ColorAfterScroll(DataSet: TDataSet);
begin
  if not(ZQ_ColorREFERENCIA.IsNull) then
    Shape1.Brush.Color:=StringToColor(ZQ_ColorREFERENCIA.AsString);
end;


function TFABMProductos.armarCodBarras(cod1,cod2,cod3:String):String ;
begin
  //asdasd
  Result:=cod1+cod2+cod3;
end;


procedure TFABMProductos.edCodCortoExit(Sender: TObject);
begin
  if edCodCorto.Text <> '' then
    edCodCorto.Text:= rellenar(edCodCorto.Text,'0',5);

  if ZQ_ProductoCabeceraNOMBRE.IsNull then
    ZQ_ProductoCabeceraNOMBRE.AsString:= edCodCorto.Text;
end;


procedure TFABMProductos.cmbColorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 112 then
    if EKListadoColor.Buscar then
    begin
      ZQ_ProductoCabecera.Edit;
      ZQ_ProductoCabeceraCOLOR.AsInteger := StrToInt(EKListadoColor.Resultado);
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
  QRlblPieDePaginaListado.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
  EKVistaPreviaListado.VistaPrevia;
  
  panelImprimirListado.Visible:= false;
  GrupoVisualizando.Enabled:= true;
end;


procedure TFABMProductos.btBuscarEnGoogleClick(Sender: TObject);
begin
  if ZQ_ProductoCabecera.IsEmpty then
  exit;

  ShellExecute(self.handle, 'open', pchar('http://www.google.com.ar/#hl=es-419&q='+ZQ_ProductoCabeceraNOMBRE.AsString+'&oq'), nil, nil,
  SW_SHOWNORMAL);
end;


procedure TFABMProductos.actualizarPrecios(llamador: string);
var
  costo_neto, costo_con_impuestos, imp_adicional_1,
  imp_adicional_2, imp_iva, coef_ganancia, precio_venta: double;
begin
  costo_neto:= ZQ_DetalleProductoPRECIO_COSTO.AsFloat;
  costo_con_impuestos:= ZQ_DetalleProductoPRECIO_COSTO_CIMPUESTOS.AsFloat;
  imp_adicional_1:= ZQ_DetalleProductoIMPUESTO_ADICIONAL1.AsFloat;
  imp_adicional_2:= ZQ_DetalleProductoIMPUESTO_ADICIONAL2.AsFloat;
  imp_iva:= ZQ_DetalleProductoIMPUESTO_IVA.AsFloat;
  coef_ganancia:= ZQ_DetalleProductoCOEF_GANANCIA.AsFloat;
  precio_venta:= ZQ_DetalleProductoPRECIO_VENTA.AsFloat;

  if llamador <> 'PRECIO_VENTA' then
  begin
    campoQueCambia:= 'PRECIO_VENTA';
    costo_con_impuestos:= costo_neto + (costo_neto * (imp_adicional_1/100)) + (costo_neto * (imp_adicional_2/100)) + (costo_neto * (imp_iva/100));
    precio_venta:= costo_con_impuestos * (1 + coef_ganancia);

    ZQ_DetalleProductoPRECIO_COSTO_CIMPUESTOS.AsFloat:= costo_con_impuestos;
    ZQ_DetalleProductoPRECIO_VENTA.AsFloat:= precio_venta;
  end
  else
  begin
    campoQueCambia:= 'COEF_GANANCIA';
    coef_ganancia:= (precio_venta / costo_con_impuestos) - 1;
    ZQ_DetalleProductoCOEF_GANANCIA.AsFloat:= coef_ganancia;
  end
end;


procedure TFABMProductos.ZQ_DetalleProductoPRECIO_COSTOChange(Sender: TField);
begin
  actualizarPrecios('PRECIO_COSTO');
end;


procedure TFABMProductos.ZQ_DetalleProductoCOEF_GANANCIAChange(Sender: TField);
begin
  if campoQueCambia <> 'COEF_GANANCIA' then
    actualizarPrecios('COEF_GANANCIA');
end;


procedure TFABMProductos.ZQ_DetalleProductoPRECIO_VENTAChange(Sender: TField);
begin
  if campoQueCambia <> 'PRECIO_VENTA' then
    actualizarPrecios('PRECIO_VENTA');
end;


procedure TFABMProductos.ZQ_DetalleProductoIMPUESTO_IVAChange(
  Sender: TField);
begin
  actualizarPrecios('IMP_IVA');
end;

procedure TFABMProductos.ZQ_DetalleProductoIMPUESTO_ADICIONAL1Change(
  Sender: TField);
begin
  actualizarPrecios('IMP_ADICIONAL1');
end;

procedure TFABMProductos.ZQ_DetalleProductoIMPUESTO_ADICIONAL2Change(
  Sender: TField);
begin
  actualizarPrecios('IMP_ADICIONAL2');
end;

procedure TFABMProductos.DBEditCoefGananciaEnter(Sender: TObject);
begin
  campoQueCambia:= 'PRECIO_VENTA';
end;

procedure TFABMProductos.DBEditPrecioVentaEnter(Sender: TObject);
begin
  campoQueCambia:= 'COEF_GANANCIA';
end;

procedure TFABMProductos.grillaDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(grillaDetalle, Rect, DataCol, Column, State);
end;

end.
