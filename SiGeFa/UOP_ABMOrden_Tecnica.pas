unit UOP_ABMOrden_Tecnica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, DBCtrls, Grids, DBGrids, StdCtrls, Mask,
  Buttons, ComCtrls, ExtCtrls;

type
  TFOP_ABM_OrdenTecnica = class(TForm)
    PanelContenedorDerecha: TPanel;
    PanelProductosYFPago: TPanel;
    Label11: TLabel;
    PanelListadoProducto: TPanel;
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
    PPieBoleta: TPanel;
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
    Label7: TLabel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit5: TDBEdit;
    dbAvisar: TDBCheckBox;
    Panel2: TPanel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    PanelStatusBar: TPanel;
    DBText7: TDBText;
    DBGrid1: TDBGrid;
    POs: TPanel;
    Label1: TLabel;
    PProductos: TPanel;
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
    Splitter1: TSplitter;
    PFormaPago: TPanel;
    PObservaciones: TPanel;
    dbObsOrden: TDBRichEdit;
    Label2: TLabel;
    PReceta: TPanel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label20: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
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
