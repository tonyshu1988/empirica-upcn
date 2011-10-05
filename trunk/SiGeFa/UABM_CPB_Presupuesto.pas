unit UABM_CPB_Presupuesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt, Buttons, ImgList, EKListadoSQL,
  ComCtrls, EKDBDateTimePicker, EKFiltrarColumna, ZStoredProcedure,
  EKDbSuma, DBClient, Menus, UBuscarProducto, UBuscarPersona;

type
  TFABM_CPB_Presupuesto = class(TForm)
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
    ZQ_VerCpbFECHA_VENCIMIENTO: TDateField;
    ZQ_VerCpbSUCURSAL: TStringField;
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
    ZQ_Cliente: TZQuery;
    DS_Cliente: TDataSource;
    btnBuscarPersona: TSpeedButton;
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
    DBText7: TDBText;
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
    ZQ_CpbProductoPORC_DESCUENTO: TFloatField;
    ZQ_CpbProductoBASE_IMPONIBLE: TFloatField;
    ZQ_CpbProductoIMPORTE_UNITARIO: TFloatField;
    ZQ_CpbProductoPORC_IVA: TFloatField;
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
    CD_Producto_precioCosto: TFloatField;
    CD_Producto_precioVenta: TFloatField;
    CD_Producto_coefGanancia: TFloatField;
    CD_Producto_coefDescuento: TFloatField;
    CD_Producto_impuestoIVA: TFloatField;
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
    PanelFechaVencimiento: TPanel;
    PanelFechaEmision: TPanel;
    EKDBDateEmision: TEKDBDateTimePicker;
    lblTituloFecha_Emision: TLabel;
    EKDBDateVencimiento: TEKDBDateTimePicker;
    lblTituloFecha_Vencimiento: TLabel;
    ZQ_BuscarMail: TZQuery;
    ZQ_BuscarMailEMAIL: TStringField;
    btnConfirmar: TdxBarLargeButton;
    EKSuma_Productos: TEKDbSuma;
    EKOrd_EditarProducto: TEKOrdenarGrilla;
    ZQ_ComprobanteID_TIPO_IVA: TIntegerField;
    ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_ComprobanteIMPORTE_VENTA: TFloatField;
    ZQ_CpbProductoIMPUESTO_INTERNO: TFloatField;
    ZQ_CpbProductoID_STOCK_PRODUCTO: TIntegerField;
    ZQ_CpbProductoIMPORTE_VENTA: TFloatField;
    ZQ_VerCpb_ProductoIMPUESTO_INTERNO: TFloatField;
    ZQ_VerCpb_ProductoCANTIDAD_RECIBIDA: TFloatField;
    ZQ_VerCpb_ProductoCANTIDAD_ALMACENADA: TFloatField;
    ZQ_VerCpb_ProductoID_STOCK_PRODUCTO: TIntegerField;
    ZQ_VerCpb_ProductoIMPORTE_VENTA: TFloatField;
    ZQ_VerCpbBASE_IMPONIBLE: TFloatField;
    ZQ_VerCpbPORC_DESCUENTO: TFloatField;
    ZQ_VerCpbIMPORTE_DESCUENTO: TFloatField;
    ZQ_VerCpbIMPORTE_VENTA: TFloatField;
    ZQ_CpbProducto_Marca: TStringField;
    ZQ_CpbProducto_TipoArticulo: TStringField;
    ZQ_CpbProducto_Articulo: TStringField;
    DS_ImagenSuc: TDataSource;
    ImagenProducto: TDBImage;
    ImagenSucursal: TDBImage;
    DBTxtCodBarra: TDBText;
    DBTxtNombre: TDBText;
    DBTxtMedida: TDBText;
    DBTxtColor: TDBText;
    DBTxtMarca: TDBText;
    editTotalProductos: TEdit;
    editTotalImponible: TEdit;
    editTotalDesc: TEdit;
    editTotalFinal: TEdit;
    Label25: TLabel;
    Label13: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    lblDatos_Cliente: TLabel;
    DBTxtDatos_Cliente: TDBText;
    Label14: TLabel;
    DBText33: TDBText;
    Label15: TLabel;
    DBText1: TDBText;
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
    procedure btnImprimirClick(Sender: TObject);
    procedure ZQ_VerCpbAfterScroll(DataSet: TDataSet);
    procedure modoEdicion(flag: boolean);
    procedure cargarTipoComprobante(tipo: integer);
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
    procedure DBGridListaCpbDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridEditar_ProductoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EKSuma_ProductosSumListChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEditar_ProductoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGridCpbActual_ProductoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnBajaClick(Sender: TObject);
    procedure ZQ_VerCpb_ProductoAfterScroll(DataSet: TDataSet);
  private
    estadoPantalla: string;
    tipoComprobante: integer;
    id_comprobante: integer;
    descuentoCliente: double;
    preguntarPorDescuento: boolean;
    vselProducto: TFBuscarProducto;
    vselPersona: TFBuscarPersona;
    procedure onSelPersona;
    procedure onSelProducto;
    procedure onSelTodosProducto;
  public
    { Public declarations }
  end;

