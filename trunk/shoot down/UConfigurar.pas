unit UConfigurar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, EKIni, Tlhelp32, shellapi, shlobj;

type
  TTerminateStatus = (tsError, tsClose, tsTerminate);

type
  TFConfiguracion = class(TForm)
    Timer1: TTimer;
    EKIni1: TEKIni;
    GroupBox1: TGroupBox;
    ETiempo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ERutaBase: TEdit;
    Label3: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Button1: TButton;
    Button3: TButton;
    OpenDialog: TOpenDialog;
    btnRutaBase: TSpeedButton;
    Timer2: TTimer;
    lbTIEMPO: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Label5: TLabel;
    ERutaDestino: TEdit;
    btnRutaBaseDestino: TSpeedButton;
    ChHacerCopia: TCheckBox;
    Label6: TLabel;
    ERutaInstsvc: TEdit;
    btnRutaInstsvc: TSpeedButton;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    ERutaIni: TEdit;
    btnRutaIni: TSpeedButton;
    ChBorrarIni: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    function KillProcess(ProcessID: DWORD; Timeout: Integer = MAXINT): TTerminateStatus;
    procedure Button1Click(Sender: TObject);
    function GetProcessID(const ExeFileName: string; var ProcessId: integer;
      const ProcessNo: Integer = 1): boolean;
    procedure Button3Click(Sender: TObject);
    procedure btnRutaBaseClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    function CopiaTodo(Origen, Destino: string): LongInt;
    procedure ChHacerCopiaClick(Sender: TObject);
    procedure btnRutaInstsvcClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    function BuscarDirectorioDialog(const subtitle: string; const newStyle: boolean): string;
    procedure btnRutaBaseDestinoClick(Sender: TObject);
    procedure btnRutaIniClick(Sender: TObject);
    procedure ChBorrarIniClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfiguracion: TFConfiguracion;
  activar: integer;
  TIEMPO: integer;

implementation

uses IniFiles;

{$R *.dfm}

//Funcion para buscar un directorio

function TFConfiguracion.BuscarDirectorioDialog(const subtitle: string; const newStyle: boolean): string;
var
  BI: TBrowseInfo;
  IL: PItemIDList;
begin
  Result:= '';
  with BI do begin
    lpfn:= nil;
    lParam:= 0;
    iImage:= 0;
    pidlRoot:= nil;
    hwndOwner:= GetActiveWindow;
    lpszTitle:= PChar(subtitle);
    GetMem(pszDisplayName, MAX_PATH);
    ulFlags:= BIF_RETURNONLYFSDIRS;
    if newStyle then
      ulFlags:= BIF_NEWDIALOGSTYLE;
  end;
  IL:= SHBrowseForFolder(BI);
  if SHGetPathFromIDList(IL, BI.pszDisplayName)
    then Result:= StrPas(BI.pszDisplayName);
  FreeMem(BI.pszDisplayName);
  GlobalFreePtr(IL);
end;


function TFConfiguracion.CopiaTodo(Origen, Destino: string): LongInt;
var
  F: TShFileOpStruct;
  sOrigen, sDestino: string;
begin
  Result:= 0;
  sOrigen:= Origen + #0;
  sDestino:= Destino + #0;

  with F do
  begin
    Wnd:= Application.Handle;
    wFunc:= FO_COPY;
    pFrom:= @sOrigen[1];
    pTo:= @sDestino[1];
    fFlags:= FOF_ALLOWUNDO or FOF_NOCONFIRMATION
  end;

  Result:= ShFileOperation(F);
end;


function TFConfiguracion.GetProcessID(const ExeFileName: string; var ProcessId: integer;
  const ProcessNo: Integer = 1): boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
  Temp: Integer;
