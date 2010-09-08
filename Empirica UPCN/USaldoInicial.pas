unit USaldoInicial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EKListadoSQL, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Mask, DBCtrls, StdCtrls, ComCtrls, ISDBEditDateTimePicker,
  dxBar, dxBarExtItems, Grids, DBGrids, ExtCtrls, EKDBDateTimePicker;

type
  TFSaldoInicial = class(TForm)
    pContenedor: TPanel;
    pDatos: TPanel;
    DBGridSaldosIniciales: TDBGrid;
    dxBarABM: TdxBarManager;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    Label3: TLabel;
    Label6: TLabel;
    DBMemoDescripcion: TDBMemo;
    Label1: TLabel;
    DBLookupCBoxCuenta: TDBLookupComboBox;
    Label2: TLabel;
    DBEditImporte: TDBEdit;
    Label10: TLabel;
    ZQ_Cuentas: TZQuery;
    DS_Cuentas: TDataSource;
    EKListadoCuentas: TEKListadoSQL;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasMEDIO_DE_PAGO: TStringField;
    ZQ_CuentasNRO_CUENTA_BANCARIA: TStringField;
    ZQ_CuentasULTIMO_NRO: TIntegerField;
    ZQ_CuentasAUTONUMERAR: TStringField;
    ZQ_CuentasMEDIO_POR_DEFECTO: TIntegerField;
    ZQ_CuentasBUSQUEDA: TStringField;
    EKDTPFecha: TEKDBDateTimePicker;
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnVerDetalleClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    function  ValidarDatos():boolean;
    procedure DBLookupCBoxCuentaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridSaldosInicialesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSaldoInicial: TFSaldoInicial;

const
  transaccion_saldo: string = 'SALDOS INICIALES';

implementation

uses UDM;

{$R *.dfm}

procedure TFSaldoInicial.btnNuevoClick(Sender: TObject);
begin
  //if dm.EKModelo.iniciar_transaccion(transaccion_saldo, [ZQ_Cuentas]) then
  begin
    DBGridSaldosIniciales.Enabled := false;
    pDatos.Visible := true;
    pDatos.Enabled := true;

    //ZQ_Cuentas.Append;
    //ZQ_CuentasAUTONUMERAR.AsString := 'N';
    //EditNombreCuenta.SetFocus;

    GrupoVisualizando.Enabled := false;
    GrupoEditando.Enabled := true;
  end;
end;


procedure TFSaldoInicial.btnModificarClick(Sender: TObject);
begin
  //if ZQ_Cuentas.IsEmpty then
  //  exit;

  //if dm.EKModelo.iniciar_transaccion(transaccion_saldo, [ZQ_Cuentas]) then
  begin
    DBGridSaldosIniciales.Enabled := false;
    pDatos.Visible := true;
    pDatos.Enabled := true;
    //dbEditNombreCuenta.SetFocus;
    GrupoVisualizando.Enabled := false;
    GrupoEditando.Enabled := true;
  end;
end;


procedure TFSaldoInicial.btnEliminarClick(Sender: TObject);
begin
  //if ZQ_Cuentas.IsEmpty then
  //  exit;

  if (application.MessageBox(pchar('¿Esta seguro que desea Eliminar el Saldo Inicial seleccionado?                        ' + #13 + #13), 'Confirmación', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    //if dm.EKModelo.iniciar_transaccion(transaccion_cuentas, [ZQ_Cuentas]) then
    //  ZQ_Cuentas.Delete
    //else
    //  exit;
    if not (dm.EKModelo.finalizar_transaccion(transaccion_saldo)) then
      dm.EKModelo.cancelar_transaccion(transaccion_saldo);
  end;
end;


procedure TFSaldoInicial.btnGuardarClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if not validarDatos() then
    exit;

  //completar codigo

end;

procedure TFSaldoInicial.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_saldo) then
  begin
    DBGridSaldosIniciales.Enabled := true;
    pDatos.Visible := false;
    pDatos.Enabled := false;
    GrupoVisualizando.Enabled := true;
    GrupoEditando.Enabled := false;
  end;
end;


procedure TFSaldoInicial.btnVerDetalleClick(Sender: TObject);
begin
  pDatos.Visible:= not pDatos.Visible;
  pDatos.Enabled:= not pDatos.Visible;
end;


procedure TFSaldoInicial.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFSaldoInicial.DBLookupCBoxCuentaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
    if EKListadoCuentas.Buscar then
    begin
      //ZQ_Cuentas_Movimientos.Edit;
      //ZQ_Cuentas_MovimientosID_CUENTA_INGRESO.AsInteger := StrToInt(ISListadoCuentas.Resultado);
      DBEditImporte.SetFocus;
    end;
end;


procedure TFSaldoInicial.DBGridSaldosInicialesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdFocused in State) or (gdSelected in State) then
  begin
    //DBGridSaldosIniciales.Canvas.Font.Color := clwhite;
    //DBGridSaldosIniciales.Canvas.Brush.Color:= $00FB952F;
    //DBGridSaldosIniciales.Canvas.Font.Style := DBGridSaldosIniciales.Canvas.Font.Style + [fsBold];
  end;
  DBGridSaldosIniciales.DefaultDrawColumnCell(rect,datacol,column,state);
end;


function TFSaldoInicial.ValidarDatos():boolean;
begin
  result := true;
 {
  if ZQ_TransferenciaFECHA.IsNull then
   begin
     Application.MessageBox('El capo Fecha se encuentra Vacio, verifique','Validar',MB_OK+MB_ICONINFORMATION);
     ISDTPFecha.SetFocus;
     result := false;
     Exit;
   end;

  if ZQ_Cuentas_MovimientosID_CUENTA_INGRESO.IsNull then
   begin
     Application.MessageBox('El campo Cuenta Ingreso se encuentra Vacio, verifique','Validar',MB_OK+MB_ICONINFORMATION);
     DBLookupCBoxCuenta.SetFocus;
     DBLookupCBoxCuenta.perform(WM_LBUTTONDOWN,1,0);
     result := false;
     Exit;
   end;

  if ZQ_TransferenciaIMPORTE.IsNull then
   begin
     Application.MessageBox('El campo Importe se encuentra Vacio, verifique','Validar',MB_OK+MB_ICONINFORMATION);
     DBEditImporte.SetFocus;
     result := false;
     Exit;
   end;
   }
end;


end.
