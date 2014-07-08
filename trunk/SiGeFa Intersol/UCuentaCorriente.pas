unit UCuentaCorriente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt, UBuscarPersona, EKEdit, Buttons,
  EKDbSuma, ComCtrls, EKDBDateTimePicker, Menus, ZStoredProcedure,
  ISOrdenarGrilla, ISVistaPreviaQR, cxClasses;

type
  TFCuentaCorriente = class(TForm)
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
    PanelCliente: TPanel;
    PanelCliente_CtaCte: TPanel;
    DBGridCliente_CtaCte: TDBGrid;
    PanelCliente_Datos: TPanel;
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
    Label1: TLabel;
    DBText1: TDBText;
    Label12: TLabel;
    DBText2: TDBText;
    Label13: TLabel;
    DBText3: TDBText;
    PanelCliente_Resumen: TPanel;
    ZQ_Cliente: TZQuery;
    DS_Cliente: TDataSource;
    PanelResumen: TPanel;
    PanelResumen_Abajo: TPanel;
    DBGridResumen_CtaCtes: TDBGrid;
    PanelResumen_Arriba: TPanel;
    ZQ_CtaCte_Gral: TZQuery;
    DS_CtaCte_Gral: TDataSource;
    ZQ_CtaCte_Cliente: TZQuery;
    DS_CtaCte_Cliente: TDataSource;
    PanelFiltro: TPanel;
    BtnFiltro_Todos: TSpeedButton;
    BtnFiltro_Hoy: TSpeedButton;
    BtnFiltro_EstaSemana: TSpeedButton;
    BtnFiltro_EsteMes: TSpeedButton;
    BtnFiltro_EsteAnio: TSpeedButton;
    Label39: TLabel;
    EKDbSumaCtaCte_Cliente: TEKDbSuma;
    BtnFiltro_PorFecha: TSpeedButton;
    PanelFiltroFechas: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    EKDBDateTime_FiltroDesde: TEKDBDateTimePicker;
    EKDBDateTime_FiltroHasta: TEKDBDateTimePicker;
    btnFiltroFecha_Aceptar: TBitBtn;
    btnFiltroFecha_Cancelar: TBitBtn;
    lblFiltro_Fechas: TLabel;
    EKDbSumaCtaCte_Gral: TEKDbSuma;
    Panel1: TPanel;
    EKEditResumen_Saldo: TEKEdit;
    Label23: TLabel;
    Label22: TLabel;
    EKEditResumen_Haber: TEKEdit;
    EKEditResumen_Debe: TEKEdit;
    Label24: TLabel;
    Label25: TLabel;
    EKEditResumen_Cantidad: TEKEdit;
    PanelCliente_ResumenFiltro: TPanel;
    Label21: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    EKEditCliente_SaldoFiltro: TEKEdit;
    EKEditCliente_HaberFiltro: TEKEdit;
    EKEditCliente_DebeFiltro: TEKEdit;
    EKEditCliente_CantidadFiltro: TEKEdit;
    PanelCliente_ResumenTotales: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    EKEditCliente_SaldoTotal: TEKEdit;
    EKEditCliente_HaberTotal: TEKEdit;
    EKEditCliente_DebeTotal: TEKEdit;
    EKBuscarCliente: TEKBusquedaAvanzada;
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
    RepCliente: TQuickRep;
    QRBand1: TQRBand;
    QRDBLogo2: TQRDBImage;
    QRLabel1: TQRLabel;
    RepCliente_Subtitulo: TQRLabel;
    RepCliente_Titulo: TQRLabel;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRlblPieDePaginaCliente: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRClienteSaldoFiltro: TQRLabel;
    QRClienteHaberFiltro: TQRLabel;
    QRClienteDebeFiltro: TQRLabel;
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
    QRDBText21: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText25: TQRDBText;
    QRlblClienteFiltro: TQRLabel;
    QRLabel6: TQRLabel;
    QRClienteDebe: TQRLabel;
    QRClienteHaber: TQRLabel;
    QRClienteSaldo: TQRLabel;
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
    EKOrdenar_DetalleProducto: TEKOrdenarGrilla;
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
    ZQ_ClienteID_PERSONA: TIntegerField;
    ZQ_ClienteID_PROVINCIA: TIntegerField;
    ZQ_ClienteID_TIPO_DOC: TIntegerField;
    ZQ_ClienteID_TIPO_IVA: TIntegerField;
    ZQ_ClienteNOMBRE: TStringField;
    ZQ_ClienteDIRECCION: TStringField;
    ZQ_ClienteLOCALIDAD: TStringField;
    ZQ_ClienteCODIGO_POSTAL: TStringField;
    ZQ_ClienteTELEFONO: TStringField;
    ZQ_ClienteEMAIL: TStringField;
    ZQ_ClienteFECHA_NACIMIENTO: TDateField;
    ZQ_ClienteNUMERO_DOC: TStringField;
    ZQ_ClienteSEXO: TStringField;
    ZQ_ClienteBAJA: TStringField;
    ZQ_ClienteDESCRIPCION: TStringField;
    ZQ_ClienteCUIT_CUIL: TStringField;
    ZQ_ClienteDESCUENTO_ESPECIAL: TFloatField;
    ZQ_ClienteCODIGO_CORTO: TIntegerField;
    ZQ_ClienteCODIGO_BARRA: TStringField;
    ZQ_ClienteNOMBRE_PROVINCIA: TStringField;
    ZQ_ClienteNOMBRE_TIPO_IVA: TStringField;
    ZQ_ClienteCOD_IVA: TStringField;
    ZQ_ClienteNOMBRE_TIPO_DOC: TStringField;
    ZQ_ClienteID_CTA_CTE: TIntegerField;
    ZQ_ClienteID_PERSONA_1: TIntegerField;
    ZQ_ClienteID_PROVEEDOR: TIntegerField;
    ZQ_ClienteSALDO: TFloatField;
    ZQ_ClienteLIMITE_DEUDA: TFloatField;
    ZQ_ClienteVENCIMIENTO_DIAS: TIntegerField;
    ZQ_ClienteFECHA_ALTA: TDateField;
    ZQ_ClienteFECHA_BAJA: TDateField;
    ZQ_ClienteBAJA_1: TStringField;
    ZQ_CtaCte_ClienteTIPO_COMPROBANTE: TStringField;
    ZQ_CtaCte_ClienteID_COMPROBANTE: TIntegerField;
    ZQ_CtaCte_ClienteID_VENDEDOR: TIntegerField;
    ZQ_CtaCte_ClienteFECHA: TDateTimeField;
    ZQ_CtaCte_ClienteOBSERVACION: TStringField;
    ZQ_CtaCte_ClienteDEBE: TFloatField;
    ZQ_CtaCte_ClienteHABER: TFloatField;
    ZQ_CtaCte_ClienteSALDO_CPB: TFloatField;
    ZQ_CtaCte_ClienteSALDO: TFloatField;
    ZQ_CtaCte_ClienteSUCURSAL: TStringField;
    DS_ReciboDetalle: TDataSource;
    ZQ_ReciboDetalle: TZQuery;
    ZQ_ReciboDetalleID_PAGO_FACTURAS: TIntegerField;
    ZQ_ReciboDetalleID_COMPROBANTE: TIntegerField;
    ZQ_ReciboDetalleID_FACTURA: TIntegerField;
    ZQ_ReciboDetalleID_TIPO_COMPROBANTE: TIntegerField;
    ZQ_ReciboDetalleIMPORTE: TFloatField;
    ZQ_ReciboDetalleFECHA: TDateTimeField;
    ZQ_ReciboDetalleIMPORTE_VENTA: TFloatField;
    ZQ_ReciboDetalleDESCRIPCION: TStringField;
    ZQ_ReciboDetalleIMPORTE_REAL: TFloatField;
    btnAltaRecibo: TdxBarLargeButton;
    PanelDetalleMov: TPanel;
    DBGridDetalle_Recibo: TDBGrid;
    DBGridDetalle_Producto: TDBGrid;
    lblTitulo_PanelDetalleMov: TLabel;
    ZQ_ComprobanteDetalleIMPORTE_VENTA: TFloatField;
    Popup_ComprobanteDetalle: TPopupMenu;
    PopUpItem_DevolverProducto: TMenuItem;
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
    ISVistaClientes: TISVistaPreviaQR;
    ISVistaCtasCtes: TISVistaPreviaQR;
    ISOrdenar_CtaCteGral: TISOrdenarGrilla;
    ISOrdenar_CtaCteCliente: TISOrdenarGrilla;
    ISOrdenar_DetalleRecibo: TISOrdenarGrilla;
    ISOrdenar_DetalleFPago: TISOrdenarGrilla;
    ISOrdenarGrilla1: TISOrdenarGrilla;
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
    procedure DBGridCliente_CtaCteDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridResumen_CtaCtesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnExcelClick(Sender: TObject);
    procedure btnSaldoInicialClick(Sender: TObject);
    procedure btnSaldoInicial_CancelarClick(Sender: TObject);
    procedure btnSaldoInicial_AceptarClick(Sender: TObject);
    procedure ZQ_CtaCte_ClienteAfterScroll(DataSet: TDataSet);
    procedure btnVerDetalleFacturaClick(Sender: TObject);
    procedure btnAltaReciboClick(Sender: TObject);
    procedure AVerDetalleExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGridDetalle_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridDetalle_ReciboDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PopUpItem_DevolverProductoClick(Sender: TObject);
    procedure verDetalle;
    procedure DBGridDetalle_FPagoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  Private
    viendoResumen: boolean;
    viendoDetalleCpb: boolean;
    ActivarAfterScroll: boolean;
  Public
  end;

