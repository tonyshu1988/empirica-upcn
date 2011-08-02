unit UEstadisticaMovInternos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, dxBar, dxBarExtItems, TeeProcs, TeEngine, Chart,
  DbChart, ExtCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Series;

type
  TFEstadisticaMovInternos = class(TForm)
    PageControl1: TPageControl;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    TabIngresoVsEgresos: TTabSheet;
    TabTipoMovimiento: TTabSheet;
    TabCuentas: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridIngresoVsEgresos: TDBGrid;
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
    DBChartEgresos: TDBChart;
    DBChart3: TDBChart;
    Series1: TPieSeries;
    DBChartIngresos: TDBChart;
    PieSeries1: TPieSeries;
    DBGrid1: TDBGrid;
    procedure btnSalirClick(Sender: TObject);
    procedure DBChartIngresosClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ZQ_EgresosAfterScroll(DataSet: TDataSet);
    procedure ZQ_EgresosAfterOpen(DataSet: TDataSet);
    procedure pintarTortas(Series: TChartSeries; DataSet: TDataSet);
    procedure ZQ_IngresosAfterOpen(DataSet: TDataSet);
    procedure ZQ_IngresosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    Query_Egresos: boolean;
    Query_Ingresos: boolean;
  end;

var
  FEstadisticaMovInternos: TFEstadisticaMovInternos;

implementation

uses UDM;

{$R *.dfm}

procedure TFEstadisticaMovInternos.btnSalirClick(Sender: TObject);
begin
 Close;
end;


procedure TFEstadisticaMovInternos.DBChartIngresosClickSeries(Sender: TCustomChart; Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  porcentaje: double;
begin
  ZQ_Ingresos.RecNo:= ValueIndex+1;
  porcentaje:= (Series.ValuesLists[1].Value[ValueIndex] * 100) / Series.ValuesLists[1].Total;
  ShowMessage(Series.XLabel[ValueIndex]+#13
              +'Total Ingresos: '+FormatFloat('$ ###,###,##0.00', Series.ValuesLists[1].Value[ValueIndex])+#13
              +'Porcentaje: '+FormatFloat('##0.00 %', porcentaje));
end;


procedure TFEstadisticaMovInternos.ZQ_EgresosAfterScroll(DataSet: TDataSet);
begin
  if Query_Egresos then
  begin
    pintarTortas(DBChartEgresos.Series[0], DataSet);
    DBChartEgresos.Series[0].ValueColor[DataSet.RecNo - 1]:= $00404080;
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


procedure TFEstadisticaMovInternos.pintarTortas(Series: TChartSeries; DataSet: TDataSet);
var
  i: integer;
begin
  for i := 0 to (DataSet.RecordCount-1) do
    Series.ValueColor[i]:= clYellow;
end;


procedure TFEstadisticaMovInternos.ZQ_IngresosAfterScroll(DataSet: TDataSet);
begin
  if Query_Ingresos then
  begin
    pintarTortas(DBChartIngresos.Series[0], DataSet);
    DBChartIngresos.Series[0].ValueColor[DataSet.RecNo - 1]:= $00404080;
  end;
end;

end.
