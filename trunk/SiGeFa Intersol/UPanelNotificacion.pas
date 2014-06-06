unit UPanelNotificacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls;

type
  TFPanelNotificacion = class(TForm)
    Panel1: TPanel;
    memoMensaje: TMemo;
    Actualizar: TTimer;
    procedure ver_aviso_mensaje(texto: string);
    procedure ActualizarTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPanelNotificacion: TFPanelNotificacion;

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFPanelNotificacion.ver_aviso_mensaje(texto: string);
var ancho, alto, x ,c, alto_original, ofsetarriba, ofsetizquierda: integer;
    aviso : TFPanelNotificacion;
begin
  aviso := TFPanelNotificacion.Create(nil);
  aviso.memoMensaje.Lines.Add(texto);
  ofsetarriba := 27;
  ofsetizquierda := 4;
  ancho := FPrincipal.Left+FPrincipal.Width - aviso.Width ;
  alto := FPrincipal.Height - aviso.Height ;
  alto_original := aviso.Height;
  aviso.left := ancho-ofsetizquierda;
  aviso.top := Alto-ofsetarriba;
  if not (aviso.Visible) then
  begin
    aviso.Height := 34;
    aviso.show;
    aviso.left := ancho-ofsetizquierda;
    aviso.top := FPrincipal.Top+FPrincipal.Height - 34-ofsetarriba;
    c := 0;
    for x:=1 to alto_original - 34 do
    begin
      c:=c+1;
      if c = 4 then
      begin
        aviso.Top := FPrincipal.Top+FPrincipal.Height-34-x-ofsetarriba;
        aviso.Height := x + 34;
        c := 0;
        Application.ProcessMessages;
      end;
    end;
    aviso.Top := FPrincipal.Top+FPrincipal.Height-alto_original-ofsetarriba;
    aviso.Height := alto_original;
  end;
end;


procedure TFPanelNotificacion.ActualizarTimer(Sender: TObject);
begin
  close;
end;


procedure TFPanelNotificacion.FormCreate(Sender: TObject);
begin
  memoMensaje.Clear;
end;

end.
