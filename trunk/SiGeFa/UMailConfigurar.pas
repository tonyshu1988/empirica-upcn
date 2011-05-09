unit UMailConfigurar;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, ComCtrls, IdException, DB, ZAbstractRODataset,
   ZAbstractDataset, ZDataset, ExtCtrls, dxBar, dxBarExtItems, Mask, DBCtrls,
   IdSMTP, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
   IdMessageClient, IdPOP3, EKLlenarCombo, cxClasses, IdSMTPBase,
   IdExplicitTLSClientServerBase, IdIOHandler, IdIOHandlerSocket,
   IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdSSLOpenSSLHeaders;

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
    MemoSMTP: TMemo;
    MemoPOP3: TMemo;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SMTPUseTLS: TComboBox;
    ZQ_CuentasSMTP_SSL: TStringField;
    Label7: TLabel;
    POP3UseTLS: TComboBox;
    ZQ_CuentasPOP3_SSL: TStringField;
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
    procedure btnPrincipalClick(Sender: TObject);
    procedure ZQ_CuentasAfterScroll(DataSet: TDataSet);
    procedure EKLlenarComboCambio(valor: String);
    procedure DBEditEmailExit(Sender: TObject);
    procedure validarSMTPStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
    procedure validarPOP3Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
    procedure manejadorSSLStatus(ASender: TObject;
      const AStatus: TIdStatus; const AStatusText: String);
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

uses UDM, UPrincipal, UUtilidades;

procedure TFMailConfigurar.mostrarOcupado(flag: boolean);
begin
  if flag then
    screen.cursor := crHourglass
  else
    screen.cursor := crDefault;
end;


procedure TFMailConfigurar.FormCreate(Sender: TObject);
begin
  IdSSLOpenSSLHeaders.Load;

  PageControlSetup.ActivePageIndex:= 0;
  conectadoPOP3:= false;
  conectadoSMTP:= false;

  PanelPOP3.Enabled:= false;
  PanelSMTP.Enabled:= false;

  cargarDatos;

  EKLlenarCombo.CargarCombo;
  EKLlenarCombo.SetItem(0);

  MemoSMTP.Clear;
  MemoPOP3.Clear;
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
    on E: EIdException do
    begin
      if UpperCase(E.ClassName) = 'EIDSOCKETERROR' then
        ShowMessage(pchar('ERROR: Servidor/Puerto desconocido o incorrecto'))
      else
        if UpperCase(E.ClassName) = 'EIDREPLYPOP3ERROR' then
          ShowMessage(pchar('ERROR: Cuenta/Password incorrecto'))
        else
          ShowMessage(pchar('ERROR: No se pudo conectar, error desconocido'));

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
    on E: EIdException do
    begin
      if UpperCase(E.ClassName) = 'EIDSOCKETERROR' then
        ShowMessage(pchar('ERROR: Servidor/Puerto desconocido o incorrecto'))
      else
        if UpperCase(E.ClassName) = 'EIDREPLYSMTPERROR' then
          ShowMessage(pchar('ERROR: Cuenta/Password incorrecto'))
        else
          ShowMessage(pchar('ERROR: No se pudo conectar, error desconocido'));

      //ShowMessage(E.ClassName+' '+e.Message);
      desconectarSMTP;
      exit;
    end
    else
    begin
      ShowMessage(pchar('ERROR: No se pudo conectar, error desconocido'));
      desconectarSMTP;
      exit;
    end;
  end;

  ShowMessage(pchar('Configuración SMTP Correcta'))
end;


