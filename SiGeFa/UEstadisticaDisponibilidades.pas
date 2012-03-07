unit UEstadisticaDisponibilidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZStoredProcedure,
  EKBusquedaAvanzada, StdCtrls, EKDbSuma, QRCtrls, QuickRpt,
  EKVistaPreviaQR, DBCtrls, EKOrdenarGrilla, ActnList, XPStyleActnCtrls,
  ActnMan, Series, TeEngine, TeeProcs, Chart, DbChart;

type
  TFEstadisticaDisponibilidades = class(TForm)
    PanelContenedor: TPanel;
    PageControl: TPageControl;
    TabSaldosCuentas: TTabSheet;
    TabDetalleMov: TTabSheet;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    ZP_SaldosCuentas: TZStoredProc;
    DS_SaldosCuentas: TDataSource;
    DBGridSaldoCuentas: TDBGrid;
    ZP_SaldosCuentasID_CUENTA: TIntegerField;
    ZP_SaldosCuentasCODIGO: TStringField;
    ZP_SaldosCuentasNOMBRE_CUENTA: TStringField;
    ZP_SaldosCuentasNRO_CTA_BANCO: TStringField;
    ZP_SaldosCuentasIMPORTE: TFloatField;
    EKBuscarSaldo: TEKBusquedaAvanzada;
    ZQ_Sucursal: TZQuery;
    ZQ_SucursalID_SUCURSAL: TIntegerField;
    ZQ_SucursalNOMBRE: TStringField;
    ZQ_SucursalDIRECCION: TStringField;
    ZQ_SucursalLOCALIDAD: TStringField;
    ZQ_SucursalCODIGO_POSTAL: TStringField;
    ZQ_SucursalTELEFONO: TStringField;
    ZQ_SucursalEMAIL: TStringField;
    ZQ_SucursalBAJA: TStringField;
    ZQ_SucursalLOGO: TBlobField;
    ZQ_SucursalREPORTE_TITULO: TStringField;
    ZQ_SucursalREPORTE_SUBTITULO: TStringField;
    ZQ_SucursalCOMPROBANTE_TITULO: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON1: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON2: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON3: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON4: TStringField;
    PanelTituloSaldo: TPanel;
    PanelResumenSaldo: TPanel;
    lblSaldo_Total: TLabel;
    lblSaldo_Encabezado2: TLabel;
    lblSaldo_Encabezado1: TLabel;
    PanelTituloDetalleMov: TPanel;
    DBGridEstadisticaDetMov: TDBGrid;
    EKDbSuma_Saldo: TEKDbSuma;
    RepSaldo: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepSaldo_Subtitulo: TQRLabel;
    RepSaldo_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand11: TQRBand;
    QRlblRepSaldo_PieDePagina: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand12: TQRBand;
    QRExpr18: TQRExpr;
    TitleBand2: TQRBand;
    QRlblRepSaldo_CritBusqueda: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel48: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRlblRepSaldo_SaldoTotal: TQRLabel;
    EKVista_RepSaldo: TEKVistaPreviaQR;
    TabParteDiario: TTabSheet;
    panel_cerrar: TPanel;
    EKBuscarParteDiario: TEKBusquedaAvanzada;
    ZP_estadistica_Parte_Diario: TZStoredProc;
    ZP_Estadistica_IE_Medios: TZStoredProc;
    ZP_estadistica_Parte_DiarioSALDO_INICIAL: TFloatField;
    ZP_estadistica_Parte_DiarioSALDO: TFloatField;
    ZP_estadistica_Parte_DiarioTOTAL_INGRESO: TFloatField;
    ZP_estadistica_Parte_DiarioTOTAL_EGRESO: TFloatField;
    ZP_Estadistica_IE_MediosTOTAL_EGRESO: TFloatField;
    ZP_Estadistica_IE_MediosTOTAL_INGRESO: TFloatField;
    ZP_Estadistica_IE_MediosDESCRIPCION: TStringField;
    DS_estadistica_Parte_Diario: TDataSource;
    DS_Estadistica_IE_Medios: TDataSource;
    EKDbSuma_ParteDiario: TEKDbSuma;
    ZP_Estadistica_Det_Mov: TZStoredProc;
    DS_Estadistica_Det_Mov: TDataSource;
    ZP_Estadistica_Det_MovIMPORTE_VENTA: TFloatField;
    ZP_Estadistica_Det_MovNUMERO_CPB: TIntegerField;
    ZP_Estadistica_Det_MovPUNTO_VENTA: TIntegerField;
    ZP_Estadistica_Det_MovCODIGO: TStringField;
    ZP_Estadistica_Det_MovFECHA: TDateTimeField;
    ZP_Estadistica_Det_MovOBSERVACION: TStringField;
    ZP_Estadistica_Det_MovTIPO_COMPROBANTE: TStringField;
    ZP_Estadistica_Det_MovTIPO_MOVIMIENTO: TStringField;
    ZP_Estadistica_Det_MovNOMBRE_ENTIDAD: TStringField;
    EKBuscarDetMov: TEKBusquedaAvanzada;
    EKOrdenarGrillaDetMov: TEKOrdenarGrilla;
    RepParteDiario: TQuickRep;
    QRBand14: TQRBand;
    RepParteDiario_Titulo: TQRLabel;
    RepParteDiario_Subtitulo: TQRLabel;
    QRLabel68: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText33: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRLblPD_TotalIngreso: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel3: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRSubDetail4: TQRSubDetail;
    QRLabelImporteSaldo: TQRLabel;
    ChildBand2: TQRChildBand;
    ChildBand3: TQRChildBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    EKVista_RepParteDiario: TEKVistaPreviaQR;
    QRLabelEncabezadoParteDiario: TQRLabel;
    QRLabelSucursalParteDiario: TQRLabel;
    RepDetalleMov: TQuickRep;
    QRBand2: TQRBand;
    QRDBLogo3: TQRDBImage;
    QRLabel8: TQRLabel;
    RepDetalleMov_Subtitulo: TQRLabel;
    RepDetalleMov_Titulo: TQRLabel;
    QRBand3: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRBand6: TQRBand;
    QRlblRepDetMov_CritBusqueda: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    EKVista_RepDetMov: TEKVistaPreviaQR;
    PageFooterBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRSysData3: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText22: TQRDBText;
    QRGroupFooter: TQRBand;
    PageFooterBand2: TQRBand;
    ChildBand4: TQRChildBand;
    QRLabel31: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRlblRepDetalleMov_PieDePagina: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBLogo2: TQRDBImage;
    QRlblRepParteDiario_PieDePagina: TQRLabel;
    lblEncabezadoDetMov: TLabel;
    lblSucursalDetMov: TLabel;
    panelPD_Resumen: TPanel;
    lblSaldo_TotalParteDiario: TLabel;
    panelPD_InfoBusqueda: TPanel;
    lblSucursal: TLabel;
    lblEncabezadoParteDiario: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    GroupBox3: TGroupBox;
    Label15: TLabel;
    DBText9: TDBText;
    Label7: TLabel;
    DBText10: TDBText;
    Label8: TLabel;
    DBText11: TDBText;
    DBText19: TDBText;
    Label16: TLabel;
    DBGridPD_MediosDePago: TDBGrid;
    Label17: TLabel;
    DBGridPD_SaldoCuentas: TDBGrid;
    Panel12: TPanel;
    Label18: TLabel;
    Label1: TLabel;
    Shape1: TShape;
    lblPD_totalTransfer: TLabel;
    PanelResumenDetalleMov: TPanel;
    lblResumenDetalleMovimiento: TLabel;
    lblPD_totalEgreso: TLabel;
    QRLblPD_TotalEgreso: TQRLabel;
    EKSumaPD_SaldoCta: TEKDbSuma;
    EKOrdenarGrillaSaldos: TEKOrdenarGrilla;
    EKOrdenarGrillaPD_Saldo: TEKOrdenarGrilla;
    ZP_Estadistica_IE_MediosTOTAL_TRANSFERENCIA: TFloatField;
    ZP_estadistica_Parte_DiarioTOTAL_TRANSFERENCIA: TFloatField;
    lblPD_totalIngreso: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    QRLabel16: TQRLabel;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLblPD_TotalTransfer: TQRLabel;
    QRLabel19: TQRLabel;
    ZP_estadistica_Parte_DiarioTOTAL_NOTA_CREDITO: TFloatField;
    ZP_estadistica_Parte_DiarioTOTAL_CTA_CTE_CLIENTE: TFloatField;
    ZP_estadistica_Parte_DiarioTOTAL_CTA_CTE_PROVEEDOR: TFloatField;
    Label3: TLabel;
    DBText2: TDBText;
    Label9: TLabel;
    DBText3: TDBText;
    Label10: TLabel;
    DBText4: TDBText;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    QRLabel20: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText27: TQRDBText;
    QRShape1: TQRShape;
    Shape2: TShape;
    DBGridMovFPago: TDBGrid;
    Splitter1: TSplitter;
    ZQ_MovFormaPago: TZQuery;
    DS_MovFormaPago: TDataSource;
    ZP_Estadistica_Det_MovID_COMPROBANTE: TIntegerField;
    ZQ_MovFormaPagoTIPOFORMAPAGO: TStringField;
    ZQ_MovFormaPagoIMPORTE_REAL: TFloatField;
    ZQ_MovFormaPagoCUENTA: TStringField;
    EKOrdenarMovFPago: TEKOrdenarGrilla;
    btnExcel: TdxBarLargeButton;
    TabBalance: TTabSheet;
    PanelMes: TPanel;
    DBGridBalance: TDBGrid;
    PanelMes_Resumen: TPanel;
    Label11: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    Shape3: TShape;
    lblBalanceTotalIngresos: TLabel;
    lblBalanceTotalEgresos: TLabel;
    lblBalanceSaldoFinal: TLabel;
    lblBalanceSaldoInicial: TLabel;
    Panel5: TPanel;
    lblBalanceTipoComprobante: TLabel;
    lblBalanceFecha: TLabel;
    RepBalance: TQuickRep;
    QRBand4: TQRBand;
    QRDBLogo4: TQRDBImage;
    QRLabel33: TQRLabel;
    RepBalance_Subtitulo: TQRLabel;
    RepBalance_Titulo: TQRLabel;
    QRBand5: TQRBand;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRBand7: TQRBand;
    QRlblRepBalance_PieDePagina: TQRLabel;
    QRLabel34: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand8: TQRBand;
    QRExpr1: TQRExpr;
    QRlblRepBalance_SaldoIni: TQRLabel;
    QRlblRepBalance_Ingresos: TQRLabel;
    QRlblRepBalance_Egresos: TQRLabel;
    QRlblRepBalance_SaldoFinal: TQRLabel;
    QRBand13: TQRBand;
    QRlblRepBalance_CritBusqueda: TQRLabel;
    QRLabel35: TQRLabel;
    QRBand15: TQRBand;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    lblBalanceSucursal: TLabel;
    ZS_Balance: TZStoredProc;
    ZS_BalanceFECHA: TDateField;
    ZS_BalanceINGRESO: TFloatField;
    ZS_BalanceEGRESO: TFloatField;
    ZS_BalanceSALDO: TFloatField;
    ZS_BalanceSALDODIARIO: TFloatField;
    DS_Balance: TDataSource;
    EKSuma_Balance: TEKDbSuma;
    EKBuscarBalance: TEKBusquedaAvanzada;
    EKVistaBalance: TEKVistaPreviaQR;
    TabBalanceGrafico: TTabSheet;
    DBChartBalance: TDBChart;
    Series4: TFastLineSeries;
    Series2: TPointSeries;
    Series5: TFastLineSeries;
    Series3: TPointSeries;
    ZS_CalcSaldos: TZStoredProc;
    ZS_CalcSaldosFECHA: TDateField;
    ZS_CalcSaldosINGRESO: TFloatField;
    ZS_CalcSaldosEGRESO: TFloatField;
    ZS_CalcSaldosSALDO: TFloatField;
    ZS_CalcSaldosSALDODIARIO: TFloatField;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    TabDetalleCuenta: TTabSheet;
    DBGridDetalleCuentasFPago: TDBGrid;
    PanelResumenDetalleCta: TPanel;
    lblResumenDetalleCta: TLabel;
    PanelTituloDetalleCta: TPanel;
    lblTituloDetalleCta2: TLabel;
    lblTituloDetalleCta1: TLabel;
    Splitter2: TSplitter;
    Label13: TLabel;
    lblSaldoFinalMenosInicial: TLabel;
    ZQ_SaldoCuenta_PDiario: TZQuery;
    ZQ_SaldoCuenta_PDiarioID_CUENTA: TIntegerField;
    ZQ_SaldoCuenta_PDiarioCODIGO: TStringField;
    ZQ_SaldoCuenta_PDiarioNOMBRE_CUENTA: TStringField;
    ZQ_SaldoCuenta_PDiarioNRO_CTA_BANCO: TStringField;
    ZQ_SaldoCuenta_PDiarioSALDO: TFloatField;
    DS_SaldoCuenta_PDiario: TDataSource;
    ZQ_SaldoCuenta_PDiarioDIFERENCIA: TFloatField;
    ZQ_SaldoCuenta_PDiarioSALDO_ANT: TFloatField;
    QRLabel46: TQRLabel;
    QRLabelDiferenciaSaldos: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabelDiferenciaCuenta: TQRLabel;
    QRLabel47: TQRLabel;
    DBGridDetalleCuentas: TDBGrid;
    ZQ_Detalle_Cuenta: TZQuery;
    DS_Detalle_Cuenta: TDataSource;
    ZP_Detalle_Cuenta_FPago: TZStoredProc;
    DS_Detalle_Cuenta_FPago: TDataSource;
    ZP_Detalle_Cuenta_FPagoTOTAL_EGRESO: TFloatField;
    ZP_Detalle_Cuenta_FPagoTOTAL_INGRESO: TFloatField;
    ZP_Detalle_Cuenta_FPagoDESCRIPCION: TStringField;
    ZP_Detalle_Cuenta_FPagoTOTAL_TRANSF_EXTRACCION: TFloatField;
    ZP_Detalle_Cuenta_FPagoTOTAL_TRANSF_DEPOSITO: TFloatField;
    EKBuscarDetalleCuenta: TEKBusquedaAvanzada;
    ZQ_Detalle_CuentaID_CUENTA: TIntegerField;
    ZQ_Detalle_CuentaCODIGO: TStringField;
    ZQ_Detalle_CuentaNOMBRE_CUENTA: TStringField;
    ZQ_Detalle_CuentaNRO_CTA_BANCO: TStringField;
    ZQ_Detalle_CuentaSALDO: TFloatField;
    ZQ_Detalle_CuentaSALDO_ANT: TFloatField;
    ZQ_Detalle_CuentaDIFERENCIA: TFloatField;
    ZP_Estadistica_Det_MovSUCURSAL: TStringField;
    Label6: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    ZS_BalanceTRANSF_INGRESO: TFloatField;
    ZS_BalanceTRANSF_EGRESO: TFloatField;
    ZS_CalcSaldosTRANSF_INGRESO: TFloatField;
    ZS_CalcSaldosTRANSF_EGRESO: TFloatField;
    ZQ_Cuentas: TZQuery;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasMEDIO_DEFECTO: TIntegerField;
    ZQ_CuentasCODIGO: TStringField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasNRO_CTA_BANCARIA: TStringField;
    ZQ_CuentasBAJA: TStringField;
    ZQ_CuentasID_SUCURSAL: TIntegerField;
    ZQ_CuentasA_CTA_CORRIENTE: TStringField;
    ZQ_CuentasA_NOTA_CREDITO: TStringField;
    ZQ_CuentasMODIFICABLE: TStringField;
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ABuscarExecute(Sender: TObject);
    procedure ZP_Estadistica_Det_MovAfterScroll(DataSet: TDataSet);
    procedure btnExcelClick(Sender: TObject);
    procedure abrirBalance(tipo: integer; fecha_desde: Tdate;  fecha_hasta: TDate; id_sucursal: integer; id_cuenta: integer);
    procedure calcularResumenBalance(tipo: integer; fecha_desde: Tdate;  fecha_hasta: TDate; id_sucursal: integer; id_cuenta: integer);
    procedure ZQ_Detalle_CuentaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstadisticaDisponibilidades: TFEstadisticaDisponibilidades;

