unit UCuentaCorriente_Proveedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt, UBuscarPersona, EKEdit, Buttons,
  EKDbSuma, ComCtrls, EKDBDateTimePicker;

type
  TFCuentaCorriente_Proveedor = class(TForm)
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnVerCtaCte: TdxBarLargeButton;
    btnImprimirRecibo: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    AVerCtaCte: TAction;
    AModificar: TAction;
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
    ZQ_Proveedor: TZQuery;
    DS_Proveedor: TDataSource;
    PanelResumen: TPanel;
    PanelResumen_Abajo: TPanel;
    DBGridResumen_CtaCtes: TDBGrid;
    PanelResumen_Arriba: TPanel;
    ZQ_CtaCte_Gral: TZQuery;
    ZQ_CtaCte_GralLIMITE_DEUDA: TFloatField;
    ZQ_CtaCte_GralSALDO: TFloatField;
    ZQ_CtaCte_GralFECHA_ALTA: TDateField;
    ZQ_CtaCte_GralFECHA_BAJA: TDateField;
    ZQ_CtaCte_GralDEBE: TFloatField;
    ZQ_CtaCte_GralHABER: TFloatField;
    ZQ_CtaCte_GralNOMBRE: TStringField;
    ZQ_CtaCte_GralLOCALIDAD: TStringField;
    ZQ_CtaCte_GralCODIGO_POSTAL: TStringField;
    ZQ_CtaCte_GralCUIT_CUIL: TStringField;
    ZQ_CtaCte_GralBAJA: TStringField;
    ZQ_CtaCte_GralNOMBRE_PROVINCIA: TStringField;
    ZQ_CtaCte_GralNOMBRE_TIPO_IVA: TStringField;
    ZQ_CtaCte_GralCOD_IVA: TStringField;
    DS_CtaCte_Gral: TDataSource;
    ZQ_CtaCte_Proveedor: TZQuery;
    DS_CtaCte_Proveedor: TDataSource;
    EKOrdenar_CtaCteGral: TEKOrdenarGrilla;
    EKOrdenar_CtaCteProveedor: TEKOrdenarGrilla;
    ZQ_CtaCte_GralCODIGO_CORTO: TIntegerField;
    PanelFiltro: TPanel;
    BtnFiltro_Todos: TSpeedButton;
    BtnFiltro_Hoy: TSpeedButton;
    BtnFiltro_EstaSemana: TSpeedButton;
    BtnFiltro_EsteMes: TSpeedButton;
    BtnFiltro_EsteAnio: TSpeedButton;
    Label39: TLabel;
    EKDbSumaCtaCte_Proveedor: TEKDbSuma;
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
    EKEditProv_SaldoFiltro: TEKEdit;
    EKEditProv_HaberFiltro: TEKEdit;
    EKEditProv_DebeFiltro: TEKEdit;
    EKEditProv_CantidadFiltro: TEKEdit;
    ZQ_CtaCte_ProveedorID_COMPROBANTE: TIntegerField;
    ZQ_CtaCte_ProveedorID_CUENTA: TIntegerField;
    ZQ_CtaCte_ProveedorID_VENDEDOR: TIntegerField;
    ZQ_CtaCte_ProveedorID_TIPO_IVA: TIntegerField;
    ZQ_CtaCte_ProveedorID_TIPO_FP: TIntegerField;
    ZQ_CtaCte_ProveedorFECHA: TDateField;
    ZQ_CtaCte_ProveedorOBSERVACION: TStringField;
    ZQ_CtaCte_ProveedorFECHA_FP: TDateField;
    ZQ_CtaCte_ProveedorDEBE: TFloatField;
    ZQ_CtaCte_ProveedorHABER: TFloatField;
    ZQ_CtaCte_ProveedorSALDO_CPB: TFloatField;
    ZQ_CtaCte_ProveedorSALDO: TFloatField;
    ZQ_CtaCte_GralVENCIMIENTO_DIAS: TIntegerField;
    PanelCliente_ResumenTotales: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    EKEditProv_SaldoTotal: TEKEdit;
    EKEditProv_HaberTotal: TEKEdit;
    EKEditProv_DebeTotal: TEKEdit;
    ZQ_CtaCte_ProveedorID_COMPROB_FP: TIntegerField;
    EKBuscarProveedor: TEKBusquedaAvanzada;
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
    EKVistaCtasCtes: TEKVistaPreviaQR;
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
    QRlblPieDePaginaProveedor: TQRLabel;
    QRLabel10: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRProveedor_SaldoFiltro: TQRLabel;
    QRProveedor_HaberFiltro: TQRLabel;
    QRProveedor_DebeFiltro: TQRLabel;
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
    QRlblProveedor_Filtro: TQRLabel;
    QRLabel6: TQRLabel;
    QRProveedor_Debe: TQRLabel;
    QRProveedor_Haber: TQRLabel;
    QRProveedor_Saldo: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    EKVistaProveedor: TEKVistaPreviaQR;
    ZQ_CtaCte_GralID_PROVEEDOR_OUT: TIntegerField;
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
    btnExcel: TdxBarLargeButton;
    PanelSaldoInicial: TPanel;
    lblTituloVentanaFpago: TLabel;
    Label14: TLabel;
    Label29: TLabel;
    DateTimePicker_FechaSaldo: TDateTimePicker;
    EditSaldiIni_Importe: TEdit;
    btnSaldoInicial_Aceptar: TBitBtn;
    btnSaldoInicial_Cancelar: TBitBtn;
    btnSaldoInicial: TdxBarLargeButton;
    ZQ_Insert_SaldoIni: TZQuery;
    ZQ_SaldoIni: TZQuery;
    ZQ_SaldoIniFECHA: TDateTimeField;
    ZQ_SaldoIniFECHA_COBRADA: TDateField;
    ZQ_SaldoIniIMPORTE_TOTAL: TFloatField;
    ZQ_CtaCte_ProveedorTIPO_COMPROBANTE: TStringField;
    ZQ_CtaCte_GralDEUDA_VENCIDA: TStringField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);    
    procedure btnVerCtaCteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    //------TECLAS RAPIDAS
    procedure AVerCtaCteExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirReciboClick(Sender: TObject);
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
  private
    vsel: TFBuscarPersona;
    viendoResumen: boolean;
  public
  end;

