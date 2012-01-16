unit UConfiguracion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ShlObj, EKIni;

type
  TFConfiguracion = class(TForm)
    btnCargarIni: TButton;
    btnGuardarYSalir: TButton;
    btnCancelarYSalir: TButton;
    GroupBoxDirectorios: TGroupBox;
    Label4: TLabel;
    editDB_Name: TEdit;
    btnDestinoBases: TButton;
    GroupBoxHora: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    editHora: TEdit;
    UpDownHora: TUpDown;
    editMinutos: TEdit;
    UpDownMinuto: TUpDown;
    GroupBoxBases: TGroupBox;
    GroupBoxDias: TGroupBox;
    CheckBoxLunes: TCheckBox;
    CheckBoxJueves: TCheckBox;
    CheckBoxMiercoles: TCheckBox;
    CheckBoxViernes: TCheckBox;
    CheckBoxMartes: TCheckBox;
    GroupBoxDatosEquipo: TGroupBox;
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
    procedure btnCargarIniClick(Sender: TObject);
    procedure btnCancelarYSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGuardarYSalirClick(Sender: TObject);
    procedure cargarIni();
    procedure editHoraExit(Sender: TObject);
    procedure editMinutosExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfiguracion: TFConfiguracion;

implementation

uses IniFiles, UDM;

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
    ShowMessage('Verifique la configuración de los datos del Servidor FTP.');
    exit;
  end;

  if (editDB_Name.Text = '') or (editDB_Host.Text = '') or (editDB_User.Text = '')
      or (editDB_Pass.Text = '') then
  begin
    ShowMessage('Verifique la configuración de los datos de la Base de Datos.');
    exit;
  end;

  if (editFILE_Upload.Text = '') or (editFILE_Upload.Text = '') then
  begin
    ShowMessage('Verifique la configuración Archivos de Sincronización.');
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

end.
