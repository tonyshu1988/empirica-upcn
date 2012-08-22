unit UTransferirStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB, DBClient, UBuscarProductoStock,
  EKLlenarCombo, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  EKListadoSQL, ComCtrls, ZSqlUpdate, ZStoredProcedure, EKOrdenarGrilla,
  EKDbSuma, ActnList, XPStyleActnCtrls, ActnMan, Buttons,
  EKBusquedaAvanzada;

type
  TFTransferirStock = class(TForm)
    PanelContenedor: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnNotaPedido: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBuscarHistorico: TdxBarLargeButton;
    btnTransferir: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
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
    CD_Producto_color: TStringField;
    DS_Producto: TDataSource;
    PanelSeleccionarDeposito: TPanel;
    DBGridProducto: TDBGrid;
    CD_Producto_stockactual: TFloatField;
    CD_Producto_cantidad: TFloatField;
    EKListado_Sucursal: TEKListadoSQL;
    ZQ_Sucursal: TZQuery;
    ZQ_SucursalID_POSICION_SUCURSAL: TIntegerField;
    ZQ_SucursalBUSQUEDA: TStringField;
    CD_Producto_idStockProducto: TIntegerField;
    CD_Producto_idPosicionSucursal: TIntegerField;
    CD_Producto_stockMin: TFloatField;
    CD_Producto_stockMax: TFloatField;
    CD_Producto_stockRepedido: TFloatField;
    PageControlTransferir: TPageControl;
    TabSTransferirStock: TTabSheet;
    TabSAsociarNotaPedido: TTabSheet;
    Panel1: TPanel;
    btBorrarLinea: TButton;
    ZQ_Cpb_ListaProd: TZQuery;
    ZQ_VerCpb: TZQuery;
    ZQ_VerCpbID_COMPROBANTE: TIntegerField;
    ZQ_VerCpbID_SUCURSAL: TIntegerField;
    ZQ_VerCpbID_PROVEEDOR: TIntegerField;
    ZQ_VerCpbID_CLIENTE: TIntegerField;
    ZQ_VerCpbID_TIPO_CPB: TIntegerField;
    ZQ_VerCpbID_VENDEDOR: TIntegerField;
    ZQ_VerCpbID_COMP_ESTADO: TIntegerField;
    ZQ_VerCpbCODIGO: TStringField;
    ZQ_VerCpbOBSERVACION: TStringField;
    ZQ_VerCpbBASE_IMPONIBLE: TFloatField;
    ZQ_VerCpbSALDO: TFloatField;
    ZQ_VerCpbIMPORTE_TOTAL: TFloatField;
    ZQ_VerCpbIMPORTE_IVA: TFloatField;
    ZQ_VerCpbIMPORTE_DESCUENTO: TFloatField;
    ZQ_VerCpbPORC_IVA: TFloatField;
    ZQ_VerCpbPORC_DESCUENTO: TFloatField;
    ZQ_VerCpbENCABEZADO: TStringField;
    ZQ_VerCpbPIE: TStringField;
    ZQ_VerCpbFECHA: TDateTimeField;
    ZQ_VerCpbFECHA_COBRADA: TDateField;
    ZQ_VerCpbFECHA_ENVIADA: TDateField;
    ZQ_VerCpbFECHA_IMPRESA: TDateField;
    ZQ_VerCpbFECHA_VENCIMIENTO: TDateField;
    ZQ_VerCpbFECHA_ANULADO: TDateField;
    ZQ_VerCpbSUCURSAL: TStringField;
    ZQ_VerCpbPROVEEDOR: TStringField;
    ZQ_VerCpbCUIT_PROVEEDOR: TStringField;
    ZQ_VerCpbCLIENTE: TStringField;
    ZQ_VerCpbCLIENTE_DOCUMENTO: TStringField;
    ZQ_VerCpbCLIENTE_CUIL: TStringField;
    ZQ_VerCpbVENDEDOR: TStringField;
    ZQ_VerCpbNOMBRE_TIPO_CPB: TStringField;
    ZQ_VerCpbESTADO: TStringField;
    ZQ_VerCpbPUNTO_VENTA: TIntegerField;
    ZQ_VerCpbNUMERO_CPB: TIntegerField;
    DS_VerCpb: TDataSource;
    DBGridNotaPedido: TDBGrid;
    DBGridNotaPedidoDetalle: TDBGrid;
    DS_ListaProductos: TDataSource;
    ZQ_Cpb_ListaProdID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_Cpb_ListaProdID_COMPROBANTE: TIntegerField;
    ZQ_Cpb_ListaProdID_PRODUCTO: TIntegerField;
    ZQ_Cpb_ListaProdDETALLE: TStringField;
    ZQ_Cpb_ListaProdCANTIDAD: TFloatField;
    ZQ_Cpb_ListaProdIMPORTE_FINAL: TFloatField;
    ZQ_Cpb_ListaProdPORC_DESCUENTO: TFloatField;
    ZQ_Cpb_ListaProdBASE_IMPONIBLE: TFloatField;
    ZQ_Cpb_ListaProdIMPORTE_UNITARIO: TFloatField;
    ZQ_Cpb_ListaProdIMPUESTO_INTERNO: TFloatField;
    ZQ_Cpb_ListaProdPORC_IVA: TFloatField;
    ZQ_Cpb_ListaProdCANTIDAD_RECIBIDA: TFloatField;
    ZQ_Cpb_ListaProdCANTIDAD_ALMACENADA: TFloatField;
    ZQ_Cpb_ListaProdCOD_CABECERA: TStringField;
    ZQ_Cpb_ListaProdPRODUCTO: TStringField;
    ZQ_Cpb_ListaProdIMAGEN: TBlobField;
    ZQ_Cpb_ListaProdMEDIDA: TStringField;
    ZQ_Cpb_ListaProdCOLOR: TStringField;
    ZQ_Cpb_ListaProdMARCA: TStringField;
    ZQ_Cpb_ListaProdARTICULO: TStringField;
    ZQ_Cpb_ListaProdTIPO_ARTICULO: TStringField;
    ZQ_Cpb_ListaProdCOD_PRODUCTO: TStringField;
    ZQ_Cpb_ListaProdCODIGO_BARRA: TStringField;
    ZQ_Cpb_ListaProdPRECIO_COSTO: TFloatField;
    ZQ_Cpb_ListaProdPRECIO_VENTA: TFloatField;
    ZQ_Cpb_ListaProdCOEF_GANANCIA: TFloatField;
    ZQ_Cpb_ListaProdCOEF_DESCUENTO: TFloatField;
    ZQ_Cpb_ListaProdIMPUESTO_INTERNO_1: TFloatField;
    ZQ_Cpb_ListaProdIMPUESTO_IVA: TFloatField;
    CD_ListaProductos: TClientDataSet;
    CD_ListaProductoscantidad: TFloatField;
    CD_ListaProductoscantidad_recibida: TFloatField;
    CD_ListaProductoscantidad_almacenada: TFloatField;
    CD_ListaProductoscod_cabecera: TStringField;
    CD_ListaProductosproducto: TStringField;
    CD_ListaProductosmedida: TStringField;
    CD_ListaProductoscolor: TStringField;
    CD_ListaProductosmarca: TStringField;
    CD_ListaProductosarticulo: TStringField;
    CD_ListaProductostipo_articulo: TStringField;
    CD_ListaProductoscod_producto: TStringField;
    CD_ListaProductoscodigo_barra: TStringField;
    CD_ListaProductosid_producto: TIntegerField;
    CD_ListaProductoscantidad_a_almacenar: TFloatField;
    ZQ_Cpb_ListaProdSTOCK_MAX: TFloatField;
    ZQ_Cpb_ListaProdSTOCK_MIN: TFloatField;
    CD_ListaProductosstock_max: TFloatField;
    CD_ListaProductosstock_min: TFloatField;
    CD_ListaProductosalmacenar: TFloatField;
    CD_ListaProductosid_comprobante: TIntegerField;
    ZQ_Cpb_UpdateEstado: TZQuery;
    ZQ_ProcesarStock: TZQuery;
    Label1: TLabel;
    EditSucursal: TEdit;
    EKOrdenarGrillaProductos: TEKOrdenarGrilla;
    EKOrdenarGrillaNotaPedidoDetalle: TEKOrdenarGrilla;
    Label25: TLabel;
    editTotalProductos: TEdit;
    EKSumaTransferir: TEKDbSuma;
    PanelNotaPedidoDetalle: TPanel;
    Label2: TLabel;
    editTotalAlmacenar: TEdit;
    EKSumaNotaPedido: TEKDbSuma;
    ZQ_VerCpbID_TIPO_IVA: TIntegerField;
    ZQ_VerCpbID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_VerCpbIMPORTE_VENTA: TFloatField;
    CD_Producto_sucursal: TStringField;
    CD_Producto_seccion: TStringField;
    CD_Producto_sector: TStringField;
    CD_Producto_fila: TStringField;
    CD_Producto_columna: TStringField;
    ZQ_Comprobante: TZQuery;
    ZQ_ComprobanteID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteID_SUCURSAL: TIntegerField;
    ZQ_ComprobanteID_PROVEEDOR: TIntegerField;
    ZQ_ComprobanteID_CLIENTE: TIntegerField;
    ZQ_ComprobanteID_TIPO_CPB: TIntegerField;
    ZQ_ComprobanteID_VENDEDOR: TIntegerField;
    ZQ_ComprobanteID_COMP_ESTADO: TIntegerField;
    ZQ_ComprobanteID_TIPO_IVA: TIntegerField;
    ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_ComprobanteCODIGO: TStringField;
    ZQ_ComprobanteFECHA: TDateTimeField;
    ZQ_ComprobanteOBSERVACION: TStringField;
    ZQ_ComprobanteBASE_IMPONIBLE: TFloatField;
    ZQ_ComprobanteSALDO: TFloatField;
    ZQ_ComprobantePORC_IVA: TFloatField;
    ZQ_ComprobanteIMPORTE_IVA: TFloatField;
    ZQ_ComprobantePORC_DESCUENTO: TFloatField;
    ZQ_ComprobanteIMPORTE_DESCUENTO: TFloatField;
    ZQ_ComprobanteIMPORTE_TOTAL: TFloatField;
    ZQ_ComprobanteIMPORTE_VENTA: TFloatField;
    ZQ_ComprobanteENCABEZADO: TStringField;
    ZQ_ComprobantePIE: TStringField;
    ZQ_ComprobanteFECHA_COBRADA: TDateField;
    ZQ_ComprobanteFECHA_ENVIADA: TDateField;
    ZQ_ComprobanteFECHA_IMPRESA: TDateField;
    ZQ_ComprobanteFECHA_VENCIMIENTO: TDateField;
    ZQ_ComprobantePUNTO_VENTA: TIntegerField;
    ZQ_ComprobanteNUMERO_CPB: TIntegerField;
    ZQ_ComprobanteFECHA_ANULADO: TDateField;
    ZQ_CpbProducto: TZQuery;
    ZQ_CpbProductoID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_CpbProductoID_COMPROBANTE: TIntegerField;
    ZQ_CpbProductoID_PRODUCTO: TIntegerField;
    ZQ_CpbProductoDETALLE: TStringField;
    ZQ_CpbProductoCANTIDAD: TFloatField;
    ZP_CpbID: TZStoredProc;
    ZP_CpbIDID: TIntegerField;
    ZQ_NumeroCpb: TZQuery;
    ZQ_NumeroCpbULTIMO_NUMERO: TIntegerField;
    ZQ_NumeroCpbID_TIPO_CPB: TIntegerField;
    ZQ_NumeroCpbNOMBRE_TIPO_CPB: TStringField;
    ZQ_NumeroCpbSIGNO_COBRO_PAGO: TIntegerField;
    ZQ_NumeroCpbSIGNO_STOCK: TIntegerField;
    ZQ_NumeroCpbSIGNO_CTA_CTE: TIntegerField;
    ZQ_NumeroCpbBAJA: TStringField;
    ZQ_CpbProductoCANTIDAD_RECIBIDA: TFloatField;
    ZQ_CpbProductoCANTIDAD_ALMACENADA: TFloatField;
    ZQ_ComprobanteID_POSICION_SUC_DESTINO: TIntegerField;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    AAbrirNotaPedido: TAction;
    ATransferir: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    ZQ_CpbProductoID_STOCK_PRODUCTO: TIntegerField;
    btnVerTransferencias: TdxBarLargeButton;
    PanelHistorico: TPanel;
    PanelHistorico_Cpb: TPanel;
    PanelHistoric_Detalle: TPanel;
    DBGrid_Historico_Detalle: TDBGrid;
    DBGrid_Historico_Cpb: TDBGrid;
    ZQ_Historico_Cpb: TZQuery;
    ZQ_Historico_Detalle: TZQuery;
    DS_Historico_Cpb: TDataSource;
    DS_Historico_Detalle: TDataSource;
    ZQ_Historico_CpbID_COMPROBANTE: TIntegerField;
    ZQ_Historico_CpbID_SUCURSAL: TIntegerField;
    ZQ_Historico_CpbCODIGO: TStringField;
    ZQ_Historico_CpbFECHA: TDateTimeField;
    ZQ_Historico_CpbID_POSICION_SUC_DESTINO: TIntegerField;
    ZQ_Historico_CpbSUCURSAL_ORIGEN: TStringField;
    ZQ_Historico_CpbSUCURSAL_DESTINO: TStringField;
    ZQ_Historico_CpbSECCION: TStringField;
    ZQ_Historico_DetalleID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_Historico_DetalleID_PRODUCTO: TIntegerField;
    ZQ_Historico_DetalleNOMBRE: TStringField;
    ZQ_Historico_DetalleCOD_CORTO: TStringField;
    ZQ_Historico_DetalleCODIGO_BARRA: TStringField;
    ZQ_Historico_DetalleNOMBRE_MARCA: TStringField;
    ZQ_Historico_DetalleCOLOR: TStringField;
    ZQ_Historico_DetalleMEDIDA: TStringField;
    ZQ_Historico_DetalleCANTIDAD: TFloatField;
    Label3: TLabel;
    Label4: TLabel;
    EKOrdenarHistorico_Cpb: TEKOrdenarGrilla;
    EKOrdenarHistorico_Detalle: TEKOrdenarGrilla;
    ZQ_VerificarProducto: TZQuery;
    ZQ_VerificarProductoID_STOCK_PRODUCTO: TIntegerField;
    ZQ_VerificarProductoID_PRODUCTO: TIntegerField;
    ZQ_VerificarProductoID_POSICION_SUCURSAL: TIntegerField;
    ZQ_VerificarProductoSTOCK_ACTUAL: TFloatField;
    ZQ_VerificarProductoSTOCK_MIN: TFloatField;
    ZQ_VerificarProductoSTOCK_MAX: TFloatField;
    ZQ_VerificarProductoSTOCK_REPEDIDO: TFloatField;
    ZQ_VerificarProductoSTOCK_MIN_ALARMA: TStringField;
    ZQ_UpdateNotaPedido: TZQuery;
    dxBarButton1: TdxBarButton;
    btDestino: TBitBtn;
    ZQ_Historico_CpbFECHA_IMPRESA: TDateField;
    ZUpdateSQLHistoricoCpb: TZUpdateSQL;
    Splitter1: TSplitter;
    StaticText1: TStaticText;
    EKBusquedaHistorico: TEKBusquedaAvanzada;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTransferirClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btBorrarLineaClick(Sender: TObject);
    procedure DBGridNotaPedidoDblClick(Sender: TObject);
    procedure btnNotaPedidoClick(Sender: TObject);
    procedure CD_ListaProductosCalcFields(DataSet: TDataSet);
    procedure PageControlTransferirChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridNotaPedidoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridNotaPedidoDetalleDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PageControlTransferirChanging(Sender: TObject; var AllowChange: Boolean);
    procedure EKSumaTransferirSumListChanged(Sender: TObject);
    procedure EKSumaNotaPedidoSumListChanged(Sender: TObject);
    procedure CD_ListaProductosAfterInsert(DataSet: TDataSet);
    procedure DBGridNotaPedidoDetalleKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridProductoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure asociarStockProducto();
    procedure asociarNotaPedido();
    procedure ABuscarExecute(Sender: TObject);
    procedure AAbrirNotaPedidoExecute(Sender: TObject);
    procedure ATransferirExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure btnVerTransferenciasClick(Sender: TObject);
    procedure ZQ_Historico_CpbAfterScroll(DataSet: TDataSet);
    procedure DBGrid_Historico_CpbDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid_Historico_DetalleDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    function  idStockProducto_pertenece_destino(idStock: integer):boolean;
    procedure btDestinoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnBuscarHistoricoClick(Sender: TObject);
  private
    vsel: TFBuscarProductoStock;
    procedure onSelProducto;
    procedure onSelTodosProducto;
    { Private declarations }
  public
    permitirInsertar: boolean;
  end;

