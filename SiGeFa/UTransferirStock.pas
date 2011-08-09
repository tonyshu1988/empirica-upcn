unit UTransferirStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB, DBClient, UBuscarProductoStock,
  EKLlenarCombo, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  EKListadoSQL, ComCtrls, ZSqlUpdate, ZStoredProcedure, EKOrdenarGrilla;

type
  TFTransferirStock = class(TForm)
    PanelContenedor: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btNotaPedido: TdxBarLargeButton;
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
    ZQ_Sucursal: TZQuery;
    ZQ_SucursalID_POSICION_SUCURSAL: TIntegerField;
    ZQ_SucursalBUSQUEDA: TStringField;
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
    ZQ_Nota_Pedido_Detalle: TZQuery;
    ZQ_VerCpb: TZQuery;
    ZQ_VerCpbID_COMPROBANTE: TIntegerField;
    ZQ_VerCpbID_SUCURSAL: TIntegerField;
    ZQ_VerCpbID_PROVEEDOR: TIntegerField;
    ZQ_VerCpbID_CLIENTE: TIntegerField;
    ZQ_VerCpbID_TIPO_CPB: TIntegerField;
    ZQ_VerCpbID_VENDEDOR: TIntegerField;
    ZQ_VerCpbID_COMP_ESTADO: TIntegerField;
    ZQ_VerCpbCODIGO: TStringField;
    ZQ_VerCpbOBSERVACION: TStringField;
    ZQ_VerCpbBASE_IMPONIBLE: TFloatField;
    ZQ_VerCpbSALDO: TFloatField;
    ZQ_VerCpbIMPORTE_TOTAL: TFloatField;
    ZQ_VerCpbIMPORTE_IVA: TFloatField;
    ZQ_VerCpbIMPORTE_DESCUENTO: TFloatField;
    ZQ_VerCpbPORC_IVA: TFloatField;
    ZQ_VerCpbPORC_DESCUENTO: TFloatField;
    ZQ_VerCpbENCABEZADO: TStringField;
    ZQ_VerCpbPIE: TStringField;
    ZQ_VerCpbFECHA: TDateTimeField;
    ZQ_VerCpbFECHA_COBRADA: TDateField;
    ZQ_VerCpbFECHA_ENVIADA: TDateField;
    ZQ_VerCpbFECHA_IMPRESA: TDateField;
    ZQ_VerCpbFECHA_VENCIMIENTO: TDateField;
    ZQ_VerCpbFECHA_ANULADO: TDateField;
    ZQ_VerCpbSUCURSAL: TStringField;
    ZQ_VerCpbPROVEEDOR: TStringField;
    ZQ_VerCpbCUIT_PROVEEDOR: TStringField;
    ZQ_VerCpbCLIENTE: TStringField;
    ZQ_VerCpbCLIENTE_DOCUMENTO: TStringField;
    ZQ_VerCpbCLIENTE_CUIL: TStringField;
    ZQ_VerCpbVENDEDOR: TStringField;
    ZQ_VerCpbNOMBRE_TIPO_CPB: TStringField;
    ZQ_VerCpbESTADO: TStringField;
    ZQ_VerCpbPUNTO_VENTA: TIntegerField;
    ZQ_VerCpbNUMERO_CPB: TIntegerField;
    DS_VerCpb: TDataSource;
    DBGridNotaPedido: TDBGrid;
    DBGridNotaPedidoDetalle: TDBGrid;
    DS_Nota_Pedido_Detalle: TDataSource;
    ZQ_Nota_Pedido_DetalleID_COMPROBANTE_DETALLE: TIntegerField;
    ZQ_Nota_Pedido_DetalleID_COMPROBANTE: TIntegerField;
    ZQ_Nota_Pedido_DetalleID_PRODUCTO: TIntegerField;
    ZQ_Nota_Pedido_DetalleDETALLE: TStringField;
    ZQ_Nota_Pedido_DetalleCANTIDAD: TFloatField;
    ZQ_Nota_Pedido_DetalleIMPORTE_FINAL: TFloatField;
    ZQ_Nota_Pedido_DetallePORC_DESCUENTO: TFloatField;
    ZQ_Nota_Pedido_DetalleBASE_IMPONIBLE: TFloatField;
    ZQ_Nota_Pedido_DetalleIMPORTE_UNITARIO: TFloatField;
    ZQ_Nota_Pedido_DetalleIMPUESTO_INTERNO: TFloatField;
    ZQ_Nota_Pedido_DetallePORC_IVA: TFloatField;
    ZQ_Nota_Pedido_DetalleCANTIDAD_RECIBIDA: TFloatField;
    ZQ_Nota_Pedido_DetalleCANTIDAD_ALMACENADA: TFloatField;
    ZQ_Nota_Pedido_DetalleCOD_CABECERA: TStringField;
    ZQ_Nota_Pedido_DetallePRODUCTO: TStringField;
    ZQ_Nota_Pedido_DetalleIMAGEN: TBlobField;
    ZQ_Nota_Pedido_DetalleMEDIDA: TStringField;
    ZQ_Nota_Pedido_DetalleCOLOR: TStringField;
    ZQ_Nota_Pedido_DetalleMARCA: TStringField;
    ZQ_Nota_Pedido_DetalleARTICULO: TStringField;
    ZQ_Nota_Pedido_DetalleTIPO_ARTICULO: TStringField;
    ZQ_Nota_Pedido_DetalleCOD_PRODUCTO: TStringField;
    ZQ_Nota_Pedido_DetalleCODIGO_BARRA: TStringField;
    ZQ_Nota_Pedido_DetallePRECIO_COSTO: TFloatField;
    ZQ_Nota_Pedido_DetallePRECIO_VENTA: TFloatField;
    ZQ_Nota_Pedido_DetalleCOEF_GANANCIA: TFloatField;
    ZQ_Nota_Pedido_DetalleCOEF_DESCUENTO: TFloatField;
    ZQ_Nota_Pedido_DetalleIMPUESTO_INTERNO_1: TFloatField;
    ZQ_Nota_Pedido_DetalleIMPUESTO_IVA: TFloatField;
    CD_NotaPedidoDetalle: TClientDataSet;
    CD_NotaPedidoDetallecantidad: TFloatField;
    CD_NotaPedidoDetallecantidad_recibida: TFloatField;
    CD_NotaPedidoDetallecantidad_almacenada: TFloatField;
    CD_NotaPedidoDetallecod_cabecera: TStringField;
    CD_NotaPedidoDetalleproducto: TStringField;
    CD_NotaPedidoDetallemedida: TStringField;
    CD_NotaPedidoDetallecolor: TStringField;
    CD_NotaPedidoDetallemarca: TStringField;
    CD_NotaPedidoDetallearticulo: TStringField;
    CD_NotaPedidoDetalletipo_articulo: TStringField;
    CD_NotaPedidoDetallecod_producto: TStringField;
    CD_NotaPedidoDetallecodigo_barra: TStringField;
    CD_NotaPedidoDetalleid_producto: TIntegerField;
    CD_NotaPedidoDetallecantidad_a_almacenar: TFloatField;
    ZQ_Nota_Pedido_DetalleSTOCK_MAX: TFloatField;
    ZQ_Nota_Pedido_DetalleSTOCK_MIN: TFloatField;
    CD_NotaPedidoDetallestock_max: TFloatField;
    CD_NotaPedidoDetallestock_min: TFloatField;
    CD_NotaPedidoDetallealmacenar: TFloatField;
    CD_NotaPedidoDetalleid_comprobante: TIntegerField;
    ZQ_NotaPedidoUpdateEstado: TZQuery;
    ZQ_ProcesarStock: TZQuery;
    Label1: TLabel;
    EditSucursal: TEdit;
    EKOrdenarGrillaProductos: TEKOrdenarGrilla;
    EKOrdenarGrillaNotaPedidoDetalle: TEKOrdenarGrilla;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAsociarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btBorrarLineaClick(Sender: TObject);
    procedure DBGridNotaPedidoDblClick(Sender: TObject);
    procedure btNotaPedidoClick(Sender: TObject);
    procedure CD_NotaPedidoDetalleCalcFields(DataSet: TDataSet);
    procedure PageControlTransferirChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    vsel: TFBuscarProductoStock;
    procedure onSelProducto;
    { Private declarations }
  public
  end;

