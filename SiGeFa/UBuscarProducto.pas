unit UBuscarProducto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, Grids, DBGrids, ExtCtrls, ComCtrls, DBCtrls, StdCtrls,
  Mask, ZSqlUpdate,DateUtils, EKOrdenarGrilla, EKBusquedaAvanzada,
  ActnList, XPStyleActnCtrls, ActnMan;

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
    btnSeleccinarYSalir: TdxBarLargeButton;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ASeleccionar: TAction;
    ASalir: TAction;
    btnSeleccionarTodos: TdxBarLargeButton;
    ASelTodos: TAction;
    ZQ_ProductosProveedor: TZQuery;
    EKBuscarProductoEmpresa: TEKBusquedaAvanzada;
    ZQ_EmpresaMarca: TZQuery;
    ZQ_EmpresaMarcaID: TIntegerField;
    ZQ_EmpresaMarcaID_EMPRESA: TIntegerField;
    ZQ_EmpresaMarcaID_MARCA: TIntegerField;
    ZQ_EmpresaMarcaDESCRIPCION: TStringField;
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
    ZQ_ProductoCOLOR: TStringField;
    ZQ_ProductosProveedorNOMBRE: TStringField;
    ZQ_ProductosProveedorCOD_CORTO: TStringField;
    ZQ_ProductosProveedorID_PRODUCTO: TIntegerField;
    ZQ_ProductosProveedorCOD_CORTO_1: TStringField;
    ZQ_ProductosProveedorCODIGO_BARRA: TStringField;
    ZQ_ProductosProveedorLLEVAR_STOCK: TStringField;
    ZQ_ProductosProveedorMEDIDA: TStringField;
    ZQ_ProductosProveedorNOMBRE_MARCA: TStringField;
    ZQ_ProductosProveedorBAJA: TStringField;
    ZQ_ProductosProveedorNOMBRE_ARTICULO: TStringField;
    ZQ_ProductosProveedorTIPO_ARTICULO: TStringField;
    ZQ_ProductosProveedorCOLOR: TStringField;
    ZQ_ProductoPRECIO_COSTO: TFloatField;
    ZQ_ProductoPRECIO_VENTA: TFloatField;
    ZQ_ProductoCOEF_GANANCIA: TFloatField;
    ZQ_ProductoCOEF_DESCUENTO: TFloatField;
    ZQ_ProductoIMPUESTO_IVA: TFloatField;
    ZQ_ProductosProveedorPRECIO_COSTO: TFloatField;
    ZQ_ProductosProveedorPRECIO_VENTA: TFloatField;
    ZQ_ProductosProveedorCOEF_GANANCIA: TFloatField;
    ZQ_ProductosProveedorCOEF_DESCUENTO: TFloatField;
    ZQ_ProductosProveedorIMPUESTO_IVA: TFloatField;
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
    procedure filtrarEmpresa(idEmpresa: integer);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    OnSeleccionar: procedure() of object;
    OnSeleccionarTodos: procedure() of object;
    SeleccionarYSalir: boolean;
    buscarDeEmpresas: boolean;
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


procedure TFBuscarProducto.filtrarEmpresa(idEmpresa: integer);
begin
  ZQ_EmpresaMarca.Close;
  ZQ_EmpresaMarca.ParamByName('id_empresa').AsInteger:= idEmpresa;
  ZQ_EmpresaMarca.Open;

  if ZQ_EmpresaMarca.IsEmpty then
  begin
    buscarDeEmpresas:= false;
    exit;
  end;

  buscarDeEmpresas:= true;
  EKBuscarProductoEmpresa.SQL_Where.ValueFromIndex[2]:= IntToStr(idEmpresa);
end;


procedure TFBuscarProducto.btnBuscarClick(Sender: TObject);
begin
  if buscarDeEmpresas then
    EKBuscarProductoEmpresa.Buscar
  else
    EKBuscarProducto.Buscar;
end;


procedure TFBuscarProducto.btnSeleccionarClick(Sender: TObject);
begin
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
  if ZQ_Producto.IsEmpty then
  begin
    Application.ProcessMessages;
    btnBuscar.Click;
  end;
end;


procedure TFBuscarProducto.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;


procedure TFBuscarProducto.ASeleccionarExecute(Sender: TObject);
begin
  if btnSeleccionar.Enabled then
    btnSeleccionar.Click;
end;


procedure TFBuscarProducto.ASalirExecute(Sender: TObject);
begin
  if btnSalir.Enabled then
    btnSalir.Click;
end;


procedure TFBuscarProducto.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla.CargarConfigColumnas;
  buscarDeEmpresas:= false;

  EKBuscarProducto.SQL_Where.ValueFromIndex[1]:= IntToStr(SUCURSAL_LOGUEO);
  EKBuscarProductoEmpresa.SQL_Where.ValueFromIndex[1]:= IntToStr(SUCURSAL_LOGUEO);
end;


procedure TFBuscarProducto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarGrilla.GuardarConfigColumnas;
end;


procedure TFBuscarProducto.btnSeleccionarTodosClick(Sender: TObject);
begin
  if (not (ZQ_Producto.IsEmpty)) then
  begin
    if Assigned(OnSeleccionarTodos) then
      OnSeleccionarTodos
  end
  else
    Application.MessageBox(PChar('No hay ningún producto para seleccionar.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;


procedure TFBuscarProducto.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGrid, Rect, DataCol, Column, State);
end;

end.