var
  FCuentaCorriente: TFCuentaCorriente;

const
  transaccion = 'CTA CTE CLIENTE';

implementation

uses UPrincipal, UDM, DateUtils, UImpresion_Comprobantes, UABM_CPB_Recibo;

{$R *.dfm}

procedure TFCuentaCorriente.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  EKOrdenar_CtaCteGral.GuardarConfigColumnas;
  EKOrdenar_CtaCteCliente.GuardarConfigColumnas;
  EKOrdenar_DetalleProducto.GuardarConfigColumnas;
  EKOrdenar_DetalleRecibo.GuardarConfigColumnas;
  EKOrdenar_DetalleFPago.GuardarConfigColumnas;  

  CanClose:= FPrincipal.cerrar_ventana(transaccion);
end;


procedure TFCuentaCorriente.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFCuentaCorriente.btnBuscarClick(Sender: TObject);
begin
  if EKBuscarCliente.Buscar then
  begin
    dm.mostrarCantidadRegistro(ZQ_CtaCte_Gral, lblCantidadRegistros);
    calcularTotales('GENERAL');
  end;
end;


procedure TFCuentaCorriente.btnVerCtaCteClick(Sender: TObject);
begin
  //para el resumen de los clientes
  ActivarAfterScroll:= false;

  if viendoResumen then
  begin
    //para ver un cliente en especial
    viendoResumen:= false;
    PanelCliente.BringToFront;
    btnVerCtaCte.Caption:= 'F2 - Ver Resumen';
    btnVerCtaCte.Hint:= 'Ver el resumen de cuenta corriente de todos los clientes';
    btnBuscar.Enabled:= false;

    ZQ_Cliente.Close;
    ZQ_Cliente.ParamByName('id_persona').AsInteger:= ZQ_CtaCte_GralID_CLIENTE_OUT.AsInteger;
    ZQ_Cliente.Open;

    AplicarFiltro(BtnFiltro_Todos);

    DBGridCliente_CtaCte.SetFocus;

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
    btnVerCtaCte.Hint:= 'Ver la cuenta corriente del cliente seleccionado';
    btnBuscar.Enabled:= true;

    DBGridResumen_CtaCtes.SetFocus;

    btnSaldoInicial.Enabled:= false;
    btnAltaRecibo.Enabled:= false;
    btnVerDetalleFactura.Enabled:= false;
  end;
