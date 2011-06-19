unit Unit2;

interface

uses
  SysUtils, Classes;

const
  MAX_PATH = 260;
  TH32CS_SNAPPROCESS = 2;

type
  TProcessEntry32 = packed record
    iSize,
    iUsage,
    iProcessID,
    iDefaultHeapId,
    iModuleId,
    iThreads,
    iParentProcessId,
    iPriClassBase,
    iFlags: Integer;
    aExeFile: array[0..MAX_PATH] of Char;
  end;

function CreateToolHelpSnapShot(lFlags, lProcessId: Longint): Longint; stdcall;
function ProcessFirst(hSnapshot: longint; var uProcess: TProcessEntry32): Longint; stdcall;
function ProcessNext(hSnapshot: Longint; var uProcess: TProcessEntry32): Longint; stdcall;
procedure CloseHandle(hPass: Longint); StdCall;

function IsProcess(ExeName: string): Boolean;
procedure GetProcesses(var ProcessList: TStringList);

implementation

function CreateToolHelpSnapShot; external 'kernel32.dll' name 'CreateToolhelp32Snapshot';
function ProcessFirst; external 'kernel32.dll' name 'Process32First';
function ProcessNext; external 'kernel32.dll' name 'Process32Next';
procedure CloseHandle; external 'kernel32.dll';

function IsProcess(ExeName: string): Boolean;
(*
** This routine examines Windows processes currently running to see if a
** certain program is running.
**
** sExe  : The executable name of the program to check.
** Result: True if the program is running, False otherwise.
*)
var
  lI, lSnapShot: Longint;
  rProcess: TProcessEntry32;
  rep : integer;
begin
  rep:=0;
  Result := False;
  ExeName := UpperCase(ExeName);
  lSnapShot := CreateToolHelpSnapShot(TH32CS_SNAPPROCESS, 0);
  if lSnapShot <> 0 then begin
    rProcess.iSize := SizeOf(rProcess);
    lI := ProcessFirst(lSnapShot, rProcess);
    while lI <> 0 do begin
      if Pos(ExeName, UpperCase(rProcess.aExeFile)) <> 0 then begin
        if rep=1 then
        begin
          Result := True;
          Break;
        end
        else
          inc(rep);

      end;
      lI := ProcessNext(lSnapShot, rProcess);
    end;
    CloseHandle(lSnapShot);
  end;
end;

procedure GetProcesses(var ProcessList: TStringList);
(* This procedure will retrieve a list of Windows processes currently running.
**
** ProcessList: TStringList variable to fill with the running process names.
**
** !!Note: ProcessList will be empty if an error occurs
*)
var
  lI, lSnapShot: Longint;
  rProcess     : TProcessEntry32;
begin
  ProcessList.Clear;
  lSnapShot := CreateToolHelpSnapShot(TH32CS_SNAPPROCESS, 0);
  if lSnapShot <> 0 then begin
    rProcess.iSize := SizeOf(rProcess);
    lI := ProcessFirst(lSnapShot, rProcess);
    while lI <> 0 do begin
      ProcessList.Add(rProcess.aExeFile);
      lI := ProcessNext(lSnapShot, rProcess);
    end;
    CloseHandle(lSnapShot);
  end;
end;



end.
