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
    btCodif: TdxBarLargeButton;
    BtVendedor: TdxBarLargeButton;
    BtLeerCB: TdxBarLargeButton;
    btnFormaPago: TdxBarLargeButton;
    btObservac: TdxBarLargeButton;
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
    CD_OrdenDetalle: TClientDataSet;
    CD_Orden: TClientDataSet;
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
    DataSource1: TDataSource;
    CD_OrdenID_ORDEN: TIntegerField;
    CD_OrdenCODIGO_CLI: TStringField;
    CD_OrdenID_CLIENTE: TIntegerField;
    CD_OrdenID_ESTADO: TIntegerField;
    CD_OrdenFECHA_ORDEN: TDateField;
    CD_OrdenFECHA_PROMETIDO: TDateField;
    CD_OrdenCOD_BARRAS: TStringField;
    CD_OrdenOBSERVACIONES: TStringField;
    CD_OrdenNRO_FACTURA: TStringField;
    CD_OrdenMONTO_TOTAL: TFloatField;
    CD_OrdenMONTO_ENTREGADO: TFloatField;
    CD_OrdenENTREGADO_POR: TIntegerField;
    CD_OrdenFACTURADO_POR: TIntegerField;
    CD_OrdenSALDO: TFloatField;
    CD_OrdenDetalleID_ORDEN_DETALLE: TIntegerField;
    CD_OrdenDetalleID_ORDEN: TIntegerField;
    CD_OrdenDetalleID_PRODUCTO: TIntegerField;
    CD_OrdenDetalleID_LABORATORIO: TIntegerField;
    CD_OrdenDetalleMONTO_DESCONTADO: TFloatField;
    CD_OrdenDetalleMONTO_TOTAL: TFloatField;
    CD_OrdenDetalleCANTIDAD: TFloatField;
    CD_OrdenDetalleOBSERVACIONES: TStringField;
    PLeerCodigo: TPanel;
    LeerCodBar: TLabel;
    Image2: TImage;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    codBarras: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btsalirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure crearOrdenT();
    procedure modoLecturaProd();
    procedure ultimoIDOrden;
    procedure VerLectorCB(sino: Boolean);
    procedure btObservacClick(Sender: TObject);
    procedure btCodifClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOP_ABM_OrdenTecnica: TFOP_ABM_OrdenTecnica;
  punitoriosacob, acumulado, ClienteIVA, descCliente, acumuladoIVA,
  acumFpagoReal, acumFpago, acumEfectivo, acumuladoProd, totFiscal: double;
  acumPrecio1, acumPrecio2, acumPrecio3, acumPrecio4, acumPrecio5: double;
  coefPrecio1, coefPrecio2, coefPrecio3, coefPrecio4, coefPrecio5: double;
  IdProd: string;
  cliente, IdVendedor, cajero, IDClienteIVA, idSucursal: Integer;
  modoCargaPrevia, borrarVendedor: Boolean;
  importeVenta, importeIF: Double;
  permitirOnChangeFPAGO: boolean;
  ctaPorDefecto: Integer;
  //----Fiscal--------
  fiscal_Impresora, fiscal_ruta, fiscal_sistema: string;
  id_cuenta_fpago: integer;
  auditoriaFiscalDesde, auditoriaFiscalHasta, auditoriaFiscalTipo: string;
const
  abmOrden = 'ABM Orden-Tecnica';
implementation

uses UDM, UPrincipal;

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
  CD_Orden.CreateDataSet;
  CD_OrdenDetalle.CreateDataSet;
//  CD_Fpago.CreateDataSet;
//  CD_VentaFinal.CreateDataSet;
//  dm.EKModelo.abrir(ZQ_FormasPago);
//  dm.EKModelo.abrir(ZQ_Cuentas);
//  dm.EKModelo.abrir(ZQ_DetalleProd);
  Cliente:= -1;
  IdVendedor:= -1;
  descCliente:= 0;
  ClienteIVA:= 0;
  IDClienteIVA:= 0;
  crearOrdenT();

  //  edCuenta.DropDownRows:= cajero_tamanio_lista_fpago;

  modoLecturaProd();
//  PConfirmarVenta.Visible:= False;

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

procedure TFOP_ABM_OrdenTecnica.crearOrdenT();
begin
  punitoriosacob:= 0;
  acumulado:= 0;
  acumuladoIVA:= 0;
  acumuladoProd:= 0;
  acumFpago:= 0;
  acumFpagoReal:= 0;
  acumPrecio1:= 0;
  acumPrecio2:= 0;
  acumPrecio3:= 0;
  acumPrecio4:= 0;
  acumPrecio5:= 0;
  IdProd:= '';
  totFiscal:= 0;
//  RelojStock.Enabled:= false;
  lblMaxVenta.Visible:= False;

