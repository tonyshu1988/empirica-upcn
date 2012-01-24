unit UConfiguracion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ShlObj, EKIni, ExtCtrls, Buttons, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFConfiguracion = class(TForm)
    btnCargarIni: TButton;
    btnGuardarYSalir: TButton;
    btnCancelarYSalir: TButton;
    GroupBoxBD: TGroupBox;
    Label4: TLabel;
    editDB_Name: TEdit;
    GroupBoxIntervalo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    editHora: TEdit;
    UpDownHora: TUpDown;
    editMinutos: TEdit;
    UpDownMinuto: TUpDown;
    GroupBoxArchivos: TGroupBox;
    GroupBoxDias: TGroupBox;
    CheckBoxLunes: TCheckBox;
    CheckBoxJueves: TCheckBox;
    CheckBoxMiercoles: TCheckBox;
    CheckBoxViernes: TCheckBox;
    CheckBoxMartes: TCheckBox;
    GroupBoxFTP: TGroupBox;
    memoConfiguracion: TMemo;
    Label7: TLabel;
    editFTP_Host: TEdit;
    Label8: TLabel;
    editFTP_User: TEdit;
    editFTP_Pass: TEdit;
    Label9: TLabel;
    Label5: TLabel;
    editFTP_DirServer: TEdit;
    Label6: TLabel;
    editFTP_DirPublic: TEdit;
    Label3: TLabel;
    editDB_Host: TEdit;
    Label10: TLabel;
    editDB_User: TEdit;
    Label11: TLabel;
    editDB_Pass: TEdit;
    EKInicio: TEKIni;
    CheckBoxSabado: TCheckBox;
    Label12: TLabel;
    editFILE_Upload: TEdit;
    Label13: TLabel;
    editFILE_Download: TEdit;
    RadioGroupModo: TRadioGroup;
    btnDestinoBases: TSpeedButton;
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    GroupBoxConfigPassword: TGroupBox;
    editConfig_Pass: TEdit;
    ZQ_VerificarBase: TZQuery;
    ZQ_VerificarBaseID_COMPROBANTE: TIntegerField;
    procedure btnCargarIniClick(Sender: TObject);
    procedure btnCancelarYSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGuardarYSalirClick(Sender: TObject);
    procedure cargarIni();
    procedure editHoraExit(Sender: TObject);
    procedure editMinutosExit(Sender: TObject);
    procedure btnDestinoBasesClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    function verificarConexionDB(): boolean;
    function verificarBaseCliente(): boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfiguracion: TFConfiguracion;

implementation

uses IniFiles, UDM, UPrincipal;

{$R *.dfm}

//Funcion para buscar un directorio
function BuscarDirectorioDialog(const subtitle: string; const newStyle: boolean) : string;
var
  BI: TBrowseInfo;
  IL: PItemIDList;
begin
  Result := '';
  with BI do begin
    lpfn:= nil;
    lParam:= 0;
    iImage:= 0;
    pidlRoot:= nil;
    hwndOwner:= GetActiveWindow;
    lpszTitle:= PChar(subtitle);
    GetMem(pszDisplayName, MAX_PATH);
    ulFlags := BIF_RETURNONLYFSDIRS;
    if newStyle then
      ulFlags := BIF_NEWDIALOGSTYLE;
  end;
  IL := SHBrowseForFolder(BI);
  if SHGetPathFromIDList(IL, BI.pszDisplayName)
    then Result := StrPas(BI.pszDisplayName);
  FreeMem(BI.pszDisplayName);
  GlobalFreePtr(IL);
end;


procedure TFConfiguracion.btnCargarIniClick(Sender: TObject);
begin
  memoConfiguracion.Lines.LoadFromFile(pchar(EKInicio.Path+EKInicio.Archivo));
  cargarIni;
end;


procedure TFConfiguracion.btnCancelarYSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFConfiguracion.FormShow(Sender: TObject);
begin
  memoConfiguracion.Lines.LoadFromFile(pchar(EKInicio.Path+EKInicio.Archivo));
  cargarIni;
end;