var
  FCuentaCorriente_Proveedor: TFCuentaCorriente_Proveedor;

const
  transaccion = 'CTA CTE PROVEEDOR';

implementation

uses UPrincipal, UDM, DateUtils, UImpresion_Comprobantes, UCuentaCorriente;

{$R *.dfm}

procedure TFCuentaCorriente_Proveedor.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  EKOrdenar_CtaCteGral.GuardarConfigColumnas;
  EKOrdenar_CtaCteProveedor.GuardarConfigColumnas;

  CanClose:= FPrincipal.cerrar_ventana(transaccion);
end;


procedure TFCuentaCorriente_Proveedor.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFCuentaCorriente_Proveedor.btnBuscarClick(Sender: TObject);
begin
  if EKBuscarProveedor.Buscar then
    calcularTotales('GENERAL');
end;


procedure TFCuentaCorriente_Proveedor.btnVerCtaCteClick(Sender: TObject);
begin
  if viendoResumen then
  begin
    PanelProveedor.BringToFront;
    viendoResumen:= false;
    btnSaldoInicial.Enabled:= true;
    btnVerCtaCte.Caption:= 'F2 - Ver Resumen';
    btnVerCtaCte.Hint:= 'Ver el resumen de cuenta corriente de todos los proveedores';
    btnBuscar.Enabled:= false;

    ZQ_Proveedor.Close;
    ZQ_Proveedor.ParamByName('id_proveedor').AsInteger:= ZQ_CtaCte_GralID_PROVEEDOR_OUT.AsInteger;
    ZQ_Proveedor.Open;

    AplicarFiltro(BtnFiltro_Todos);

    DBGridProveedor_CtaCte.SetFocus;
  end
  else
  begin
    PanelResumen.BringToFront;
    viendoResumen:= true;
    btnSaldoInicial.Enabled:= false;
    btnVerCtaCte.Caption:= 'F2 - Ver Cta Cte';
    btnVerCtaCte.Hint:= 'Ver la cuenta corriente del proveedor seleccionado';
    btnBuscar.Enabled:= true;

    DBGridResumen_CtaCtes.SetFocus;
  end;
end;