//  EKDbSuma1.SumCollection[0].SumValue:= 0;
//  EKDbSuma1.SumCollection[1].SumValue:= 0;
//  EKDbSuma1.SumCollection[2].SumValue:= 0;
//  EKDbSuma1.SumCollection[3].SumValue:= 0;
//  EKDbSuma1.SumCollection[4].SumValue:= 0;
//  EKDbSuma1.SumCollection[5].SumValue:= 0;
//  EKDbSuma1.SumCollection[6].SumValue:= 0;
//  EKDbSuma1.SumCollection[7].SumValue:= 0;
//
//  EKDbSuma2.SumCollection[0].SumValue:= 0;
//  EKDbSuma2.SumCollection[1].SumValue:= 0;

  Cliente:= -1;
  IdVendedor:= -1;
  descCliente:= 0;
  ClienteIVA:= 0;
  IDClienteIVA:= 0;

  CD_Orden.EmptyDataSet;
  CD_Orden.Append;

  CD_OrdenID_CLIENTE.AsInteger:= cliente;
//  CD_ComprobanteID_TIPO_CPB.AsInteger:= 11; //Factura
//  CD_ComprobanteID_VENDEDOR.AsInteger:= IdVendedor;
//  CD_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_CONFIRMADO;
//  CD_ComprobanteID_PREVENTA.Clear;

//  if CheckBoxCambiarFecha.Checked then
//    CD_ComprobanteFECHA.AsDateTime:= DateTimePicker_FechaCarga.DateTime
//  else
//    CD_ComprobanteFECHA.AsDateTime:= dm.EKModelo.FechayHora();

  CD_OrdenOBSERVACIONES.AsString:= '';
  CD_OrdenMONTO_TOTAL.AsFloat:= 0;
  CD_OrdenSALDO.AsFloat:= 0;
  CD_OrdenMONTO_ENTREGADO.AsFloat:= 0;

//  if descCliente < 0 then descCliente:= descCliente * 100;

//  CD_ComprobantePORC_DESCUENTO.AsFloat:= descCliente / 100;
//  CD_ComprobanteIMPORTE_DESCUENTO.AsInteger:= 0;
//  CD_ComprobanteENCABEZADO.AsString:= '';
  CD_OrdenCODIGO_CLI.AsString:= '';
  CD_OrdenFECHA_ORDEN.Clear;
  CD_OrdenFECHA_PROMETIDO.clear;
  CD_OrdenCOD_BARRAS.Clear;
  CD_OrdenNRO_FACTURA.Clear;
  CD_OrdenENTREGADO_POR.Clear;
  CD_OrdenFACTURADO_POR.Clear;


//  lblCantProductos.Caption:= 'Cantidad Productos/Servicios: ' + inttostr(CD_OrdenDetalle.RecordCount);
//  lblMontoProds.Caption:= 'Total Productos/Servicios: ' + FormatFloat('$ ##,###,##0.00 ', EKDbSuma1.SumCollection[0].SumValue);
//  lblTotAPagar.Caption:= 'Total Venta: ' + FormatFloat('$ ##,###,##0.00 ', 0);

//  DBEdit_DetalleCliente.DataField:= 'pers_direccion';
//  Label_DetalleCliente.Caption:= 'Dirección:';

  //Cargo el último nro de Orden (para que sepa cual sigue)
  ultimoIDOrden();
end;

procedure TFOP_ABM_OrdenTecnica.ultimoIDOrden;
begin
//  ZQ_UltimoCPB.Close;
//  ZQ_UltimoCPB.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
//  dm.EKModelo.abrir(ZQ_UltimoCPB);
//  lblNroCPB.Caption:= Format(' Orden Nº: %d', [ZQ_UltimoCPBNUMERO_CPB.AsInteger + 1]);
end;

procedure TFOP_ABM_OrdenTecnica.modoLecturaProd();
begin
//  VerLectorCB(false);
//  PProducto.Visible:= False;
//  PanelProductosYFPago.Enabled:= True;
//  PanelDetalles.Enabled:= True;
//  grupoVertical.Enabled:= True;
//  GrupoGuardarCancelar.Enabled:= True;
//  PanelDetalleProducto.Enabled:= False;
//  PanelDetalleProducto.Color:= PanelProductosYFPago.Color;
//  //No trae productos si se cancela
//  edImagen.Visible:= False;
//  ZQ_Productos.Close;
end;

procedure TFOP_ABM_OrdenTecnica.VerLectorCB(sino: Boolean);
begin
  PLeerCodigo.Visible:= sino;
  PLeerCodigo.BringToFront;
  dm.centrarPanel(FOP_ABM_OrdenTecnica, PLeerCodigo);
  PanelContenedorDerecha.Enabled:= not (PLeerCodigo.Visible);
end;

procedure TFOP_ABM_OrdenTecnica.btObservacClick(Sender: TObject);
begin

 if btCodif.Down then btCodif.Down:=False;

 if btObservac.Down  then
     PObservaciones.BringToFront
 else
     PObservaciones.SendToBack;
end;

procedure TFOP_ABM_OrdenTecnica.btCodifClick(Sender: TObject);
begin

 if btObservac.Down  then
     begin
      btObservac.Down:=False;
      PReceta.BringToFront
     end
 else
     PReceta.SendToBack;
end;

end.