type
  THackDBGrid = class(TDBGrid);

var
  FABM_CPB_Presupuesto: TFABM_CPB_Presupuesto;

const
  transaccion_ABM = 'ABM PRESUPUESTO';
  EDITANDO = 'EDITANDO';
  VIENDO   = 'VIENDO';

implementation

uses UPrincipal, UDM, EKModelo, UImpresion_Comprobantes, UMailEnviar,
  UABM_Comprobantes;

{$R *.dfm}

procedure TFABM_CPB_Presupuesto.modoEdicion(flag:boolean);
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


procedure TFABM_CPB_Presupuesto.FormCreate(Sender: TObject);
begin
  tipoComprobante:= CPB_PRESUPUESTO;

  EKOrd_VerCpb.CargarConfigColumnas;
  EKOrd_VerCpb_Producto.CargarConfigColumnas;
  EKOrd_EditarProducto.CargarConfigColumnas;

  modoEdicion(false);
  StaticTxtBaja.Color:= FPrincipal.baja;
  ImageListEntidad.GetBitmap(1, btnBuscarPersona.Glyph); //cargo la imagen del boton buscar entidad

  //abro todos los recibos del sistema
  EKBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);

  CD_Producto.CreateDataSet;

  DS_ImagenSuc.DataSet:= dm.ZQ_Sucursal;
  ImagenSucursal.DataField:= 'LOGO';
  ImagenProducto.Visible:= false;
  ImagenSucursal.Visible:= true;
end;


procedure TFABM_CPB_Presupuesto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_CPB_Presupuesto.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_CPB_Presupuesto.btnBuscarClick(Sender: TObject);
begin
  if EKbuscar.buscar then
  begin
    ZQ_VerCpb.Refresh;
    dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
  end
end;


procedure TFABM_CPB_Presupuesto.configPanelFechas(panel: TPanel; Activar: boolean);
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


procedure TFABM_CPB_Presupuesto.cargarTipoComprobante(tipo: integer);
begin
  configPanelFechas(PanelFechaVencimiento, true);
  lblTipoComprobante.Caption:= 'PRESUPUESTO';
end;


procedure TFABM_CPB_Presupuesto.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbProducto, ZQ_NumeroCpb]) then
  begin
    modoEdicion(true);
    preguntarPorDescuento:= true;

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
    ZQ_ComprobanteFECHA_ENVIADA.Clear;
    ZQ_ComprobanteFECHA_IMPRESA.Clear;
    ZQ_ComprobanteFECHA_ANULADO.Clear;
    ZQ_ComprobanteFECHA_VENCIMIENTO.AsDateTime:= dm.EKModelo.FechayHora;

    descuentoCliente:= 0;

    EKDBDateEmision.SetFocus;
  end;
end;


