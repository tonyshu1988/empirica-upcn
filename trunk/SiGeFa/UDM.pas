unit UDM;

interface

uses
  Forms, SysUtils, Classes, ZConnection, WinSkinData, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, EKUsrLogin, EKInformacion, EKModelo,
  EKAppEvnts, EKEventos, QRCtrls, QuickRpt, MidasLib, mxExport,
  mxNativeExcel, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, IdPOP3, IdMessage, ExtCtrls,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  IdSMTPBase, IdExplicitTLSClientServerBase, StdCtrls, EKIni, Graphics,
  IdIMAP4, Grids, DBGrids;

type
  TDM = class(TDataModule)
    Conexion: TZConnection;
    SkinData1: TSkinData;
    EKEventos1: TEKEventos;
    EKModelo: TEKModeloTransaccion;
    EKInformacion1: TEKInformacion;
    EKUsrLogin: TEKUsrLogin;
    ZQ_Configuracion: TZQuery;
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
    ZQ_Sucursal: TZQuery;
    ZQ_ConfiguracionDB_SUCURSAL: TIntegerField;
    ZQ_ConfiguracionULTIMA_FECHA: TDateTimeField;
    ZQ_SucursalID_SUCURSAL: TIntegerField;
    ZQ_SucursalNOMBRE: TStringField;
    ZQ_SucursalDIRECCION: TStringField;
    ZQ_SucursalLOCALIDAD: TStringField;
    ZQ_SucursalCODIGO_POSTAL: TStringField;
    ZQ_SucursalTELEFONO: TStringField;
    ZQ_SucursalEMAIL: TStringField;
    ZQ_SucursalBAJA: TStringField;
    ZQ_SucursalLOGO: TBlobField;
    ZQ_SucursalREPORTE_TITULO: TStringField;
    ZQ_SucursalREPORTE_SUBTITULO: TStringField;
    ZQ_SucursalCOMPROBANTE_TITULO: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON1: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON2: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON3: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON4: TStringField;
    ZQ_Configuracion_Variables: TZQuery;
    ZQ_Configuracion_VariablesCLAVE: TStringField;
    ZQ_Configuracion_VariablesFECHA: TDateField;
    ZQ_Configuracion_VariablesNUMERO: TFloatField;
    ZQ_Configuracion_VariablesTEXTO: TStringField;
    ZQ_Configuracion_VariablesNIVEL: TSmallintField;
    ZQ_Configuracion_VariablesGRUPO: TStringField;
    ZQ_Configuracion_VariablesDESCRIPCION: TStringField;
    ZQ_Configuracion_VariablesGRAFICO: TBlobField;
    DS_Sucursal: TDataSource;
    ZQ_DemoSistema: TZQuery;
    ZQ_DemoSistemaRESULTADO: TIntegerField;
    ZQ_SucursalesVisibles: TZQuery;
    ZQ_SucursalesVisiblesID_SUCURSAL: TIntegerField;
    ZQ_SucursalesVisiblesNOMBRE: TStringField;
    ZQ_SucursalesVisiblesDIRECCION: TStringField;
    ZQ_SucursalesVisiblesLOCALIDAD: TStringField;
    ZQ_SucursalesVisiblesCODIGO_POSTAL: TStringField;
    ZQ_SucursalesVisiblesTELEFONO: TStringField;
    ZQ_SucursalesVisiblesEMAIL: TStringField;
    ZQ_SucursalesVisiblesBAJA: TStringField;
    ZQ_SucursalesVisiblesLOGO: TBlobField;
    ZQ_SucursalesVisiblesREPORTE_TITULO: TStringField;
    ZQ_SucursalesVisiblesREPORTE_SUBTITULO: TStringField;
    ZQ_SucursalesVisiblesCOMPROBANTE_TITULO: TStringField;
    ZQ_SucursalesVisiblesCOMPROBANTE_RENGLON1: TStringField;
    ZQ_SucursalesVisiblesCOMPROBANTE_RENGLON2: TStringField;
    ZQ_SucursalesVisiblesCOMPROBANTE_RENGLON3: TStringField;
    ZQ_SucursalesVisiblesCOMPROBANTE_RENGLON4: TStringField;
    ZQ_ValidarFecha_Hora: TZQuery;
    ZQ_ValidarFecha_HoraID: TLargeintField;
    ZQ_ValidarFecha_HoraTABLE_NAME: TStringField;
    ZQ_ValidarFecha_HoraOPERATION: TStringField;
    ZQ_ValidarFecha_HoraDATE_TIME: TDateTimeField;
    ZQ_ValidarFecha_HoraUSER_NAME: TStringField;
    ZQ_ValidarFecha_HoraID_SINCRO_LOTE: TIntegerField;
    ZQ_VerificarCtaCte: TZQuery;
    ZQ_VerificarCtaCteID_CTA_CTE: TIntegerField;
    Conexion_Usuario: TZConnection;
    procedure LoginLogin(Sender: TObject);
    procedure VariablesReportes(Reporte: TQuickRep);
    procedure VariablesComprobantes(Reporte: TQuickRep);
    procedure configMail(Tipo: String; id: integer);
    procedure centrarPanel(form: TForm; panel: TPanel);
    procedure centrarPanelConAjuste(form: TForm; panel: TPanel; ajusteTop: integer);
    procedure buscarSucursalesVisibles();
  private
    auxDecimalSeparator, auxThousandSeparator: Char;
    auxCurrencyDecimals: Integer;
    auxCurrencyString: string;
  public
    colorCampoRequido: TColor;
    provinciaPorDefecto: integer;
    procedure ExportarEXCEL(grilla: TDBGrid);
    procedure mostrarCantidadRegistro(query: TDataSet; var etiqueta: TLabel);
    procedure cargarReporteSucursal(idSucursal: integer);
    procedure configVariables();
    function  verificarCuentaCorriente(id_cliente: integer): boolean;
  end;

