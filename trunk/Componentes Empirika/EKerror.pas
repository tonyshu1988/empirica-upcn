unit EKerror;

interface

uses
  Windows, Messages,  Forms,
  Dialogs, StdCtrls, Classes, Controls, Graphics, ExtCtrls;

type
  TF_Error = class(TForm)
    btnSalir: TButton;
    text_error: TLabel;
    error_c: TLabel;
    btnDetalle: TButton;
    Image1: TImage;
    procedure btnSalirClick(Sender: TObject);
    procedure btnDetalleClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Error: TF_Error;

implementation

{$R *.dfm}

procedure TF_Error.btnSalirClick(Sender: TObject);
begin
  close;
end;

procedure TF_Error.btnDetalleClick(Sender: TObject);
begin
  ShowMessage(error_c.Caption);
end;


procedure TF_Error.FormCreate(Sender: TObject);
begin
  if assigned(F_Error) then
    F_Error.Visible:= False;
end;


initialization
  F_Error := TF_Error.Create(nil);

  
finalization
  F_Error.free;
end.
