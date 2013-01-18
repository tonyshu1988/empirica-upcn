unit UOP_BuscarProductosOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, Grids, DBGrids, ExtCtrls, ComCtrls, DBCtrls, StdCtrls,
  Mask, ZSqlUpdate,DateUtils, EKOrdenarGrilla, EKBusquedaAvanzada,
  ActnList, XPStyleActnCtrls, ActnMan;

type
  TFOP_BuscarProductosOS = class(TForm)
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
    ZQ_ProductoID_OS: TIntegerField;
    ZQ_ProductoOS_CODIGO: TStringField;
    ZQ_ProductoOS_NOMBRE: TStringField;
    ZQ_ProductoAFILIADO_NOMBRE: TStringField;
    ZQ_ProductoAFILIADO_NUMERO: TStringField;
    ZQ_ProductoFECHA_ORDEN: TDateField;
    ZQ_ProductoFECHA_PROMETIDO: TDateField;
    ZQ_ProductoORDEN_COD_BARRA: TStringField;
    ZQ_ProductoORDEN_COD_CLI: TStringField;
    ZQ_ProductoCANTIDAD: TFloatField;
    ZQ_ProductoIMPORTE_UNITARIO: TFloatField;
    ZQ_ProductoIMPORTE_TOTAL: TFloatField;
    ZQ_ProductoMONTO_DESCONTADO: TFloatField;
    ZQ_ProductoOBSERVACIONES: TStringField;
    ZQ_ProductoPRODUCTO_NOMBRE: TStringField;
    ZQ_ProductoPRODUCTO_COD_CORTO: TStringField;
    ZQ_ProductoPRODUCTO_COD_BARRA: TStringField;
    ZQ_ProductoPRODUCTO_MEDIDA: TStringField;
    ZQ_ProductoPRODUCTO_MARCA: TStringField;
    ZQ_ProductoPRODUCTO_ARTICULO: TStringField;
    ZQ_ProductoPRODUCTO_TIPO_ARTICULO: TStringField;
    ZQ_ProductoID_PRODUCTO: TIntegerField;
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
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    OnSeleccionar: procedure() of object;
    OnSeleccionarTodos: procedure() of object;
    SeleccionarYSalir: boolean;
  end;

var
  FOP_BuscarProductosOS: TFOP_BuscarProductosOS;

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFOP_BuscarProductosOS.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFOP_BuscarProductosOS.btnBuscarClick(Sender: TObject);
begin
  EKBuscarProducto.Buscar;
end;


procedure TFOP_BuscarProductosOS.btnSeleccionarClick(Sender: TObject);
begin
  if ((not(DBGrid.SelectedRows.Count > 0)) and (not(ZQ_Producto.IsEmpty))) then
  begin
    if Assigned(OnSeleccionar) then
      OnSeleccionar
  end
  else
    Application.MessageBox(PChar('Debe seleccionar algún Producto.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;


procedure TFOP_BuscarProductosOS.FormActivate(Sender: TObject);
begin
  if ZQ_Producto.IsEmpty then
  begin
    Application.ProcessMessages;
    btnBuscar.Click;
  end;
end;


procedure TFOP_BuscarProductosOS.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;


procedure TFOP_BuscarProductosOS.ASeleccionarExecute(Sender: TObject);
begin
  if btnSeleccionar.Enabled then
    btnSeleccionar.Click;
end;


procedure TFOP_BuscarProductosOS.ASalirExecute(Sender: TObject);
begin
  if btnSalir.Enabled then
    btnSalir.Click;
end;


procedure TFOP_BuscarProductosOS.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla.CargarConfigColumnas;
end;


procedure TFOP_BuscarProductosOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarGrilla.GuardarConfigColumnas;
end;


procedure TFOP_BuscarProductosOS.btnSeleccionarTodosClick(Sender: TObject);
begin
  if (not (ZQ_Producto.IsEmpty)) then
  begin
    if Assigned(OnSeleccionarTodos) then
      OnSeleccionarTodos
  end
  else
    Application.MessageBox(PChar('No hay ningún producto para seleccionar.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;


procedure TFOP_BuscarProductosOS.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGrid, Rect, DataCol, Column, State);
end;

end.
