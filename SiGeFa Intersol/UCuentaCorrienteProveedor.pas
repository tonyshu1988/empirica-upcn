unit UCuentaCorrienteProveedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, XPStyleActnCtrls, ActnMan, 
  QRCtrls, QuickRpt, UBuscarPersona, Buttons,
  ComCtrls, Menus, ZStoredProcedure,
  ISOrdenarGrilla, ISVistaPreviaQR, cxClasses, ISDbSuma, ISBusquedaAvanzada,
  ISEdit, ISDBDateTimePicker;

type
  TFCuentaCorrienteProveedor = class(TForm)
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnVerCtaCte: TdxBarLargeButton;
    btnImprimirRecibo: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    AVerCtaCte: TAction;
    AVerDetalle: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    PanelProveedor: TPanel;
    PanelProveedor_CtaCte: TPanel;
    DBGridProveedor_CtaCte: TDBGrid;
    PanelProveedor_Datos: TPanel;
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
    Label10: TLabel;
    DBText15: TDBText;
    Label11: TLabel;
    DBText16: TDBText;
    Label1: TLabel;
    DBText1: TDBText;
    Label12: TLabel;
    DBText2: TDBText;
    Label13: TLabel;
    DBText3: TDBText;
    PanelProveedor_Resumen: TPanel;
    PanelResumen: TPanel;
    PanelResumen_Abajo: TPanel;
    DBGridResumen_CtaCtes: TDBGrid;
    PanelResumen_Arriba: TPanel;
    ZQ_CtaCte_Gral: TZQuery;
    DS_CtaCte_Gral: TDataSource;
    ZQ_CtaCte_Proveedor: TZQuery;
    DS_CtaCte_Proveedor: TDataSource;
    PanelFiltro: TPanel;
    BtnFiltro_Todos: TSpeedButton;
    BtnFiltro_Hoy: TSpeedButton;
    BtnFiltro_EstaSemana: TSpeedButton;
    BtnFiltro_EsteMes: TSpeedButton;
    BtnFiltro_EsteAnio: TSpeedButton;
    Label39: TLabel;
    BtnFiltro_PorFecha: TSpeedButton;
    PanelFiltroFechas: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    btnFiltroFecha_Aceptar: TBitBtn;
    btnFiltroFecha_Cancelar: TBitBtn;
    lblFiltro_Fechas: TLabel;
    Panel1: TPanel;
    Label23: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    PanelProveedor_ResumenFiltro: TPanel;
    Label21: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    PanelProveedor_ResumenTotales: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    RepCtasCtes: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepCtasCtes_Subtitulo: TQRLabel;
    RepCtasCtes_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand11: TQRBand;
    QRlblPieDePaginaCtasCtes: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand12: TQRBand;
    QRExpr18: TQRExpr;
    TitleBand2: TQRBand;
    QRLabelCritBusquedaCtasCtes: TQRLabel;
    QRLabel48: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRCtasCtes_TotalSaldo: TQRLabel;
    QRCtasCtes_TotalHaber: TQRLabel;
    QRCtasCtes_TotalDebe: TQRLabel;
    QRLabel8: TQRLabel;
    btnImprimir: TdxBarLargeButton;
    RepProveedor: TQuickRep;
    QRBand1: TQRBand;
    QRDBLogo2: TQRDBImage;
    QRLabel1: TQRLabel;
    RepProveedor_Subtitulo: TQRLabel;
    RepProveedor_Titulo: TQRLabel;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRlblPieDePagina: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRSaldoFiltro: TQRLabel;
    QRHaberFiltro: TQRLabel;
    QRDebeFiltro: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand5: TQRBand;
    QRBand6: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel15: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText25: TQRDBText;
    QRlblFiltro: TQRLabel;
    QRLabel6: TQRLabel;
    QRDebe: TQRLabel;
    QRHaber: TQRLabel;
    QRSaldo: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    btnExcel: TdxBarLargeButton;
    btnSaldoInicial: TdxBarLargeButton;
    ZQ_Insert_SaldoIni: TZQuery;
    PanelSaldoInicial: TPanel;
    lblTituloVentanaFpago: TLabel;
    Label14: TLabel;
    Label29: TLabel;
    DateTimePicker_FechaSaldo: TDateTimePicker;
    EditSaldiIni_Importe: TEdit;
    btnSaldoInicial_Aceptar: TBitBtn;
    btnSaldoInicial_Cancelar: TBitBtn;
    ZQ_SaldoIni: TZQuery;
    ZQ_SaldoIniFECHA: TDateTimeField;
    ZQ_SaldoIniFECHA_COBRADA: TDateField;
    ZQ_SaldoIniIMPORTE_TOTAL: TFloatField;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    ZQ_ComprobanteDetalle: TZQuery;
    DS_ComprobanteDetalle: TDataSource;
    ZQ_ComprobanteDetalleID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_ComprobanteDetalleID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteDetalleDETALLE_PROD: TStringField;
    ZQ_ComprobanteDetalleCODIGO_BARRA: TStringField;
    ZQ_ComprobanteDetalleCOLOR: TStringField;
    ZQ_ComprobanteDetalleMEDIDA: TStringField;
    ZQ_ComprobanteDetalleNOMBRE_MARCA: TStringField;
    ZQ_ComprobanteDetalleCANTIDAD: TFloatField;
    btnVerDetalleFactura: TdxBarLargeButton;
    ZQ_CtaCte_GralID_CLIENTE_OUT: TIntegerField;
    ZQ_CtaCte_GralLIMITE_DEUDA: TFloatField;
    ZQ_CtaCte_GralSALDO: TFloatField;
    ZQ_CtaCte_GralFECHA_ALTA: TDateField;
    ZQ_CtaCte_GralFECHA_BAJA: TDateField;
    ZQ_CtaCte_GralDEBE: TFloatField;
    ZQ_CtaCte_GralHABER: TFloatField;
    ZQ_CtaCte_GralNOMBRE: TStringField;
    ZQ_CtaCte_GralNUMERO_DOC: TStringField;
    ZQ_CtaCte_GralLOCALIDAD: TStringField;
    ZQ_CtaCte_GralCODIGO_POSTAL: TStringField;
    ZQ_CtaCte_GralCUIT_CUIL: TStringField;
    ZQ_CtaCte_GralBAJA: TStringField;
    ZQ_CtaCte_GralNOMBRE_PROVINCIA: TStringField;
    ZQ_CtaCte_GralNOMBRE_TIPO_IVA: TStringField;
    ZQ_CtaCte_GralCOD_IVA: TStringField;
    ZQ_CtaCte_GralNOMBRE_TIPO_DOC: TStringField;
    ZQ_CtaCte_GralCODIGO_CORTO: TIntegerField;
    ZQ_CtaCte_GralVENCIMIENTO_DIAS: TIntegerField;
    ZQ_CtaCte_GralID_PROVEEDOR_OUT: TIntegerField;
    ZQ_CtaCte_GralDEUDA_VENCIDA: TStringField;
    ZQ_CtaCte_ProveedorTIPO_COMPROBANTE: TStringField;
    ZQ_CtaCte_ProveedorID_COMPROBANTE: TIntegerField;
    ZQ_CtaCte_ProveedorID_VENDEDOR: TIntegerField;
    ZQ_CtaCte_ProveedorFECHA: TDateTimeField;
    ZQ_CtaCte_ProveedorOBSERVACION: TStringField;
    ZQ_CtaCte_ProveedorDEBE: TFloatField;
    ZQ_CtaCte_ProveedorHABER: TFloatField;
    ZQ_CtaCte_ProveedorSALDO_CPB: TFloatField;
    ZQ_CtaCte_ProveedorSALDO: TFloatField;
    ZQ_CtaCte_ProveedorSUCURSAL: TStringField;
    DS_OrdenPagoDetalle: TDataSource;
    ZQ_OrdenPagoDetalle: TZQuery;
    ZQ_OrdenPagoDetalleID_PAGO_FACTURAS: TIntegerField;
    ZQ_OrdenPagoDetalleID_COMPROBANTE: TIntegerField;
    ZQ_OrdenPagoDetalleID_FACTURA: TIntegerField;
    ZQ_OrdenPagoDetalleID_TIPO_COMPROBANTE: TIntegerField;
    ZQ_OrdenPagoDetalleIMPORTE: TFloatField;
    ZQ_OrdenPagoDetalleFECHA: TDateTimeField;
    ZQ_OrdenPagoDetalleIMPORTE_VENTA: TFloatField;
    ZQ_OrdenPagoDetalleDESCRIPCION: TStringField;
    ZQ_OrdenPagoDetalleIMPORTE_REAL: TFloatField;
    btnAltaRecibo: TdxBarLargeButton;
    PanelDetalleMov: TPanel;
    DBGridDetalle_OP: TDBGrid;
    DBGridDetalle_Producto: TDBGrid;
    lblTitulo_PanelDetalleMov: TLabel;
    ZQ_ComprobanteDetalleIMPORTE_VENTA: TFloatField;
    ZP_DevolverProducto: TZStoredProc;
    DBGridDetalle_FPago: TDBGrid;
    ZQ_ComprobanteFPago: TZQuery;
    DS_ComprobanteFPago: TDataSource;
    ZQ_ComprobanteFPagoID_COMPROB_FP: TIntegerField;
    ZQ_ComprobanteFPagoID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteFPagoFECHA_FP: TDateTimeField;
    ZQ_ComprobanteFPagoIMPORTE_REAL: TFloatField;
    ZQ_ComprobanteFPagoIMPORTE: TFloatField;
    ZQ_ComprobanteFPagoNOMBRE_CUENTA: TStringField;
    ZQ_ComprobanteFPagoDESCRIPCION: TStringField;
    StaticTextDeuda: TStaticText;
    ZQ_Proveedor: TZQuery;
    ZQ_ProveedorID_EMPRESA: TIntegerField;
    ZQ_ProveedorCUIT_CUIL: TStringField;
    ZQ_ProveedorID_PROVINCIA: TIntegerField;
    ZQ_ProveedorID_TIPO_IVA: TIntegerField;
    ZQ_ProveedorNOMBRE: TStringField;
    ZQ_ProveedorDIRECCION: TStringField;
    ZQ_ProveedorLOCALIDAD: TStringField;
    ZQ_ProveedorCODIGO_POSTAL: TStringField;
    ZQ_ProveedorTELEFONO: TStringField;
    ZQ_ProveedorEMAIL: TStringField;
    ZQ_ProveedorPAGINA_WEB: TStringField;
    ZQ_ProveedorBAJA: TStringField;
    ZQ_ProveedorDESCRIPCION: TStringField;
    ZQ_ProveedorID_TIPO_EMPRESA: TIntegerField;
    ZQ_ProveedorDESCRIPCION_PRIVADA: TStringField;
    ZQ_ProveedorCODIGO_CORTO: TIntegerField;
    ZQ_ProveedorNOMBRE_PROVINCIA: TStringField;
    ZQ_ProveedorNOMBRE_TIPO_IVA: TStringField;
    ZQ_ProveedorCOD_IVA: TStringField;
    ZQ_ProveedorID_CTA_CTE: TIntegerField;
    ZQ_ProveedorID_PERSONA: TIntegerField;
    ZQ_ProveedorID_PROVEEDOR: TIntegerField;
    ZQ_ProveedorSALDO: TFloatField;
    ZQ_ProveedorLIMITE_DEUDA: TFloatField;
    ZQ_ProveedorVENCIMIENTO_DIAS: TIntegerField;
    ZQ_ProveedorFECHA_ALTA: TDateField;
    ZQ_ProveedorFECHA_BAJA: TDateField;
    DS_Proveedor: TDataSource;
    ZQ_ComprobanteDetalleIMPORTE_UNITARIO: TFloatField;
    ZQ_ComprobanteDetallePORC_IVA: TFloatField;
    ZQ_ComprobanteDetalleBASE_IMPONIBLE: TFloatField;
    ZQ_OrdenPagoDetalleDESC_REC: TFloatField;
    lblDeudor: TLabel;
    ISVistaCtasCtes: TISVistaPreviaQR;
    ISVistaProveedor: TISVistaPreviaQR;
    ISOrdenar_DetalleRecibo: TISOrdenarGrilla;
    ISOrdenar_DetalleFPago: TISOrdenarGrilla;
    ISOrdenar_DetalleProducto: TISOrdenarGrilla;
    ISOrdenar_CtaCteProveedor: TISOrdenarGrilla;
    ISOrdenar_CtaCteGral: TISOrdenarGrilla;
    ISDbSumaCtaCte_Proveedor: TISDbSuma;
    ISDbSumaCtaCte_Gral: TISDbSuma;
    ISBuscarProveedor: TISBusquedaAvanzada;
    ISEdit_CantidadFiltro: TISEdit;
    ISEdit_DebeFiltro: TISEdit;
    ISEdit_HaberFiltro: TISEdit;
    ISEdit_SaldoFiltro: TISEdit;
    ISEdit_DebeTotal: TISEdit;
    ISEdit_HaberTotal: TISEdit;
    ISEdit_SaldoTotal: TISEdit;
    ISEditResumen_Cantidad: TISEdit;
    ISEditResumen_Debe: TISEdit;
    ISEditResumen_Haber: TISEdit;
    ISEditResumen_Saldo: TISEdit;
    ISDBDateTime_FiltroDesde: TISDBDateTimePicker;
    ISDBDateTime_FiltroHasta: TISDBDateTimePicker;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnVerCtaCteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    //------TECLAS RAPIDAS
    procedure AVerCtaCteExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure DBGridResumen_CtaCtesDblClick(Sender: TObject);
    procedure AplicarFiltro(Sender: TObject);
    procedure btnFiltroFecha_CancelarClick(Sender: TObject);
    procedure btnFiltroFecha_AceptarClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure calcularTotales(tipo: string);
    procedure btnImprimirClick(Sender: TObject);
    procedure DBGridProveedor_CtaCteDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridResumen_CtaCtesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnExcelClick(Sender: TObject);
    procedure btnSaldoInicialClick(Sender: TObject);
    procedure btnSaldoInicial_CancelarClick(Sender: TObject);
    procedure btnSaldoInicial_AceptarClick(Sender: TObject);
    procedure ZQ_CtaCte_ProveedorAfterScroll(DataSet: TDataSet);
    procedure btnVerDetalleFacturaClick(Sender: TObject);
    procedure btnAltaReciboClick(Sender: TObject);
    procedure AVerDetalleExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGridDetalle_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridDetalle_OPDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure verDetalle;
    procedure DBGridDetalle_FPagoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ojoDeudor(tf:Boolean);
  Private
    viendoResumen: boolean;
    viendoDetalleCpb: boolean;
    ActivarAfterScroll: boolean;
  Public
  end;

