unit UDM;

interface

uses
  Forms, SysUtils, Classes, ZConnection, WinSkinData, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, EKUsrLogin, EKInformacion, EKModelo,
  EKAppEvnts, EKEventos, QRCtrls, QuickRpt, MidasLib, mxExport,
  mxNativeExcel, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, IdPOP3, IdMessage, ExtCtrls,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdSMTPBase, IdExplicitTLSClientServerBase, StdCtrls, EKIni;

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
    ZQ_ConfigMail: TZQuery;
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
    Actualizar: TTimer;
    IdPOP3: TIdPOP3;
    IdSMTP: TIdSMTP;
    SMTP_SSL: TIdSSLIOHandlerSocketOpenSSL;
    POP3_SSL: TIdSSLIOHandlerSocketOpenSSL;
    ZQ_ConfigMailSMTP_SSL: TStringField;
    ZQ_ConfigMailPOP3_SSL: TStringField;
    ZQ_ConfigMailPOP3_AUTENTICACION: TStringField;
    EKIni: TEKIni;
    procedure LoginLogin(Sender: TObject);
    procedure VariablesReportes(Reporte: TQuickRep);
    procedure configMail(Tipo: String; id: integer);
  private
    auxDecimalSeparator, auxThousandSeparator: Char;
    auxCurrencyDecimals: Integer;
    auxCurrencyString: string;
  public
    procedure prepararParaExportar(query: TDataSet; valor: Boolean);
    procedure mostrarCantidadRegistro(query: TDataSet; var etiqueta: TLabel);
  end;

var
  DM: TDM;
  SUCURSAL_LOGUEO: integer; //Mantiene el id de la sucursal con la cual me conecte
  enviandoMail: boolean; //TRUE si se esta enviado un mail; FALSE en caso contrario
  sucursales: TEKArrayPermisos; //array de permisos valores que tiene un campo usuario y un campo valor


implementation

uses UPrincipal, USeleccionarSucursal, UPanelNotificacion, IniFiles;

{$R *.dfm}

procedure TDM.LoginLogin(Sender: TObject);
var
  aux, logo_fondo:string;
  i: integer;
begin
  SkinData1.Active:= true;
  Application.CreateForm(TFPrincipal, FPrincipal);

  auxDecimalSeparator:= DecimalSeparator;
  auxCurrencyDecimals:= CurrencyDecimals;
  auxThousandSeparator:= ThousandSeparator;
  auxCurrencyString:= CurrencyString;

  enviandoMail:= false;

  EKIni.abrir;
  logo_fondo:= EKIni.Ini.ReadString('LOGO_FONDO', 'logo', '');
  try
    if logo_fondo <> '' then
      FPrincipal.LogoFondo.Picture.LoadFromFile(logo_fondo);
  except
    exit;
  end;
end;


