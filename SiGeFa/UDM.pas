unit UDM;

interface

uses
  Forms, SysUtils, Classes, ZConnection, WinSkinData, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, EKUsrLogin, EKInformacion, EKModelo,
  EKAppEvnts, EKEventos, QRCtrls, QuickRpt, MidasLib, mxExport,
  mxNativeExcel;

type
  TDM = class(TDataModule)
    Conexion: TZConnection;
    SkinData1: TSkinData;
    EKEventos1: TEKEventos;
    EKModelo: TEKModeloTransaccion;
    EKInformacion1: TEKInformacion;
    EKUsrLogin: TEKUsrLogin;
    ZQ_Configuracion: TZQuery;
    ZQ_ConfiguracionCLAVE: TStringField;
    ZQ_ConfiguracionFECHA: TDateField;
    ZQ_ConfiguracionNUMERO: TFloatField;
    ZQ_ConfiguracionTEXTO: TStringField;
    ZQ_ConfiguracionNIVEL: TSmallintField;
    ZQ_ConfiguracionGRUPO: TStringField;
    ZQ_ConfiguracionDESCRIPCION: TStringField;
    ZQ_ConfiguracionGRAFICO: TBlobField;
    ExcelNative: TmxNativeExcel;
    ExcelExport: TmxDBGridExport;
    procedure LoginLogin(Sender: TObject);
    procedure VariablesReportes(Reporte: TQuickRep);
  private
    auxDecimalSeparator, auxThousandSeparator: Char;
    auxCurrencyDecimals: Integer;
    auxCurrencyString: string;
  public
    procedure prepararParaExportar(query: TDataSet; valor: Boolean);
  end;

var
  DM: TDM;
  CuentaNro: integer;

implementation

uses UPrincipal;

{$R *.dfm}


procedure TDM.LoginLogin(Sender: TObject);
begin
  auxDecimalSeparator:= DecimalSeparator;
  auxCurrencyDecimals:= CurrencyDecimals;
  auxThousandSeparator:= ThousandSeparator;
  auxCurrencyString:= CurrencyString;

  SkinData1.Active:= true;
  Application.CreateForm(TFPrincipal, FPrincipal);
end;


procedure TDM.VariablesReportes(Reporte: TQuickRep);
var
  i : integer;
  Etiqueta : TQRLabel;
  Form : TForm;
begin
  //--- SETEAR VARIABLE GLOBALES DESDE TABLA CONFIGURACION ---
  ZQ_Configuracion.close;
  ZQ_Configuracion.Open;
  ZQ_Configuracion.First;

  Form := Tform(Reporte.Owner);
  while not ZQ_Configuracion.Eof do
  begin
    Etiqueta := TQRLabel(Form.FindComponent(reporte.Name+'_'+ZQ_Configuracion.fieldbyname('clave').AsString));
    i:=0;
    while Assigned(Etiqueta) do
    begin
      Etiqueta.Enabled:= true;
      Etiqueta.Caption:= ZQ_Configuracion.fieldbyname('texto').AsString;
      inc(i);
      Etiqueta := TQRLabel(Form.FindComponent(reporte.Name+'_'+ZQ_Configuracion.fieldbyname('clave').AsString+inttostr(i)));
    end;

    ZQ_Configuracion.Next;
  end;
end;


//PROCEDIMIENTO PARA EJECUTAR ANTES DE EXPORTAR LAS GRILLAS A EXCEL.
//LO QUE HACE ES SACAR LOS CURRENCIS DE LOS CAMPOS FLOAT Y DESPUES
//LOS VUELVE A SETEAR
procedure TDM.prepararParaExportar(query: TDataSet; valor: Boolean);
var
  i:integer;
begin
  for i := 0 to (query.ComponentCount - 1) do
  begin
    if query.Components[i].ClassType = TFloatField then
      TFloatField(query.Components[i]).currency := valor; //activo o desactivo el currency
  end;

  if (valor = false) then  //seteo para exportar a excel
  begin
    CurrencyDecimals := 2;
    DecimalSeparator := ',';
    ThousandSeparator := '.';
    CurrencyString := '';
  end
  else
  begin //vuelvo a la configuracion original antes de exportar
    DecimalSeparator := auxDecimalSeparator;
    CurrencyDecimals := auxCurrencyDecimals;
    ThousandSeparator := auxThousandSeparator;
    CurrencyString:= auxCurrencyString;
  end;
end;

end.
