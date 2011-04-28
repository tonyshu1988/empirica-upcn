unit UDM;

interface

uses
  Forms, SysUtils, Classes, ZConnection, WinSkinData, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, EKUsrLogin, EKInformacion, EKModelo,
  EKAppEvnts, EKEventos, QRCtrls, QuickRpt, MidasLib, mxExport,
  mxNativeExcel, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, IdPOP3, IdMessage;

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
    IdSMTP: TIdSMTP;
    ZQ_ConfigMail: TZQuery;
    IdPOP3: TIdPOP3;
    ZQ_ConfigMailID_CUENTA: TIntegerField;
    ZQ_ConfigMailID_SUCURSAL: TIntegerField;
    ZQ_ConfigMailEMAIL: TStringField;
    ZQ_ConfigMailPOP3_HOST: TStringField;
    ZQ_ConfigMailPOP3_PUERTO: TIntegerField;
    ZQ_ConfigMailPOP3_USUARIO: TStringField;
    ZQ_ConfigMailPOP3_PASSWORD: TStringField;
    ZQ_ConfigMailSMTP_HOST: TStringField;
    ZQ_ConfigMailSMTP_PUERTO: TIntegerField;
    ZQ_ConfigMailSMTP_USUARIO: TStringField;
    ZQ_ConfigMailSMTP_PASSWORD: TStringField;
    ZQ_ConfigMailSMTP_AUTENTICACION: TStringField;
    ZQ_ConfigMailCUENTA_PRINCIPAL: TStringField;
    procedure LoginLogin(Sender: TObject);
    procedure VariablesReportes(Reporte: TQuickRep);
    procedure configMailSucursal(idSucursal: integer);
    procedure configMailCuenta(idCuenta: integer);
  private
    auxDecimalSeparator, auxThousandSeparator: Char;
    auxCurrencyDecimals: Integer;
    auxCurrencyString: string;
  public
    procedure prepararParaExportar(query: TDataSet; valor: Boolean);
  end;

var
  DM: TDM;
  SUCURSAL_LOGUEO: integer;
  sucursales: TEKArrayPermisos; //array de permisos valores que tiene
                                //un campo usuario y un campo valor
implementation

uses UPrincipal, USeleccionarSucursal;

{$R *.dfm}

procedure TDM.LoginLogin(Sender: TObject);
var
  aux:string;
  i: integer;
begin
  SkinData1.Active:= true;
  Application.CreateForm(TFPrincipal, FPrincipal);  

  auxDecimalSeparator:= DecimalSeparator;
  auxCurrencyDecimals:= CurrencyDecimals;
  auxThousandSeparator:= ThousandSeparator;
  auxCurrencyString:= CurrencyString;
end;


procedure TDM.configMailSucursal(idSucursal: integer);
begin
  ZQ_ConfigMail.Close;
  ZQ_ConfigMail.SQL[4]:= 'and c.id_sucursal = :id_sucursal';
  ZQ_ConfigMail.SQL[5]:= '';
  ZQ_ConfigMail.ParamByName('id_sucursal').AsInteger:= idSucursal;
  ZQ_ConfigMail.Open;

  IdPOP3.Port:= ZQ_ConfigMailPOP3_PUERTO.AsInteger;
  IdPOP3.Host:= ZQ_ConfigMailPOP3_HOST.AsString;
  IdPOP3.Username:= ZQ_ConfigMailPOP3_USUARIO.AsString;
  IdPOP3.Password:= ZQ_ConfigMailPOP3_PASSWORD.AsString;

  IdSMTP.Port := ZQ_ConfigMailSMTP_PUERTO.AsInteger;
  IdSMTP.Host := ZQ_ConfigMailSMTP_HOST.AsString;
  IdSMTP.Username := ZQ_ConfigMailSMTP_USUARIO.AsString;
  IdSMTP.Password := ZQ_ConfigMailSMTP_PASSWORD.AsString;
  if ZQ_ConfigMailSMTP_AUTENTICACION.AsString = 'atNone' then
    IdSMTP.AuthenticationType := atNone;
  if ZQ_ConfigMailSMTP_AUTENTICACION.AsString = 'atLogin' then
    IdSMTP.AuthenticationType := atLogin;
end;


procedure TDM.configMailCuenta(idCuenta: integer);
begin
  ZQ_ConfigMail.Close;
  ZQ_ConfigMail.SQL[4]:= '';
  ZQ_ConfigMail.SQL[5]:= 'and c.id_cuenta = :id_cuenta';
  ZQ_ConfigMail.ParamByName('id_cuenta').AsInteger:= idCuenta;
  ZQ_ConfigMail.Open;

  IdPOP3.Port:= ZQ_ConfigMailPOP3_PUERTO.AsInteger;
  IdPOP3.Host:= ZQ_ConfigMailPOP3_HOST.AsString;
  IdPOP3.Username:= ZQ_ConfigMailPOP3_USUARIO.AsString;
  IdPOP3.Password:= ZQ_ConfigMailPOP3_PASSWORD.AsString;

  IdSMTP.Port := ZQ_ConfigMailSMTP_PUERTO.AsInteger;
  IdSMTP.Host := ZQ_ConfigMailSMTP_HOST.AsString;
  IdSMTP.Username := ZQ_ConfigMailSMTP_USUARIO.AsString;
  IdSMTP.Password := ZQ_ConfigMailSMTP_PASSWORD.AsString;
  if ZQ_ConfigMailSMTP_AUTENTICACION.AsString = 'atNone' then
    IdSMTP.AuthenticationType := atNone;
  if ZQ_ConfigMailSMTP_AUTENTICACION.AsString = 'atLogin' then
    IdSMTP.AuthenticationType := atLogin;
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