var
  FTransferirStock: TFTransferirStock;
  id_pos_sucursal : integer;

const
  Transaccion_TransferirStock = 'TRANSFERIR STOCK';

implementation

uses UDM, UPrincipal, UUtilidades, UImpresion_Comprobantes, EKModelo;

{$R *.dfm}
procedure TFTransferirStock.onSelProducto;
begin
  if not vsel.ZQ_Stock.IsEmpty then
  begin
    CD_Producto.Filter:= 'idProducto = ' +  vsel.ZQ_StockID_PRODUCTO.AsString;
    CD_Producto.Filtered := true;
    if not CD_Producto.IsEmpty then
    begin
      CD_Producto.Filtered := false;
      Application.MessageBox('El Producto seleccionado ya fue cargado','Carga Producto',MB_OK+MB_ICONINFORMATION);
      exit;
    end;

    CD_Producto.Filtered := false;
    CD_Producto.Append;
    CD_Producto_idStockProducto.AsInteger := vsel.ZQ_StockID_STOCK_PRODUCTO.AsInteger;
    CD_Producto_idPosicionSucursal.AsInteger := vsel.ZQ_StockID_POSICION_SUCURSAL.AsInteger;
    CD_Producto_idProducto.AsInteger := vsel.ZQ_StockID_PRODUCTO.AsInteger;
    CD_Producto_producto.AsString := vsel.ZQ_StockNOMBRE.AsString;
    CD_Producto_medida.AsString := vsel.ZQ_StockMEDIDA.AsString;
    CD_Producto_color.AsString := vsel.ZQ_StockCOLOR.AsString;
    CD_Producto_marca.AsString := vsel.ZQ_StockNOMBRE_MARCA.AsString;
    CD_Producto_tipoArticulo.AsString := vsel.ZQ_StockTIPO_ARTICULO.AsString;
    CD_Producto_articulo.AsString := vsel.ZQ_StockNOMBRE_ARTICULO.AsString;
    CD_Producto_codigoBarra.AsString := vsel.ZQ_StockCODIGO_BARRA.AsString;
    CD_Producto_codCabecera.AsString := vsel.ZQ_StockCOD_CORTO_CABECERA.AsString;
    CD_Producto_codProducto.AsString := vsel.ZQ_StockCOD_CORTO_PRODUCTO.AsString;
    CD_Producto_stockactual.AsFloat := vsel.ZQ_StockSTOCK_ACTUAL.AsFloat;
    CD_Producto_cantidad.AsFloat := vsel.ZQ_StockSTOCK_ACTUAL.AsFloat;
    CD_Producto_stockMin.AsFloat := vsel.ZQ_StockSTOCK_MIN.AsFloat;
    CD_Producto_stockMax.AsFloat := vsel.ZQ_StockSTOCK_MAX.AsFloat;
    CD_Producto_stockRepedido.AsFloat := vsel.ZQ_StockSTOCK_REPEDIDO.AsFloat;
    CD_Producto_sucursal.AsString := vsel.ZQ_StockSUCURSAL.AsString;
    CD_Producto_seccion.AsString := vsel.ZQ_StockSECCION.AsString;
    CD_Producto_sector.AsString := vsel.ZQ_StockSECTOR.AsString;
    CD_Producto_fila.AsString := vsel.ZQ_StockFILA.AsString;
    CD_Producto_columna.AsString := vsel.ZQ_StockCOLUMNA.AsString;
    CD_Producto.Post;    
  end;

  if vsel.SeleccionarYSalir then
    vsel.Close;
