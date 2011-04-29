unit UMailConfigurar;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, ComCtrls, IdException, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ExtCtrls, dxBar, dxBarExtItems, Mask, DBCtrls,
  IdSMTP, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdPOP3, EKLlenarCombo;

type
   TFMailConfigurar = class(TForm)
    PageControlSetup: TPageControl;
    tabSheetPop3: TTabSheet;
    tabSheetSmtp: TTabSheet;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnPrincipal: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    panelCuenta: TPanel;
    PanelPOP3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    btnValidarPOP3: TButton;
    PanelSMTP: TPanel;
    lblAuthenticationType: TLabel;
    lbAccount: TLabel;
    lbPassword: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SMTPAuthType: TComboBox;
    btnValidarSMTP: TButton;
    ZQ_Cuentas: TZQuery;
    Label3: TLabel;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasID_SUCURSAL: TIntegerField;
    ZQ_CuentasEMAIL: TStringField;
    ZQ_CuentasPOP3_HOST: TStringField;
    ZQ_CuentasPOP3_PUERTO: TIntegerField;
    ZQ_CuentasPOP3_USUARIO: TStringField;
    ZQ_CuentasPOP3_PASSWORD: TStringField;
    ZQ_CuentasSMTP_HOST: TStringField;
    ZQ_CuentasSMTP_PUERTO: TIntegerField;
    ZQ_CuentasSMTP_USUARIO: TStringField;
    ZQ_CuentasSMTP_PASSWORD: TStringField;
    ZQ_CuentasSMTP_AUTENTICACION: TStringField;
    ZQ_CuentasCUENTA_PRINCIPAL: TStringField;
    DBEditPOPServidor: TDBEdit;
    DBEditPOPPuerto: TDBEdit;
    DBEditPOPUsuario: TDBEdit;
    DBEditPOPPassword: TDBEdit;
    DS_Cuentas: TDataSource;
    DBEditSMTPServidor: TDBEdit;
    DBEditSMTPPuerto: TDBEdit;
    DBEditSMTPUsuario: TDBEdit;
    DBEditSMTPPassword: TDBEdit;
    DBEditEmail: TDBEdit;
    validarPOP3: TIdPOP3;
    validarSMTP: TIdSMTP;
    EKLlenarCombo: TEKLlenarCombo;
    ComboBoxCuenta: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure conectarSMTP();
    procedure conectarPOP3();
    procedure desconectarPOP3();
    procedure desconectarSMTP();
    procedure btnValidarPOP3Click(Sender: TObject);
    procedure btnValidarSMTPClick(Sender: TObject);
    procedure mostrarOcupado(flag: boolean);
    procedure cargarDatos();
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBComboBoxCuentaChange(Sender: TObject);
    procedure btnPrincipalClick(Sender: TObject);
    procedure ZQ_CuentasAfterScroll(DataSet: TDataSet);
    procedure EKLlenarComboCambio(valor: String);
   private
    { Private declarations }
   public
     conectadoPOP3, conectadoSMTP: boolean;
   end;

var
   FMailConfigurar: TFMailConfigurar;

const
  transaccion_Mail = 'COFIGURAR MAIL';

implementation

{$R *.DFM}

uses UDM, UPrincipal;

procedure TFMailConfigurar.mostrarOcupado(flag: boolean);
begin
  if flag then
    screen.cursor := crHourglass
  else
    screen.cursor := crDefault;
end;


procedure TFMailConfigurar.FormCreate(Sender: TObject);
begin
  PageControlSetup.ActivePageIndex:= 0;
  conectadoPOP3:= false;
  conectadoSMTP:= false;

  PanelPOP3.Enabled:= false;
  PanelSMTP.Enabled:= false;

  cargarDatos;

  EKLlenarCombo.CargarCombo;
end;


procedure TFMailConfigurar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_Mail);
end;


procedure TFMailConfigurar.cargarDatos();
var
  i: integer;