var
  FCuentaCorrienteProveedor: TFCuentaCorrienteProveedor;

const
  transaccion = 'CTA CTE PROVEEDOR';

implementation

uses UPrincipal, UDM, DateUtils, UImpresion_Comprobantes,
  UABM_CPB_OrdenPago;

{$R *.dfm}

procedure TFCuentaCorrienteProveedor.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  ISOrdenar_CtaCteGral.GuardarConfigColumnas;
  ISOrdenar_CtaCteProveedor.GuardarConfigColumnas;
  ISOrdenar_DetalleProducto.GuardarConfigColumnas;
  ISOrdenar_DetalleRecibo.GuardarConfigColumnas;
  ISOrdenar_DetalleFPago.GuardarConfigColumnas;  

  CanClose:= FPrincipal.cerrar_ventana(transaccion);
end;


procedure TFCuentaCorrienteProveedor.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFCuentaCorrienteProveedor.btnBuscarClick(Sender: TObject);
begin
  if ISBuscarProveedor.Buscar then
  begin
    dm.mostrarCantidadRegistro(ZQ_CtaCte_Gral, lblCantidadRegistros);
    calcularTotales('GENERAL');
  end;
end;


procedure TFCuentaCorrienteProveedor.btnVerCtaCteClick(Sender: TObject);
begin
  //para el resumen de los proveedores
  ActivarAfterScroll:= false;

  if viendoResumen then
  begin
    //para ver un proveedor en especial
    viendoResumen:= false;
    PanelProveedor.BringToFront;
    btnVerCtaCte.Caption:= 'F2 - Ver Resumen';
    btnVerCtaCte.Hint:= 'Ver el resumen de cuenta corriente de todos los proveedores';
    btnBuscar.Enabled:= false;

    ZQ_Proveedor.Close;
    ZQ_Proveedor.ParamByName('id_proveedor').AsInteger:= ZQ_CtaCte_GralID_PROVEEDOR_OUT.AsInteger;
    ZQ_Proveedor.Open;

    AplicarFiltro(BtnFiltro_Todos);

    DBGridProveedor_CtaCte.SetFocus;

    btnSaldoInicial.Enabled:= true;
    btnAltaRecibo.Enabled:= true;
    btnVerDetalleFactura.Enabled:= true;

    PanelDetalleMov.Visible:= false;
    viendoDetalleCpb:= false;
  end
  else
  begin
    viendoResumen:= true;
    PanelResumen.BringToFront;
    btnVerCtaCte.Caption:= 'F2 - Ver Cta Cte';
    btnVerCtaCte.Hint:= 'Ver la cuenta corriente del proveedor seleccionado';
    btnBuscar.Enabled:= true;

    DBGridResumen_CtaCtes.SetFocus;

    btnSaldoInicial.Enabled:= false;
    btnAltaRecibo.Enabled:= false;
    btnVerDetalleFactura.Enabled:= false;
  end;
