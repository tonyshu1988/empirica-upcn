unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZConnection, StdCtrls, ZSqlUpdate;

type
  TForm1 = class(TForm)
    ZC_Remoto: TZConnection;
    ZC_Local: TZConnection;
    ZQ_SincroTabla: TZQuery;
    DBGrid1: TDBGrid;
    DS_SincroTabla: TDataSource;
    Local: TZQuery;
    Remoto: TZQuery;
    Button1: TButton;
    Memo1: TMemo;
    ZQ_SincroCampo: TZQuery;
    DBGrid2: TDBGrid;
    DS_SincroCampo: TDataSource;
    ZQ_SincroCampoLOG_TABLES_ID: TLargeintField;
    ZQ_SincroCampoFIELD_NAME: TStringField;
    ZQ_SincroCampoOLD_VALUE: TStringField;
    ZQ_SincroCampoNEW_VALUE: TStringField;
    DBGrid3: TDBGrid;
    ZQ_SincroTablaPrimary: TZQuery;
    ZQ_SincroTablaPrimaryKEY_FIELD: TStringField;
    ZQ_SincroTablaPrimaryKEY_VALUE: TStringField;
    DataSource1: TDataSource;
    ZQ_SincroTablaTABLE_NAME: TStringField;
    ZQ_SincroTablaOPERATION: TStringField;
    ZQ_SincroTablaDATE_TIME: TDateTimeField;
    ZQ_SincroTablaUSER_NAME: TStringField;
    ZQ_SincroTablaSINCRONIZADO: TStringField;
    ZQ_SincroTablaID: TLargeintField;
    ZQ_SincroTablaPrimaryLOG_TABLES_ID: TLargeintField;
    procedure Button1Click(Sender: TObject);
    procedure ZQ_SincroTablaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

 ZC_Remoto.Connected:=False;
 ZC_Remoto.Connected:=true;
 ZC_Local.Connected:=False;
 ZC_Local.Connected:=true;
 ZQ_SincroTabla.close;
 ZQ_SincroTabla.Open;
 memo1.Lines.Clear;
while not ZQ_SincroTabla.Eof do
    begin
      memo1.Lines.Add('Tabla:'+ZQ_SincroTablaTABLE_NAME.AsString+' ID:'+ZQ_SincroTablaID.AsString);

      ZQ_SincroCampo.close;
      ZQ_SincroCampo.ParamByName('id').AsInteger:=ZQ_SincroTablaID.AsInteger;
      ZQ_SincroCampo.open;

      Remoto.SQL.Clear;
      Remoto.SQL.Add(
              'select * from '+ZQ_SincroTablaTABLE_NAME.AsString+
              ' where '+ZQ_SincroTablaPrimaryKEY_FIELD.AsString+'='+ZQ_SincroTablaPrimaryKEY_VALUE.AsString);
      Remoto.Open;

      Local.SQL.Clear;
      Local.SQL.Add(
              'select * from '+ZQ_SincroTablaTABLE_NAME.AsString+
              ' where '+ZQ_SincroTablaPrimaryKEY_FIELD.AsString+'='+ZQ_SincroTablaPrimaryKEY_VALUE.AsString);
      Local.Open;

      if (ZQ_SincroTablaOPERATION.AsString='I') or (ZQ_SincroTablaOPERATION.AsString='U') then
      begin
        if Local.RecordCount=0 then
          Local.Append
        else
          Local.Edit;
        while not ZQ_SincroCampo.Eof do
        begin
          Local.FieldByName(ZQ_SincroCampoFIELD_NAME.AsString).AsString:=Remoto.FieldByName(ZQ_SincroCampoFIELD_NAME.AsString).AsString;
          ZQ_SincroCampo.Next;
        end;
      end;

      if ZQ_SincroTablaOPERATION.AsString='D' then
      begin
        if Local.RecordCount=1 then
          Local.Delete;
      end;
      if (ZQ_SincroTablaSINCRONIZADO.AsString='N')or(ZQ_SincroTablaSINCRONIZADO.IsNull) then
          begin
            ZQ_SincroTabla.Edit;
            ZQ_SincroTablaSINCRONIZADO.AsString:='S';
            ZQ_SincroTabla.Post;
          end;
      Local.ApplyUpdates;
      ZQ_SincroTabla.Next;
    end;
    ZQ_SincroTabla.ApplyUpdates;
    ZC_Remoto.Commit;
    ZC_Local.Commit;
end;

procedure TForm1.ZQ_SincroTablaAfterScroll(DataSet: TDataSet);
begin
ZQ_SincroTablaPrimary.close;
ZQ_SincroTablaPrimary.ParamByName('id').value:=ZQ_SincroTablaID.Value;
ZQ_SincroTablaPrimary.open;

end;

end.
