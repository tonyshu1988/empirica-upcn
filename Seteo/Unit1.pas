unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IBServices, ZConnection, ComCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ISIni;

type
  TFSeteo = class(TForm)
    IBSecurityService: TIBSecurityService;
    conexion: TZConnection;
    update_aplica: TZQuery;
    ISIni1: TISIni;
    Label1: TLabel;
    procedure crearLogin();
    procedure leerDatos();
    procedure setearAplicaBD();
    procedure FormCreate(Sender: TObject);
  private
    servidor,
    usuario,
    pass,
    db_usuario,
    aplicacion,
    db_aplicacion: String;
  public
    { Public declarations }
  end;

var
  FSeteo: TFSeteo;

implementation

uses IniFiles;

{$R *.dfm}

procedure Delay(dwMilliseconds: DWORD); {Similar al Windows.Sleep}
var
  ATickCount: DWORD;
begin
  ATickCount := GetTickCount + dwMilliseconds;
  while ATickCount > GetTickCount do
    Application.ProcessMessages;
end;


procedure TFSeteo.crearLogin();
begin
  with IBSecurityService do
  begin
    ServerName := servidor;
    LoginPrompt := False;
    Params.Add('user_name='+usuario);
    Params.Add('password='+pass);
    Active := True;
    try
      UserName := 'login';
      FirstName := 'Usuario de logeo';

      Password := '354875642';
      AddUser;
    except
    begin
      Active := False;
      ShowMessage('LOGIN REPETIDO');
      exit;
    end
    end;
    Active := False;
    ShowMessage('LOGIN CREADO');
  end;
end;


procedure TFSeteo.leerDatos();
var
  seccion: string;
begin
  ISIni1.abrir;
  seccion:= ISIni1.Ini.ReadString('leer', 'seccion', 'Servidor');

  servidor:= ISIni1.Ini.ReadString(seccion, 'ip', '');
  usuario:= ISIni1.Ini.ReadString(seccion, 'usuario', '');
  pass:= ISIni1.Ini.ReadString(seccion, 'password', '');

  db_usuario:= ISIni1.Ini.ReadString(seccion, 'db_usuarios', '');
  db_aplicacion:= ISIni1.Ini.ReadString(seccion, 'db_aplicacion', '');
  aplicacion:= ISIni1.Ini.ReadString(seccion, 'aplicacion', '');
end;


procedure TFSeteo.setearAplicaBD();
begin
  conexion.Database:= db_usuario;
  conexion.HostName:= servidor;
  conexion.Password:= pass;
  conexion.User:= usuario;

  update_aplica.Close;
  update_aplica.ParamByName('base').AsString:= db_usuario;
  update_aplica.ParamByName('ip').AsString:= servidor;
  update_aplica.ParamByName('aplicacion').AsString:= 'USUARIOS';
  update_aplica.ExecSQL;

  update_aplica.Close;
  update_aplica.ParamByName('base').AsString:= db_aplicacion;
  update_aplica.ParamByName('ip').AsString:= servidor;
  update_aplica.ParamByName('aplicacion').AsString:= aplicacion;
  update_aplica.ExecSQL;
end;


procedure TFSeteo.FormCreate(Sender: TObject);
begin
  leerDatos;
  crearLogin;
  setearAplicaBD;
  Application.Terminate;
end;

end.