var
  FTransferirStock: TFTransferirStock;
  id_pos_sucursal : integer;

const
  Transaccion_TransferirStock = 'TRANSFERIR STOCK';

implementation

uses UDM, UPrincipal;

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
  PageControlTransferir.TabIndex := 0;
  CD_Producto.CreateDataSet;
  CD_NotaPedidoDetalle.CreateDataSet;

  EKOrdenarGrillaProductos.CargarConfigColumnas;
  EKOrdenarGrillaNotaPedidoDetalle.CargarConfigColumnas;
end;


procedure TFTransferirStock.btnAsociarClick(Sender: TObject);
begin
    if id_pos_sucursal = 0 then
    begin
      ShowMessage('Debe Seleccionar una sucural a la cual transferir los productos.'+#13+'PRESIONE F1 para desplegar el Listado');
      exit;
    end;

    if PageControlTransferir.TabIndex = 0 then
    begin
      CD_Producto.First;
      while not CD_Producto.Eof do
      begin
        if CD_ProductoidStockProducto.IsNull then
          CD_Producto.Delete;

        CD_Producto.Next;
      end;

      if CD_Producto.IsEmpty then
      exit;
    end
    else
    begin

      CD_NotaPedidoDetalle.First;
      while not CD_NotaPedidoDetalle.Eof do
      begin
        if CD_NotaPedidoDetalleid_comprobante.IsNull then
          CD_NotaPedidoDetalle.Delete;

        CD_NotaPedidoDetalle.Next;
      end;

      if CD_NotaPedidoDetalle.IsEmpty then
      exit;
    end;


    if dm.EKModelo.iniciar_transaccion(Transaccion_TransferirStock, []) then//[ZQ_Stock_Origen, ZQ_Stock_Destino, ZQ_NotaPedidoUpdateAlmacenado]) then
    begin
      if PageControlTransferir.TabIndex = 0 then
      begin
        CD_Producto.First;
        while not(CD_Producto.Eof) do
        begin
          ZQ_ProcesarStock.Close;
          ZQ_ProcesarStock.ParamByName('id_stock_prod').AsInteger:= CD_ProductoidStockProducto.AsInteger;
          ZQ_ProcesarStock.ParamByName('id_producto').AsInteger:= CD_Producto_idProducto.AsInteger;
          ZQ_ProcesarStock.ParamByName('id_pos_suc').AsInteger:= id_pos_sucursal;

          if CD_Productocantidad.AsFloat <= CD_Productostockactual.AsFloat then
            ZQ_ProcesarStock.ParamByName('cantidad_almacenar').AsFloat:= CD_Productocantidad.AsFloat
          else //si lo que deseo transferir es mayor a lo que tengo en stock, entonces cargo todo el stock
            ZQ_ProcesarStock.ParamByName('cantidad_almacenar').AsFloat:= CD_Productostockactual.AsFloat;

          ZQ_ProcesarStock.ParamByName('stock_min').AsFloat:= CD_ProductostockMin.AsFloat;
          ZQ_ProcesarStock.ParamByName('stock_max').AsFloat:= CD_ProductostockMax.AsFloat;
          ZQ_ProcesarStock.ParamByName('stock_repedido').AsFloat:= CD_ProductostockRepedido.AsFloat;
          ZQ_ProcesarStock.ParamByName('id_comprobante').Clear;
          ZQ_ProcesarStock.ExecSQL;

          CD_Producto.Next;
        end;

        CD_Producto.EmptyDataSet;
      end
      else
      begin
        CD_NotaPedidoDetalle.First;
        while not(CD_NotaPedidoDetalle.Eof) do
        begin
          ZQ_ProcesarStock.Close;
          ZQ_ProcesarStock.ParamByName('id_stock_prod').Clear;
          ZQ_ProcesarStock.ParamByName('id_producto').AsInteger:= CD_NotaPedidoDetalleid_producto.AsInteger;
          ZQ_ProcesarStock.ParamByName('id_pos_suc').AsInteger:= id_pos_sucursal;

          if CD_NotaPedidoDetallecantidad_a_almacenar.AsFloat >= 0 then
            ZQ_ProcesarStock.ParamByName('cantidad_almacenar').AsFloat:= CD_NotaPedidoDetallealmacenar.AsFloat
          else //si lo que deseo almacenar es mayor a lo que puedo almacenar, entonces cargo el resto
            ZQ_ProcesarStock.ParamByName('cantidad_almacenar').AsFloat:= CD_NotaPedidoDetallecantidad_recibida.AsFloat - CD_NotaPedidoDetallecantidad_almacenada.AsFloat;

          ZQ_ProcesarStock.ParamByName('stock_min').AsFloat:= CD_NotaPedidoDetallestock_min.AsFloat;
          ZQ_ProcesarStock.ParamByName('stock_max').AsFloat:= CD_NotaPedidoDetallestock_max.AsFloat;
          ZQ_ProcesarStock.ParamByName('stock_repedido').Clear;
          ZQ_ProcesarStock.ParamByName('id_comprobante').AsInteger := CD_NotaPedidoDetalleid_comprobante.AsInteger;
          ZQ_ProcesarStock.ExecSQL;

          CD_NotaPedidoDetalle.Next;
        end;
      end;

      GrupoEditando.Enabled := false;
      GrupoGuardarCancelar.Enabled := true;
    end;
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

    if PageControlTransferir.TabIndex = 1 then
    begin
      if dm.EKModelo.iniciar_transaccion('Update Estado', []) then
      begin
        ZQ_NotaPedidoUpdateEstado.Close;
        ZQ_NotaPedidoUpdateEstado.ParamByName('ID_COMPROBANTE').AsInteger := ZQ_VerCpbID_COMPROBANTE.AsInteger;
        ZQ_NotaPedidoUpdateEstado.ExecSQL;

        if not DM.EKModelo.finalizar_transaccion('Update Estado') then
          DM.EKModelo.cancelar_transaccion('Update Estado')
     end;
     btNotaPedido.Click;
    end;
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


procedure TFTransferirStock.DBGridNotaPedidoDblClick(Sender: TObject);
begin
  if not ZQ_VerCpb.IsEmpty then
  begin
    ZQ_Nota_Pedido_Detalle.Close;
    ZQ_Nota_Pedido_Detalle.ParamByName('ID_COMPROBANTE').AsInteger := ZQ_VerCpbID_COMPROBANTE.AsInteger;
    ZQ_Nota_Pedido_Detalle.Open;

    if not ZQ_Nota_Pedido_Detalle.IsEmpty then
    begin
      ZQ_Nota_Pedido_Detalle.First;
      while not ZQ_Nota_Pedido_Detalle.Eof do
      begin
        if (ZQ_Nota_Pedido_DetalleCANTIDAD_RECIBIDA.AsFloat <> 0) and (ZQ_Nota_Pedido_DetalleCANTIDAD_RECIBIDA.AsFloat <> ZQ_Nota_Pedido_DetalleCANTIDAD_ALMACENADA.AsFloat) then
        begin
          CD_NotaPedidoDetalle.Append;
          CD_NotaPedidoDetallecantidad.AsFloat := ZQ_Nota_Pedido_DetalleCANTIDAD.AsFloat;
          CD_NotaPedidoDetallecantidad_recibida.AsFloat:= ZQ_Nota_Pedido_DetalleCANTIDAD_RECIBIDA.AsFloat;
          CD_NotaPedidoDetallecantidad_almacenada.AsFloat:= ZQ_Nota_Pedido_DetalleCANTIDAD_ALMACENADA.AsFloat;
          CD_NotaPedidoDetallecod_cabecera.AsString:= ZQ_Nota_Pedido_DetalleCOD_CABECERA.AsString;
          CD_NotaPedidoDetalleproducto.AsString:= ZQ_Nota_Pedido_DetallePRODUCTO.AsString;
          CD_NotaPedidoDetallemedida.AsString:= ZQ_Nota_Pedido_DetalleMEDIDA.AsString;
          CD_NotaPedidoDetallecolor.AsString:= ZQ_Nota_Pedido_DetalleCOLOR.AsString;
          CD_NotaPedidoDetallemarca.AsString:= ZQ_Nota_Pedido_DetalleMARCA.AsString;
          CD_NotaPedidoDetallearticulo.AsString:= ZQ_Nota_Pedido_DetalleARTICULO.AsString;
          CD_NotaPedidoDetalletipo_articulo.AsString:= ZQ_Nota_Pedido_DetalleTIPO_ARTICULO.AsString;
          CD_NotaPedidoDetallecod_producto.AsString:= ZQ_Nota_Pedido_DetalleCOD_PRODUCTO.AsString;
          CD_NotaPedidoDetallecodigo_barra.AsString:= ZQ_Nota_Pedido_DetalleCODIGO_BARRA.AsString;
          CD_NotaPedidoDetalleid_producto.AsInteger:= ZQ_Nota_Pedido_DetalleID_PRODUCTO.AsInteger;
          CD_NotaPedidoDetalleid_comprobante.AsInteger:= ZQ_Nota_Pedido_DetalleID_COMPROBANTE.AsInteger;
          CD_NotaPedidoDetallealmacenar.AsFloat := ZQ_Nota_Pedido_DetalleCANTIDAD_RECIBIDA.AsFloat- ZQ_Nota_Pedido_DetalleCANTIDAD_ALMACENADA.AsFloat;
          CD_NotaPedidoDetalle.Post;
        end;

        ZQ_Nota_Pedido_Detalle.Next;
      end;
      DBGridNotaPedido.Visible := false;
      DBGridNotaPedidoDetalle.Visible := true;
    end;
  end;
end;


procedure TFTransferirStock.btNotaPedidoClick(Sender: TObject);
begin
  CD_NotaPedidoDetalle.EmptyDataSet;
  DBGridNotaPedidoDetalle.Visible:=false;
  DBGridNotaPedido.Visible:= true;
  ZQ_VerCpb.Close;
  ZQ_VerCpb.Open;
end;


procedure TFTransferirStock.CD_NotaPedidoDetalleCalcFields(DataSet: TDataSet);
begin
  CD_NotaPedidoDetallecantidad_a_almacenar.AsFloat := CD_NotaPedidoDetallecantidad_recibida.AsFloat - CD_NotaPedidoDetallecantidad_almacenada.AsFloat - CD_NotaPedidoDetallealmacenar.AsFloat;
end;


procedure TFTransferirStock.PageControlTransferirChange(Sender: TObject);
begin
  if PageControlTransferir.TabIndex = 0 then
  begin
    btnBuscar.Visible := ivAlways;
    btNotaPedido.Visible := ivNever;
  end
  else
  begin
    btnBuscar.Visible := ivNever;
    btNotaPedido.Visible := ivAlways;
  end;
end;


procedure TFTransferirStock.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  EKOrdenarGrillaProductos.GuardarConfigColumnas;
  EKOrdenarGrillaNotaPedidoDetalle.GuardarConfigColumnas;

  CanClose:= FPrincipal.cerrar_ventana(Transaccion_TransferirStock);
end;

procedure TFTransferirStock.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin
    if EKListado_Sucursal.Buscar then
    begin
      id_pos_sucursal := StrToInt(EKListado_Sucursal.Resultado);
      EditSucursal.Text := EKListado_Sucursal.Seleccion;
    end;
  end;
end;

end.