implementation

uses UDM, UPrincipal, DateUtils;

{$R *.dfm}

procedure TFEstadisticaDisponibilidades.FormCreate(Sender: TObject);
var
  anio, mes, indice_suc: integer;
begin
//  TabDetalleCuenta.TabVisible:= false;

  QRDBLogo.DataSet:= dm.ZQ_Sucursal;
  QRDBLogo2.DataSet:= dm.ZQ_Sucursal;
  QRDBLogo3.DataSet:= dm.ZQ_Sucursal;
  QRDBLogo4.DataSet:= dm.ZQ_Sucursal;  

  EKOrdenarGrillaDetMov.CargarConfigColumnas;
  EKOrdenarGrillaSaldos.CargarConfigColumnas;
  EKOrdenarGrillaPD_Saldo.CargarConfigColumnas;
  EKOrdenarMovFPago.CargarConfigColumnas;

  PageControl.ActivePageIndex:= 0;
  dm.EKModelo.abrir(ZQ_Sucursal);
  ZQ_Cuentas.Open;
  ZQ_Cuentas.Append;
  ZQ_CuentasID_CUENTA.AsInteger:= -1;
  ZQ_CuentasNOMBRE_CUENTA.AsString:= 'TODAS';

  lblSaldo_Total.Caption:= '';
  lblSaldo_Encabezado1.Caption:= '';
  lblSaldo_Encabezado2.Caption:= '';
  lblEncabezadoParteDiario.Caption := '';
  lblSaldo_TotalParteDiario.Caption := '';
  lblSucursal.Caption := '';
  lblPD_totalIngreso.Caption := '';
  lblPD_totalEgreso.Caption := '';
  lblPD_totalTransfer.Caption := '';  
  lblEncabezadoDetMov.Caption := '';
  lblSucursalDetMov.Caption := '';
  lblResumenDetalleMovimiento.Caption := '';
  lblBalanceFecha.Caption:= '';
  lblBalanceSucursal.Caption:= '';
  lblBalanceTipoComprobante.Caption:= '';
  lblTituloDetalleCta1.Caption := '';
  lblTituloDetalleCta2.Caption := '';

  mes:= MonthOf(dm.EKModelo.Fecha);
  anio:= YearOf(dm.EKModelo.Fecha);

  TEKCriterioBA(EKBuscarSaldo.CriteriosBusqueda.Items[0]).TipoComboSQL:= dm.ZQ_SucursalesVisibles;
  TEKCriterioBA(EKBuscarParteDiario.CriteriosBusqueda.Items[0]).TipoComboSQL:= dm.ZQ_SucursalesVisibles;
  TEKCriterioBA(EKBuscarDetalleCuenta.CriteriosBusqueda.Items[0]).TipoComboSQL:= dm.ZQ_SucursalesVisibles;
  TEKCriterioBA(EKBuscarDetMov.CriteriosBusqueda.Items[0]).TipoComboSQL:= dm.ZQ_SucursalesVisibles;
  TEKCriterioBA(EKBuscarBalance.CriteriosBusqueda.Items[0]).TipoComboSQL:= dm.ZQ_SucursalesVisibles;

  if dm.ZQ_SucursalesVisibles.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    indice_suc:= dm.ZQ_SucursalesVisibles.RecNo - 1
  else
    indice_suc:= 0;

  TEKCriterioBA(EKBuscarSaldo.CriteriosBusqueda.Items[0]).ItemIndex:= indice_suc;
  TEKCriterioBA(EKBuscarSaldo.CriteriosBusqueda.Items[1]).Valor := DateToStr(dm.EKModelo.FechayHora);

  TEKCriterioBA(EKBuscarParteDiario.CriteriosBusqueda.Items[0]).ItemIndex:= indice_suc;
  TEKCriterioBA(EKBuscarParteDiario.CriteriosBusqueda.Items[1]).Valor := DateToStr(dm.EKModelo.Fecha);
  TEKCriterioBA(EKBuscarParteDiario.CriteriosBusqueda.Items[2]).Valor := DateToStr(dm.EKModelo.Fecha);

  TEKCriterioBA(EKBuscarDetalleCuenta.CriteriosBusqueda.Items[0]).ItemIndex:= indice_suc;
  TEKCriterioBA(EKBuscarDetalleCuenta.CriteriosBusqueda.Items[1]).Valor := DateToStr(dm.EKModelo.Fecha);
  TEKCriterioBA(EKBuscarDetalleCuenta.CriteriosBusqueda.Items[2]).Valor := DateToStr(dm.EKModelo.Fecha);

  TEKCriterioBA(EKBuscarDetMov.CriteriosBusqueda.Items[0]).ItemIndex:= indice_suc;
  TEKCriterioBA(EKBuscarDetMov.CriteriosBusqueda.Items[1]).Valor := DateToStr(dm.EKModelo.Fecha);
  TEKCriterioBA(EKBuscarDetMov.CriteriosBusqueda.Items[2]).Valor := DateToStr(dm.EKModelo.Fecha);

  TEKCriterioBA(EKBuscarBalance.CriteriosBusqueda.Items[0]).ItemIndex:= indice_suc;
  TEKCriterioBA(EKBuscarBalance.CriteriosBusqueda.Items[2]).Valor := (DateToStr(EncodeDate(anio, mes, 1)));
  TEKCriterioBA(EKBuscarBalance.CriteriosBusqueda.Items[3]).Valor := DateToStr(dm.EKModelo.FechayHora);
