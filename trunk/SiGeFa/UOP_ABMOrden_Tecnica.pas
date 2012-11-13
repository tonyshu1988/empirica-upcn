unit UOP_ABMOrden_Tecnica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, DBCtrls, Grids, DBGrids, StdCtrls, Mask,
  Buttons, ComCtrls, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, DBClient;

type
  TFOP_ABM_OrdenTecnica = class(TForm)
    PanelContenedorDerecha: TPanel;
    PanelProductosYFPago: TPanel;
    Label11: TLabel;
    PanelListadoProducto: TPanel;
    Panel6: TPanel;
    Label36: TLabel;
    lblCantProductos: TLabel;
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
    Button1: TButton;
    Panel1: TPanel;
    Label33: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    CD_DetalleFactura: TClientDataSet;
    CD_Comprobante: TClientDataSet;
    ZQ_Orden: TZQuery;
    ZQ_OrdenDetalle: TZQuery;
    ZQ_OrdenDetalleOS: TZQuery;
    ZQ_OrdenID_ORDEN: TIntegerField;
    ZQ_OrdenCODIGO_CLI: TStringField;
    ZQ_OrdenID_CLIENTE: TIntegerField;
    ZQ_OrdenID_ESTADO: TIntegerField;
    ZQ_OrdenFECHA_ORDEN: TDateField;
    ZQ_OrdenFECHA_PROMETIDO: TDateField;
    ZQ_OrdenCOD_BARRAS: TStringField;
    ZQ_OrdenOBSERVACIONES: TStringField;
    ZQ_OrdenNRO_FACTURA: TStringField;
    ZQ_OrdenMONTO_TOTAL: TFloatField;
    ZQ_OrdenMONTO_ENTREGADO: TFloatField;
    ZQ_OrdenENTREGADO_POR: TIntegerField;
    ZQ_OrdenFACTURADO_POR: TIntegerField;
    ZQ_OrdenSALDO: TFloatField;
    ZQ_OrdenDetalleID_ORDEN_DETALLE: TIntegerField;
    ZQ_OrdenDetalleID_ORDEN: TIntegerField;
    ZQ_OrdenDetalleID_PRODUCTO: TIntegerField;
    ZQ_OrdenDetalleID_LABORATORIO: TIntegerField;
    ZQ_OrdenDetalleMONTO_DESCONTADO: TFloatField;
    ZQ_OrdenDetalleMONTO_TOTAL: TFloatField;
    ZQ_OrdenDetalleCANTIDAD: TFloatField;
    ZQ_OrdenDetalleOBSERVACIONES: TStringField;
    ZQ_OrdenDetalleOSID_DETALLE_OS: TIntegerField;
    ZQ_OrdenDetalleOSID_ORDEN_DETALLE: TIntegerField;
    ZQ_OrdenDetalleOSID_OS: TIntegerField;
    ZQ_OrdenDetalleOSMONTO_DESCONTADO: TFloatField;
    ZQ_OrdenDetalleOSMONTO_TOTAL: TFloatField;
    ZQ_OrdenDetalleOSCANTIDAD: TFloatField;
    ZQ_OrdenDetalleOSOBSERVACIONES: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btsalirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOP_ABM_OrdenTecnica: TFOP_ABM_OrdenTecnica;

const
  abmOrden = 'ABM Orden-Tecnica';
implementation

uses UDM;

{$R *.dfm}