end;


procedure TFCuentaCorriente.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  QRDBLogo2.DataSet:= DM.ZQ_Sucursal;

  EKOrdenar_CtaCteGral.CargarConfigColumnas;
  EKOrdenar_CtaCteCliente.CargarConfigColumnas;
  EKOrdenar_DetalleProducto.CargarConfigColumnas;
  EKOrdenar_DetalleRecibo.CargarConfigColumnas;
  EKOrdenar_DetalleFPago.CargarConfigColumnas;  

  FPrincipal.Iconos_Menu_16.GetBitmap(0, btnFiltroFecha_Cancelar.Glyph);
  FPrincipal.Iconos_Menu_16.GetBitmap(1, btnFiltroFecha_Aceptar.Glyph);

  FPrincipal.Iconos_Menu_16.GetBitmap(0, btnSaldoInicial_Cancelar.Glyph);
  FPrincipal.Iconos_Menu_16.GetBitmap(1, btnSaldoInicial_Aceptar.Glyph);

  EKDBDateTime_FiltroDesde.Date:= dm.EKModelo.Fecha;
  EKDBDateTime_FiltroHasta.Date:= dm.EKModelo.Fecha;

  PanelResumen.BringToFront;
  viendoResumen:= true;
   btnSaldoInicial.Enabled:= false;
    btnAltaRecibo.Enabled:= false;
    btnVerDetalleFactura.Enabled:= false;

  ZQ_CtaCte_Gral.Close;
  ZQ_CtaCte_Gral.ParamByName('id_cliente').AsInteger:= -1;
  ZQ_CtaCte_Gral.Open;
  dm.mostrarCantidadRegistro(ZQ_CtaCte_Gral, lblCantidadRegistros);

  calcularTotales('GENERAL');
  btnVerDetalleFactura.Click;

  ActivarAfterScroll:= false;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------

