unit UOP_Cajero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, cxClasses, DBCtrls, Grids, DBGrids,
  StdCtrls, Mask, Buttons, ComCtrls, ExtCtrls, DB, DBClient,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, jpeg;

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
    CD_Comprobante: TClientDataSet;
    CD_ComprobanteID_COMPROBANTE: TIntegerField;
    CD_ComprobanteID_SUCURSAL: TIntegerField;
    CD_ComprobanteID_PROVEEDOR: TIntegerField;
    CD_ComprobanteID_CLIENTE: TIntegerField;
    CD_ComprobanteID_TIPO_CPB: TIntegerField;
    CD_ComprobanteID_VENDEDOR: TIntegerField;
    CD_ComprobanteID_COMP_ESTADO: TIntegerField;
    CD_ComprobanteCODIGO: TStringField;
    CD_ComprobanteFECHA: TDateTimeField;
    CD_ComprobanteOBSERVACION: TStringField;
    CD_ComprobanteBASE_IMPONIBLE: TFloatField;
    CD_ComprobanteSALDO: TFloatField;
    CD_ComprobanteIMPORTE_TOTAL: TFloatField;
    CD_ComprobantePORC_IVA: TFloatField;
    CD_ComprobanteIMPORTE_IVA: TFloatField;
    CD_ComprobantePORC_DESCUENTO: TFloatField;
    CD_ComprobanteIMPORTE_DESCUENTO: TFloatField;
    CD_ComprobanteENCABEZADO: TStringField;
    CD_ComprobantePIE: TStringField;
    CD_ComprobanteFECHA_COBRADA: TDateField;
    CD_ComprobanteFECHA_ENVIADA: TDateField;
    CD_ComprobanteFECHA_IMPRESA: TDateField;
    CD_ComprobanteFECHA_VENCIMIENTO: TDateField;
    CD_Comprobantepers_nombre: TStringField;
    CD_Comprobantepers_cuit: TStringField;
    CD_Comprobantepers_codigo: TStringField;
    CD_Comprobantepers_iva: TStringField;
    CD_Comprobantepers_tel: TStringField;
    CD_Comprobantepers_direccion: TStringField;
    CD_ComprobanteID_TIPO_IVA: TIntegerField;
    CD_ComprobantetipoIVA: TStringField;
    CD_Comprobantepers_desc: TStringField;
    CD_ComprobantenVendedor: TStringField;
    CD_ComprobantePUNTO_VENTA: TIntegerField;
    CD_ComprobanteNUMERO_CPB: TIntegerField;
    CD_ComprobanteFECHA_ANULADO: TDateField;
    CD_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField;
    CD_ComprobanteIMPORTE_VENTA: TFloatField;
    CD_ComprobantemontoRecibido: TCurrencyField;
    CD_ComprobanteID_PREVENTA: TIntegerField;
    ClientDataSet1: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    IntegerField4: TIntegerField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    StringField2: TStringField;
    FloatField19: TFloatField;
    CD_Fpago: TClientDataSet;
    CD_FpagoID_COMPROB_FP: TIntegerField;
    CD_FpagoID_COMPROBANTE: TIntegerField;
    CD_FpagoID_TIPO_FORMAPAG: TIntegerField;
    CD_FpagoMDCP_FECHA: TDateField;
    CD_FpagoMDCP_BANCO: TStringField;
    CD_FpagoMDCP_CHEQUE: TStringField;
    CD_FpagoIMPORTE: TFloatField;
    CD_FpagoCONCILIADO: TDateField;
    CD_FpagoCUENTA_INGRESO: TIntegerField;
    CD_FpagoCUENTA_EGRESO: TIntegerField;
    CD_Fpago_ctaIngreso: TStringField;
    CD_FpagomedioPago: TStringField;
    CD_Fpago_desc_rec: TFloatField;
    CD_Fpago_importeVenta: TFloatField;
    CD_Fpago_efectivo: TStringField;
    CD_Fpago_nroPrecio: TStringField;
    CD_Fpago_fiscal: TStringField;
    CD_Fpago_esCtaCorr: TStringField;
    CD_Fpago_esSenia: TStringField;
    CD_FpagoFECHA_FP: TDateTimeField;
    CD_VentaFinal: TClientDataSet;
    CD_VentaFinal_medioPago: TStringField;
    CD_VentaFinalimporteVenta: TFloatField;
    CD_VentaFinalimporteDescuento: TFloatField;
    CD_VentaFinalid: TIntegerField;
    CD_VentaFinalgenera_vuelto: TStringField;
    CD_VentaFinalfiscal: TStringField;
    CD_VentaFinalidTipoPago: TIntegerField;
    CD_VentaFinalidCta: TIntegerField;
    CD_VentaFinalmdpFecha: TDateField;
    CD_VentaFinalmdpBanco: TStringField;
    CD_VentaFinalmdpNro: TStringField;
    ZQ_FormasPago: TZQuery;
    ZQ_FormasPagoID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_FormasPagoDESCRIPCION: TStringField;
    ZQ_FormasPagoBAJA: TStringField;
    ZQ_FormasPagoIF: TStringField;
    ZQ_FormasPagoDESC_REC: TFloatField;
    ZQ_FormasPagoCOD_CORTO: TIntegerField;
    ZQ_FormasPagoGENERA_VUELTO: TStringField;
    ZQ_FormasPagoCOLUMNA_PRECIO: TIntegerField;
    ZQ_FormasPagoMODIFICABLE: TStringField;
    ZQ_Cuentas: TZQuery;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasMEDIO_DEFECTO: TIntegerField;
    ZQ_CuentasCODIGO: TStringField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasNRO_CTA_BANCARIA: TStringField;
    ZQ_CuentasBAJA: TStringField;
    ZQ_CuentasA_CTA_CORRIENTE: TStringField;
    ZQ_CuentasID_SUCURSAL: TIntegerField;
    ZQ_CuentasA_NOTA_CREDITO: TStringField;
    ZQ_CuentasMODIFICABLE: TStringField;
    ZQ_DetalleProd: TZQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    StringField9: TStringField;
    StringField10: TStringField;
    IntegerField5: TIntegerField;
    BlobField1: TBlobField;
    StringField11: TStringField;
    DS_Sucursal: TDataSource;
    PABM_FormaPago: TPanel;
    Label18: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    Label55: TLabel;
    Label58: TLabel;
    Label61: TLabel;
    edDetalleMDPCbox: TDBLookupComboBox;
    edMDPFecha: TDBEdit;
    edMDPBanco: TDBEdit;
    edMDPNro: TDBEdit;
    edImporte: TDBEdit;
    edCodCuenta: TDBEdit;
    edCuenta: TDBLookupComboBox;
    edImporteVenta: TDBEdit;
    edCodMDP: TDBEdit;
    btFPAceptar: TBitBtn;
    btFPCancelar: TBitBtn;
    edDetalleMDP: TDBEdit;
    PLeerCodigo: TPanel;
    LeerCodBar: TLabel;
    Image2: TImage;
    Label1: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    codBarras: TEdit;
    PConfirmarVenta: TPanel;
    Bevel1: TBevel;
    Image1: TImage;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label41: TLabel;
    DBEdit3: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    btnConfirmarVenta: TBitBtn;
    btnCancelarVenta: TBitBtn;
    Panel7: TPanel;
    Panel11: TPanel;
    Label37: TLabel;
    lblVtaTotal: TLabel;
    Panel9: TPanel;
    Label39: TLabel;
    lblVtaDesc: TLabel;
    Panel8: TPanel;
    lblVtaSubtotal: TLabel;
    Label33: TLabel;
    Panel10: TPanel;
    Label38: TLabel;
    lblVtaIVA: TLabel;
    Panel14: TPanel;
    Panel12: TPanel;
    Label3: TLabel;
    lblCambio: TLabel;
    Panel13: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    edRecibido: TDBEdit;
    edPorcDctoTotal: TDBEdit;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOP_Cajero: TFOP_Cajero;
  punitoriosacob, acumulado, ClienteIVA, descCliente, acumuladoIVA,
    acumFpagoReal, acumFpago, acumEfectivo, acumuladoProd, totFiscal: double;
  acumPrecio1, acumPrecio2, acumPrecio3, acumPrecio4, acumPrecio5: double;
  coefPrecio1, coefPrecio2, coefPrecio3, coefPrecio4, coefPrecio5: double;
  IdProdStock: string;
  cliente, IdVendedor, cajero, IDClienteIVA, idSucursal: Integer;
  modoCargaPrevia, borrarVendedor, modoCargaOrden: Boolean;
  importeVenta, importeIF: Double;
  permitirOnChangeFPAGO: boolean;
  ctaPorDefecto: Integer;
  //----Fiscal--------
  fiscal_Impresora, fiscal_ruta, fiscal_sistema: string;
  id_cuenta_fpago: integer;
  auditoriaFiscalDesde, auditoriaFiscalHasta, auditoriaFiscalTipo: string;