var
  DM: TDM;
  SUCURSAL_LOGUEO: integer; //Mantiene el id de la sucursal con la cual me conecte
  enviandoMail: boolean; //TRUE si se esta enviado un mail; FALSE en caso contrario
  sucursales: TEKArrayPermisos; //array de permisos valores que tiene un campo usuario y un campo valor
  TextoPieDePagina: string;
  imp_ad1_nombre: string;  //nombre del label para el impuesto adicional 1 de los productos
  imp_ad2_nombre: string;  //nombre del label para el impuesto adicional 2 de los productos
  notaCredito_diasVencimiento: integer;
  preventa_diasVencimiento: integer = 10;
  preventa_descontar_stock: string = 'NO';
  ctacte_diasVencimiento: integer;
  ctacte_credito: double;
  monto_max_venta: double;
  confirmarNotaPedido: string;
  asociar_pto_salida: string;
  aplicaImprimirFiscal: string;
  imprimirEtiqueta_opcionReporte: integer;
  recargo_factura_vencida: double = 10;


  precio1: string;
  precio2: string;
  precio3: string;
  precio4: string;
  precio5: string;
  precio1_DescRecargo: double = 0;
  precio2_DescRecargo: double = 0;
  precio3_DescRecargo: double = 0;
  precio4_DescRecargo: double = 0;
  precio5_DescRecargo: double = 0;
Const
//  FORMA DE PAGO
  FP_CTA_CTE       = 1;
  FP_NOTA_CREDITO  = 2;
  FP_TRANSFERENCIA = 3;

//  CUENTAS
  CUENTA_CTA_CTE      = 1;
  CUENTA_NOTA_CREDITO = 2;

//  TIPOS DE RELACION
  RELACION_CLIENTE  = 11;
  RELACION_EMPLEADO = 12;
  RELACION_VIAJANTE = 13;
  RELACION_CONTACTO = 14;