procedure TFCuentaCorriente.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFCuentaCorriente.AVerCtaCteExecute(Sender: TObject);
begin
  if btnVerCtaCte.Enabled then
    btnVerCtaCte.Click;
end;

procedure TFCuentaCorriente.AVerDetalleExecute(Sender: TObject);
begin
  if btnVerDetalleFactura.Enabled then
    btnVerDetalleFactura.Click;
end;

//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFCuentaCorriente.DBGridResumen_CtaCtesDblClick(Sender: TObject);
begin
  btnVerCtaCte.Click;
end;


procedure TFCuentaCorriente.AplicarFiltro(Sender: TObject);
var
  hoy: Tdate;
  diasDesdeUltimaSemana, diasDesdeUltimoMes, diasDesdeUltimoAnio: integer;
  debe, haber, saldo: Double;
begin
  ActivarAfterScroll:= false;
  PanelDetalleMov.Visible:= false;
  viendoDetalleCpb:= false;

  hoy:= dm.EKModelo.Fecha;

  ZQ_CtaCte_Cliente.ParamByName('id_cliente').AsInteger:= ZQ_CtaCte_GralID_CLIENTE_OUT.AsInteger;
  ZQ_CtaCte_Cliente.ParamByName('id_proveedor').clear;
  ZQ_CtaCte_Cliente.ParamByName('id_sucursal').AsInteger:= -1;

  if TSpeedButton(Sender).Name = 'BtnFiltro_Todos' then
  begin
    ZQ_CtaCte_Cliente.ParamByName('fecha_desde').AsDate:= EncodeDate(1000, 1, 1);
    ZQ_CtaCte_Cliente.ParamByName('fecha_hasta').AsDate:= EncodeDate(3000, 1, 1);
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_Hoy' then
  begin
    ZQ_CtaCte_Cliente.ParamByName('fecha_desde').AsDate:= hoy;
    ZQ_CtaCte_Cliente.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_EstaSemana' then //la semana comienza el lunesa
  begin
    diasDesdeUltimaSemana:= DayOfTheWeek(hoy) - 1;
    ZQ_CtaCte_Cliente.ParamByName('fecha_desde').AsDate:= IncDay(hoy, -diasDesdeUltimaSemana);
    ZQ_CtaCte_Cliente.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_EsteMes' then
  begin
    ZQ_CtaCte_Cliente.ParamByName('fecha_desde').AsDate:= EncodeDate(YearOf(hoy), MonthOf(hoy), 1);
    ZQ_CtaCte_Cliente.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_EsteAnio' then
  begin
    ZQ_CtaCte_Cliente.ParamByName('fecha_desde').AsDate:= EncodeDate(YearOf(hoy), 1, 1);
    ZQ_CtaCte_Cliente.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_PorFecha' then
  begin
    PanelCliente.Enabled:= false;

    dm.centrarPanel(FCuentaCorriente, PanelFiltroFechas);

    PanelFiltroFechas.BringToFront;
    PanelFiltroFechas.Visible:= true;

    EKDBDateTime_FiltroDesde.SetFocus;
    GrupoEditando.Enabled:= false;
    exit;
  end;

  if TSpeedButton(Sender).Name = 'BtnFiltro_Todos' then
    lblFiltro_Fechas.Caption:= 'Viendo Todo'
  else
    lblFiltro_Fechas.Caption:= 'Viendo Desde: ' + DateToStr(ZQ_CtaCte_Cliente.ParamByName('fecha_desde').AsDate) + ' - Hasta: ' + DateToStr(ZQ_CtaCte_Cliente.ParamByName('fecha_hasta').AsDate);

  ZQ_CtaCte_Cliente.Close;
  ZQ_CtaCte_Cliente.Open;

  calcularTotales('CLIENTE');
