{ SysTray on taskbar component }
{ Copyright (c) 2001 by Mandys Tomas - MandySoft }
{ email: tomas.mandys@2p.cz }
{ URL: http://www.2p.cz }

unit EKIconizacion;

interface
uses
  SysUtils, Classes, Windows, Messages, Forms, Controls, ShellApi, Menus, Graphics;

const
  WM_SYSTRAY = WM_USER + 299;
  NIF_INFO = $10;
  NIF_MESSAGE = 1;
  NIF_ICON = 2;
  NOTIFYICON_VERSION = 3;
  NIF_TIP = 4;
  NIM_SETVERSION = $00000004;
  NIM_SETFOCUS = $00000003;
  NIIF_INFO = $00000001;
  NIIF_WARNING = $00000002;
  NIIF_ERROR = $00000003;
  NIN_BALLOONSHOW = WM_USER + 2;
  NIN_BALLOONHIDE = WM_USER + 3;
  NIN_BALLOONTIMEOUT = WM_USER + 4;
  NIN_BALLOONUSERCLICK = WM_USER + 5;
  NIN_SELECT = WM_USER + 0;
  NINF_KEY = $1;
  NIN_KEYSELECT = NIN_SELECT or NINF_KEY;
  TRAY_CALLBACK = WM_USER + $7258;

type
  TSysTrayHint = string[63];

type
  PNewNotifyIconData = ^TNewNotifyIconData;
  TDUMMYUNIONNAME    = record
    case Integer of
      0: (uTimeout: UINT);
      1: (uVersion: UINT);
  end;

  TNewNotifyIconData = record
    cbSize: DWORD;
    Wnd: HWND;
    uID: UINT;
    uFlags: UINT;
    uCallbackMessage: UINT;
    hIcon: HICON;
    szTip: array [0..127] of Char;
    dwState: DWORD;
    dwStateMask: DWORD;
    szInfo: array [0..255] of Char;
    DUMMYUNIONNAME: TDUMMYUNIONNAME; 
    szInfoTitle: array [0..63] of Char;
    dwInfoFlags: DWORD;   
  end;

  TEKIconizacion = class(TComponent)
  private
    FWindowHandle: HWND;
    FIconData: TNewNotifyIconData;
    FOnMouseDown: TMouseEvent;
    FOnMouseMove: TMouseMoveEvent;
    FOnMouseUp: TMouseEvent;
    FOnClick: TNotifyEvent;
    FOnDblClick: TNotifyEvent;
    FPopupMenu: TPopupMenu;
    NT351: Boolean;
    FVisible: Boolean;
    FIcon: TIcon;
    function  GetHint: TSysTrayHint;
    procedure SetHint(const Value: TSysTrayHint);
    procedure WndProc(var Msg: TMessage);
    function  GetIconHandle: hIcon;
    procedure SetPopupMenu(Value: TPopupMenu);
    procedure SetVisible(const Value: Boolean);
    function  IsIconStored: Boolean;
    procedure SetIcon(const Value: TIcon);
    procedure IconChanged(Sender: TObject);
  protected
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); dynamic;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); dynamic;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); dynamic;
    procedure Click; dynamic;
    procedure DblClick; dynamic;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    constructor Create(aOwner: TComponent); override;
    destructor  Destroy; override;
    procedure mostrarGlobo(titulo : string; contenido : string);
  published
    property Visible: Boolean read FVisible write SetVisible;
    property PopupMenu: TPopupMenu read FPopupMenu write SetPopupMenu;
    property Icon: TIcon read FIcon write SetIcon stored IsIconStored;
    property Hint: TSysTrayHint read GetHint write SetHint;
    property OnClick: TNotifyEvent read FOnClick write FOnClick;
    property OnDblClick: TNotifyEvent read FOnDblClick write FOnDblClick;
    property OnMouseDown: TMouseEvent read FOnMouseDown write FOnMouseDown;
    property OnMouseMove: TMouseMoveEvent read FOnMouseMove write FOnMouseMove;
    property OnMouseUp: TMouseEvent read FOnMouseUp write FOnMouseUp;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKIconizacion]);
end;

constructor TEKIconizacion.Create(aOwner: TComponent);
begin
  inherited;
  FIcon := TIcon.Create;
  FIcon.Width := GetSystemMetrics(SM_CXSMICON);
  FIcon.Height := GetSystemMetrics(SM_CYSMICON);
  FIcon.OnChange := IconChanged;
  NT351 := (Win32MajorVersion <= 3) and (Win32Platform = VER_PLATFORM_WIN32_NT);
  FWindowHandle := AllocateHWnd(WndProc);
end;


destructor TEKIconizacion.Destroy;
begin
  Visible:= False;
  DeallocateHWnd(FWindowHandle);
  FIcon.Free;
  inherited;
end;


procedure TEKIconizacion.WndProc(var Msg: TMessage);
var
  pt: TPoint;
begin
  if (Msg.Msg = WM_SYSTRAY) and (Msg.wParam = fIconData.uID) then
    try
      case Msg.LParam of
        WM_LBUTTONUP:
          with TWMMouse(Msg) do
          begin