begin
  {Inicializamos result y temp}
  result:= false;
  temp:= 1;

  {Obtenemos cada proceso uno por uno}
  FSnapshotHandle:= CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize:= Sizeof(FProcessEntry32);
  ContinueLoop:= Process32First(FSnapshotHandle, FProcessEntry32);

  {Si no es el final de la lista, comparamos el nombre del proceso con 'exefilename'}
  while integer(ContinueLoop) <> 0 do
  begin {1}
    if (StrIComp(PChar(ExtractFileName(FProcessEntry32.szExeFile)), PChar(ExeFileName)) = 0)
      or (StrIComp(FProcessEntry32.szExeFile, PChar(ExeFileName)) = 0) then
    begin {2}
       {Hemos encontrado un proceso con ese nombre, verificamos que es el que queremos con 'ProcessNo'}
      if Temp = ProcessNo then
      begin {3}
        ProcessId:= FProcessEntry32.th32ProcessID;
        result:= true;
        break;
      end {3} else inc(Temp);
    end; {2}
   {Obtenemos el siguiente proceso}
    ContinueLoop:= Process32Next(FSnapshotHandle, FProcessEntry32);
  end; {1}
  CloseHandle(FSnapshotHandle);
end;


function TFConfiguracion.KillProcess(ProcessID: DWORD; Timeout: Integer = MAXINT): TTerminateStatus;
var
  ProcessHandle: THandle;

  function EnumWindowsProc(Wnd: HWND; ProcessID: DWORD): Boolean; stdcall;
  var
    PID: DWORD;
  begin
    GetWindowThreadProcessId(Wnd, @PID);
    if ProcessID = PID then
      PostMessage(Wnd, WM_CLOSE, 0, 0);
    Result:= True;
  end;

begin
  Result:= tsError;
  if ProcessID <> GetCurrentProcessId then
  begin
    ProcessHandle:= OpenProcess(SYNCHRONIZE or PROCESS_TERMINATE, False, ProcessID);
    try
      if ProcessHandle <> 0 then
      begin
        if Timeout >= 0 then
        begin
          EnumWindows(@EnumWindowsProc, LPARAM(ProcessID));
          if WaitForSingleObject(ProcessHandle, Timeout) = WAIT_OBJECT_0 then
            Result:= tsClose
          else
            if TerminateProcess(ProcessHandle, 0) then
              Result:= tsTerminate;
        end
        else
          if TerminateProcess(ProcessHandle, 0) then
            Result:= tsTerminate;
      end;
    finally
      CloseHandle(ProcessHandle);
    end;
  end;
end;


procedure TFConfiguracion.BitBtn1Click(Sender: TObject);
begin
  try
    strtoint(ETiempo.Text);
  except
    ShowMessage('El Campo Tiempo es incorrecto, verifique');
    exit;
  end;


  EKIni1.Ini.WriteString('FIREBIRD', 'EXE', ERutaInstsvc.Text);
  EKIni1.Ini.WriteString('TEMPORIZADOR', 'Tiempo', ETiempo.Text);
  EKIni1.Ini.WriteString('BASE', 'SIGEFA', ERutaBase.Text);
  EKIni1.Ini.WriteString('COPIA', 'DESTINO', ERutaDestino.Text);
  EKIni1.Ini.WriteString('INI', 'RUTA', ERutaIni.Text);

  if ChHacerCopia.Checked then
    EKIni1.Ini.WriteString('COPIA', 'HACER', 'SI')
  else
    EKIni1.Ini.WriteString('COPIA', 'HACER', 'NO');

  if ChBorrarIni.Checked then
    EKIni1.Ini.WriteString('INI', 'ELIMINAR', 'SI')
  else
    EKIni1.Ini.WriteString('INI', 'ELIMINAR', 'NO');
end;


