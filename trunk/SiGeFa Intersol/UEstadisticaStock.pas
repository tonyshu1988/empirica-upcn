unit UEstadisticaStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, EKBusquedaAvanzada,
  StdCtrls, EKDbSuma, mxNativeExcel, mxExport, EKOrdenarGrilla, QRCtrls,
  QuickRpt, EKVistaPreviaQR, ActnList, XPStyleActnCtrls, ActnMan, cxClasses;

type
  TFEstadisticaStock = class(TForm)
    PanelContenedor: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnExportarXLS: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
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
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    RepStock: TQuickRep;
    QRBand5: TQRBand;
    QRLabel11: TQRLabel;
    RepStock_Subtitulo: TQRLabel;
    RepStock_Titulo: TQRLabel;
    QRBandDetalle: TQRBand;
    QRDBTextCoefGanancia: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBTextPrecioCosto: TQRDBText;
    QRDBTextPrecioVenta: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand7: TQRBand;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRExpr1: TQRExpr;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRlblPieDePagina: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData1: TQRSysData;
    TitleBand2: TQRBand;
    QRLabelCritBusqueda: TQRLabel;
    QRLabel48: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabelCoefGanancia: TQRLabel;
    QRLabelimporteVenta: TQRLabel;
    QRLabelmporteCosto: TQRLabel;
    QRDBLogo: TQRDBImage;
    QRExpr2: TQRExpr;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    procedure ZQ_StockCalcFields(DataSet: TDataSet);
    procedure btnBuscarClick(Sender: TObject);
    procedure DBGridStockDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnExportarXLSClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
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


procedure TFEstadisticaStock.DBGridStockDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridStock, Rect, DataCol, Column, State);
end;


procedure TFEstadisticaStock.btnExportarXLSClick(Sender: TObject);
begin
  if not ZQ_Stock.IsEmpty then
    dm.ExportarEXCEL(DBGridStock);
end;


procedure TFEstadisticaStock.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  EKOrdenarGrilla1.CargarConfigColumnas;

  //busqueda por comprobante
  if dm.ZQ_SucursalesVisibles.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    TEKCriterioBA(EKBuscarStock.CriteriosBusqueda.Items[10]).ItemIndex:= dm.ZQ_SucursalesVisibles.RecNo - 1;
end;


procedure TFEstadisticaStock.FormClose(Sender: TObject; var Action: TCloseAction);
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

  DM.VariablesReportes(RepStock);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption := EKBuscarStock.ParametrosBuscados;
  EKVistaPreviaQR1.VistaPrevia;
end;

procedure TFEstadisticaStock.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

end.