//  TIPOS DE COMPROBANTES
  //CAJERO
  CPB_FACTURA        = 11;
  //ABM COMPROBANTES
  CPB_DEVOLUCION     = 12; //
  CPB_FACTURA_COMPRA = 13; //
  CPB_PRESUPUESTO    = 14; //OK se entrega al CLIENTE con los productos cargados para una posible venta. AUTONUMERADO
  CPB_NOTA_PEDIDO    = 15; //OK se envia al PROVEEDOR con los productos encargados para una compra. AUTONUMERADO
  CPB_ORDEN_PAGO     = 18; //OK se entrega al CLIENTE como comprobante de un pago efectuado a este. AUTONUMERADO (comprobante de tercero).
  CPB_RECIBO_COBRO   = 19; //OK se entrega al CLIENTE como comprobante de un pago efectuado por este. AUTONUMERADO
  CPB_REMITO_VENTA   = 20; //se entrega al CLIENTE para documentar la entrega y/o remisi�n de la mercader�a. AUTONUMERADO
  CPB_TRANSFERENCIA  = 21; //  
  //MOVIMIENTOS INTERNOS
  CPB_OTROS_INGRESOS = 16; //OK Se utilizan en la pantallas Movimientos Internos
  CPB_OTROS_EGRESOS  = 17; //OK Se utilizan en la pantallas Movimientos Internos
  //CUENTA CORRIENTE
  CPB_RECIBO_CTA_CTE = 22; //
  CPB_OP_CTA_CTE     = 23; //  
  //TRANSFERIR STOCK
  CPB_TRANSFERIR_STOCK = 24; //Comprobante para hacer la transferencia de stock entre las diferentes posiciones de sucursal
  //COMPROBANTES DE SALDO INICIAL DE CTA CTE
  CPB_SALDO_INI_CLIENTE = 25;
  CPB_SALDO_INI_PROVEED = 26;
  //COMPROBANTES DE DEVOLUCION
  CPB_NOTA_CREDITO     = 27; //NOTA CREDITO
  CPB_NOTA_DEBITO      = 28; //NOTA DEBITO

  ESTADO_SIN_CONFIRMAR = 0;
  ESTADO_CONFIRMADO    = 1;
  ESTADO_ALMACENADO    = 2;
  ESTADO_ANULADO       = 3;

  LONG_COD_BARRAS       = 14;
  LONG_CODIGO           = 14;
implementation

uses UPrincipal, USeleccionarSucursal, UPanelNotificacion, IniFiles,
  UUtilidades;

{$R *.dfm}

procedure TDM.configVariables();
begin
  aplicaImprimirFiscal:= 'VISUAL';
  imprimirEtiqueta_opcionReporte:= 1;

  ZQ_Configuracion_Variables.Open;
  configurarColor(ZQ_Configuracion_Variables, 'clave', 'texto', 'colorCampoRequido', colorCampoRequido);
  configurarString(ZQ_Configuracion_Variables, 'clave', 'texto', 'confirmarNotaPedido', confirmarNotaPedido);
  configurarString(ZQ_Configuracion_Variables, 'clave', 'texto', 'TextoPieDePagina', TextoPieDePagina);
  configurarString(ZQ_Configuracion_Variables, 'clave', 'texto', 'imp_ad1_nombre', imp_ad1_nombre);
  configurarString(ZQ_Configuracion_Variables, 'clave', 'texto', 'imp_ad2_nombre', imp_ad2_nombre);
  configurarInteger(ZQ_Configuracion_Variables, 'clave', 'numero', 'provinciaPorDefecto', provinciaPorDefecto);
  configurarReal(ZQ_Configuracion_Variables, 'clave', 'numero', 'monto_max_venta', monto_max_venta);
  configurarInteger(ZQ_Configuracion_Variables, 'clave', 'numero', 'ctacte_diasVencimiento', ctacte_diasVencimiento);
  configurarReal(ZQ_Configuracion_Variables, 'clave', 'numero', 'ctacte_credito', ctacte_credito);
  configurarInteger(ZQ_Configuracion_Variables, 'clave', 'numero', 'notaCredito_diasVencimiento', notaCredito_diasVencimiento);
  configurarString(ZQ_Configuracion_Variables, 'clave', 'texto', 'asociarStock_puntoSalida', asociar_pto_salida);
  configurarInteger(ZQ_Configuracion_Variables, 'clave', 'numero', 'tipo_reporte_etiquetas', imprimirEtiqueta_opcionReporte);
  configurarString(ZQ_Configuracion_Variables, 'clave', 'texto', 'aplicaImprimirFiscal', aplicaImprimirFiscal);
  configurarInteger(ZQ_Configuracion_Variables, 'clave', 'numero', 'preventa_diasVencimiento', preventa_diasVencimiento);
  configurarReal(ZQ_Configuracion_Variables, 'clave', 'numero', 'recargo_factura_vencida', recargo_factura_vencida);
  configurarString(ZQ_Configuracion_Variables, 'clave', 'texto', 'preventa_descontar_stock', preventa_descontar_stock);

  configurarString(ZQ_Configuracion_Variables, 'clave', 'texto', 'PRECIO1', precio1);
  configurarString(ZQ_Configuracion_Variables, 'clave', 'texto', 'PRECIO2', precio2);
  configurarString(ZQ_Configuracion_Variables, 'clave', 'texto', 'PRECIO3', precio3);
  configurarString(ZQ_Configuracion_Variables, 'clave', 'texto', 'PRECIO4', precio4);
  configurarString(ZQ_Configuracion_Variables, 'clave', 'texto', 'PRECIO5', precio5);

  configurarReal(ZQ_Configuracion_Variables, 'clave', 'numero', 'PRECIO1', precio1_DescRecargo);
  configurarReal(ZQ_Configuracion_Variables, 'clave', 'numero', 'PRECIO2', precio2_DescRecargo);
  configurarReal(ZQ_Configuracion_Variables, 'clave', 'numero', 'PRECIO3', precio3_DescRecargo);
  configurarReal(ZQ_Configuracion_Variables, 'clave', 'numero', 'PRECIO4', precio4_DescRecargo);
  configurarReal(ZQ_Configuracion_Variables, 'clave', 'numero', 'PRECIO5', precio5_DescRecargo);

  ZQ_Configuracion_Variables.Close;
