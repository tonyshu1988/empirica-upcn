unit UEstadisticaMovInternos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, dxBar, dxBarExtItems, TeeProcs, TeEngine, Chart,
  DbChart, ExtCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Series, StdCtrls, EKDbSuma,
  EKBusquedaAvanzada, ZStoredProcedure;

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
    TabResumenDiario: TTabSheet;
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
    ZQ_IngresosID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_IngresosNOMBRE_MOVIMIENTO: TStringField;
    ZQ_IngresosSUM: TFloatField;
    ZQ_Egresos: TZQuery;
    ZQ_EgresosID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_EgresosNOMBRE_MOVIMIENTO: TStringField;
    ZQ_EgresosSUM: TFloatField;
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
    EKDbSuma_Ingresos: TEKDbSuma;
    EKDbSuma_Egresos: TEKDbSuma;
    lblMov_TotalEgresos: TLabel;
    EKDbSuma_Mov: TEKDbSuma;
    lblMov_TotalIngresos: TLabel;
    DBChartResumen: TDBChart;
    Series4: TFastLineSeries;
    Series2: TPointSeries;
    Series5: TFastLineSeries;
    Series3: TPointSeries;
    ZS_Resumen: TZStoredProc;
    ZS_ResumenFECHA: TDateField;
    ZS_ResumenINGRESO: TFloatField;
    ZS_ResumenEGRESO: TFloatField;
    ZS_ResumenSALDO: TFloatField;
    ZS_ResumenSALDODIARIO: TFloatField;
    DS_Resumen: TDataSource;
    EKSuma_Resumen: TEKDbSuma;
    DBGridResumen: TDBGrid;
    EKBuscar_Mov: TEKBusquedaAvanzada;
    EKBuscar_IngEgr: TEKBusquedaAvanzada;
    EKBuscar_Resumen: TEKBusquedaAvanzada;
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
    procedure btnSalirClick(Sender: TObject);
    procedure ZQ_EgresosAfterScroll(DataSet: TDataSet);
    procedure ZQ_EgresosAfterOpen(DataSet: TDataSet);
    procedure pintarTortas(Serie: TChartSeries; DataSet: TDataSet);
    procedure ZQ_IngresosAfterOpen(DataSet: TDataSet);
    procedure ZQ_IngresosAfterScroll(DataSet: TDataSet);
    procedure DBChartIngresosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure DBGridIngresosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridEgresosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBChartEgresosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DBGridMovimientosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure EKDbSuma_IngresosSumListChanged(Sender: TObject);
    procedure EKDbSuma_EgresosSumListChanged(Sender: TObject);
    procedure EKDbSuma_MovSumListChanged(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
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
  if Query_Egresos then
  begin
    pintarTortas(DBChartEgresos.Series[0], DataSet);
    DBChartEgresos.Series[0].ValueColor[DataSet.RecNo - 1]:= $00404080;
  end;
end;


procedure TFEstadisticaMovInternos.ZQ_IngresosAfterScroll(DataSet: TDataSet);
begin
  if Query_Ingresos then
  begin
    pintarTortas(DBChartIngresos.Series[0], DataSet);
    DBChartIngresos.Series[0].ValueColor[DataSet.RecNo - 1]:= $00404080;
  end;
end;


procedure TFEstadisticaMovInternos.ZQ_EgresosAfterOpen(DataSet: TDataSet);
begin
  Query_Egresos:= true;
end;


procedure TFEstadisticaMovInternos.ZQ_IngresosAfterOpen(DataSet: TDataSet);
begin
  Query_Ingresos:= true;
end;


procedure TFEstadisticaMovInternos.pintarTortas(Serie: TChartSeries; DataSet: TDataSet);
var
  i: integer;
begin
  for i := 0 to (DataSet.RecordCount-1) do
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
  anio, mes: integer;
begin
  PageControl.ActivePageIndex:= 0;

  indiceGraficoIngreso:= -1;
  indiceGraficoEgreso:= -1;

  ZQ_Sucursal.open;

  mes:= MonthOf(dm.EKModelo.Fecha);
  anio:= YearOf(dm.EKModelo.Fecha);

  TEKCriterioBA(EKBuscar_Mov.CriteriosBusqueda.Items[0]).Valor := (DateToStr(EncodeDate(anio, mes, 1)));
  TEKCriterioBA(EKBuscar_Mov.CriteriosBusqueda.Items[1]).Valor := DateToStr(dm.EKModelo.FechayHora);

//  ZQ_Ingresos.ParamByName('fecha_desde').AsDate:= EncodeDate(2000,1,1);
//  ZQ_Ingresos.ParamByName('fecha_hasta').AsDate:= EncodeDate(2020,1,1);
//  ZQ_Ingresos.Open;
//
//  ZQ_Egresos.ParamByName('fecha_desde').AsDate:= EncodeDate(2000,1,1);
//  ZQ_Egresos.ParamByName('fecha_hasta').AsDate:= EncodeDate(2020,1,1);
//  ZQ_Egresos.Open;
end;


procedure TFEstadisticaMovInternos.DBGridIngresosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridIngresos, rect, DataCol, Column, State);
end;


