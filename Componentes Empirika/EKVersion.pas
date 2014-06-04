unit EKVersion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, StdCtrls, Mask, DBCtrls,
  ComCtrls, ExtCtrls, Grids, DBGrids, ZAbstractDataset;

type
  TFEKControlVersion = class(TForm)
    version: TZReadOnlyQuery;
    DataSource1: TDataSource;
    DBRichEdit1: TDBRichEdit;
    uver: TLabel;
    versionFECHA: TDateTimeField;
    versionVERSION: TIntegerField;
    versionVERSIOND: TStringField;
    versionCOMPATIBILIDAD: TIntegerField;
    versionMODIFICACIONES: TMemoField;
    Label5: TLabel;
    txtincompatible: TLabel;
    bfin: TButton;
    Panel1: TPanel;
    ver: TLabel;
    Label1: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Version_db: TZQuery;
    dbincompatible: TLabel;
    versionVERSION_DB: TIntegerField;
    Version_dbVERSION_DB: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure bfinClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEKControlVersion: TFEKControlVersion;

implementation

{$R *.dfm}


procedure TFEKControlVersion.FormCreate(Sender: TObject);
begin;

end;

procedure TFEKControlVersion.bfinClick(Sender: TObject);
begin
  if txtincompatible.Caption <> '' then
    Application.Terminate
  else
    ModalResult := mrok;
end;

procedure TFEKControlVersion.Button1Click(Sender: TObject);
begin
//  winexec('explorer http://muni.inter-sol.com.ar', SW_MAXIMIZE	);
  winexec('actualizar', SW_NORMAL	);
  Application.Terminate;
end;

end.