end;


procedure TFCuentaCorrienteProveedor.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  QRDBLogo2.DataSet:= DM.ZQ_Sucursal;

  ISOrdenar_CtaCteGral.CargarConfigColunmas;
  ISOrdenar_CtaCteProveedor.CargarConfigColunmas;
  ISOrdenar_DetalleProducto.CargarConfigColunmas;
  ISOrdenar_DetalleRecibo.CargarConfigColunmas;
  ISOrdenar_DetalleFPago.CargarConfigColunmas;  

  FPrincipal.Iconos_Menu_16.GetBitmap(0, btnFiltroFecha_Cancelar.Glyph);
  FPrincipal.Iconos_Menu_16.GetBitmap(1, btnFiltroFecha_Aceptar.Glyph);

  FPrincipal.Iconos_Menu_16.GetBitmap(0, btnSaldoInicial_Cancelar.Glyph);
  FPrincipal.Iconos_Menu_16.GetBitmap(1, btnSaldoInicial_Aceptar.Glyph);

  ISDBDateTime_FiltroDesde.Date:= dm.ISModelo.Fecha;
  ISDBDateTime_FiltroHasta.Date:= dm.ISModelo.Fecha;

  PanelResumen.BringToFront;
  viendoResumen:= true;
  btnSaldoInicial.Enabled:= false;
  btnAltaRecibo.Enabled:= false;
  btnVerDetalleFactura.Enabled:= false;
  
  ZQ_CtaCte_Gral.Close;
  ZQ_CtaCte_Gral.ParamByName('id_proveedor').AsInteger:= -1;
  ZQ_CtaCte_Gral.Open;
  dm.mostrarCantidadRegistro(ZQ_CtaCte_Gral, lblCantidadRegistros);

  calcularTotales('GENERAL');
  btnVerDetalleFactura.Click;

  ActivarAfterScroll:= false;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------