procedure TFEstadisticaMovInternos.DBGridEgresosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridEgresos, rect, DataCol, Column, State);
end;


procedure TFEstadisticaMovInternos.DBGridMovimientosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridMovimientos, rect, DataCol, Column, State);
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
  lblTotalIngresos.Caption:= 'TOTAL: '+FormatFloat('$ ###,###,###,##0.00', EKDbSuma_Ingresos.SumCollection.Items[0].SumValue);
end;


procedure TFEstadisticaMovInternos.EKDbSuma_EgresosSumListChanged(Sender: TObject);
begin
  lblTotalEgresos.Caption:= 'TOTAL: '+FormatFloat('$ ###,###,###,##0.00', EKDbSuma_Egresos.SumCollection.Items[0].SumValue);
end;


procedure TFEstadisticaMovInternos.EKDbSuma_MovSumListChanged(Sender: TObject);
begin
  lblMov_TotalIngresos.Caption:= 'TOTAL INGRESOS: '+FormatFloat('$ ###,###,###,##0.00', EKDbSuma_Mov.SumCollection.Items[0].SumValue);
  lblMov_TotalEgresos.Caption:= 'TOTAL EGRESOS: '+FormatFloat('$ ###,###,###,##0.00', EKDbSuma_Mov.SumCollection.Items[1].SumValue);
end;

procedure TFEstadisticaMovInternos.btnBuscarClick(Sender: TObject);
var
  condicionImporte, filtro: string;
begin
  if PageControl.ActivePage.Name = 'TabMovimientos' then
  begin
    if  EKBuscar_Mov.BuscarSinEjecutar then
      if (EKBuscar_Mov.ParametrosSeleccionados1[0] = '') or (EKBuscar_Mov.ParametrosSeleccionados1[1] = '') then
      begin
        Application.MessageBox('No se ha cargado una de las fechas', 'Verifique', MB_OK + MB_ICONINFORMATION);
        btnBuscar.Click;
      end
      else
      begin
        ZQ_Movimientos.Close;
        ZQ_Movimientos.ParamByName('fecha_desde').AsDate:= StrToDate(EKBuscar_Mov.ParametrosSeleccionados1[0]);
        ZQ_Movimientos.ParamByName('fecha_hasta').AsDate:= StrToDate(EKBuscar_Mov.ParametrosSeleccionados1[1]);
        if EKBuscar_Mov.ParametrosSeleccionados1[2] = '' then
          ZQ_Movimientos.ParamByName('id_sucursal').AsInteger:= -1
        else
          ZQ_Movimientos.ParamByName('id_sucursal').AsInteger:= StrToInt(EKBuscar_Mov.ParametrosSeleccionados1[2]);
        ZQ_Movimientos.Open;

  filtro:= '(1 = 1)';
  if EKBuscar_Mov.ParametrosSelecReales1[3] <> '' then
    filtro:= filtro + ' and upper(NOMBRE_MOVIMIENTO) LIKE ''%''||upper('+EKBuscar_Mov.ParametrosSelecReales1[3]+')||''%''';

  if EKBuscar_Mov.ParametrosSelecReales1[4] <> '' then
    filtro:= filtro + ' and ID_TIPO_CPB = '+EKBuscar_Mov.ParametrosSeleccionados1[4];

  condicionImporte:= EKBuscar_Mov.ParametrosSelecCondicion1[5];
  if EKBuscar_Mov.ParametrosSelecReales1[5] <> '' then
    if EKBuscar_Mov.ParametrosSelecReales1[4] = '' then //si no filtro por tipo
      filtro:= filtro + ' and ((ingresos '+condicionImporte+' '+EKBuscar_Mov.ParametrosSelecReales1[5]+') or '+
                '(egresos '+condicionImporte+' '+EKBuscar_Mov.ParametrosSelecReales1[5]+'))'
    else //si filtre por tipo
      if EKBuscar_Mov.ParametrosSeleccionados1[4] = '16' then //si no filtro por tipo
        filtro:= filtro + ' and (ingresos '+condicionImporte+' '+EKBuscar_Mov.ParametrosSelecReales1[5]+')'
      else
        filtro:= filtro + ' and (egresos '+condicionImporte+' '+EKBuscar_Mov.ParametrosSelecReales1[5]+')';

  if filtro <> '(1 = 1)' then
  begin
    ZQ_Movimientos.Filter:= filtro;
    ZQ_Movimientos.Filtered:= true;
  end
  else
    ZQ_Movimientos.Filtered:= false;

//        lblSaldo_Encabezado1.Caption:= 'Saldo Cuentas al '+EKBuscarSaldo.ParametrosSeleccionados1[1];
//        lblSaldo_Encabezado2.Caption:= 'Sucursal: '+EKBuscarSaldo.ParametrosSelecReales1[0];
      end;
  end;

  if PageControl.ActivePage.Name = 'TabIngresos_Egresos' then
  begin
  end;

  if PageControl.ActivePage.Name = 'TabResumenDiario' then
  begin
  end;
end;

end.
