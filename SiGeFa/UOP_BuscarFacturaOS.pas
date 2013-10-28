unit UOP_BuscarFacturaOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, Grids, DBGrids, ExtCtrls, ComCtrls, DBCtrls, StdCtrls,
  Mask, ZSqlUpdate,DateUtils, EKOrdenarGrilla, EKBusquedaAvanzada,
  ActnList, XPStyleActnCtrls, ActnMan, cxClasses;

type
  TFOP_BuscarFacturaOS = class(TForm)
    Panel1: TPanel;
    DBGrid: TDBGrid;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnSeleccionar: TdxBarLargeButton;
    ZQ_Facturas: TZQuery;
    DS_Facturas: TDataSource;
    EKOrdenarGrilla: TEKOrdenarGrilla;
    EKBuscarFacturas: TEKBusquedaAvanzada;
    btnSeleccinarYSalir: TdxBarLargeButton;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ASeleccionar: TAction;
    ASalir: TAction;
    btnSeleccionarTodos: TdxBarLargeButton;
    ASelTodos: TAction;
    ZQ_FacturasID_COMPROBANTE: TIntegerField;
    ZQ_FacturasID_SUCURSAL: TIntegerField;
    ZQ_FacturasCODIGO: TStringField;
    ZQ_FacturasNUMERO_CPB: TIntegerField;
    ZQ_FacturasPUNTO_VENTA: TIntegerField;
    ZQ_FacturasFECHA: TDateTimeField;
    ZQ_FacturasIMPORTE_TOTAL: TFloatField;
    ZQ_FacturasID_OBRA_SOCIAL: TIntegerField;
    ZQ_FacturasSUCURSAL: TStringField;
    ZQ_FacturasCODIGO_1: TStringField;
    ZQ_FacturasNOMBRE: TStringField;
    ZQ_FacturasNRO_AFILIADO: TStringField;
    ZQ_FacturasAFILIADO: TStringField;
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
    procedure ASelTodosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    OnSeleccionar: procedure() of object;
    OnSeleccionarTodos: procedure() of object;
    SeleccionarYSalir: boolean;
  end;

var
  FOP_BuscarFacturaOS: TFOP_BuscarFacturaOS;

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFOP_BuscarFacturaOS.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFOP_BuscarFacturaOS.btnBuscarClick(Sender: TObject);
begin
  EKBuscarFacturas.Buscar;
end;


procedure TFOP_BuscarFacturaOS.btnSeleccionarClick(Sender: TObject);
begin
  if ((not(DBGrid.SelectedRows.Count > 0)) and (not(ZQ_Facturas.IsEmpty))) then
  begin
    if Assigned(OnSeleccionar) then
      OnSeleccionar
  end
  else
    Application.MessageBox(PChar('Debe seleccionar alguna Factura.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;


procedure TFOP_BuscarFacturaOS.FormActivate(Sender: TObject);
begin
  if ZQ_Facturas.IsEmpty then
  begin
    Application.ProcessMessages;
    btnBuscar.Click;
  end;
end;


procedure TFOP_BuscarFacturaOS.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;


procedure TFOP_BuscarFacturaOS.ASeleccionarExecute(Sender: TObject);
begin
  if btnSeleccionar.Enabled then
    btnSeleccionar.Click;
end;


procedure TFOP_BuscarFacturaOS.ASelTodosExecute(Sender: TObject);
begin
  if btnSeleccionarTodos.Enabled then
    btnSeleccionarTodos.Click;
end;


procedure TFOP_BuscarFacturaOS.ASalirExecute(Sender: TObject);
begin
  if btnSalir.Enabled then
    btnSalir.Click;
end;


procedure TFOP_BuscarFacturaOS.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla.CargarConfigColumnas;
end;


procedure TFOP_BuscarFacturaOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarGrilla.GuardarConfigColumnas;
end;


procedure TFOP_BuscarFacturaOS.btnSeleccionarTodosClick(Sender: TObject);
begin
  if (not (ZQ_Facturas.IsEmpty)) then
  begin
    if Assigned(OnSeleccionarTodos) then
    begin
      Application.ProcessMessages;
      OnSeleccionarTodos;
    end
  end
  else
    Application.MessageBox(PChar('No hay ninguna Factura para seleccionar.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;


procedure TFOP_BuscarFacturaOS.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGrid, Rect, DataCol, Column, State);
end;



end.
