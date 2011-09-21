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
    ZQ_StockID_POSICION_SUCURSAL: TIntegerField;
    ZQ_StockPUNTO_SALIDA: TStringField;
    btnSeleccionarTodos: TdxBarLargeButton;
    ASelTodos: TAction;
    ZQ_StockID_SUCURSAL: TIntegerField;
    ZQ_Producto: TZQuery;
    ZQ_ProductoNOMBRE: TStringField;
    ZQ_ProductoCOD_CORTO: TStringField;
    ZQ_ProductoID_PRODUCTO: TIntegerField;
    ZQ_ProductoCOD_CORTO_1: TStringField;
    ZQ_ProductoCODIGO_BARRA: TStringField;
    ZQ_ProductoLLEVAR_STOCK: TStringField;
    ZQ_ProductoMEDIDA: TStringField;
    ZQ_ProductoNOMBRE_MARCA: TStringField;
    ZQ_ProductoBAJA: TStringField;
    ZQ_ProductoNOMBRE_ARTICULO: TStringField;
    ZQ_ProductoTIPO_ARTICULO: TStringField;
    ZQ_ProductoPRECIO_COSTO: TFloatField;
    ZQ_ProductoPRECIO_VENTA: TFloatField;
    ZQ_ProductoCOEF_GANANCIA: TFloatField;
    ZQ_ProductoCOEF_DESCUENTO: TFloatField;
    ZQ_ProductoIMPUESTO_INTERNO: TFloatField;
    ZQ_ProductoIMPUESTO_IVA: TFloatField;
    ZQ_ProductoCOLOR: TStringField;
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure ASeleccionarExecute(Sender: TObject);
    procedure ASalirExecute(Sender: TObject);
    procedure DBGridStockDblClick(Sender: TObject);
    procedure btnSeleccionarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridStockDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSeleccionarTodosClick(Sender: TObject);
    procedure ASelTodosExecute(Sender: TObject);
    procedure ZQ_StockAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    OnSeleccionar : procedure() of object;
    OnSeleccionarTodos : procedure() of object;
    SeleccionarYSalir: boolean;
    usaCajero, usaTransferir, usaDevolucion: String;
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
var
  sql: String;
begin
  ZQ_Stock.Close;
  ZQ_Stock.SQL[22]:= '';


  if (usaCajero = 'S') then
  begin
   EKBuscarStock.SQL_Where.Clear;
   //Punto_Salida es el deposito de salida por defecto, todos los productos salen del mismo
   sql:= Format('where (pc.baja <> ''S'') and (pr.baja <> ''S'') and (sucursal.id_sucursal = %d) '
               +' and (posicion_sucursal.PUNTO_SALIDA = %s) '
               +' and (stock_producto.STOCK_ACTUAL > 0)',[SUCURSAL_LOGUEO, QuotedStr('S')]);
   EKBuscarStock.SQL_Where.Text:=sql;
   ZQ_Stock.SQL[22]:=sql;
  end;

  if (usaTransferir = 'S') then
  begin
    //si no tengo permiso para transferir stock pertenecientes a otras sucursales
    if not dm.EKUsrLogin.PermisoAccion('TRANSF_STOCK_AJENO') then
    begin   //entonces traigo solamente los productos de mi sucursal
      EKBuscarStock.SQL_Where.Clear;
      sql:= Format('where (pc.baja <> ''S'') and (pr.baja <> ''S'') and (sucursal.id_sucursal = %d) ',[SUCURSAL_LOGUEO]);
      EKBuscarStock.SQL_Where.Text:=sql;
      ZQ_Stock.SQL[22]:=sql;
    end;
  end;

  EKBuscarStock.Buscar;
end;


procedure TFBuscarProductoStock.FormActivate(Sender: TObject);
begin
  if ZQ_Stock.IsEmpty then
  begin
    Application.ProcessMessages;
    btnBuscar.Click;
  end
  else
    ZQ_Stock.Refresh;
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

procedure TFBuscarProductoStock.ASelTodosExecute(Sender: TObject);
begin
  if btnSeleccionarTodos.Enabled then
    btnSeleccionarTodos.Click;
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

procedure TFBuscarProductoStock.btnSeleccionarClick(Sender: TObject);
begin
  if ((not(DBGridStock.SelectedRows.Count > 0)) and (not(ZQ_Stock.IsEmpty))) then
  begin
    if Assigned(OnSeleccionar) then
      OnSeleccionar
  end
  else
    Application.MessageBox(PChar('Debe seleccionar algún Producto.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;

procedure TFBuscarProductoStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarGrilla.GuardarConfigColumnas;
end;

procedure TFBuscarProductoStock.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla.CargarConfigColumnas;
end;

procedure TFBuscarProductoStock.DBGridStockDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridStock, Rect, DataCol, Column, State);
end;

procedure TFBuscarProductoStock.btnSeleccionarTodosClick(Sender: TObject);
begin
  if (not (ZQ_Stock.IsEmpty)) then
  begin
    if Assigned(OnSeleccionarTodos) then
      OnSeleccionarTodos
  end
  else
    Application.MessageBox(PChar('No hay ningún producto para seleccionar.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;



procedure TFBuscarProductoStock.ZQ_StockAfterScroll(DataSet: TDataSet);
begin
  if usaDevolucion = 'S' then
  begin
    ZQ_Producto.Close;
    ZQ_Producto.ParamByName('id_producto').AsInteger:= ZQ_StockID_PRODUCTO.AsInteger;
    ZQ_Producto.Open;
  end
end;

end.