end;


procedure TFEstadisticaDisponibilidades.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFEstadisticaDisponibilidades.btnBuscarClick(Sender: TObject);
var
  id_cuenta, id_sucursal: integer;
begin
//SALDO DE CUENTAS
  if PageControl.ActivePage = TabSaldosCuentas then
  begin
    lblSaldo_Total.Caption := '';
    lblSaldo_Encabezado2.Caption := '';
    lblSaldo_Encabezado1.Caption := '';

    if  EKBuscarSaldo.BuscarSinEjecutar then
      if EKBuscarSaldo.ParametrosSeleccionados1[1] = '' then
      begin
        Application.MessageBox('No se ha cargado la fecha', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        id_sucursal:= -1;
        if EKBuscarSaldo.ParametrosSeleccionados1[0] <> '0' then
          id_sucursal:= StrToInt(EKBuscarSaldo.ParametrosSeleccionados1[0]);

        ZP_SaldosCuentas.Close;
        ZP_SaldosCuentas.ParamByName('id_sucursal').AsInteger:= id_sucursal;
        ZP_SaldosCuentas.ParamByName('fecha_hasta').AsDate := StrToDate(EKBuscarSaldo.ParametrosSeleccionados1[1]);
        ZP_SaldosCuentas.Open;

        lblSaldo_Encabezado1.Caption:= 'Saldo Cuentas al '+EKBuscarSaldo.ParametrosSeleccionados1[1];
        lblSaldo_Encabezado2.Caption:= 'Sucursal: '+EKBuscarSaldo.ParametrosSelecReales1[0];
        lblSaldo_Total.Caption:= 'Saldo Total: '+FormatFloat('$ ###,###,##0.00', EKDbSuma_Saldo.SumCollection.Items[0].SumValue);
      end;
  end;

//PARTE DIARIO
  if PageControl.ActivePage = TabParteDiario then
  begin
    lblEncabezadoParteDiario.Caption := '';
    lblSaldo_TotalParteDiario.Caption := '';
    lblSucursal.Caption := '';
    lblPD_totalIngreso.Caption := '';
    lblPD_totalTransfer.Caption := '';
    lblPD_totalEgreso.Caption := '';

    if  EKBuscarParteDiario.BuscarSinEjecutar then
      if (EKBuscarParteDiario.ParametrosSeleccionados1[1] = '') or (EKBuscarParteDiario.ParametrosSeleccionados1[2] = '') then
      begin
        Application.MessageBox('No se ha cargado una de las fechas', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        id_sucursal:= -1;
        if EKBuscarParteDiario.ParametrosSeleccionados1[0] <> '0' then
          id_sucursal:= StrToInt(EKBuscarParteDiario.ParametrosSeleccionados1[0]);

        ZQ_SaldoCuenta_PDiario.Close;
        ZQ_SaldoCuenta_PDiario.ParamByName('id_sucursal').AsInteger:= id_sucursal;
        ZQ_SaldoCuenta_PDiario.ParamByName('fecha_desde').AsDate := StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[1]);
        ZQ_SaldoCuenta_PDiario.ParamByName('fecha_hasta').AsDate := StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[2]);
        ZQ_SaldoCuenta_PDiario.Open;

        ZP_estadistica_Parte_Diario.Close;
        ZP_estadistica_Parte_Diario.ParamByName('id_sucursal').AsInteger:= id_sucursal;
        ZP_estadistica_Parte_Diario.ParamByName('fechadesde').AsDate :=StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[1]);
        ZP_estadistica_Parte_Diario.ParamByName('fechahasta').AsDate :=StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[2]);
        ZP_estadistica_Parte_Diario.Open;

        ZP_Estadistica_IE_Medios.Close;
        ZP_Estadistica_IE_Medios.ParamByName('id_sucursal').AsInteger:= id_sucursal;
        ZP_Estadistica_IE_Medios.ParamByName('fechadesde').AsDate :=StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[1]);
        ZP_Estadistica_IE_Medios.ParamByName('fechahasta').AsDate :=StrToDate(EKBuscarParteDiario.ParametrosSeleccionados1[2]);
        ZP_Estadistica_IE_Medios.Open;

        lblSucursal.Caption:= 'Sucursal: '+EKBuscarParteDiario.ParametrosSelecReales1[0];
        lblEncabezadoParteDiario.Caption:= 'Parte Diario desde el '+EKBuscarParteDiario.ParametrosSeleccionados1[1]+' al '+EKBuscarParteDiario.ParametrosSeleccionados1[2];
        lblSaldo_TotalParteDiario.Caption:= 'Total Saldo Final: '+FormatFloat('$ ###,###,##0.00', EKSumaPD_SaldoCta.SumCollection.Items[0].SumValue);
        lblSaldo_TotalParteDiario.Caption:= lblSaldo_TotalParteDiario.Caption + '    Total Saldo Anterior: '+FormatFloat('$ ###,###,##0.00', EKSumaPD_SaldoCta.SumCollection.Items[1].SumValue);
        lblSaldo_TotalParteDiario.Caption:= lblSaldo_TotalParteDiario.Caption + '    Total Diferencia: '+FormatFloat('$ ###,###,##0.00', EKSumaPD_SaldoCta.SumCollection.Items[2].SumValue);
        lblPD_totalIngreso.Caption:= 'Total Ingresos: '+FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[0].SumValue);
        lblPD_totalEgreso.Caption:= 'Total Egresos: '+FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[1].SumValue);
        lblPD_totalTransfer.Caption:= 'Total Transferencias: '+FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[2].SumValue);

        lblSaldoFinalMenosInicial.Caption:= FormatFloat('$ ###,###,##0.00', (ZP_estadistica_Parte_DiarioSALDO.AsFloat-ZP_estadistica_Parte_DiarioSALDO_INICIAL.AsFloat));
      end;
  end;

