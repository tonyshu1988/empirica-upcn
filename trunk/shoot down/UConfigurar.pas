unit UConfigurar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, EKIni, Tlhelp32, shellapi;

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
    btnDestinoBases: TSpeedButton;
    Timer2: TTimer;
    lbTIEMPO: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Label5: TLabel;
    ERutaDestino: TEdit;
    SpeedButton1: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    function KillProcess(ProcessID: DWORD; Timeout: Integer = MAXINT): TTerminateStatus;
    procedure Button1Click(Sender: TObject);
    function GetProcessID(Const ExeFileName: string; var ProcessId: integer;
                      Const ProcessNo :Integer = 1): boolean;
    procedure Button3Click(Sender: TObject);
    procedure btnDestinoBasesClick(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    function CopiaTodo(Origen,Destino : String) : LongInt;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfiguracion: TFConfiguracion;
  activar : integer;
  TIEMPO : integer;

implementation

{$R *.dfm}

function TFConfiguracion.CopiaTodo(Origen,Destino : String) : LongInt;
var
  F : TShFileOpStruct;
  sOrigen, sDestino : String;
begin
  Result := 0;
  sOrigen := Origen + #0;
  sDestino := Destino + #0;

  with F do
  begin
    Wnd   := Application.Handle;
    wFunc := FO_COPY;
    pFrom := @sOrigen[1];
    pTo   := @sDestino[1];
    fFlags := FOF_ALLOWUNDO or FOF_NOCONFIRMATION
  end;
  
   Result := ShFileOperation(F);
end;

Function TFConfiguracion.GetProcessID(Const ExeFileName: string; var ProcessId: integer;
                      Const ProcessNo :Integer = 1): boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
  Temp: Integer;
begin
  {Inicializamos result y temp}
  result := false;
  temp:=1;
  
  {Obtenemos cada proceso uno por uno}
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  
  {Si no es el final de la lista, comparamos el nombre del proceso con 'exefilename'}
  while integer(ContinueLoop) <> 0 do
  begin {1}
   if (StrIComp(PChar(ExtractFileName(FProcessEntry32.szExeFile)), PChar(ExeFileName)) = 0)
     or (StrIComp(FProcessEntry32.szExeFile, PChar(ExeFileName)) = 0)  then
     begin {2}
       {Hemos encontrado un proceso con ese nombre, verificamos que es el que queremos con 'ProcessNo'}
       If Temp = ProcessNo then
       begin {3}
        ProcessId:= FProcessEntry32.th32ProcessID;
        result := true;
        break;
       end {3} else inc(Temp);
     end; {2}
   {Obtenemos el siguiente proceso}
   ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
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
    if ProcessID=PID then
      PostMessage(Wnd,WM_CLOSE,0,0);
    Result:=True;
  end;

begin
  Result:=tsError;
  if ProcessID<>GetCurrentProcessId then
  begin
    ProcessHandle:=OpenProcess(SYNCHRONIZE or PROCESS_TERMINATE, False, ProcessID);
    try
      if ProcessHandle<>0 then
      begin
        if Timeout>=0 then
        begin
          EnumWindows(@EnumWindowsProc,LPARAM(ProcessID));
          if WaitForSingleObject(ProcessHandle,Timeout)=WAIT_OBJECT_0 then
            Result:=tsClose
          else
            if TerminateProcess(ProcessHandle,0) then
              Result:=tsTerminate;
        end
        else
          if TerminateProcess(ProcessHandle,0) then
            Result:=tsTerminate;
      end;
    finally
      CloseHandle(ProcessHandle);
    end;
  end;
end;

procedure TFConfiguracion.BitBtn1Click(Sender: TObject);
begin
EKIni1.Ini.WriteString('TEMPORIZADOR', 'Tiempo', ETiempo.Text);
EKIni1.Ini.WriteString('BASE', 'SIGEFA', ERutaBase.Text);
EKIni1.Ini.WriteString('DESTINO', 'SIGEFA', ERutaDestino.Text);
end;

procedure TFConfiguracion.FormCreate(Sender: TObject);
begin
EKIni1.Path:= ExtractFilePath(Application.ExeName);

EKIni1.abrir;
ETiempo.Text := EKIni1.Ini.ReadString('TEMPORIZADOR', 'Tiempo', '');
ERutaBase.Text := EKIni1.Ini.ReadString('BASE', 'SIGEFA', '');
ERutaDestino.Text := EKIni1.Ini.ReadString('DESTINO', 'SIGEFA', '');

Timer1.Interval := 1000*StrToInt(EKIni1.Ini.ReadString('TEMPORIZADOR', 'Tiempo', ''));


  if ParamCount = 1 then
  begin
    TIEMPO := StrToInt(EKIni1.Ini.ReadString('TEMPORIZADOR', 'Tiempo', ''));
    lbTIEMPO.Caption := IntToStr(TIEMPO);
    Timer1.Enabled := true;
    Timer2.Enabled := true;
  end
  else
  begin
    TIEMPO := StrToInt(EKIni1.Ini.ReadString('TEMPORIZADOR', 'Tiempo', ''));
    lbTIEMPO.Caption := IntToStr(TIEMPO);
    timer1.Enabled := false;
    Timer2.Enabled := false;
  end;


end;

procedure TFConfiguracion.Timer1Timer(Sender: TObject);
var
PID: Integer;
RutaBase : string;
RutaDestino : string;
begin

 PID:= 0;
// while GetProcessID('fbserver.exe', PID, 1) do
// begin
//  KillProcess(PID);
// end;

 PID:= 0;
 while GetProcessID('SiGeFa.exe', PID, 1) do
 begin
  KillProcess(PID);
 end;

 PID:= 0;
 while GetProcessID('Sincronizador.exe', PID, 1) do
 begin
  KillProcess(PID);
 end;

 PID:= 0;
 while GetProcessID('SincronizadorC.exe', PID, 1) do
 begin
  KillProcess(PID);
 end;

 PID:= 0;
 while GetProcessID('SincronizadorS.exe', PID, 1) do
 begin
  KillProcess(PID);
 end;

 RutaBase:= EKIni1.Ini.ReadString('BASE', 'SIGEFA', '');
 RutaDestino:= EKIni1.Ini.ReadString('DESTINO', 'SIGEFA', '');

 CopiaTodo(RutaBase,RutaDestino);

 DeleteFile(PChar(RutaBase));

close;
end;

procedure TFConfiguracion.Button1Click(Sender: TObject);
begin
TIEMPO := StrToInt(EKIni1.Ini.ReadString('TEMPORIZADOR', 'Tiempo', ''));
lbTIEMPO.Caption := IntToStr(TIEMPO);
Timer1.Enabled := true;
Timer2.Enabled := true;
end;

procedure TFConfiguracion.Button3Click(Sender: TObject);
begin
close;
end;

procedure TFConfiguracion.btnDestinoBasesClick(Sender: TObject);
var
  cp: string;
begin
  cp:= GetCurrentDir;
  OpenDialog.InitialDir:= cp;
  OpenDialog.Filter := 'Base de Datos Firebird (*.FDB)|*.fdb|All Files (*.*)|*.*';

  if (ExtractFilePath(ERutaBase.Text)) <> '' then
    OpenDialog.InitialDir:= (ExtractFilePath(ERutaBase.text));

  if OpenDialog.Execute then
    ERutaBase.Text:= OpenDialog.FileName;

end;

procedure TFConfiguracion.Timer2Timer(Sender: TObject);
begin
TIEMPO := TIEMPO - 1;

lbTIEMPO.Caption:= IntToStr(TIEMPO);
end;

procedure TFConfiguracion.Button2Click(Sender: TObject);
begin
Timer1.Enabled := false;
Timer2.Enabled := false;
end;

procedure TFConfiguracion.SpeedButton1Click(Sender: TObject);
var
  cp: string;
begin
  cp:= GetCurrentDir;
  OpenDialog.InitialDir:= cp;
  //OpenDialog.Filter := 'Base de Datos Firebird (*.FDB)|*.fdb|All Files (*.*)|*.*';

  if (ExtractFilePath(ERutaDestino.Text)) <> '' then
    OpenDialog.InitialDir:= (ExtractFilePath(ERutaDestino.text));

  if OpenDialog.Execute then
    ERutaDestino.Text:= OpenDialog.FileName;
end;

end.