procedure TFCuentaCorriente_Proveedor.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  QRDBLogo2.DataSet:= DM.ZQ_Sucursal;  

  EKOrdenar_CtaCteGral.CargarConfigColumnas;
  EKOrdenar_CtaCteProveedor.CargarConfigColumnas;

  FPrincipal.Iconos_Menu_16.GetBitmap(0, btnFiltroFecha_Cancelar.Glyph);
  FPrincipal.Iconos_Menu_16.GetBitmap(1, btnFiltroFecha_Aceptar.Glyph);

  FPrincipal.Iconos_Menu_16.GetBitmap(0, btnSaldoInicial_Cancelar.Glyph);
  FPrincipal.Iconos_Menu_16.GetBitmap(1, btnSaldoInicial_Aceptar.Glyph);

  EKDBDateTime_FiltroDesde.Date:= dm.EKModelo.Fecha;
  EKDBDateTime_FiltroHasta.Date:= dm.EKModelo.Fecha;

  PanelResumen.BringToFront;
  viendoResumen:= true;
  btnSaldoInicial.Enabled:= false;

  ZQ_CtaCte_Gral.Close;
//  ZQ_CtaCte_Gral.ParamByName('id_cliente').clear;
  ZQ_CtaCte_Gral.ParamByName('id_proveedor').AsInteger:= -1;
  ZQ_CtaCte_Gral.Open;

  calcularTotales('GENERAL');
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFCuentaCorriente_Proveedor.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFCuentaCorriente_Proveedor.AVerCtaCteExecute(Sender: TObject);
begin
  if btnVerCtaCte.Enabled then
    btnVerCtaCte.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFCuentaCorriente_Proveedor.btnImprimirReciboClick(Sender: TObject);
begin
  if ZQ_CtaCte_Proveedor.IsEmpty or ZQ_CtaCte_ProveedorID_COMPROB_FP.IsNull then
    exit;

  if not Assigned(FImpresion_Comprobantes) then
    FImpresion_Comprobantes := TFImpresion_Comprobantes.Create(nil);
  FImpresion_Comprobantes.cargarDatos(ZQ_CtaCte_ProveedorID_COMPROB_FP.AsInteger, 0, ZQ_ProveedorID_EMPRESA.AsInteger, true);
  FImpresion_Comprobantes.imprimir;
end;


procedure TFCuentaCorriente_Proveedor.DBGridResumen_CtaCtesDblClick(Sender: TObject);
begin
  btnVerCtaCte.Click;
end;


procedure TFCuentaCorriente_Proveedor.AplicarFiltro(Sender: TObject);
var
  hoy: Tdate;
  diasDesdeUltimaSemana, diasDesdeUltimoMes, diasDesdeUltimoAnio: integer;
  debe, haber, saldo: Double;
begin
  hoy:= dm.EKModelo.Fecha;

  ZQ_CtaCte_Proveedor.ParamByName('id_cliente').clear;
  ZQ_CtaCte_Proveedor.ParamByName('id_proveedor').AsInteger:= ZQ_CtaCte_GralID_PROVEEDOR_OUT.AsInteger;
  ZQ_CtaCte_Proveedor.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;

  if TSpeedButton (Sender).Name = 'BtnFiltro_Todos' then
  begin
    ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate:= EncodeDate(1000,1,1);
    ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate:= EncodeDate(3000,1,1);
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_Hoy' then
  begin
    ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate:= hoy;
    ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_EstaSemana' then //la semana comienza el lunesa
  begin
    diasDesdeUltimaSemana:= DayOfTheWeek(hoy) - 1;
    ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate:= IncDay(hoy, -diasDesdeUltimaSemana);
    ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_EsteMes' then
  begin
    ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate:= EncodeDate(YearOf(hoy), MonthOf(hoy), 1);
    ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_EsteAnio' then
  begin
    ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate:= EncodeDate(YearOf(hoy), 1, 1);
    ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate:= hoy;
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_PorFecha' then
  begin
    PanelProveedor.Enabled:= false;

    dm.centrarPanel(FCuentaCorriente_Proveedor, PanelFiltroFechas);

    PanelFiltroFechas.BringToFront;
    PanelFiltroFechas.Visible:= true;

    EKDBDateTime_FiltroDesde.SetFocus;
    GrupoEditando.Enabled:= false;
    exit;
  end;

  if TSpeedButton (Sender).Name = 'BtnFiltro_Todos' then
    lblFiltro_Fechas.Caption:= 'Viendo Todo'  
  else
    lblFiltro_Fechas.Caption:= 'Viendo Desde: '+DateToStr(ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate)+' - Hasta: '+DateToStr(ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate);

  ZQ_CtaCte_Proveedor.Close;
  ZQ_CtaCte_Proveedor.Open;

  calcularTotales('PROVEEDOR');
end;