procedure TFMailConfigurar.btnValidarPOP3Click(Sender: TObject);
begin
  MemoPOP3.Clear;

  with validarPOP3 do
  begin
    Host:= DBEditPOPServidor.Text;
    Port:= StrToInt(DBEditPOPPuerto.Text);
    Username:= DBEditPOPUsuario.Text;
    Password:= DBEditPOPPassword.Text;

    case POP3UseTLS.ItemIndex of
       0: UseTLS:= utNoTLSSupport;
       1: UseTLS:= utUseExplicitTLS;
       2: UseTLS:= utUseImplicitTLS;
       3: UseTLS:= utUseRequireTLS;
    end;    
  end;

  with dm.POP3_SSL do
  begin
    Host:= DBEditPOPServidor.Text;
    Port:= StrToInt(DBEditPOPPuerto.Text);
    Destination:= DBEditPOPServidor.Text+':'+DBEditPOPPuerto.Text;

    RecvBufferSize:= 65000;
    SendBufferSize:= 65000;
    SSLOptions.Method:= sslvSSLv3;
    SSLOptions.Mode:= sslmUnassigned;
    SSLOptions.VerifyDepth:= 0;
    SSLOptions.VerifyMode:= [];
    UseNagle:= False;
  end;

  conectarPOP3;
end;


procedure TFMailConfigurar.btnValidarSMTPClick(Sender: TObject);
begin
  MemoSMTP.Clear;

  with validarSMTP do
  begin
    Host:= DBEditSMTPServidor.Text;
    Port:= StrToInt(DBEditSMTPPuerto.Text);
    Username:= DBEditSMTPUsuario.Text;
    Password:= DBEditSMTPPassword.Text;
    case SMTPAuthType.ItemIndex of
       0: AuthType := satDefault;
       1: AuthType := satNone;
       2: AuthType := satSASL;
    end;

    case SMTPUseTLS.ItemIndex of
       0: UseTLS:= utNoTLSSupport;
       1: UseTLS:= utUseExplicitTLS;
       2: UseTLS:= utUseImplicitTLS;
       3: UseTLS:= utUseRequireTLS;
    end;

    PipeLine:=False;
    UseEhlo:=True;
  end;

  with dm.SMTP_SSL do
  begin
    Host:= DBEditSMTPServidor.Text;
    Port:= StrToInt(DBEditSMTPPuerto.Text);
    Destination:= DBEditSMTPServidor.Text+':'+DBEditSMTPPuerto.Text;

    RecvBufferSize:= 65000;
    SendBufferSize:= 65000;
    SSLOptions.Method:= sslvSSLv3;
    SSLOptions.Mode:= sslmUnassigned;
    SSLOptions.VerifyDepth:= 0;
    SSLOptions.VerifyMode:= [];
    UseNagle:= False;
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
    ComboBoxCuenta.Visible:= False;

    DBEditEmail.Enabled:= True;
    DBEditEmail.Visible:= True;

    DBEditEmail.SetFocus;

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
var
  recNo: integer;
