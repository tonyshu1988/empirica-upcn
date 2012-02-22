unit UBuscarComprobante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, Grids, DBGrids, ExtCtrls, ComCtrls, DBCtrls, StdCtrls,
  Mask, ZSqlUpdate,DateUtils, EKOrdenarGrilla, EKBusquedaAvanzada,
  ActnList, XPStyleActnCtrls, ActnMan;

type
  TFBuscarComprobante = class(TForm)
    PanelFondo: TPanel;
    DBGridFacturas: TDBGrid;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnSeleccionar: TdxBarLargeButton;
    ZQ_Factura_Venta: TZQuery;
    EKOrdenarGrilla: TEKOrdenarGrilla;
    EKBuscarFacturaVenta: TEKBusquedaAvanzada;
    btnSeleccinarYSalir: TdxBarLargeButton;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ASeleccionar: TAction;
    ASalir: TAction;
    btnSeleccionarTodos: TdxBarLargeButton;
    ASelTodos: TAction;
    DS_Factura: TDataSource;
    ZQ_Factura_Compra: TZQuery;
    ZQ_Factura_VentaID_COMPROBANTE: TIntegerField;
    ZQ_Factura_VentaID_CLIENTE: TIntegerField;
    ZQ_Factura_VentaCODIGO: TStringField;
    ZQ_Factura_VentaFECHA: TDateTimeField;
    ZQ_Factura_VentaIMPORTE_VENTA: TFloatField;
    ZQ_Factura_VentaIMPORTE_REAL: TFloatField;
    ZQ_Factura_VentaDESCRIPCION: TStringField;
    PanelDetalle: TPanel;
    DBGridDetalle: TDBGrid;
    lblDetalleFactura: TLabel;
    ZQ_Detalle: TZQuery;
    DS_Detalle: TDataSource;
    ZQ_DetalleCODIGO_BARRA: TStringField;
    ZQ_DetalleCOD_CORTO_PR: TStringField;
    ZQ_DetalleCOD_CORTO_CAB: TStringField;
    ZQ_DetalleNOMBRE: TStringField;
    ZQ_DetalleIMPORTE_VENTA: TFloatField;
    EKBuscarFacturaCompra: TEKBusquedaAvanzada;
    ZQ_Factura_CompraID_COMPROBANTE: TIntegerField;
    ZQ_Factura_CompraID_PROVEEDOR: TIntegerField;
    ZQ_Factura_CompraCODIGO: TStringField;
    ZQ_Factura_CompraFECHA: TDateTimeField;
    ZQ_Factura_CompraIMPORTE_VENTA: TFloatField;
    ZQ_Factura_CompraIMPORTE_REAL: TFloatField;
    ZQ_Factura_CompraDESCRIPCION: TStringField;
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSeleccionarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure ASeleccionarExecute(Sender: TObject);
    procedure ASalirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSeleccionarTodosClick(Sender: TObject);
    procedure DBGridFacturasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure configFactura(Venta, Compra: boolean; id: integer);
    procedure DBGridDetalleDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ZQ_Factura_VentaAfterScroll(DataSet: TDataSet);
    procedure ZQ_Factura_CompraAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    OnSeleccionar: procedure() of object;
    OnSeleccionarTodos: procedure() of object;
    facturaVenta, facturaCompra: boolean;
    SeleccionarYSalir: boolean;
    query: TZQuery;
    idActual: integer;
  end;

var
  FBuscarComprobante: TFBuscarComprobante;

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFBuscarComprobante.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFBuscarComprobante.btnBuscarClick(Sender: TObject);
begin
  if facturaVenta then
    EKBuscarFacturaVenta.Buscar;

  if facturaCompra then
    EKBuscarFacturaCompra.Buscar;

  query.First;
end;


