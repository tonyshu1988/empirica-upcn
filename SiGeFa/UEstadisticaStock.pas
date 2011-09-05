unit UEstadisticaStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, EKBusquedaAvanzada,
  StdCtrls, EKDbSuma, mxNativeExcel, mxExport, EKOrdenarGrilla;

type
  TFEstadisticaStock = class(TForm)
    PanelContenedor: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnExportarXLS: TdxBarLargeButton;
    btnEditarGrilla: TdxBarLargeButton;
    btnProcesarImportes: TdxBarLargeButton;
    btnSeleccionar: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btBuscarGoogle: TdxBarLargeButton;
    btImprimirEtiquetas: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    DBGridStock: TDBGrid;
    ZQ_Stock: TZQuery;
    DS_Stock: TDataSource;
    EKBuscarStock: TEKBusquedaAvanzada;
    ZQ_StockPRECIO_COSTO: TFloatField;
    ZQ_StockPRECIO_VENTA: TFloatField;
    ZQ_StockID_STOCK_PRODUCTO: TIntegerField;
    ZQ_StockSTOCK_ACTUAL: TFloatField;
    ZQ_StockNOMBRE: TStringField;
    ZQ_StockCOD_CORTO_CABECERA: TStringField;
    ZQ_StockCOD_CORTO_PRODUCTO: TStringField;
    ZQ_StockCODIGO_BARRA: TStringField;
    ZQ_StockMEDIDA: TStringField;
    ZQ_StockNOMBRE_MARCA: TStringField;
    ZQ_StockBAJA: TStringField;
    ZQ_StockNOMBRE_ARTICULO: TStringField;
    ZQ_StockTIPO_ARTICULO: TStringField;
    ZQ_StockSUCURSAL: TStringField;
    ZQ_StockSECCION: TStringField;
    ZQ_StockSECTOR: TStringField;
    ZQ_StockFILA: TStringField;
    ZQ_StockCOLUMNA: TStringField;
    ZQ_StockCOLOR: TStringField;
    ZQ_StockPOSICSUCURSAL: TStringField;
    ZQ_Stockpreciocostostock: TFloatField;
    ZQ_Stockprecioventastock: TFloatField;
    Panel2: TPanel;
    lblTotales: TLabel;
    EKDbSuma_Totales: TEKDbSuma;
    mxDBGridExport: TmxDBGridExport;
    mxNativeExcel1: TmxNativeExcel;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    procedure ZQ_StockCalcFields(DataSet: TDataSet);
    procedure btnBuscarClick(Sender: TObject);
    procedure DBGridStockDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnExportarXLSClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstadisticaStock: TFEstadisticaStock;

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFEstadisticaStock.ZQ_StockCalcFields(DataSet: TDataSet);
begin
  ZQ_Stockpreciocostostock.AsFloat := (ZQ_StockPRECIO_COSTO.AsFloat * ZQ_StockSTOCK_ACTUAL.AsFloat);
  ZQ_Stockprecioventastock.AsFloat := (ZQ_StockPRECIO_VENTA.AsFloat * ZQ_StockSTOCK_ACTUAL.AsFloat);
end;

procedure TFEstadisticaStock.btnBuscarClick(Sender: TObject);
begin
EKBuscarStock.Buscar;
lblTotales.Caption:= ' Precio Costo Stock Total: '+FormatFloat('$ ###,###,##0.00', EKDbSuma_Totales.SumCollection.Items[2].SumValue)+'          Precio Venta Stock Total: '+FormatFloat('$ ###,###,##0.00', EKDbSuma_Totales.SumCollection.Items[3].SumValue);
end;

procedure TFEstadisticaStock.DBGridStockDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridStock, Rect, DataCol, Column, State);
end;

procedure TFEstadisticaStock.btnExportarXLSClick(Sender: TObject);
begin
  if not ZQ_Stock.IsEmpty then
    mxDBGridExport.Select;
end;

procedure TFEstadisticaStock.FormCreate(Sender: TObject);
begin
EKOrdenarGrilla1.CargarConfigColumnas;
end;

procedure TFEstadisticaStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
EKOrdenarGrilla1.GuardarConfigColumnas;
end;

procedure TFEstadisticaStock.btnSalirClick(Sender: TObject);
begin
close;
end;

end.
