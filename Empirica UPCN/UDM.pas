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
    EKUsrLogin1: TEKUsrLogin;
    ZQ_Configuracion: TZQuery;
    ZQ_ConfiguracionCLAVE: TStringField;
    ZQ_ConfiguracionFECHA: TDateField;
    ZQ_ConfiguracionNUMERO: TFloatField;
    ZQ_ConfiguracionTEXTO: TStringField;
    ZQ_ConfiguracionNIVEL: TSmallintField;
    ZQ_ConfiguracionGRUPO: TStringField;
    ZQ_ConfiguracionDESCRIPCION: TStringField;
    ZQ_ConfiguracionGRAFICO: TBlobField;
    ZQ_Configuracion_Cuenta: TZQuery;
    StringField1: TStringField;
    DateField1: TDateField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    SmallintField1: TSmallintField;
    StringField3: TStringField;
    StringField4: TStringField;
    BlobField1: TBlobField;
    ExcelNative: TmxNativeExcel;
    ExcelExport: TmxDBGridExport;
    procedure LoginLogin(Sender: TObject);
    procedure VariablesReportes(Reporte: TQuickRep);
    procedure TitulosReportes(Reporte: TQuickRep;Cuenta:Integer);
    procedure prepararParaExportar(query: TDataSet; valor: Boolean);
  private
    auxDecimalSeparator, auxThousandSeparator: Char;
    auxCurrencyDecimals: Integer;
    auxCurrencyString: string;
  public
    { Public declarations }
  end;

var
  DM: TDM;
  CuentaNro: integer;

implementation

uses UPrincipal;

{$R *.dfm}


procedure TDM.LoginLogin(Sender: TObject);
begin
  //seteo variables por defecto
  auxDecimalSeparator:= DecimalSeparator;
  auxCurrencyDecimals:= CurrencyDecimals;
  auxThousandSeparator:= ThousandSeparator;
  auxCurrencyString:= CurrencyString;

  SkinData1.Active:= true;
  Application.CreateForm(TFPrincipal, FPrincipal);

  if EKUsrLogin1.PermisoAccionValor('ACCESO') = '' then
    CuentaNro:= 0
  else
    CuentaNro:= StrToInt(EKUsrLogin1.PermisoAccionValor('ACCESO'));

  ZQ_Configuracion.Open;
  if ZQ_Configuracion.Locate('clave', 'iniciar_libro_banco',[]) then
    if (ZQ_ConfiguracionTEXTO.AsString = 'SI') then
      //if CuentaNro > 0 then
        FPrincipal.ABMMovimientos1.Click;
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

procedure TDM.TitulosReportes(Reporte: TQuickRep;Cuenta:Integer);
var
  i : integer;
  Etiqueta : TQRLabel;
  Form : TForm;
begin
  //--- SETEAR VARIABLE GLOBALES DESDE TABLA CONFIGURACION ---
  ZQ_Configuracion_Cuenta.close;
  ZQ_Configuracion_Cuenta.ParamByName('CTA').AsInteger:=Cuenta;
  ZQ_Configuracion_Cuenta.Open;
  ZQ_Configuracion_Cuenta.First;

  Form := Tform(Reporte.Owner);
  while not ZQ_Configuracion_Cuenta.Eof do
  begin
    Etiqueta := TQRLabel(Form.FindComponent(reporte.Name+'_'+ZQ_Configuracion_Cuenta.fieldbyname('clave').AsString));
    i:=0;
    while Assigned(Etiqueta) do
    begin
      Etiqueta.Enabled:= true;
      Etiqueta.Caption:= ZQ_Configuracion_Cuenta.fieldbyname('texto').AsString;
      inc(i);
      Etiqueta := TQRLabel(Form.FindComponent(reporte.Name+'_'+ZQ_Configuracion_Cuenta.fieldbyname('clave').AsString+inttostr(i)));
    end;

    ZQ_Configuracion_Cuenta.Next;
  end;
end;


procedure TDM.prepararParaExportar(query: TDataSet; valor: Boolean);
var
  i:integer;
  c: char;
begin
  for i := 0 to (query.ComponentCount - 1) do
  begin
    if query.Components[i].ClassType = TFloatField then
      TFloatField(query.Components[i]).currency:= valor; //activo o desactivo el currency
  end;

  if (valor = false) then  //seteo para exportar a excel
  begin
    CurrencyDecimals:= 2;
    DecimalSeparator:= '.';
    ThousandSeparator:= c;
    CurrencyString:= '';
  end
  else
  begin //vuelvo a la configuracion original antes de exportar
    DecimalSeparator:= auxDecimalSeparator;
    CurrencyDecimals:= auxCurrencyDecimals;
    ThousandSeparator:= auxThousandSeparator;
    CurrencyString:= auxCurrencyString;
  end;
end;


end.
