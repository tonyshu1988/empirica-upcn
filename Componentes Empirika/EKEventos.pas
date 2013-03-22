unit EKEventos;

interface

uses
  SysUtils, Classes, EKAppEvnts, Forms, EKerror, EKControlerror, dialogs, Controls;

type
  TEKEventos = class(TCustomEKApplicationEvents)
  private
    { Private declarations }
    FoldActivate : TNotifyEvent;
    FoldDeActivate : TNotifyEvent;
    FEventosBase : TEKEventos;
    FEnterPorTab : Boolean;
    procedure SetEnterPorTab(const Value: Boolean);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor  destroy  ; override;
    procedure alactivar (Sender: TObject);
    procedure aldesactivar (Sender: TObject);
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
    property OnFormActivate;
    property EventosBase : TEKEventos read FEventosBase write FEventosBase;
    property EnterPorTab : Boolean read FEnterPorTab write SetEnterPorTab;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKEventos]);
end;

{ TEKEventos }

procedure TEKEventos.alactivar(Sender: TObject);
begin
  if Assigned(FoldActivate) then
    FoldActivate(Sender);
  Activate;
end;


procedure TEKEventos.aldesactivar(Sender: TObject);
begin
    if Assigned(FoldDeActivate) then
      FoldDeActivate(Sender);

    if Assigned(FEventosBase) then
      FEventosBase.Activate;
end;


constructor TEKEventos.Create(AOwner: TComponent);
begin
  inherited;
  if AOwner.ClassParent.ClassName = 'TForm' then
    if not ((csDesigning in ComponentState) or (csLoading in ComponentState)) then
    begin
      if Assigned(Tform(AOwner).OnActivate) then
        FoldActivate := Tform(AOwner).OnActivate
      else
        FoldActivate := nil;

      Tform(AOwner).OnActivate := alactivar;

      if Assigned(Tform(AOwner).OnDeActivate) then
        FoldDeActivate := Tform(AOwner).OnDeActivate
      else
        FoldDeActivate := nil;

      Tform(AOwner).OnDeActivate := aldesactivar;
    end;

  FEnterPorTab := true;
end;


destructor TEKEventos.destroy;
begin
  if Assigned(Owner) then
    if Owner.ClassParent.ClassName = 'TForm' then
      if not ((csDesigning in ComponentState) or (csLoading in ComponentState)) then
        begin
          if Assigned(FoldActivate) then
            Tform(Owner).OnActivate := FoldActivate
          else
            Tform(Owner).OnActivate := nil;

          if Assigned(FoldDeActivate) then
            Tform(Owner).OnDeActivate := FoldDeActivate
          else
            Tform(Owner).OnDeActivate := nil;
        end;
  inherited;
end;


Procedure TEKEventos.SetEnterPorTab(const Value: Boolean);
begin
  FEnterPorTab := Value;
  if value and assigned(screen) and assigned(EKMultiCaster) then
  begin
    if assigned(screen.ActiveForm) then
    begin
      screen.ActiveForm.KeyPreview := true;
      screen.ActiveForm.OnKeyPress := EKMultiCaster.enter_por_tab;
    end;
  end
  else
  begin
    if assigned(screen.ActiveForm) then
    begin
      screen.ActiveForm.OnKeyPress := nil;
    end;
  end;
end;



end.
