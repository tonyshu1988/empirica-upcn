unit EKUListadoSql;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DBClient, Provider, ActnList,
  XPStyleActnCtrls, ActnMan, ExtCtrls;

type
  TFListadoSQL = class(TForm)
    grilla: TDBGrid;
    bt_seleccionar: TButton;
    bt_salir: TButton;
    buscar: TEdit;
    Label1: TLabel;
    D_Datos: TDataSource;
    SQL: TZQuery;
    P_sql: TDataSetProvider;
    C_sql: TClientDataSet;
    campo_buscar: TLabel;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    panel_edicion: TPanel;
    bt_nuevo: TButton;
    Bt_modificar: TButton;
    bt_eliminar: TButton;
    Nuevo: TAction;
    Modificar: TAction;
    Eliminar: TAction;
    procedure buscarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grillaDblClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure NuevoExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure bt_eliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListadoSQL: TFListadoSQL;

implementation

{$R *.dfm}

procedure TFListadoSQL.buscarKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Length(buscar.Text) > 0 then
  begin
    C_sql.Filter := 'Upper('+campo_buscar.Caption+')' +' like ''%'+(buscar.Text)+'%''';
    C_sql.Filtered := true;
  end
  else
    C_sql.Filtered := false;

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

end.