begin
  ZQ_Cuentas.Close;
  ZQ_Cuentas.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
  ZQ_Cuentas.Open;
end;


procedure TFMailConfigurar.desconectarSMTP();
begin
  if validarSMTP.Connected then
  begin
    validarSMTP.Disconnect;
    conectadoSMTP:= false;
  end;

  mostrarOcupado(false);
end;


procedure TFMailConfigurar.desconectarPOP3();
begin
  if validarPOP3.Connected then
  begin
    validarPOP3.Disconnect;
    conectadoPOP3:= false;
  end;

  mostrarOcupado(false);
end;


procedure TFMailConfigurar.conectarPOP3();
begin
  try
    if not conectadoPOP3 then
    begin
      mostrarOcupado(true);
      validarPOP3.Connect;
      conectadoPOP3:= true;
      desconectarPOP3;
    end
  except
    ON E: EIdProtocolReplyError do
    begin
      ShowMessage(pchar('Error de configuración de cuenta de usuario'));
      desconectarPOP3;
      exit;
    end;
    on E: EIdSocketError do
    begin
      ShowMessage(pchar('Host/Puerto desconocido o incorrecto'));
      desconectarPOP3;
      exit;
    end
    else
    begin
      ShowMessage(pchar('Error desconocido'));
      desconectarPOP3;
      exit;
    end;
  end;

  ShowMessage(pchar('Configuración POP3 Correcta'));
end;


procedure TFMailConfigurar.conectarSMTP();
begin
  try
    if not conectadoSMTP then
    begin
      mostrarOcupado(true);
      validarSMTP.Connect;
      conectadoSMTP:= true;
      desconectarSMTP; 
    end
  except
    ON E: EIdProtocolReplyError do
    begin
      ShowMessage(pchar('Error de configuración de cuenta de usuario'));
      desconectarSMTP;
      exit;
    end;
    on E: EIdSocketError do
    begin
      ShowMessage(pchar('Host/Puerto desconocido o incorrecto'));
      desconectarSMTP;
      exit;
    end
    else
    begin
      ShowMessage(pchar('Error desconocido'));
      desconectarSMTP;
      exit;
    end;
  end;

  ShowMessage(pchar('Configuración SMTP Correcta'));
end;


procedure TFMailConfigurar.btnValidarPOP3Click(Sender: TObject);
begin
  validarPOP3.Host:= DBEditPOPServidor.Text;
  validarPOP3.Port:= StrToInt(DBEditPOPPuerto.Text);
  validarPOP3.Username:= DBEditPOPUsuario.Text;
  validarPOP3.Password:= DBEditPOPPassword.Text;

  conectarPOP3;
end;


procedure TFMailConfigurar.btnValidarSMTPClick(Sender: TObject);
begin
  validarSMTP.Host:= DBEditSMTPServidor.Text;
  validarSMTP.Port:= StrToInt(DBEditSMTPPuerto.Text);
  validarSMTP.Username:= DBEditSMTPUsuario.Text;
  validarSMTP.Password:= DBEditSMTPPassword.Text;
  case SMTPAuthType.ItemIndex of
     0: validarSMTP.AuthenticationType := atNone;
     1: validarSMTP.AuthenticationType := atLogin; {Simple Login}
  end;

  conectarSMTP;
end;


procedure TFMailConfigurar.btnSalirClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;


procedure TFMailConfigurar.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_Mail, [ZQ_Cuentas]) then
  begin
    PanelPOP3.Enabled:= true;
    PanelSMTP.Enabled:= true;

    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;

    ComboBoxCuenta.Enabled:= False;
    ComboBoxCuenta.Visible:= False;

    DBEditEmail.Enabled:= True;
    DBEditEmail.Visible:= True;

    DBEditEmail.SetFocus;

    ZQ_Cuentas.Append;
    ZQ_CuentasID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
    ZQ_CuentasCUENTA_PRINCIPAL.AsString:= 'N';
  end;
end;


