unit EKerror;

interface

uses
  Windows, Messages,  Forms,
  Dialogs, StdCtrls, Classes, Controls;

type
  TF_Error = class(TForm)
    Button1: TButton;
    text_error: TLabel;
    error_c: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Error: TF_Error;

implementation

{$R *.dfm}

procedure TF_Error.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TF_Error.FormShow(Sender: TObject);
begin

  Width := text_error.Width + 60;
  Height := text_error.Height + 100;
{  if ancho < 313 then
    Width := 313
  else
    Width := ancho;

  if largo < 140 then
    Height := 140
  else
    Height := largo;
    }
end;

procedure TF_Error.FormDblClick(Sender: TObject);
begin
  ShowMessage(error_c.Caption);
end;

procedure TF_Error.Button2Click(Sender: TObject);
begin
  ShowMessage(error_c.Caption);
end;

initialization
  F_Error := TF_Error.Create(nil);
finalization
  F_Error.free;
end.
