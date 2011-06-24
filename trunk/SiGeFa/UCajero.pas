unit UCajero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls, Grids, DBGrids,
  EKEdit,UBuscarProducto, Mask, Provider, DBClient;

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
    PanelContenedorDerecha: TPanel;
    PanelFormaPago: TPanel;
    PanelListadoProducto: TPanel;
    PanelCabeceraFactura: TPanel;
    edImagen: TDBImage;
    DBGridListadoProductos: TDBGrid;
    PieGrilla: TPanel;
    DBGridFormaPago: TDBGrid;
    btQuitarProducto: TButton;
    PieGrillaFormaPago: TPanel;
    btQuitarFormaPago: TButton;
    PanelEditar_DatosGralCliente: TPanel;
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
    PanelStatusBar: TPanel;
    EKEdit1: TEKEdit;
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
    DS_Comprobante: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    codBarras: TEdit;
    CD_DetalleFactura: TClientDataSet;
    DS_DetalleFactura: TDataSource;
    DataSetProvider1: TDataSetProvider;
    CD_DetalleFacturaID_COMPROBANTE_DETALLE: TIntegerField;
    CD_DetalleFacturaID_COMPROBANTE: TIntegerField;
    CD_DetalleFacturaID_PRODUCTO: TIntegerField;
    CD_DetalleFacturaDETALLE: TStringField;
    CD_DetalleFacturaCANTIDAD: TFloatField;
    CD_DetalleFacturaIMPORTE_FINAL: TFloatField;
    CD_DetalleFacturaPORC_DESCUENTO: TFloatField;
    CD_DetalleFacturaBASE_IMPONIBLE: TFloatField;
    CD_DetalleFacturaIMPORTE_UNITARIO: TFloatField;
    CD_DetalleFacturaIMPUESTO_INTERNO: TFloatField;
    CD_DetalleFacturaPORC_IVA: TFloatField;
    procedure btsalirClick(Sender: TObject);
    procedure BtBuscarClienteClick(Sender: TObject);
    procedure BtAgregarPagoClick(Sender: TObject);

  private
    vsel: TFBuscarProducto;
    procedure onSelProducto;
    { Private declarations }
  public


    { Public declarations }
  end;

var
  FCajero: TFCajero;

const
  abmComprobante='ABM Factura-Cajero';

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFCajero.btsalirClick(Sender: TObject);
begin
close;
end;

procedure TFCajero.BtBuscarClienteClick(Sender: TObject);
begin
if not Assigned(vsel) then
    vsel:= TFBuscarProducto.Create(nil);
  vsel.OnSeleccionar := onSelProducto;
  vsel.ShowModal;
end;

procedure TFCajero.onSelProducto;
begin
  if dm.EKModelo.verificar_transaccion(abmComprobante) then
  begin
    if not vsel.ZQ_Producto.IsEmpty then
    begin
      ZQ_ComprobanteDetalle.Filter:= 'idProducto = ' +  vsel.ZQ_ProductoID_PRODUCTO.AsString;
      ZQ_ComprobanteDetalle.Filtered := true;
      if not ZQ_ComprobanteDetalle.IsEmpty then
      begin
        ZQ_ComprobanteDetalle.Filtered := false;
        Application.MessageBox('El Producto seleccionado ya fue cargado','Carga Producto',MB_OK+MB_ICONINFORMATION);
        exit;
      end;

      ZQ_ComprobanteDetalle.Filtered := false;
      ZQ_ComprobanteDetalle.Append;
      ZQ_ComprobanteDetalleID_PRODUCTO.AsInteger:=vsel.ZQ_ProductoID_PRODUCTO.AsInteger;
    end;

    if vsel.SeleccionarYSalir then
      vsel.Close;
  end;
end;

procedure TFCajero.BtAgregarPagoClick(Sender: TObject);
begin
if not(ZQ_Productos.IsEmpty) then
  begin
    CD_DetalleFactura.Append;
    CD_DetalleFacturaID_PRODUCTO.AsInteger:=ZQ_ProductosID_PRODUCTO.AsInteger;
    CD_DetalleFacturaDETALLE.AsString:='';
    CD_DetalleFacturaCANTIDAD.AsFloat:=00;
    CD_DetalleFacturaIMPORTE_FINAL.AsFloat:=00;
    CD_DetalleFacturaPORC_DESCUENTO.AsFloat:=00;
    CD_DetalleFacturaBASE_IMPONIBLE.AsFloat:=00;
    CD_DetalleFacturaIMPORTE_UNITARIO.AsFloat:=00;
    CD_DetalleFacturaIMPUESTO_INTERNO.AsFloat:=00;
    CD_DetalleFacturaPORC_IVA.AsFloat:=00;
    CD_DetalleFactura.Post;
  end;
end;

end.