//DETALLE CUENTA
  if PageControl.ActivePage = TabDetalleCuenta then
  begin
    lblTituloDetalleCta1.Caption := '';
    lblTituloDetalleCta2.Caption := '';

    if  EKBuscarDetalleCuenta.BuscarSinEjecutar then
      if (EKBuscarDetalleCuenta.ParametrosSeleccionados1[1] = '') or (EKBuscarDetalleCuenta.ParametrosSeleccionados1[2] = '') then
      begin
        Application.MessageBox('No se ha cargado una de las fechas', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        id_sucursal:= -1;
        if EKBuscarDetalleCuenta.ParametrosSeleccionados1[0] <> '0' then
          id_sucursal:= StrToInt(EKBuscarDetalleCuenta.ParametrosSeleccionados1[0]);

        ZQ_Detalle_Cuenta.Close;
        ZQ_Detalle_Cuenta.ParamByName('ID_SUCURSAL').AsInteger:= id_sucursal;
        ZQ_Detalle_Cuenta.ParamByName('fecha_desde').AsDate :=StrToDate(EKBuscarDetalleCuenta.ParametrosSeleccionados1[1]);
        ZQ_Detalle_Cuenta.ParamByName('fecha_hasta').AsDate :=StrToDate(EKBuscarDetalleCuenta.ParametrosSeleccionados1[2]);
        ZQ_Detalle_Cuenta.open;

        lblTituloDetalleCta1.Caption:= 'Detalle Cuenta desde el '+EKBuscarDetalleCuenta.ParametrosSeleccionados1[1]+' al '+EKBuscarDetalleCuenta.ParametrosSeleccionados1[2];
        lblTituloDetalleCta2.Caption:= 'Sucursal: '+EKBuscarDetalleCuenta.ParametrosSelecReales1[0];
      end;
  end;

//DETALLE MOVIMIENTOS
  if PageControl.ActivePage = TabDetalleMov then
  begin
    lblEncabezadoDetMov.Caption := '';
    lblSucursalDetMov.Caption := '';
    lblResumenDetalleMovimiento.Caption := '';

    if  EKBuscarDetMov.BuscarSinEjecutar then
      if (EKBuscarDetMov.ParametrosSeleccionados1[1] = '') or (EKBuscarDetMov.ParametrosSeleccionados1[2] = '') then
      begin
        Application.MessageBox('No se ha cargado una de las fechas', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        id_sucursal:= -1;
        if EKBuscarDetMov.ParametrosSeleccionados1[0] = '0' then
          id_sucursal:= StrToInt(EKBuscarDetMov.ParametrosSeleccionados1[0]);

        ZP_Estadistica_Det_Mov.Close;
        ZP_Estadistica_Det_Mov.ParamByName('ID_SUCURSAL_INGRESO').AsInteger:= id_sucursal;
        ZP_Estadistica_Det_Mov.ParamByName('fechadesde').AsDate :=StrToDate(EKBuscarDetMov.ParametrosSeleccionados1[1]);
        ZP_Estadistica_Det_Mov.ParamByName('fechahasta').AsDate :=StrToDate(EKBuscarDetMov.ParametrosSeleccionados1[2]);
        ZP_Estadistica_Det_Mov.Open;

        lblSucursalDetMov.Caption:= 'Sucursal: '+EKBuscarDetMov.ParametrosSelecReales1[0];
        lblEncabezadoDetMov.Caption:= 'Detalles Movimientos desde el '+EKBuscarDetMov.ParametrosSeleccionados1[1]+' al '+EKBuscarDetMov.ParametrosSeleccionados1[2];
      end;
  end;

//BALANCE
  if (PageControl.ActivePage = TabBalance) or (PageControl.ActivePage = TabBalanceGrafico) then
  begin
    lblBalanceFecha.Caption:= '';
    lblBalanceSucursal.Caption:= '';
    lblBalanceTipoComprobante.Caption:= '';

    if  EKBuscarBalance.BuscarSinEjecutar then
      if (EKBuscarBalance.ParametrosSeleccionados1[2] = '') or (EKBuscarBalance.ParametrosSeleccionados1[3] = '') then
      begin
        Application.MessageBox('No se ha cargado una de las fechas', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        id_sucursal:= -1;
        id_cuenta:= -1;
        if EKBuscarBalance.ParametrosSeleccionados1[0] <> '0' then
          id_sucursal:= StrToInt(EKBuscarBalance.ParametrosSeleccionados1[0]);

        if EKBuscarBalance.ParametrosSeleccionados1[4] <> '' then
          id_cuenta:= StrToInt(EKBuscarBalance.ParametrosSeleccionados1[4]);

        abrirBalance(StrToInt(EKBuscarBalance.ParametrosSeleccionados1[1]) ,StrToDate(EKBuscarBalance.ParametrosSeleccionados1[2]), StrToDate(EKBuscarBalance.ParametrosSeleccionados1[3]), id_sucursal, id_cuenta);

        lblBalanceTipoComprobante.Caption:= 'Tipo Comprobante: '+EKBuscarBalance.ParametrosSelecReales1[1];
        lblBalanceSucursal.Caption:= 'Sucursal: '+EKBuscarBalance.ParametrosSelecReales1[0];
        lblBalanceSucursal.Caption:= lblBalanceSucursal.Caption+' / Cuenta: '+EKBuscarBalance.ParametrosSelecReales1[4];
      end;
  end;
end;


procedure TFEstadisticaDisponibilidades.btnImprimirClick(Sender: TObject);
begin
//SALDO CUENTAS
  if PageControl.ActivePage = TabSaldosCuentas then
  begin
    if ZP_SaldosCuentas.IsEmpty then
      exit;

    DM.VariablesReportes(RepSaldo);
    QRlblRepSaldo_PieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
    QRlblRepSaldo_SaldoTotal.Caption:= lblSaldo_Total.Caption;
    QRlblRepSaldo_CritBusqueda.Caption := EKBuscarSaldo.ParametrosBuscados;

    EKVista_RepSaldo.VistaPrevia;
  end;

//PARTE DIARIO
  if PageControl.ActivePage = TabParteDiario then
  begin
    if ZQ_SaldoCuenta_PDiario.IsEmpty or ZP_estadistica_Parte_Diario.IsEmpty or ZP_Estadistica_IE_Medios.IsEmpty then
      exit;

    DM.VariablesReportes(RepParteDiario);

    if EKBuscarParteDiario.ParametrosSelecReales1[0] <> '' then
      QRLabelSucursalParteDiario.Caption:= 'Sucursal: '+EKBuscarParteDiario.ParametrosSelecReales1[0]
    else
      QRLabelSucursalParteDiario.Caption:= '';

    QRLabelEncabezadoParteDiario.Caption:= 'Parte Diario desde el '+EKBuscarParteDiario.ParametrosSeleccionados1[1]+' al '+EKBuscarParteDiario.ParametrosSeleccionados1[2];
    QRLblPD_TotalIngreso.Caption:= FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[0].SumValue);
    QRLblPD_TotalEgreso.Caption:= FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[1].SumValue);
    QRLblPD_TotalTransfer.Caption:= FormatFloat('$ ###,###,##0.00', EKDbSuma_ParteDiario.SumCollection.Items[2].SumValue);
    QRlblRepParteDiario_PieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
    QRLabelDiferenciaSaldos.Caption:= lblSaldoFinalMenosInicial.Caption;
    QRLabelImporteSaldo.Caption:= 'Total: '+FormatFloat('$ ###,###,##0.00', EKSumaPD_SaldoCta.SumCollection.Items[0].SumValue);
    QRLabelDiferenciaCuenta.Caption:= 'Total: '+FormatFloat('$ ###,###,##0.00', EKSumaPD_SaldoCta.SumCollection.Items[2].SumValue);
    EKVista_RepParteDiario.VistaPrevia;
  end;

//DETALLE MOVIMIENTOS
  if PageControl.ActivePage = TabDetalleMov then
  begin
    if ZP_Estadistica_Det_Mov.IsEmpty then
      exit;

    ZP_Estadistica_Det_Mov.SortedFields:= 'TIPO_MOVIMIENTO, FECHA';

    DM.VariablesReportes(RepDetalleMov);
    QRlblRepDetMov_CritBusqueda.Caption := EKBuscarDetMov.ParametrosBuscados;
    QRlblRepDetalleMov_PieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);

    EKVista_RepDetMov.VistaPrevia;

    ZP_Estadistica_Det_Mov.SortedFields:= 'FECHA';
  end;