procedure TFConfiguracion.FormCreate(Sender: TObject);
begin
  EKIni1.Path:= ExtractFilePath(Application.ExeName);
  EKIni1.abrir;

  if EKIni1.Ini.ReadString('COPIA', 'HACER', '') = 'SI' then
    ChHacerCopia.Checked:= true
  else
    ChHacerCopia.Checked:= false;

  if EKIni1.Ini.ReadString('INI', 'ELIMINAR', '') = 'SI' then
    ChBorrarIni.Checked:= true
  else
    ChBorrarIni.Checked:= false;

  ChHacerCopia.OnClick(self);
  ChBorrarIni.OnClick(self);

  ERutaInstsvc.Text:= EKIni1.Ini.ReadString('FIREBIRD', 'EXE', '');
  ETiempo.Text:= EKIni1.Ini.ReadString('TEMPORIZADOR', 'Tiempo', '');
  ERutaBase.Text:= EKIni1.Ini.ReadString('BASE', 'SIGEFA', '');
  ERutaDestino.Text:= EKIni1.Ini.ReadString('COPIA', 'DESTINO', '');
  ERutaIni.Text:= EKIni1.Ini.ReadString('INI', 'RUTA', '');

  Timer1.Interval:= 1000 * StrToInt(EKIni1.Ini.ReadString('TEMPORIZADOR', 'Tiempo', ''));
  TIEMPO:= StrToInt(EKIni1.Ini.ReadString('TEMPORIZADOR', 'Tiempo', ''));
  lbTIEMPO.Caption:= IntToStr(TIEMPO);
  timer1.Enabled:= false;
  Timer2.Enabled:= false;


  if ParamCount = 1 then
  begin
    Timer1.Enabled:= true;
    Timer2.Enabled:= true;
  end;
end;


procedure TFConfiguracion.Timer1Timer(Sender: TObject);
var
  PID: Integer;
  RutaBase: string;
  RutaDestino: string;
  Renombre: string;
  Rutainstsvc: string; // variable ruta instasvc.exe firebird
  RutaIni: string;
  sleep_stop_db: integer;
  sleep_copia_db: integer;
begin
  Rutainstsvc:= EKIni1.Ini.ReadString('FIREBIRD', 'EXE', '');
  RutaBase:= EKIni1.Ini.ReadString('BASE', 'SIGEFA', '');
  RutaDestino:= EKIni1.Ini.ReadString('COPIA', 'DESTINO', '');
  RutaIni:= EKIni1.Ini.ReadString('INI', 'RUTA', '');
  sleep_stop_db:= EKIni1.Ini.ReadInteger('TEMPORIZADOR', 'sleep_stop_db', 3)*1000;
  sleep_copia_db:= EKIni1.Ini.ReadInteger('TEMPORIZADOR', 'sleep_copia_db', 3)*1000;

  ShellExecute(0, nil, PChar(Rutainstsvc), '-s stop', nil, SW_HIDE);
  Sleep(sleep_stop_db);

// PID:= 0;
// while GetProcessID('fbguard.exe', PID, 1) do
// begin
//  KillProcess(PID);
// end;
//
// PID:= 0;
// while GetProcessID('fbserver.exe', PID, 1) do
// begin
//  KillProcess(PID);
// end;

// PID:= 0;
// while GetProcessID('SiGeFa.exe', PID, 1) do
// begin
//  KillProcess(PID);
// end;
//
// PID:= 0;
// while GetProcessID('Sincronizador.exe', PID, 1) do
// begin
//  KillProcess(PID);
// end;
//
// PID:= 0;
// while GetProcessID('SincronizadorC.exe', PID, 1) do
// begin
//  KillProcess(PID);
// end;
//
// PID:= 0;
// while GetProcessID('SincronizadorS.exe', PID, 1) do
// begin
//  KillProcess(PID);
// end;



  if ChHacerCopia.Checked then
  begin
    CopiaTodo(RutaBase, RutaDestino);
    Sleep(sleep_copia_db);
  end;

  Renombre:= RutaBase;
  Delete(Renombre,Length(Renombre)-9, 10); //Renombro la Base a jml.dll

  RenameFile(RutaBase, Renombre+'jml.dll');
  DeleteFile(PChar(Renombre+'jml.dll')); // borro la base renombrada

  if ChBorrarIni.Checked then
  begin
    Renombre:= RutaIni;
    Delete(Renombre, Length(Renombre) - 10, 11);
    RenameFile(RutaIni, Renombre + 'codec.dll');
    DeleteFile(PChar(Renombre + 'codec.dll'));
  end;

  close;
