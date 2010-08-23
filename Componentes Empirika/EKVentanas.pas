unit EKVentanas;

interface

uses
  SysUtils, Classes, ExtCtrls, ActnMan, Forms, ComCtrls, ActnList, Dialogs,
  StdCtrls, Controls;

type
  TEKVentanasV = record
    Ventanas   : Tform;
    OldOnClose : TCloseEvent;
  end;

type
  TEKVentanas = class(TComponent)
  private
    FPanelTapa : Tpanel;
    FEjecutando : Boolean;
    FAccionManager : TActionManager;
    FAbrirEstado : TWindowState;
//    FImagenIcono : TImagelist;
    FPonerCaption : Boolean;
    FVentanas : array of TEKVentanasV;
    OldOnClose_Modal : TCloseEvent;
    procedure abrir_v(s:tobject; ic:TFormClass; var r; ajustar:boolean);
    procedure cerrar(Sender: TObject; var Action: TCloseAction);
    procedure cerrar_modal(Sender: TObject; var Action: TCloseAction);

    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure AbrirModal(ic:TFormClass; var r);
    procedure AbrirModalInvisible(ic:TFormClass; var r);
    procedure Abrir(s:tobject; ic:TFormClass; var r);
    procedure AbrirAjustando(s:tobject; ic:TFormClass; var r);
  published
    Property
      PanelTapa : Tpanel read FPanelTapa write FPanelTapa;
    Property
      AccionManager : TActionManager read FAccionManager write FAccionManager;
    Property
      AbrirEstado : TWindowState read FAbrirEstado write FAbrirEstado default wsnormal;
//    Property
//      ImagenIcono : TImageList read FImagenIcono write FImagenIcono;
    Property
      PonerCaption : Boolean read FPonerCaption write FPonerCaption;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('EmpiriKa', [TEKVentanas]);
end;

{ TEKVentanas }

procedure TEKVentanas.abrir_v(s: tobject; ic: TFormClass; var r; ajustar:boolean);
var
    i : smallint;
    f : TScreen;
    existe : boolean;
begin
    if FEjecutando then
      exit;

    FEjecutando := true;

    if Assigned(paneltapa) then
      PanelTapa.Visible := true;
    existe := false;
    for i := 0 to length(Fventanas)-1 do
      if FVentanas[i].Ventanas=tform(r)  then
        existe := true;
    if not existe then
    begin
        Application.CreateForm(ic, r);
        if Assigned(AccionManager) then
        begin
          AccionManager.ActionBars[0].Items.add();
          i := AccionManager.ActionBars[0].Items.count-1;
          AccionManager.ActionBars[0].Items[i].Action := (s as taction);
          if (s as taction).ImageIndex <> -1 then
              AccionManager.ActionBars[0].Items[i].ShowCaption := false;
          (s as taction).Hint := (s as taction).Caption;
          if PonerCaption then
            tform(r).Caption := AccionManager.ActionBars[0].Items[i].Caption;
          tform(r).Tag := AccionManager.ActionBars[0].Items[i].ID;
        end;
        
        if ajustar then
        begin
          f:= TScreen.Create(nil);
          TForm(r).Top := 3;
          TForm(r).Left := 8;
          TForm(r).Height := f.DesktopHeight - 170;
          TForm(r).Width := f.DesktopWidth - 20;
          f.Free;
        end;

        if application.MainForm.MDIChildCount = 1 then
          tform(r).WindowState := AbrirEstado;

        SetLength(Fventanas, length(Fventanas)+1);
        Fventanas[length(Fventanas)-1].Ventanas:=Tform(r);
        if Assigned(tform(r).OnClose) then
          Fventanas[length(Fventanas)-1].OldOnClose := tform(r).OnClose
        else
          Fventanas[length(Fventanas)-1].OldOnClose := nil;

        tform(r).OnClose := cerrar;
    end
    else
    begin
        if (screen.ActiveForm.WindowState = wsmaximized)then
        begin
          tform(r).BringToFront;
          tform(r).WindowState := wsmaximized;
        end
        else
        begin
          if tform(r).WindowState = wsminimized then
          begin
            if application.MainForm.MDIChildCount = 1 then
              TForm(r).WindowState := AbrirEstado
            else
              if  screen.ActiveForm.WindowState = wsminimized then
                TForm(r).WindowState := AbrirEstado
              else
                TForm(r).WindowState := screen.ActiveForm.WindowState;
          end;
          tform(r).BringToFront;
        end;
    end;
    if Assigned(paneltapa) then
      PanelTapa.Visible := false;

    tform(r).Repaint;
    FEjecutando := false;    