procedure TFCuentaCorrienteProveedor.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFCuentaCorrienteProveedor.AVerCtaCteExecute(Sender: TObject);
begin
  if btnVerCtaCte.Enabled then
    btnVerCtaCte.Click;
end;

procedure TFCuentaCorrienteProveedor.AVerDetalleExecute(Sender: TObject);
begin
  if btnVerDetalleFactura.Enabled then
    btnVerDetalleFactura.Click;
end;

//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFCuentaCorrienteProveedor.DBGridResumen_CtaCtesDblClick(Sender: TObject);
begin
  btnVerCtaCte.Click;
end;


procedure TFCuentaCorrienteProveedor.AplicarFiltro(Sender: TObject);
var
  hoy: Tdate;
  diasDesdeUltimaSemana, diasDesdeUltimoMes, diasDesdeUltimoAnio: integer;
  debe, haber, saldo: Double;
begin
  ActivarAfterScroll:= false;
  PanelDetalleMov.Visible:= false;
  viendoDetalleCpb:= false;

  hoy:= dm.ISModelo.Fecha;

  ZQ_CtaCte_Proveedor.ParamByName('id_cliente').Clear;
  ZQ_CtaCte_Proveedor.ParamByName('id_proveedor').AsInteger:= ZQ_CtaCte_GralID_PROVEEDOR_OUT.AsInteger;
  ZQ_CtaCte_Proveedor.ParamByName('id_sucursal').AsInteger:= -1;

  if TSpeedButton(Sender).Name = 'BtnFiltro_Todos' then
  begin
    ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate:= EncodeDate(1000, 1, 1);
    ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate:= EncodeDate(3000, 1, 1);
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_Hoy' then
  begin
    ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate:= hoy;
    ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_EstaSemana' then //la semana comienza el lunesa
  begin
    diasDesdeUltimaSemana:= DayOfTheWeek(hoy) - 1;
    ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate:= IncDay(hoy, -diasDesdeUltimaSemana);
    ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_EsteMes' then
  begin
    ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate:= EncodeDate(YearOf(hoy), MonthOf(hoy), 1);
    ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_EsteAnio' then
  begin
    ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate:= EncodeDate(YearOf(hoy), 1, 1);
    ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_PorFecha' then
  begin
    PanelProveedor.Enabled:= false;

    dm.centrarPanel(FCuentaCorrienteProveedor, PanelFiltroFechas);

    PanelFiltroFechas.BringToFront;
    PanelFiltroFechas.Visible:= true;

    ISDBDateTime_FiltroDesde.SetFocus;
    GrupoEditando.Enabled:= false;
    exit;
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_Todos' then
    lblFiltro_Fechas.Caption:= 'Viendo Todo'
  else
    lblFiltro_Fechas.Caption:= 'Viendo Desde: ' + DateToStr(ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate) + ' - Hasta: ' + DateToStr(ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate);

  ZQ_CtaCte_Proveedor.Close;
  ZQ_CtaCte_Proveedor.Open;

  calcularTotales('PROVEEDOR');