implementation

uses UDM;

{$R *.dfm}

procedure TFOP_Cajero.FormCreate(Sender: TObject);
begin
if Optica then   // Si la variable optica esta en true entonces el menu optica estara visible.
    btnCargarOrdenTecnica.Visible:= ivAlways
  else
    btnCargarOrdenTecnica.Visible:= ivNever;

  CurrencyDecimals:= 2;
  DecimalSeparator:= '.';
  ThousandSeparator:= ',';
  DateSeparator:= '/';
  ShortDateFormat:= 'dd/MM/yyyy';

  idSucursal:= SUCURSAL_LOGUEO;

  CD_Comprobante.CreateDataSet;
  CD_DetalleFactura.CreateDataSet;
  CD_Fpago.CreateDataSet;
  CD_VentaFinal.CreateDataSet;

  dm.ismodelo.abrir(ZQ_FormasPago);
  dm.ismodelo.abrir(ZQ_Cuentas);
  dm.ismodelo.abrir(ZQ_DetalleProd);

  Cliente:= -1;
  IdVendedor:= -1;
  descCliente:= 0;
  ClienteIVA:= 0;
  IDClienteIVA:= 0;

  ///crearComprobante();
  ///cargarClientePorDefecto();

  modoCargaPrevia:= False;
  modoCargaOrden:= false;

  DS_Sucursal.DataSet:= dm.ZQ_Sucursal;
  DBImage1.DataField:= 'LOGO';

  ctaPorDefecto:= cajero_cuenta_defecto;
  borrarVendedor:= cajero_borrar_vendedor;
  edCuenta.DropDownRows:= cajero_tamanio_lista_fpago;

  ///modoLecturaProd();
  PConfirmarVenta.Visible:= False;

  edImagen.Visible:= not (ZQ_ProductosIMAGEN.IsNull);
  DBImage1.Visible:= True;
  DBImage1.BringToFront;

  PanelCambiarFecha.Visible:= false;
  CheckBoxCambiarFecha.Checked:= false;
  if dm.ISUsrLogin.PermisoAccion('CAJA_CAMBIAR_FECHA') then
  begin
    PanelCambiarFecha.Visible:= true;
    DateTimePicker_FechaCarga.DateTime:= dm.ismodelo.FechayHora;
  end;

  if not (dm.ISUsrLogin.PermisoAccion('NO_FISCAL')) then
  begin
    ZQ_FormasPago.Filtered:= False;
    ZQ_FormasPago.Filter:= Format('IF = %s', [QuotedStr('S')]);
    ZQ_FormasPago.Filtered:= True;
    btnEfectivo.Visible:= False;
  end
  else
  begin
    ZQ_FormasPago.Filtered:= False;
    ZQ_FormasPago.Filter:= '';
    ZQ_FormasPago.Filtered:= True;
    btnEfectivo.Visible:= True;
  end;

  PABM_FormaPago.Visible:= False;
  //Formas de Pago
  FPrincipal.Iconos_Menu_16.GetBitmap(1, btFPAceptar.Glyph);
  FPrincipal.Iconos_Menu_16.GetBitmap(0, btFPCancelar.Glyph);
  //Confirmación Venta
  FPrincipal.Iconos_Menu_32.GetBitmap(1, btnConfirmarVenta.Glyph);
  FPrincipal.Iconos_Menu_32.GetBitmap(0, btnCancelarVenta.Glyph);
  //Venta Rápida
  FPrincipal.Iconos_Menu_32.GetBitmap(26, btnEfectivo.Glyph);
  FPrincipal.Iconos_Menu_32.GetBitmap(26, btnEfectivoF.Glyph);

  //Caption en los filtros
  btnEfectivo.Caption:= etiqueta_no_fiscal;
  btnEfectivoF.Caption:= etiqueta_fiscal;

  //Ver o no los cierres Fiscales
  if (dm.ISUsrLogin.PermisoAccion('CIERRE_FISCAL')) then
  begin
    btCierreZ.Enabled:= True;
    BtCierreX.Enabled:= True;
    btnAuditoriaFiscal.Enabled:= True;
  end
  else
  begin
    btCierreZ.Enabled:= False;
    BtCierreX.Enabled:= False;
    btnAuditoriaFiscal.Enabled:= False;
  end;

  panelPreventa(false);
  panelOrden(false);
end;

end.