end;


procedure TDM.LoginLogin(Sender: TObject);
var
  aux, logo_fondo: string;
  i: integer;
begin
  SkinData1.Active:= true;
  Application.CreateForm(TFPrincipal, FPrincipal);

  Conexion_Usuario.HostName:= EKUsrLogin.ConeccionUsuario.HostName;
  Conexion_Usuario.Database:= EKUsrLogin.ConeccionUsuario.Database;
  Conexion_Usuario.User:= EKUsrLogin.ConeccionUsuario.User;
  Conexion_Usuario.Password:= EKUsrLogin.ConeccionUsuario.Password;
  Conexion_Usuario.Protocol:= EKUsrLogin.ConeccionUsuario.Protocol;

  auxDecimalSeparator:= DecimalSeparator;
  auxCurrencyDecimals:= CurrencyDecimals;
  auxThousandSeparator:= ThousandSeparator;
  auxCurrencyString:= CurrencyString;

  //seteo de variables globales
  enviandoMail:= false;          //setea la bandera en false indicando q no se esta enviando mail
  configVariables;

  //cargo la imagen de fondo del sistema
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


//configuro los reportes para la impresion
procedure TDM.VariablesReportes(Reporte: TQuickRep);
var
  Etiqueta : TQRLabel;
  Form : TForm;
begin
  Form := Tform(Reporte.Owner);
  Etiqueta:= TQRLabel(Form.FindComponent(reporte.Name+'_Titulo'));
  Etiqueta.Caption:= ZQ_SucursalREPORTE_TITULO.AsString;

  Etiqueta:= TQRLabel(Form.FindComponent(reporte.Name+'_Subtitulo'));
  Etiqueta.Caption:= ZQ_SucursalREPORTE_SUBTITULO.AsString;
end;


//configuro los comprobantes para la impresion (PRESUPUESTOS, RECIBOS, ORDEN PAGO, etc)
procedure TDM.VariablesComprobantes(Reporte: TQuickRep);
var
  Etiqueta : TQRLabel;
  Form : TForm;