procedure TFConfiguracion.btnGuardarYSalirClick(Sender: TObject);
begin
  if (editFTP_Host.Text = '') or (editFTP_User.Text = '') or (editFTP_Pass.Text = '')
      or (editFTP_DirServer.Text = '') or (editFTP_DirPublic.Text = '') then
  begin
    ShowMessage('Verifique la configuración del Servidor FTP.');
    exit;
  end;

  if (editDB_Name.Text = '') or (editDB_Host.Text = '') or (editDB_User.Text = '')
      or (editDB_Pass.Text = '') then
  begin
    ShowMessage('Verifique la configuración de la Base de Datos.');
    exit;
  end;

  if not verificarConexionDB then
  begin
    ShowMessage('Erro de conexión a la base de datos, Verifique la configuración de la  misma.');
    exit;
  end;

  if verificarBaseCliente then //si es la base cliente pregunto si esta en modo servidor
  begin
    if (RadioGroupModo.ItemIndex = 1) then
    begin
      ShowMessage('El modo seleccionado no corresponde para la base de datos configurada.');
      exit;
    end;
  end
  else //si es la base servidor pregunto si esta en modo cliente
    if (RadioGroupModo.ItemIndex = 0) then
    begin
      ShowMessage('El modo seleccionado no corresponde para la base de datos configurada.');
      exit;
    end;


  if (editFILE_Upload.Text = '') or (editFILE_Upload.Text = '') then
  begin
    ShowMessage('Verifique la configuración de los Archivos de Sincronización.');
    exit;
  end;

  if (StrToInt(editHora.Text) < 0) or (StrToInt(editHora.Text) > 23) then
  begin
    ShowMessage('La Hora establecida es incorrecta. Verifique');
    editHora.SetFocus;
    exit;
  end;

  if (StrToInt(editMinutos.Text) < 0) or (StrToInt(editMinutos.Text) > 59) then
  begin
    ShowMessage('Los Minutos establecidos son incorrecto. Verifique');
    editMinutos.SetFocus;
    exit;
  end;

  EKInicio.abrir;

  //Guardo el modo de funcionamiento del sistema CLIENTE o SERVIDOR
  if RadioGroupModo.ItemIndex = 0 then
    EKInicio.Ini.WriteString('SINCRONIZADOR', 'MODO', modo_cliente)
  else
    EKInicio.Ini.WriteString('SINCRONIZADOR', 'MODO', modo_servidor);

  //Guardo la clave de ingreso a la pantalla de configuracion
  EKInicio.Ini.WriteString('SINCRONIZADOR', 'CONFIG_PASS', EKInicio.Encripta(editConfig_Pass.Text));

  //Guardo los datos de la base de datos
  EKInicio.Ini.WriteString('BASE', 'DB_HOST', editDB_Host.Text);
  EKInicio.Ini.WriteString('BASE', 'DB_NAME', editDB_Name.Text);
  EKInicio.Ini.WriteString('BASE', 'DB_USER', EKInicio.Encripta(editDB_User.Text));
  EKInicio.Ini.WriteString('BASE', 'DB_PASS', EKInicio.Encripta(editDB_Pass.Text));

  //Guardo los datos del servidor ftp
  EKInicio.Ini.WriteString('FTP', 'FTP_HOST', editFTP_Host.Text);
  EKInicio.Ini.WriteString('FTP', 'FTP_USER', EKInicio.Encripta(editFTP_User.Text));
  EKInicio.Ini.WriteString('FTP', 'FTP_PASS', EKInicio.Encripta(editFTP_Pass.Text));
  EKInicio.Ini.WriteString('FTP', 'FTP_DIR_SERVER', editFTP_DirServer.Text);
  EKInicio.Ini.WriteString('FTP', 'FTP_DIR_PUBLIC', editFTP_DirPublic.Text);

  //Guardo los datos de los archivos de sincronizacion
  EKInicio.Ini.WriteString('FILE', 'FILE_UPLOAD', editFILE_Upload.Text);
  EKInicio.Ini.WriteString('FILE', 'FILE_DOWNLOAD', editFILE_Download.Text);

  //Guardo los dias en los que se hara el backup
  if CheckBoxLunes.Checked then
    EKInicio.Ini.WriteString('CRONOGRAMA', 'LUNES', IntToStr(LUNES))
  else
    EKInicio.Ini.DeleteKey('CRONOGRAMA', 'LUNES');

  if CheckBoxMartes.Checked then
    EKInicio.Ini.WriteString('CRONOGRAMA', 'MARTES', IntToStr(MARTES))
  else
    EKInicio.Ini.DeleteKey('CRONOGRAMA', 'MARTES');

  if CheckBoxMiercoles.Checked then
    EKInicio.Ini.WriteString('CRONOGRAMA', 'MIERCOLES', IntToStr(MIERCOLES))
  else
    EKInicio.Ini.DeleteKey('CRONOGRAMA', 'MIERCOLES');

  if CheckBoxJueves.Checked then
    EKInicio.Ini.WriteString('CRONOGRAMA', 'JUEVES', IntToStr(JUEVES))
  else
    EKInicio.Ini.DeleteKey('CRONOGRAMA', 'JUEVES');

  if CheckBoxViernes.Checked then
    EKInicio.Ini.WriteString('CRONOGRAMA', 'VIERNES', IntToStr(VIERNES))
  else
    EKInicio.Ini.DeleteKey('CRONOGRAMA', 'VIERNES');

  if CheckBoxSabado.Checked then
    EKInicio.Ini.WriteString('CRONOGRAMA', 'SABADO', IntToStr(SABADO))
  else
    EKInicio.Ini.DeleteKey('CRONOGRAMA', 'SABADO');