procedure TFCuentaCorriente_Proveedor.calcularTotales(tipo: string);
var
  debeFilro, haberFiltro, saldoFiltro: Double;
  debeTotal, haberTotal, saldoTotal: Double;
begin
  if tipo = 'GENERAL' then
  begin
    EKDbSumaCtaCte_Gral.RecalcAll;
    EKEditResumen_Cantidad.Text:= IntToStr(ZQ_CtaCte_Gral.RecordCount);
    EKEditResumen_Debe.Text:=  FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Gral.SumCollection.Items[0].SumValue);
    EKEditResumen_Haber.Text:= FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Gral.SumCollection.Items[1].SumValue);
    EKEditResumen_Saldo.Text:= FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Gral.SumCollection.Items[2].SumValue);
  end;

  if tipo = 'PROVEEDOR' then
  begin
    debeFilro:= EKDbSumaCtaCte_Proveedor.SumCollection.Items[0].SumValue;
    haberFiltro:= EKDbSumaCtaCte_Proveedor.SumCollection.Items[1].SumValue;
    saldoFiltro:= debeFilro - haberFiltro;

    ZQ_CtaCte_Gral.Locate('ID_PROVEEDOR_OUT', ZQ_CtaCte_Proveedor.ParamByName('id_proveedor').AsInteger, []);
    debeTotal:= ZQ_CtaCte_GralDEBE.AsFloat;
    haberTotal:= ZQ_CtaCte_GralHABER.AsFloat;
    saldoTotal:= ZQ_CtaCte_GralSALDO.AsFloat;

    EKDbSumaCtaCte_Proveedor.RecalcAll;
    EKEditProv_CantidadFiltro.Text:= IntToStr(ZQ_CtaCte_Proveedor.RecordCount);
    EKEditProv_DebeFiltro.Text:=  FormatFloat('$ ###,###,##0.00', debeFilro);
    EKEditProv_HaberFiltro.Text:= FormatFloat('$ ###,###,##0.00', haberFiltro);
    EKEditProv_SaldoFiltro.Text:= FormatFloat('$ ###,###,##0.00', saldoFiltro);

    EKEditProv_DebeTotal.Text:=  FormatFloat('$ ###,###,##0.00', debeTotal);
    EKEditProv_HaberTotal.Text:= FormatFloat('$ ###,###,##0.00', haberTotal);
    EKEditProv_SaldoTotal.Text:= FormatFloat('$ ###,###,##0.00', saldoTotal);
  end;
end;


procedure TFCuentaCorriente_Proveedor.btnFiltroFecha_CancelarClick(Sender: TObject);
begin
  PanelFiltroFechas.Visible:= false;
  PanelProveedor.Enabled:= true;
  GrupoEditando.Enabled:= true;
end;


procedure TFCuentaCorriente_Proveedor.btnFiltroFecha_AceptarClick(Sender: TObject);
begin
  ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate:= EKDBDateTime_FiltroDesde.Date;
  ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate:= EKDBDateTime_FiltroHasta.Date;
  ZQ_CtaCte_Proveedor.Close;
  ZQ_CtaCte_Proveedor.Open;

  calcularTotales('PROVEEDOR');

  lblFiltro_Fechas.Caption:= 'Viendo Desde: '+DateToStr(ZQ_CtaCte_Proveedor.ParamByName('fecha_desde').AsDate)+' - Hasta: '+DateToStr(ZQ_CtaCte_Proveedor.ParamByName('fecha_hasta').AsDate);

  PanelFiltroFechas.Visible:= false;
  PanelProveedor.Enabled:= true;
  GrupoEditando.Enabled:= true; 
end;


procedure TFCuentaCorriente_Proveedor.FormResize(Sender: TObject);
begin
  if PanelFiltroFechas.Visible then
    dm.centrarPanel(FCuentaCorriente_Proveedor, PanelFiltroFechas);

  if PanelSaldoInicial.Visible then
    dm.centrarPanel(FCuentaCorriente, PanelSaldoInicial);
end;