end;


procedure TFCuentaCorrienteProveedor.calcularTotales(tipo: string);
var
  debeFilro, haberFiltro, saldoFiltro: Double;
  debeTotal, haberTotal, saldoTotal: Double;
begin
  if tipo = 'GENERAL' then
  begin
    ISDbSumaCtaCte_Gral.RecalcAll;
    ISEditResumen_Cantidad.Text:= IntToStr(ZQ_CtaCte_Gral.RecordCount);
    ISEditResumen_Debe.Text:= FormatFloat('$ ###,###,##0.00', ISDbSumaCtaCte_Gral.SumCollection.Items[0].SumValue);
    ISEditResumen_Haber.Text:= FormatFloat('$ ###,###,##0.00', ISDbSumaCtaCte_Gral.SumCollection.Items[1].SumValue);
    ISEditResumen_Saldo.Text:= FormatFloat('$ ###,###,##0.00', ISDbSumaCtaCte_Gral.SumCollection.Items[2].SumValue);
  end;

  if tipo = 'PROVEEDOR' then
  begin
    ISDbSumaCtaCte_Proveedor.RecalcAll;

    debeFilro:= ISDbSumaCtaCte_Proveedor.SumCollection.Items[0].SumValue;
    haberFiltro:= ISDbSumaCtaCte_Proveedor.SumCollection.Items[1].SumValue;
    saldoFiltro:= debeFilro - haberFiltro;

    ZQ_CtaCte_Gral.Locate('ID_PROVEEDOR_OUT', ZQ_CtaCte_Proveedor.ParamByName('id_proveedor').AsInteger, []);
    debeTotal:= ZQ_CtaCte_GralDEBE.AsFloat;
    haberTotal:= ZQ_CtaCte_GralHABER.AsFloat;
    saldoTotal:= ZQ_CtaCte_GralSALDO.AsFloat;

    //ojoDeudor(saldoTotal>ZQ_CtaCte_GralLIMITE_DEUDA.AsFloat);

    ISEdit_CantidadFiltro.Text:= IntToStr(ZQ_CtaCte_Proveedor.RecordCount);
    ISEdit_DebeFiltro.Text:= FormatFloat('$ ###,###,##0.00', debeFilro);
    ISEdit_HaberFiltro.Text:= FormatFloat('$ ###,###,##0.00', haberFiltro);
    ISEdit_SaldoFiltro.Text:= FormatFloat('$ ###,###,##0.00', saldoFiltro);

    ISEdit_DebeTotal.Text:= FormatFloat('$ ###,###,##0.00', debeTotal);
    ISEdit_HaberTotal.Text:= FormatFloat('$ ###,###,##0.00', haberTotal);
    ISEdit_SaldoTotal.Text:= FormatFloat('$ ###,###,##0.00', saldoTotal);
  end;
