unit _Busy2; // by cHackAll

interface

uses Windows;

function BusyBegin(lpWindowName: PChar; dwParent: Cardinal = 0 {OPTIONAL}): LongBool;
function BusyEnd(bWaitReady: LongBool = True {OPTIONAL}): LongBool;

implementation

uses Messages; { $r WindowsXP}

var
  Msg: TMsg;
  Rect: TRect;
  hEvent, hParent: Cardinal;


function State: LongBool;
begin
  Result:= LongBool(WaitForSingleObject(hEvent, 0));
end;


function Thread(lpWindowName: PChar): Cardinal; stdcall;
var
  hWnd: Cardinal;
begin Result:= $E0;
  hWnd:= CreateWindowEx(WS_EX_TOOLWINDOW or WS_EX_LAYERED, 'msctls_progress32', nil, WS_VISIBLE or 8 {PBS_MARQUEE}, Rect.Left, Rect.Top, Rect.Right, Rect.Bottom, 0, 0, 0, nil);
  SetLayeredWindowAttributes(hWnd, 0, Result, LWA_ALPHA);
  SendMessage(hWnd, WM_USER + 10, 1, 66); // PBM_SETMARQUEE
  SetWindowText(hWnd, lpWindowName);

  while not State and GetMessage(Msg, 0, 0, 0) do
    if Msg.message <> WM_SYSCOMMAND then
    begin
      DispatchMessage(Msg);
      SetWindowPos(hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOSIZE or SWP_NOMOVE);
    end;

  if hParent <> 0 then
    SetForegroundWindow(hParent);

  repeat Sleep($10);
    Dec(Result, $10);
    SetLayeredWindowAttributes(hWnd, 0, Result, LWA_ALPHA);
  until Result = 0;

  DestroyWindow(hWnd);
  MessageBeep(0);
end;


function BusyBegin;
var
  Parent: TRect;
begin
  Result:= State;
  if not Result then
    Exit;

  SetRect(Rect, 0, 0, $FF, $10);
  AdjustWindowRectEx(Rect, WS_CAPTION, False, WS_EX_TOOLWINDOW);
  Dec(Rect.Right, Rect.Left);
  Dec(Rect.Bottom, Rect.Top);
  hParent:= dwParent;
  if dwParent <> 0 then
    GetWindowRect(dwParent, Parent)
  else
    SetRect(Parent, 0, 0, GetSystemMetrics(SM_CXSCREEN), GetSystemMetrics(SM_CYSCREEN));

  Rect.Left:= Parent.Left + (((Parent.Right - Parent.Left) - Rect.Right) div 2);
  Rect.Top:= Parent.Top + (((Parent.Bottom - Parent.Top) - Rect.Bottom) div 2);

  CreateThread(nil, 0, @Thread, lpWindowName, 0, PDWORD(0)^);
  SetEvent(hEvent);
end;


function BusyEnd;
begin
  Result:= not State;

  if Result then
  begin
    if bWaitReady then
      WaitForInputIdle(INFINITE, INFINITE);
    ResetEvent(hEvent);
  end;
end;

begin
  hEvent:= CreateEvent(nil, True, False, nil);
end.

