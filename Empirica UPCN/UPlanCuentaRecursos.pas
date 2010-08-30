unit UPlanCuentaRecursos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ComCtrls, dxtree, dxdbtree, StdCtrls,
  ExtCtrls, DBCtrls, Mask;

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
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbEditNombreCuenta: TDBEdit;
    dbEditNroCuenta: TDBEdit;
    dbEditUltimoNro: TDBEdit;
    dbLookupCBoxMedio: TDBLookupComboBox;
    dbRGroupAutonumerar: TDBRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPlanCuentaRecursos: TFPlanCuentaRecursos;

implementation

{$R *.dfm}

end.