end;


procedure TFCuentaCorrienteProveedor.btnFiltroFecha_CancelarClick(Sender: TObject);
begin
  PanelFiltroFechas.Visible:= false;
  PanelProveedor.Enabled:= true;
  GrupoEditando.Enabled:= true;
end;


procedure TFCuentaCorrienteProveedor.btnFiltroFecha_AceptarClick(Sender: TObject);
begin
  ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate:= ISDBDateTime_FiltroDesde.Date;
  ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate:= ISDBDateTime_FiltroHasta.Date;
  ZQ_CtaCte_Proveedor.Close;
  ZQ_CtaCte_Proveedor.Open;

  calcularTotales('PROVEEDOR');

  lblFiltro_Fechas.Caption:= 'Viendo Desde: ' + DateToStr(ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate) + ' - Hasta: ' + DateToStr(ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate);

  PanelFiltroFechas.Visible:= false;
  PanelProveedor.Enabled:= true;
  GrupoEditando.Enabled:= true;
end;


procedure TFCuentaCorrienteProveedor.FormResize(Sender: TObject);
begin
  if PanelFiltroFechas.Visible then
    dm.centrarPanel(FCuentaCorrienteProveedor, PanelFiltroFechas);

  if PanelSaldoInicial.Visible then
    dm.centrarPanel(FCuentaCorrienteProveedor, PanelSaldoInicial);
end;


procedure TFCuentaCorrienteProveedor.btnImprimirClick(Sender: TObject);
begin
  if viendoResumen then
  begin
    if ZQ_CtaCte_Gral.IsEmpty then
      exit;

    DM.VariablesReportes(RepCtasCtes);
    QRlblPieDePaginaCtasCtes.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ', dm.ISModelo.Fecha);
    QRLabelCritBusquedaCtasCtes.Caption:= ISBuscarProveedor.ParametrosBuscados;

    QRCtasCtes_TotalDebe.Caption:= FormatFloat('$ ###,###,##0.00', ISDbSumaCtaCte_Gral.SumCollection.Items[0].SumValue);
    QRCtasCtes_TotalHaber.Caption:= FormatFloat('$ ###,###,##0.00', ISDbSumaCtaCte_Gral.SumCollection.Items[1].SumValue);
    QRCtasCtes_TotalSaldo.Caption:= FormatFloat('$ ###,###,##0.00', ISDbSumaCtaCte_Gral.SumCollection.Items[2].SumValue);

    ISVistaCtasCtes.VistaPrevia;
  end
  else
  begin
    if ZQ_CtaCte_Proveedor.IsEmpty then
      exit;

    DM.VariablesReportes(RepProveedor);
    QRlblPieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ', dm.ISModelo.Fecha);

    QRlblFiltro.Caption:= lblFiltro_Fechas.Caption;

    QRDebeFiltro.Caption:= ISEdit_DebeFiltro.Text;
    QRHaberFiltro.Caption:= ISEdit_HaberFiltro.Text;
    QRSaldoFiltro.Caption:= ISEdit_SaldoFiltro.Text;

    QRDebe.Caption:= ISEdit_DebeTotal.Text;
    QRHaber.Caption:= ISEdit_HaberTotal.Text;
    QRSaldo.Caption:= ISEdit_SaldoTotal.Text;

    ISVistaProveedor.VistaPrevia;
  end

end;

procedure TFCuentaCorrienteProveedor.DBGridProveedor_CtaCteDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridProveedor_CtaCte, Rect, DataCol, Column, State);
end;


procedure TFCuentaCorrienteProveedor.DBGridResumen_CtaCtesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if (ZQ_CtaCte_GralDEUDA_VENCIDA.AsString = 'S') then //si tiene deuda Vencida
  begin
    DBGridResumen_CtaCtes.Canvas.Brush.Color:= StaticTxtBaja.Color;
    if (gdFocused in State) or (gdSelected in State) then
      DBGridResumen_CtaCtes.Canvas.Font.Style:= DBGridResumen_CtaCtes.Canvas.Font.Style + [fsBold];
  end
  else
    if (ZQ_CtaCte_GralSALDO.AsFloat > 0) then //si tiene Saldo
    begin
      DBGridResumen_CtaCtes.Canvas.Brush.Color:= StaticTextDeuda.Color;
      if (gdFocused in State) or (gdSelected in State) then
        DBGridResumen_CtaCtes.Canvas.Font.Style:= DBGridResumen_CtaCtes.Canvas.Font.Style + [fsBold];
    end;

  DBGridResumen_CtaCtes.DefaultDrawColumnCell(rect, datacol, column, state);

  FPrincipal.PintarFilasGrillas(DBGridResumen_CtaCtes, Rect, DataCol, Column, State);
