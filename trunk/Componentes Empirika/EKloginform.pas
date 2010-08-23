unit EKloginform;

interface

uses
  Windows,  Forms, Dialogs, EKUsrLogin, ZAbstractRODataset, ZDataset,
  jpeg, Controls, StdCtrls, DB, ExtCtrls, ComCtrls, Classes;

type
  TEKPermisos = record
    usuario : string;
    accion : string;
    caption : string;
    valor : string;
  end;


type
  TEKLoginForm = class(TForm)
    usuario: TEdit;
    password: TEdit;
    sButton1: TButton;
    btingresar: TButton;
    EKSQLPermisos: TZReadOnlyQuery;
    EKSQLPermisosUSUARIO: TStringField;
    EKSQLPermisosCLAVE_AP: TIntegerField;
    EKSQLPermisosAPLICACION: TStringField;
    EKSQLPermisosACCION: TStringField;
    EKSQLPermisosCAPTION: TStringField;
    EKSQLPermisosVALOR: TStringField;
    EKSQLUsuarios: TZReadOnlyQuery;
    Image1: TImage;
    StatusBar1: TStatusBar;
    EKSQLAplicacion: TZReadOnlyQuery;
    procedure sButton1Click(Sender: TObject);
    procedure btingresarClick(Sender: TObject);
    procedure passwordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    FEKUsrLogin : TEKUsrLogin;   
    destructor destroy; override;
  end;

var EKLoginForm1 : TEKLoginForm;
    EKPermisos1 : array of TEKPermisos;


implementation

{$R *.dfm}


procedure TEKLoginForm.sButton1Click(Sender: TObject);
begin
   application.Terminate;
end;

procedure TEKLoginForm.btingresarClick(Sender: TObject);
begin
  if not Assigned(EKUsrLogin1) then
  begin
    showmessage('TEKUsrLogin: Error, Primero debe crear un EKUsrLogin');
    exit;
  end;

  EKSQLpermisos.Close;

  if EKUsrLogin1.conectar then
  begin
    ModalResult := mrOk;
    if Assigned(EKUsrLogin1.OnConectar) then
      EKUsrLogin1.OnConectar(EKLoginForm1.StatusBar1);


    if Assigned(EKUsrLogin1.OnLogin) then
    begin
      // Dispara Timer para ejecutar OnLogin 
      EKUsrLogin1.Timer.Enabled := true;
      EKLoginForm1.release;
      EKLoginForm1 := nil;
    end;
  end;


end;

destructor TEKLoginForm.destroy;
begin
  EKLoginForm1 := nil;
  inherited;
end;

procedure TEKLoginForm.passwordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    btingresar.Click;
end;

end.