end;


procedure TFTransferirStock.onSelTodosProducto;
begin
  vsel.ZQ_Stock.First;
  while not vsel.ZQ_Stock.Eof do
  begin
    CD_Producto.Filter:= 'idProducto = ' +  vsel.ZQ_StockID_PRODUCTO.AsString;
    CD_Producto.Filtered:= true; //filtro el client para ver si ya cargue el producto
    if not CD_Producto.IsEmpty then //si el client no esta vacio es porque ya esta cargado
    begin
      CD_Producto.Filtered := false;
    end
    else //si el client esta vacio entonces lo cargo
    begin
      CD_Producto.Filtered := false;
      CD_Producto.Append;
      CD_Producto_idStockProducto.AsInteger := vsel.ZQ_StockID_STOCK_PRODUCTO.AsInteger;
      CD_Producto_idPosicionSucursal.AsInteger := vsel.ZQ_StockID_POSICION_SUCURSAL.AsInteger;
      CD_Producto_idProducto.AsInteger := vsel.ZQ_StockID_PRODUCTO.AsInteger;
      CD_Producto_producto.AsString := vsel.ZQ_StockNOMBRE.AsString;
      CD_Producto_medida.AsString := vsel.ZQ_StockMEDIDA.AsString;
      CD_Producto_color.AsString := vsel.ZQ_StockCOLOR.AsString;
      CD_Producto_marca.AsString := vsel.ZQ_StockNOMBRE_MARCA.AsString;
      CD_Producto_tipoArticulo.AsString := vsel.ZQ_StockTIPO_ARTICULO.AsString;
      CD_Producto_articulo.AsString := vsel.ZQ_StockNOMBRE_ARTICULO.AsString;
      CD_Producto_codigoBarra.AsString := vsel.ZQ_StockCODIGO_BARRA.AsString;
      CD_Producto_codCabecera.AsString := vsel.ZQ_StockCOD_CORTO_CABECERA.AsString;
      CD_Producto_codProducto.AsString := vsel.ZQ_StockCOD_CORTO_PRODUCTO.AsString;
      CD_Producto_stockactual.AsFloat := vsel.ZQ_StockSTOCK_ACTUAL.AsFloat;
      CD_Producto_cantidad.AsFloat := vsel.ZQ_StockSTOCK_ACTUAL.AsFloat;
      CD_Producto_stockMin.AsFloat := vsel.ZQ_StockSTOCK_MIN.AsFloat;
      CD_Producto_stockMax.AsFloat := vsel.ZQ_StockSTOCK_MAX.AsFloat;
      CD_Producto_stockRepedido.AsFloat := vsel.ZQ_StockSTOCK_REPEDIDO.AsFloat;
      CD_Producto_sucursal.AsString := vsel.ZQ_StockSUCURSAL.AsString;
      CD_Producto_seccion.AsString := vsel.ZQ_StockSECCION.AsString;
      CD_Producto_sector.AsString := vsel.ZQ_StockSECTOR.AsString;
      CD_Producto_fila.AsString := vsel.ZQ_StockFILA.AsString;
      CD_Producto_columna.AsString := vsel.ZQ_StockCOLUMNA.AsString;
      CD_Producto.Post;

    end;
     vsel.ZQ_Stock.Next; //paso al proximo
  end;

  vsel.Close;
  DBGridProducto.SetFocus;