end;


procedure TFCuentaCorriente.calcularTotales(tipo: string);
var
  debeFilro, haberFiltro, saldoFiltro: Double;
  debeTotal, haberTotal, saldoTotal: Double;
begin
  if tipo = 'GENERAL' then
  begin
    EKDbSumaCtaCte_Gral.RecalcAll;
    EKEditResumen_Cantidad.Text:= IntToStr(ZQ_CtaCte_Gral.RecordCount);
    EKEditResumen_Debe.Text:= FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Gral.SumCollection.Items[0].SumValue);
    EKEditResumen_Haber.Text:= FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Gral.SumCollection.Items[1].SumValue);
    EKEditResumen_Saldo.Text:= FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Gral.SumCollection.Items[2].SumValue);
  end;

  if tipo = 'CLIENTE' then
  begin
    EKDbSumaCtaCte_Cliente.RecalcAll;

    debeFilro:= EKDbSumaCtaCte_Cliente.SumCollection.Items[0].SumValue;
    haberFiltro:= EKDbSumaCtaCte_Cliente.SumCollection.Items[1].SumValue;
    saldoFiltro:= debeFilro - haberFiltro;

    ZQ_CtaCte_Gral.Locate('ID_CLIENTE_OUT', ZQ_CtaCte_Cliente.ParamByName('id_cliente').AsInteger, []);
    debeTotal:= ZQ_CtaCte_GralDEBE.AsFloat;
    haberTotal:= ZQ_CtaCte_GralHABER.AsFloat;
    saldoTotal:= ZQ_CtaCte_GralSALDO.AsFloat;

    EKEditCliente_CantidadFiltro.Text:= IntToStr(ZQ_CtaCte_Cliente.RecordCount);
    EKEditCliente_DebeFiltro.Text:= FormatFloat('$ ###,###,##0.00', debeFilro);
    EKEditCliente_HaberFiltro.Text:= FormatFloat('$ ###,###,##0.00', haberFiltro);
    EKEditCliente_SaldoFiltro.Text:= FormatFloat('$ ###,###,##0.00', saldoFiltro);

    EKEditCliente_DebeTotal.Text:= FormatFloat('$ ###,###,##0.00', debeTotal);
    EKEditCliente_HaberTotal.Text:= FormatFloat('$ ###,###,##0.00', haberTotal);
    EKEditCliente_SaldoTotal.Text:= FormatFloat('$ ###,###,##0.00', saldoTotal);
  end;
end;


procedure TFCuentaCorriente.btnFiltroFecha_CancelarClick(Sender: TObject);
begin
  PanelFiltroFechas.Visible:= false;
  PanelCliente.Enabled:= true;
  GrupoEditando.Enabled:= true;
end;


procedure TFCuentaCorriente.btnFiltroFecha_AceptarClick(Sender: TObject);
begin
  ZQ_CtaCte_Cliente.ParamByName('fecha_desde').AsDate:= EKDBDateTime_FiltroDesde.Date;
  ZQ_CtaCte_Cliente.ParamByName('fecha_hasta').AsDate:= EKDBDateTime_FiltroHasta.Date;
  ZQ_CtaCte_Cliente.Close;
  ZQ_CtaCte_Cliente.Open;

  calcularTotales('CLIENTE');

  lblFiltro_Fechas.Caption:= 'Viendo Desde: ' + DateToStr(ZQ_CtaCte_Cliente.ParamByName('fecha_desde').AsDate) + ' - Hasta: ' + DateToStr(ZQ_CtaCte_Cliente.ParamByName('fecha_hasta').AsDate);

  PanelFiltroFechas.Visible:= false;
  PanelCliente.Enabled:= true;
  GrupoEditando.Enabled:= true;
end;


procedure TFCuentaCorriente.FormResize(Sender: TObject);
begin
  if PanelFiltroFechas.Visible then
    dm.centrarPanel(FCuentaCorriente, PanelFiltroFechas);

  if PanelSaldoInicial.Visible then
    dm.centrarPanel(FCuentaCorriente, PanelSaldoInicial);