begin
  Form := Tform(Reporte.Owner);
  Etiqueta:= TQRLabel(Form.FindComponent(reporte.Name+'_Titulo'));
  Etiqueta.Caption:= ZQ_SucursalCOMPROBANTE_TITULO.AsString;

  Etiqueta:= TQRLabel(Form.FindComponent(reporte.Name+'_Renglon1'));
  Etiqueta.Caption:= ZQ_SucursalCOMPROBANTE_RENGLON1.AsString;

  Etiqueta:= TQRLabel(Form.FindComponent(reporte.Name+'_Renglon2'));
  Etiqueta.Caption:= ZQ_SucursalCOMPROBANTE_RENGLON2.AsString;

  Etiqueta:= TQRLabel(Form.FindComponent(reporte.Name+'_Renglon3'));
  Etiqueta.Caption:= ZQ_SucursalCOMPROBANTE_RENGLON3.AsString;

  Etiqueta:= TQRLabel(Form.FindComponent(reporte.Name+'_Renglon4'));
  Etiqueta.Caption:= ZQ_SucursalCOMPROBANTE_RENGLON4.AsString;
end;


//PROCEDIMIENTO PARA EJECUTAR ANTES DE EXPORTAR LAS GRILLAS A EXCEL.
//LO QUE HACE ES SACAR LOS CURRENCIS DE LOS CAMPOS FLOAT Y DESPUES
//LOS VUELVE A SETEAR
procedure TDM.ExportarEXCEL(grilla: Tdbgrid);
begin
  //seteo para exportar a excel
//  ThousandSeparator:= #0;
//  CurrencyString:= #0;
//  CurrencyFormat := 0;

  ExcelExport.DBGrid:= grilla;
  ExcelExport.Select;

  //vuelvo a la configuracion original antes de exportar
//  CurrencyString := '$';
//  CurrencyFormat := 2;
//  ThousandSeparator := ',';
end;


procedure TDM.mostrarCantidadRegistro(query: TDataSet; var etiqueta: TLabel);
begin
  etiqueta.Caption:= '    Cantidad de Registros: '+inttostr(query.RecordCount);
end;


//cargo los datos de la sucursal
procedure TDM.cargarReporteSucursal(idSucursal: integer);
begin
  ZQ_Sucursal.Close;
  ZQ_Sucursal.ParamByName('id_sucursal').AsInteger:= idSucursal;
  ZQ_Sucursal.open;
end;


procedure TDM.centrarPanel(form: TForm; panel: TPanel);
begin
  panel.Left:= (screen.Width div 2)  - (panel.Width div 2);
  panel.Top:=  (screen.Height div 2) - (panel.Height div 2)-40;
end;


procedure TDM.centrarPanelConAjuste(form: TForm; panel: TPanel; ajusteTop: integer);
begin
  panel.Left:= (screen.Width div 2)  - (panel.Width div 2);
  panel.Top:=  (screen.Height div 2) - (panel.Height div 2)-ajusteTop;
end;


procedure TDM.buscarSucursalesVisibles;
var
  i: integer;
  where: string;
  salir: boolean;
begin
  //por defecto traigo la sucursal del logueo
  where:= 'where s.id_sucursal = '+IntToStr(SUCURSAL_LOGUEO);
  salir:= false;
  for  i:= 0 to Length(sucursales) - 1 do //Recorro todas las sucursales del usuario seleccionado
  begin
    if not salir then
    begin
      if (StrToInt(sucursales[i].valor) = 0) then //si tengo permisos para todas las sucursales
      begin
        where:= '';
        salir:= true;
      end
      else
        where:= where + ' or s.id_sucursal = '+sucursales[i].valor;
    end;
  end;

  ZQ_SucursalesVisibles.SQL.Text:= 'select s.* from sucursal s '+where;
  ZQ_SucursalesVisibles.Close;
  ZQ_SucursalesVisibles.Open;
end;


function TDM.verificarCuentaCorriente(id_cliente: integer): boolean;
begin
  result:= True;

  ZQ_VerificarCtaCte.Close;
  ZQ_VerificarCtaCte.ParamByName('id_cliente').AsInteger:= id_cliente;
  dm.EKModelo.abrir(ZQ_VerificarCtaCte);
  if ZQ_VerificarCtaCte.IsEmpty then
    Result:= false;
end;

end.

