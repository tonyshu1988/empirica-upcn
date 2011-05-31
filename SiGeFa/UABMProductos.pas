unit UABMProductos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls,
  ExtCtrls, Grids, DBGrids, EKDBGrid, dxBar, dxBarExtItems, StdCtrls,
  DBCtrls, Mask, EKBusquedaAvanzada, EKOrdenarGrilla, EKLlenarCombo, Menus,
  Buttons, ZStoredProcedure, jpeg, ExtDlgs, EKListadoSQL, DBClient;

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
    ZQ_ProductoCabeceraAUD_USUARIO: TStringField;
    ZQ_ProductoCabeceraAUD_FECHA: TDateTimeField;
    ZQ_ProductoCabeceraID_ARTICULO: TIntegerField;
    DS_ProductoCabecera: TDataSource;
    Grilla: TEKDBGrid;
    dxBarABM: TdxBarManager;
    BtNuevo: TdxBarLargeButton;
    BtModificar: TdxBarLargeButton;
    btBaja: TdxBarLargeButton;
    btBuscar: TdxBarLargeButton;
    BtGuardar: TdxBarLargeButton;
    BtCancelar: TdxBarLargeButton;
    BtImprimir: TdxBarLargeButton;
    btReactivar: TdxBarLargeButton;
    btsalir: TdxBarLargeButton;
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
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    EDDCODCORTO: TDBEdit;
    EDDCODBARRAS: TDBEdit;
    DBEdit11: TDBEdit;
    DBMemo1: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    Label23: TLabel;
    DBEdit1: TDBEdit;
    Label25: TLabel;
    DBEdit3: TDBEdit;
    Label27: TLabel;
    DBEdit5: TDBEdit;
    Label24: TLabel;
    DBEdit2: TDBEdit;
    Label26: TLabel;
    DBEdit4: TDBEdit;
    Label28: TLabel;
    DBEdit6: TDBEdit;
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
    ZQ_ColorID_COLOR: TIntegerField;
    ZQ_ColorCODIGO: TStringField;
    ZQ_ColorNOMBRE: TStringField;
    ZQ_ColorREFERENCIA: TStringField;
    ZQ_ColorBAJA: TStringField;
    ZQ_ProductoCabeceraCOLOR: TIntegerField;
    DS_Color: TDataSource;
    ZQ_ColorRESUMEN: TStringField;
    Shape1: TShape;
    procedure btBuscarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btsalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtNuevoClick(Sender: TObject);
    procedure BtGuardarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtModificarClick(Sender: TObject);
    procedure btBajaClick(Sender: TObject);
    procedure btReactivarClick(Sender: TObject);
    procedure AgregaDetalleClick(Sender: TObject);
    procedure EditarDetalleClick(Sender: TObject);
    procedure grupoAceptarClick(Sender: TObject);
    procedure grupoCancelarClick(Sender: TObject);
    procedure ZQ_ProductoCabeceraAfterScroll(DataSet: TDataSet);
    procedure ZQ_ArticuloAfterScroll(DataSet: TDataSet);
    procedure edImagenDblClick(Sender: TObject);
    procedure GrillaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    function validarcampos():Boolean;
    function validarcamposDetalle():Boolean;
    procedure CargaImagenProporcionado(Archivo: string);
    procedure tabsChanging(Sender: TObject; var AllowChange: Boolean);
    procedure ZQ_DetalleProductoCOEF_GANANCIAChange(Sender: TField);
    procedure ZQ_DetalleProductoPRECIO_VENTAChange(Sender: TField);
    procedure cmbMarcaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbArticuloKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ZQ_DetalleProductoPRECIO_COSTOChange(Sender: TField);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    function validarcamposDetalle2():Boolean;
    procedure QuitarDetalleClick(Sender: TObject);
    procedure ZQ_ColorAfterScroll(DataSet: TDataSet);
    function armarCodBarras(cod1,cod2,cod3:String):String ;
    procedure edCodCortoExit(Sender: TObject);
  private
    { Private declarations }
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

procedure TFABMProductos.btBuscarClick(Sender: TObject);
begin
    EKBuscar.Buscar;
end;


procedure TFABMProductos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABMProductos);
end;


procedure TFABMProductos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenar.GuardarConfigColumnas
end;