//BALANCE
  if PageControl.ActivePage = TabBalance then
  begin
    if ZS_Balance.IsEmpty then
      exit;

    DM.VariablesReportes(RepBalance);
    QRlblRepBalance_PieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
    QRlblRepBalance_CritBusqueda.Caption := EKBuscarBalance.ParametrosBuscados;

    QRlblRepBalance_SaldoIni.Caption:= lblBalanceSaldoInicial.Caption;
    QRlblRepBalance_SaldoFinal.Caption:= lblBalanceSaldoFinal.Caption;
    QRlblRepBalance_Ingresos.Caption:= lblBalanceTotalIngresos.Caption;
    QRlblRepBalance_Egresos.Caption:= lblBalanceTotalEgresos.Caption;

    EKVistaBalance.VistaPrevia;
  end;
end;


procedure TFEstadisticaDisponibilidades.DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(TDBGrid(Sender), Rect, DataCol, Column, State);
end;


procedure TFEstadisticaDisponibilidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarGrillaDetMov.GuardarConfigColumnas;
  EKOrdenarGrillaSaldos.GuardarConfigColumnas;
  EKOrdenarGrillaPD_Saldo.GuardarConfigColumnas;
  EKOrdenarMovFPago.GuardarConfigColumnas;  
end;


procedure TFEstadisticaDisponibilidades.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFEstadisticaDisponibilidades.ZP_Estadistica_Det_MovAfterScroll(DataSet: TDataSet);
begin
  ZQ_MovFormaPago.Close;
  ZQ_MovFormaPago.ParamByName('id_comprobante').AsInteger:= ZP_Estadistica_Det_MovID_COMPROBANTE.AsInteger;
  ZQ_MovFormaPago.open;