procedure TFOP_ABM_OrdenTecnica.FormCreate(Sender: TObject);
begin
//  CurrencyDecimals:= 2;
//  DecimalSeparator:= '.';
//  ThousandSeparator:= ',';
//  DateSeparator:= '/';
//  ShortDateFormat:= 'dd/MM/yyyy';
//  dm.ZQ_Configuracion.Close;
//  dm.ZQ_Configuracion.Open;
//  idSucursal:= dm.ZQ_ConfiguracionDB_SUCURSAL.AsInteger;
//  CD_Comprobante.CreateDataSet;
//  CD_DetalleFactura.CreateDataSet;
//  CD_Fpago.CreateDataSet;
//  CD_VentaFinal.CreateDataSet;
//  dm.EKModelo.abrir(ZQ_FormasPago);
//  dm.EKModelo.abrir(ZQ_Cuentas);
//  dm.EKModelo.abrir(ZQ_DetalleProd);
//  Cliente:= -1;
//  IdVendedor:= -1;
//  descCliente:= 0;
//  ClienteIVA:= 0;
//  IDClienteIVA:= 0;
//  crearComprobante();
//  cargarClientePorDefecto();
//  modoCargaPrevia:= False;
//  DS_Sucursal.DataSet:= dm.ZQ_Sucursal;
//  DBImage1.DataField:= 'LOGO';
//
//  ctaPorDefecto:= cajero_cuenta_defecto;
//  borrarVendedor:= cajero_borrar_vendedor;
//  edCuenta.DropDownRows:= cajero_tamanio_lista_fpago;
//
//  modoLecturaProd();
//  PConfirmarVenta.Visible:= False;
////  DM.ZQ_Sucursal.Close;
////  DM.ZQ_Sucursal.ParamByName('id_sucursal').AsInteger:= idSucursal;
////  DM.ZQ_Sucursal.Open;
//  edImagen.Visible:= not (ZQ_ProductosIMAGEN.IsNull);
//  DBImage1.Visible:= True;
//  DBImage1.BringToFront;
//
//  PanelCambiarFecha.Visible:= false;
//  CheckBoxCambiarFecha.Checked:= false;
//
//  if dm.EKUsrLogin.PermisoAccion('CAJA_CAMBIAR_FECHA') then
//  begin
//    PanelCambiarFecha.Visible:= true;
//    DateTimePicker_FechaCarga.DateTime:= dm.EKModelo.FechayHora;
//  end;
//
//  if not (dm.EKUsrLogin.PermisoAccion('NO_FISCAL')) then
//  begin
//    ZQ_FormasPago.Filtered:= False;
//    ZQ_FormasPago.Filter:= Format('IF = %s', [QuotedStr('S')]);
//    ZQ_FormasPago.Filtered:= True;
//    btnEfectivo.Visible:=False;
//  end
//  else
//  begin
//    ZQ_FormasPago.Filtered:= False;
//    ZQ_FormasPago.Filter:= '';
//    ZQ_FormasPago.Filtered:= True;
//    btnEfectivo.Visible:=True;
//  end;
//
//  PABM_FormaPago.Visible:= False;
//  //Formas de Pago
//  FPrincipal.Iconos_Menu_16.GetBitmap(1, btFPAceptar.Glyph);
//  FPrincipal.Iconos_Menu_16.GetBitmap(0, btFPCancelar.Glyph);
//  //Confirmación Venta
//  FPrincipal.Iconos_Menu_32.GetBitmap(1, btnConfirmarVenta.Glyph);
//  FPrincipal.Iconos_Menu_32.GetBitmap(0, btnCancelarVenta.Glyph);
//  //Venta Rápida
//  FPrincipal.Iconos_Menu_32.GetBitmap(26, btnEfectivo.Glyph);
//  FPrincipal.Iconos_Menu_32.GetBitmap(26, btnEfectivoF.Glyph);
//
//  //Caption en los filtros
//  btnEfectivo.Caption:= etiqueta_no_fiscal;
//  btnEfectivoF.Caption:= etiqueta_fiscal;
//
//  //Ver o no los cierres Fiscales
//  if (dm.EKUsrLogin.PermisoAccion('CIERRE_FISCAL')) then
//  begin
//    btCierreZ.Enabled:= True;
//    BtCierreX.Enabled:= True;
//    btnAuditoriaFiscal.Enabled:= True;
//  end
//  else
//  begin
//    btCierreZ.Enabled:= False;
//    BtCierreX.Enabled:= False;
//    btnAuditoriaFiscal.Enabled:= False;
//  end;
//
//  ultimoIDPago();
//  panelPreventa(false);
end;

procedure TFOP_ABM_OrdenTecnica.btsalirClick(Sender: TObject);
begin
close();
end;

procedure TFOP_ABM_OrdenTecnica.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(abmOrden);
end;

end.
