unit UAcerca_De;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DBCtrls, ActnList, XPStyleActnCtrls, ActnMan;

type
  TFAcerca_De = class(TForm)
    btnCerrar: TButton;
    Memo1: TMemo;
    ZQ_Config: TZQuery;
    DS_Config: TDataSource;
    DBMemo1: TDBMemo;
    ActionManager1: TActionManager;
    Action1: TAction;
    Image2: TImage;
    Image1: TImage;
    procedure btnCerrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAcerca_De: TFAcerca_De;

implementation

uses UDM;

{$R *.dfm}

procedure TFAcerca_De.btnCerrarClick(Sender: TObject);
begin
  close;
end;

procedure TFAcerca_De.FormCreate(Sender: TObject);
begin
//  ZQ_Config.Close;
//  ZQ_Config.Open;
end;

procedure TFAcerca_De.Action1Execute(Sender: TObject);
begin
  Image2.Visible:= not Image2.Visible;
  Image1.Visible:= not Image1.Visible;
  //Memo1.Visible:= not Memo1.Visible;
  DBMemo1.Visible:= not DBMemo1.Visible;
end;

end.