procedure TFABMProductos.btsalirClick(Sender: TObject);
begin
  close;
end;


procedure TFABMProductos.FormCreate(Sender: TObject);
begin
  StaticTxtBaja.Color:= FPrincipal.baja;
  dm.EKModelo.abrir(ZQ_Articulo);
  dm.EKModelo.abrir(ZQ_Marca);
  dm.EKModelo.abrir(ZQ_Color);  
  dm.EKModelo.abrir(ZQ_MedidaArticulo);
  grillaDetalle.PopupMenu:=nil;
  tabs.ActivePageIndex:=0;
  PProducto.Enabled:=False;
end;


procedure TFABMProductos.BtNuevoClick(Sender: TObject);
begin
if dm.EKModelo.iniciar_transaccion(transaccion_ABMProductos, [ZQ_ProductoCabecera,ZQ_DetalleProducto]) then
  begin
    grillaDetalle.PopupMenu:=PopupMenuDetalleProd;;
    grilla.Enabled := false;
    tabs.Enabled:= true;
    tabs.ActivePageIndex:= 0;
    PProducto.Enabled:=True;
    ZQ_ProductoCabecera.Append;
    ZQ_ProductoCabeceraBAJA.AsString:= 'N';

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

  if (ZQ_ProductoCabeceraID_MARCA.IsNull) then
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


procedure TFABMProductos.BtGuardarClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if not validarcampos() then
    exit;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABMProductos) then
    begin
      Grilla.Enabled := true;
      tabs.Enabled:= false;
      grillaDetalle.PopupMenu:=nil;
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


procedure TFABMProductos.BtCancelarClick(Sender: TObject);
begin
 if dm.EKModelo.cancelar_transaccion(transaccion_ABMProductos) then
  begin
    Grilla.Enabled := true;
    grillaDetalle.PopupMenu:=nil;
    GrupoVisualizando.Enabled := true;
    GrupoEditando.Enabled := false;
    tabs.Enabled:= true;
    PProducto.Enabled:=False;
    PEdicion.Visible:=False;
  end;
end;


procedure TFABMProductos.BtModificarClick(Sender: TObject);
begin
if ZQ_ProductoCabecera.IsEmpty then exit;

if dm.EKModelo.iniciar_transaccion(transaccion_ABMProductos, [ZQ_ProductoCabecera,ZQ_DetalleProducto]) then
  begin
    grilla.Enabled := false;
    grillaDetalle.PopupMenu:=PopupMenuDetalleProd;
    tabs.Enabled:= true;
    tabs.ActivePageIndex:= 0;
    PProducto.Enabled:=True;
    ZQ_ProductoCabecera.edit;

    edNombre.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoVisualizando.Enabled := false;
  end;
end;


procedure TFABMProductos.btBajaClick(Sender: TObject);
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


procedure TFABMProductos.btReactivarClick(Sender: TObject);
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
if ZQ_ProductoCabeceraID_ARTICULO.IsNull then
 begin
    showmessage('Debe cargar algún artículo!');
    exit;
 end;

  ZQ_Articulo.Refresh;

  ZQ_DetalleProducto.Append;
  ZQ_DetalleProductoLLEVAR_STOCK.AsString:= 'S';
  ZQ_DetalleProductoPRECIO_COSTO.AsFloat:= 0;
  ZQ_DetalleProductoPRECIO_VENTA.AsFloat:= 0;
  ZQ_DetalleProductoCOEF_GANANCIA.AsFloat:= 1;
  ZQ_DetalleProductoCOEF_DESCUENTO.AsFloat:= 0;
  ZQ_DetalleProductoIMPUESTO_INTERNO.AsFloat:= 0;
  ZQ_DetalleProductoIMPUESTO_IVA.AsFloat:= 0;
  ZQ_DetalleProductoSTOCK_MIN.AsFloat:= 0;
  ZQ_DetalleProductoSTOCK_MAX.AsFloat:= 0;
  ZQ_DetalleProductoID_PROD_CABECERA.AsInteger:= ZQ_ProductoCabeceraID_PROD_CABECERA.AsInteger;

  PEdicion.Visible:=True;
  PMedidas.Visible:=True;
  grillaDetalle.PopupMenu:=nil;
  grillaDetalle.Enabled:=False;
  GrupoEditando.Enabled:= false;
