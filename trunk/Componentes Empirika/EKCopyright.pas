unit EKCopyright;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFEKCopyRight = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEKCopyRight: TFEKCopyRight;




implementation

{$R *.dfm}

procedure TFEKCopyRight.Button1Click(Sender: TObject);
begin
//  Release;
end;

end.