end;


procedure TFEstadisticaDisponibilidades.btnExcelClick(Sender: TObject);
begin
//SALDO CUENTAS
  if PageControl.ActivePage = TabSaldosCuentas then
  begin
    if not ZP_SaldosCuentas.IsEmpty then
      dm.ExportarEXCEL(DBGridSaldoCuentas);
  end;

//DETALLE MOVIEMIENTOS
  if PageControl.ActivePage = TabDetalleMov then
  begin
    if not ZP_Estadistica_Det_Mov.IsEmpty then
      dm.ExportarEXCEL(DBGridEstadisticaDetMov);
  end;

//BALANCE
  if PageControl.ActivePage = TabBalance then
  begin
    if not ZS_Balance.IsEmpty then
      dm.ExportarEXCEL(DBGridBalance);
  end;
end;


procedure TFEstadisticaDisponibilidades.abrirBalance(tipo: integer; fecha_desde: Tdate;  fecha_hasta: TDate; id_sucursal: integer; id_cuenta: integer);
begin
  ZS_Balance.Close;
  ZS_Balance.ParamByName('tipo_cpb').AsInteger:= tipo;
  ZS_Balance.ParamByName('fecha_desde').AsDate:= fecha_desde;
  ZS_Balance.ParamByName('fecha_hasta').AsDate:= fecha_hasta;
  ZS_Balance.ParamByName('id_sucursal').AsInteger:= id_sucursal;
  ZS_Balance.ParamByName('id_cuenta').AsInteger:= id_cuenta;  
  ZS_Balance.Open;

  lblBalanceFecha.Caption:= 'Balance desde el '+DateToStr(fecha_desde)+' al '+DateToStr(fecha_hasta);
    DBChartBalance.Title.Text[0]:= lblBalanceFecha.Caption;
  if lblBalanceSucursal.Caption <> '' then
    DBChartBalance.Title.Text[0]:= lblBalanceFecha.Caption+' / '+lblBalanceSucursal.Caption;
  if lblBalanceTipoComprobante.Caption <> '' then
    DBChartBalance.Title.Text[0]:= lblBalanceFecha.Caption+' / '+lblBalanceSucursal.Caption+' / '+lblBalanceTipoComprobante.Caption;
  calcularResumenBalance(tipo, fecha_desde, fecha_hasta, id_sucursal, id_cuenta);
