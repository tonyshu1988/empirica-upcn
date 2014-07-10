unit UEstadisticaVentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, Buttons, mxNativeExcel, mxExport,
  ActnList, XPStyleActnCtrls, ActnMan, QuickRpt, QRCtrls,
  ZStoredProcedure, Series, TeEngine, TeeProcs, Chart, DbChart, Menus,
  cxClasses, ISVistaPreviaQR, ISOrdenarGrilla, ISDbSuma, ISBusquedaAvanzada;

type
  TFEstadisticaVentas = class(TForm)
    PanelContenedor: TPanel;
    DS_Comprobante: TDataSource;
    PanelComprobante: TPanel;
    DBGridComprobantes: TDBGrid;
    PanelFPagoYProd: TPanel;
    PanelProducto: TPanel;
    PanelFpago: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    ZQ_Comprobante_FormaPago: TZQuery;
    ZQ_ComprobanteDetalle: TZQuery;
    ZQ_Comprobante: TZQuery;
    DS_Comprobante_FormaPago: TDataSource;
    DS_ComprobanteDetalle: TDataSource;
    ZQ_ComprobanteDetalleID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_ComprobanteDetalleID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteDetalleID_PRODUCTO: TIntegerField;
    ZQ_ComprobanteDetalleDETALLE: TStringField;
    ZQ_ComprobanteDetalleCANTIDAD: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_FINAL: TFloatField;
    ZQ_ComprobanteDetallePORC_DESCUENTO: TFloatField;
    ZQ_ComprobanteDetalleBASE_IMPONIBLE: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_UNITARIO: TFloatField;
    ZQ_ComprobanteDetalleIMPUESTO_INTERNO: TFloatField;
    ZQ_ComprobanteDetallePORC_IVA: TFloatField;
    ZQ_ComprobanteDetalleCANTIDAD_RECIBIDA: TFloatField;
    ZQ_ComprobanteDetalleCANTIDAD_ALMACENADA: TFloatField;
    ZQ_ComprobanteDetalleID_STOCK_PRODUCTO: TIntegerField;
    ZQ_ComprobanteDetalleIMPORTE_VENTA: TFloatField;
    lblTotalComprobantes: TLabel;
    DBGridListadoProductos: TDBGrid;
    DBGridFormaPago: TDBGrid;
    ZQ_TipoIVA: TZQuery;
    ZQ_TipoIVAID_TIPO_IVA: TIntegerField;
    ZQ_TipoIVANOMBRE_TIPO_IVA: TStringField;
    ZQ_TipoIVAABREVIATURA: TStringField;
    ZQ_TipoIVADISCRIMINAR: TStringField;
    ZQ_TipoIVALETRA: TStringField;
    ZQ_TipoIVAFISCAL: TStringField;
    ZQ_TipoIVACOEFICIENTE: TFloatField;
    PanelFacturacion: TPanel;
    ZQ_ComprobanteDetalleIMPORTE_IVA: TFloatField;
    ZQ_ComprobanteDetalleDETALLE_PROD: TStringField;
    ZQ_Comprobante_FormaPagoID_COMPROB_FP: TIntegerField;
    ZQ_Comprobante_FormaPagoID_COMPROBANTE: TIntegerField;
    ZQ_Comprobante_FormaPagoID_TIPO_FORMAPAG: TIntegerField;
    ZQ_Comprobante_FormaPagoMDCP_FECHA: TDateField;
    ZQ_Comprobante_FormaPagoMDCP_BANCO: TStringField;
    ZQ_Comprobante_FormaPagoMDCP_CHEQUE: TStringField;
    ZQ_Comprobante_FormaPagoIMPORTE: TFloatField;
    ZQ_Comprobante_FormaPagoCONCILIADO: TDateField;
    ZQ_Comprobante_FormaPagoCUENTA_INGRESO: TIntegerField;
    ZQ_Comprobante_FormaPagoCUENTA_EGRESO: TIntegerField;
    ZQ_Comprobante_FormaPagoFECHA_FP: TDateTimeField;
    ZQ_Comprobante_FormaPagoIMPORTE_REAL: TFloatField;
    ZQ_Comprobante_FormaPagoTFORMAPAGO_: TStringField;
    ZQ_ComprobanteCODIGO: TStringField;
    ZQ_ComprobanteID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteFECHA: TDateTimeField;
    ZQ_ComprobantePORC_IVA: TFloatField;
    ZQ_ComprobanteIMPORTEVENTA_: TFloatField;
    ZQ_ComprobanteSUC_: TStringField;
    ZQ_ComprobanteVENDEDOR_: TStringField;
    ZQ_ComprobanteTIVA_: TStringField;
    ZQ_ComprobanteTIPOCOMPR_: TStringField;
    ZQ_ComprobanteCLIENTE_: TStringField;
    ZQ_Comprobante_FormaPagoIF: TStringField;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btImprimir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    lblTotalFPago: TLabel;
    lblTotalProducto: TLabel;
    ZQ_ComprobanteDetalleIMPORTE_IF: TFloatField;
    ZQ_ComprobanteDetalleCODIGO_BARRA: TStringField;
    ZQ_ComprobanteDetalleCOLOR: TStringField;
    ZQ_ComprobanteDetalleMEDIDA: TStringField;
    ZQ_ComprobanteDetalleIMPORTE_NOFISCAL: TFloatField;
    RepDetalleMov: TQuickRep;
    QRBand2: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel8: TQRLabel;
    RepDetalleMov_Subtitulo: TQRLabel;
    RepDetalleMov_Titulo: TQRLabel;
    QRBand3: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRBand6: TQRBand;
    QRlblRepDetMov_CritBusqueda: TQRLabel;
    QRLabel22: TQRLabel;
    PageFooterBand2: TQRBand;
    QRlblRepDetalleMov_PieDePagina: TQRLabel;
    QRLabel18: TQRLabel;
    QRSysData2: TQRSysData;
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
    ColumnHeaderBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel27: TQRLabel;
    QRBand1: TQRBand;
    QRlblImporteTotal: TQRLabel;
    ZQ_ComprobanteNOMBRE_TIPO_IVA: TStringField;
    PageControl: TPageControl;
    TabFacturacion: TTabSheet;
    TabHorarioVentas: TTabSheet;
    PanelMes: TPanel;
    DBGridHorario: TDBGrid;
    Panel5: TPanel;
    lblHorarioFecha: TLabel;
    lblHorarioSucursal: TLabel;
    lblHorarioIntervalo: TLabel;
    DS_Horario: TDataSource;
    TabHorarioGrafico: TTabSheet;
    DBChartHorario: TDBChart;
    Series5: TFastLineSeries;
    Series3: TPointSeries;
    Series1: TFastLineSeries;
    ZQ_ProductosVendidos: TZQuery;
    DS_ProductosVendidos: TDataSource;
    PanelFiltro: TPanel;
    BtnFiltro_Todos: TSpeedButton;
    BtnFiltro_Fiscal: TSpeedButton;
    BtnFiltro_NoFiscal: TSpeedButton;
    Label39: TLabel;
    DBChart1: TDBChart;
    FastLineSeries2: TBarSeries;
    Splitter4: TSplitter;
    TabRanking: TTabSheet;
    Panel4: TPanel;
    btRankingProds: TSpeedButton;
    btRankingClientes: TSpeedButton;
    btRankingVended: TSpeedButton;
    Label1: TLabel;
    grillaRanking: TDBGrid;
    ZQ_ProductosVendidosSUMAVENTA: TFloatField;
    ZQ_ProductosVendidosSUMAIF: TFloatField;
    ZQ_ProductosVendidosFECHAC: TDateField;
    ZQ_ProductosVendidosAGRUPAM: TIntegerField;
    ZQ_ProductosVendidosCANTIDAD: TIntegerField;
    ZQ_ProductosVendidosDETALLE_PROD: TStringField;
    Panel6: TPanel;
    Splitter3: TSplitter;
    grillaTop20: TDBGrid;
    ZQ_Totales: TZQuery;
    DS_Top20: TDataSource;
    ZQ_TotalesSUMAVENTA: TFloatField;
    ZQ_TotalesSUMAIF: TFloatField;
    ZQ_TotalesAGRUPAM: TIntegerField;
    ZQ_TotalesCANTIDAD: TIntegerField;
    ZQ_TotalesDETALLE_PROD: TStringField;
    Label2: TLabel;
    DBChart2: TDBChart;
    Series2: THorizBarSeries;
    btVer: TdxBarLargeButton;
    Panel1: TPanel;
    Label3: TLabel;
    lblProdsVendidos: TLabel;
    lblTotales: TLabel;
    Splitter6: TSplitter;
    ZQ_Comprobante_FormaPagoNOMBRE_CUENTA: TStringField;
    ZQ_Comprobante_FormaPagoCODIGO: TStringField;
    ZQ_Comprobante_FormaPagoNRO_CTA_BANCARIA: TStringField;
    ZQ_ComprobanteDetalleIMPORTE_IF_SINIVA: TFloatField;
    ZQ_ComprobanteDetalleIMPORTE_IVA_IF: TFloatField;
    ZQ_ComprobanteDetalleINSERT_MANUAL: TStringField;
    ZQ_ComprobanteDetalleNOMBRE_MARCA: TStringField;
    TabVarios: TTabSheet;
    Panel2: TPanel;
    lblTotVarias: TLabel;
    gridVarias: TDBGrid;
    ZQ_Consultas: TZQuery;
    ZQ_ConsultasID_CONSULTA: TIntegerField;
    ZQ_ConsultasDESCRIPCION: TStringField;
    ZQ_EstadVarias: TZQuery;
    ZQ_EstadVariasDESCRIPCION: TStringField;
    ZQ_EstadVariasSUMAVENTA: TFloatField;
    ZQ_EstadVariasSUMAIF: TFloatField;
    ZQ_EstadVariasCANTIDAD: TIntegerField;
    DS_EstadVarias: TDataSource;
    ZQ_ConsultasSQL_TABLA_FILTRO: TStringField;
    ZQ_EstadVariasAGRUPAM: TStringField;
    ReporteEstadVarias: TQuickRep;
    QRBand4: TQRBand;
    QRDBImage1: TQRDBImage;
    qrTipoEstad: TQRLabel;
    ReporteEstadVarias_Subtitulo: TQRLabel;
    ReporteEstadVarias_Titulo: TQRLabel;
    QRBand5: TQRBand;
    QRDBImporte: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand7: TQRBand;
    QRBand8: TQRBand;
    ReporteEstadVarias_PieDePagina: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand9: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand10: TQRBand;
    QRExprImporte: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabel4: TQRLabel;
    PanelFiltroV: TPanel;
    BtnFiltro_TodosV: TSpeedButton;
    BtnFiltro_FiscalV: TSpeedButton;
    BtnFiltro_NoFiscalV: TSpeedButton;
    Label4: TLabel;
    ZQ_EstadVariasSUMACOSTO: TFloatField;
    ZQ_EstadVariasGANANCIA: TFloatField;
    ZQ_EstadVariasSUMANIF: TFloatField;
    ZQ_ConsultasSQL: TStringField;
    ReporteEstadVariasCostos: TQuickRep;
    QRBand11: TQRBand;
    QRDBImage2: TQRDBImage;
    qrTipoEstad2: TQRLabel;
    ReporteEstadVariasCostos_Subtitulo: TQRLabel;
    ReporteEstadVariasCostos_Titulo: TQRLabel;
    QRBand12: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand13: TQRBand;
    QRBand14: TQRBand;
    ReporteEstadVariasCostos_piedePagina: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData3: TQRSysData;
    QRBand15: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRBand16: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    ZQ_ComprobanteHORA: TTimeField;
    lblTotHorarios: TLabel;
    ReporteRanking: TQuickRep;
    QRBand17: TQRBand;
    QRDBImage3: TQRDBImage;
    qrTipoRanking: TQRLabel;
    ReporteRanking_subtitulo: TQRLabel;
    ReporteRanking_Titulo: TQRLabel;
    QRBand18: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand19: TQRBand;
    QRBand20: TQRBand;
    ReporteEstadRanking_piedePagina: TQRLabel;
    QRLabel20: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand21: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel29: TQRLabel;
    QRBand22: TQRBand;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel30: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel48: TQRLabel;
    QRLabelCritBusquedaEstadVarias: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabelCritBusquedaEstadVariasCosto: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabelCritBusquedaEstadRankingFecha: TQRLabel;
    ReporteRankingTotal: TQuickRep;
    QRBand23: TQRBand;
    QRDBImage4: TQRDBImage;
    qrTipoRankingTotal: TQRLabel;
    ReporteRankingTotal_subtitulo: TQRLabel;
    ReporteRankingTotal_titulo: TQRLabel;
    QRBand24: TQRBand;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand25: TQRBand;
    QRLabel33: TQRLabel;
    QRLabelCritBusquedaEstadRankingTotales: TQRLabel;
    QRBand26: TQRBand;
    ReporteEstadRankingTotal_piedePagina: TQRLabel;
    QRLabel36: TQRLabel;
    QRSysData5: TQRSysData;
    QRBand27: TQRBand;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRBand28: TQRBand;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRLabel41: TQRLabel;
    ISVistaPrevia: TISVistaPreviaQR;
    ISVistaPreviaRanking: TISVistaPreviaQR;
    ISVistaPreviaRankingTotales: TISVistaPreviaQR;
    ISVistaPreviaVarias: TISVistaPreviaQR;
    ISVistaPreviaVariasCostos: TISVistaPreviaQR;
    ISOrdenarFacturas: TISOrdenarGrilla;
    ISOrdenarFPago: TISOrdenarGrilla;
    ISOrdenarProducto: TISOrdenarGrilla;
    ISOrdenarGrillaRanking: TISOrdenarGrilla;
    ISOrdenarGrilla1: TISOrdenarGrilla;
    ISOrdenarGrillaTop20: TISOrdenarGrilla;
    ISDbSumaComprobante: TISDbSuma;
    ISDbSumaFpago: TISDbSuma;
    ISDbSumaProducto: TISDbSuma;
    ISDbSumaProdsVendidos: TISDbSuma;
    ISDbSumaTotales: TISDbSuma;
    ISDbSumaHorarios: TISDbSuma;
    ISDbSumaVarias: TISDbSuma;
    ISBuscarComprobantes: TISBusquedaAvanzada;
    ISBusquedaVarias: TISBusquedaAvanzada;
    ISBuscarHorario: TISBusquedaAvanzada;
    ISBusquedaRanking: TISBusquedaAvanzada;
    ZP_Horario: TZStoredProc;
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure ZQ_ComprobanteAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure EKDbSumaComprobanteSumListChanged(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AplicarFiltro(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure cargarConfigPanel();
    procedure guardarConfigPanel();
    procedure btImprimirClick(Sender: TObject);
    procedure btRankingProdsClick(Sender: TObject);
    procedure btRankingVendedClick(Sender: TObject);
    procedure btRankingClientesClick(Sender: TObject);
    procedure btVerClick(Sender: TObject);
    procedure DBGridComprobantesDblClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure EKDbSumaProdsVendidosSumListChanged(Sender: TObject);
    procedure EKDbSumaTotalesSumListChanged(Sender: TObject);
    procedure ZQ_EstadVariasAfterScroll(DataSet: TDataSet);
    procedure EKDbSumaVariasSumListChanged(Sender: TObject);
    procedure EKDbSumaHorariosSumListChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstadisticaVentas: TFEstadisticaVentas;
  where:String;
  Fiscal:String;
implementation

uses UDM, UPrincipal, UUtilidades, DateUtils;

{$R *.dfm}

procedure TFEstadisticaVentas.FormCreate(Sender: TObject);
var
  anio, mes: integer;
begin
  QRDBLogo.DataSet:= dm.ZQ_Sucursal;

  ISOrdenarFacturas.CargarConfigColunmas;
  ISOrdenarFPago.CargarConfigColunmas;
  ISOrdenarProducto.CargarConfigColunmas;
  ISOrdenarGrillaRanking.CargarConfigColunmas;
  ISOrdenarGrillaTop20.CargarConfigColunmas;

  cargarConfigPanel;

  PageControl.ActivePageIndex:= 0;
  PanelFPagoYProd.Visible:=False;
  ZQ_TipoIVA.Open;
  ZQ_Sucursal.Open;
  where:= '';

  lblHorarioFecha.Caption := '';
  lblHorarioSucursal.Caption := '';
  lblHorarioIntervalo.Caption := '';

  mes:= MonthOf(dm.ISModelo.Fecha);
  anio:= YearOf(dm.ISModelo.Fecha);

  TISCriterioBA(ISBusquedaRanking.CriteriosBusqueda.Items[0]).TipoCombollenarSQL:= dm.ZQ_SucursalesVisibles;
  TISCriterioBA(ISBuscarHorario.CriteriosBusqueda.Items[0]).TipoCombollenarSQL:= dm.ZQ_SucursalesVisibles;
  TISCriterioBA(ISBuscarComprobantes.CriteriosBusqueda.Items[0]).TipoCombollenarSQL:= dm.ZQ_SucursalesVisibles;
  TISCriterioBA(ISBusquedaVarias.CriteriosBusqueda.Items[0]).TipoCombollenarSQL:= dm.ZQ_SucursalesVisibles;

  //busqueda por horario
  if dm.ZQ_SucursalesVisibles.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    TISCriterioBA(ISBuscarHorario.CriteriosBusqueda.Items[0]).ItemIndex:= dm.ZQ_SucursalesVisibles.RecNo - 1;
  TISCriterioBA(ISBuscarHorario.CriteriosBusqueda.Items[1]).Valor:= (DateToStr(EncodeDate(anio, mes, 1)));
  TISCriterioBA(ISBuscarHorario.CriteriosBusqueda.Items[2]).Valor:= DateToStr(dm.ISModelo.Fecha);
  TISCriterioBA(ISBuscarHorario.CriteriosBusqueda.Items[3]).Valor:= IntToStr(30);

  //busqueda por comprobante
  if dm.ZQ_SucursalesVisibles.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    TISCriterioBA(ISBuscarComprobantes.CriteriosBusqueda.Items[0]).ItemIndex:= dm.ZQ_SucursalesVisibles.RecNo - 1;
  TISCriterioBA(ISBuscarComprobantes.CriteriosBusqueda.Items[1]).Valor:= DateToStr(dm.IsModelo.Fecha);

  //busqueda por ranking
  if dm.ZQ_SucursalesVisibles.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    TISCriterioBA(ISBusquedaRanking.CriteriosBusqueda.Items[0]).ItemIndex:= dm.ZQ_SucursalesVisibles.RecNo - 1;
  TISCriterioBA(ISBusquedaRanking.CriteriosBusqueda.Items[1]).Valor:= (DateToStr(EncodeDate(anio, mes, 1)));
  TISCriterioBA(ISBusquedaRanking.CriteriosBusqueda.Items[2]).Valor:= DateToStr(dm.ISModelo.Fecha);

  //busqueda varias
  if dm.ZQ_SucursalesVisibles.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    TISCriterioBA(ISBusquedaVarias.CriteriosBusqueda.Items[0]).ItemIndex:= dm.ZQ_SucursalesVisibles.RecNo - 1;
  TISCriterioBA(ISBusquedaVarias.CriteriosBusqueda.Items[2]).Valor:= (DateToStr(EncodeDate(anio, mes, 1)));
  TISCriterioBA(ISBusquedaVarias.CriteriosBusqueda.Items[3]).Valor:= DateToStr(dm.ISModelo.Fecha);

  //Visibilidad de los paneles de filtro
  PanelFiltro.Visible:= dm.ISUsrLogin.PermisoAccion('NO_FISCAL');
  PanelFiltroV.Visible:= dm.ISUsrLogin.PermisoAccion('NO_FISCAL');
  if dm.ISUsrLogin.PermisoAccion('NO_FISCAL') then
    Fiscal:='T'
  else
    Fiscal:='N';

  //Caption de los botones de Filtro
  BtnFiltro_NoFiscal.Caption:=etiqueta_no_fiscal;
  BtnFiltro_NoFiscalV.Caption:=etiqueta_no_fiscal;
  BtnFiltro_Fiscal.Caption:=etiqueta_fiscal;
  BtnFiltro_FiscalV.Caption:=etiqueta_fiscal;
end;


procedure TFEstadisticaVentas.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFEstadisticaVentas.ZQ_ComprobanteAfterScroll(DataSet: TDataSet);
var
  fiscal: String;
  indice: integer;
begin
  if BtnFiltro_Todos.Down then //TODOS
  begin
    fiscal:= 'T';
    indice:= 0;
  end
  else
    if BtnFiltro_Fiscal.Down then //FISCAL
    begin
      fiscal:= 'S';
      indice:= 1;
    end
    else
      if BtnFiltro_NoFiscal.Down then //NO FISCAL
      begin
        fiscal:= 'N';
        indice:= 2;
      end;

  if PanelFPagoYProd.Visible then
 begin
    ZQ_Comprobante_FormaPago.Close;
    ZQ_Comprobante_FormaPago.ParamByName('id_comprobante').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    ZQ_Comprobante_FormaPago.ParamByName('fiscal').AsString:= fiscal;
    ZQ_Comprobante_FormaPago.Open;

    ZQ_ComprobanteDetalle.Close;
    ZQ_ComprobanteDetalle.ParamByName('id_comprobante').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
    ZQ_ComprobanteDetalle.Open;

    ISDbSumaFpago.RecalcAll;
    ISDbSumaProducto.RecalcAll;
    lblTotalFPago.Caption := FormatFloat('Total Forma Pago: $ ##,###,##0.00 ', ISDbSumaFpago.SumCollection[0].SumValue);
    lblTotalProducto.Caption := FormatFloat('Total Producto: $ ##,###,##0.00 ', ISDbSumaProducto.SumCollection[indice].SumValue);
 end;
   Application.ProcessMessages;
end;


procedure TFEstadisticaVentas.EKDbSumaComprobanteSumListChanged(Sender: TObject);
begin
  lblTotalComprobantes.Caption := FormatFloat('Total Comprobante: $ ##,###,##0.00 ', ISDbSumaComprobante.SumCollection[0].SumValue);
end;


procedure TFEstadisticaVentas.AplicarFiltro(Sender: TObject);
begin
  if (TSpeedButton(Sender).Name='BtnFiltro_Todos')or(TSpeedButton(Sender).Name='BtnFiltro_TodosV') then
  begin
    where:= '';
    DBGridListadoProductos.Columns[GetIndexTitle(DBGridListadoProductos, 'Importe')].FieldName:= 'IMPORTE_VENTA';
    gridVarias.Columns[GetIndexTitle(gridVarias, 'Importe Venta')].FieldName:= 'SUMAVENTA';
    gridVarias.Columns[GetIndexTitle(gridVarias, 'Importe Costo')].Visible:=true;
    gridVarias.Columns[GetIndexTitle(gridVarias, 'Ganancia')].Visible:=true;
    Fiscal:='T';
    QRDBImporte.DataField:='SUMAVENTA';
    QRExprImporte.Expression:='SUM(ZQ_EstadVarias.SUMAVENTA)';
  end;

  if (TSpeedButton(Sender).Name = 'BtnFiltro_Fiscal')or(TSpeedButton(Sender).Name='BtnFiltro_FiscalV') then
  begin
    where:= Format(' and (tfp."IF" = %s)',[QuotedStr('S')]);
    DBGridListadoProductos.Columns[GetIndexTitle(DBGridListadoProductos, 'Importe')].FieldName:= 'IMPORTE_IF';
    gridVarias.Columns[GetIndexTitle(gridVarias, 'Importe Venta')].FieldName:= 'SUMAIF';
    gridVarias.Columns[GetIndexTitle(gridVarias, 'Importe Costo')].Visible:=false;
    gridVarias.Columns[GetIndexTitle(gridVarias, 'Ganancia')].Visible:=false;
    Fiscal:='S';
    QRDBImporte.DataField:='SUMAIF';
    QRExprImporte.Expression:='SUM(ZQ_EstadVarias.SUMAIF)';
  end;

  if (TSpeedButton(Sender).Name = 'BtnFiltro_NoFiscal')or(TSpeedButton(Sender).Name='BtnFiltro_NoFiscalV') then
  begin
    where:= Format(' and (tfp."IF" = %s)',[QuotedStr('N')]);
    DBGridListadoProductos.Columns[GetIndexTitle(DBGridListadoProductos, 'Importe')].FieldName:= 'IMPORTE_NOFISCAL';
    gridVarias.Columns[GetIndexTitle(gridVarias, 'Importe Venta')].FieldName:= 'SUMANIF';
    gridVarias.Columns[GetIndexTitle(gridVarias, 'Importe Costo')].Visible:=false;
    gridVarias.Columns[GetIndexTitle(gridVarias, 'Ganancia')].Visible:=false;
    Fiscal:='N';
    QRDBImporte.DataField:='SUMANIF';
    QRExprImporte.Expression:='SUM(ZQ_EstadVarias.SUMANIF)';
  end;

  if (Fiscal='T') then
  begin
  lblTotVarias.Caption := FormatFloat('Total Ventas: $ ##,###,##0.00 ', ISDbSumaVarias.SumCollection[0].SumValue);
  lblTotVarias.Caption := lblTotVarias.Caption+FormatFloat('| Total Costo: $ ##,###,##0.00 ', ISDbSumaVarias.SumCollection[4].SumValue);
  lblTotVarias.Caption := lblTotVarias.Caption+FormatFloat('| Total Ganancia: $ ##,###,##0.00 ', ISDbSumaVarias.SumCollection[1].SumValue);
  end
  else if (Fiscal='N') then
   lblTotVarias.Caption := FormatFloat('Total Ventas: $ ##,###,##0.00 ', ISDbSumaVarias.SumCollection[3].SumValue)
   else if (Fiscal='S') then
     lblTotVarias.Caption := FormatFloat('Total Ventas: $ ##,###,##0.00 ', ISDbSumaVarias.SumCollection[2].SumValue);

  btnBuscar.Click;
end;


procedure TFEstadisticaVentas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ISOrdenarFacturas.GuardarConfigColumnas;
  ISOrdenarProducto.GuardarConfigColumnas;
  ISOrdenarFPago.GuardarConfigColumnas;
  ISOrdenarGrillaRanking.GuardarConfigColumnas;
  ISOrdenarGrillaTop20.GuardarConfigColumnas;
  
end;


procedure TFEstadisticaVentas.DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(TDBGrid(Sender), Rect, DataCol, Column, State);
end;


procedure TFEstadisticaVentas.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;


procedure TFEstadisticaVentas.guardarConfigPanel();
begin
  dm.ISIni.EsribirRegEntero('UEstadisticaFacturacion\PanelComprobante.height', PanelComprobante.height);
  dm.ISIni.EsribirRegEntero('UEstadisticaFacturacion\PanelFPagoYProd.height', PanelFPagoYProd.height);
  dm.ISIni.EsribirRegEntero('UEstadisticaFacturacion\PanelFpago.width', PanelFpago.Width);
  dm.ISIni.EsribirRegEntero('UEstadisticaFacturacion\PanelProducto.width', PanelProducto.Width);
end;


procedure TFEstadisticaVentas.cargarConfigPanel();
var
  aux: Integer;
begin
  aux:= dm.ISIni.LeerRegnumero('UEstadisticaFacturacion\PanelComprobante.height');
  if aux > 0 then
    PanelComprobante.height:= aux;

  aux:= dm.ISIni.LeerRegnumero('UEstadisticaFacturacion\PanelFPagoYProd.height');
  if aux > 0 then
    PanelFPagoYProd.height:= aux;

  aux:= dm.ISIni.LeerRegnumero('UEstadisticaFacturacion\PanelFpago.width');
  if aux > 0 then
    PanelFpago.Width:= aux;

  aux:= dm.ISIni.LeerRegnumero('UEstadisticaFacturacion\PanelProducto.width');
  if aux > 0 then
    PanelProducto.Width:= aux;
end;


procedure TFEstadisticaVentas.btnBuscarClick(Sender: TObject);
begin
  //FACTURACION
  if PageControl.ActivePage = TabFacturacion then
  begin
    ISBuscarComprobantes.SQL_Where[0]:= Format('where (c.ID_TIPO_CPB = 11) %s', [where]);

    if PanelFPagoYProd.Visible then
     btVer.Click;

    if ISBuscarComprobantes.Buscar then
      ZQ_Comprobante.First;
  end;

  //RANKING DE VENTA
  if PageControl.ActivePage = TabRanking then
  begin
    if ISBusquedaRanking.BuscarSinEjecutar then
      begin
        if (ISBusquedaRanking.ParametrosSeleccionados1[1] = '') or (ISBusquedaRanking.ParametrosSeleccionados1[2] = '') then
          begin
            Application.MessageBox('No se ha cargado una de las fechas', 'Verifique', MB_OK + MB_ICONINFORMATION);
            btnBuscar.Click;
            exit;
          end;

        ZQ_ProductosVendidos.close;
        ZQ_Totales.close;
        if ISBusquedaRanking.ParametrosSeleccionados1[0] = '0' then
        begin
          ZQ_ProductosVendidos.ParamByName('id_sucursal').AsInteger:= -1;
          ZQ_Totales.ParamByName('id_sucursal').AsInteger:= -1;
        end
        else
        begin
          ZQ_ProductosVendidos.ParamByName('id_sucursal').AsInteger:= StrToInt(ISBusquedaRanking.ParametrosSeleccionados1[0]);
          ZQ_Totales.ParamByName('id_sucursal').AsInteger:= StrToInt(ISBusquedaRanking.ParametrosSeleccionados1[0]);
        end;

        ZQ_ProductosVendidos.ParamByName('f1').AsDate:=StrToDate(ISBusquedaRanking.ParametrosSeleccionados1[1]);
        ZQ_ProductosVendidos.ParamByName('f2').AsDate:=StrToDate(ISBusquedaRanking.ParametrosSeleccionados1[2]);
        //ZQ_ProductosVendidos.SQL.SaveToFile('TEXT.TXT');
        ZQ_ProductosVendidos.Open;


        ZQ_Totales.ParamByName('f1').AsDate:=StrToDate(ISBusquedaRanking.ParametrosSeleccionados1[1]);
        ZQ_Totales.ParamByName('f2').AsDate:=StrToDate(ISBusquedaRanking.ParametrosSeleccionados1[2]);
        ZQ_Totales.Open;
      end;
  end;

  //HORARIO VENTA
  if (PageControl.ActivePage = TabHorarioVentas) or (PageControl.ActivePage = TabHorarioGrafico) then
  begin
    lblHorarioFecha.Caption := '';
    lblHorarioSucursal.Caption := '';
    lblHorarioIntervalo.Caption := '';

    if  ISBuscarHorario.BuscarSinEjecutar then
    begin
      if (ISBuscarHorario.ParametrosSeleccionados1[1] = '') or (ISBuscarHorario.ParametrosSeleccionados1[2] = '') then
      begin
        Application.MessageBox('No se ha cargado una de las fechas', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
        exit;
      end;

      if (ISBuscarHorario.ParametrosSeleccionados1[3] = '') then
      begin
        Application.MessageBox('No se ha cargado el intervalo', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
        exit;
      end;

      ZP_Horario.Close;
      if ISBuscarHorario.ParametrosSeleccionados1[0] = '0' then
      begin
        ZP_Horario.ParamByName('ID_SUCURSAL').AsInteger:= -1;
      end
      else
      begin
        lblHorarioSucursal.Caption:= 'Sucursal: '+ISBuscarHorario.ParametrosSelecReales1[0];
        ZP_Horario.ParamByName('ID_SUCURSAL').AsInteger:= StrToInt(ISBuscarHorario.ParametrosSeleccionados1[0]);
      end;
      ZP_Horario.ParamByName('fecha_desde').AsDate :=StrToDate(ISBuscarHorario.ParametrosSeleccionados1[1]);
      ZP_Horario.ParamByName('fecha_hasta').AsDate :=StrToDate(ISBuscarHorario.ParametrosSeleccionados1[2]);
      ZP_Horario.ParamByName('intervalo').AsInteger :=StrToInt(ISBuscarHorario.ParametrosSeleccionados1[3]);
      ZP_Horario.Open;

      lblHorarioFecha.Caption:= 'Ventas desde el '+ISBuscarHorario.ParametrosSeleccionados1[1]+' al '+ISBuscarHorario.ParametrosSeleccionados1[2];
      lblHorarioIntervalo.Caption:= 'Intervalo '+ISBuscarHorario.ParametrosSeleccionados1[3]+' minutos';

      DBChartHorario.Title.Text[0]:= lblHorarioFecha.Caption;
      if lblHorarioSucursal.Caption <> '' then
        DBChartHorario.Title.Text[0]:= lblHorarioFecha.Caption+' / '+lblHorarioSucursal.Caption;
      if lblHorarioIntervalo.Caption <> '' then
        DBChartHorario.Title.Text[0]:= lblHorarioFecha.Caption+' / '+lblHorarioSucursal.Caption+' / '+lblHorarioIntervalo.Caption;
    end;
  end;

  //Estadísticas Varias
  if (PageControl.ActivePage = TabVarios) then
  begin
   dm.ISModelo.abrir(ZQ_Consultas);

   if ISBusquedaVarias.BuscarSinEjecutar then
   begin
        if (ISBusquedaVarias.ParametrosSeleccionados1[2] = '') or (ISBusquedaVarias.ParametrosSeleccionados1[3] = '') then
          begin
            Application.MessageBox('No se ha cargado una de las fechas', 'Verifique', MB_OK + MB_ICONINFORMATION);
            btnBuscar.Click;
            exit;
          end;

        if (ISBusquedaVarias.ParametrosSeleccionados1[1] = '')  then
          begin
            Application.MessageBox('No se ha seleccionado el Tipo de Estadística', 'Verifique', MB_OK + MB_ICONINFORMATION);
            btnBuscar.Click;
            exit;
          end;

        ZQ_EstadVarias.Close;
        ZQ_Consultas.Locate('id_consulta',StrToInt(ISBusquedaVarias.ParametrosSeleccionados1[1]),[]);
        ZQ_EstadVarias.SQL.Text:=ZQ_ConsultasSQL.Value;

        if ISBusquedaVarias.ParametrosSeleccionados1[0] = '0' then
          begin
            ZQ_EstadVarias.ParamByName('id_sucursal').AsInteger:= -1;
          end
        else
          begin
            ZQ_EstadVarias.ParamByName('id_sucursal').AsInteger:= StrToInt(ISBusquedaVarias.ParametrosSeleccionados1[0]);
          end;

        ZQ_EstadVarias.ParamByName('f1').AsDate:=StrToDate(ISBusquedaVarias.ParametrosSeleccionados1[2]);
        ZQ_EstadVarias.ParamByName('f2').AsDate:=StrToDate(ISBusquedaVarias.ParametrosSeleccionados1[3]);

        ZQ_EstadVarias.Filtered:=False;
        if (ISBusquedaVarias.ParametrosSeleccionados1[4]<>'') then
         begin
          ZQ_EstadVarias.Filter:=Format('DESCRIPCION = %s',[QuotedStr(UpperCase(ISBusquedaVarias.ParametrosSeleccionados1[4]))]);
          ZQ_EstadVarias.Filtered:=True;
         end;
        dm.ISModelo.abrir(ZQ_EstadVarias);
   end;

  end;
end;


procedure TFEstadisticaVentas.btImprimirClick(Sender: TObject);
var i:integer;
tipoRanking:string;
begin
//FACTURACION
  if PageControl.ActivePage = TabFacturacion then
  begin
    if ZQ_Comprobante.IsEmpty then
      exit;
    DM.VariablesReportes(RepDetalleMov);
    QRlblRepDetMov_CritBusqueda.Caption := ISBuscarComprobantes.ParametrosBuscados;
    QRlblRepDetalleMov_PieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
    QRlblImporteTotal.Caption:= lblTotalComprobantes.Caption;
    ISVistaPrevia.VistaPrevia;
  end;

 //Ranking Ventas Diarias
  if PageControl.ActivePage = TabRanking then
  begin
    if ZQ_ProductosVendidos.IsEmpty then
      exit;

    DM.VariablesReportes(ReporteRanking);
    DM.VariablesReportes(ReporteRankingTotal);

    if btRankingProds.Down then
      tipoRanking:=btRankingProds.Caption
    else
      if btRankingClientes.Down then
        tipoRanking:=btRankingClientes.Caption
      else
        if btRankingVended.Down then
          tipoRanking:=btRankingVended.Caption;

    QRLabelCritBusquedaEstadRankingFecha.Caption := ISBusquedaRanking.ParametrosBuscados;
    qrTipoRanking.Caption:='Estadística Ranking de '+tipoRanking+' por Fecha';
    ReporteEstadRanking_piedePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
    ISVistaPreviaRanking.VistaPrevia;

    QRLabelCritBusquedaEstadRankingTotales.Caption := ISBusquedaRanking.ParametrosBuscados;
    qrTipoRankingTotal.Caption:='Estadística Ranking de '+tipoRanking+' Totales';
    ReporteEstadRanking_piedePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
    ISVistaPreviaRankingTotales.VistaPrevia;
  end;


  if PageControl.ActivePage=TabVarios then
  begin
    if ZQ_EstadVarias.IsEmpty then
      exit;

    if (Fiscal='T') then
     begin
      DM.VariablesReportes(ReporteEstadVariasCostos);

//      QRLabelCritBusquedaEstadVariasCosto.Caption :=Format('Sucursal: %s - FDesde: %s - FHasta: %s - Filtro Búsqueda: %s',[EKBusquedaVarias.ParametrosSelecReales1[0],EKBusquedaVarias.ParametrosSeleccionados1[2],
//                            EKBusquedaVarias.ParametrosSeleccionados1[3],EKBusquedaVarias.ParametrosSeleccionados1[4]]);

      QRLabelCritBusquedaEstadVariasCosto.Caption:= ISBusquedaVarias.ParametrosBuscados;
      qrTipoEstad2.Caption:='Estadística según '+ISBusquedaVarias.ParametrosSelecReales1[1];

      ReporteEstadVariasCostos_piedePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
      ISVistaPreviaVariasCostos.VistaPrevia;
     end
    else
     begin
      DM.VariablesReportes(ReporteEstadVarias);

//      QRLabelCritBusquedaEstadVarias.Caption :=Format('Sucursal: %s - FDesde: %s - FHasta: %s - Filtro Búsqueda: %s',[EKBusquedaVarias.ParametrosSelecReales1[0],EKBusquedaVarias.ParametrosSeleccionados1[2],
//                            EKBusquedaVarias.ParametrosSeleccionados1[3],EKBusquedaVarias.ParametrosSeleccionados1[4]]);

      QRLabelCritBusquedaEstadVarias.Caption:= ISBusquedaVarias.ParametrosBuscados;
      qrTipoEstad.Caption:='Estadística según '+ISBusquedaVarias.ParametrosSelecReales1[1];

      ReporteEstadVarias_PieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
      ISVistaPreviaVarias.VistaPrevia;
     end;
  end;

end;


procedure TFEstadisticaVentas.btnExcelClick(Sender: TObject);
begin
  //FACTURACION
  if PageControl.ActivePage = TabFacturacion then
  begin
    if not ZQ_Comprobante.IsEmpty then
      dm.ExportarEXCEL(DBGridComprobantes);
  end;

  //HORARIO VENTA
  if PageControl.ActivePage = TabHorarioVentas then
  begin
    if not ZP_Horario.IsEmpty then
      dm.ExportarEXCEL(DBGridHorario);
  end;

  //Ranking
  if PageControl.ActivePage = TabRanking then
  begin
    if not ZQ_ProductosVendidos.IsEmpty then
      dm.ExportarEXCEL(grillaRanking);
  end;

  //Varias
  if PageControl.ActivePage = TabVarios then
  begin
    if not ZQ_EstadVarias.IsEmpty then
     begin
      ZQ_EstadVariasSUMAVENTA.DisplayFormat:='';
      ZQ_EstadVariasSUMAIF.DisplayFormat:='';
      ZQ_EstadVariasSUMANIF.DisplayFormat:='';
      ZQ_EstadVariasSUMACOSTO.DisplayFormat:='';
      ZQ_EstadVariasGANANCIA.DisplayFormat:='';
      dm.ExportarEXCEL(gridVarias);
      ZQ_EstadVariasSUMAVENTA.DisplayFormat:='$ ##,###,##0.00';
      ZQ_EstadVariasSUMAIF.DisplayFormat:='$ ##,###,##0.00';
      ZQ_EstadVariasSUMANIF.DisplayFormat:='$ ##,###,##0.00';
      ZQ_EstadVariasSUMACOSTO.DisplayFormat:='$ ##,###,##0.00';
      ZQ_EstadVariasGANANCIA.DisplayFormat:='$ ##,###,##0.00';
     end
  end;
end;


procedure TFEstadisticaVentas.btRankingProdsClick(Sender: TObject);
begin
  ZQ_ProductosVendidos.Close;
  ZQ_ProductosVendidos.SQL[1]:= Format('%s as agrupam, ', ['cd.id_producto']);
  ZQ_ProductosVendidos.SQL[3]:= Format('%s, ', ['(ma.nombre_marca||'' ''||pc.nombre||'' (''||coalesce(m.medida, ''S/M'')||coalesce('' - ''||co.nombre, ''S/C'')) as DETALLE_PROD']);

  ZQ_Totales.Close;
  ZQ_Totales.SQL[1]:= Format('%s as agrupam, ', ['cd.id_producto']);
  ZQ_Totales.SQL[2]:= Format('%s, ', ['(ma.nombre_marca||'' ''||pc.nombre||'' (''||coalesce(m.medida, ''S/M'')||coalesce('' - ''||co.nombre, ''S/C'')) as DETALLE_PROD']);
end;


procedure TFEstadisticaVentas.btRankingVendedClick(Sender: TObject);
begin
  ZQ_ProductosVendidos.Close;
  ZQ_ProductosVendidos.SQL[1]:= Format('%s as agrupam, ', ['c.id_vendedor']);
  ZQ_ProductosVendidos.SQL[3]:= Format('%s, ', ['vend.nombre as DETALLE_PROD']);

  ZQ_Totales.Close;
  ZQ_Totales.SQL[1]:= Format('%s as agrupam, ', ['c.id_vendedor']);
  ZQ_Totales.SQL[2]:= Format('%s, ', ['vend.nombre as DETALLE_PROD']);
end;


procedure TFEstadisticaVentas.btRankingClientesClick(Sender: TObject);
begin
  ZQ_ProductosVendidos.Close;
  ZQ_ProductosVendidos.SQL[1]:= Format('%s as agrupam, ', ['c.id_cliente']);
  ZQ_ProductosVendidos.SQL[3]:= Format('%s, ', ['cli.nombre as DETALLE_PROD']);

  ZQ_Totales.Close;
  ZQ_Totales.SQL[1]:= Format('%s as agrupam, ', ['c.id_cliente']);
  ZQ_Totales.SQL[2]:= Format('%s, ', ['cli.nombre as DETALLE_PROD']);
end;


procedure TFEstadisticaVentas.btVerClick(Sender: TObject);
begin
  PanelFPagoYProd.Visible:=not(PanelFPagoYProd.Visible);
  ZQ_ComprobanteAfterScroll(nil);
end;


procedure TFEstadisticaVentas.DBGridComprobantesDblClick(Sender: TObject);
begin
  btVer.Click;
end;


procedure TFEstadisticaVentas.PageControlChange(Sender: TObject);
begin
 btVer.Enabled:=PageControl.ActivePage = TabFacturacion;
 btImprimir.Enabled:=(PageControl.ActivePage <> TabHorarioVentas)and(PageControl.ActivePage <> TabHorarioGrafico);
end;


procedure TFEstadisticaVentas.EKDbSumaProdsVendidosSumListChanged(Sender: TObject);
begin
  lblProdsVendidos.Caption:=Format('Cantidad: %f ',[ISDbSumaProdsVendidos.SumCollection[1].SumValue])+FormatFloat('| Total Ventas: $ ##,###,##0.00 ', ISDbSumaProdsVendidos.SumCollection[0].SumValue);
end;


procedure TFEstadisticaVentas.EKDbSumaTotalesSumListChanged(Sender: TObject);
begin
  lblTotales.Caption:=Format('Cantidad: %f ',[ISDbSumaProdsVendidos.SumCollection[1].SumValue])+FormatFloat('| Total Ventas: $ ##,###,##0.00 ', ISDbSumaTotales.SumCollection[0].SumValue);
end;

procedure TFEstadisticaVentas.ZQ_EstadVariasAfterScroll(DataSet: TDataSet);
begin

// lblTotVarias.Caption := lblTotVarias.Caption + FormatFloat('/ Total Ganancia: $ ##,###,##0.00 ', EKDbSumaVarias.SumCollection[1].SumValue);
end;

procedure TFEstadisticaVentas.EKDbSumaVariasSumListChanged(
  Sender: TObject);
begin
  lblTotVarias.Caption := Format('Cantidad: %f ',[ISDbSumaVarias.SumCollection[5].SumValue]);
  if (Fiscal='T') then
  begin
  lblTotVarias.Caption := lblTotVarias.Caption+FormatFloat('| Total Ventas: $ ##,###,##0.00 ', ISDbSumaVarias.SumCollection[0].SumValue);
  lblTotVarias.Caption := lblTotVarias.Caption+FormatFloat('| Total Costo: $ ##,###,##0.00 ', ISDbSumaVarias.SumCollection[4].SumValue);
  lblTotVarias.Caption := lblTotVarias.Caption+FormatFloat('| Total Ganancia: $ ##,###,##0.00 ', ISDbSumaVarias.SumCollection[1].SumValue);
  end
  else if (Fiscal='N') then
   lblTotVarias.Caption := lblTotVarias.Caption+FormatFloat('| Total Ventas: $ ##,###,##0.00 ', ISDbSumaVarias.SumCollection[3].SumValue)
   else if (Fiscal='S') then
     lblTotVarias.Caption := lblTotVarias.Caption+FormatFloat('| Total Ventas: $ ##,###,##0.00 ', ISDbSumaVarias.SumCollection[2].SumValue);
end;


procedure TFEstadisticaVentas.EKDbSumaHorariosSumListChanged(
  Sender: TObject);
begin
 lblTotHorarios.Caption:=Format('Cantidad: %f ',[ISDbSumaHorarios.SumCollection[1].SumValue])+FormatFloat('| Total Ventas: $ ##,###,##0.00 ', ISDbSumaHorarios.SumCollection[0].SumValue);
end;


end.
