unit UEstadisticaStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, EKBusquedaAvanzada,
  StdCtrls, EKDbSuma, mxNativeExcel, mxExport, EKOrdenarGrilla, QRCtrls,
  QuickRpt, EKVistaPreviaQR;

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
    btImprimir: TdxBarLargeButton;
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
    RepEstadisticaStock: TQuickRep;
    QRBand5: TQRBand;
    QRDBImage1: TQRDBImage;
    QRLabel11: TQRLabel;
    RepCtas_Reporte_Titulo_2: TQRLabel;
    RepCtas_Reporte_Titulo_1: TQRLabel;
    QRBandDetalle: TQRBand;
    QRDBTextCoefGanancia: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBTextPrecioCosto: TQRDBText;
    QRDBTextPrecioVenta: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRChildBandCleinte: TQRChildBand;
    QRBand7: TQRBand;
    QRLabel24: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabelimporteVenta: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabelmporteCosto: TQRLabel;
    QRLabelCoefGanancia: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRExpr1: TQRExpr;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    QRExpr2: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    procedure ZQ_StockCalcFields(DataSet: TDataSet);
    procedure btnBuscarClick(Sender: TObject);
    procedure DBGridStockDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnExportarXLSClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
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

procedure TFEstadisticaStock.btImprimirClick(Sender: TObject);
begin
  if ZQ_Stock.IsEmpty then
  exit;
  
  EKVistaPreviaQR1.VistaPrevia;
end;

end.