end;


procedure TFTransferirStock.btnBuscarClick(Sender: TObject);
begin
  if not Assigned(vsel) then
    vsel:= TFBuscarProductoStock.Create(nil);
  vsel.usaTransferir:= 'S';
  vsel.OnSeleccionar:= onSelProducto;
  vsel.OnSeleccionarTodos := onSelTodosProducto;
  vsel.SeleccionarYSalir:= false;
  vsel.btnSeleccionarTodos.Visible:= ivAlways;
  vsel.ShowModal;
end;


procedure TFTransferirStock.FormCreate(Sender: TObject);
begin
  //provisorio
  TabSAsociarNotaPedido.TabVisible:= true;

  PageControlTransferir.TabIndex := 0;
  CD_Producto.CreateDataSet;
  CD_ListaProductos.CreateDataSet;

  EKOrdenarGrillaProductos.CargarConfigColumnas;
  EKOrdenarGrillaNotaPedidoDetalle.CargarConfigColumnas;
  EKOrdenarHistorico_Cpb.CargarConfigColumnas;
  EKOrdenarHistorico_Detalle.CargarConfigColumnas;

  ZQ_VerCpb.Close;
  ZQ_VerCpb.ParamByName('id_tipo_np').AsInteger:= CPB_NOTA_PEDIDO;
  ZQ_VerCpb.ParamByName('id_tipo_fc').AsInteger:= CPB_FACTURA_COMPRA;
  ZQ_VerCpb.ParamByName('id_estado').AsInteger:= ESTADO_CONFIRMADO;
  ZQ_VerCpb.ParamByName('id_sucursal').AsInteger := SUCURSAL_LOGUEO;
  ZQ_VerCpb.Open;

  PanelContenedor.Visible:= true;
  PanelHistorico.Visible:= false;

  DBGridNotaPedido.BringToFront;
end;


