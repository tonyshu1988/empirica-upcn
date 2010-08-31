unit UABM_Cuentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, DBCtrls, Mask;

type
  TFABM_Cuentas = class(TForm)
    pContenedor: TPanel;
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
    dbGridCuentas: TDBGrid;
    ZQ_Cuentas: TZQuery;
    DS_Cuentas: TDataSource;
    DS_Medios: TDataSource;
    ZQ_Medios: TZQuery;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasMEDIO_DE_PAGO: TStringField;
    ZQ_CuentasNRO_CUENTA_BANCARIA: TStringField;
    ZQ_CuentasULTIMO_NRO: TIntegerField;
    ZQ_CuentasAUTONUMERAR: TStringField;
    ZQ_CuentasMEDIO_POR_DEFECTO: TIntegerField;
    ZQ_MediosID_MEDIO: TIntegerField;
    ZQ_MediosNOMBRE_MEDIO_COBRO_PAGO: TStringField;
    ZQ_CuentasmedioCobro: TStringField;
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
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_Cuentas: TFABM_Cuentas;

const
  transaccion_cuentas: string = 'ABM CUENTAS';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFABM_Cuentas.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_cuentas, [ZQ_Cuentas]) then
  begin
    dbGridCuentas.Enabled := false;
    pDatos.Visible := true;
    ZQ_Cuentas.Append;
    ZQ_CuentasAUTONUMERAR.AsString := 'N';
    dbEditNombreCuenta.SetFocus;
    GrupoVisualizando.Enabled := false;
    GrupoEditando.Enabled := true;
  end;
end;


procedure TFABM_Cuentas.btnModificarClick(Sender: TObject);
begin
  if ZQ_Cuentas.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_cuentas, [ZQ_Cuentas]) then
  begin
    dbGridCuentas.Enabled := false;
    pDatos.Visible := true;
    dbEditNombreCuenta.SetFocus;
    GrupoVisualizando.Enabled := false;
    GrupoEditando.Enabled := true;
  end;
end;


procedure TFABM_Cuentas.btnEliminarClick(Sender: TObject);
begin
  if ZQ_Cuentas.IsEmpty then
    exit;

  if (application.MessageBox(pchar('¿Esta seguro que desea Eliminar la Cuenta?                        ' + #13 + #13), 'Confirmación', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_cuentas, [ZQ_Cuentas]) then
      ZQ_Cuentas.Delete
    else
      exit;
    if not (dm.EKModelo.finalizar_transaccion(transaccion_cuentas)) then
      dm.EKModelo.cancelar_transaccion(transaccion_cuentas);
  end;
end;


procedure TFABM_Cuentas.btnGuardarClick(Sender: TObject);
begin
  if DM.EKModelo.finalizar_transaccion(transaccion_cuentas) then
  begin
    dbGridCuentas.Enabled := true;
    GrupoVisualizando.Enabled := true;
    GrupoEditando.Enabled := false;
    pDatos.Visible := false;
    ZQ_Cuentas.Refresh;
  end;
end;


procedure TFABM_Cuentas.btnCancelarClick(Sender: TObject);
begin
  dbGridCuentas.Enabled := true;
  dm.EKModelo.cancelar_transaccion(transaccion_cuentas);
  pDatos.Visible := false;
  GrupoVisualizando.Enabled := true;
  GrupoEditando.Enabled := false;
end;


procedure TFABM_Cuentas.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFABM_Cuentas.FormCreate(Sender: TObject);
begin
  dm.ekModelo.abrir(ZQ_Cuentas);
  dm.ekModelo.abrir(ZQ_Medios);
end;


procedure TFABM_Cuentas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_cuentas) then
  begin
    if not (application.MessageBox(pchar('La Transacción esta activa, hay cambios sin guardar. Los Cancela?'), 'Pregunta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose := False
    else
      dm.EKModelo.cancelar_transaccion(transaccion_cuentas);
  end;
end;

end.
