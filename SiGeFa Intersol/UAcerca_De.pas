unit UAcerca_De;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DBCtrls, ActnList, XPStyleActnCtrls, ActnMan,
  dxGDIPlusClasses;

type
  TFAcerca_De = class(TForm)
    btnCerrar: TButton;
    Memo1: TMemo;
    ZQ_Config: TZQuery;
    DS_Config: TDataSource;
    ActionManager1: TActionManager;
    Action1: TAction;
    Image1: TImage;
    procedure btnCerrarClick(Sender: TObject);
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

end.