begin
//  if Trim(DBEditEmail.Text) = '' then
//  begin
//    Application.MessageBox('Falta completar el campo "Cuenta".','Verificar', MB_OK + MB_ICONEXCLAMATION);
//    DBEditEmail.SetFocus;
//    exit;
//  end;
//
//  if EsEmailValido2(DBEditEmail.Text) then
//  begin
//    Application.MessageBox('La cuenta ingresada no conforma un mail valido','Verificar', MB_OK + MB_ICONEXCLAMATION);
//    DBEditEmail.SetFocus;
//    exit;
//  end;

  ZQ_Cuentas.Edit;
  case SMTPAuthType.ItemIndex of
     0: ZQ_CuentasSMTP_AUTENTICACION.AsString:= 'satDefault';
     1: ZQ_CuentasSMTP_AUTENTICACION.AsString:= 'satNone'; {Simple Login}
     2: ZQ_CuentasSMTP_AUTENTICACION.AsString:= 'satSASL'; {Simple Login}
  end;

  case SMTPUseTLS.ItemIndex of
     0: ZQ_CuentasSMTP_SSL.AsString:= 'utNoTLSSupport';
     1: ZQ_CuentasSMTP_SSL.AsString:= 'utUseExplicitTLS'; {Simple Login}
     2: ZQ_CuentasSMTP_SSL.AsString:= 'utUseImplicitTLS'; {Simple Login}
     3: ZQ_CuentasSMTP_SSL.AsString:= 'utUseRequireTLS'; {Simple Login}
  end;

  case POP3UseTLS.ItemIndex of
     0: ZQ_CuentasPOP3_SSL.AsString:= 'utNoTLSSupport';
     1: ZQ_CuentasPOP3_SSL.AsString:= 'utUseExplicitTLS'; {Simple Login}
     2: ZQ_CuentasPOP3_SSL.AsString:= 'utUseImplicitTLS'; {Simple Login}
     3: ZQ_CuentasPOP3_SSL.AsString:= 'utUseRequireTLS'; {Simple Login}
  end;

  recNo:= EKLlenarCombo.combo.ItemIndex;
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

      EKLlenarCombo.CargarCombo;
      EKLlenarCombo.SetItem(recNo);
      //ZQ_Cuentas.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end
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

    ZQ_Cuentas.RecNo:= recNo;
    dm.configMail('CUENTA', ZQ_CuentasID_CUENTA.AsInteger);
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
  if ZQ_CuentasSMTP_AUTENTICACION.AsString = 'satDefault' then
    SMTPAuthType.ItemIndex := 0
  else
    if ZQ_CuentasSMTP_AUTENTICACION.AsString = 'satNone' then
      SMTPAuthType.ItemIndex := 1
    else
      if ZQ_CuentasSMTP_AUTENTICACION.AsString = 'satSASL' then
        SMTPAuthType.ItemIndex := 2
      else
        SMTPAuthType.ItemIndex := -1;


  if ZQ_CuentasSMTP_SSL.AsString = 'utNoTLSSupport' then
    SMTPUseTLS.ItemIndex := 0
  else
    if ZQ_CuentasSMTP_SSL.AsString = 'utUseExplicitTLS' then
      SMTPUseTLS.ItemIndex := 1
    else
      if ZQ_CuentasSMTP_SSL.AsString = 'utUseImplicitTLS' then
        SMTPUseTLS.ItemIndex := 2
      else
        if ZQ_CuentasSMTP_SSL.AsString = 'utUseRequireTLS' then
          SMTPUseTLS.ItemIndex := 3
        else
          SMTPUseTLS.ItemIndex := -1;


  if ZQ_CuentasPOP3_SSL.AsString = 'utNoTLSSupport' then
    POP3UseTLS.ItemIndex := 0
  else
    if ZQ_CuentasPOP3_SSL.AsString = 'utUseExplicitTLS' then
      POP3UseTLS.ItemIndex := 1
    else
      if ZQ_CuentasPOP3_SSL.AsString = 'utUseImplicitTLS' then
        POP3UseTLS.ItemIndex := 2
      else
        if ZQ_CuentasPOP3_SSL.AsString = 'utUseRequireTLS' then
          POP3UseTLS.ItemIndex := 3
        else
          POP3UseTLS.ItemIndex := -1;
end;


procedure TFMailConfigurar.DBEditEmailExit(Sender: TObject);
var
  tamanio: integer;
begin
//  tamanio:= Length(DBEditEmail.Text);
//
//  if (trim(DBEditEmail.Text) <> '') and (DBEditEmail.Text[tamanio] <> ';') then
//    DBEditEmail.Text:= DBEditEmail.Text + ';';
end;

procedure TFMailConfigurar.validarSMTPStatus(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: String);
begin
  MemoSMTP.Lines.Insert(0,'Estado SMTP: ' + AStatusText);
end;

procedure TFMailConfigurar.manejadorSSLStatus(
  ASender: TObject; const AStatus: TIdStatus; const AStatusText: String);
begin
  MemoSMTP.Lines.Insert(0,'Estado SSL: ' + AStatusText);
end;

procedure TFMailConfigurar.validarPOP3Status(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: String);
begin
  MemoPOP3.Lines.Insert(0,'Estado POP3: ' + AStatusText);
end;

end.

