unit UTransferirStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB, DBClient, UBuscarProductoStock,
  EKLlenarCombo, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  EKListadoSQL;

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
    CD_Productostockactual: TFloatField;
    CD_Productocantidad: TFloatField;
    EKListado_Sucursal: TEKListadoSQL;
    CBoxSucursal: TComboBox;
    ZQ_Sucursal: TZQuery;
    ZQ_SucursalID_POSICION_SUCURSAL: TIntegerField;
    ZQ_SucursalBUSQUEDA: TStringField;
    EKLlenarComboSucursal: TEKLlenarCombo;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure CD_ProductocantidadValidate(Sender: TField);
  private
    vsel: TFBuscarProductoStock;
    procedure onSelProducto;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransferirStock: TFTransferirStock;

const
  Transaccion_TransferirStock = 'TRANSFERIR STOCK';

implementation

uses UDM;

{$R *.dfm}
procedure TFTransferirStock.onSelProducto;
begin
  if not vsel.ZQ_Stock.IsEmpty then
  begin
    CD_Producto.Filter:= 'idProducto = ' +  vsel.ZQ_StockID_PRODUCTO.AsString;
    CD_Producto.Filtered := true;
    if not CD_Producto.IsEmpty then
    begin
      CD_Producto.Filtered := false;
      Application.MessageBox('El Producto seleccionado ya fue cargado','Carga Producto',MB_OK+MB_ICONINFORMATION);
      exit;
    end;

    CD_Producto.Filtered := false;
    CD_Producto.Append;
    CD_Producto_idProducto.AsInteger := vsel.ZQ_StockID_PRODUCTO.AsInteger;
    CD_Producto_producto.AsString := vsel.ZQ_StockNOMBRE.AsString;
    CD_Producto_medida.AsString := vsel.ZQ_StockMEDIDA.AsString;
    CD_Producto_color.AsString := vsel.ZQ_StockCOLOR.AsString;
    CD_Producto_marca.AsString := vsel.ZQ_StockNOMBRE_MARCA.AsString;
    CD_Producto_tipoArticulo.AsString := vsel.ZQ_StockTIPO_ARTICULO.AsString;
    CD_Producto_articulo.AsString := vsel.ZQ_StockNOMBRE_ARTICULO.AsString;
    CD_Producto_codigoBarra.AsString := vsel.ZQ_StockCODIGO_BARRA.AsString;
    CD_Producto_codCabecera.AsString := vsel.ZQ_StockCOD_CORTO_CABECERA.AsString;
    CD_Producto_codProducto.AsString := vsel.ZQ_StockCOD_CORTO_PRODUCTO.AsString;
    CD_Productostockactual.AsFloat := vsel.ZQ_StockSTOCK_ACTUAL.AsFloat;
  end;

  if vsel.SeleccionarYSalir then
    vsel.Close;
end;    

procedure TFTransferirStock.btnBuscarClick(Sender: TObject);
begin
  if not Assigned(vsel) then
    vsel:= TFBuscarProductoStock.Create(nil);
  vsel.OnSeleccionar := onSelProducto;
  vsel.SeleccionarYSalir:= false;
  vsel.ShowModal;
end;

procedure TFTransferirStock.FormCreate(Sender: TObject);
begin
  EKLlenarComboSucursal.CargarCombo;
  CD_Producto.CreateDataSet;
end;

procedure TFTransferirStock.btnModificarClick(Sender: TObject);
begin
  if CD_Producto.IsEmpty then
    exit;

  //if dm.EKModelo.iniciar_transaccion(Transaccion_TransferirStock, []) then
  begin
    //GrupoEditando.Enabled:= false;
    //GrupoGuardarCancelar.Enabled:= true;
    

    CD_Producto.Edit;
    DBGridProducto.ReadOnly:= false;
  end;

end;

procedure TFTransferirStock.CD_ProductocantidadValidate(Sender: TField);
begin
  if CD_Productocantidad.AsFloat > CD_Productostockactual.AsFloat then
  begin
    CD_Producto.Edit;
    CD_Productocantidad.AsFloat := CD_Productostockactual.AsFloat;
    CD_Producto.Post;
  end;

end;

end.
