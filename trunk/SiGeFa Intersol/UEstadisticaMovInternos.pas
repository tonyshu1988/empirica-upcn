unit UEstadisticaMovInternos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, dxBar, dxBarExtItems, TeeProcs, TeEngine, Chart,
  DbChart, ExtCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Series, StdCtrls, 
  ZStoredProcedure, ActnList,
  XPStyleActnCtrls, ActnMan, QRCtrls, QuickRpt,
  ISVistaPreviaQR, cxClasses, ISOrdenarGrilla, ISDbSuma, ISBusquedaAvanzada;

type
  TFEstadisticaMovInternos = class(TForm)
    PageControl: TPageControl;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    TabMovimientos: TTabSheet;
    TabIngresos_Egresos: TTabSheet;
    TabBalanceGrafico: TTabSheet;
    ZQ_Movimientos: TZQuery;
    DS_Movimientos: TDataSource;
    ZQ_MovimientosFECHA: TDateTimeField;
    ZQ_MovimientosID_COMPROBANTE: TIntegerField;
    ZQ_MovimientosID_TIPO_CPB: TIntegerField;
    ZQ_MovimientosID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_MovimientosID_SUCURSAL: TIntegerField;
    ZQ_MovimientosNOMBRE_MOVIMIENTO: TStringField;
    ZQ_MovimientosINGRESOS: TFloatField;
    ZQ_MovimientosEGRESOS: TFloatField;
    ZQ_Ingresos: TZQuery;
    ZQ_Egresos: TZQuery;
    DS_Ingresos: TDataSource;
    DS_Egresos: TDataSource;
    PanelMov_Datos: TPanel;
    DBGridMovimientos: TDBGrid;
    PanelIngresos: TPanel;
    Label4: TLabel;
    DBGridIngresos: TDBGrid;
    DBChartIngresos: TDBChart;
    PieSeries1: TPieSeries;
    PanelEgresos: TPanel;
    Label3: TLabel;
    DBGridEgresos: TDBGrid;
    DBChartEgresos: TDBChart;
    Series1: TPieSeries;
    lblTotalEgresos: TLabel;
    lblTotalIngresos: TLabel;
    lblMov_TotalEgresos: TLabel;
    lblMov_TotalIngresos: TLabel;
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
    TabBalance: TTabSheet;
    PanelMes: TPanel;
    DBGridBalance: TDBGrid;
    PanelMes_Resumen: TPanel;
    Label11: TLabel;
    Label1: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Shape1: TShape;
    lblBalanceTotalIngresos: TLabel;
    lblBalanceTotalEgresos: TLabel;
    lblBalanceSaldoFinal: TLabel;
    lblBalanceSaldoInicial: TLabel;
    ZS_Balance: TZStoredProc;
    ZS_BalanceFECHA: TDateField;
    ZS_BalanceINGRESO: TFloatField;
    ZS_BalanceEGRESO: TFloatField;
    ZS_BalanceSALDO: TFloatField;
    ZS_BalanceSALDODIARIO: TFloatField;
    DS_Balance: TDataSource;
    ZS_CalcSaldos: TZStoredProc;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    Panel4: TPanel;
    lblBalanceSucursal: TLabel;
    lblBalanceFecha: TLabel;
    DBChartBalance: TDBChart;
    Series4: TFastLineSeries;
    Series2: TPointSeries;
    Series5: TFastLineSeries;
    Series3: TPointSeries;
    Panel1: TPanel;
    lblMovSucursal: TLabel;
    lblMovFecha: TLabel;
    Panel2: TPanel;
    lblIngEgrSucursal: TLabel;
    lblIngEgrFecha: TLabel;
    RepListado: TQuickRep;
    QRBand1: TQRBand;
    QRRepListadoDBLogo: TQRDBImage;
    QRLabel4: TQRLabel;
    RepListado_Subtitulo: TQRLabel;
    RepListado_Titulo: TQRLabel;
    QRBand2: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand3: TQRBand;
    QRlblRepListado_PieDePagina: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRlblRepListado_Ingresos: TQRLabel;
    QRlblRepListado_Egresos: TQRLabel;
    QRBand5: TQRBand;
    QRlblRepListado_CritBusqueda: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand6: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    RepBalance: TQuickRep;
    QRBand9: TQRBand;
    QRRepBalanceDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepBalance_Subtitulo: TQRLabel;
    RepBalance_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand11: TQRBand;
    QRlblRepBalance_PieDePagina: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand12: TQRBand;
    QRExpr18: TQRExpr;
    QRlblRepBalance_SaldoIni: TQRLabel;
    QRlblRepBalance_Ingresos: TQRLabel;
    QRlblRepBalance_Egresos: TQRLabel;
    QRlblRepBalance_SaldoFinal: TQRLabel;
    TitleBand2: TQRBand;
    QRlblRepBalance_CritBusqueda: TQRLabel;
    QRLabel48: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    ZQ_IngresosID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_IngresosNOMBRE_MOVIMIENTO: TStringField;
    ZQ_IngresosSUM: TFloatField;
    ZQ_EgresosID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_EgresosNOMBRE_MOVIMIENTO: TStringField;
    ZQ_EgresosSUM: TFloatField;
    Panel3: TPanel;
    btnExcel: TdxBarLargeButton;
    ZQ_MovimientosOBSERVACION: TStringField;
    ZS_CalcSaldosFECHA: TDateField;
    ZS_CalcSaldosINGRESO: TFloatField;
    ZS_CalcSaldosEGRESO: TFloatField;
    ZS_CalcSaldosSALDO: TFloatField;
    ZS_CalcSaldosSALDODIARIO: TFloatField;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    ZQ_MovimientosSUCURSAL: TStringField;
    ISVistaListado: TISVistaPreviaQR;
    ISVistaBalance: TISVistaPreviaQR;
    ISOrdenarGrillaMovimientos: TISOrdenarGrilla;
    ISOrdenarGrillaBalance: TISOrdenarGrilla;
    ISDbSuma_Mov: TISDbSuma;
    ISDbSuma_Ingresos: TISDbSuma;
    ISDbSuma_Egresos: TISDbSuma;
    ISSuma_Balance: TISDbSuma;
    ISBuscar_Mov: TISBusquedaAvanzada;
    ISBuscaIngEgr: TISBusquedaAvanzada;
    ISBuscarBalance: TISBusquedaAvanzada;
    procedure btnSalirClick(Sender: TObject);
    procedure ZQ_EgresosAfterScroll(DataSet: TDataSet);
    procedure pintarTortas(Serie: TChartSeries; cantidad: integer);
    procedure ZQ_IngresosAfterScroll(DataSet: TDataSet);
    procedure DBChartIngresosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure DBChartEgresosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure EKDbSuma_IngresosSumListChanged(Sender: TObject);
    procedure EKDbSuma_EgresosSumListChanged(Sender: TObject);
    procedure EKDbSuma_MovSumListChanged(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure abrirBalance(fecha_desde: Tdate;  fecha_hasta: TDate; id_sucursal: integer);
    procedure calcularResumenBalance(fecha_desde: Tdate; fecha_hasta: TDate; id_sucursal: integer);
    procedure DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    Query_Egresos: boolean;
    Query_Ingresos: boolean;

    indiceGraficoIngreso: integer;
    indiceGraficoEgreso: integer;
  end;

var
  FEstadisticaMovInternos: TFEstadisticaMovInternos;

implementation

uses UDM, UPrincipal, DateUtils;

{$R *.dfm}

procedure TFEstadisticaMovInternos.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFEstadisticaMovInternos.ZQ_EgresosAfterScroll(DataSet: TDataSet);
begin
  if Query_Egresos and (not ZQ_Egresos.IsEmpty) then
  begin
    pintarTortas(DBChartEgresos.Series[0], ZQ_Egresos.RecordCount);
    DBChartEgresos.Series[0].ValueColor[ZQ_Egresos.RecNo - 1]:= $00404080;
  end;
end;


procedure TFEstadisticaMovInternos.ZQ_IngresosAfterScroll(DataSet: TDataSet);
begin
  if Query_Ingresos and (not ZQ_Ingresos.IsEmpty) then
  begin
    pintarTortas(DBChartIngresos.Series[0], ZQ_Ingresos.RecordCount);
    DBChartIngresos.Series[0].ValueColor[ZQ_Ingresos.RecNo - 1]:= $00404080;
  end;
end;


procedure TFEstadisticaMovInternos.pintarTortas(Serie: TChartSeries; cantidad: integer);
var
  i: integer;
begin
  for i := 0 to (cantidad-1) do
    Serie.ValueColor[i]:= clYellow;
end;


procedure TFEstadisticaMovInternos.DBChartIngresosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  serie: TChartSeries;
  indice: Integer;
  porcentaje: double;
begin
//  serie:= DBChartIngresos.Series[0];
//  indice:= serie.Clicked(X, Y); //obtengo el indice en el cual estoy posicionado
//
//
//  DBChartIngresos.ShowHint:= indice <> -1; //si el indice obtenido es distinto de -1, entonces muestro el hint
//  if DBChartIngresos.ShowHint then
//  begin
//    Application.ActivateHint(Mouse.CursorPos);
//
//    ZQ_Ingresos.Locate('NOMBRE_MOVIMIENTO', serie.XLabel[indice], []);
//    porcentaje:= (serie.ValuesLists[1].Value[indice] * 100) / serie.ValuesLists[1].Total;
//    DBChartIngresos.Hint := ( 'Tipo Movimiento: '+serie.XLabel[indice]+#13
//                             +'Total Ingresos: '+FormatFloat('$ ###,###,##0.00', serie.ValuesLists[1].Value[indice])+#13
//                             +'Porcentaje Ingreso: '+FormatFloat('##0.00 %', porcentaje));
//  end;
end;


procedure TFEstadisticaMovInternos.DBChartEgresosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  serie: TChartSeries;
  indice: Integer;
  porcentaje: double;
begin
//  serie:= DBChartEgresos.Series[0];
//  indice:= serie.Clicked(x, y); //obtengo el indice en el cual estoy posicionado
//
//  DBChartEgresos.ShowHint:= indice <> -1; //si el indice obtenido es distinto de -1, entonces muestro el hint
//  if DBChartEgresos.ShowHint then
//  begin
//    Application.ActivateHint(Mouse.CursorPos);
//
//    ZQ_Egresos.Locate('NOMBRE_MOVIMIENTO', serie.XLabel[indice], []);
//    porcentaje:= (serie.ValuesLists[1].Value[indice] * 100) / serie.ValuesLists[1].Total;
//    DBChartEgresos.Hint := ( 'Tipo Movimiento: '+serie.XLabel[indice]+#13
//                             +'Total Egresos: '+FormatFloat('$ ###,###,##0.00', serie.ValuesLists[1].Value[indice])+#13
//                             +'Porcentaje Egreso: '+FormatFloat('##0.00 %', porcentaje));
//  end;
end;


procedure TFEstadisticaMovInternos.FormCreate(Sender: TObject);
var
  anio, mes, indice_suc: integer;
begin
  IsOrdenarGrillaBalance.CargarConfigColunmas;
  IsOrdenarGrillaMovimientos.CargarConfigColunmas;

  QRRepListadoDBLogo.DataSet:= dm.ZQ_Sucursal;
  QRRepBalanceDBLogo.DataSet:= dm.ZQ_Sucursal;

  PageControl.ActivePageIndex:= 0;

  lblBalanceFecha.Caption:= '';
  lblBalanceSucursal.Caption:= '';
  lblIngEgrFecha.Caption:= '';
  lblIngEgrSucursal.Caption:= '';
  lblMovFecha.Caption:= '';
  lblMovSucursal.Caption:= '';

  indiceGraficoIngreso:= -1;
  indiceGraficoEgreso:= -1;

  ZQ_Sucursal.open;

  mes:= MonthOf(dm.ISModelo.Fecha);
  anio:= YearOf(dm.ISModelo.Fecha);

  TISCriterioBA(ISBuscarBalance.CriteriosBusqueda.Items[2]).TipoCombollenarSQL:= dm.ZQ_SucursalesVisibles;
  TISCriterioBA(ISBuscar_Mov.CriteriosBusqueda.Items[2]).TipoCombollenarSQL:= dm.ZQ_SucursalesVisibles;
  TISCriterioBA(ISBuscaIngEgr.CriteriosBusqueda.Items[2]).TipoCombollenarSQL:= dm.ZQ_SucursalesVisibles;

  if dm.ZQ_SucursalesVisibles.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    indice_suc:= dm.ZQ_SucursalesVisibles.RecNo - 1
  else
    indice_suc:= 0;

  TISCriterioBA(ISBuscarBalance.CriteriosBusqueda.Items[0]).Valor := (DateToStr(EncodeDate(anio, mes, 1)));
  TISCriterioBA(ISBuscarBalance.CriteriosBusqueda.Items[1]).Valor := DateToStr(dm.ISModelo.FechayHora);
  TISCriterioBA(ISBuscarBalance.CriteriosBusqueda.Items[2]).ItemIndex:= indice_suc;

  TISCriterioBA(ISBuscar_Mov.CriteriosBusqueda.Items[0]).Valor := (DateToStr(EncodeDate(anio, mes, 1)));
  TISCriterioBA(ISBuscar_Mov.CriteriosBusqueda.Items[1]).Valor := DateToStr(dm.ISModelo.FechayHora);
  TISCriterioBA(ISBuscar_Mov.CriteriosBusqueda.Items[2]).ItemIndex:= indice_suc;

  TISCriterioBA(ISBuscaIngEgr.CriteriosBusqueda.Items[0]).Valor := (DateToStr(EncodeDate(anio, mes, 1)));
  TISCriterioBA(ISBuscaIngEgr.CriteriosBusqueda.Items[1]).Valor := DateToStr(dm.ISModelo.FechayHora);
  TISCriterioBA(ISBuscaIngEgr.CriteriosBusqueda.Items[2]).ItemIndex:= indice_suc;
end;


procedure TFEstadisticaMovInternos.FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
var
 ancho:integer;
begin
  ancho:= TabIngresos_Egresos.Width;
  PanelIngresos.Width:= round(ancho/2);
  PanelEgresos.Width:= round(ancho/2);
end;


procedure TFEstadisticaMovInternos.EKDbSuma_IngresosSumListChanged(Sender: TObject);
begin
  lblTotalIngresos.Caption:= 'TOTAL: '+FormatFloat('$ ###,###,###,##0.00', ISDbSuma_Ingresos.SumCollection.Items[0].SumValue);
end;


procedure TFEstadisticaMovInternos.EKDbSuma_EgresosSumListChanged(Sender: TObject);
begin
  lblTotalEgresos.Caption:= 'TOTAL: '+FormatFloat('$ ###,###,###,##0.00', ISDbSuma_Egresos.SumCollection.Items[0].SumValue);
end;


procedure TFEstadisticaMovInternos.EKDbSuma_MovSumListChanged(Sender: TObject);
begin
  lblMov_TotalIngresos.Caption:= 'Total Ingresos: '+FormatFloat('$ ###,###,###,##0.00', ISDbSuma_Mov.SumCollection.Items[0].SumValue);
  lblMov_TotalEgresos.Caption:= 'Total Egresos: '+FormatFloat('$ ###,###,###,##0.00', ISDbSuma_Mov.SumCollection.Items[1].SumValue);
end;

procedure TFEstadisticaMovInternos.btnBuscarClick(Sender: TObject);
var
  condicionImporte, filtro: string;
  idSucursal: integer;
begin
//BALANCE
  if (PageControl.ActivePage = TabBalance) or (PageControl.ActivePage = TabBalanceGrafico) then
  begin
    lblBalanceFecha.Caption:= '';
    lblBalanceSucursal.Caption:= '';

    if  ISBuscarBalance.BuscarSinEjecutar then
      if (ISBuscarBalance.ParametrosSeleccionados1[0] = '') or (ISBuscarBalance.ParametrosSeleccionados1[1] = '') then
      begin
        Application.MessageBox('No se ha cargado una de las fechas', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        lblBalanceSucursal.Caption:= 'Sucursal: '+ISBuscarBalance.ParametrosSelecReales1[2];
        if ISBuscarBalance.ParametrosSeleccionados1[2] = '0' then
          abrirBalance(StrToDate(ISBuscarBalance.ParametrosSeleccionados1[0]), StrToDate(ISBuscarBalance.ParametrosSeleccionados1[1]), -1)
        else
          abrirBalance(StrToDate(ISBuscarBalance.ParametrosSeleccionados1[0]), StrToDate(ISBuscarBalance.ParametrosSeleccionados1[1]), StrToInt(ISBuscarBalance.ParametrosSeleccionados1[2]));
      end;
  end;

//LISTA MOVIMIENTOS
  if PageControl.ActivePage = TabMovimientos then
  begin
    lblMovFecha.Caption:= '';
    lblMovSucursal.Caption:= '';

    if  ISBuscar_Mov.BuscarSinEjecutar then
      if (ISBuscar_Mov.ParametrosSeleccionados1[0] = '') or (ISBuscar_Mov.ParametrosSeleccionados1[1] = '') then
      begin
        Application.MessageBox('No se ha cargado una de las fechas', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        ZQ_Movimientos.Close;
        ZQ_Movimientos.ParamByName('fecha_desde').AsDate:= StrToDate(ISBuscar_Mov.ParametrosSeleccionados1[0]);
        ZQ_Movimientos.ParamByName('fecha_hasta').AsDate:= StrToDate(ISBuscar_Mov.ParametrosSeleccionados1[1]);
        if ISBuscar_Mov.ParametrosSeleccionados1[2] = '0' then
          ZQ_Movimientos.ParamByName('id_sucursal').AsInteger:= -1
        else
          ZQ_Movimientos.ParamByName('id_sucursal').AsInteger:= StrToInt(ISBuscar_Mov.ParametrosSeleccionados1[2]);
        ZQ_Movimientos.Open;

        filtro:= '(1 = 1)';
        if ISBuscar_Mov.ParametrosSelecReales1[3] <> '' then
          filtro:= filtro + ' and NOMBRE_MOVIMIENTO LIKE ''*'+UpperCase(ISBuscar_Mov.ParametrosSelecReales1[3])+'*''';

        if ISBuscar_Mov.ParametrosSelecReales1[4] <> '' then
          filtro:= filtro + ' and ID_TIPO_CPB = '+ISBuscar_Mov.ParametrosSeleccionados1[4];

        condicionImporte:= ISBuscar_Mov.ParametrosSelecCondicion1[5];
        if ISBuscar_Mov.ParametrosSelecReales1[5] <> '' then
          if ISBuscar_Mov.ParametrosSelecReales1[4] = '' then //si no filtro por tipo
            filtro:= filtro + ' and ((ingresos '+condicionImporte+' '+ISBuscar_Mov.ParametrosSelecReales1[5]+') or '+
                      '(egresos '+condicionImporte+' '+ISBuscar_Mov.ParametrosSelecReales1[5]+'))'
          else //si filtre por tipo
            if ISBuscar_Mov.ParametrosSeleccionados1[4] = '16' then //si no filtro por tipo
              filtro:= filtro + ' and (ingresos '+condicionImporte+' '+ISBuscar_Mov.ParametrosSelecReales1[5]+')'
            else
              filtro:= filtro + ' and (egresos '+condicionImporte+' '+ISBuscar_Mov.ParametrosSelecReales1[5]+')';

        if filtro <> '(1 = 1)' then
        begin
          ZQ_Movimientos.Filter:= filtro;
          ZQ_Movimientos.Filtered:= true;
        end
        else
          ZQ_Movimientos.Filtered:= false;

        lblMovFecha.Caption:= 'Movimientos Internos desde el '+ISBuscar_Mov.ParametrosSeleccionados1[0]+' al '+ISBuscar_Mov.ParametrosSeleccionados1[1];
        lblMovSucursal.Caption:= 'Sucursal: '+ISBuscar_Mov.ParametrosSelecReales1[2];
      end;
  end;

//INGRESOS VS EGRESOS
  if PageControl.ActivePage = TabIngresos_Egresos then
  begin
    lblIngEgrFecha.Caption:= '';
    lblIngEgrSucursal.Caption:= '';

    if  ISBuscaIngEgr.BuscarSinEjecutar then
      if (ISBuscaIngEgr.ParametrosSeleccionados1[0] = '') or (ISBuscaIngEgr.ParametrosSeleccionados1[1] = '') then
      begin
        Application.MessageBox('No se ha cargado una de las fechas', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        Query_Egresos:= false;
        Query_Ingresos:= false;

        idSucursal:= -1;
        if ISBuscaIngEgr.ParametrosSeleccionados1[2] <> '0' then
          idSucursal:= StrToInt(ISBuscaIngEgr.ParametrosSeleccionados1[2]);

        ZQ_Ingresos.Close;
        ZQ_Ingresos.ParamByName('fecha_desde').AsDate:= StrToDate(ISBuscaIngEgr.ParametrosSeleccionados1[0]);
        ZQ_Ingresos.ParamByName('fecha_hasta').AsDate:= StrToDate(ISBuscaIngEgr.ParametrosSeleccionados1[1]);
        ZQ_Ingresos.ParamByName('id_sucursal').AsInteger:= idSucursal;
        ZQ_Ingresos.Open;

        ZQ_Egresos.Close;
        ZQ_Egresos.ParamByName('fecha_desde').AsDate:= StrToDate(ISBuscaIngEgr.ParametrosSeleccionados1[0]);
        ZQ_Egresos.ParamByName('fecha_hasta').AsDate:= StrToDate(ISBuscaIngEgr.ParametrosSeleccionados1[1]);
        ZQ_Egresos.ParamByName('id_sucursal').AsInteger:= idSucursal;
        ZQ_Egresos.Open;

        lblIngEgrFecha.Caption:= 'Ingresos y Egresos desde el '+ISBuscaIngEgr.ParametrosSeleccionados1[0]+' al '+ISBuscaIngEgr.ParametrosSeleccionados1[1];
        lblIngEgrSucursal.Caption:= 'Sucursal: '+ISBuscaIngEgr.ParametrosSelecReales1[2];

        Query_Egresos:= true;
        Query_Ingresos:= true;
        ZQ_Ingresos.First;
        ZQ_Egresos.First;
        ZQ_Ingresos.First;
        ZQ_Egresos.First;
      end
  end;
end;


procedure TFEstadisticaMovInternos.abrirBalance(fecha_desde: Tdate;  fecha_hasta: TDate; id_sucursal: integer);
begin
  ZS_Balance.Close;
  ZS_Balance.ParamByName('fecha_desde').AsDate:= fecha_desde;
  ZS_Balance.ParamByName('fecha_hasta').AsDate:= fecha_hasta;
  ZS_Balance.ParamByName('id_sucursal').AsInteger:= id_sucursal;
  ZS_Balance.Open;

  lblBalanceFecha.Caption:= 'Balance Movimientos Internos desde el '+DateToStr(fecha_desde)+' al '+DateToStr(fecha_hasta);
  DBChartBalance.Title.Text[0]:= lblBalanceFecha.Caption;
  if lblBalanceSucursal.Caption <> '' then
    DBChartBalance.Title.Text[0]:= lblBalanceFecha.Caption+' / '+lblBalanceSucursal.Caption;

  calcularResumenBalance(fecha_desde, fecha_hasta, id_sucursal);
end;


procedure TFEstadisticaMovInternos.calcularResumenBalance(fecha_desde: Tdate;  fecha_hasta: TDate; id_sucursal: integer);
var
  inicial, final: double;
  fecha_desde_antes, fecha_hasta_antes: tdate;
begin
  fecha_desde_antes:= EncodeDate(1900,1,1);
  fecha_hasta_antes:= IncDay(fecha_desde, -1);
  ZS_CalcSaldos.Close;
  ZS_CalcSaldos.ParamByName('fecha_desde').AsDate:= fecha_desde_antes;
  ZS_CalcSaldos.ParamByName('fecha_hasta').AsDate:= fecha_hasta_antes;
  ZS_CalcSaldos.ParamByName('id_sucursal').AsInteger:= id_sucursal;
  ZS_CalcSaldos.Open;
  ZS_CalcSaldos.Last;
  inicial:= ZS_CalcSaldosSALDO.AsFloat;

  ZS_CalcSaldos.Close;
  ZS_CalcSaldos.ParamByName('fecha_desde').AsDate:= fecha_desde;
  ZS_CalcSaldos.ParamByName('fecha_hasta').AsDate:= fecha_hasta;
  ZS_CalcSaldos.ParamByName('id_sucursal').AsInteger:= id_sucursal;
  ZS_CalcSaldos.Open;
  ZS_CalcSaldos.Last;
  final:= ZS_CalcSaldosSALDO.AsFloat;
  ZS_CalcSaldos.Close;

  ISSuma_Balance.RecalcAll;

  lblBalanceTotalIngresos.Caption:= FormatFloat('$ ###,###,###,##0.00', ISSuma_Balance.SumCollection[0].SumValue);
  lblBalanceTotalEgresos.Caption:= FormatFloat('$ ###,###,###,##0.00', ISSuma_Balance.SumCollection[1].SumValue);
  lblBalanceSaldoInicial.Caption:= FormatFloat('$ ###,###,###,##0.00', inicial);
  lblBalanceSaldoFinal.Caption:= FormatFloat('$ ###,###,###,##0.00', final);
end;


procedure TFEstadisticaMovInternos.DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(TDBGrid(Sender), Rect, DataCol, Column, State);
end;


procedure TFEstadisticaMovInternos.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;


procedure TFEstadisticaMovInternos.btnImprimirClick(Sender: TObject);
begin
//BALANCE
  if PageControl.ActivePage = TabBalance then
  begin
    if ZS_Balance.IsEmpty then
      exit;

    DM.VariablesReportes(RepBalance);
    QRlblRepBalance_PieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
    QRlblRepBalance_CritBusqueda.Caption := ISBuscarBalance.ParametrosBuscados;

    QRlblRepBalance_SaldoIni.Caption:= lblBalanceSaldoInicial.Caption;
    QRlblRepBalance_SaldoFinal.Caption:= lblBalanceSaldoFinal.Caption;
    QRlblRepBalance_Ingresos.Caption:= lblBalanceTotalIngresos.Caption;
    QRlblRepBalance_Egresos.Caption:= lblBalanceTotalEgresos.Caption;

    ISVistaBalance.VistaPrevia;
  end;

//LISTA MOVIMIENTOS
  if PageControl.ActivePage = TabMovimientos then
  begin
    if ZQ_Movimientos.IsEmpty then
      exit;

    DM.VariablesReportes(RepListado);
    QRlblRepListado_PieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
    QRlblRepListado_CritBusqueda.Caption := ISBuscar_Mov.ParametrosBuscados;

    QRlblRepListado_Ingresos.Caption:= lblMov_TotalIngresos.Caption;
    QRlblRepListado_Egresos.Caption:= lblMov_TotalEgresos.Caption;

    IsVistaListado.VistaPrevia;
  end;
end;



procedure TFEstadisticaMovInternos.btnExcelClick(Sender: TObject);
begin
//BALANCE
  if PageControl.ActivePage = TabBalance then
  begin
    if not ZS_Balance.IsEmpty then
      dm.ExportarEXCEL(DBGridBalance);
  end;

//LISTA MOVIEMINTOS
  if PageControl.ActivePage = TabMovimientos then
  begin
    if not ZQ_Movimientos.IsEmpty then
      dm.ExportarEXCEL(DBGridMovimientos);
  end;
end;


procedure TFEstadisticaMovInternos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ISOrdenarGrillaBalance.GuardarConfigColumnas;
  IsOrdenarGrillaMovimientos.GuardarConfigColumnas;
end;

end.