procedure TFTransferirStock.btnTransferirClick(Sender: TObject);
begin
    if id_pos_sucursal = 0 then
    begin
      ShowMessage('Debe Seleccionar un destino al cual transferir los productos');
      exit;
    end;

    //si estoy en la pestania transferir stock
    if PageControlTransferir.TabIndex = 0 then
    begin
      CD_Producto.First;
      while not CD_Producto.Eof do
      begin
           //si el producto no tiene stock    o   si el stock actual es 0           o   si la cantidad a transferir es 0            o   si el origen del producto donde hay que descontar es el mismo al destino seleccionado
        if CD_Producto_idStockProducto.IsNull or (CD_Producto_stockactual.AsFloat = 0) or (CD_Producto_cantidad.AsFloat = 0) or (idStockProducto_pertenece_destino(CD_Producto_idStockProducto.AsInteger))then
          CD_Producto.Delete
        else
          CD_Producto.Next;
      end;

      if CD_Producto.IsEmpty then
        exit;

      if dm.EKModelo.iniciar_transaccion(Transaccion_TransferirStock, [ZQ_Comprobante, ZQ_CpbProducto, ZQ_NumeroCpb]) then
      begin
        asociarStockProducto();

        GrupoEditando.Enabled := false;
        btnVerTransferencias.Enabled:=false;
        GrupoGuardarCancelar.Enabled := true;
      end;
    end
    else     //si estoy en la pestania asociar nota pedido
    begin
      CD_ListaProductos.First;
      while not CD_ListaProductos.Eof do
      begin
        if (CD_ListaProductosid_comprobante.IsNull) or (CD_ListaProductosalmacenar.AsFloat = 0) then
          CD_ListaProductos.Delete
        else
          CD_ListaProductos.Next;
      end;

      if CD_ListaProductos.IsEmpty then
        exit;

      if dm.EKModelo.iniciar_transaccion(Transaccion_TransferirStock, [ZQ_Comprobante, ZQ_CpbProducto, ZQ_NumeroCpb]) then
      begin
        asociarNotaPedido();

        btnVerTransferencias.Enabled:=false;
        GrupoEditando.Enabled := false;
        GrupoGuardarCancelar.Enabled := true;
      end;
    end;
end;


procedure TFTransferirStock.asociarNotaPedido;
var
  id_comprobante: integer;
begin
  //obtengo el id_comprobante
  ZP_CpbID.Active:= false;
  ZP_CpbID.Active:= true;
  id_comprobante:= ZP_CpbIDID.AsInteger;
  ZP_CpbID.Active:= false;

  //obtengo el ultimo numero de la transferencia de stock
  ZQ_NumeroCpb.Close;
  ZQ_NumeroCpb.ParamByName('id_tipo').AsInteger:= CPB_TRANSFERIR_STOCK;
  ZQ_NumeroCpb.Open;

  //doy de alta el comprobante
  ZQ_Comprobante.Append;
  ZQ_ComprobanteID_COMPROBANTE.AsInteger:= id_comprobante;
  ZQ_ComprobanteID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
  ZQ_ComprobanteID_POSICION_SUC_DESTINO.AsInteger:= id_pos_sucursal;
  ZQ_ComprobanteID_TIPO_CPB.AsInteger:= CPB_TRANSFERIR_STOCK;
  ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_CONFIRMADO;
  ZQ_ComprobantePUNTO_VENTA.AsInteger:= 1;
  ZQ_ComprobanteNUMERO_CPB.AsInteger:= ZQ_NumeroCpbULTIMO_NUMERO.AsInteger + 1;
  ZQ_ComprobanteFECHA.AsDateTime:= dm.EKModelo.FechayHora;

  CD_ListaProductos.First;
  while not(CD_ListaProductos.Eof) do
  begin
    ZQ_CpbProducto.Append;
    ZQ_CpbProductoID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_CpbProductoID_PRODUCTO.AsInteger:= CD_ListaProductosid_producto.AsInteger;
    ZQ_CpbProductoID_STOCK_PRODUCTO.Clear;


    if CD_ListaProductoscantidad_a_almacenar.AsFloat >= 0 then
      ZQ_CpbProductoCANTIDAD.AsFloat:= CD_ListaProductosalmacenar.AsFloat
    else //si lo que deseo almacenar es mayor a lo que puedo almacenar, entonces cargo el resto
      ZQ_CpbProductoCANTIDAD.AsFloat:= CD_ListaProductoscantidad_recibida.AsFloat - CD_ListaProductoscantidad_almacenada.AsFloat;


    ZQ_UpdateNotaPedido.Close;
    ZQ_UpdateNotaPedido.ParamByName('cantidad_almacenar').AsFloat:= ZQ_CpbProductoCANTIDAD.AsFloat;
    ZQ_UpdateNotaPedido.ParamByName('id_comprobante').AsInteger:= CD_ListaProductosid_comprobante.AsInteger;
    ZQ_UpdateNotaPedido.ParamByName('id_producto').AsInteger:= CD_ListaProductosid_producto.AsInteger;
    ZQ_UpdateNotaPedido.ExecSQL;


    CD_ListaProductos.Next;
  end;

//  //actualizo el ultimo numero
//  ZQ_NumeroCpb.Edit;
//  ZQ_NumeroCpbULTIMO_NUMERO.AsInteger:= ZQ_ComprobanteNUMERO_CPB.AsInteger;
//  CD_ListaProductos.First;
//  while not(CD_ListaProductos.Eof) do
//  begin
//    ZQ_ProcesarStock.Close;
//    ZQ_ProcesarStock.ParamByName('id_stock_prod').Clear;
//    ZQ_ProcesarStock.ParamByName('id_producto').AsInteger:= CD_ListaProductosid_producto.AsInteger;
//    ZQ_ProcesarStock.ParamByName('id_pos_suc').AsInteger:= id_pos_sucursal;
//
//    if CD_ListaProductoscantidad_a_almacenar.AsFloat >= 0 then
//      ZQ_ProcesarStock.ParamByName('cantidad_almacenar').AsFloat:= CD_ListaProductosalmacenar.AsFloat
//    else //si lo que deseo almacenar es mayor a lo que puedo almacenar, entonces cargo el resto
//      ZQ_ProcesarStock.ParamByName('cantidad_almacenar').AsFloat:= CD_ListaProductoscantidad_recibida.AsFloat - CD_ListaProductoscantidad_almacenada.AsFloat;
//
//    ZQ_ProcesarStock.ParamByName('stock_min').AsFloat:= CD_ListaProductosstock_min.AsFloat;
//    ZQ_ProcesarStock.ParamByName('stock_max').AsFloat:= CD_ListaProductosstock_max.AsFloat;
//    ZQ_ProcesarStock.ParamByName('stock_repedido').Clear;
//    ZQ_ProcesarStock.ParamByName('id_comprobante').AsInteger := CD_ListaProductosid_comprobante.AsInteger;
//    ZQ_ProcesarStock.ExecSQL;
//
//    CD_ListaProductos.Next;
//  end;
end;


procedure TFTransferirStock.asociarStockProducto;
var
  id_comprobante: integer;
