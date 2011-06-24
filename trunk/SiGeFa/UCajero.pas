unit UCajero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Grids, DBGrids,
  sEdit;

type
  TFCajero = class(TForm)
    PanelContenedor: TPanel;
    ZQ_Productos: TZQuery;
    ZQ_ProductosNOMBRE_PRODUCTO: TStringField;
    ZQ_ProductosMEDIDA: TStringField;
    ZQ_ProductosARTICULO: TStringField;
    ZQ_ProductosTIPO_ARTICULO: TStringField;
    ZQ_ProductosNOMBRE_MARCA: TStringField;
    ZQ_ProductosDESCRIPCION: TStringField;
    ZQ_ProductosPRECIO_COSTO: TFloatField;
    ZQ_ProductosPRECIO_VENTA: TFloatField;
    ZQ_ProductosCOEF_GANANCIA: TFloatField;
    ZQ_ProductosCOEF_DESCUENTO: TFloatField;
    ZQ_ProductosIMPUESTO_INTERNO: TFloatField;
    ZQ_ProductosIMPUESTO_IVA: TFloatField;
    ZQ_ProductosCOD_CORTO: TStringField;
    ZQ_ProductosCODIGO_BARRA: TStringField;
    ZQ_ProductosID_PRODUCTO: TIntegerField;
    DS_Productos: TDataSource;
    PanelDetalleProducto: TPanel;
    Panel2: TPanel;
    PanelFormaPago: TPanel;
    PanelListadoProducto: TPanel;
    PanelCabeceraFactura: TPanel;
    edImagen: TDBImage;
    DBGridListadoProductos: TDBGrid;
    PieGrilla: TPanel;
    EditImporteaCobrar: TsEdit;
    DBGridFormaPago: TDBGrid;
    btQuitarProducto: TButton;
    PieGrillaFormaPago: TPanel;
    sEdit1: TsEdit;
    btQuitarFormaPago: TButton;
    PanelEditar_DatosGralCliente: TPanel;
    DBText7: TDBText;
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
    DS_ComprobanteDetalle: TDataSource;
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
    dxBarABM: TdxBarManager;
    BtBuscarCliente: TdxBarLargeButton;
    BtModificar: TdxBarLargeButton;
    BtEliminar: TdxBarLargeButton;
    BtAgregarPago: TdxBarLargeButton;
    BtAceptarPago: TdxBarLargeButton;
    BtCancelarPago: TdxBarLargeButton;
    BtDuplicar: TdxBarLargeButton;
    Bt_Cierre_Z: TdxBarLargeButton;
    btBajar: TdxBarLargeButton;
    btsalir: TdxBarLargeButton;
    bt_accion: TdxBarControlContainerItem;
    bt_motivo_baja: TdxBarControlContainerItem;
    bt_VerDetalle: TdxBarLargeButton;
    Bt_Informe: TdxBarLargeButton;
    Bt_Detalle: TdxBarLargeButton;
    Bt_Imprimir_Arqueo: TdxBarLargeButton;
    Bt_Imprimir_convenio: TdxBarLargeButton;
    BtLeerCodigo: TdxBarLargeButton;
    BtBuscar: TdxBarLargeButton;
    btLiquidar: TdxBarLargeButton;
    Bt_imprimir_listadoFP: TdxBarLargeButton;
    bt_cierre_X: TdxBarLargeButton;
    GrupoBuscarCliente: TdxBarGroup;
    GrupoLeerCodigo: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    procedure btsalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCajero: TFCajero;

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFCajero.btsalirClick(Sender: TObject);
begin
close;
end;

end.