end;

procedure TEKVentanas.Abrir(s: tobject; ic: TFormClass; var r);
begin
  abrir_v(s,ic,r,false);
end;

procedure TEKVentanas.AbrirAjustando(s: tobject; ic: TFormClass; var r);
begin
  abrir_v(s,ic,r,true);
end;

procedure TEKVentanas.abrirModal(ic: TFormClass; var r);
begin
  Application.CreateForm(ic, r);
  if Assigned(tform(r).OnClose) then
    OldOnClose_Modal := tform(r).OnClose
  else
    OldOnClose_Modal := nil;
  tform(r).OnClose := cerrar_modal;
  TForm(r).BorderStyle := bsDialog;
  TForm(r).BorderIcons := [biSystemMenu];
  TForm(r).Position := poMainFormCenter;
  TForm(r).ShowModal;
end;

procedure TEKVentanas.AbrirModalInvisible(ic: TFormClass; var r);
begin
  Application.CreateForm(ic, r);
  if Assigned(tform(r).OnClose) then
    OldOnClose_Modal := tform(r).OnClose
  else
    OldOnClose_Modal := nil;
  tform(r).OnClose := cerrar_modal;
  TForm(r).BorderStyle := bsDialog;
  TForm(r).BorderIcons := [biSystemMenu];
  TForm(r).Position := poMainFormCenter;
end;

procedure TEKVentanas.cerrar(Sender: TObject; var Action: TCloseAction);
var
    i, nv, nvt : smallint;
    s : string;
    id: integer;
    maximizado : boolean;
    f : tform;
begin

  f := screen.ActiveForm;
  nvt := length(Fventanas);
  for i := 0 to nvt-1 do
    if Fventanas[i].Ventanas=f  then
      nv := i;

  if Assigned(FVentanas[nv].OldOnClose) then
    FVentanas[nv].OldOnClose(Sender, Action);

  if assigned(tform(f)) then
  begin
      s := tform(f).Caption;
      if Assigned(AccionManager) then
      begin
        id := tform(f).Tag;
        for i := 0 to AccionManager.ActionBars[0].Items.count-1 do
            if AccionManager.ActionBars[0].Items[i].ID = id then
            begin
                AccionManager.ActionBars[0].Items.delete(i);
                break;
            end;
      end;

      maximizado := false;
      if tform(f).WindowState = wsMaximized then
      begin
        maximizado := true;
        if Assigned(paneltapa) then PanelTapa.Visible := true;
      end;
      tform(f).Tag := 99;
      tform(f).WindowState := wsminimized;
      tform(f).release;
      //tform(f) := nil;

      if maximizado then
        if application.MainForm.MDIChildCount > 1 then
        begin
          Application.MainForm.Next;
          screen.ActiveForm.WindowState := wsMaximized;
        end;
  end;

  for i := nv+1 to nvt-1 do
  begin
    Fventanas[i-1].Ventanas := Fventanas[i].Ventanas;
    Fventanas[i-1].OldOnClose := Fventanas[i].OldOnClose;
  end;
  SetLength(Fventanas, nvt-1);
  if Assigned(paneltapa) then PanelTapa.Visible := false;  
end;

procedure TEKVentanas.cerrar_modal(Sender: TObject; var Action: TCloseAction);
var
    f : tform;
begin
  if Assigned(OldOnClose_Modal) then
    OldOnClose_Modal(Sender, Action);
  f := screen.ActiveForm;
  tform(f).Release;
end;


end.