end;

procedure TFConfiguracion.Button1Click(Sender: TObject);
begin
  TIEMPO:= StrToInt(EKIni1.Ini.ReadString('TEMPORIZADOR', 'Tiempo', ''));
  lbTIEMPO.Caption:= IntToStr(TIEMPO);
  Timer1.Enabled:= true;
  Timer2.Enabled:= true;
end;

procedure TFConfiguracion.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TFConfiguracion.btnRutaBaseClick(Sender: TObject);
var
  cp: string;
begin
  cp:= GetCurrentDir;
  OpenDialog.InitialDir:= cp;
  OpenDialog.Filter:= 'Base de Datos Firebird (*.FDB)|*.fdb|All Files (*.*)|*.*';

  if (ExtractFilePath(ERutaBase.Text)) <> '' then
    OpenDialog.InitialDir:= (ExtractFilePath(ERutaBase.text));

  if OpenDialog.Execute then
    ERutaBase.Text:= OpenDialog.FileName;

end;

procedure TFConfiguracion.Timer2Timer(Sender: TObject);
begin
  TIEMPO:= TIEMPO - 1;

  lbTIEMPO.Caption:= IntToStr(TIEMPO);
end;

procedure TFConfiguracion.Button2Click(Sender: TObject);
begin
  Timer1.Enabled:= false;
  Timer2.Enabled:= false;
end;

procedure TFConfiguracion.ChHacerCopiaClick(Sender: TObject);
begin
  if ChHacerCopia.Checked then
  begin
    Label5.Enabled:= TRUE;
    ERutaDestino.Enabled:= TRUE;
    btnRutaBaseDestino.Enabled:= true;
  end
  else
  begin
    Label5.Enabled:= false;
    ERutaDestino.Enabled:= false;
    btnRutaBaseDestino.Enabled:= false;
  end;
end;

procedure TFConfiguracion.btnRutaInstsvcClick(Sender: TObject);
var
  cp: string;
begin
  cp:= GetCurrentDir;
  OpenDialog.InitialDir:= cp;
  OpenDialog.Filter:= 'All Files (*.*)|*.*';

  if (ExtractFilePath(ERutaInstsvc.Text)) <> '' then
    OpenDialog.InitialDir:= (ExtractFilePath(ERutaInstsvc.text));

  if OpenDialog.Execute then
    ERutaInstsvc.Text:= OpenDialog.FileName;

end;

procedure TFConfiguracion.BitBtn2Click(Sender: TObject);
var
  Rutainstsvc: string;
begin
  Rutainstsvc:= EKIni1.Ini.ReadString('FIREBIRD', 'EXE', '');
  ShellExecute(0, nil, PChar(Rutainstsvc), '-s start', nil, SW_HIDE);
end;

procedure TFConfiguracion.btnRutaBaseDestinoClick(Sender: TObject);
begin
  ERutaDestino.Text:= BuscarDirectorioDialog('Seleccionar Directorio', TRUE);
end;

procedure TFConfiguracion.btnRutaIniClick(Sender: TObject);
var
  cp: string;
begin
  cp:= GetCurrentDir;
  OpenDialog.InitialDir:= cp;
  OpenDialog.Filter:= 'All Files (*.*)|*.*';

  if (ExtractFilePath(ERutaIni.Text)) <> '' then
    OpenDialog.InitialDir:= (ExtractFilePath(ERutaIni.text));

  if OpenDialog.Execute then
    ERutaIni.Text:= OpenDialog.FileName;

end;

procedure TFConfiguracion.ChBorrarIniClick(Sender: TObject);
begin
  if ChBorrarIni.Checked then
  begin
    Label7.Enabled:= TRUE;
    ERutaIni.Enabled:= TRUE;
    btnRutaIni.Enabled:= true;
  end
  else
  begin
    Label7.Enabled:= false;
    ERutaIni.Enabled:= false;
    btnRutaIni.Enabled:= false;
  end;
end;

end.