procedure TFABM_CPB_Presupuesto.btnModificarClick(Sender: TObject);
var
  estado: integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or
     ((estado = ESTADO_CONFIRMADO) or (estado = ESTADO_ANULADO))) then
    exit;

  preguntarPorDescuento:= true;
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

    PanelEditar_DatosGralCliente.BringToFront;
    ZQ_Cliente.Close;
    ZQ_Cliente.ParamByName('id_persona').AsInteger:= ZQ_ComprobanteID_CLIENTE.AsInteger;
    ZQ_Cliente.Open;

    descuentoCliente:= 0;
    if (not ZQ_ClienteDESCUENTO_ESPECIAL.IsNull) or (ZQ_ClienteDESCUENTO_ESPECIAL.AsFloat <> 0) then
      if (application.MessageBox(pchar('El cliente asociado al comprobante posee un descuento especial del '+FloatToStr(ZQ_ClienteDESCUENTO_ESPECIAL.AsFloat*100)+'%.'+
          #13+'Desea aplicar este descuento para todos los productos nuevos que se carguen?'), 'Descuento Cliente', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
      begin
        descuentoCliente:= ZQ_ClienteDESCUENTO_ESPECIAL.AsFloat;
      end;

    cargarTipoComprobante(tipoComprobante); //acomodo la pantalla de edicion segun el tipo de comprobante que es
    lblTipoComprobante.Caption:= lblTipoComprobante.Caption + ' - MODIFICAR';

    ZQ_Comprobante.Edit;

    EKDBDateEmision.SetFocus;
  end;
end;


procedure TFABM_CPB_Presupuesto.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if ZQ_ComprobanteID_PROVEEDOR.IsNull and ZQ_ComprobanteID_CLIENTE.IsNull then
  begin
    Application.MessageBox('Debe asociar una Persona o Empresa al Comprobante, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
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
  ZQ_ComprobanteBASE_IMPONIBLE.AsFloat:= EKSuma_Productos.SumCollection[1].SumValue;
  ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:= EKSuma_Productos.SumCollection[2].SumValue;
  ZQ_ComprobanteIMPORTE_VENTA.AsFloat:= ZQ_ComprobanteIMPORTE_TOTAL.AsFloat; //EKSuma_Productos.SumCollection[2].SumValue;
  ZQ_ComprobanteIMPORTE_DESCUENTO.AsFloat:= ZQ_ComprobanteBASE_IMPONIBLE.AsFloat - ZQ_ComprobanteIMPORTE_TOTAL.AsFloat;
  if ZQ_ComprobanteBASE_IMPONIBLE.AsFloat <> 0 then
    ZQ_ComprobantePORC_DESCUENTO.AsFloat:= ZQ_ComprobanteIMPORTE_DESCUENTO.AsFloat / ZQ_ComprobanteBASE_IMPONIBLE.AsFloat;
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


procedure TFABM_CPB_Presupuesto.btnCancelarClick(Sender: TObject);
begin
  if (application.MessageBox(pchar('¿Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION - ABM Comprobantes', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
    begin
      modoEdicion(false);
      DBGridListaCpb.SetFocus;
    end;
end;


procedure TFABM_CPB_Presupuesto.btnImprimirClick(Sender: TObject);
begin
  if ZQ_VerCpb.IsEmpty then
    exit;

  if not Assigned(FImpresion_Comprobantes) then
    FImpresion_Comprobantes := TFImpresion_Comprobantes.Create(nil);
  FImpresion_Comprobantes.cargarDatos(ZQ_VerCpbID_COMPROBANTE.AsInteger, ZQ_VerCpbID_CLIENTE.AsInteger, ZQ_VerCpbID_PROVEEDOR.AsInteger, false);
  FImpresion_Comprobantes.imprimir;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_CPB_Presupuesto.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_CPB_Presupuesto.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_CPB_Presupuesto.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_CPB_Presupuesto.AConfirmarExecute(Sender: TObject);
begin
  if btnConfirmar.Enabled then
    btnConfirmar.Click;
end;

procedure TFABM_CPB_Presupuesto.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_CPB_Presupuesto.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_CPB_Presupuesto.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_CPB_Presupuesto.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFABM_CPB_Presupuesto.ZQ_VerCpbAfterScroll(DataSet: TDataSet);
begin
  ZQ_VerCpb_Producto.Close;

  if ZQ_VerCpb.IsEmpty then
    exit;

  ZQ_VerCpb_Producto.ParamByName('id_comprobante').AsInteger:= ZQ_VerCpbID_COMPROBANTE.AsInteger;
  ZQ_VerCpb_Producto.Open;

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
procedure TFABM_CPB_Presupuesto.btnBuscarPersonaClick(Sender: TObject);
begin
  if not Assigned(vselPersona) then
    vselPersona:= TFBuscarPersona.Create(nil);
  vselPersona.btnBuscar.Click;
  vselPersona.OnSeleccionar := onSelPersona;
  vselPersona.ShowModal;
end;


procedure TFABM_CPB_Presupuesto.onSelPersona;
begin
  if (not (vselPersona.ZQ_Personas.IsEmpty)) then //si se selecciona un cliente
  begin
    btnBuscarPersona.Down:= true;
    PanelEditar_DatosGralCliente.BringToFront;

    ZQ_Cliente.Close;
    ZQ_Cliente.ParamByName('id_persona').AsInteger:= vselPersona.ZQ_PersonasID_PERSONA.AsInteger;
    ZQ_Cliente.Open;

    descuentoCliente:= 0;
    if tipoComprobante = CPB_PRESUPUESTO then //si es un presupuesto pregunto si deseo aplicar el descuento especial del cliente
      if (not ZQ_ClienteDESCUENTO_ESPECIAL.IsNull) or (ZQ_ClienteDESCUENTO_ESPECIAL.AsFloat <> 0) then
        if (application.MessageBox(pchar('El cliente seleccionado posee un descuento especial del '+FloatToStr(ZQ_ClienteDESCUENTO_ESPECIAL.AsFloat*100)+'%.'+
            #13+'Desea aplicar este descuento para todos los productos que se carguen?'), 'Descuento Cliente', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
        begin
          descuentoCliente:= ZQ_ClienteDESCUENTO_ESPECIAL.AsFloat;
        end;

    if ZQ_Comprobante.State = dsBrowse then
      ZQ_Comprobante.Edit;
    ZQ_ComprobanteID_PROVEEDOR.Clear;
    ZQ_ComprobanteID_CLIENTE.AsInteger:= ZQ_ClienteID_PERSONA.AsInteger;
  end;

  EKDBDateEmision.SetFocus;

  vselPersona.Close;
end;


//----------------------
//    DETALLE PRODUCTO
//----------------------
procedure TFABM_CPB_Presupuesto.cargarProductosClienDataset();
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
    CD_Producto_precioCosto.AsFloat := ZQ_VerCpb_ProductoPRECIO_COSTO.AsFloat;
    CD_Producto_precioVenta.AsFloat := ZQ_VerCpb_ProductoPRECIO_VENTA.AsFloat;
    CD_Producto_coefGanancia.AsFloat := ZQ_VerCpb_ProductoCOEF_GANANCIA.AsFloat;
    CD_Producto_coefDescuento.AsFloat := ZQ_VerCpb_ProductoCOEF_DESCUENTO.AsFloat;
    CD_Producto_impuestoIVA.AsFloat := ZQ_VerCpb_ProductoIMPUESTO_IVA.AsFloat;

    ZQ_VerCpb_Producto.Next;
  end;
end;

procedure TFABM_CPB_Presupuesto.onSelProducto;
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
    CD_Producto_precioCosto.AsFloat := vselProducto.ZQ_ProductoPRECIO_COSTO.AsFloat;
    CD_Producto_precioVenta.AsFloat := vselProducto.ZQ_ProductoPRECIO_VENTA.AsFloat;
    CD_Producto_coefGanancia.AsFloat := vselProducto.ZQ_ProductoCOEF_GANANCIA.AsFloat;
    CD_Producto_coefDescuento.AsFloat := vselProducto.ZQ_ProductoCOEF_DESCUENTO.AsFloat;
    CD_Producto_impuestoIVA.AsFloat := vselProducto.ZQ_ProductoIMPUESTO_IVA.AsFloat;

    ZQ_CpbProducto.Append;
    ZQ_CpbProductoID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_CpbProductoID_PRODUCTO.AsInteger:= vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    ZQ_CpbProductoIMPORTE_UNITARIO.AsFloat:= vselProducto.ZQ_ProductoPRECIO_VENTA.AsFloat;
    ZQ_CpbProductoPORC_IVA.AsFloat:= vselProducto.ZQ_ProductoIMPUESTO_IVA.AsFloat;
    ZQ_CpbProductoPORC_DESCUENTO.AsFloat:= descuentoCliente;
    ZQ_CpbProductoCANTIDAD.AsFloat:= 0;

    cargarImagen(vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger);
  end;

  vselProducto.Close;
end;


procedure TFABM_CPB_Presupuesto.onSelTodosProducto;
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
    CD_Producto_precioCosto.AsFloat := vselProducto.ZQ_ProductoPRECIO_COSTO.AsFloat;
    CD_Producto_precioVenta.AsFloat := vselProducto.ZQ_ProductoPRECIO_VENTA.AsFloat;
    CD_Producto_coefGanancia.AsFloat := vselProducto.ZQ_ProductoCOEF_GANANCIA.AsFloat;
    CD_Producto_coefDescuento.AsFloat := vselProducto.ZQ_ProductoCOEF_DESCUENTO.AsFloat;
    CD_Producto_impuestoIVA.AsFloat := vselProducto.ZQ_ProductoIMPUESTO_IVA.AsFloat;

    ZQ_CpbProducto.Append;
    ZQ_CpbProductoID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_CpbProductoID_PRODUCTO.AsInteger:= vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger;
    ZQ_CpbProductoIMPORTE_UNITARIO.AsFloat:= vselProducto.ZQ_ProductoPRECIO_VENTA.AsFloat;
    ZQ_CpbProductoPORC_IVA.AsFloat:= vselProducto.ZQ_ProductoIMPUESTO_IVA.AsFloat;
    ZQ_CpbProductoPORC_DESCUENTO.AsFloat:= descuentoCliente;
    ZQ_CpbProductoCANTIDAD.AsFloat:= 0;

    cargarImagen(vselProducto.ZQ_ProductoID_PRODUCTO.AsInteger);

    vselProducto.ZQ_Producto.Next;
  end;

  vselProducto.Close;
end;


procedure TFABM_CPB_Presupuesto.PopItemProducto_AgregarClick(Sender: TObject);
begin
  agregarProducto;
end;


procedure TFABM_CPB_Presupuesto.agregarProducto();
begin
  if not Assigned(vselProducto) then
    vselProducto:= TFBuscarProducto.Create(nil);

  //if not ZQ_ComprobanteID_PROVEEDOR.IsNull then
  //  vselProducto.filtrarEmpresa(ZQ_ComprobanteID_PROVEEDOR.AsInteger);

  vselProducto.OnSeleccionar := onSelProducto;
  vselProducto.OnSeleccionarTodos := onSelTodosProducto;
  vselProducto.btnSeleccionarTodos.Visible:= ivAlways;
  vselProducto.SeleccionarYSalir:= false;
  vselProducto.ShowModal;
end;


procedure TFABM_CPB_Presupuesto.PopItemProducto_QuitarClick(Sender: TObject);
begin
  if not ZQ_CpbProducto.IsEmpty then
    ZQ_CpbProducto.Delete;
end;


procedure TFABM_CPB_Presupuesto.btnEliminarProductoClick(Sender: TObject);
begin
  if not ZQ_CpbProducto.IsEmpty then
    ZQ_CpbProducto.Delete;
end;


procedure TFABM_CPB_Presupuesto.DBGridEditar_ProductoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
  begin
    if key = 112 then
      agregarProducto;
  end;
end;


procedure TFABM_CPB_Presupuesto.cargarImagen(id_prducto: integer);
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


procedure TFABM_CPB_Presupuesto.ZQ_CpbProductoAfterScroll(DataSet: TDataSet);
begin
  ZQ_Imagen.Close;

  if ZQ_CpbProducto.IsEmpty then
    exit;

  cargarImagen(ZQ_CpbProductoID_PRODUCTO.AsInteger);
end;

//procedimiento para calcular automaticamente el importe final y la base imponible
procedure TFABM_CPB_Presupuesto.calcularImporteProducto(Sender: TField);
var
  cantidad,
  precio_unitario,
  coef_descuento,
  imponible: double;
  final: double;
begin
  if tipoComprobante <> CPB_PRESUPUESTO then
  begin
    exit;
  end;

  cantidad:= 0;
  precio_unitario:= 0;
  coef_descuento:= 0;

  if not ZQ_CpbProductoCANTIDAD.IsNull then
    cantidad:= ZQ_CpbProductoCANTIDAD.AsFloat;

  if not ZQ_CpbProductoIMPORTE_UNITARIO.IsNull then
    precio_unitario:= ZQ_CpbProductoIMPORTE_UNITARIO.AsFloat;

  if not ZQ_CpbProductoPORC_DESCUENTO.IsNull then
    coef_descuento:= ZQ_CpbProductoPORC_DESCUENTO.AsFloat;

  imponible:= cantidad * precio_unitario;
  final:= imponible - (imponible * coef_descuento);

  ZQ_CpbProductoBASE_IMPONIBLE.AsFloat:= imponible;
  ZQ_CpbProductoIMPORTE_FINAL.AsFloat:= final;
  ZQ_CpbProductoIMPORTE_VENTA.AsFloat:= final;  
end;


procedure TFABM_CPB_Presupuesto.PopUpItem_ProductoOcultarDetalleClick(Sender: TObject);
begin
  if PanelCpbActual_ProductoDetalle.Visible then
    PopUpItem_ProductoOcultarDetalle.Caption:= 'Ver Detalle'
  else
    PopUpItem_ProductoOcultarDetalle.Caption:= 'Ocultar Detalle';

  PanelCpbActual_ProductoDetalle.Visible:= not PanelCpbActual_ProductoDetalle.Visible;
end;


procedure TFABM_CPB_Presupuesto.btnEnviarMailClick(Sender: TObject);
var
  destino, archivoPDF: string;
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

  if not Assigned(FImpresion_Comprobantes) then
    FImpresion_Comprobantes := TFImpresion_Comprobantes.Create(nil);
  FImpresion_Comprobantes.cargarDatos(ZQ_VerCpbID_COMPROBANTE.AsInteger, ZQ_VerCpbID_CLIENTE.AsInteger, ZQ_VerCpbID_PROVEEDOR.AsInteger, false);
  archivoPDF:= FImpresion_Comprobantes.generarPDF;

  //if not Assigned(TFMailEnviar) then
    Application.CreateForm(TFMailEnviar, FMailEnviar);
  FMailEnviar.enviarConAdjunto(destino, dm.ZQ_SucursalNOMBRE.AsString, archivoPDF);
  FMailEnviar.ShowModal;
end;


procedure TFABM_CPB_Presupuesto.btnConfirmarClick(Sender: TObject);
var
  recno, estado: Integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or
     ((estado = ESTADO_CONFIRMADO) or (estado = ESTADO_ANULADO))) then
    exit;

  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;

  if (application.MessageBox(pchar('¿Desea confirmar el Presupuesto seleccionado?'), 'ABM Presupuesto', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
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
          Application.MessageBox('No se pudo confirmar el Presupuesto.', 'Atención',MB_OK+MB_ICONINFORMATION);
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
procedure TFABM_CPB_Presupuesto.DBGridEditar_ProductoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  columna: string;
begin
  columna:= (sender as tdbgrid).SelectedField.FullName;

  if (Key = 13) or (key = 9) then  { if it's an enter key }
  begin
    Key := 0; {ignore}
    if (columna = 'IMPORTE_FINAL') then
    begin
      DBGridEditar_Producto.SelectedIndex:= 0;//getColumnIndex(DBGridEditar_Producto, '_CodBarra');
      ZQ_CpbProducto.Append;
    end;
  end;

  if (Shift = [ssCtrl]) and (Key = VK_DELETE) then
  begin
    Key := 0; {ignore}
    btnEliminarProducto.Click;
  end
end;


procedure TFABM_CPB_Presupuesto.EKSuma_ProductosSumListChanged(Sender: TObject);
var
  cantidad, imponible, desc, total: string;
begin
  cantidad:= FormatFloat('###,###,###,##0.00', EKSuma_Productos.SumCollection[0].SumValue);
  imponible:= FormatFloat('$ ###,###,###,##0.00', EKSuma_Productos.SumCollection[1].SumValue);
  total:= FormatFloat('$ ###,###,###,##0.00', EKSuma_Productos.SumCollection[2].SumValue);
  desc:= FormatFloat('$ ###,###,###,##0.00', EKSuma_Productos.SumCollection[1].SumValue - EKSuma_Productos.SumCollection[2].SumValue);

  editTotalProductos.Text:= cantidad;
  editTotalImponible.Text:= imponible;
  editTotalDesc.Text:= desc;
  editTotalFinal.Text:= total;
end;


procedure TFABM_CPB_Presupuesto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrd_VerCpb.GuardarConfigColumnas;
  EKOrd_VerCpb_Producto.GuardarConfigColumnas;
  EKOrd_EditarProducto.GuardarConfigColumnas;
end;


procedure TFABM_CPB_Presupuesto.DBGridEditar_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridEditar_Producto, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_Presupuesto.DBGridCpbActual_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridCpbActual_Producto, Rect, DataCol, Column, State);
end;


procedure TFABM_CPB_Presupuesto.DBGridListaCpbDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TFABM_CPB_Presupuesto.btnBajaClick(Sender: TObject);
var
  recno, estado: Integer;
begin
  estado:= ZQ_VerCpbID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb.IsEmpty) or (estado = ESTADO_ANULADO)) then
    exit;

  id_comprobante:= ZQ_VerCpbID_COMPROBANTE.AsInteger;

  if (application.MessageBox(pchar('¿Desea anular el Presupuesto seleccionado?'), 'ABM Presupuesto', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
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
          Application.MessageBox('No se pudo anular el Presupuesto.', 'Atención',MB_OK+MB_ICONINFORMATION);
          exit;
        end
      end;
    end;

  recNo:= ZQ_VerCpb.RecNo;
  ZQ_VerCpb.Refresh;
  ZQ_VerCpb.RecNo:= recNo;
  dm.mostrarCantidadRegistro(ZQ_VerCpb, lblCantidadRegistros);
end;


procedure TFABM_CPB_Presupuesto.ZQ_VerCpb_ProductoAfterScroll(
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
