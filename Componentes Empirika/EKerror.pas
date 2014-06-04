unit EKerror;

interface

uses
  Windows, Messages,  Forms,
  Dialogs, StdCtrls, Classes, Controls, Graphics, ExtCtrls;

type
  TFEK_Error = class(TForm)
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
  FEK_Error: TFEK_Error;

implementation

{$R *.dfm}

procedure TFEK_Error.btnSalirClick(Sender: TObject);
begin
  close;
end;

procedure TFEK_Error.btnDetalleClick(Sender: TObject);
begin
  ShowMessage(error_c.Caption);
end;


procedure TFEK_Error.FormCreate(Sender: TObject);
begin
  if assigned(FEK_Error) then
    FEK_Error.Visible:= False;
end;


initialization
  FEK_Error := TFEK_Error.Create(nil);

  
finalization
  FEK_Error.free;
end.
