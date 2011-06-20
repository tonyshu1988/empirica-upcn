unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZConnection, StdCtrls, ZSqlUpdate, EKIni, ExtCtrls, EKEdit;

type
  TForm1 = class(TForm)
    ZC_Remoto: TZConnection;
    ZC_Local: TZConnection;
    ZQ_SincroTabla: TZQuery;
    DBGrid1: TDBGrid;
    DS_SincroTabla: TDataSource;
    Local: TZQuery;
    Remoto: TZQuery;
    btSincronizar: TButton;
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
    inicio: TEKIni;
    Panel1: TPanel;
    Label7: TLabel;
    RadioGroup1: TRadioGroup;
    Panel2: TPanel;
    Panel3: TPanel;
    Timer1: TTimer;
    cuenta: TEKEdit;
    GroupBox1: TGroupBox;
    Rbase: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    RUser: TEdit;
    Label6: TLabel;
    RPassword: TEdit;
    GroupBox2: TGroupBox;
    LBase: TEdit;
    LUser: TEdit;
    LPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btSincronizarClick(Sender: TObject);
    procedure ZQ_SincroTablaAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Sincronizar();
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  unidad : string;
  intervalo, lote_commit : integer;
implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.btSincronizarClick(Sender: TObject);
begin
   Sincronizar;
end;

procedure TForm1.Sincronizar();
begin

  try
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
   end
  except
     on E: Exception do
      begin

        ZC_Remoto.Disconnect;
        ZC_Local.Disconnect;

        memo1.Lines.Add(E.Message);
        memo1.Lines.Add('ERROR Act. Histórico - Fin Actualización');
      end;
  end;
end;

procedure TForm1.ZQ_SincroTablaAfterScroll(DataSet: TDataSet);
begin
ZQ_SincroTablaPrimary.close;
ZQ_SincroTablaPrimary.ParamByName('id').value:=ZQ_SincroTablaID.Value;
ZQ_SincroTablaPrimary.open;

end;

procedure TForm1.FormCreate(Sender: TObject);
var
  dir : string;
begin
  ZC_Remoto.Connected:=False;
  ZC_Local.Connected:=False;
  ZQ_SincroTabla.close;
  memo1.Lines.Clear;
  dir:=Application.ExeName;

  if ParamCount=0 then
  begin
    if IsProcess('Sincronizador.exe') then
    begin
      Application.MessageBox('Ya hay una instancia del programa ejecutandose.','Atención');
      Application.Terminate;
    end;
  end;
  
  inicio.abrir;
  ZC_Remoto.HostName:=inicio.Ini.ReadString('bases', 'ipremoto','');
  ZC_Remoto.Database:=inicio.Ini.ReadString('bases', 'remoto','');
  ZC_Remoto.User:=inicio.Ini.ReadString('bases', 'remoto_user','');
  ZC_Remoto.Password:=inicio.Ini.ReadString('bases', 'remoto_password','');

  Rbase.Text:=ZC_Remoto.Database;
  RUser.Text:=ZC_Remoto.User;
  RPassword.Text:=ZC_Remoto.Password;

  ZC_Local.HostName:='127.0.0.1';
  ZC_Local.Database:=inicio.Ini.ReadString('bases', 'local','');
  ZC_Local.User:=inicio.Ini.ReadString('bases', 'local_user','');
  ZC_Local.Password:=inicio.Ini.ReadString('bases', 'local_password','');

  Lbase.Text:=ZC_Local.Database;
  LUser.Text:=ZC_Local.User;
  LPassword.Text:=ZC_Local.Password;

  unidad:=inicio.Ini.ReadString('SINCRONIZACION', 'unidad','minutos');
  intervalo:=strtoint(inicio.Ini.ReadString('SINCRONIZACION', 'intervalo','15'));
  lote_commit:=strtoint(inicio.Ini.ReadString('SINCRONIZACION', 'lote_commit','100'));

  cuenta.Text:=inttostr(intervalo);
  if unidad='segundos' then
    RadioGroup1.ItemIndex:=0
  else
    RadioGroup1.ItemIndex:=1;

  RadioGroup1Click(self);
  inicio.cerrar;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  cu : integer;
begin


  cu := strtoint(cuenta.text);
  cu := cu-1;
  cuenta.Text:=inttostr(cu);
  if cu=0 then
  begin
    timer1.Enabled:=False;
    Sincronizar();
  end;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=0 then
    timer1.Interval:=1000
  else
    timer1.Interval:=60000;  
end;

end.
