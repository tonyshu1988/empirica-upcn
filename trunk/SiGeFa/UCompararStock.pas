unit UCompararStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZConnection, dxBar, dxBarExtItems, StdCtrls, ExtCtrls,
  dbcTableDataComparer, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Grids, DBGrids, ComCtrls;

type
  TFCompararStock = class(TForm)
    Conexion_Origen: TZConnection;
    Conexion_Destino: TZConnection;
    dxBarABM: TdxBarManager;
    btnBuscarOrigen: TdxBarLargeButton;
    btnBuscarDestino: TdxBarLargeButton;
    btnComparar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    Panel1: TPanel;
    Panel2: TPanel;
    lblOrigen: TLabel;
    lblDestino: TLabel;
    OpenFileOrigen: TOpenDialog;
    OpenFileDestino: TOpenDialog;
    ZQ_StockOrigen: TZQuery;
    ZQ_StockOrigenID_STOCK_PRODUCTO: TIntegerField;
    ZQ_StockOrigenID_PRODUCTO: TIntegerField;
    ZQ_StockOrigenID_POSICION_SUCURSAL: TIntegerField;
    ZQ_StockOrigenSTOCK_ACTUAL: TFloatField;
    ZQ_StockOrigenSTOCK_MIN: TFloatField;
    ZQ_StockOrigenSTOCK_MAX: TFloatField;
    ZQ_StockOrigenSTOCK_REPEDIDO: TFloatField;
    ZQ_StockOrigenSTOCK_MIN_ALARMA: TStringField;
    ZQ_VerSiCambio: TZQuery;
    ZQ_VerSiCambioID_STOCK_PRODUCTO: TIntegerField;
    ZQ_VerSiCambioID_PRODUCTO: TIntegerField;
    ZQ_VerSiCambioID_POSICION_SUCURSAL: TIntegerField;
    ZQ_VerSiCambioSTOCK_ACTUAL: TFloatField;
    ZQ_VerSiCambioSTOCK_MIN: TFloatField;
    ZQ_VerSiCambioSTOCK_MAX: TFloatField;
    ZQ_VerSiCambioSTOCK_REPEDIDO: TFloatField;
    ZQ_VerSiCambioSTOCK_MIN_ALARMA: TStringField;
    ZQ_Update: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Label2: TLabel;
    lblTotal: TLabel;
    Label4: TLabel;
    lblActualizado: TLabel;
    procedure btnBuscarOrigenClick(Sender: TObject);
    procedure btnBuscarDestinoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCompararClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCompararStock: TFCompararStock;

implementation

{$R *.dfm}

procedure TFCompararStock.btnBuscarOrigenClick(Sender: TObject);
begin
  if OpenFileOrigen.Execute then
  begin
    Conexion_Origen.Database:= OpenFileOrigen.FileName;
    lblOrigen.Caption:= ' '+OpenFileOrigen.FileName;
  end;
end;


procedure TFCompararStock.btnBuscarDestinoClick(Sender: TObject);
begin
  if OpenFileDestino.Execute then
  begin
    Conexion_Destino.Database:= OpenFileDestino.FileName;  
    lblDestino.Caption:= ' '+OpenFileDestino.FileName;
  end;
end;


procedure TFCompararStock.FormCreate(Sender: TObject);
begin
  lblOrigen.Caption:= '';
  lblDestino.Caption:= '';
  lblTotal.Caption:= '';
  lblActualizado.Caption:= '';

  OpenFileOrigen.InitialDir:= ExtractFilePath(Application.ExeName);
  OpenFileDestino.InitialDir:= ExtractFilePath(Application.ExeName);
end;

procedure TFCompararStock.btnCompararClick(Sender: TObject);
var
  cambio: boolean;
  contador: integer;
  total: integer;
  actual: integer;
begin
  GrupoEditando.Enabled:= false;

  lblTotal.Caption:= '';
  lblActualizado.Caption:= '';

  contador:= 0;

  ZQ_StockOrigen.Close;
  ZQ_StockOrigen.Open;
  ZQ_StockOrigen.DisableControls;

  total:= ZQ_StockOrigen.RecordCount;
  lblTotal.Caption:= IntToStr(total);
  ProgressBar1.Min:= 0;
  ProgressBar1.Max:= total;

  ZQ_StockOrigen.First;
  while not ZQ_StockOrigen.Eof do
  begin
    ZQ_VerSiCambio.Close;
    ZQ_VerSiCambio.ParamByName('id_producto').AsInteger:= ZQ_StockOrigenID_PRODUCTO.AsInteger;
    ZQ_VerSiCambio.ParamByName('id_posicion').AsInteger:= ZQ_StockOrigenID_POSICION_SUCURSAL.AsInteger;
    ZQ_VerSiCambio.ParamByName('stock_actual').AsFloat:= ZQ_StockOrigenSTOCK_ACTUAL.AsFloat;
    ZQ_VerSiCambio.ParamByName('stock_min').AsFloat:= ZQ_StockOrigenSTOCK_MIN.AsFloat;
    ZQ_VerSiCambio.ParamByName('stock_max').AsFloat:= ZQ_StockOrigenSTOCK_MAX.AsFloat;
    ZQ_VerSiCambio.ParamByName('stock_repedido').AsFloat:= ZQ_StockOrigenSTOCK_REPEDIDO.AsFloat;
    ZQ_VerSiCambio.ParamByName('stock_min_alarma').AsString:= ZQ_StockOrigenSTOCK_MIN_ALARMA.AsString;
    ZQ_VerSiCambio.Open;

    if ZQ_VerSiCambio.IsEmpty then //si es vacia es porque tiene algo distinco
    begin
      ZQ_Update.Close;
      ZQ_Update.ParamByName('id_producto').AsInteger:= ZQ_StockOrigenID_PRODUCTO.AsInteger;
      ZQ_Update.ParamByName('id_posicion').AsInteger:= ZQ_StockOrigenID_POSICION_SUCURSAL.AsInteger;
      ZQ_Update.ParamByName('stock_actual').AsFloat:= ZQ_StockOrigenSTOCK_ACTUAL.AsFloat;
      ZQ_Update.ParamByName('stock_min').AsFloat:= ZQ_StockOrigenSTOCK_MIN.AsFloat;
      ZQ_Update.ParamByName('stock_max').AsFloat:= ZQ_StockOrigenSTOCK_MAX.AsFloat;
      ZQ_Update.ParamByName('stock_repedido').AsFloat:= ZQ_StockOrigenSTOCK_REPEDIDO.AsFloat;
      ZQ_Update.ParamByName('stock_min_alarma').Value:= ZQ_StockOrigenSTOCK_MIN_ALARMA.Value;
      ZQ_Update.ExecSQL;

      Conexion_Destino.Commit;

      contador:= contador + 1;
      lblActualizado.Caption:= IntToStr(contador);
    end;

    ZQ_StockOrigen.Next;
    ProgressBar1.Position:= ZQ_StockOrigen.RecNo;
    Application.ProcessMessages;
  end;

  ShowMessage(Format('Se actualizaron %d productos', [contador]));

  GrupoEditando.Enabled:= true;  
end;

procedure TFCompararStock.btnSalirClick(Sender: TObject);
begin
  close;
end;

end.