procedure TFMailConfigurar.btnModificarClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_Mail, [ZQ_Cuentas]) then
  begin
    PanelPOP3.Enabled:= true;
    PanelSMTP.Enabled:= true;

    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;

    ComboBoxCuenta.Enabled:= False;

    DBEditPOPServidor.SetFocus;

    ZQ_Cuentas.Edit;
  end;
end;


procedure TFMailConfigurar.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_Mail) then
  begin
    PanelPOP3.Enabled:= false;
    PanelSMTP.Enabled:= false;

    GrupoEditando.Enabled:= true;
    GrupoGuardarCancelar.Enabled:= false;

    ComboBoxCuenta.Enabled:= true;
    ComboBoxCuenta.Visible:= true;

    DBEditEmail.Enabled:= false;
    DBEditEmail.Visible:= false;

    ComboBoxCuenta.SetFocus;
  end;
end;


procedure TFMailConfigurar.btnGuardarClick(Sender: TObject);
begin
  ZQ_Cuentas.Edit;
  case SMTPAuthType.ItemIndex of
     0: ZQ_CuentasSMTP_AUTENTICACION.AsString:= 'atNone';
     1: ZQ_CuentasSMTP_AUTENTICACION.AsString:= 'atLogin'; {Simple Login}
  end;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_Mail) then
    begin
      PanelPOP3.Enabled:= false;
      PanelSMTP.Enabled:= false;

      GrupoEditando.Enabled:= true;
      GrupoGuardarCancelar.Enabled:= false;

      ComboBoxCuenta.Enabled:= true;
      ComboBoxCuenta.Visible:= true;

      DBEditEmail.Enabled:= false;
      DBEditEmail.Visible:= false;

      ComboBoxCuenta.SetFocus;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end
end;


procedure TFMailConfigurar.DBComboBoxCuentaChange(Sender: TObject);
begin
//  if ZQ_CuentasSMTP_AUTENTICACION.AsString = 'atNone' then
//    SMTPAuthType.Text := 'atNone';
//  if ZQ_CuentasSMTP_AUTENTICACION.AsString = 'atLogin' then
//    SMTPAuthType.Text := 'atLogin';
end;


procedure TFMailConfigurar.btnPrincipalClick(Sender: TObject);
var
  recNo: integer;
begin
  if (application.MessageBox(pchar('¿Desea marcar la cuenta "'+ZQ_CuentasEMAIL.AsString+'" como principal?'), 'ABM Articulo Medida', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    recNo:= ZQ_Cuentas.RecNo;

    if dm.EKModelo.iniciar_transaccion(transaccion_Mail, [ZQ_Cuentas]) then
    begin
      ZQ_Cuentas.First;
      while not ZQ_Cuentas.Eof do
      begin
        ZQ_Cuentas.Edit;
        if ZQ_Cuentas.RecNo = recNo then
          ZQ_CuentasCUENTA_PRINCIPAL.AsString:= 'S'
        else
          ZQ_CuentasCUENTA_PRINCIPAL.AsString:= 'N';
        ZQ_Cuentas.Next;
      end;
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_Mail)) then
      dm.EKModelo.cancelar_transaccion(transaccion_Mail);

    ZQ_Cuentas.Refresh;
    ZQ_Cuentas.RecNo:= recNo;
  end;
end;


procedure TFMailConfigurar.ZQ_CuentasAfterScroll(DataSet: TDataSet);
begin
  if ZQ_CuentasCUENTA_PRINCIPAL.AsString = 'S' then
    btnPrincipal.Enabled:= false
  else
    btnPrincipal.Enabled:= true;
end;

procedure TFMailConfigurar.EKLlenarComboCambio(valor: String);
begin
  if ZQ_CuentasSMTP_AUTENTICACION.AsString = 'atNone' then
    SMTPAuthType.Text := 'atNone';
  if ZQ_CuentasSMTP_AUTENTICACION.AsString = 'atLogin' then
    SMTPAuthType.Text := 'atLogin';
end;

end.

