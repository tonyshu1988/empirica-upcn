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
    DBGrid: TDBGrid;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnSeleccionar: TdxBarLargeButton;
    ZQ_Producto: TZQuery;
    DS_Producto: TDataSource;
    EKOrdenarGrilla: TEKOrdenarGrilla;
    EKBuscarProducto: TEKBusquedaAvanzada;
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
    btnSeleccinarYSalir: TdxBarLargeButton;
    ZQ_ProductoPRECIO_COSTO: TFloatField;
    ZQ_ProductoPRECIO_VENTA: TFloatField;
    ZQ_ProductoCOEF_GANANCIA: TFloatField;
    ZQ_ProductoCOEF_DESCUENTO: TFloatField;
    ZQ_ProductoIMPUESTO_INTERNO: TFloatField;
    ZQ_ProductoIMPUESTO_IVA: TFloatField;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ASeleccionar: TAction;
    ASalir: TAction;
    ZQ_ProductoCOLOR: TStringField;
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSeleccionarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure ASeleccionarExecute(Sender: TObject);
    procedure ASalirExecute(Sender: TObject);
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
  EKBuscarProducto.Buscar;
end;


procedure TFBuscarProductoStock.btnSeleccionarClick(Sender: TObject);
begin
  if ((not(DBGrid.SelectedRows.Count > 0)) and (not(ZQ_Producto.IsEmpty))) then
  begin
    if Assigned(OnSeleccionar) then
      OnSeleccionar
  end
  else
    Application.MessageBox(PChar('Debe seleccionar algún Producto.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;


procedure TFBuscarProductoStock.FormActivate(Sender: TObject);
begin
  if ZQ_Producto.IsEmpty then
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

end.
