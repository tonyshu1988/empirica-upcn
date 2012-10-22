unit UOP_ABMOrden_Tecnica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, DBCtrls, Grids, DBGrids, StdCtrls, Mask,
  Buttons, ComCtrls, ExtCtrls;

type
  TFOP_ABM_OrdenTecnica = class(TForm)
    PanelContenedorDerecha: TPanel;
    PanelStatusBar: TPanel;
    DBText7: TDBText;
    DBText8: TDBText;
    PanelCambiarFecha: TPanel;
    DateTimePicker_FechaCarga: TDateTimePicker;
    CheckBoxCambiarFecha: TCheckBox;
    PProducto: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label40: TLabel;
    PanelDetalleProducto: TPanel;
    Label5: TLabel;
    btnAceptarProd: TSpeedButton;
    btnCancelarProd: TSpeedButton;
    edProducto: TDBEdit;
    edCantidad: TDBEdit;
    edDesc: TDBEdit;
    edImporteFinal: TDBEdit;
    edUnitario: TDBEdit;
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
    PanelDetalleCliente: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    Label28: TLabel;
    Label_DetalleCliente: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit_DetalleCliente: TDBEdit;
    PDetalleOrden: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label7: TLabel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit17: TDBEdit;
    PanelDetallePreventa: TPanel;
    Label54: TLabel;
    Label56: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    dxBarABM: TdxBarManager;
    btBuscProd: TdxBarLargeButton;
    BtBuscarProducto: TdxBarLargeButton;
    bt_BuscarCliente: TdxBarLargeButton;
    btIVA: TdxBarLargeButton;
    BtVendedor: TdxBarLargeButton;
    BtLeerCB: TdxBarLargeButton;
    btnFormaPago: TdxBarLargeButton;
    btPreventa: TdxBarLargeButton;
    btnVentaRapida: TdxBarLargeButton;
    BtAceptarPago: TdxBarLargeButton;
    BtCancelarPago: TdxBarLargeButton;
    btsalir: TdxBarLargeButton;
    btCierreZ: TdxBarLargeButton;
    BtCierreX: TdxBarLargeButton;
    btnAuditoriaFiscal: TdxBarLargeButton;
    bt_Cargar_Orden: TdxBarLargeButton;
    GrupoGuardarCancelar: TdxBarGroup;
    grupoVertical: TdxBarGroup;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOP_ABM_OrdenTecnica: TFOP_ABM_OrdenTecnica;

implementation

{$R *.dfm}

end.