end;


procedure TFABMProductos.EditarDetalleClick(Sender: TObject);
begin
if ZQ_DetalleProducto.IsEmpty then
 exit;

   PEdicion.Visible:=True;
   PMedidas.Visible:=False;
   grillaDetalle.PopupMenu:=nil;
   grillaDetalle.Enabled:=false;
   GrupoEditando.Enabled :=false;
   ZQ_DetalleProducto.Edit;
end;


procedure TFABMProductos.grupoAceptarClick(Sender: TObject);
  var
codc,codb,descr,llevarStock:String;
pc,pv,cg,cd,iint,iiva,smin,smax:Real;
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
    pv:=ZQ_DetalleProductoPRECIO_VENTA.AsFloat;
    cg:=ZQ_DetalleProductoCOEF_GANANCIA.AsFloat;
    cd:=ZQ_DetalleProductoCOEF_DESCUENTO.AsFloat;
    iint:=ZQ_DetalleProductoIMPUESTO_INTERNO.AsFloat;
    iiva:=ZQ_DetalleProductoIMPUESTO_IVA.AsFloat;
    smin:=ZQ_DetalleProductoSTOCK_MIN.AsFloat;
    smax:=ZQ_DetalleProductoSTOCK_MAX.AsFloat;
    descr:=ZQ_DetalleProductoDESCRIPCION.AsString;
    ZQ_DetalleProductoID_PROD_CABECERA.AsInteger:= ZQ_ProductoCabeceraID_PROD_CABECERA.AsInteger;
    ZQ_DetalleProductoID_MEDIDA.AsInteger:=CDMedidasid_medida.AsInteger;
    ZSP_GenerarIDProdDeralle.Active:=False;
    ZSP_GenerarIDProdDeralle.Active:=True;
    ZQ_DetalleProductoID_PRODUCTO.AsInteger:=ZSP_GenerarIDProdDeralleID.AsInteger;

    if ZQ_DetalleProductoCOD_CORTO.AsString='' then
       ZQ_DetalleProductoCOD_CORTO.AsString:=rellenar(CDMedidasmedida.AsString,'0',5);

    ZQ_DetalleProductoCODIGO_BARRA.AsString:=armarCodBarras(ZQ_ProductoCabeceraCOD_CORTO.AsString,ZQ_ColorCODIGO.AsString,ZQ_DetalleProductoCOD_CORTO.AsString);

    ZQ_DetalleProducto.Filtered := false;
    ZQ_DetalleProducto.Filter:= Format('id_medida = %d',[CDMedidasid_medida.AsInteger]);
    ZQ_DetalleProducto.Filtered := true;
    //Si existe cancelo el registro actual
    if not(ZQ_DetalleProducto.IsEmpty) then
     begin
      ZQ_DetalleProducto.Delete;
      Application.MessageBox('Esta medida ya fue cargada','Carga medida',MB_OK+MB_ICONINFORMATION);
     end
    else
      //Guardo el que abrí primero.
      ZQ_DetalleProducto.Post;

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
        ZQ_DetalleProductoCOD_CORTO.AsString:=codc;
        ZQ_DetalleProductoCODIGO_BARRA.AsString:=codb;
        ZQ_DetalleProductoPRECIO_COSTO.AsFloat:=pc;
        ZQ_DetalleProductoPRECIO_VENTA.AsFloat:=pv;
        ZQ_DetalleProductoCOEF_GANANCIA.AsFloat:=cg;
        ZQ_DetalleProductoCOEF_DESCUENTO.AsFloat:=cd;
        ZQ_DetalleProductoIMPUESTO_INTERNO.AsFloat:=iint;
        ZQ_DetalleProductoIMPUESTO_IVA.AsFloat:=iiva;
        ZQ_DetalleProductoSTOCK_MIN.AsFloat:=smin;
        ZQ_DetalleProductoSTOCK_MAX.AsFloat:=smax;
        ZQ_DetalleProductoID_PROD_CABECERA.AsInteger:= ZQ_ProductoCabeceraID_PROD_CABECERA.AsInteger;
        ZQ_DetalleProductoID_MEDIDA.AsInteger:=CDMedidasid_medida.AsInteger;
        ZQ_DetalleProductoDESCRIPCION.AsString:=descr;
        if ZQ_DetalleProductoCOD_CORTO.AsString='' then
           ZQ_DetalleProductoCOD_CORTO.AsString:=rellenar(CDMedidasmedida.AsString,'0',5);

        ZQ_DetalleProductoCODIGO_BARRA.AsString:=armarCodBarras(ZQ_ProductoCabeceraCOD_CORTO.AsString,ZQ_ColorCODIGO.AsString,ZQ_DetalleProductoCOD_CORTO.AsString);
       //Si inserto uno nuevo genero un id nuevo
       if (ZQ_DetalleProducto.State=dsInsert) then
       begin
        ZSP_GenerarIDProdDeralle.Active:=False;
        ZSP_GenerarIDProdDeralle.Active:=True;
        ZQ_DetalleProductoID_PRODUCTO.AsInteger:=ZSP_GenerarIDProdDeralleID.AsInteger;
       end;

        ZQ_DetalleProducto.Post;
     end;
     ZQ_DetalleProducto.Filtered:=False;
     CDMedidas.Next;
  end;
 end