//    if CheckBoxDomingo.Checked then
//      EKInicio.Ini.WriteString('CRONOGRAMA', 'DOMINGO', IntToStr(DOMINGO))
//    else
//      EKInicio.Ini.DeleteKey('CRONOGRAMA', 'DOMINGO');

  //Guardo la hora y los minutos del intervalo de sincronizacion
  EKInicio.Ini.WriteInteger('CRONOGRAMA', 'HORA', StrToInt(editHora.Text));
  EKInicio.Ini.WriteInteger('CRONOGRAMA', 'MINUTOS', StrToInt(editMinutos.Text));

  EKInicio.cerrar;
  Close;
end;


procedure TFConfiguracion.cargarIni();
begin
  EKInicio.abrir;

  CheckBoxLunes.Checked:= EKInicio.Ini.ValueExists('CRONOGRAMA', 'LUNES');
  CheckBoxMartes.Checked:= EKInicio.Ini.ValueExists('CRONOGRAMA', 'MARTES');
  CheckBoxMiercoles.Checked:= EKInicio.Ini.ValueExists('CRONOGRAMA', 'MIERCOLES');
  CheckBoxJueves.Checked:= EKInicio.Ini.ValueExists('CRONOGRAMA', 'JUEVES');
  CheckBoxViernes.Checked:= EKInicio.Ini.ValueExists('CRONOGRAMA', 'VIERNES');
  CheckBoxSabado.Checked:= EKInicio.Ini.ValueExists('CRONOGRAMA', 'SABADO');