end;


procedure TFCuentaCorrienteProveedor.btnExcelClick(Sender: TObject);
begin
  if viendoResumen then
  begin
    if not ZQ_CtaCte_Gral.IsEmpty then
      dm.ExportarEXCEL(DBGridResumen_CtaCtes);
  end
  else
  begin
    if not ZQ_CtaCte_Proveedor.IsEmpty then
      dm.ExportarEXCEL(DBGridProveedor_CtaCte);
  end;
end;


procedure TFCuentaCorrienteProveedor.btnSaldoInicialClick(Sender: TObject);
begin
  ZQ_SaldoIni.Close;
  ZQ_SaldoIni.ParamByName('id_proveedor').AsInteger:= ZQ_ProveedorID_EMPRESA.AsInteger;
  ZQ_SaldoIni.Open;

  GrupoEditando.Enabled:= false;
  PanelProveedor.Enabled:= false;
  dm.centrarPanel(FCuentaCorrienteProveedor, PanelSaldoInicial);

  PanelSaldoInicial.BringToFront;
  PanelSaldoInicial.Visible:= true;

  if ZQ_SaldoIni.IsEmpty then
  begin
    DateTimePicker_FechaSaldo.DateTime:= dm.ISModelo.FechayHora;
    EditSaldiIni_Importe.Text:= '0';
  end
  else
  begin
    DateTimePicker_FechaSaldo.DateTime:= ZQ_SaldoIniFECHA.AsDateTime;
    EditSaldiIni_Importe.Text:= ZQ_SaldoIniIMPORTE_TOTAL.AsString;
  end;

  DateTimePicker_FechaSaldo.SetFocus;
end;


procedure TFCuentaCorrienteProveedor.btnSaldoInicial_CancelarClick(Sender: TObject);
begin
  PanelSaldoInicial.Visible:= false;
  PanelProveedor.Enabled:= true;
  GrupoEditando.Enabled:= true;
end;


procedure TFCuentaCorrienteProveedor.btnSaldoInicial_AceptarClick(Sender: TObject);
var
  saldo_ini: Double;
  recNo: integer;
begin
  try
    saldo_ini:= StrToFloat(EditSaldiIni_Importe.Text);

    if dm.ISModelo.iniciar_transaccion(transaccion, []) then
    begin
      ZQ_Insert_SaldoIni.Close;
      ZQ_Insert_SaldoIni.ParamByName('id_cliente').Clear;
      ZQ_Insert_SaldoIni.ParamByName('id_proveedor').AsInteger:= ZQ_ProveedorID_EMPRESA.AsInteger;
      ZQ_Insert_SaldoIni.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
      ZQ_Insert_SaldoIni.ParamByName('saldo_inicial').AsFloat:= saldo_ini;
      ZQ_Insert_SaldoIni.ParamByName('fecha').AsDateTime:= DateTimePicker_FechaSaldo.DateTime;
      ZQ_Insert_SaldoIni.ExecSQL;

      if not DM.ISModelo.finalizar_transaccion(transaccion) then
        DM.ISModelo.cancelar_transaccion(transaccion)
    end;

    PanelSaldoInicial.Visible:= false;
    PanelProveedor.Enabled:= true;
    GrupoEditando.Enabled:= true;

    recno:= ZQ_CtaCte_Gral.RecNo;
    ZQ_CtaCte_Gral.Refresh;
    ZQ_CtaCte_Gral.RecNo:= recNo;

    AplicarFiltro(BtnFiltro_Todos);
  except
    on E: Exception do
    begin
      Application.MessageBox(pchar(e.Message), 'Atención', MB_OK + MB_ICONINFORMATION);
      exit;
    end
  end;
end;


procedure TFCuentaCorrienteProveedor.ZQ_CtaCte_ProveedorAfterScroll(DataSet: TDataSet);
begin
  if not ActivarAfterScroll then
    exit;

  ZQ_ComprobanteDetalle.Close;
  ZQ_ComprobanteFPago.Close;
  ZQ_OrdenPagoDetalle.Close;

  if ZQ_CtaCte_Proveedor.IsEmpty then
    exit;

  ZQ_ComprobanteDetalle.ParamByName('id_comprobante').AsInteger:= ZQ_CtaCte_ProveedorID_COMPROBANTE.AsInteger;
  ZQ_ComprobanteDetalle.Open;

  ZQ_ComprobanteFPago.ParamByName('id_comprobante').AsInteger:= ZQ_CtaCte_ProveedorID_COMPROBANTE.AsInteger;
  ZQ_ComprobanteFPago.ParamByName('fecha').AsDateTime:= ZQ_CtaCte_ProveedorFECHA.AsDateTime;
  ZQ_ComprobanteFPago.Open;

  ZQ_OrdenPagoDetalle.ParamByName('id_comprobante').AsInteger:= ZQ_CtaCte_ProveedorID_COMPROBANTE.AsInteger;
  ZQ_OrdenPagoDetalle.Open;

  verDetalle;
end;


