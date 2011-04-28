unit UMailConfigurar;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, Buttons, ComCtrls, IdException;

type
   TFMailConfigurar = class(TForm)
    BitBtn1: TBitBtn;
    PageControlSetup: TPageControl;
    tabSheetPop3: TTabSheet;
    tabSheetSmtp: TTabSheet;
    Label1: TLabel;
    POPServer: TEdit;
    Label2: TLabel;
    POPPort: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lblAuthenticationType: TLabel;
    SMTPAuthType: TComboBox;
    lbAccount: TLabel;
    SMTPUsername: TEdit;
    lbPassword: TLabel;
    SMTPPassword: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    SMTPServer: TEdit;
    SMTPPort: TEdit;
    Email: TEdit;
    POPUsername: TEdit;
    POPPassword: TEdit;
    btnValidarSMTP: TButton;
    btnValidarPOP3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure conectarSMTP();
    procedure conectarPOP3();
    procedure desconectarPOP3();
    procedure desconectarSMTP();
    procedure btnValidarPOP3Click(Sender: TObject);
    procedure btnValidarSMTPClick(Sender: TObject);
    procedure mostrarOcupado(flag: boolean);
   private
    { Private declarations }
   public
     conectadoPOP3, conectadoSMTP: boolean;
   end;

var
   FMailConfigurar: TFMailConfigurar;

implementation

{$R *.DFM}

uses UDM, IdPOP3, IdSMTP, IdTCPClient;

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

  POPServer.Text := DM.IdPOP3.Host;
  POPPort.Text := IntToStr(DM.IdPOP3.Port);
  POPUsername.Text := DM.IdPOP3.Username;
  POPPassword.Text := DM.IdPOP3.Password;

  SMTPServer.Text := DM.IdSMTP.Host;
  SMTPPort.Text := IntToStr(DM.IdSMTP.Port);
  SMTPUsername.Text := DM.IdSMTP.Username;
  SMTPPassword.Text := DM.IdSMTP.Password;
  if DM.IdSMTP.AuthenticationType = atNone then
    SMTPAuthType.ItemIndex:= 0;
  if DM.IdSMTP.AuthenticationType = atLogin then
    SMTPAuthType.ItemIndex:= 1;

  Email.Text := 'mdservicios@ciudad.com.ar';
end;


procedure TFMailConfigurar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure TFMailConfigurar.desconectarSMTP();
begin
  if DM.IdSMTP.Connected then
  begin
    DM.IdSMTP.Disconnect;
    conectadoSMTP:= false;
  end;

  mostrarOcupado(false);
end;


procedure TFMailConfigurar.desconectarPOP3();
begin
  if DM.IdPOP3.Connected then
  begin
    DM.IdPOP3.Disconnect;
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
      DM.IdPOP3.Connect;
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
      DM.IdSMTP.Connect;
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
  DM.IdPOP3.Host:= POPServer.Text;
  DM.IdPOP3.Port:= StrToInt(POPPort.Text);
  DM.IdPOP3.Username:= POPUsername.Text;
  DM.IdPOP3.Password:= POPPassword.Text;

  conectarPOP3;
end;

procedure TFMailConfigurar.btnValidarSMTPClick(Sender: TObject);
begin
  DM.IdSMTP.Host:= SMTPServer.Text;
  DM.IdSMTP.Port:= StrToInt(SMTPPort.Text);
  DM.IdSMTP.Username:= SMTPUsername.Text;
  DM.IdSMTP.Password:= SMTPPassword.Text;
  case SMTPAuthType.ItemIndex of
     0: DM.IdSMTP.AuthenticationType := atNone;
     1: DM.IdSMTP.AuthenticationType := atLogin; {Simple Login}
  end;

  conectarSMTP;
end;

end.