else
  begin
   if not(validarcamposDetalle) then
    exit;
   ZQ_DetalleProducto.Post;
  end;

   PEdicion.Visible:=False;
   grillaDetalle.PopupMenu:=PopupMenuDetalleProd;
   grillaDetalle.Enabled:=True;
   GrupoEditando.Enabled :=true;
end;


procedure TFABMProductos.grupoCancelarClick(Sender: TObject);
begin
  grillaDetalle.PopupMenu:=PopupMenuDetalleProd;
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
//    auxBMP.Assign(imagen);
//    TJPEGImage (imagen).CompressionQuality:= 50;
//    TJPEGImage (imagen).Compress;

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
  if ZQ_ProductoCabecera.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(Grilla, ZQ_ProductoCabeceraBAJA.AsString, Rect, DataCol, Column, State);
end;

procedure TFABMProductos.tabsChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
   if (ZQ_DetalleProducto.state=dsInsert)or(ZQ_DetalleProducto.state=dsEdit) then
      AllowChange:=False;
end;

procedure TFABMProductos.ZQ_DetalleProductoCOEF_GANANCIAChange(Sender: TField);
begin
if not(ZQ_DetalleProductoPRECIO_COSTO.IsNull or ZQ_DetalleProductoCOEF_GANANCIA.IsNull) then
  ZQ_DetalleProductoPRECIO_VENTA.AsFloat:= ZQ_DetalleProductoPRECIO_COSTO.AsFloat * (1 + ZQ_DetalleProductoCOEF_GANANCIA.AsFloat);
end;

procedure TFABMProductos.ZQ_DetalleProductoPRECIO_VENTAChange(Sender: TField);
begin
//  ZQ_DetalleProductoPRECIO_VENTA.AsFloat:= ZQ_DetalleProductoPRECIO_COSTO.AsFloat * (1 + ZQ_DetalleProductoCOEF_GANANCIA.AsFloat);
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

procedure TFABMProductos.ZQ_DetalleProductoPRECIO_COSTOChange(
  Sender: TField);
begin
if not(ZQ_DetalleProductoPRECIO_COSTO.IsNull or ZQ_DetalleProductoCOEF_GANANCIA.IsNull) then
  ZQ_DetalleProductoPRECIO_VENTA.AsFloat:= ZQ_DetalleProductoPRECIO_COSTO.AsFloat * (1 + ZQ_DetalleProductoCOEF_GANANCIA.AsFloat);
end;

procedure TFABMProductos.MenuItem1Click(Sender: TObject);
begin
EKListadoMedidas.SQL.Clear;
EKListadoMedidas.SQL.Add(Format('select m.* from medida_articulo ma '+
                             'join medida m on (ma.id_medida=m.id_medida)'+
                             'where (ma.id_articulo=%d)and(ma.baja<>%s)',[ZQ_ArticuloID_ARTICULO.AsInteger,QuotedStr('S')]));
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
if edCodCorto.Text<>'' then
   edCodCorto.Text:=rellenar(edCodCorto.Text,'0',5);

end;

end.
