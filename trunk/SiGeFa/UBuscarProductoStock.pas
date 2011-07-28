unit UBuscarProductoStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, Grids, DBGrids, ExtCtrls, ComCtrls, DBCtrls, StdCtrls,
  Mask, ZSqlUpdate,DateUtils, EKOrdenarGrilla, EKBusquedaAvanzada,
  ActnList, XPStyleActnCtrls, ActnMan;

type
  TFBuscarProductoStock = class(TForm)
    Panel1: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnSeleccionar: TdxBarLargeButton;
    EKOrdenarGrilla: TEKOrdenarGrilla;
    btnSeleccinarYSalir: TdxBarLargeButton;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ASeleccionar: TAction;
    ASalir: TAction;
    EKBuscarStock: TEKBusquedaAvanzada;
    ZQ_Stock: TZQuery;
    ZQ_StockID_STOCK_PRODUCTO: TIntegerField;
    ZQ_StockSTOCK_ACTUAL: TFloatField;
    ZQ_StockSTOCK_MIN: TFloatField;
    ZQ_StockSTOCK_MAX: TFloatField;
    ZQ_StockSTOCK_REPEDIDO: TFloatField;
    ZQ_StockSTOCK_MIN_ALARMA: TStringField;
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
    ZQ_StockPOSICSUCURSAL: TStringField;
    DS_Stock: TDataSource;
    DBGridStock: TDBGrid;
    ZQ_StockID_PRODUCTO: TIntegerField;
    ZQ_StockCOLOR: TStringField;
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure ASeleccionarExecute(Sender: TObject);
    procedure ASalirExecute(Sender: TObject);
    procedure DBGridStockDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    OnSeleccionar : procedure() of object;
    SeleccionarYSalir: boolean;
  end;

var
  FBuscarProductoStock: TFBuscarProductoStock;

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFBuscarProductoStock.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFBuscarProductoStock.btnBuscarClick(Sender: TObject);
begin
  EKBuscarStock.Buscar;
end;


procedure TFBuscarProductoStock.FormActivate(Sender: TObject);
begin
  if ZQ_Stock.IsEmpty then
    btnBuscar.Click;
end;

procedure TFBuscarProductoStock.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFBuscarProductoStock.ASeleccionarExecute(Sender: TObject);
begin
  if btnSeleccionar.Enabled then
    btnSeleccionar.Click;
end;

procedure TFBuscarProductoStock.ASalirExecute(Sender: TObject);
begin
  if btnSalir.Enabled then
    btnSalir.Click;
end;

procedure TFBuscarProductoStock.DBGridStockDblClick(Sender: TObject);
begin
  if ((not(DBGridStock.SelectedRows.Count > 0)) and (not(ZQ_Stock.IsEmpty))) then
  begin
    if Assigned(OnSeleccionar) then
      OnSeleccionar
  end
  else
    Application.MessageBox(PChar('Debe seleccionar algún Producto.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;

end.