procedure TFBuscarComprobante.btnSeleccionarClick(Sender: TObject);
begin
  if ((not(DBGridFacturas.SelectedRows.Count > 0)) and (not(query.IsEmpty))) then
  begin
    if Assigned(OnSeleccionar) then
      OnSeleccionar
  end
  else
    Application.MessageBox(PChar('Debe seleccionar algúna Factura.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;


procedure TFBuscarComprobante.FormActivate(Sender: TObject);
begin
//  if query.IsEmpty then
//  begin
//    Application.ProcessMessages;
//    btnBuscar.Click;
//  end;
end;


procedure TFBuscarComprobante.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;


procedure TFBuscarComprobante.ASeleccionarExecute(Sender: TObject);
begin
  if btnSeleccionar.Enabled then
    btnSeleccionar.Click;
end;


procedure TFBuscarComprobante.ASalirExecute(Sender: TObject);
begin
  if btnSalir.Enabled then
    btnSalir.Click;
end;


procedure TFBuscarComprobante.FormCreate(Sender: TObject);
begin
  idActual:= -1;
  facturaVenta:= false;
  facturaCompra:= false;

  //EKOrdenarGrilla.CargarConfigColumnas;
end;


procedure TFBuscarComprobante.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //EKOrdenarGrilla.GuardarConfigColumnas;
end;


procedure TFBuscarComprobante.btnSeleccionarTodosClick(Sender: TObject);
begin
  if (not (query.IsEmpty)) then
  begin
    if Assigned(OnSeleccionarTodos) then
      OnSeleccionarTodos
  end
  else
    Application.MessageBox(PChar('No hay ningúna Factura para seleccionar.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;


procedure TFBuscarComprobante.DBGridFacturasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridFacturas, Rect, DataCol, Column, State);
end;


procedure TFBuscarComprobante.DBGridDetalleDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridDetalle, Rect, DataCol, Column, State);
end;


procedure TFBuscarComprobante.configFactura(Venta, Compra: boolean; id: integer);
begin
  facturaVenta:= Venta;
  facturaCompra:= Compra;

  if facturaVenta then //si es una factura de venta
  begin
    query:= ZQ_Factura_Venta;
    EKBuscarFacturaVenta.SQL_Where[3]:= 'and c.id_cliente = '+IntToStr(id);
  end
  else
    if facturaCompra then
    begin
      query:= ZQ_Factura_Compra;
      EKBuscarFacturaCompra.SQL_Where[4]:= 'and c.id_proveedor = '+IntToStr(id);
    end;

  if idActual <> id then
  begin
    idActual:= id;
    query.Close;
    ZQ_Detalle.Close;    
  end;

  DS_Factura.DataSet:= query;
end;


procedure TFBuscarComprobante.ZQ_Factura_VentaAfterScroll(DataSet: TDataSet);
begin
  if facturaCompra then
    exit;

  ZQ_Detalle.Close;
  lblDetalleFactura.Caption:= 'Detalle ';
  if not ZQ_Factura_Venta.IsEmpty then
  begin
    lblDetalleFactura.Caption:= 'Detalle '+ZQ_Factura_VentaDESCRIPCION.AsString;
    ZQ_Detalle.ParamByName('id_comprobante').AsInteger:= ZQ_Factura_VentaID_COMPROBANTE.AsInteger;
    ZQ_Detalle.Open;
  end;
end;


procedure TFBuscarComprobante.ZQ_Factura_CompraAfterScroll(DataSet: TDataSet);
begin
  if facturaVenta then
    exit;

  ZQ_Detalle.Close;
  lblDetalleFactura.Caption:= 'Detalle ';
  if not ZQ_Factura_Compra.IsEmpty then
  begin
    lblDetalleFactura.Caption:= 'Detalle '+ZQ_Factura_CompraDESCRIPCION.AsString;
    ZQ_Detalle.ParamByName('id_comprobante').AsInteger:= ZQ_Factura_CompraID_COMPROBANTE.AsInteger;
    ZQ_Detalle.Open;
  end;
end;

end.
