unit UOP_Cajero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, cxClasses, DBCtrls, Grids, DBGrids,
  StdCtrls, Mask, Buttons, ComCtrls, ExtCtrls, DB, DBClient;

type
  TFOP_Cajero = class(TForm)
    dxBarABM: TdxBarManager;
    dxBarABMBar1: TdxBar;
    dxBarABMBar2: TdxBar;
    btnBuscarProductoListado: TdxBarLargeButton;
    btnBuscarProductoAvanzada: TdxBarLargeButton;
    btnBuscarCliente: TdxBarLargeButton;
    btIVA: TdxBarLargeButton;
    btnBuscarVendedor: TdxBarLargeButton;
    btnLeerCB: TdxBarLargeButton;
    btnFormaPago: TdxBarLargeButton;
    btnPreventa: TdxBarLargeButton;
    btnVentaRapida: TdxBarLargeButton;
    BtAceptarPago: TdxBarLargeButton;
    BtCancelarPago: TdxBarLargeButton;
    btsalir: TdxBarLargeButton;
    btCierreZ: TdxBarLargeButton;
    BtCierreX: TdxBarLargeButton;
    btnAuditoriaFiscal: TdxBarLargeButton;
    btnCargarOrdenTecnica: TdxBarLargeButton;
    GrupoGuardarCancelar: TdxBarGroup;
    grupoVertical: TdxBarGroup;
    PanelContenedorDerecha: TPanel;
    PanelStatusBar: TPanel;
    DBText7: TDBText;
    DBText8: TDBText;
    PanelCambiarFecha: TPanel;
    DateTimePicker_FechaCarga: TDateTimePicker;
    CheckBoxCambiarFecha: TCheckBox;
    PanelProductosYFPago: TPanel;
    Label11: TLabel;
    PanelListadoProducto: TPanel;
    Label9: TLabel;
    Panel6: TPanel;
    Label36: TLabel;
    lblCantProductos: TLabel;
    lblMontoProds: TLabel;
    btQuitarProducto: TButton;
    DBGridListadoProductos: TDBGrid;
    PanelFormaPago: TPanel;
    DBGridFormaPago: TDBGrid;
    PieGrilla: TPanel;
    lblMaxVenta: TLabel;
    btnQuitarPago: TButton;
    Panel1: TPanel;
    lblTotAPagar: TLabel;
    lblNroCPB: TLabel;
    PanelDetalles: TPanel;
    PanelCabeceraFactura: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label28: TLabel;
    Label20: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    PanelDetalleOrdenOptica: TPanel;
    Label14: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    DBEdit13: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Panel3: TPanel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label7: TLabel;
    DBImage1: TDBImage;
    edImagen: TDBImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit26: TDBEdit;
    DS_DetalleFactura: TDataSource;
    CD_DetalleFactura: TClientDataSet;
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
    CD_DetalleFacturaIMPORTE_VENTA: TFloatField;
    CD_DetalleFacturaIMPORTE_IVA: TFloatField;
    CD_DetalleFacturaID_PROD_STOCK: TIntegerField;
    CD_DetalleFacturaPRECIO1: TFloatField;
    CD_DetalleFacturaPRECIO2: TFloatField;
    CD_DetalleFacturaPRECIO3: TFloatField;
    CD_DetalleFacturaPRECIO4: TFloatField;
    CD_DetalleFacturaPRECIO5: TFloatField;
    CD_DetalleFacturaIMPORTE_IF: TFloatField;
    CD_DetalleFacturaIMPORTE_IF_SINIVA: TFloatField;
    CD_DetalleFacturaIMPORTE_IVA_IF: TFloatField;
    CD_DetalleFacturaimporte_original: TFloatField;
    CD_DetalleFacturaproducto: TStringField;
    CD_DetalleFacturaIMPORTE_COSTO: TFloatField;
    CD_DetalleFacturamonto_reconocido: TFloatField;
    PCargaProd: TPanel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    DBText1: TDBText;
    Label26: TLabel;
    Label42: TLabel;
    DBEdit7: TDBEdit;
    edCant: TDBEdit;
    edImporteUnitario: TDBEdit;
    DBGridListadoOS: TDBGrid;
    Panel2: TPanel;
    Button1: TButton;
    btnCancProd: TButton;
    Label5: TLabel;
    DBText2: TDBText;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOP_Cajero: TFOP_Cajero;

implementation

{$R *.dfm}

end.
