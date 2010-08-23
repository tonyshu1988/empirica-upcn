unit EKCopyright;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TCopyRight = class(TForm)
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
  CopyRight: TCopyRight;




implementation

{$R *.dfm}

procedure TCopyRight.Button1Click(Sender: TObject);
begin
//  Release;
end;

end.