end;


procedure TFCuentaCorriente.btnImprimirClick(Sender: TObject);
begin
  if viendoResumen then
  begin
    if ZQ_CtaCte_Gral.IsEmpty then
      exit;

    DM.VariablesReportes(RepCtasCtes);
    QRlblPieDePaginaCtasCtes.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ', dm.EKModelo.Fecha);
    QRLabelCritBusquedaCtasCtes.Caption:= EKBuscarCliente.ParametrosBuscados;

    QRCtasCtes_TotalDebe.Caption:= FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Gral.SumCollection.Items[0].SumValue);
    QRCtasCtes_TotalHaber.Caption:= FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Gral.SumCollection.Items[1].SumValue);
    QRCtasCtes_TotalSaldo.Caption:= FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Gral.SumCollection.Items[2].SumValue);

    EKVistaCtasCtes.VistaPrevia;
  end
  else
  begin
    if ZQ_CtaCte_Cliente.IsEmpty then
      exit;

    DM.VariablesReportes(RepCliente);
    QRlblPieDePaginaCliente.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ', dm.EKModelo.Fecha);

    QRlblClienteFiltro.Caption:= lblFiltro_Fechas.Caption;

    QRClienteDebeFiltro.Caption:= EKEditCliente_DebeFiltro.Text;
    QRClienteHaberFiltro.Caption:= EKEditCliente_HaberFiltro.Text;
    QRClienteSaldoFiltro.Caption:= EKEditCliente_SaldoFiltro.Text;

    QRClienteDebe.Caption:= EKEditCliente_DebeTotal.Text;
    QRClienteHaber.Caption:= EKEditCliente_HaberTotal.Text;
    QRClienteSaldo.Caption:= EKEditCliente_SaldoTotal.Text;

    EKVistaClientes.VistaPrevia;
  end

end;

procedure TFCuentaCorriente.DBGridCliente_CtaCteDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridCliente_CtaCte, Rect, DataCol, Column, State);
end;


procedure TFCuentaCorriente.DBGridResumen_CtaCtesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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


procedure TFCuentaCorriente.btnExcelClick(Sender: TObject);
begin
  if viendoResumen then
  begin
    if not ZQ_CtaCte_Gral.IsEmpty then
      dm.ExportarEXCEL(DBGridResumen_CtaCtes);
  end
  else
  begin
    if not ZQ_CtaCte_Cliente.IsEmpty then
      dm.ExportarEXCEL(DBGridCliente_CtaCte);
  end;
end;


procedure TFCuentaCorriente.btnSaldoInicialClick(Sender: TObject);
begin
  ZQ_SaldoIni.Close;
  ZQ_SaldoIni.ParamByName('id_cliente').AsInteger:= ZQ_ClienteID_PERSONA.AsInteger;
  ZQ_SaldoIni.Open;

  GrupoEditando.Enabled:= false;
  PanelCliente.Enabled:= false;
  dm.centrarPanel(FCuentaCorriente, PanelSaldoInicial);

  PanelSaldoInicial.BringToFront;
  PanelSaldoInicial.Visible:= true;

  if ZQ_SaldoIni.IsEmpty then
  begin
    DateTimePicker_FechaSaldo.DateTime:= dm.EKModelo.FechayHora;
    EditSaldiIni_Importe.Text:= '0';
  end
  else
  begin
    DateTimePicker_FechaSaldo.DateTime:= ZQ_SaldoIniFECHA.AsDateTime;
    EditSaldiIni_Importe.Text:= ZQ_SaldoIniIMPORTE_TOTAL.AsString;
  end;

  DateTimePicker_FechaSaldo.SetFocus;
end;


procedure TFCuentaCorriente.btnSaldoInicial_CancelarClick(Sender: TObject);
begin
  PanelSaldoInicial.Visible:= false;
  PanelCliente.Enabled:= true;
  GrupoEditando.Enabled:= true;
end;


procedure TFCuentaCorriente.btnSaldoInicial_AceptarClick(Sender: TObject);
var
  saldo_ini: Double;
  recNo: integer;