begin
  //obtengo el id_comprobante
  ZP_CpbID.Active:= false;
  ZP_CpbID.Active:= true;
  id_comprobante:= ZP_CpbIDID.AsInteger;
  ZP_CpbID.Active:= false;

  //obtengo el ultimo numero de la transferencia de stock
  ZQ_NumeroCpb.Close;
  ZQ_NumeroCpb.ParamByName('id_tipo').AsInteger:= CPB_TRANSFERIR_STOCK;
  ZQ_NumeroCpb.Open;

  //doy de alta el comprobante
  ZQ_Comprobante.Append;
  ZQ_ComprobanteID_COMPROBANTE.AsInteger:= id_comprobante;
  ZQ_ComprobanteID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
  ZQ_ComprobanteID_POSICION_SUC_DESTINO.AsInteger:= id_pos_sucursal;
  ZQ_ComprobanteID_TIPO_CPB.AsInteger:= CPB_TRANSFERIR_STOCK;
  ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_CONFIRMADO;
  ZQ_ComprobantePUNTO_VENTA.AsInteger:= 1;
  ZQ_ComprobanteNUMERO_CPB.AsInteger:= ZQ_NumeroCpbULTIMO_NUMERO.AsInteger + 1;
  ZQ_ComprobanteFECHA.AsDateTime:= dm.EKModelo.FechayHora;

  CD_Producto.First;
  while not(CD_Producto.Eof) do
  begin
    ZQ_CpbProducto.Append;
    ZQ_CpbProductoID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_CpbProductoID_PRODUCTO.AsInteger:= CD_Producto_idProducto.AsInteger;
    ZQ_CpbProductoID_STOCK_PRODUCTO.AsInteger:= CD_Producto_idStockProducto.AsInteger;
    if CD_Producto_cantidad.AsFloat <= CD_Producto_stockactual.AsFloat then
      ZQ_CpbProductoCANTIDAD.AsFloat:= CD_Producto_cantidad.AsFloat
    else //si lo que deseo transferir es mayor a lo que tengo en stock, entonces cargo todo el stock
      ZQ_CpbProductoCANTIDAD.AsFloat:= CD_Producto_stockactual.AsFloat;

    CD_Producto.Next;
  end;

  //actualizo el ultimo numero
  ZQ_NumeroCpb.Edit;
  ZQ_NumeroCpbULTIMO_NUMERO.AsInteger:= ZQ_ComprobanteNUMERO_CPB.AsInteger;
end;


procedure TFTransferirStock.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFTransferirStock.btnGuardarClick(Sender: TObject);
begin
  try
    if dm.EKModelo.finalizar_transaccion(Transaccion_TransferirStock) then
    begin
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      btnVerTransferencias.Enabled:=true;

      if PageControlTransferir.ActivePage = TabSAsociarNotaPedido then
      begin

        if dm.EKModelo.iniciar_transaccion('Update Estado', []) then
        begin
          ZQ_Cpb_UpdateEstado.Close;
          ZQ_Cpb_UpdateEstado.ParamByName('ID_COMPROBANTE').AsInteger := ZQ_VerCpbID_COMPROBANTE.AsInteger;
          ZQ_Cpb_UpdateEstado.ParamByName('ID_ESTADO').AsInteger := ESTADO_ALMACENADO;
          ZQ_Cpb_UpdateEstado.ExecSQL;

          if not DM.EKModelo.finalizar_transaccion('Update Estado') then
            DM.EKModelo.cancelar_transaccion('Update Estado')
        end;

        DBGridNotaPedido.Visible:= true;
        DBGridNotaPedidoDetalle.Visible:= False;
        PanelNotaPedidoDetalle.Visible:= False;
        ZQ_VerCpb.Refresh;
        CD_ListaProductos.EmptyDataSet;
        EKSumaNotaPedido.RecalcAll;

      end;

      CD_Producto.EmptyDataSet;
      EKSumaTransferir.RecalcAll;
    end;
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;
end;


procedure TFTransferirStock.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(Transaccion_TransferirStock) then
  begin
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    btnVerTransferencias.Enabled:=true;

    if PageControlTransferir.ActivePage = TabSAsociarNotaPedido then
    begin
      DBGridNotaPedido.Visible:= true;
      DBGridNotaPedidoDetalle.Visible:= False;
      PanelNotaPedidoDetalle.Visible:= False;
      ZQ_VerCpb.Refresh;
      CD_ListaProductos.EmptyDataSet;
      EKSumaNotaPedido.RecalcAll;
    end;
  end;
end;


procedure TFTransferirStock.btBorrarLineaClick(Sender: TObject);
begin
  if not CD_Producto.IsEmpty then
    CD_Producto.Delete;
end;


procedure TFTransferirStock.DBGridNotaPedidoDblClick(Sender: TObject);
begin
  btnNotaPedido.Click;
end;


procedure TFTransferirStock.btnNotaPedidoClick(Sender: TObject);
begin
//  if SUCURSAL_LOGUEO <> ZQ_VerCpbID_SUCURSAL.AsInteger then
//  begin
//
//    exit;
//  end;
  
  if DBGridNotaPedido.Visible then //si estoy viendo las Notas de Pedidos
  begin
    if not ZQ_VerCpb.IsEmpty then
    begin
      ZQ_Cpb_ListaProd.Close;
      ZQ_Cpb_ListaProd.ParamByName('ID_COMPROBANTE').AsInteger := ZQ_VerCpbID_COMPROBANTE.AsInteger;
      ZQ_Cpb_ListaProd.Open;

      if not ZQ_Cpb_ListaProd.IsEmpty then
      begin
        permitirInsertar:= true;
        ZQ_Cpb_ListaProd.First;
        while not ZQ_Cpb_ListaProd.Eof do
        begin
          if (ZQ_Cpb_ListaProdCANTIDAD_RECIBIDA.AsFloat <> 0) and (ZQ_Cpb_ListaProdCANTIDAD_RECIBIDA.AsFloat <> ZQ_Cpb_ListaProdCANTIDAD_ALMACENADA.AsFloat) then
          begin
            CD_ListaProductos.Append;
            CD_ListaProductoscantidad.AsFloat := ZQ_Cpb_ListaProdCANTIDAD.AsFloat;
            CD_ListaProductoscantidad_recibida.AsFloat:= ZQ_Cpb_ListaProdCANTIDAD_RECIBIDA.AsFloat;
            CD_ListaProductoscantidad_almacenada.AsFloat:= ZQ_Cpb_ListaProdCANTIDAD_ALMACENADA.AsFloat;
            CD_ListaProductoscod_cabecera.AsString:= ZQ_Cpb_ListaProdCOD_CABECERA.AsString;
            CD_ListaProductosproducto.AsString:= ZQ_Cpb_ListaProdPRODUCTO.AsString;
            CD_ListaProductosmedida.AsString:= ZQ_Cpb_ListaProdMEDIDA.AsString;
            CD_ListaProductoscolor.AsString:= ZQ_Cpb_ListaProdCOLOR.AsString;
            CD_ListaProductosmarca.AsString:= ZQ_Cpb_ListaProdMARCA.AsString;
            CD_ListaProductosarticulo.AsString:= ZQ_Cpb_ListaProdARTICULO.AsString;
            CD_ListaProductostipo_articulo.AsString:= ZQ_Cpb_ListaProdTIPO_ARTICULO.AsString;
            CD_ListaProductoscod_producto.AsString:= ZQ_Cpb_ListaProdCOD_PRODUCTO.AsString;
            CD_ListaProductoscodigo_barra.AsString:= ZQ_Cpb_ListaProdCODIGO_BARRA.AsString;
            CD_ListaProductosid_producto.AsInteger:= ZQ_Cpb_ListaProdID_PRODUCTO.AsInteger;
            CD_ListaProductosid_comprobante.AsInteger:= ZQ_Cpb_ListaProdID_COMPROBANTE.AsInteger;
            CD_ListaProductosalmacenar.AsFloat := ZQ_Cpb_ListaProdCANTIDAD_RECIBIDA.AsFloat- ZQ_Cpb_ListaProdCANTIDAD_ALMACENADA.AsFloat;
            CD_ListaProductos.Post;
          end;

          ZQ_Cpb_ListaProd.Next;
        end;

        btnNotaPedido.Caption:= 'Cerrar Nota Pedido';
        DBGridNotaPedido.Visible:= false;
        DBGridNotaPedidoDetalle.Visible:= true;
        DBGridNotaPedidoDetalle.SetFocus;
        PanelNotaPedidoDetalle.Visible:= true;

        //inicialmente me posiciono en la primer fila en la columna almacenar
        ZQ_Cpb_ListaProd.First;
        DBGridNotaPedidoDetalle.SelectedField:= DBGridNotaPedidoDetalle.Fields[GetIndexField(DBGridNotaPedidoDetalle, 'almacenar')];

        permitirInsertar:= false;
      end;
    end;
  end
  else //si estoy examinando la nota de pedido con todos sus productos
  begin
    btnNotaPedido.Caption:= 'Abrir Nota Pedido';
    DBGridNotaPedido.Visible:= true;
    DBGridNotaPedidoDetalle.Visible:= False;
    PanelNotaPedidoDetalle.Visible:= False;
    CD_ListaProductos.EmptyDataSet;
    ZQ_VerCpb.Refresh;
  end;