procedure TDM.configMail(Tipo: String; id: integer);
begin
  if Tipo = 'SUCURSAL' then
  begin
    ZQ_ConfigMail.Close;
    ZQ_ConfigMail.SQL[3]:= 'and c.cuenta_principal = ''S''';
    ZQ_ConfigMail.SQL[4]:= 'and c.id_sucursal = :id_sucursal';
    ZQ_ConfigMail.SQL[5]:= '';
    ZQ_ConfigMail.ParamByName('id_sucursal').AsInteger:= id;
    ZQ_ConfigMail.Open;
  end
  else
    if Tipo = 'CUENTA' then
    begin
      ZQ_ConfigMail.Close;
      ZQ_ConfigMail.SQL[3]:= '';
      ZQ_ConfigMail.SQL[4]:= '';
      ZQ_ConfigMail.SQL[5]:= 'and c.id_cuenta = :id_cuenta';
      ZQ_ConfigMail.ParamByName('id_cuenta').AsInteger:= id;
      ZQ_ConfigMail.Open;
    end;

  with IdPOP3 do
  begin
    Port:= ZQ_ConfigMailPOP3_PUERTO.AsInteger;
    Host:= ZQ_ConfigMailPOP3_HOST.AsString;
    Username:= ZQ_ConfigMailPOP3_USUARIO.AsString;
    Password:= ZQ_ConfigMailPOP3_PASSWORD.AsString;

    if ZQ_ConfigMailPOP3_AUTENTICACION.AsString = 'patAPOP' then
      AuthType := patAPOP
    else
      if ZQ_ConfigMailPOP3_AUTENTICACION.AsString = 'patSASL' then
        AuthType := patSASL
      else
        if ZQ_ConfigMailPOP3_AUTENTICACION.AsString = 'patUserPass' then
          AuthType := patUserPass;

    if ZQ_ConfigMailPOP3_SSL.AsString = 'utNoTLSSupport' then
      UseTLS := utNoTLSSupport
    else
      if ZQ_ConfigMailPOP3_SSL.AsString = 'utUseExplicitTLS' then
        UseTLS := utUseExplicitTLS
      else
        if ZQ_ConfigMailPOP3_SSL.AsString = 'utUseImplicitTLS' then
          UseTLS := utUseImplicitTLS
        else
          if ZQ_ConfigMailPOP3_SSL.AsString = 'utUseRequireTLS' then
            UseTLS := utUseRequireTLS;
  end;

  with POP3_SSL do
  begin
    Host:= ZQ_ConfigMailPOP3_HOST.AsString;
    Port:= ZQ_ConfigMailPOP3_PUERTO.AsInteger;
    Destination:= ZQ_ConfigMailPOP3_HOST.AsString+':'+ZQ_ConfigMailPOP3_PUERTO.AsString;

    RecvBufferSize:= 65000;
    SendBufferSize:= 65000;
    SSLOptions.Method:= sslvSSLv3;
    SSLOptions.Mode:= sslmUnassigned;
    SSLOptions.VerifyDepth:= 0;
    SSLOptions.VerifyMode:= [];
    UseNagle:= False;
  end;

  with IdSMTP do
  begin
    Host:= ZQ_ConfigMailSMTP_HOST.AsString;
    Port:= ZQ_ConfigMailSMTP_PUERTO.AsInteger;
    Username:= ZQ_ConfigMailSMTP_USUARIO.AsString;
    Password:= ZQ_ConfigMailSMTP_PASSWORD.AsString;

    if ZQ_ConfigMailSMTP_AUTENTICACION.AsString = 'satDefault' then
      AuthType := satDefault
    else
      if ZQ_ConfigMailSMTP_AUTENTICACION.AsString = 'satNone' then
        AuthType := satNone
      else
        if ZQ_ConfigMailSMTP_AUTENTICACION.AsString = 'satSASL' then
          AuthType := satSASL;

    if ZQ_ConfigMailSMTP_SSL.AsString = 'utNoTLSSupport' then
      UseTLS := utNoTLSSupport
    else
      if ZQ_ConfigMailSMTP_SSL.AsString = 'utUseExplicitTLS' then
        UseTLS := utUseExplicitTLS
      else
        if ZQ_ConfigMailSMTP_SSL.AsString = 'utUseImplicitTLS' then
          UseTLS := utUseImplicitTLS
        else
          if ZQ_ConfigMailSMTP_SSL.AsString = 'utUseRequireTLS' then
            UseTLS := utUseRequireTLS;

    PipeLine:=False;
    UseEhlo:=True;
  end;

  with SMTP_SSL do
  begin
    Host:= ZQ_ConfigMailSMTP_HOST.AsString;
    Port:= ZQ_ConfigMailSMTP_PUERTO.AsInteger;
    Destination:= ZQ_ConfigMailSMTP_HOST.AsString+':'+ZQ_ConfigMailSMTP_PUERTO.AsString;

//    RecvBufferSize:= 65000;
//    SendBufferSize:= 65000;
//    SSLOptions.Method:= sslvSSLv3;
//    SSLOptions.Mode:= sslmUnassigned;
//    SSLOptions.VerifyDepth:= 0;
//    SSLOptions.VerifyMode:= [];
//    UseNagle:= False;
  end;
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


procedure TDM.mostrarCantidadRegistro(query: TDataSet; var etiqueta: TLabel);
begin
  etiqueta.Caption:= '    Cantidad de Registros: '+inttostr(query.RecordCount);
end;

end.