procedure TFCuentaCorrienteProveedor.btnVerDetalleFacturaClick(Sender: TObject);
begin
  if ZQ_CtaCte_Proveedor.IsEmpty then
    Exit;

  if viendoDetalleCpb = true then //si estoy con el detalle activado lo desactivo
  begin
    ActivarAfterScroll:= false;
    viendoDetalleCpb:= false;
    PanelDetalleMov.Visible:= false;
  end
  else //si estoy con el detalle desactivado lo activo
  begin
    ActivarAfterScroll:= true;
    ZQ_CtaCte_Proveedor.Refresh;
    viendoDetalleCpb:= true;
    verDetalle;
  end;
end;


procedure TFCuentaCorrienteProveedor.verDetalle();
begin
  if viendoDetalleCpb then
  begin
    //si el tipo de comprobante es saldo anterior o nota de credito
    if (AnsiPos('SALDO ', ZQ_CtaCte_ProveedorTIPO_COMPROBANTE.AsString) <> 0) or (AnsiPos('NOTA CREDITOS', ZQ_CtaCte_ProveedorTIPO_COMPROBANTE.AsString) <> 0) then
    begin
      PanelDetalleMov.Visible:= false;
    end
    else //sino
      //si el tipo de comprobante es recibo de cta cte
      if AnsiPos('ORDEN PAGO CTA CTE', ZQ_CtaCte_ProveedorTIPO_COMPROBANTE.AsString) <> 0 then
      begin
        lblTitulo_PanelDetalleMov.Caption:= 'DETALLE ' + ZQ_CtaCte_ProveedorTIPO_COMPROBANTE.AsString;
        PanelDetalleMov.Visible:= true;
        DBGridDetalle_FPago.SendToBack;
        DBGridDetalle_Producto.SendToBack;
        DBGridDetalle_OP.BringToFront;
      end
      else //sino
        //si el tipo de comprobante es Pago factura
        if AnsiPos('PAGO FACTURA', ZQ_CtaCte_ProveedorTIPO_COMPROBANTE.AsString) <> 0 then
        begin
          lblTitulo_PanelDetalleMov.Caption:= 'DETALLE ' + ZQ_CtaCte_ProveedorTIPO_COMPROBANTE.AsString;
          PanelDetalleMov.Visible:= true;
          DBGridDetalle_FPago.BringToFront;
          DBGridDetalle_Producto.SendToBack;
          DBGridDetalle_OP.SendToBack;
        end
        else //sino
        //si el tipo de comprobante es factura
          if AnsiPos('FACTURA', ZQ_CtaCte_ProveedorTIPO_COMPROBANTE.AsString) <> 0 then
          begin
            lblTitulo_PanelDetalleMov.Caption:= 'DETALLE ' + ZQ_CtaCte_ProveedorTIPO_COMPROBANTE.AsString;
            PanelDetalleMov.Visible:= true;
            DBGridDetalle_FPago.SendToBack;
            DBGridDetalle_Producto.BringToFront;
            DBGridDetalle_OP.SendToBack;
          end
  end;
end;


procedure TFCuentaCorrienteProveedor.btnAltaReciboClick(Sender: TObject);
begin
  FPrincipal.AABM_CPB_OrdenPago.Execute;
  if not dm.ISModelo.verificar_transaccion('ABM ORDEN PAGO') then
    FABM_CPB_OrdenPago.alta_orden_pago_cta_cte_desde_afuera(ZQ_ProveedorID_EMPRESA.AsInteger)
  else
    ShowMessage('Hay un alta de Orden de Pago en curso, verifique');
end;


procedure TFCuentaCorrienteProveedor.FormActivate(Sender: TObject);
var
  recNo_gral: integer;
begin
  ActivarAfterScroll:= false;
  PanelDetalleMov.Visible:= false;
  viendoDetalleCpb:= false;

  if not ZQ_CtaCte_Gral.IsEmpty then
  begin
    recNo_gral:= ZQ_CtaCte_Gral.RecNo;
    ZQ_CtaCte_Gral.Refresh;
    ZQ_CtaCte_Gral.RecNo:= recNo_gral;
    calcularTotales('GENERAL');
  end;

  if not ZQ_CtaCte_Proveedor.IsEmpty then
  begin
    recNo_gral:= ZQ_CtaCte_Proveedor.RecNo;
    ZQ_CtaCte_Proveedor.Refresh;
    ZQ_CtaCte_Proveedor.RecNo:= recNo_gral;
    calcularTotales('PROVEEDOR');
  end;
end;


procedure TFCuentaCorrienteProveedor.DBGridDetalle_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridDetalle_Producto, Rect, DataCol, Column, State);
end;


procedure TFCuentaCorrienteProveedor.DBGridDetalle_OPDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridDetalle_OP, Rect, DataCol, Column, State);
end;


procedure TFCuentaCorrienteProveedor.DBGridDetalle_FPagoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridDetalle_FPago, Rect, DataCol, Column, State);
end;

procedure TFCuentaCorrienteProveedor.ojoDeudor(tf:Boolean);
begin
  lblDeudor.Visible:=tf;
end;

end.

