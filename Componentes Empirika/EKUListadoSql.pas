unit EKUListadoSql;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DBClient, Provider, ActnList,
  XPStyleActnCtrls, ActnMan, ExtCtrls, EKOrdenarGrilla;

type
  TFListadoSQL = class(TForm)
    D_Datos: TDataSource;
    SQL: TZQuery;
    P_sql: TDataSetProvider;
    C_sql: TClientDataSet;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Nuevo: TAction;
    Modificar: TAction;
    Eliminar: TAction;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    Panel1: TPanel;
    Panel_Seleccionar: TPanel;
    bt_seleccionar: TButton;
    bt_salir: TButton;
    bt_actualizar: TButton;
    panel_edicion: TPanel;
    bt_nuevo: TButton;
    Bt_modificar: TButton;
    bt_eliminar: TButton;
    grilla: TDBGrid;
    Panel_Buscar: TPanel;
    lblBuscar: TLabel;
    campo_buscar: TLabel;
    buscar: TEdit;
    Panel_Buscar2: TPanel;
    lblBuscar2: TLabel;
    campo_buscar2: TLabel;
    buscar2: TEdit;
    procedure buscarKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grillaDblClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure bt_eliminarClick(Sender: TObject);
    procedure setColorGrilla(color: TColor);
    procedure buscar2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grillaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    filtro1, filtro2, conector: string;
  public
    { Public declarations }
  end;

var
  FListadoSQL: TFListadoSQL;

type
  THackDBGrid = class(TDBGrid);

implementation

{$R *.dfm}

procedure TFListadoSQL.buscarKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Length(buscar.Text) > 0 then
  begin
    if filtro2 <> '' then
      conector:= ' AND '
    else
      conector:= '';

    filtro1:= 'Upper(' + campo_buscar.Caption + ')' + ' like ''%' + (buscar.Text) + '%''';
    C_sql.Filter:= filtro1+conector+filtro2;
    C_sql.Filtered:= true;
  end
  else
  begin
    filtro1:= '';
    C_sql.Filter:= filtro2;
  end;

  if ((Length(buscar.Text) = 0) and (Length(buscar2.Text) = 0)) then
    C_sql.Filtered:= false;
end;


procedure TFListadoSQL.buscar2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Length(buscar2.Text) > 0 then
  begin
    if filtro1 <> '' then
      conector:= ' AND '
    else
      conector:= '';

    filtro2:= 'Upper(' + campo_buscar2.Caption + ')' + ' like ''%' + (buscar2.Text) + '%''';
    C_sql.Filter:= filtro1+conector+filtro2;
    C_sql.Filtered:= true;
  end
  else
  begin
    filtro2:= '';
    C_sql.Filter:= filtro1;
  end;

  if ((Length(buscar.Text) = 0) and (Length(buscar2.Text) = 0)) then
    C_sql.Filtered:= false;
end;


procedure TFListadoSQL.grillaDblClick(Sender: TObject);
begin
  bt_seleccionar.Click;
end;


procedure TFListadoSQL.Action1Execute(Sender: TObject);
begin
  bt_salir.Click;
end;


procedure TFListadoSQL.Action2Execute(Sender: TObject);
begin
  if buscar.Focused then
  begin
    if C_sql.RecordCount = 1 then
      bt_seleccionar.Click
    else
      grilla.SetFocus;
  end
  else
    bt_seleccionar.Click;
end;


procedure TFListadoSQL.NuevoExecute(Sender: TObject);
begin
  bt_nuevo.Click;
end;


procedure TFListadoSQL.ModificarExecute(Sender: TObject);
begin
  Bt_modificar.Click;
end;


procedure TFListadoSQL.bt_eliminarClick(Sender: TObject);
begin
  bt_eliminar.Click;
end;


procedure TFListadoSQL.setColorGrilla(color: TColor);
begin
  grilla.Color:= color;
end;


procedure TFListadoSQL.grillaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  a: TRect;
begin
  if grilla.DataSource.DataSet.IsEmpty then
    exit;

  a:= Rect;

  if (THackDBGrid(grilla).DataLink.ActiveRecord + 1 = THackDBGrid(grilla).Row) then
  begin
    a.Top:= a.Top + 1;
    a.Bottom:= a.Bottom - 1;

    grilla.Canvas.Font.Color:= clWhite;
    grilla.Canvas.Brush.Color:= $00818181;
    if (gdFocused in State) or (gdSelected in State) then
    begin
      grilla.Canvas.Brush.Color:= $002E1701;
      grilla.Canvas.Font.Style:= grilla.Canvas.Font.Style + [fsBold];
    end;
  end;

  grilla.DefaultDrawColumnCell(a, datacol, column, state);
end;

end.