//  CheckBoxDomingo.Checked:= EKInicio.Ini.ValueExists('CRONOGRAMA', 'DOMINGO');

  editHora.Text:= IntToStr(EKInicio.Ini.ReadInteger('CRONOGRAMA', 'HORA', 0));
  editMinutos.Text:= IntToStr(EKInicio.Ini.ReadInteger('CRONOGRAMA', 'MINUTOS', 0));

  //si el esta modo cliente, o todavia no se guardo el modo, lo cargo como cliente
  if EKInicio.Ini.ReadString('SINCRONIZADOR', 'MODO', 'CLIENTE') = modo_cliente then
    RadioGroupModo.ItemIndex:= 0  //CLIENTE
  else
    RadioGroupModo.ItemIndex:= 1; //SERVIDOR

  editConfig_Pass.Text:= EKInicio.Desencripta(EKInicio.Ini.ReadString('SINCRONIZADOR', 'CONFIG_PASS', ''));

  editDB_Host.Text:= EKInicio.Ini.ReadString('BASE', 'DB_HOST', '');
  editDB_Name.Text:= EKInicio.Ini.ReadString('BASE', 'DB_NAME', '');
  editDB_User.Text:= EKInicio.Desencripta(EKInicio.Ini.ReadString('BASE', 'DB_USER', ''));
  editDB_Pass.Text:= EKInicio.Desencripta(EKInicio.Ini.ReadString('BASE', 'DB_PASS', ''));

  editFTP_Host.Text:= EKInicio.Ini.ReadString('FTP', 'FTP_HOST','');
  editFTP_User.Text:= EKInicio.Desencripta(EKInicio.Ini.ReadString('FTP', 'FTP_USER', ''));
  editFTP_Pass.Text:= EKInicio.Desencripta(EKInicio.Ini.ReadString('FTP', 'FTP_PASS', ''));
  editFTP_DirServer.Text:= EKInicio.Ini.ReadString('FTP', 'FTP_DIR_SERVER', '');
  editFTP_DirPublic.Text:= EKInicio.Ini.ReadString('FTP', 'FTP_DIR_PUBLIC', '');

  editFILE_Upload.Text:= EKInicio.Ini.ReadString('FILE', 'FILE_UPLOAD', 'sucursal_');
  editFILE_Download.Text:= EKInicio.Ini.ReadString('FILE', 'FILE_DOWNLOAD', 'server_');

  EKInicio.cerrar;
end;


procedure TFConfiguracion.editHoraExit(Sender: TObject);
begin
  if (StrToInt(editHora.Text) < 0) or (StrToInt(editHora.Text) > 23) then
    editHora.SetFocus;
end;


procedure TFConfiguracion.editMinutosExit(Sender: TObject);
begin
  if (StrToInt(editMinutos.Text) < 0) or (StrToInt(editMinutos.Text) > 59) then
    editMinutos.SetFocus;
end;


procedure TFConfiguracion.btnDestinoBasesClick(Sender: TObject);
var
  cp: string;
begin
  cp:= GetCurrentDir;
  OpenDialog.InitialDir:= cp;
  OpenDialog.Filter := 'Base de Datos Firebird (*.FDB)|*.fdb|All Files (*.*)|*.*';

  if (ExtractFilePath(editDB_Name.Text)) <> '' then
    OpenDialog.InitialDir:= (ExtractFilePath(editDB_Name.text));

  if OpenDialog.Execute then
    editDB_Name.Text:= OpenDialog.FileName;
end;


procedure TFConfiguracion.Panel1Click(Sender: TObject);
begin
  if editConfig_Pass.PasswordChar = '*' then
    editConfig_Pass.PasswordChar:= char(0)
  else
    editConfig_Pass.PasswordChar:= '*';

  if editFTP_Pass.PasswordChar = '*' then
    editFTP_Pass.PasswordChar:= char(0)
  else
    editFTP_Pass.PasswordChar:= '*';

  if editDB_Pass.PasswordChar = '*' then
    editDB_Pass.PasswordChar:= char(0)
  else
    editDB_Pass.PasswordChar:= '*';
end;


function TFConfiguracion.verificarConexionDB: boolean;
begin
  result:= true;
  try
   begin
      //configuro base
      DM.ConexionLectura.HostName:= editDB_Host.Text;
      DM.ConexionLectura.Database:= editDB_Name.Text;
      DM.ConexionLectura.User:= editDB_User.Text;
      DM.ConexionLectura.Password:= editDB_Pass.Text;

      DM.ConexionLectura.Disconnect;
      DM.ConexionLectura.Connect;
      DM.ConexionLectura.Disconnect;      
   end
  except
    on E: Exception do
    begin
      result:= false;
      DM.ConexionLectura.Disconnect;
    end;
  end;
end;


function TFConfiguracion.verificarBaseCliente: boolean;
begin
  result:= true;
  try
   begin
      DM.ConexionLectura.Disconnect;
      DM.ConexionLectura.Connect;

      ZQ_VerificarBase.Open;
      ZQ_VerificarBase.close;
   end
  except
    on E: Exception do
    begin
      result:= false;
      DM.ConexionLectura.Disconnect;
    end;
  end;
end;

end.
