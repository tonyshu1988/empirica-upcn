unit UTransferirStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB, DBClient, UBuscarProducto;

type
  TFTransferirStock = class(TForm)
    PanelContenedor: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btVolver: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnProcesar: TdxBarLargeButton;
    btnAsociar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    CD_Producto: TClientDataSet;
    CD_Producto_idProducto: TIntegerField;
    CD_Producto_producto: TStringField;
    CD_Producto_medida: TStringField;
    CD_Producto_marca: TStringField;
    CD_Producto_tipoArticulo: TStringField;
    CD_Producto_articulo: TStringField;
    CD_Producto_codigoBarra: TStringField;
    CD_Producto_codProducto: TStringField;
    CD_Producto_codCabecera: TStringField;
    CD_Producto_color: TStringField;
    DS_Producto: TDataSource;
    Panel1: TPanel;
    DBGridProducto: TDBGrid;
    CD_ProductoCantidad: TFloatField;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    vsel: TFBuscarProducto;
    procedure onSelProducto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransferirStock: TFTransferirStock;

implementation

uses UDM;

{$R *.dfm}
procedure TFTransferirStock.onSelProducto;
begin
  if not vsel.ZQ_Producto.IsEmpty then
  begin
    CD_Producto.Filter:= 'idProducto = ' +  vsel.ZQ_ProductoID_PRODUCTO.AsString;
    CD_Producto.Filtered := true;
    if not CD_Producto.IsEmpty then
    begin
      CD_Producto.Filtered := false;
      Application.MessageBox('El Producto seleccionado ya fue cargado','Carga Producto',MB_OK+MB_ICONINFORMATION);
      exit;
    end;

    CD_Producto.Filtered := false;
    CD_Producto.Append;
    CD_Producto_idProducto.AsInteger := vsel.ZQ_ProductoID_PRODUCTO.AsInteger;
    CD_Producto_producto.AsString := vsel.ZQ_ProductoNOMBRE.AsString;
    CD_Producto_medida.AsString := vsel.ZQ_ProductoMEDIDA.AsString;
    CD_Producto_color.AsString := vsel.ZQ_ProductoCOLOR.AsString;
    CD_Producto_marca.AsString := vsel.ZQ_ProductoNOMBRE_MARCA.AsString;
    CD_Producto_tipoArticulo.AsString := vsel.ZQ_ProductoTIPO_ARTICULO.AsString;
    CD_Producto_articulo.AsString := vsel.ZQ_ProductoNOMBRE_ARTICULO.AsString;
    CD_Producto_codigoBarra.AsString := vsel.ZQ_ProductoCODIGO_BARRA.AsString;
    CD_Producto_codCabecera.AsString := vsel.ZQ_ProductoCOD_CORTO.AsString;
    CD_Producto_codProducto.AsString := vsel.ZQ_ProductoCOD_CORTO_1.AsString;
  end;

  if vsel.SeleccionarYSalir then
    vsel.Close;
end;    

procedure TFTransferirStock.btnBuscarClick(Sender: TObject);
begin
  if not Assigned(vsel) then
    vsel:= TFBuscarProducto.Create(nil);
  vsel.OnSeleccionar := onSelProducto;
  vsel.SeleccionarYSalir:= false;
  vsel.ShowModal;
end;

procedure TFTransferirStock.FormCreate(Sender: TObject);
begin
  CD_Producto.CreateDataSet;
end;

end.