end;


procedure TFTransferirStock.CD_ListaProductosCalcFields(DataSet: TDataSet);
begin
  CD_ListaProductoscantidad_a_almacenar.AsFloat := CD_ListaProductoscantidad_recibida.AsFloat - CD_ListaProductoscantidad_almacenada.AsFloat - CD_ListaProductosalmacenar.AsFloat;

  if CD_ListaProductoscantidad_a_almacenar.AsFloat < 0 then
    CD_ListaProductosalmacenar.AsFloat := CD_ListaProductoscantidad_recibida.AsFloat - CD_ListaProductoscantidad_almacenada.AsFloat;

end;


procedure TFTransferirStock.PageControlTransferirChange(Sender: TObject);
begin
  if PageControlTransferir.ActivePage = TabSTransferirStock then
  begin
    btnBuscar.Visible := ivAlways;
    btnNotaPedido.Visible := ivNever;
  end;

  if PageControlTransferir.ActivePage = TabSAsociarNotaPedido then
  begin
    btnBuscar.Visible := ivNever;
    btnNotaPedido.Visible := ivAlways;

    ZQ_VerCpb.Refresh;
  end;
end;


procedure TFTransferirStock.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  EKOrdenarGrillaProductos.GuardarConfigColumnas;
  EKOrdenarGrillaNotaPedidoDetalle.GuardarConfigColumnas;
  EKOrdenarHistorico_Cpb.GuardarConfigColumnas;
  EKOrdenarHistorico_Detalle.GuardarConfigColumnas;

  CanClose:= FPrincipal.cerrar_ventana(Transaccion_TransferirStock);
end;


procedure TFTransferirStock.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin
    if EKListado_Sucursal.Buscar then
    begin
      id_pos_sucursal := StrToInt(EKListado_Sucursal.Resultado);
      EditSucursal.Text := EKListado_Sucursal.Seleccion;
    end;
  end;
end;


procedure TFTransferirStock.DBGridProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridProducto, Rect, DataCol, Column, State);
end;


procedure TFTransferirStock.DBGridNotaPedidoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridNotaPedido, Rect, DataCol, Column, State);
end;


procedure TFTransferirStock.DBGridNotaPedidoDetalleDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridNotaPedidoDetalle, Rect, DataCol, Column, State);
end;


procedure TFTransferirStock.PageControlTransferirChanging(Sender: TObject; var AllowChange: Boolean);
begin
  AllowChange:= true;
  if (dm.EKModelo.verificar_transaccion(Transaccion_TransferirStock)) or (DBGridNotaPedido.Visible = false) then
    AllowChange:= False;
end;


procedure TFTransferirStock.EKSumaTransferirSumListChanged(Sender: TObject);
var
  cantidad: string;
begin
  cantidad:= FormatFloat('###,###,###,##0.00', EKSumaTransferir.SumCollection[0].SumValue);
  editTotalProductos.Text:= cantidad;
end;


procedure TFTransferirStock.EKSumaNotaPedidoSumListChanged(Sender: TObject);
var
  cantidad: string;
begin
  cantidad:= FormatFloat('###,###,###,##0.00', EKSumaNotaPedido.SumCollection[0].SumValue);
  editTotalAlmacenar.Text:= cantidad;
end;


procedure TFTransferirStock.CD_ListaProductosAfterInsert(DataSet: TDataSet);
begin
  if not permitirInsertar then
    CD_ListaProductos.Delete;
end;


