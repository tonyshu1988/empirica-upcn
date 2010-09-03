unit UConceptos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ComCtrls, dxtree, dxdbtree, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, EKListadoSQL, Grids, DBGrids;

type
  TFConceptos = class(TForm)
    pDatos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbNombreConcepto: TDBEdit;
    dbCodigoConcepto: TDBEdit;
    ZQ_IE_Conceptos: TZQuery;
    DS_IE_Conceptos: TDataSource;
    EKListadoSQL1: TEKListadoSQL;
    Grilla: TDBGrid;
    ZQ_IE_ConceptosID_CONCEPTO: TIntegerField;
    ZQ_IE_ConceptosCOD_CORTO: TStringField;
    ZQ_IE_ConceptosNOMBRE_CONCEPTO: TStringField;
    ZQ_IE_ConceptosBAJA: TStringField;
    ZQ_IE_ConceptosIMPORTE: TFloatField;
    dbImporte: TDBEdit;
    Label3: TLabel;
    dxBarABM: TdxBarManager;
    BtNuevo: TdxBarLargeButton;
    BtModificar: TdxBarLargeButton;
    btBaja: TdxBarLargeButton;
    btBuscar: TdxBarLargeButton;
    BtGuardar: TdxBarLargeButton;
    BtCancelar: TdxBarLargeButton;
    btReactivar: TdxBarLargeButton;
    Bt_Seleccionar: TdxBarLargeButton;
    btBajar: TdxBarLargeButton;
    bt_salir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
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
  FConceptos: TFConceptos;

const
  Plan_cuenta_erogaciones='ABM Plan Cuenta Erogaciones';
implementation

uses UDM;

{$R *.dfm}

procedure TFConceptos.FormCreate(Sender: TObject);
begin
dm.EKModelo.abrir(ZQ_IE_Conceptos);
end;

procedure TFConceptos.btBuscarClick(Sender: TObject);
begin
EKListadoSQL1.Buscar;
end;

procedure TFConceptos.btnNuevoClick(Sender: TObject);
var
  padre: string;
begin
//  if (ZQ_PC_ErogacionesTITULO.AsInteger = 1) then
//    padre := ZQ_PC_ErogacionesCODIGO_CUENTA.AsString
//  else
//    padre := ZQ_PC_ErogacionesPADRE.AsString;
//
//  if dm.EKModelo.iniciar_transaccion(Plan_cuenta_erogaciones, [ZQ_PC_Erogaciones]) then
//  begin
//    dxDBTreeView1.Enabled := false;
//    pDatos.Visible := true;
//    ZQ_PC_Erogaciones.Insert;
//    ZQ_PC_ErogacionesTITULO.AsInteger := 0;
//    ZQ_PC_ErogacionesPADRE.Value := padre;
//    dbNroCuenta.SetFocus;
//    GrupoVisualizando.Enabled := false;
//    GrupoEditando.Enabled := true;
//  end;
end;

procedure TFConceptos.btnModificarClick(Sender: TObject);
begin

//  if ZQ_PC_Erogaciones.IsEmpty then
//    exit;
//  if ZQ_PC_ErogacionesTITULO.Value = 1 then
//  begin
//    dbNroCuenta.Enabled := false;
//    dbImputable.Enabled := false;
//  end;
//  if dm.EKModelo.iniciar_transaccion(Plan_cuenta_erogaciones, [ZQ_PC_Erogaciones]) then
//  begin
//    dxDBTreeView1.Enabled := false;
//    pDatos.Visible := true;
//    GrupoVisualizando.Enabled := false;
//    GrupoEditando.Enabled := true;
//  end;
end;

procedure TFConceptos.btnEliminarClick(Sender: TObject);
var
  posicionPadre: string;
begin
//  if ZQ_PC_Erogaciones.IsEmpty then
//    exit;
//  if (application.MessageBox(pchar('¿Desea Eliminar la cuenta ' + ZQ_PC_ErogacionesNOMBRE_CUENTA.AsString + ' del Plan de Cuentas? '), 'Confirmación', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
//  begin
//    posicionPadre := ZQ_PC_ErogacionesPADRE.AsString;
//    dxDBTreeView1.Visible := false;
//    if dm.EKModelo.iniciar_transaccion(Plan_cuenta_erogaciones, [ZQ_PC_Erogaciones]) then
//      ZQ_PC_Erogaciones.Delete
//    else
//      exit;
//    if not (dm.EKModelo.finalizar_transaccion(Plan_cuenta_erogaciones)) then
//      dm.EKModelo.cancelar_transaccion(Plan_cuenta_erogaciones)
//    else
//    begin
//      dxDBTreeView1.RefreshItems;
//      dxDBTreeView1.GotoKeyFieldValue(posicionPadre);
//    end;
//    dxDBTreeView1.Visible := true;
//  end;
end;

end.