begin
  try
    saldo_ini:= StrToFloat(EditSaldiIni_Importe.Text);

    if dm.EKModelo.iniciar_transaccion(transaccion, []) then
    begin
      ZQ_Insert_SaldoIni.Close;
      ZQ_Insert_SaldoIni.ParamByName('id_cliente').AsInteger:= ZQ_ClienteID_PERSONA.AsInteger;
      ZQ_Insert_SaldoIni.ParamByName('id_proveedor').Clear;
      ZQ_Insert_SaldoIni.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
      ZQ_Insert_SaldoIni.ParamByName('saldo_inicial').AsFloat:= saldo_ini;
      ZQ_Insert_SaldoIni.ParamByName('fecha').AsDateTime:= DateTimePicker_FechaSaldo.DateTime;
      ZQ_Insert_SaldoIni.ExecSQL;

      if not DM.EKModelo.finalizar_transaccion(transaccion) then
        DM.EKModelo.cancelar_transaccion(transaccion)
    end;

    PanelSaldoInicial.Visible:= false;
    PanelCliente.Enabled:= true;
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


procedure TFCuentaCorriente.ZQ_CtaCte_ClienteAfterScroll(DataSet: TDataSet);
begin
  if not ActivarAfterScroll then
    exit;

  ZQ_ComprobanteDetalle.Close;
  ZQ_ComprobanteFPago.Close;
  ZQ_ReciboDetalle.Close;

  if ZQ_CtaCte_Cliente.IsEmpty then
    exit;

  ZQ_ComprobanteDetalle.ParamByName('id_comprobante').AsInteger:= ZQ_CtaCte_ClienteID_COMPROBANTE.AsInteger;
  ZQ_ComprobanteDetalle.Open;

  ZQ_ComprobanteFPago.ParamByName('id_comprobante').AsInteger:= ZQ_CtaCte_ClienteID_COMPROBANTE.AsInteger;
  ZQ_ComprobanteFPago.ParamByName('fecha').AsDateTime:= ZQ_CtaCte_ClienteFECHA.AsDateTime;
  ZQ_ComprobanteFPago.Open;

  ZQ_ReciboDetalle.ParamByName('id_comprobante').AsInteger:= ZQ_CtaCte_ClienteID_COMPROBANTE.AsInteger;
  ZQ_ReciboDetalle.Open;

  verDetalle;
end;


procedure TFCuentaCorriente.btnVerDetalleFacturaClick(Sender: TObject);
begin
  if ZQ_CtaCte_Cliente.IsEmpty then
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
    ZQ_CtaCte_Cliente.Refresh;
    viendoDetalleCpb:= true;
    verDetalle;
  end;
end;


procedure TFCuentaCorriente.verDetalle();
begin
  if viendoDetalleCpb then
  begin
    //si el tipo de comprobante es saldo anterior o nota de credito
    if (AnsiPos('SALDO ', ZQ_CtaCte_ClienteTIPO_COMPROBANTE.AsString) <> 0) or (AnsiPos('NOTA CREDITOS', ZQ_CtaCte_ClienteTIPO_COMPROBANTE.AsString) <> 0) then
    begin
      PanelDetalleMov.Visible:= false;
    end
    else //sino
      //si el tipo de comprobante es recibo de cta cte
      if AnsiPos('RECIBO CTA CTE', ZQ_CtaCte_ClienteTIPO_COMPROBANTE.AsString) <> 0 then
      begin
        lblTitulo_PanelDetalleMov.Caption:= 'DETALLE ' + ZQ_CtaCte_ClienteTIPO_COMPROBANTE.AsString;
        PanelDetalleMov.Visible:= true;
        DBGridDetalle_FPago.SendToBack;
        DBGridDetalle_Producto.SendToBack;
        DBGridDetalle_Recibo.BringToFront;
      end
      else //sino
        //si el tipo de comprobante es Pago factura
        if AnsiPos('PAGO FACTURA', ZQ_CtaCte_ClienteTIPO_COMPROBANTE.AsString) <> 0 then
        begin
          lblTitulo_PanelDetalleMov.Caption:= 'DETALLE ' + ZQ_CtaCte_ClienteTIPO_COMPROBANTE.AsString;
          PanelDetalleMov.Visible:= true;
          DBGridDetalle_FPago.BringToFront;
          DBGridDetalle_Producto.SendToBack;
          DBGridDetalle_Recibo.SendToBack;
        end
        else //sino
        //si el tipo de comprobante es factura
          if AnsiPos('FACTURA', ZQ_CtaCte_ClienteTIPO_COMPROBANTE.AsString) <> 0 then
          begin
            lblTitulo_PanelDetalleMov.Caption:= 'DETALLE ' + ZQ_CtaCte_ClienteTIPO_COMPROBANTE.AsString;
            PanelDetalleMov.Visible:= true;
            DBGridDetalle_FPago.SendToBack;
            DBGridDetalle_Producto.BringToFront;
            DBGridDetalle_Recibo.SendToBack;
          end
  end;
