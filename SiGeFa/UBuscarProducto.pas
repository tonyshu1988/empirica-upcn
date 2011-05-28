unit UBuscarProducto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, Grids, DBGrids, ExtCtrls, ComCtrls, DBCtrls, StdCtrls,
  Mask, ZSqlUpdate,DateUtils, EKOrdenarGrilla, EKBusquedaAvanzada;

type
  TFBuscarProducto = class(TForm)
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
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSeleccionarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    OnSeleccionar : procedure() of object;
    SeleccionarYSalir: boolean;
  end;

var
  FBuscarProducto: TFBuscarProducto;

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFBuscarProducto.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFBuscarProducto.btnBuscarClick(Sender: TObject);
begin
  EKBuscarProducto.Buscar;
end;


procedure TFBuscarProducto.btnSeleccionarClick(Sender: TObject);
begin
  if btnSeleccionar.Down then
    SeleccionarYSalir:= false
  else
    if btnSeleccinarYSalir.Down then
      SeleccionarYSalir:= true;

  if ((not(DBGrid.SelectedRows.Count > 0)) and (not(ZQ_Producto.IsEmpty))) then
  begin
    if Assigned(OnSeleccionar) then
      OnSeleccionar
  end
  else
    Application.MessageBox(PChar('Debe seleccionar algún Producto.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;


procedure TFBuscarProducto.FormActivate(Sender: TObject);
begin
  btnBuscar.Click;
end;

end.