end;


procedure TFEstadisticaDisponibilidades.calcularResumenBalance(tipo: integer; fecha_desde: Tdate;  fecha_hasta: TDate; id_sucursal: integer; id_cuenta: integer);
var
  inicial, final: double;
  fecha_desde_antes, fecha_hasta_antes: tdate;
begin
  fecha_desde_antes:= EncodeDate(1900,1,1);
  fecha_hasta_antes:= IncDay(fecha_desde, -1);
  ZS_CalcSaldos.Close;
  ZS_CalcSaldos.ParamByName('tipo_cpb').AsInteger:= tipo;
  ZS_CalcSaldos.ParamByName('fecha_desde').AsDate:= fecha_desde_antes;
  ZS_CalcSaldos.ParamByName('fecha_hasta').AsDate:= fecha_hasta_antes;
  ZS_CalcSaldos.ParamByName('id_sucursal').AsInteger:= id_sucursal;
  ZS_CalcSaldos.ParamByName('id_cuenta').AsInteger:= id_cuenta;
  ZS_CalcSaldos.Open;
  ZS_CalcSaldos.Last;
  inicial:= ZS_CalcSaldosSALDO.AsFloat;

  ZS_CalcSaldos.Close;
  ZS_CalcSaldos.ParamByName('tipo_cpb').AsInteger:= tipo;
  ZS_CalcSaldos.ParamByName('fecha_desde').AsDate:= fecha_desde;
  ZS_CalcSaldos.ParamByName('fecha_hasta').AsDate:= fecha_hasta;
  ZS_CalcSaldos.ParamByName('id_sucursal').AsInteger:= id_sucursal;
  ZS_CalcSaldos.ParamByName('id_cuenta').AsInteger:= id_cuenta;  
  ZS_CalcSaldos.Open;
  ZS_CalcSaldos.Last;
  final:= ZS_CalcSaldosSALDO.AsFloat;
  ZS_CalcSaldos.Close;

  EKSuma_Balance.RecalcAll;

  lblBalanceTotalIngresos.Caption:= FormatFloat('$ ###,###,###,##0.00', EKSuma_Balance.SumCollection[0].SumValue);
  lblBalanceTotalEgresos.Caption:= FormatFloat('$ ###,###,###,##0.00', EKSuma_Balance.SumCollection[1].SumValue);
  lblBalanceSaldoInicial.Caption:= FormatFloat('$ ###,###,###,##0.00', inicial);
  lblBalanceSaldoFinal.Caption:= FormatFloat('$ ###,###,###,##0.00', final);
end;

procedure TFEstadisticaDisponibilidades.ZQ_Detalle_CuentaAfterScroll(
  DataSet: TDataSet);
begin
  ZP_Detalle_Cuenta_FPago.Close;
  ZP_Detalle_Cuenta_FPago.ParamByName('ID_CUENTA').AsInteger:= ZQ_Detalle_CuentaID_CUENTA.AsInteger;
  if EKBuscarDetalleCuenta.ParametrosSeleccionados1[0] = '0' then
    ZP_Detalle_Cuenta_FPago.ParamByName('ID_SUCURSAL').AsInteger:= -1
  else
    ZP_Detalle_Cuenta_FPago.ParamByName('ID_SUCURSAL').AsInteger:= StrToInt(EKBuscarDetalleCuenta.ParametrosSeleccionados1[0]);
  ZP_Detalle_Cuenta_FPago.ParamByName('fechadesde').AsDate :=StrToDate(EKBuscarDetalleCuenta.ParametrosSeleccionados1[1]);
  ZP_Detalle_Cuenta_FPago.ParamByName('fechahasta').AsDate :=StrToDate(EKBuscarDetalleCuenta.ParametrosSeleccionados1[2]);
  ZP_Detalle_Cuenta_FPago.Open;
end;

end.