end;


procedure TFCuentaCorriente.btnAltaReciboClick(Sender: TObject);
begin
  FPrincipal.AABM_CPB_Recibo.Execute;
  if not dm.EKModelo.verificar_transaccion('ABM RECIBOS') then
    FABM_CPB_Recibo.alta_recibo_cta_cte_desde_afuera(ZQ_ClienteID_PERSONA.AsInteger)
  else
    ShowMessage('Hay un alta de Recibo en curso, verifique');
end;


procedure TFCuentaCorriente.FormActivate(Sender: TObject);
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

  if not ZQ_CtaCte_Cliente.IsEmpty then
  begin
    recNo_gral:= ZQ_CtaCte_Cliente.RecNo;
    ZQ_CtaCte_Cliente.Refresh;
    ZQ_CtaCte_Cliente.RecNo:= recNo_gral;
    calcularTotales('CLIENTE');
  end;
end;


procedure TFCuentaCorriente.DBGridDetalle_ProductoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridDetalle_Producto, Rect, DataCol, Column, State);
end;


procedure TFCuentaCorriente.DBGridDetalle_ReciboDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridDetalle_Recibo, Rect, DataCol, Column, State);
end;


procedure TFCuentaCorriente.PopUpItem_DevolverProductoClick(Sender: TObject);
var
  recno, id_cpb, id_cpb_detalle: integer;
  importe_devolver: double;
  mensaje: string;
begin
  if (ZQ_ComprobanteDetalle.IsEmpty) or (ZQ_CtaCte_ClienteHABER.AsFloat <> 0) then
    exit;

  id_cpb:= ZQ_ComprobanteDetalleID_COMPROBANTE.AsInteger;
  id_cpb_detalle:= ZQ_ComprobanteDetalleID_COMPROBANTE_DETALLE.AsInteger;
  importe_devolver:= ZQ_ComprobanteDetalleIMPORTE_VENTA.AsFloat;

  if (importe_devolver > ZQ_CtaCte_ClienteSALDO_CPB.AsFloat) then
  begin
    mensaje:= format('No se puede devolver el Producto Seleccionado porque el' + #13 +
      'precio de este es superior al Saldo de la Factura asociada.' + #13 +
      '(Precio Producto = %n > Saldo Factura = %n)', [importe_devolver, ZQ_CtaCte_ClienteSALDO_CPB.AsFloat]);
    Application.MessageBox(pchar(mensaje), 'Atención', MB_OK + MB_ICONINFORMATION);
    exit;
  end;

  mensaje:= format('¿Desea eliminar el producto %s de la Factura %s?', [ZQ_ComprobanteDetalleDETALLE_PROD.AsString, ZQ_CtaCte_ClienteTIPO_COMPROBANTE.AsString]);

  if (application.MessageBox(pchar(mensaje), 'Eliminar Producto', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, []) then
    begin
      ZP_DevolverProducto.Close;
      ZP_DevolverProducto.ParamByName('id_cpb').AsInteger:= id_cpb;
      ZP_DevolverProducto.ParamByName('id_cpb_detalle').AsInteger:= id_cpb_detalle;
      ZP_DevolverProducto.ParamByName('importe_devolucion').AsFloat:= importe_devolver;
      ZP_DevolverProducto.ExecProc;

      try
        if not DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
          dm.EKModelo.cancelar_transaccion(transaccion_ABM)
      except
        begin
          Application.MessageBox('No se pudo eliminar el Producto.', 'Atención', MB_OK + MB_ICONINFORMATION);
          exit;
        end
      end;
    end;

  recNo:= ZQ_CtaCte_Cliente.RecNo;
  ZQ_CtaCte_Cliente.Refresh;
  ZQ_CtaCte_Cliente.RecNo:= recNo;
end;


procedure TFCuentaCorriente.DBGridDetalle_FPagoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridDetalle_FPago, Rect, DataCol, Column, State);
end;

end.

