unit UTransferirStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB, DBClient, UBuscarProductoStock,
  EKLlenarCombo, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  EKListadoSQL, ComCtrls;

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
    PanelSeleccionarDeposito: TPanel;
    DBGridProducto: TDBGrid;
    CD_Productostockactual: TFloatField;
    CD_Productocantidad: TFloatField;
    EKListado_Sucursal: TEKListadoSQL;
    CBoxSucursal: TComboBox;
    ZQ_Sucursal: TZQuery;
    ZQ_SucursalID_POSICION_SUCURSAL: TIntegerField;
    ZQ_SucursalBUSQUEDA: TStringField;
    EKLlenarComboSucursal: TEKLlenarCombo;
    ZQ_Stock_Origen: TZQuery;
    ZQ_Stock_Destino: TZQuery;
    ZQ_Stock_OrigenID_STOCK_PRODUCTO: TIntegerField;
    ZQ_Stock_OrigenID_PRODUCTO: TIntegerField;
    ZQ_Stock_OrigenID_POSICION_SUCURSAL: TIntegerField;
    ZQ_Stock_OrigenSTOCK_ACTUAL: TFloatField;
    ZQ_Stock_OrigenSTOCK_MIN: TFloatField;
    ZQ_Stock_OrigenSTOCK_MAX: TFloatField;
    ZQ_Stock_OrigenSTOCK_REPEDIDO: TFloatField;
    ZQ_Stock_OrigenSTOCK_MIN_ALARMA: TStringField;
    ZQ_Stock_DestinoID_STOCK_PRODUCTO: TIntegerField;
    ZQ_Stock_DestinoID_PRODUCTO: TIntegerField;
    ZQ_Stock_DestinoID_POSICION_SUCURSAL: TIntegerField;
    ZQ_Stock_DestinoSTOCK_ACTUAL: TFloatField;
    ZQ_Stock_DestinoSTOCK_MIN: TFloatField;
    ZQ_Stock_DestinoSTOCK_MAX: TFloatField;
    ZQ_Stock_DestinoSTOCK_REPEDIDO: TFloatField;
    ZQ_Stock_DestinoSTOCK_MIN_ALARMA: TStringField;
    CD_ProductoidStockProducto: TIntegerField;
    CD_ProductoidPosicionSucursal: TIntegerField;
    CD_ProductostockMin: TFloatField;
    CD_ProductostockMax: TFloatField;
    CD_ProductostockRepedido: TFloatField;
    PageControlTransferir: TPageControl;
    TabSTransferirStock: TTabSheet;
    TabSAsociarNotaPedido: TTabSheet;
    Panel1: TPanel;
    btBorrarLinea: TButton;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure CD_ProductocantidadValidate(Sender: TField);
    procedure btnAsociarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btBorrarLineaClick(Sender: TObject);
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
    CD_ProductoidStockProducto.AsInteger := vsel.ZQ_StockID_STOCK_PRODUCTO.AsInteger;
    CD_ProductoidPosicionSucursal.AsInteger := vsel.ZQ_StockID_POSICION_SUCURSAL.AsInteger;
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
    CD_Productocantidad.AsFloat := vsel.ZQ_StockSTOCK_ACTUAL.AsFloat;
    CD_ProductostockMin.AsFloat := vsel.ZQ_StockSTOCK_MIN.AsFloat;
    CD_ProductostockMax.AsFloat := vsel.ZQ_StockSTOCK_MAX.AsFloat;
    CD_ProductostockRepedido.AsFloat := vsel.ZQ_StockSTOCK_REPEDIDO.AsFloat;
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
  CBoxSucursal.ItemIndex := 0;
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
    //CD_Producto.Post;
  end;

end;

procedure TFTransferirStock.btnAsociarClick(Sender: TObject);
begin
    if dm.EKModelo.iniciar_transaccion(Transaccion_TransferirStock, [ZQ_Stock_Origen, ZQ_Stock_Destino]) then
    begin
      if CD_ProductoidStockProducto.IsNull then
        CD_Producto.Delete;

      CD_Producto.First;
      while not(CD_Producto.Eof) do
      begin
        //-------------------Modifico el Stock Actual de donde saco la mercaderia-----------------------------
        ZQ_Stock_Origen.Close;
        ZQ_Stock_Origen.ParamByName('ID_STOCK_PROD').AsInteger := CD_ProductoidStockProducto.AsInteger;
        ZQ_Stock_Origen.Open;

        if not (ZQ_Stock_Origen.IsEmpty) then
        begin
          ZQ_Stock_Origen.Edit;
          ZQ_Stock_OrigenSTOCK_ACTUAL.AsFloat := ZQ_Stock_OrigenSTOCK_ACTUAL.AsFloat-CD_Productocantidad.AsFloat;
          ZQ_Stock_Origen.Post;
        end;
        //------------------------------------------------------------------------------------------------------

        //-------Modifico el Stock Actual donde meto la mercaderia si no existe asocio la mercaderia al deposito---------

        ZQ_Stock_Destino.Close;
        ZQ_Stock_Destino.ParamByName('ID_PRODUCTO').AsInteger := CD_Producto_idProducto.AsInteger;
        ZQ_Stock_Destino.ParamByName('ID_POS_SUC').AsInteger := StrToInt(EKLlenarComboSucursal.SelectClave);
        ZQ_Stock_Destino.Open;

        if not (ZQ_Stock_Destino.IsEmpty) then
        begin
          ZQ_Stock_Destino.Edit;
          ZQ_Stock_DestinoSTOCK_ACTUAL.AsFloat := ZQ_Stock_DestinoSTOCK_ACTUAL.AsFloat+CD_Productocantidad.AsFloat;
          ZQ_Stock_Destino.Post;
        end
        else
        begin
          ZQ_Stock_Destino.Insert;
          ZQ_Stock_DestinoSTOCK_ACTUAL.AsFloat := ZQ_Stock_DestinoSTOCK_ACTUAL.AsFloat+CD_Productocantidad.AsFloat;
          ZQ_Stock_DestinoID_PRODUCTO.AsInteger := CD_Producto_idProducto.AsInteger;
          ZQ_Stock_DestinoID_POSICION_SUCURSAL.AsInteger := StrToInt(EKLlenarComboSucursal.SelectClave);
          ZQ_Stock_DestinoSTOCK_MIN.AsFloat := CD_ProductostockMin.AsFloat;
          ZQ_Stock_DestinoSTOCK_MAX.AsFloat := CD_ProductostockMax.AsFloat;
          ZQ_Stock_DestinoSTOCK_REPEDIDO.AsFloat := CD_ProductostockRepedido.AsFloat;
          ZQ_Stock_Destino.Post;
        end;

        //---------------------------------------------------------------------------------------------------------------

        CD_Producto.Next;
      end;
    end;

    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
    CD_Producto.EmptyDataSet;
end;

procedure TFTransferirStock.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFTransferirStock.btnGuardarClick(Sender: TObject);
begin
  if dm.EKModelo.finalizar_transaccion(Transaccion_TransferirStock) then
  begin
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;


end;

procedure TFTransferirStock.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(Transaccion_TransferirStock) then
  begin
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;
end;

procedure TFTransferirStock.btBorrarLineaClick(Sender: TObject);
begin
 if not CD_Producto.IsEmpty then
    CD_Producto.Delete;
end;

end.