procedure TFCuentaCorriente_Proveedor.btnImprimirClick(Sender: TObject);
begin
  if viendoResumen then
  begin
    if ZQ_CtaCte_Gral.IsEmpty then
      exit;

    DM.VariablesReportes(RepCtasCtes);
    QRlblPieDePaginaCtasCtes.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
    QRLabelCritBusquedaCtasCtes.Caption := EKBuscarProveedor.ParametrosBuscados;

    QRCtasCtes_TotalDebe.Caption:=  FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Gral.SumCollection.Items[0].SumValue);
    QRCtasCtes_TotalHaber.Caption:=  FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Gral.SumCollection.Items[1].SumValue);
    QRCtasCtes_TotalSaldo.Caption:=  FormatFloat('$ ###,###,##0.00', EKDbSumaCtaCte_Gral.SumCollection.Items[2].SumValue);

    EKVistaCtasCtes.VistaPrevia;
  end
  else
  begin
    if ZQ_CtaCte_Proveedor.IsEmpty then
      exit;

    DM.VariablesReportes(RepProveedor);
    QRlblPieDePaginaProveedor.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);

    QRlblProveedor_Filtro.Caption:= lblFiltro_Fechas.Caption;

    QRProveedor_DebeFiltro.Caption:= EKEditProv_DebeFiltro.Text;
    QRProveedor_HaberFiltro.Caption:= EKEditProv_HaberFiltro.Text;
    QRProveedor_SaldoFiltro.Caption:= EKEditProv_SaldoFiltro.Text;

    QRProveedor_Debe.Caption:= EKEditProv_DebeTotal.Text;
    QRProveedor_Haber.Caption:= EKEditProv_HaberTotal.Text;
    QRProveedor_Saldo.Caption:= EKEditProv_SaldoTotal.Text;

    EKVistaProveedor.VistaPrevia;
  end
end;


procedure TFCuentaCorriente_Proveedor.DBGridProveedor_CtaCteDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridProveedor_CtaCte, Rect, DataCol, Column, State);
end;


procedure TFCuentaCorriente_Proveedor.DBGridResumen_CtaCtesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(DBGridResumen_CtaCtes, ZQ_CtaCte_GralDEUDA_VENCIDA.AsString, Rect, DataCol, Column, State);
end;


procedure TFCuentaCorriente_Proveedor.btnExcelClick(Sender: TObject);
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


procedure TFCuentaCorriente_Proveedor.btnSaldoInicialClick(Sender: TObject);
begin
  ZQ_SaldoIni.Close;
  ZQ_SaldoIni.ParamByName('id_proveedor').AsInteger:= ZQ_ProveedorID_EMPRESA.AsInteger;
  ZQ_SaldoIni.Open;

  GrupoEditando.Enabled:= false;
  PanelProveedor.Enabled:= false;
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
    EditSaldiIni_Importe.Text:=  ZQ_SaldoIniIMPORTE_TOTAL.AsString;
  end;

  DateTimePicker_FechaSaldo.SetFocus;
end;

procedure TFCuentaCorriente_Proveedor.btnSaldoInicial_CancelarClick(Sender: TObject);
begin
  PanelSaldoInicial.Visible:= false;
  PanelProveedor.Enabled:= true;
  GrupoEditando.Enabled:= true;
end;

procedure TFCuentaCorriente_Proveedor.btnSaldoInicial_AceptarClick(Sender: TObject);
var
  saldo_ini: Double;
  recNo: integer;
begin
  try
    saldo_ini:= StrToFloat(EditSaldiIni_Importe.Text);

    if dm.EKModelo.iniciar_transaccion(transaccion, []) then
    begin
      ZQ_Insert_SaldoIni.Close;
      ZQ_Insert_SaldoIni.ParamByName('id_cliente').Clear;
      ZQ_Insert_SaldoIni.ParamByName('id_proveedor').AsInteger:= ZQ_ProveedorID_EMPRESA.AsInteger;
      ZQ_Insert_SaldoIni.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
      ZQ_Insert_SaldoIni.ParamByName('saldo_inicial').AsFloat:= saldo_ini;
      ZQ_Insert_SaldoIni.ParamByName('fecha').AsDateTime:= DateTimePicker_FechaSaldo.DateTime;
      ZQ_Insert_SaldoIni.ExecSQL;

      if not DM.EKModelo.finalizar_transaccion(transaccion) then
        DM.EKModelo.cancelar_transaccion(transaccion)
    end;

    PanelSaldoInicial.Visible:= false;
    PanelProveedor.Enabled:= true;
    GrupoEditando.Enabled:= true;

    recno:= ZQ_CtaCte_Gral.RecNo;
    ZQ_CtaCte_Gral.Refresh;
    ZQ_CtaCte_Gral.RecNo:= recNo;

    AplicarFiltro(BtnFiltro_Todos);
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;
end;

end.
