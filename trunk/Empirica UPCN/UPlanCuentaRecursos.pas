unit UPlanCuentaRecursos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ComCtrls, dxtree, dxdbtree, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, EKListadoSQL;

type
  TFPlanCuentaRecursos = class(TForm)
    dxDBTreeView1: TdxDBTreeView;
    dxBarABM: TdxBarManager;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    pDatos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    dbNombreCuenta: TDBEdit;
    dbNroCuenta: TDBEdit;
    dbImputable: TDBRadioGroup;
    Label6: TLabel;
    dbPadre: TDBText;
    ZQ_PC_Erogaciones: TZQuery;
    ZQ_PC_ErogacionesCODIGO_CUENTA: TStringField;
    ZQ_PC_ErogacionesPADRE: TStringField;
    ZQ_PC_ErogacionesTITULO: TIntegerField;
    ZQ_PC_ErogacionesNOMBRE_CUENTA: TStringField;
    ZQ_PC_ErogacionesCOD_CORTO: TStringField;
    ZQ_PC_ErogacionesPAGADO_EJ: TFloatField;
    ZQ_PC_ErogacionesDEUDA_EJ: TFloatField;
    DS_PC_Erogaciones: TDataSource;
    EKListadoSQL1: TEKListadoSQL;
    btBuscar: TdxBarLargeButton;
    procedure FormCreate(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPlanCuentaRecursos: TFPlanCuentaRecursos;

const
  Plan_cuenta_erogaciones='ABM Plan Cuenta Erogaciones';
implementation

uses UDM;

{$R *.dfm}

procedure TFPlanCuentaRecursos.FormCreate(Sender: TObject);
begin
dm.EKModelo.abrir(ZQ_PC_Erogaciones);
end;

procedure TFPlanCuentaRecursos.btBuscarClick(Sender: TObject);
begin
EKListadoSQL1.Buscar;
end;

procedure TFPlanCuentaRecursos.btnNuevoClick(Sender: TObject);
var
  padre: string;
begin
  if (ZQ_PC_ErogacionesTITULO.AsInteger = 1) then
    padre := ZQ_PC_ErogacionesCODIGO_CUENTA.AsString
  else
    padre := ZQ_PC_ErogacionesPADRE.AsString;

  if dm.EKModelo.iniciar_transaccion(Plan_cuenta_erogaciones, [ZQ_PC_Erogaciones]) then
  begin
    dxDBTreeView1.Enabled := false;
    pDatos.Visible := true;
    ZQ_PC_Erogaciones.Insert;
    ZQ_PC_ErogacionesTITULO.AsInteger := 0;
    ZQ_PC_ErogacionesPADRE.Value := padre;
    dbNroCuenta.SetFocus;
    GrupoVisualizando.Enabled := false;
    GrupoEditando.Enabled := true;
  end;
end;

procedure TFPlanCuentaRecursos.btnModificarClick(Sender: TObject);
begin

  if ZQ_PC_Erogaciones.IsEmpty then
    exit;
  if ZQ_PC_ErogacionesTITULO.Value = 1 then
  begin
    dbNroCuenta.Enabled := false;
    dbImputable.Enabled := false;
  end;
  if dm.EKModelo.iniciar_transaccion(Plan_cuenta_erogaciones, [ZQ_PC_Erogaciones]) then
  begin
    dxDBTreeView1.Enabled := false;
    pDatos.Visible := true;
    GrupoVisualizando.Enabled := false;
    GrupoEditando.Enabled := true;
  end;
end;

procedure TFPlanCuentaRecursos.btnEliminarClick(Sender: TObject);
var
  posicionPadre: string;
begin
  if ZQ_PC_Erogaciones.IsEmpty then
    exit;
  if (application.MessageBox(pchar('¿Desea Eliminar la cuenta ' + ZQ_PC_ErogacionesNOMBRE_CUENTA.AsString + ' del Plan de Cuentas? '), 'Confirmación', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    posicionPadre := ZQ_PC_ErogacionesPADRE.AsString;
    dxDBTreeView1.Visible := false;
    if dm.EKModelo.iniciar_transaccion(Plan_cuenta_erogaciones, [ZQ_PC_Erogaciones]) then
      ZQ_PC_Erogaciones.Delete
    else
      exit;
    if not (dm.EKModelo.finalizar_transaccion(Plan_cuenta_erogaciones)) then
      dm.EKModelo.cancelar_transaccion(Plan_cuenta_erogaciones)
    else
    begin
      dxDBTreeView1.RefreshItems;
      dxDBTreeView1.GotoKeyFieldValue(posicionPadre);
    end;
    dxDBTreeView1.Visible := true;
  end;
end;

end.
