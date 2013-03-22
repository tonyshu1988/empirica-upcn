
{*******************************************************}
{                                                       }
{       Borland Delphi Visual Component Library         }
{                                                       }
{  Copyright (c) 1995-2001 Borland Software Corporation }
{                                                       }
{*******************************************************}

unit EKAppEvnts;

interface

uses Windows, Messages, SysUtils, Classes, Forms, ActnList, DBGrids, DBCtrls,
     EKControlerror, Contnrs, Consts, StdActns, Controls, StdCtrls, Dialogs, ComCtrls;

type
  TCustomEKApplicationEvents = class(TComponent)
  private
    FOnActionExecute: TActionEvent;
    FOnActionUpdate: TActionEvent;
    FOnException: TExceptionEvent;
    FOnMessage: TMessageEvent;
    FOnHelp: THelpEvent;
    FOnHint: TNotifyEvent;
    FOnIdle: TIdleEvent;
    FOnDeactivate: TNotifyEvent;
    FOnActivate: TNotifyEvent;
    FOnMinimize: TNotifyEvent;
    FOnRestore: TNotifyEvent;
    FOnShortCut: TShortCutEvent;
    FOnShowHint: TShowHintEvent;
    FOnSettingChange: TSettingChangeEvent;
    FOnModalBegin: TNotifyEvent;
    FOnModalEnd: TNotifyEvent;
    FOnFormActivate : TNotifyEvent;
    procedure DoActionExecute(Action: TBasicAction; var Handled: Boolean);
    procedure DoActionUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure DoActivate(Sender: TObject);
    procedure DoDeactivate(Sender: TObject);
    procedure DoException(Sender: TObject; E: Exception); dynamic;
    procedure DoIdle(Sender: TObject; var Done: Boolean);
    function DoHelp(Command: Word; Data: Longint; var CallHelp: Boolean): Boolean;
    procedure DoHint(Sender: TObject);
    procedure DoMessage(var Msg: TMsg; var Handled: Boolean);
    procedure DoMinimize(Sender: TObject);
    procedure DoRestore(Sender: TObject);
    procedure DoShowHint(var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure DoShortcut(var Msg: TWMKey; var Handled: Boolean);
    procedure DoSettingChange(Sender: TObject; Flag: Integer; const Section: string; var Result: Longint);
    procedure DoModalBegin(Sender: TObject);
    procedure DoModalEnd(Sender: TObject);
    procedure SetOnFormActivate(const Value: TNotifyEvent);
  protected
    property OnActionExecute: TActionEvent read FOnActionExecute write FOnActionExecute;
    property OnActionUpdate: TActionEvent read FOnActionUpdate write FOnActionUpdate;
    property OnActivate: TNotifyEvent read FOnActivate write FOnActivate;
    property OnDeactivate: TNotifyEvent read FOnDeactivate write FOnDeactivate;
    property OnException: TExceptionEvent read FOnException write FOnException;
    property OnIdle: TIdleEvent read FOnIdle write FOnIdle;
    property OnHelp: THelpEvent read FOnHelp write FOnHelp;
    property OnHint: TNotifyEvent read FOnHint write FOnHint;
    property OnMessage: TMessageEvent read FOnMessage write FOnMessage;
    property OnMinimize: TNotifyEvent read FOnMinimize write FOnMinimize;
    property OnRestore: TNotifyEvent read FOnRestore write FOnRestore;
    property OnShowHint: TShowHintEvent read FOnShowHint write FOnShowHint;
    property OnShortCut: TShortCutEvent read FOnShortCut write FOnShortCut;
    property OnSettingChange: TSettingChangeEvent read FOnSettingChange write FOnSettingChange;
    property OnModalBegin: TNotifyEvent read FOnModalBegin write FOnModalBegin;
    property OnModalEnd: TNotifyEvent read FOnModalEnd write FOnModalEnd;
    property OnFormActivate : TNotifyEvent read FOnFormActivate write SetOnFormActivate;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Activate;
    procedure CancelDispatch;
  end;

  TEKApplicationEvents = class(TCustomEKApplicationEvents)
  published
    property OnActionExecute;
    property OnActionUpdate;
    property OnActivate;
    property OnDeactivate;
    property OnException;
    property OnIdle;
    property OnHelp;
    property OnHint;
    property OnMessage;
    property OnMinimize;
    property OnRestore;
    property OnShowHint;
    property OnShortCut;
    property OnSettingChange;
  end;


type
  TEKMultiCaster = class(TComponent)
  private
    FAppEvents: TComponentList;
    FCacheAppEvent: TCustomEKApplicationEvents;
    FCancelDispatching: Boolean;
    FDispatching: Integer;
    FOnFormActivate : TNotifyEvent;
    procedure BeginDispatch;
    procedure EndDispatch;
    procedure DoActionExecute(Action: TBasicAction; var Handled: Boolean);
    procedure DoActionUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure DoActivate(Sender: TObject);
    procedure DoDeactivate(Sender: TObject);
    procedure DoException(Sender: TObject; E: Exception);
    procedure DoIdle(Sender: TObject; var Done: Boolean);
    function DoHelp(Command: Word; Data: Longint; var CallHelp: Boolean): Boolean;
    procedure DoHint(Sender: TObject);
    procedure DoMessage(var Msg: TMsg; var Handled: Boolean);
    procedure DoMinimize(Sender: TObject);
    procedure DoRestore(Sender: TObject);
    procedure DoShowHint(var HintStr: string; var CanShow: Boolean; var HintInfo: THintInfo);
    procedure DoShortcut(var Msg: TWMKey; var Handled: Boolean);
    procedure DoSettingChange(Sender: TObject; Flag: Integer; const Section: string; var Result: Longint);
    procedure DoModalBegin(Sender: TObject);
    procedure DoModalEnd(Sender: TObject);
    function GetCount: Integer;
    function GetAppEvents(Index: Integer): TCustomEKApplicationEvents;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Activate(AppEvent: TCustomEKApplicationEvents);
    procedure AddAppEvent(AppEvent: TCustomEKApplicationEvents);
    procedure CancelDispatch;
    procedure DoFormActivate(Sender: TObject);
    procedure enter_por_tab(Sender: TObject; var Key: Char);
    function CheckDispatching(AppEvents: TCustomEKApplicationEvents): Boolean;

    property AppEvents[Index: Integer]: TCustomEKApplicationEvents read GetAppEvents; default;
    property Count: Integer read GetCount;
    property OnFormActivate : TNotifyEvent read FOnFormActivate write FOnFormActivate;
  end;

var
  EKMultiCaster: TEKMultiCaster = nil;

implementation

Uses EKEventos, EKVistaPreviaQRForm;


{ TCustomApplicationEvents }

procedure TCustomEKApplicationEvents.Activate;
begin
  if Assigned(EKMultiCaster) then
  begin
    EKMultiCaster.Activate(Self);
  end;
end;

procedure TCustomEKApplicationEvents.CancelDispatch;
begin
  if Assigned(EKMultiCaster) then
    EKMultiCaster.CancelDispatch;
end;

constructor TCustomEKApplicationEvents.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  if Assigned(EKMultiCaster) then
    EKMultiCaster.AddAppEvent(Self);
end;

procedure TCustomEKApplicationEvents.DoActionExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  if Assigned(FOnActionExecute) then FOnActionExecute(Action, Handled);
end;

procedure TCustomEKApplicationEvents.DoActionUpdate(Action: TBasicAction;
  var Handled: Boolean);
begin
  if Assigned(FOnActionUpdate) then FOnActionUpdate(Action, Handled);
end;

procedure TCustomEKApplicationEvents.DoActivate(Sender: TObject);
begin
  if Assigned(FOnActivate) then FOnActivate(Sender);
end;

procedure TCustomEKApplicationEvents.DoDeactivate(Sender: TObject);
begin
  if Assigned(FOnDeactivate) then FOnDeactivate(Sender);
end;

procedure TCustomEKApplicationEvents.DoException(Sender: TObject;
  E: Exception);
begin
  if not (E is EAbort) then
    if Assigned(OnException) then
      OnException(Sender, E)
    else
    begin
      control_errores(E);
      CancelDispatch;
    end;
end;

function TCustomEKApplicationEvents.DoHelp(Command: Word; Data: Integer;
  var CallHelp: Boolean): Boolean;
begin
  if Assigned(FOnHelp) then
    Result := FOnHelp(Command, Data, CallHelp)
  else Result := False;
end;

procedure TCustomEKApplicationEvents.DoHint(Sender: TObject);
begin
  if Assigned(FOnHint) then
    FOnHint(Sender)
  else
    with THintAction.Create(Self) do
    try
      Hint := Application.Hint;
      Execute;
    finally
      Free;
    end;
end;

procedure TCustomEKApplicationEvents.DoIdle(Sender: TObject; var Done: Boolean);
begin
  if Assigned(FOnIdle) then FOnIdle(Sender, Done);
end;

procedure TCustomEKApplicationEvents.DoMessage(var Msg: TMsg; var Handled: Boolean);
begin
  if Assigned(FOnMessage) then FOnMessage(Msg, Handled);
end;

procedure TCustomEKApplicationEvents.DoMinimize(Sender: TObject);
begin
  if Assigned(FOnMinimize) then FOnMinimize(Sender);
end;

procedure TCustomEKApplicationEvents.DoRestore(Sender: TObject);
begin
  if Assigned(FOnRestore) then FOnRestore(Sender);
end;

procedure TCustomEKApplicationEvents.DoShortcut(var Msg: TWMKey;
  var Handled: Boolean);
begin
  if Assigned(FOnShortcut) then FOnShortcut(Msg, Handled);
end;

procedure TCustomEKApplicationEvents.DoShowHint(var HintStr: string;
  var CanShow: Boolean; var HintInfo: THintInfo);
begin
  if Assigned(FOnShowHint) then FOnShowHint(HintStr, CanShow, HintInfo);
end;

procedure TCustomEKApplicationEvents.DoSettingChange(Sender: TObject; Flag: Integer;
  const Section: string; var Result: Longint);
begin
  if Assigned(FOnSettingChange) then FOnSettingChange(Sender, Flag, Section, Result);
end;

procedure TCustomEKApplicationEvents.DoModalBegin(Sender: TObject);
begin
  if Assigned(FOnModalBegin) then FOnModalBegin(Sender);
end;

procedure TCustomEKApplicationEvents.DoModalEnd(Sender: TObject);
begin
  if Assigned(FOnModalEnd) then FOnModalEnd(Sender);
end;

{ TMultiCaster }

procedure TEKMultiCaster.Activate(AppEvent: TCustomEKApplicationEvents);
begin
  if CheckDispatching(AppEvent) and
    (FAppEvents.IndexOf(AppEvent) < FAppEvents.Count - 1) then
  begin
    FAppEvents.Remove(AppEvent);
    FAppEvents.Add(AppEvent);
  end;
  if assigned(AppEvent.OnFormActivate) then
    FOnFormActivate := AppEvent.OnFormActivate;
end;

procedure TEKMultiCaster.AddAppEvent(AppEvent: TCustomEKApplicationEvents);
begin
  if FAppEvents.IndexOf(AppEvent) = -1 then
    FAppEvents.Add(AppEvent);
end;

procedure TEKMultiCaster.BeginDispatch;
begin
  Inc(FDispatching);
end;

procedure TEKMultiCaster.CancelDispatch;
begin
  FCancelDispatching := True;
end;

function TEKMultiCaster.CheckDispatching(AppEvents: TCustomEKApplicationEvents): Boolean;
begin
  Result := FDispatching = 0;
  if not Result then
    FCacheAppEvent := AppEvents;
end;

constructor TEKMultiCaster.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FAppEvents := TComponentList.Create(False);
  with Application do
  begin
    OnActionExecute := DoActionExecute;
    OnActionUpdate := DoActionUpdate;
    OnActivate := DoActivate;
    OnDeactivate := DoDeactivate;
    OnException := DoException;
    OnHelp := DoHelp;
    OnHint := DoHint;
    OnIdle := DoIdle;
    OnMessage := DoMessage;
    OnMinimize := DoMinimize;
    OnRestore := DoRestore;
    OnShowHint := DoShowHint;
    OnShortCut := DoShortcut;
    OnSettingChange := DoSettingChange;
    OnModalBegin := DoModalBegin;
    OnModalEnd := DoModalEnd;
  end;
    Screen.OnActiveFormChange := DoFormActivate;
end;

destructor TEKMultiCaster.Destroy;
begin
  EKMultiCaster := nil;
  with Application do
  begin
    OnActionExecute := nil;
    OnActionUpdate := nil;
    OnActivate := nil;
    OnDeactivate := nil;
    OnException := nil;
    OnHelp := nil;
    OnHint := nil;
    OnIdle := nil;
    OnMessage := nil;
    OnMinimize := nil;
    OnRestore := nil;
    OnShowHint := nil;
    OnShortCut := nil;
    OnSettingChange := nil;
    OnModalBegin := nil;
    OnModalEnd := nil;
  end;
  if Assigned(screen) then
    screen.OnActiveFormChange := nil;
  FAppEvents.Free;
  inherited Destroy;
end;

procedure TEKMultiCaster.DoActionExecute(Action: TBasicAction; var Handled: Boolean);
var
  I: Integer;
begin
  BeginDispatch;
  try
    for I := Count - 1 downto 0 do
    begin
      AppEvents[I].DoActionExecute(Action, Handled);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;

procedure TEKMultiCaster.DoActionUpdate(Action: TBasicAction; var Handled: Boolean);
var
  I: Integer;
begin
  BeginDispatch;
  try
    for I := Count - 1 downto 0 do
    begin
      AppEvents[I].DoActionUpdate(Action, Handled);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;

procedure TEKMultiCaster.DoActivate(Sender: TObject);
var
  I: Integer;
begin
  BeginDispatch;
  try
    for I := Count - 1 downto 0 do
    begin
      AppEvents[I].DoActivate(Sender);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;

procedure TEKMultiCaster.DoDeactivate(Sender: TObject);
var
  I: Integer;
begin
  BeginDispatch;
  try
    for I := Count - 1 downto 0 do
    begin
      AppEvents[I].DoDeactivate(Sender);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;

procedure TEKMultiCaster.DoException(Sender: TObject; E: Exception);
var
  I: Integer;
  FExceptionHandled: Boolean;
begin
  BeginDispatch;
  FExceptionHandled := False;
  try
    for I := Count - 1 downto 0 do
    begin
      //if Assigned(AppEvents[I].OnException) then
      //begin
        FExceptionHandled := True;
        AppEvents[I].DoException(Sender, E);
        if FCancelDispatching then Break;
      //end;
    end;
  finally
    if not FExceptionHandled then
      if not (E is EAbort) then
        Application.ShowException(E);
    EndDispatch;
  end;
end;

function TEKMultiCaster.DoHelp(Command: Word; Data: Integer; var CallHelp: Boolean): Boolean;
var
  I: Integer;
begin
  BeginDispatch;
  try
    Result := False;
    for I := Count - 1 downto 0 do
    begin
      Result := Result or AppEvents[I].DoHelp(Command, Data, CallHelp);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;

procedure TEKMultiCaster.DoHint(Sender: TObject);
var
  I: Integer;
begin
  BeginDispatch;
  try
    for I := Count - 1 downto 0 do
    begin
      AppEvents[I].DoHint(Sender);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;

procedure TEKMultiCaster.DoIdle(Sender: TObject; var Done: Boolean);
var
  I: Integer;
begin
  BeginDispatch;
  try
    for I := Count - 1 downto 0 do
    begin
      AppEvents[I].DoIdle(Sender, Done);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;

procedure TEKMultiCaster.DoMessage(var Msg: TMsg; var Handled: Boolean);
var
  I: Integer;
begin
  BeginDispatch;
  try
    for I := Count - 1 downto 0 do
    begin
      AppEvents[I].DoMessage(Msg, Handled);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;

procedure TEKMultiCaster.DoMinimize(Sender: TObject);
var
  I: Integer;
begin
  BeginDispatch;
  try
    for I := Count - 1 downto 0 do
    begin
      AppEvents[I].DoMinimize(Sender);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;

procedure TEKMultiCaster.DoRestore(Sender: TObject);
var
  I: Integer;
begin
  BeginDispatch;
  try
    for I := Count - 1 downto 0 do
    begin
      AppEvents[I].DoRestore(Sender);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;

procedure TEKMultiCaster.DoShortcut(var Msg: TWMKey; var Handled: Boolean);
var
  I: Integer;
begin
  BeginDispatch;
  try
    for I := Count - 1 downto 0 do
    begin
      AppEvents[I].DoShortcut(Msg, Handled);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;

procedure TEKMultiCaster.DoShowHint(var HintStr: string;
  var CanShow: Boolean; var HintInfo: THintInfo);
var
  I: Integer;
begin
  BeginDispatch;
  try
    for I := Count - 1 downto 0 do
    begin
      AppEvents[I].DoShowHint(HintStr, CanShow, HintInfo);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;

procedure TEKMultiCaster.DoSettingChange(Sender: TObject;
  Flag: Integer; const Section: string; var Result: Longint);
var
  I: Integer;
begin
  BeginDispatch;
  try
    for I := Count - 1 downto 0 do
    begin
      AppEvents[I].DoSettingChange(Sender, Flag, Section, Result);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;

procedure TEKMultiCaster.EndDispatch;
begin
  if FDispatching > 0 then
  begin
    Dec(FDispatching);
    FCancelDispatching := False;
    if (FDispatching = 0) and (FCacheAppEvent <> nil) and
      (FAppEvents.IndexOf(FCacheAppEvent) < FAppEvents.Count - 1) then
    begin
      FAppEvents.Remove(FCacheAppEvent);
      FAppEvents.Add(FCacheAppEvent);
      FCacheAppEvent := nil;
    end;
  end;
end;

function TEKMultiCaster.GetAppEvents(Index: Integer): TCustomEKApplicationEvents;
begin
  Result := TCustomEKApplicationEvents(FAppEvents[Index]);
end;

function TEKMultiCaster.GetCount: Integer;
begin
  Result := FAppEvents.Count;
end;

procedure TEKMultiCaster.DoModalBegin(Sender: TObject);
var
  I: Integer;
begin
  BeginDispatch;
  try
    for I := Count - 1 downto 0 do
    begin
      AppEvents[I].DoModalBegin(Sender);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;

procedure TEKMultiCaster.DoModalEnd(Sender: TObject);
var
  I: Integer;
begin
  BeginDispatch;
  try
    for I := Count - 1 downto 0 do
    begin
      AppEvents[I].DoModalEnd(Sender);
      if FCancelDispatching then Break;
    end;
  finally
    EndDispatch;
  end;
end;


procedure TEKMultiCaster.enter_por_tab(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if Screen.ActiveForm is TEKVistaPreviaQRForm then
      exit
    else
      with screen.ActiveForm do
      begin
        if (ActiveControl is TDBGrid) then
        begin
          with TDBGrid(ActiveControl) do
            if selectedindex < (fieldcount -1) then
            begin
              { increment the field }
              Key := #0;
              selectedindex := selectedindex +1
            end
            else
            begin
              Key := #0;
              keybd_event(VK_TAB, 0, 0, 0);
            end;
          exit;
        end;
        if (ActiveControl is TDBMemo)
           or (ActiveControl is TRichEdit)
           or (ActiveControl is TDBRichEdit)
           or (ActiveControl is TMemo) then
          exit;

        //  PONERLE 98 AL TAG DE UN COMPONENTE PARA QUE NO HAGA EL ENTER POR TAB

        if ActiveControl.Tag = 98 then
          exit;

        //Showmessage(ActiveControl.ClassName);

        Key := #0;
        Perform(WM_NEXTDLGCTL, 0, 0);
      end;
end;

procedure TEKMultiCaster.DoFormActivate(Sender: TObject);
begin
  if Assigned(screen.ActiveForm) then
    if FAppEvents.Count > 0 then
    begin
       if TEKEventos(FAppEvents[FAppEvents.Count-1]).EnterPorTab
                 AND not (csDesigning in screen.ActiveForm.ComponentState) 
       then
      begin
        screen.ActiveForm.KeyPreview := true;
        screen.ActiveForm.OnKeyPress := enter_por_tab;
      end
      else
      begin
        screen.ActiveForm.KeyPreview := false;
        screen.ActiveForm.OnKeyPress := nil;
      end;

      if Assigned(FOnFormActivate) then
        FOnFormActivate(screen.ActiveForm);

    end;
end;

procedure TCustomEKApplicationEvents.SetOnFormActivate(const Value: TNotifyEvent);
var
  ne : integer;
begin
  FOnFormActivate := value;
  ne := EKMulticaster.Count-1;
  if TEKEventos(EKMulticaster.AppEvents[ne]) = self then
    if Assigned(FOnFormActivate) then
      EKMultiCaster.OnFormActivate := FOnFormActivate
    else
      EKMultiCaster.OnFormActivate := nil;
end;








initialization
  GroupDescendentsWith(TCustomEKApplicationEvents, Controls.TControl);
  EKMultiCaster := TEKMultiCaster.Create(Application);

finalization
  EKMultiCaster.Free;
end.