//            if PtInRect(ClientRect, SmallPointToPoint(Pos)) then
            Click;
            MouseUp(mbLeft, KeysToShiftState(Keys), XPos, YPos);
          end;
        WM_MBUTTONUP:
          with TWMMouse(Msg) do
          MouseUp(mbMiddle, KeysToShiftState(Keys), XPos, YPos);
        WM_RBUTTONUP:
          with TWMMouse(Msg) do
            MouseUp(mbRight, KeysToShiftState(Keys), XPos, YPos);
        WM_MOUSEMOVE:
           with TWMMouseMove(Msg) do
             MouseMove(KeysToShiftState(Keys), XPos, YPos);
        WM_LBUTTONDOWN:
          with TWMMouse(Msg) do
            MouseDown(mbLeft, KeysToShiftState(Keys), XPos, YPos);
        WM_MBUTTONDOWN:
          with TWMMouse(Msg) do
            MouseDown(mbMiddle, KeysToShiftState(Keys), XPos, YPos);
        WM_RBUTTONDOWN:
          with TWMMouse(Msg) do
          begin
            MouseDown(mbRight, KeysToShiftState(Keys), XPos, YPos);
            Pt := SmallPointToPoint(Pos);
            if (fPopupMenu <> nil) and fPopupMenu.AutoPopup then
            begin
              GetCursorPos(pt);
              fPopupMenu.PopupComponent := Self;
              fPopupMenu.Popup(Pt.X, Pt.Y);
            end;
          end;
        WM_LBUTTONDBLCLK:
          with TWMMouse(Msg) do
          begin
            DblClick;
            MouseDown(mbLeft, KeysToShiftState(Keys)+[ssDouble], XPos, YPos);
          end;
        WM_MBUTTONDBLCLK:
          with TWMMouse(Msg) do
            MouseDown(mbMiddle, KeysToShiftState(Keys)+[ssDouble], XPos, YPos);
        WM_RBUTTONDBLCLK:
          with TWMMouse(Msg) do
            MouseDown(mbRight, KeysToShiftState(Keys)+[ssDouble], XPos, YPos);
      end;
    except
      Application.HandleException(Self);
    end
  else
    Msg.Result := DefWindowProc(FWindowHandle, Msg.Msg, Msg.wParam, Msg.lParam);
end;


function TEKIconizacion.GetHint: TSysTrayHint;
begin
  Result:= StrPas(FIconData.szTip);
end;


procedure TEKIconizacion.SetHint(const Value: TSysTrayHint);
begin
  if Value <> GetHint then
  begin
    StrPLCopy(FIconData.szTip, Value, SizeOf(FIconData.szTip)-1);
    if not NT351 then
      Shell_NotifyIcon(NIM_Modify, @FIconData);
  end;
end;


procedure TEKIconizacion.MouseDown(Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  if Assigned(FOnMouseDown) then
    FOnMouseDown(Self, Button, Shift, X, Y);
end;


procedure TEKIconizacion.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  if Assigned(FOnMouseMove) then
    FOnMouseMove(Self, Shift, X, Y);
end;


procedure TEKIconizacion.MouseUp(Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  if Assigned(FOnMouseUp) then
    FOnMouseUp(Self, Button, Shift, X, Y);
end;


procedure TEKIconizacion.Click;
begin
  if Assigned(FOnClick) then
    FOnClick(Self);
end;


procedure TEKIconizacion.DblClick;
begin
  if Assigned(FOnDblClick) then
    FOnDblClick(Self);
end;


procedure TEKIconizacion.SetPopupMenu(Value: TPopupMenu);
begin
  FPopupMenu := Value;
  if Value <> nil then
  begin
    Value.FreeNotification(Self);
  end;
end;


procedure TEKIconizacion.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if Operation = opRemove then
    if AComponent = PopupMenu then
      PopupMenu := nil;
end;


procedure TEKIconizacion.SetVisible(const Value: Boolean);
begin
  if (fVisible <> Value) and not NT351 and not (csDesigning in ComponentState) then
  begin
    if Value then
      begin
        with FIconData do
        begin
          cbSize := SizeOf(FIconData);
          Wnd := fWindowHandle;
          uID := Integer(Self);
          uFlags := NIF_MESSAGE or NIF_ICON or NIF_TIP;
          uCallbackMessage := WM_SYSTRAY;
          hIcon:= GetIconHandle;
        end;
        Shell_NotifyIcon(NIM_Add, @FIconData);
      end
    else
      begin
        Shell_NotifyIcon(NIM_DELETE, @FIconData);
      end;
  end;
  FVisible := Value;
end;


function TEKIconizacion.IsIconStored: Boolean;
begin
  Result := fIcon.Handle <> 0;
end;


procedure TEKIconizacion.SetIcon(const Value: TIcon);
begin
  FIcon.Assign(Value);
end;


function TEKIconizacion.GetIconHandle: HICON;
begin
  Result := FIcon.Handle;
  if Result = 0 then
    Result := Application.Icon.Handle;
end;


procedure TEKIconizacion.IconChanged(Sender: TObject);
begin
  fIconData.hIcon:= GetIconHandle;
  Shell_NotifyIcon(NIM_Modify, @FIconData);
end;


procedure TEKIconizacion.mostrarGlobo(titulo, contenido: string);
var
  TipInfo, TipTitle: string;
begin
  FIconData.cbSize := SizeOf(FIconData);
  FIconData.uFlags := NIF_INFO;
  TipInfo:= contenido;
  strPLCopy(FIconData.szInfo, TipInfo, SizeOf(FIconData.szInfo) - 1);
  TipTitle := titulo;
  strPLCopy(FIconData.szInfoTitle, TipTitle, SizeOf(FIconData.szInfoTitle) - 1);
  FIconData.dwInfoFlags := NIIF_INFO;
  FIconData.DUMMYUNIONNAME.uTimeout := 2;
  Shell_NotifyIcon(NIM_MODIFY, @FIconData);
  FIconData.DUMMYUNIONNAME.uVersion := NOTIFYICON_VERSION;
  Shell_NotifyIcon(NIM_SETVERSION, @FIconData);
end;

end.