procedure TFTransferirStock.DBGridNotaPedidoDetalleKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  campo, fila, cantidad: integer;
begin
  campo:= GetIndexField(DBGridNotaPedidoDetalle, 'almacenar') - 1;
  cantidad:= CD_ListaProductos.RecordCount;
  fila:= CD_ListaProductos.RecNo + 1;

  if (Key = 13) or (key = 9) then  { if it's an enter key }
  begin
    Key := 0; {ignore}
    if ((sender as tdbgrid).SelectedField.FullName = 'almacenar') then //si estoy en la columna almacenar
    begin
      if fila <= cantidad then //si no estoy en la ultima fila entonces paso a la siguiente
        CD_ListaProductos.Next
      else //si estoy en la ultima fila
        if CD_ListaProductos.State = dsEdit then //y estoy en modo edicion
          CD_ListaProductos.Post; //hago un post para que recalcule el EKDBSuma
      DBGridNotaPedidoDetalle.SelectedField:= DBGridNotaPedidoDetalle.Fields[campo]; //sigo en la misma columna
    end;
  end;
end;


procedure TFTransferirStock.DBGridProductoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  campo, fila, cantidad: integer;
begin
  campo:= GetIndexField(DBGridProducto, 'cantidad') - 1;
  cantidad:= CD_Producto.RecordCount;
  fila:= CD_Producto.RecNo + 1;

  if (Key = 13) or (key = 9) then  { if it's an enter key }
  begin
    Key := 0; {ignore}
    if ((sender as tdbgrid).SelectedField.FullName = 'cantidad') then //si estoy en la columna almacenar
    begin
      if fila <= cantidad then //si no estoy en la ultima fila entonces paso a la siguiente
        CD_Producto.Next
      else //si estoy en la ultima fila
        if CD_Producto.State = dsEdit then //y estoy en modo edicion
          CD_Producto.Post; //hago un post para que recalcule el EKDBSuma
      DBGridProducto.SelectedField:= DBGridProducto.Fields[campo]; //sigo en la misma columna
    end;
  end;
end;


procedure TFTransferirStock.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFTransferirStock.AAbrirNotaPedidoExecute(Sender: TObject);
begin
  if btnNotaPedido.Enabled and (btnNotaPedido.Visible = ivAlways) then
    btnNotaPedido.Click;
end;

procedure TFTransferirStock.ATransferirExecute(Sender: TObject);
begin
  if btnTransferir.Enabled and (btnTransferir.Visible = ivAlways) then
    btnTransferir.Click;
end;

procedure TFTransferirStock.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;


procedure TFTransferirStock.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;


procedure TFTransferirStock.btnVerTransferenciasClick(Sender: TObject);
begin
  if PanelContenedor.Visible then
  begin
    PanelHistorico.Visible:= true;
    PanelContenedor.Visible:=false;
    ZQ_Historico_Cpb.Close;
    ZQ_Historico_Cpb.Open;
  end
  else
  begin
    PanelContenedor.Visible:= true;
    PanelHistorico.Visible:= false;

    ZQ_Historico_Cpb.Close;
  end;
  GrupoEditando.Enabled:= not(PanelHistorico.Visible);

  if PanelHistorico.Visible then
  begin
    btnBuscarHistorico.Visible :=  ivAlways;
    btnImprimir.Visible :=  ivAlways;
  end
  else
  begin
    btnBuscarHistorico.Visible :=  ivNever;
    btnImprimir.Visible :=  ivNever;
  end;
end;

procedure TFTransferirStock.ZQ_Historico_CpbAfterScroll(DataSet: TDataSet);
begin
  ZQ_Historico_Detalle.Close;

  if ZQ_Historico_Cpb.IsEmpty then
    exit;

  ZQ_Historico_Detalle.ParamByName('id_comprobante').AsInteger:= ZQ_Historico_CpbID_COMPROBANTE.AsInteger;
  ZQ_Historico_Detalle.Open;
end;


procedure TFTransferirStock.DBGrid_Historico_CpbDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if not ZQ_Historico_Cpb.IsEmpty then
  begin
    if not (ZQ_Historico_CpbFECHA_IMPRESA.IsNull) then
    begin
      DBGrid_Historico_Cpb.Canvas.Brush.Color :=StaticText1.Color;
      DBGrid_Historico_Cpb.Canvas.Font.Color := clBlack;
      DBGrid_Historico_Cpb.Canvas.Font.Style := DBGrid_Historico_Cpb.Canvas.Font.Style + [fsBold];
      if (gdFocused in State) or (gdSelected in State) then
      begin
        DBGrid_Historico_Cpb.Canvas.Font.Color := clwhite;
      end
    end
    else
    begin
      if (gdFocused in State) or (gdSelected in State) then
      begin
        DBGrid_Historico_Cpb.Canvas.Font.Color := clwhite;
        DBGrid_Historico_Cpb.Canvas.Brush.Color:=clBlue;
        DBGrid_Historico_Cpb.Canvas.Font.Style := DBGrid_Historico_Cpb.Canvas.Font.Style + [fsBold];
      end;
    end;
    DBGrid_Historico_Cpb.DefaultDrawColumnCell(rect,datacol,column,state);
  end;

  FPrincipal.PintarFilasGrillas(DBGrid_Historico_Cpb, Rect, DataCol, Column, State);
end;


procedure TFTransferirStock.DBGrid_Historico_DetalleDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGrid_Historico_Detalle, Rect, DataCol, Column, State);
end;


function TFTransferirStock.idStockProducto_pertenece_destino(idStock: integer): boolean;
begin
  Result:= true;

  ZQ_VerificarProducto.Close;
  ZQ_VerificarProducto.ParamByName('id_stock').AsInteger:= idStock;
  ZQ_VerificarProducto.ParamByName('id_posicion').AsInteger:= id_pos_sucursal;
  ZQ_VerificarProducto.open;

  if ZQ_VerificarProducto.IsEmpty then
    Result:= false;
end;

procedure TFTransferirStock.btDestinoClick(Sender: TObject);
begin
  if EKListado_Sucursal.Buscar then
  begin
    id_pos_sucursal := StrToInt(EKListado_Sucursal.Resultado);
    EditSucursal.Text := EKListado_Sucursal.Seleccion;
  end;
end;

procedure TFTransferirStock.btnImprimirClick(Sender: TObject);
begin

  if (ZQ_Historico_Cpb.IsEmpty) then
    exit;

  if not Assigned(FImpresion_Comprobantes) then
    FImpresion_Comprobantes:= TFImpresion_Comprobantes.Create(nil);
  FImpresion_Comprobantes.cargarDatos(ZQ_Historico_CpbID_COMPROBANTE.AsInteger, 0, 0, false);
  FImpresion_Comprobantes.imprimir;

  if not ZQ_Historico_CpbFECHA_IMPRESA.IsNull then
    exit;

  if DM.EKModelo.iniciar_transaccion('IMPRESO' ,[ZQ_Historico_Cpb]) then
  Begin
    ZQ_Historico_Cpb.Edit;
    ZQ_Historico_CpbFECHA_IMPRESA.AsDateTime := dm.EKModelo.Fecha;

   if not DM.EKModelo.finalizar_transaccion('IMPRESO') then
     DM.EKModelo.cancelar_transaccion('IMPRESO');
  end; 

end;

procedure TFTransferirStock.btnBuscarHistoricoClick(Sender: TObject);
begin
  EKBusquedaHistorico.Buscar;

  ZQ_Historico_Cpb.Filtered:= false;

  if EKBusquedaHistorico.ParametrosSeleccionados1[5] = 'SI' then
  begin
    ZQ_Historico_Cpb.Filter:= 'fecha_impresa is not null';
    ZQ_Historico_Cpb.Filtered:= true;
  end
  else
  begin
    if EKBusquedaHistorico.ParametrosSeleccionados1[5] = 'NO' then
    begin
      ZQ_Historico_Cpb.Filter:= 'fecha_impresa is null';
      ZQ_Historico_Cpb.Filtered:= true;
    end;
  end;

end;

end.
