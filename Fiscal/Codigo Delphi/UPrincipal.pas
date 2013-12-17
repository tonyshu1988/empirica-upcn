unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EKIni, ZConnection, EKModelo, StdCtrls, ExtCtrls, OleCtrls, StrUtils,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Buttons, ComCtrls, Grids, DBGrids, EPSON_Impresora_Fiscal_TLB, ComObj,
  FiscalPrinterLib_TLB, UDM;

type
  TFPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    editParametros: TEdit;
    btnCierreZ: TButton;
    btnCierreX: TButton;
    btnAuditoria: TButton;
    editNumeroComprobante: TEdit;
    btnFactura: TButton;
    lblErrorDriver: TLabel;
    btnAbrirPuerto: TBitBtn;
    btnCerrarPuerto: TBitBtn;
    lblFactura: TLabel;
    DateTimeFechaDesde: TDateTimePicker;
    DateTimeFechaHasta: TDateTimePicker;
    ComboBoxTipoAuditoria: TComboBox;
    btnCancelarFactura: TButton;
    gBoxImpresora: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    cBoxImpresora_Marca: TComboBox;
    cBoxImpresora_Velocidad: TComboBox;
    cBoxImpresora_Puerto: TComboBox;
    Label4: TLabel;
    Label6: TLabel;
    cBoxImpresora_Modelo: TComboBox;
    MemoLog: TMemo;
    btnFactura_OS: TButton;
    editNumeroComprobante_OS: TEdit;
    lblFactura_OS: TLabel;
    Hasar: THASAR;
    procedure FormCreate(Sender: TObject);
    procedure leerParametros();
    procedure leerArchivoIni();
    procedure cierreZ();
    procedure cierreX();
    procedure facturar(marca: string);
    procedure facturaEpson(modelo: string);
    procedure facturaHasar(modelo: string);
    procedure facturar_OS(marca: string);
    procedure facturaEpson_OS(modelo: string);
    procedure facturaHasar_OS(modelo: string);
    procedure auditoria();
    procedure btnCierreZClick(Sender: TObject);
    procedure btnCierreXClick(Sender: TObject);
    procedure btnAuditoriaClick(Sender: TObject);
    function abrirImpresora: integer;
    function cerrarImpresora: integer;
    procedure btnFacturaClick(Sender: TObject);
    procedure btnAbrirPuertoClick(Sender: TObject);
    procedure btnCerrarPuertoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mostrarError(mensaje, titulo: string);
    procedure cancelarTicket(marca: string);
    procedure btnCancelarFacturaClick(Sender: TObject);
    procedure cBoxImpresora_MarcaChange(Sender: TObject);
    procedure cBoxImpresora_PuertoChange(Sender: TObject);
    procedure cBoxImpresora_VelocidadChange(Sender: TObject);
    procedure configurarImpresora();
    procedure ejecutarComando();
    procedure cBoxImpresora_ModeloChange(Sender: TObject);
    procedure HasarImpresoraNoResponde(ASender: TObject; CantidadReintentos: Integer);
    procedure HasarErrorFiscal(ASender: TObject; Flags: Integer);
    procedure HasarErrorImpresora(ASender: TObject; Flags: Integer);
    procedure HasarFaltaPapel(Sender: TObject);
    procedure btnFactura_OSClick(Sender: TObject);
  private
    PrinterFiscal_Epson: _PrinterFiscalDisp;
    db_name, db_host, db_pass, db_user: string;
    if_puerto, if_marca, if_modelo: string;
    if_velocidad: integer;
    preview: boolean;
    id_cpb, impresora, audModo, audFDesde, audFHasta: string;
    resultado: boolean;
    productoDetallado: boolean;
    mensajeError, tituloError: string;
    puntoVenta: widestring;
    comando: widestring;
    ID_FISCAL: integer;
    marcaOCX: string;
  public
  end;

var
  FPrincipal: TFPrincipal;

const
  PuertoIF = 1;

implementation

uses IniFiles, UUtilidades, Math, DateUtils, PrecedimientosHasar;

{$R *.dfm}

//mensaje de error, con el botón "Aceptar"

procedure TFPrincipal.mostrarError(mensaje, titulo: string);
begin
  mensaje:= mensaje + #13 + #13 + 'Para mas información contacte al soporte tecnico.';
  application.MessageBox(pchar(mensaje), pchar(titulo), (MB_OK + MB_ICONSTOP));
end;


procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  //CONFIGURACION POR DEFECTO
  if_puerto:= '1';
  if_velocidad:= 9600;
  if_marca:= '';
  if_modelo:= '';

  leerArchivoIni();
  leerParametros();
  configurarImpresora();
  abrirImpresora();
  ejecutarComando();

  DateTimeFechaDesde.Date:= StartOfTheMonth(DM.EKModelo.Fecha);
  DateTimeFechaHasta.Date:= EndOfTheMonth(DM.EKModelo.Fecha);
end;


procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MemoLog.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'Log.txt');
  Application.ProcessMessages;
  cerrarImpresora();
end;


procedure TFPrincipal.leerArchivoIni();
begin
  with DM do
  begin
    EKIni.Path:= ExtractFilePath(Application.ExeName);
    EKIni.abrir;

    db_name:= EKIni.Ini.ReadString('DB', 'db_name', '');
    db_host:= EKIni.Ini.ReadString('DB', 'db_host', '127.0.0.1');
    db_user:= EKIni.Ini.ReadString('DB', 'db_user', 'SYSDBA');
    db_pass:= EKIni.Ini.ReadString('DB', 'db_pass', 'masterkey');
    marcaOCX:= EKIni.Ini.ReadString('OCX', 'marca', '');

    conexion.Connected:= false;
    conexion.Database:= db_name;
    conexion.HostName:= db_host;
    conexion.Password:= db_pass;
    conexion.User:= db_user;
    conexion.Connected:= true;

    EKIni.cerrar;

    MemoLog.Lines.Add('LeerArchivoIni();');
    MemoLog.Lines.Add(' - conexion.Database:= ' + db_name + ' | conexion.HostName:= ' + db_host);
  end
end;


procedure TFPrincipal.leerParametros;
var
  i: integer;
begin
  //inicializo los parametros
  preview:= false;
  comando:= '';
  id_cpb:= '';
  impresora:= '';
  audModo:= '';
  audFDesde:= '';
  audFHasta:= '';
  ID_FISCAL:= -1;

  //leo los parametros si es que se llama desde otro modulo
  if ParamCount > 0 then
  begin
    for i:= 1 to ParamCount do
    begin
      editParametros.Text:= editParametros.Text + ' ' + ParamStr(i);

      if LeftStr(ParamStr(i), 2) = '-c' then //-c = Comando. Z(Cierre Z), X(Cierre X), A(Auditoria Z), F(Impresion de Factura), O(Factura Obra Social)
        comando:= RightStr(ParamStr(i), length(ParamStr(i)) - 2)
      else if LeftStr(ParamStr(i), 2) = '-l' then //-l = Nro de comprobante a imprimir. Solo con comando F o O
        id_cpb:= RightStr(ParamStr(i), length(ParamStr(i)) - 2)
      else if LeftStr(ParamStr(i), 2) = '-t' then //-t = Tipo de auditoria Z (T=Total general; D=Detallado). Solo con comando A
        audModo:= RightStr(ParamStr(i), length(ParamStr(i)) - 2)
      else if LeftStr(ParamStr(i), 2) = '-d' then //-d = Fecha desde de la auditoria Z. Solo con comando A
        audFDesde:= RightStr(ParamStr(i), length(ParamStr(i)) - 2)
      else if LeftStr(ParamStr(i), 2) = '-h' then //-h = Fecha hasta de la auditoria Z. Solo con comando A
        audFHasta:= RightStr(ParamStr(i), length(ParamStr(i)) - 2)
      else if LeftStr(ParamStr(i), 2) = '-p' then //-p = si se muestra el panel principal
        preview:= true
      else if LeftStr(ParamStr(i), 3) = '-id' then //-id = id de la impresora seleccionada
        ID_FISCAL:= strtoint(RightStr(ParamStr(i), length(ParamStr(i)) - 3));
    end;
  end
  else //si ejecuto la aplicacion desde el exe sin parametros
  begin
    preview:= true;
    Panel1.Enabled:= true;
    gBoxImpresora.Visible:= true;
    cBoxImpresora_MarcaChange(self);
    cBoxImpresora_ModeloChange(self);
    cBoxImpresora_PuertoChange(self);
    cBoxImpresora_VelocidadChange(self);
  end;

  MemoLog.Lines.Add('LeerParametros();');
  MemoLog.Lines.Add(' - comando:= ' + comando + ' | id_cpb:= ' + id_cpb + ' | audModo:= ' + audModo + ' | audFDesde:= ' + audFDesde + ' | audFHasta:= ' + audFHasta + ' | ID_FISCAL:= ' + IntToStr(ID_FISCAL));
end;


procedure TFPrincipal.configurarImpresora();
begin
  with DM do
  try
    if UpperCase(marcaOCX) = 'EPSON' then
      PrinterFiscal_Epson:= CreateComObject(CLASS_PrinterFiscal) as _PrinterFiscalDisp;

    tituloError:= 'ERROR MODULO FISCAL';
    ZQ_Config.Close;
    EKModelo.abrir(ZQ_Config);
    configurarBoolean(ZQ_Config, 'clave', 'texto', 'ticketFacturaDetallada', 'SI', productoDetallado);

    ZQ_Config_Fiscal.Close;
    ZQ_Config_Fiscal.ParamByName('id_fiscal').AsInteger:= ID_FISCAL;
    EKModelo.abrir(ZQ_Config_Fiscal);
    if not ZQ_Config_Fiscal.IsEmpty then
    begin
      if_puerto:= ZQ_Config_FiscalPUERTO.AsString;
      if_velocidad:= ZQ_Config_FiscalVELOCIDAD.AsInteger;
      if_marca:= ZQ_Config_FiscalMARCA.AsString;
      if_modelo:= ZQ_Config_FiscalMODELO.AsString;
      ZQ_Config_Fiscal.Close;

      if (if_modelo <> 'P-715F') and (if_modelo <> 'P-330F') and (if_modelo <> 'TM-U220AF') then
      begin
        mensajeError:= 'El Modelo ' + if_modelo + ' no está soportado por la aplicación.';
        mostrarError(mensajeError, tituloError);
        Application.Terminate;
      end;
    end
    else if not preview then
    begin
      mensajeError:= 'No se ha configurado ninguna Impresora Fiscal.';
      mostrarError(mensajeError, tituloError);
      Application.Terminate;
    end;
  except
    on e: exception do
    begin
      mensajeError:= 'Error de Base de Datos ' + db_host + ':' + db_name +
        #13 + 'Descripción:' +
        #13 + e.Message;

      mostrarError(mensajeError, tituloError);
      Application.Terminate;
    end;
  end;

  MemoLog.Lines.Add('ConfigurarImpresora();');
  MemoLog.Lines.Add(' - if_puerto:= ' + if_puerto + ' | if_velocidad:= ' + IntToStr(if_velocidad) + ' | if_marca:= ' + if_marca + ' | if_modelo:= ' + if_modelo);
end;


function TFPrincipal.abrirImpresora: integer;
begin
  Result:= -1;
  if if_marca = '' then
    exit;

  if (if_marca = 'EPSON') then
  begin
    lblErrorDriver.Caption:= '';
    PrinterFiscal_Epson.PortNumber:= strtoint(if_puerto);
    PrinterFiscal_Epson.BaudRate:= IntToStr(if_velocidad);
    Result:= 0;
  end;

  if (if_marca = 'HASAR') then
  begin
    lblErrorDriver.Caption:= '';
    Hasar.PrecioBase:= false; //Define el modo de trabajo de los precios. true = trabaja con base imponible, false = trabaja con precio final (impuestos incluídos)
    Hasar.ReintentoConstante:= true;
    Hasar.Reintentos:= 3;
    Hasar.Puerto:= strtoint(if_puerto);
    Hasar.Baudios:= if_velocidad;
    if (if_modelo = 'P-330F') then
      Hasar.Modelo:= MODELO_P330
    else if (if_modelo = 'P-715F') then
      Hasar.Modelo:= MODELO_715;

    Result:= 0;
  end;

  MemoLog.Lines.Add('AbrirImpresora();');
  MemoLog.Lines.Add(' - ' + if_marca + ' ' + if_modelo);
end;


procedure TFPrincipal.ejecutarComando();
begin
  Visible:= preview;
  Enabled:= preview;

  try
    if comando <> '' then
    begin
      if comando = 'Z' then
        cierreZ()
      else if comando = 'X' then
        cierreX()
      else if comando = 'F' then
        facturar(if_marca)
      else if comando = 'O' then
        facturar_OS(if_marca)
      else if comando = 'A' then
        auditoria();
    end;
  except
    begin
      mensajeError:= 'Comando a ejecutar incorrecto, verifique. Z(Cierre Z), X(Cierre X), A(Auditoria), F(Factura)';
      mostrarError(mensajeError, tituloError);
    end
  end;

  if not visible then
  begin
    MemoLog.Lines.SaveToFile(ExtractFilePath(Application.ExeName) + 'Log.txt');
    Application.ProcessMessages;
    cerrarImpresora();

    Application.Terminate;
  end;
end;


function TFPrincipal.cerrarImpresora: integer;
begin
  Result:= -1;
  if if_marca = '' then
    exit;

  if (if_marca = 'EPSON') then
  begin
    lblErrorDriver.Caption:= '';
    Result:= 0;
  end
end;


//************************************
//  CIERRE Z
//************************************
procedure TFPrincipal.cierreZ;
var
  auxTipo, auxImprimir, auxEstado: WideString;
begin
  MemoLog.Lines.Add('EjecutarComando(CierreZ);');

  if if_marca = '' then
    exit;

  if (if_marca = 'EPSON') then
  begin
    auxTipo:= 'Z';
    auxImprimir:= 'P';
    auxEstado:= 'N';
    MemoLog.Lines.Add(' - PrinterFiscal_Epson.CloseJournal(Z, P);');
    if PrinterFiscal_Epson.CloseJournal(auxTipo, auxImprimir) then
      PrinterFiscal_Epson.Status(auxEstado);
  end;

  if (if_marca = 'HASAR') then
  begin
    MemoLog.Lines.Add(' - Hasar.Comenzar;');
    Hasar.Comenzar;
    MemoLog.Lines.Add(' - Hasar.TratarDeCancelarTodo;');
    Hasar.TratarDeCancelarTodo;
    MemoLog.Lines.Add(' - Hasar.ReporteZ;');
    Hasar.ReporteZ;
    MemoLog.Lines.Add(' - Hasar.Finalizar;');
    Hasar.Finalizar;
  end;
end;


//************************************
//  CIERRE X
//************************************
procedure TFPrincipal.cierreX;
var
  auxTipo, auxImprimir, auxEstado: WideString;
begin
  MemoLog.Lines.Add('EjecutarComando(CierreX);');

  if if_marca = '' then
    exit;

  if (if_marca = 'EPSON') then
  begin
    auxTipo:= 'X';
    auxImprimir:= 'P';
    auxEstado:= 'N';
    MemoLog.Lines.Add(' - PrinterFiscal_Epson.CloseJournal(X, P);');
    if PrinterFiscal_Epson.CloseJournal(auxTipo, auxImprimir) then
      PrinterFiscal_Epson.Status(auxEstado);
  end;

  if (if_marca = 'HASAR') then
  begin
    MemoLog.Lines.Add(' - Hasar.Comenzar;');
    Hasar.Comenzar;
    MemoLog.Lines.Add(' - Hasar.TratarDeCancelarTodo;');
    Hasar.TratarDeCancelarTodo;
    MemoLog.Lines.Add(' - Hasar.ReporteX;');
    Hasar.ReporteX;
    MemoLog.Lines.Add(' - Hasar.Finalizar;');
    Hasar.Finalizar;
  end;
end;


//************************************
//  AUDITORIA
//************************************
procedure TFPrincipal.auditoria;
var
  auxEstado, auxMode, auxFdesde, auxFHasta, auxTipo: WideString;
  auxFDesdeD, auxFHastaD: TDateTime;
  anio, mes, dia: integer;
begin
  MemoLog.Lines.Add('EjecutarComando(Auditoria);');

  if if_marca = '' then
    exit;

  if (if_marca = 'EPSON') then
  begin
    auxTipo:= 'F';
    auxMode:= audModo;
    auxFdesde:= audFDesde;
    auxFHasta:= audFHasta;
    auxEstado:= 'N';
    MemoLog.Lines.Add(' - PrinterFiscal_Epson.Audit(F, ' + auxMode + ', ' + auxFdesde + ', ' + auxFHasta + ');');
    if PrinterFiscal_Epson.Audit(auxTipo, auxMode, auxFdesde, auxFHasta) then
      PrinterFiscal_Epson.Status(auxEstado);
  end;

  if (if_marca = 'HASAR') then
  begin
    anio:= StrToInt(MidStr(audFDesde, 1, 2)) + 2000;
    mes:= StrToInt(MidStr(audFDesde, 3, 2));
    dia:= StrToInt(MidStr(audFDesde, 5, 2));
    auxFDesdeD:= EncodeDate(anio, mes, dia);

    anio:= StrToInt(MidStr(audFHasta, 1, 2)) + 2000;
    mes:= StrToInt(MidStr(audFHasta, 3, 2));
    dia:= StrToInt(MidStr(audFHasta, 5, 2));
    auxFHastaD:= EncodeDate(anio, mes, dia);

    MemoLog.Lines.Add(' - Hasar.Comenzar;');
    Hasar.Comenzar;
    MemoLog.Lines.Add(' - Hasar.TratarDeCancelarTodo;');
    Hasar.TratarDeCancelarTodo;
    if audModo = 'T' then //T = Reporte total general
    begin
      MemoLog.Lines.Add(' - Hasar.ReporteZPorFechas(' + auxFdesde + ', ' + auxFHasta + ', false);');
      Hasar.ReporteZPorFechas(auxFDesdeD, auxFHastaD, false);
    end
    else if audModo = 'D' then //D = Reporte detallado
    begin
      MemoLog.Lines.Add(' - Hasar.ReporteZPorFechas(' + auxFdesde + ', ' + auxFHasta + ', true);');
      Hasar.ReporteZPorFechas(auxFDesdeD, auxFHastaD, true);
    end;
    MemoLog.Lines.Add(' - Hasar.Finalizar;');
    Hasar.Finalizar;
  end;
end;


//************************************
//  FACTURA
//************************************
procedure TFPrincipal.facturar(marca: string);
begin
  with DM do
  begin
    if if_marca = '' then
      exit;

    ZQ_Factura.Close;
    ZQ_Factura.ParamByName('id_comprobante').AsInteger:= strtoint(id_cpb);
    ZQ_Factura.Open;

    ZQ_Items.Close;
    ZQ_Items.ParamByName('id_comprobante').AsInteger:= strtoint(id_cpb);
    ZQ_Items.Open;

    ZQ_FormaPago.Close;
    ZQ_FormaPago.ParamByName('id_comprobante').AsInteger:= strtoint(id_cpb);
    ZQ_FormaPago.Open;

    if ZQ_Factura.IsEmpty then
    begin
      mensajeError:= 'El Comprobante Código ' + rellenar(id_cpb, '0', 8) + ' es inexistente.';
      mostrarError(mensajeError, tituloError);
      exit;
    end;

    if (marca = 'EPSON') then
      facturaEpson(if_modelo);
    if (marca = 'HASAR') then
      facturaHasar(if_modelo);
  end
end;


//************************************
//  FACTURA OS
//************************************
procedure TFPrincipal.facturar_OS(marca: string);
begin
  with DM do
  begin
    if if_marca = '' then
      exit;

    ZQ_FacturaOS.Close;
    ZQ_FacturaOS.ParamByName('id_comprobante').AsInteger:= strtoint(id_cpb);
    ZQ_FacturaOS.Open;

    ZQ_ItemsOS.Close;
    ZQ_ItemsOS.ParamByName('id_comprobante').AsInteger:= strtoint(id_cpb);
    ZQ_ItemsOS.Open;

    if ZQ_FacturaOS.IsEmpty then
    begin
      mensajeError:= 'El Comprobante Código ' + rellenar(id_cpb, '0', 8) + ' es inexistente.';
      mostrarError(mensajeError, tituloError);
      exit;
    end;

    if (marca = 'EPSON') then
      facturaEpson_OS(if_modelo);
    if (marca = 'HASAR') then
      facturaHasar_OS(if_modelo);
  end
end;


//************************************
//  CANCELAR IMPRESION
//************************************
procedure TFPrincipal.cancelarTicket(marca: string);
var
  aux1, aux2, aux3: widestring;
begin
  MemoLog.Lines.Add('EjecutarComando(CancelarTicket);');

  if marca = 'EPSON' then
  begin
    aux1:= 'CANCELADO';
    aux2:= '000000000000';
    aux3:= 'C';

    MemoLog.Lines.Add(' - PrinterFiscal_Epson.SendInvoicePayment(CANCELADO, 000000000000, C);');
    PrinterFiscal_Epson.SendInvoicePayment(aux1, aux2, aux3);
  end;

  if marca = 'HASAR' then
  begin
    MemoLog.Lines.Add(' - Hasar.TratarDeCancelarTodo;');
    Hasar.TratarDeCancelarTodo;
  end;
end;


//************************************
//  COMPONENTES MODO GRAFICO
//************************************
procedure TFPrincipal.btnCierreZClick(Sender: TObject);
begin
  cierreZ;
end;

procedure TFPrincipal.btnCierreXClick(Sender: TObject);
begin
  cierreX;
end;

procedure TFPrincipal.btnAuditoriaClick(Sender: TObject);
var
  anio, mes, dia: string;
begin
  anio:= RightStr(IntToStr(YearOf(DateTimeFechaDesde.Date)), 2);
  mes:= rellenar(IntToStr(MonthOf(DateTimeFechaDesde.Date)), '0', 2);
  dia:= rellenar(IntToStr(DayOf(DateTimeFechaDesde.Date)), '0', 2);
  audFDesde:= anio + mes + dia;

  anio:= RightStr(IntToStr(YearOf(DateTimeFechaHasta.Date)), 2);
  mes:= rellenar(IntToStr(MonthOf(DateTimeFechaHasta.Date)), '0', 2);
  dia:= rellenar(IntToStr(DayOf(DateTimeFechaHasta.Date)), '0', 2);
  audFHasta:= anio + mes + dia;

  if ComboBoxTipoAuditoria.ItemIndex = 0 then
    audModo:= 'T'
  else
    audModo:= 'D';

  auditoria;
end;

procedure TFPrincipal.btnFacturaClick(Sender: TObject);
begin
  id_cpb:= editNumeroComprobante.Text;
  facturar(if_marca);
end;

procedure TFPrincipal.btnFactura_OSClick(Sender: TObject);
begin
  id_cpb:= editNumeroComprobante_OS.Text;
  facturar_OS(if_marca);
end;

procedure TFPrincipal.btnAbrirPuertoClick(Sender: TObject);
begin
  abrirImpresora();
end;

procedure TFPrincipal.btnCerrarPuertoClick(Sender: TObject);
begin
  cerrarImpresora();
end;

procedure TFPrincipal.btnCancelarFacturaClick(Sender: TObject);
begin
  cancelarTicket(if_marca);
end;

procedure TFPrincipal.cBoxImpresora_MarcaChange(Sender: TObject);
begin
  if_marca:= cBoxImpresora_Marca.Text;
end;

procedure TFPrincipal.cBoxImpresora_ModeloChange(Sender: TObject);
begin
  if_modelo:= cBoxImpresora_Modelo.Text;
end;

procedure TFPrincipal.cBoxImpresora_PuertoChange(Sender: TObject);
begin
  if_puerto:= cBoxImpresora_Puerto.Text;
end;

procedure TFPrincipal.cBoxImpresora_VelocidadChange(Sender: TObject);
begin
  if_velocidad:= strtoint(cBoxImpresora_Velocidad.Text);
end;
//************************************
//  FIN COMPONENTES MODO GRAFICO
//************************************


//************************************
//  FACTURAR VENTAS EPSON
//************************************
procedure TFPrincipal.facturaEpson(modelo: string);
var
  //VARIABLES PARA ABRIR FACTURA
  TipoDocumento: widestring; // Tipo de documento fiscal a realizar. F=Ticket-factura; M=Nota de crédito; T=Ticket-factura
  TipoPapel: widestring; // Tipo de salida impresa para factura fiscal o recibo. C=Formulario continuo; S=Hoja suelta o slip
  TipoLetra: widestring; // Letra del documento fiscal (A,B o C)
  CantidadCopias: widestring; // Cantidad de copias que se deben imprimir (1 a 5)
  TipoFormulario: widestring; // Tipo de formulario que se utiliza para la factura emitidas en hoja suelta o formulario continuo. A=Autoimpreso; F=Formulario pre-impreso; P=La impresora fiscal debe dibujar las líneas
  TipoFuente: widestring; // Tamaño de los caracteres que se van a utilizar en toda la factura en CPI (10, 12, 17)
  TipoIVAEmisor: widestring; // Responsabilidad frente al IVA del EMISOR (I, R, N, E, M)
  TipoIVAComprador: widestring; // Responsabilidad frente al IVA del COMPROADOR (I, R, N, E, M, F, S)
  NombreComprador1: widestring; // Nombre comercial del comprador línea 1 (max 40 bytes)
  NombreComprador2: widestring; // Nombre comercial del comprador línea 2 (max 40 bytes)
  TpoDocComprador: widestring; // Tipo de documento del comprador (CUIT, CUIL, DNI) (max 6 bytes)
  NroDocComprador: widestring; // CUIT o Numero documento del comprador (max 11 bytes)
  BienDeUso: widestring; // Bien de uso (B o N)
  DomicilioComprador1: widestring; // Domicilio del comprador, línea 1 (max 40 bytes)
  DomicilioComprador2: widestring; // Domicilio del comprador, línea 2 (max 40 bytes)
  DomicilioComprador3: widestring; // Domicilio del comprador, línea 3 (max 40 bytes)
  LineaVariable1: widestring; // Línea 1 de texto variable (max 40 bytes)
  LineaVariable2: widestring; // Línea 1 de texto variable (max 40 bytes)
  TipoTablaBien: widestring; // Formato para almacenar los datos (C o G)
  //VARIABLES PARA ENVIAR ITEMS
  DescripcionProducto: widestring; // Descripción del producto (max 20 bytes)
  Cantidad: double;
  CantidadWide: widestring; // Cantidad vendida
  PrecioUnitario: double;
  PrecioUnitarioWide: widestring; // Precio Unitario
  TasaIva: double;
  TasaIvaWide: widestring; // Tasa del iva
  CalificadorDeItem: widestring; // Calificador de la operación. M = Monto agregado mercadería (SUMA); m = Anula el item vendido (RESTA); R = Bonificacion (RESTA); r = anula una bonificacion (SUMA)
  CantidadDeBultos: integer;
  CantidadDeBultosWide: widestring; // Canidad de bultos
  ImpuestosInternos: double;
  ImpuestosInternosWide: widestring; // Impuestos internos porcentuales
  LineaDescExtra1: widestring; // Linea 1 descripcion complementaria del item (max 30 bytes)
  LineaDescExtra2: widestring; // Linea 2 descripcion complementaria del item (max 30 bytes)
  LineaDescExtra3: widestring; // Linea 3 descripcion complementaria del item (max 30 bytes)
  TasaAcrecentamiento: double;
  TasaAcrecentamientoWide: widestring; // Tasa Acrecentamiento
  ImpuestosIntFijos: double;
  ImpuestosIntFijosWide: widestring; // Impuestos Internos Fijos
  //SUBTOTAL
  auxSubtotal1: widestring;
  auxSubtotal2: widestring;
  //VARIABLES PARA ENVIAR FORMA PAGO
  DescripcionFPago: widestring; // Texto con descripcion del pago (max 25 bytes)
  MontoFPago: double;
  MontoFPagoWide: widestring; // monto
  CalificadorFPago: widestring; // Calificador del item de línea. C=Cancelar el comprobante, T=Suma al importe pagado, t=Anula un pago hecho con T, D=Realiza un DESCUENTO GLOBAL de monto fijo, R=Realiza un RECARGO GLOBAL de monto fijo
  //CERRAR FACTURA
  auxCerrar: widestring;
  //VARIABLES PARA ACTUALIZAR COMPROBANTE
  numeroCpb: widestring;
  auxEstado: widestring;
  descuento_redondeoWide: widestring;
  descuento_redondeo: double;
  marca: string;
  acumulado_fpago: double;
  acumulado_item: double;
  acumulado_iva: double;
begin
  with DM do
  begin
    MemoLog.Lines.Add('EjecutarComando(facturaEpson);');
    marca:= 'EPSON';

  //PASO 1: ABRIR FACTURA
    TipoDocumento:= 'T'; // T = Ticket-factura
    TipoPapel:= 'C'; //C = Formulario continuo

  //TIPO DE FACTURA A, B o C
    if (ZQ_FacturaTIPO_FACTURA.IsNull) or (trim(ZQ_FacturaTIPO_FACTURA.AsString) = '') then
      TipoLetra:= 'B'
    else
      TipoLetra:= ZQ_FacturaTIPO_FACTURA.AsString;

    CantidadCopias:= '1';
    TipoFormulario:= 'P'; //P = La impresora fiscal debe dibujar las líneas
    TipoFuente:= '17';
    TipoIVAEmisor:= 'I'; //I = Responsable Inscripto

    if (ZQ_FacturaLETRA_FISCAL.IsNull) or (trim(ZQ_FacturaLETRA_FISCAL.AsString) = '') then
      TipoIVAComprador:= 'F' //por defecto consumidor final
    else
      TipoIVAComprador:= ZQ_FacturaLETRA_FISCAL.AsString;

    if (ZQ_FacturaNOMBRE.IsNull) or (trim(ZQ_FacturaNOMBRE.AsString) = '') then
      NombreComprador1:= 'CONSUMIDOR FINAL'
    else
      NombreComprador1:= LeftStr(ZQ_FacturaNOMBRE.AsString, 40);

    NombreComprador2:= char(127);

    if (ZQ_FacturaNOMBRE_TIPO_DOC.IsNull) or (trim(ZQ_FacturaNOMBRE_TIPO_DOC.AsString) = '') then
      TpoDocComprador:= 'DNI'
    else
      TpoDocComprador:= LeftStr(ZQ_FacturaNOMBRE_TIPO_DOC.AsString, 6);

    if (ZQ_FacturaNUMERO_DOC.IsNull) or (trim(ZQ_FacturaNUMERO_DOC.AsString) = '') then
      NroDocComprador:= 'XXX'
    else
      NroDocComprador:= LeftStr(ZQ_FacturaNUMERO_DOC.AsString, 11);

    if not ((ZQ_FacturaCUIT_CUIL.IsNull) or (trim(ZQ_FacturaCUIT_CUIL.AsString) = '')) then
    begin
      if (TipoLetra = 'A') or (TipoIVAComprador = 'M') or (TipoIVAComprador = 'E') then
      begin
        TpoDocComprador:= 'CUIT';
        NroDocComprador:= LeftStr(ZQ_FacturaCUIT_CUIL.AsString, 11);
      end;
    end;

    BienDeUso:= 'N';

    if (ZQ_FacturaDIRECCION.IsNull) or (trim(ZQ_FacturaDIRECCION.AsString) = '') then
      DomicilioComprador1:= '(3000) SANTA FE'
    else
      DomicilioComprador1:= LeftStr(ZQ_FacturaDIRECCION.AsString, 40);

    if (ZQ_FacturaLOCALIDAD.IsNull) or (trim(ZQ_FacturaLOCALIDAD.AsString) = '') then
      DomicilioComprador2:= 'SANTA FE'
    else
      DomicilioComprador2:= LeftStr(ZQ_FacturaLOCALIDAD.AsString, 40);

    DomicilioComprador3:= char(127);
    LineaVariable1:= '.';
    LineaVariable2:= '.';
    TipoTablaBien:= 'C';

    MemoLog.Lines.Add(' - PrinterFiscal_Epson.OpenInvoice(' + TipoDocumento + ', ' + TipoPapel + ', ' + TipoLetra + ', ' + CantidadCopias + ', ' + TipoFormulario + ', ' + TipoFuente + ', ' + TipoIVAEmisor + ', ' + TipoIVAComprador + ', ' + NombreComprador1 + ', ' + NombreComprador2 + ', ' + TpoDocComprador + ', ' + NroDocComprador + ', ' + BienDeUso + ', ' + DomicilioComprador1 + ', ' + DomicilioComprador2 + ', ' + DomicilioComprador3 + ', ' + LineaVariable1 + ', ' + LineaVariable2 + ', ' + TipoTablaBien + ');');
    resultado:= PrinterFiscal_Epson.OpenInvoice(TipoDocumento, TipoPapel, TipoLetra, CantidadCopias, TipoFormulario,
      TipoFuente, TipoIVAEmisor, TipoIVAComprador, NombreComprador1, NombreComprador2,
      TpoDocComprador, NroDocComprador, BienDeUso, DomicilioComprador1, DomicilioComprador2,
      DomicilioComprador3, LineaVariable1, LineaVariable2, TipoTablaBien);
    if not resultado then
    begin
      mensajeError:= DecodificadorErrorFiscalEpson('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
        DecodificadorErrorFiscalEpson('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
      mensajeError:= '1. OPEN INVOICE' + #13 + mensajeError;
      mostrarError(mensajeError, tituloError);
      cancelarTicket(marca);
      exit;
    end;

  //PASO 2: CARGAR ITEMS
//    descuento_redondeo:= 0;
    acumulado_item:= 0;
    acumulado_iva:= 0;
    ZQ_Items.First;
    while not ZQ_Items.Eof do
    begin
    //Max de 20 caracteres
      DescripcionProducto:= LeftStr(' ' + ZQ_ItemsNOMBRE_PRODUCTO.AsString, 20);

      Cantidad:= ZQ_ItemsCANTIDAD.AsFloat;
      CantidadWide:= FloatToStr(Cantidad * 1000);

    if (TipoLetra = 'A') and (ZQ_ItemsIMPORTE_IF_SINIVA.AsFloat > 0) then
    begin
      PrecioUnitario:= ZQ_ItemsIMPORTE_IF_SINIVA.AsFloat / ZQ_ItemsCANTIDAD.AsFloat;
      PrecioUnitario:= RoundTo(PrecioUnitario, -2);
      descuento_redondeo:= descuento_redondeo + roundto((PrecioUnitario * Cantidad) - ZQ_ItemsIMPORTE_IF_SINIVA.AsFloat, -2);
    end
    else
    begin
      PrecioUnitario:= ZQ_ItemsIMPORTE_IF.AsFloat / ZQ_ItemsCANTIDAD.AsFloat;
      PrecioUnitario:= RoundTo(PrecioUnitario, -2);
      descuento_redondeo:= descuento_redondeo + roundto((PrecioUnitario * Cantidad) - ZQ_ItemsIMPORTE_IF.AsFloat, -2);
    end;
    PrecioUnitarioWide:= FloatToStr(PrecioUnitario * 100);

//      PrecioUnitario:= ZQ_ItemsIMPORTE_IF.AsFloat / ZQ_ItemsCANTIDAD.AsFloat;
//      PrecioUnitario:= RoundTo(PrecioUnitario, -2);
//      PrecioUnitarioWide:= FloatToStr(PrecioUnitario * 100);
//      descuento_redondeo:= descuento_redondeo + roundto((PrecioUnitario * Cantidad) - ZQ_ItemsIMPORTE_IF.AsFloat, -2);


      if ZQ_ItemsPORC_IVA.IsNull then
        TasaIva:= 0.21
      else
        TasaIva:= ZQ_ItemsPORC_IVA.AsFloat;
      TasaIvaWide:= FloatToStr(TasaIva * 10000);

      CalificadorDeItem:= 'M';
      CantidadDeBultos:= 1;
      CantidadDeBultosWide:= FloatToStr(CantidadDeBultos);
      ImpuestosInternos:= 0;
      ImpuestosInternosWide:= FloatToStr(ImpuestosInternos);
      LineaDescExtra1:= char(127);
      LineaDescExtra2:= char(127);
      LineaDescExtra3:= char(127);

      if productoDetallado then
      begin
        LineaDescExtra1:= LeftStr(' Marca: ' + ZQ_ItemsNOMBRE_MARCA.AsString, 30);
        LineaDescExtra2:= LeftStr(' Col.: ' + ZQ_ItemsNOMBRE_COLOR.AsString + ' / Med.: ' + ZQ_ItemsNOMBRE_MEDIDA.AsString, 30);
      end;

      TasaAcrecentamiento:= 0;
      TasaAcrecentamientoWide:= FloatToStr(TasaAcrecentamiento);

      if ZQ_ItemsIMPUESTO_INTERNO.IsNull then
        ImpuestosIntFijos:= 0
      else
        ImpuestosIntFijos:= ZQ_ItemsIMPUESTO_INTERNO.AsFloat / ZQ_ItemsCANTIDAD.AsFloat;
      ImpuestosIntFijosWide:= FloatToStr(ImpuestosIntFijos * 100000000);

      MemoLog.Lines.Add(' - PrinterFiscal_Epson.SendInvoiceItem(' + DescripcionProducto + ', ' + CantidadWide + ', ' + PrecioUnitarioWide + ', ' + TasaIvaWide + ', ' + CalificadorDeItem + ', ' + CantidadDeBultosWide + ', ' + ImpuestosInternosWide + ', ' + LineaDescExtra1 + ', ' + LineaDescExtra2 + ', ' + LineaDescExtra3 + ', ' + TasaAcrecentamientoWide + ', ' + ImpuestosIntFijosWide + ');');
      resultado:= PrinterFiscal_Epson.SendInvoiceItem(DescripcionProducto, CantidadWide, PrecioUnitarioWide, TasaIvaWide, CalificadorDeItem,
        CantidadDeBultosWide, ImpuestosInternosWide, LineaDescExtra1, LineaDescExtra2,
        LineaDescExtra3, TasaAcrecentamientoWide, ImpuestosIntFijosWide);
      if not resultado then
      begin
        mensajeError:= DecodificadorErrorFiscalEpson('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
          DecodificadorErrorFiscalEpson('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
        mensajeError:= '2. SEND INVOICE ITEM' + #13 + mensajeError;
        mostrarError(mensajeError, tituloError);
        cancelarTicket(marca);
        exit;
      end;

      acumulado_item:= acumulado_item + (PrecioUnitario * Cantidad);
      acumulado_iva:= acumulado_iva + ((PrecioUnitario * Cantidad)/(1+TasaIva));
      ZQ_Items.Next;
    end;

  //PASO 3: SUBTOTAL
    auxSubtotal1:= 'P';
    auxSubtotal2:= 'SUBTOTAL';
    MemoLog.Lines.Add(' - PrinterFiscal_Epson.GetInvoiceSubtotal(' + auxSubtotal1 + ', ' + auxSubtotal2 + ');');
    resultado:= PrinterFiscal_Epson.GetInvoiceSubtotal(auxSubtotal1, auxSubtotal2);
    if not resultado then
    begin
      mensajeError:= DecodificadorErrorFiscalEpson('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
        DecodificadorErrorFiscalEpson('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
      mensajeError:= '3. GET INVOICE SUBTOTAL' + #13 + mensajeError;
      mostrarError(mensajeError, tituloError);
      cancelarTicket(marca);
      exit;
    end;

  //PASO 4: CARGAR FORMA PAGO
    acumulado_fpago:= 0;
    ZQ_FormaPago.First;
    while not ZQ_FormaPago.Eof do
    begin
      DescripcionFPago:= LeftStr(ZQ_FormaPagoFORMA_PAGO_NOMBRE.AsString, 25);
      MontoFPago:= ZQ_FormaPagoFORMA_PAGO_IMPORTE.AsFloat;
      MontoFPagoWide:= FloatToStr(ZQ_FormaPagoFORMA_PAGO_IMPORTE.AsFloat * 100);
      acumulado_fpago:= acumulado_fpago + MontoFPago;
      CalificadorFPago:= 'T';
      MemoLog.Lines.Add(' - PrinterFiscal_Epson.SendInvoicePayment(' + DescripcionFPago + ', ' + MontoFPagoWide + ', ' + CalificadorFPago + ');');
      resultado:= PrinterFiscal_Epson.SendInvoicePayment(DescripcionFPago, MontoFPagoWide, CalificadorFPago);
      if not resultado then
      begin
        mensajeError:= DecodificadorErrorFiscalEpson('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
          DecodificadorErrorFiscalEpson('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
        mensajeError:= '4. SEND INVOICE PAYMENT (T)' + #13 + mensajeError;
        mostrarError(mensajeError, tituloError);
        cancelarTicket(marca);
        exit;
      end;

      ZQ_FormaPago.Next;
    end;

    descuento_redondeo:= (acumulado_item + acumulado_iva) - acumulado_fpago;
    descuento_redondeo:= RoundTo((descuento_redondeo * -1), -4);
//  if descuento_redondeo <> 0 then
//  begin
//    descuento_redondeoWide:= FloatToStr(descuento_redondeo * 1000);
//    DescripcionFPago:= 'DESCUENTO REDONDEO';
//    CalificadorFPago:= 'D';
//    resultado:= PrinterFiscal_Epson.SendInvoicePayment(DescripcionFPago, descuento_redondeoWide, CalificadorFPago);
//    if not resultado then
//    begin
//      mensajeError:= DecodificadorErrorFiscalEpson('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
//        DecodificadorErrorFiscalEpson('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
//      mensajeError:= '4. SEND INVOICE PAYMENT (D)' + #13 + mensajeError;
//      mostrarError(mensajeError, tituloError);
//      cancelarTicket(marca);
//      exit;
//    end;
//  end;

  //PASO 5: CERRAR FACTURA
    auxCerrar:= 'TOTAL';
    MemoLog.Lines.Add(' - PrinterFiscal_Epson.CloseInvoice(' + TipoDocumento + ', ' + TipoLetra + ', ' + auxCerrar + ');');
    resultado:= PrinterFiscal_Epson.CloseInvoice(TipoDocumento, TipoLetra, auxCerrar);
    if not resultado then
    begin
      mensajeError:= DecodificadorErrorFiscalEpson('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
        DecodificadorErrorFiscalEpson('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
      mensajeError:= '5. CLOSE INVOICE' + #13 + mensajeError;
      mostrarError(mensajeError, tituloError);
      cancelarTicket(marca);
      exit;
    end;

  //PASO 7: OBTENER NUMERO DE COMPROBANTE Y PUNTO DE VENTA
    numeroCpb:= PrinterFiscal_Epson.AnswerField_3;
    //Cambio el status para poder obtener el numero de Punto Venta. C = Información sobre el contribuyente
    auxEstado:= 'C';
    PrinterFiscal_Epson.Status(auxEstado);
    puntoVenta:= PrinterFiscal_Epson.AnswerField_4;
    //Vuelvo al estado Normal
    auxEstado:= 'N';
    resultado:= PrinterFiscal_Epson.Status(auxEstado);
    lblFactura.Caption:= puntoVenta + '-' + numeroCpb;

  //PASO 8: INSERTAR EL NUMERO DE COMPROBANTE, PUNTO DE VENTA Y FECHA EN COMPROBANTE IMPRESO
    if resultado then
    begin
      if EKModelo.iniciar_transaccion('UPDATE FACTURA', []) then
      begin
        ZQ_UpdateFactura.Close;
        ZQ_UpdateFactura.ParamByName('numcpb').AsInteger:= StrToInt(numeroCpb);
        ZQ_UpdateFactura.ParamByName('pventa').AsInteger:= StrToInt(puntoVenta);
        ZQ_UpdateFactura.ParamByName('fimpresa').AsDateTime:= EKModelo.FechayHora();
        ZQ_UpdateFactura.ParamByName('idcpb').AsString:= id_cpb;
        ZQ_UpdateFactura.ExecSQL;

        if not EKModelo.finalizar_transaccion('UPDATE FACTURA') then
        begin
          mensajeError:= 'Error al actualizar el PV y NUMERO del comprobante';
          mostrarError(mensajeError, tituloError);
        end
      end
    end;

  //PASO 9: CORTO EL TIQUET
    PrinterFiscal_Epson.CutPaper;
  end
end;
//************************************
//  FIN FACTURAR VENTAS EPSON
//************************************


//************************************
//  FACTURAR VENTAS HASAR
//************************************
procedure TFPrincipal.facturaHasar(modelo: string);
var
  //VARIABLES PARA ABRIR FACTURA
  CantidadCopias: widestring; // Cantidad de copias que se deben imprimir (1 a 5)
  NombreComprador: widestring; // Nombre comercial del comprador línea 1 (max 40 bytes)
  NroDocComprador: widestring; // CUIT o Numero documento del comprador (max 11 bytes)
  DomicilioComprador: widestring; // Domicilio del comprador, línea 1 (max 40 bytes)
  localidad: widestring; // Localidad del comprador
  //VARIABLES PARA ENVIAR ITEMS
  DescripcionProducto: widestring; // Descripción del producto (max 20 bytes)
  Cantidad: double;
  PrecioUnitario: double;
  TasaIva: double;
  ImpuestosInternos: double;
  LineaDescExtra1: widestring; // Linea 1 descripcion complementaria del item (max 30 bytes)
  LineaDescExtra2: widestring; // Linea 2 descripcion complementaria del item (max 30 bytes)
  //VARIABLES PARA ENVIAR FORMA PAGO
  DescripcionFPago: widestring; // Texto con descripcion del pago (max 25 bytes)
  MontoFPago: double;
  descuento_redondeo: double;
  //VARIABLES PARA ACTUALIZAR COMPROBANTE
  numeroCpb: widestring;
  //OTRAS
  marca: string;
  aux: OleVariant;
  pventa: OleVariant;
  tipoFactura: integer;
begin
  with DM do
  begin
    MemoLog.Lines.Add('EjecutarComando(facturaHasar(' + modelo + '));');
    resultado:= true;
    marca:= 'HASAR';
    CantidadCopias:= '1';
    MemoLog.Lines.Add(' - Hasar.DescripcionesLargas:= false;');
    Hasar.DescripcionesLargas:= false; //trunca las descripciones largas
    MemoLog.Lines.Add(' - Hasar.Comenzar;');
    Hasar.Comenzar;
    MemoLog.Lines.Add(' - Hasar.TratarDeCancelarTodo;');
    Hasar.TratarDeCancelarTodo;

    if modelo = 'P-330F' then
    begin
      MemoLog.Lines.Add(' - Hasar.BorrarFantasiaEncabezadoCola(false, false, true);');
      Hasar.BorrarFantasiaEncabezadoCola(false, false, true);
    end;

//PASO 1: ABRIR FACTURA
    if (ZQ_FacturaNOMBRE.IsNull) or (trim(ZQ_FacturaNOMBRE.AsString) = '') then
      NombreComprador:= 'CONSUMIDOR FINAL'
    else
      NombreComprador:= LeftStr(ZQ_FacturaNOMBRE.AsString, 50);

    if (ZQ_FacturaNUMERO_DOC.IsNull) or (trim(ZQ_FacturaNUMERO_DOC.AsString) = '') then
      NroDocComprador:= '0'
    else
      NroDocComprador:= LeftStr(ZQ_FacturaNUMERO_DOC.AsString, 11);

    if (ZQ_FacturaLOCALIDAD.IsNull) or (trim(ZQ_FacturaLOCALIDAD.AsString) = '') then
      localidad:= 'SANTA FE'
    else
      localidad:= LeftStr(ZQ_FacturaLOCALIDAD.AsString, 50);

    if (ZQ_FacturaDIRECCION.IsNull) or (trim(ZQ_FacturaDIRECCION.AsString) = '') then
      DomicilioComprador:= '(3000) SANTA FE'
    else
      DomicilioComprador:= LeftStr(ZQ_FacturaDIRECCION.AsString + ' ' + localidad, 50);

  //si es una factura A paso siempre como tipo documento TIPO_CUIT
    tipoFactura:= HasarObtenerTipoFactura(if_modelo, ZQ_FacturaTIPO_FACTURA.AsString);
    if (tipoFactura = FACTURA_A) or (tipoFactura = TICKET_FACTURA_A) then
    begin
      NroDocComprador:= ZQ_FacturaCUIT_CUIL.AsString;
      MemoLog.Lines.Add(' - Hasar.DatosCliente(' + NombreComprador + ', ' + NroDocComprador + ', ' + IntToStr(TIPO_CUIT) + ', ' + IntToStr(HasarObtenerTipoIVAComprador(ZQ_FacturaID_TIPO_IVA.AsInteger)) + ', ' + DomicilioComprador + ');');
      Hasar.DatosCliente(NombreComprador, NroDocComprador, TIPO_CUIT, HasarObtenerTipoIVAComprador(ZQ_FacturaID_TIPO_IVA.AsInteger), DomicilioComprador);
    end
    else
    begin
      MemoLog.Lines.Add(' - Hasar.DatosCliente(' + NombreComprador + ', ' + NroDocComprador + ', ' + IntToStr(HasarObtenerTipoDocumento(ZQ_FacturaID_TIPO_DOC.AsInteger)) + ', ' + IntToStr(HasarObtenerTipoIVAComprador(ZQ_FacturaID_TIPO_IVA.AsInteger)) + ', ' + DomicilioComprador + ');');
      Hasar.DatosCliente(NombreComprador, NroDocComprador, HasarObtenerTipoDocumento(ZQ_FacturaID_TIPO_DOC.AsInteger), HasarObtenerTipoIVAComprador(ZQ_FacturaID_TIPO_IVA.AsInteger), DomicilioComprador);
    end;

    MemoLog.Lines.Add(' - Hasar.AbrirComprobanteFiscal(' + IntToStr(tipoFactura) + ');');
    Hasar.AbrirComprobanteFiscal(tipoFactura);

//PASO 2: CARGAR ITEMS
    descuento_redondeo:= 0;
    ZQ_Items.First;
    while not ZQ_Items.Eof do
    begin
      if modelo = 'P-330F' then //Max de 50 caracteres
        DescripcionProducto:= LeftStr(ZQ_ItemsNOMBRE_PRODUCTO.AsString, 50)
      else if modelo = 'P-715F' then //Max de 20 caracteres
        DescripcionProducto:= LeftStr(ZQ_ItemsNOMBRE_PRODUCTO.AsString, 20);

      if productoDetallado then
      begin
        LineaDescExtra1:= LeftStr(' Marca: ' + ZQ_ItemsNOMBRE_MARCA.AsString, 30);
        LineaDescExtra2:= LeftStr(' Col.: ' + ZQ_ItemsNOMBRE_COLOR.AsString + ' / Med.: ' + ZQ_ItemsNOMBRE_MEDIDA.AsString, 30);
      end;

      Cantidad:= ZQ_ItemsCANTIDAD.AsFloat;

      PrecioUnitario:= ZQ_ItemsIMPORTE_IF.AsFloat / ZQ_ItemsCANTIDAD.AsFloat;
      PrecioUnitario:= RoundTo(PrecioUnitario, -2);
      descuento_redondeo:= descuento_redondeo + roundto((PrecioUnitario * Cantidad) - ZQ_ItemsIMPORTE_IF.AsFloat, -2);

      ImpuestosInternos:= 0;
      if ZQ_ItemsPORC_IVA.IsNull then
        TasaIva:= 21
      else
        TasaIva:= ZQ_ItemsPORC_IVA.AsFloat * 100;

      MemoLog.Lines.Add(' - Hasar.ImprimirItem(' + DescripcionProducto + ', ' + FloatToStr(Cantidad) + ', ' + FloatToStr(PrecioUnitario) + ', ' + FloatToStr(TasaIva) + ', ' + FloatToStr(ImpuestosInternos) + ');');
      Hasar.ImprimirItem(DescripcionProducto, Cantidad, PrecioUnitario, TasaIva, ImpuestosInternos);

      ZQ_Items.Next;
    end;

//PASO 3: SUBTOTAL
    MemoLog.Lines.Add(' - Hasar.Subtotal(true);');
    Hasar.Subtotal(true);

//PASO 4: CARGAR FORMA PAGO
    ZQ_FormaPago.First;
    while not ZQ_FormaPago.Eof do
    begin
      DescripcionFPago:= LeftStr(ZQ_FormaPagoFORMA_PAGO_NOMBRE.AsString, 50);
      MontoFPago:= ZQ_FormaPagoFORMA_PAGO_IMPORTE.AsFloat;

      MemoLog.Lines.Add(' - Hasar.ImprimirPago(' + DescripcionFPago + ', ' + FloatToStr(MontoFPago) + ', T);');
      Hasar.ImprimirPago(DescripcionFPago, MontoFPago, 'T');
      ZQ_FormaPago.Next;
    end;

//PASO 5: DESCUENTOS
//  descuento_redondeo:= 200;
//  if descuento_redondeo > 0 then
//  begin
//    DescripcionFPago:= 'DESCUENTO REDONDEO';
//    hasar.DescuentoGeneral(DescripcionFPago, descuento_redondeo, true);
//  end;

//PASO 6: CERRAR FACTURA
    MemoLog.Lines.Add(' - Hasar.CerrarComprobanteFiscal();');
    Hasar.CerrarComprobanteFiscal(); //se puede pasar la cantidad de copias

//PASO 7: OBTENER NUMERO DE COMPROBANTE Y PUNTO DE VENTA
    numeroCpb:= Hasar.Respuesta[3];
    Hasar.Enviar(Chr(115));
    puntoVenta:= Hasar.Respuesta[7];
    lblFactura.Caption:= LPad(puntoVenta, 4, '0') + '-' + LPad(numeroCpb, 8, '0');

  //cerramos la fiscal
    Hasar.Finalizar;

//PASO 8: INSERTAR EL NUMERO DE COMPROBANTE, PUNTO DE VENTA Y FECHA EN COMPROBANTE IMPRESO
    if resultado then
    begin
      if EKModelo.iniciar_transaccion('UPDATE FACTURA', []) then
      begin
        ZQ_UpdateFactura.Close;
        ZQ_UpdateFactura.ParamByName('numcpb').AsInteger:= StrToInt(numeroCpb);
        ZQ_UpdateFactura.ParamByName('pventa').AsInteger:= StrToInt(puntoVenta);
        ZQ_UpdateFactura.ParamByName('fimpresa').AsDateTime:= EKModelo.FechayHora();
        ZQ_UpdateFactura.ParamByName('idcpb').AsString:= id_cpb;
        ZQ_UpdateFactura.ExecSQL;

        if not EKModelo.finalizar_transaccion('UPDATE FACTURA') then
        begin
          mensajeError:= 'Error al actualizar el PV y NUMERO del comprobante';
          mostrarError(mensajeError, tituloError);
        end
      end
    end;
  end
end;
//************************************
//  FIN FACTURAR VENTAS HASAR
//************************************


//************************************
//  PROCEDIMIENTOS VARIOS HASAR
//************************************
procedure TFPrincipal.HasarImpresoraNoResponde(ASender: TObject; CantidadReintentos: Integer);
begin
  if (Hasar.ReintentoConstante) and (Hasar.Reintentos = CantidadReintentos) then
  begin
    MemoLog.Lines.Add(' - Hasar.Abortar();');
    Hasar.Abortar;
  end;
end;


procedure TFPrincipal.HasarErrorFiscal(ASender: TObject; Flags: Integer);
begin
  MemoLog.Lines.Add('HASAR ERROR FISCAL: ' + hasar.DescripcionStatusFiscal(Flags));
end;


procedure TFPrincipal.HasarErrorImpresora(ASender: TObject; Flags: Integer);
begin
  MemoLog.Lines.Add('HASAR ERROR IMPRESORA: ' + hasar.DescripcionStatusFiscal(Flags));
end;


procedure TFPrincipal.HasarFaltaPapel(Sender: TObject);
begin
  mensajeError:= 'La impresora fiscal no tiene papel.';
  mostrarError(mensajeError, tituloError);
end;
//************************************
//  FIN PROCEDIMIENTOS VARIOS HASAR
//********************************


//**********************************
//  FACTURA DE OBRA SOCIAL HASAR
//**********************************
procedure TFPrincipal.facturaHasar_OS(modelo: string);
var
  //VARIABLES PARA ABRIR FACTURA
  CantidadCopias: widestring; // Cantidad de copias que se deben imprimir (1 a 5)
  NombreComprador: widestring; // Nombre comercial del comprador línea 1 (max 40 bytes)
  NroDocComprador: widestring; // CUIT o Numero documento del comprador (max 11 bytes)
  DomicilioComprador: widestring; // Domicilio del comprador, línea 1 (max 40 bytes)
  localidad: widestring; // Localidad del comprador
  //VARIABLES PARA ENVIAR ITEMS
  DescripcionProducto: widestring; // Descripción del producto (max 20 bytes)
  Cantidad: double;
  PrecioUnitario: double;
  TasaIva: double;
  ImpuestosInternos: double;
  LineaDescExtra1: widestring; // Linea 1 descripcion complementaria del item (max 30 bytes)
  LineaDescExtra2: widestring; // Linea 2 descripcion complementaria del item (max 30 bytes)
  //VARIABLES PARA ENVIAR FORMA PAGO
  DescripcionFPago: widestring; // Texto con descripcion del pago (max 25 bytes)
  MontoFPago: double;
  descuento_redondeo: double;
  //VARIABLES PARA ACTUALIZAR COMPROBANTE
  numeroCpb: widestring;
  //OTRAS
  marca: string;
  aux: OleVariant;
  pventa: OleVariant;
  tipoFactura: integer;
begin
  with DM do
  begin
    MemoLog.Lines.Add('EjecutarComando(facturaHasar_OS(' + modelo + '));');
    resultado:= true;
    marca:= 'HASAR';
    CantidadCopias:= '1';
    MemoLog.Lines.Add(' - Hasar.DescripcionesLargas:= false;');
    Hasar.DescripcionesLargas:= false; //trunca las descripciones largas
    MemoLog.Lines.Add(' - Hasar.Comenzar;');
    Hasar.Comenzar;
    MemoLog.Lines.Add(' - Hasar.TratarDeCancelarTodo;');
    Hasar.TratarDeCancelarTodo;

    if modelo = 'P-330F' then
    begin
      MemoLog.Lines.Add(' - Hasar.BorrarFantasiaEncabezadoCola(false, false, true);');
      Hasar.BorrarFantasiaEncabezadoCola(false, false, true);
    end;

//PASO 1: ABRIR FACTURA
    if (ZQ_FacturaOSNOMBRE.IsNull) or (trim(ZQ_FacturaOSNOMBRE.AsString) = '') then
      NombreComprador:= 'CONSUMIDOR FINAL'
    else
      NombreComprador:= LeftStr(ZQ_FacturaOSNOMBRE.AsString, 50);

    if (ZQ_FacturaOSCUIT_CUIL.IsNull) or (trim(ZQ_FacturaOSCUIT_CUIL.AsString) = '') then
      NroDocComprador:= '0'
    else
      NroDocComprador:= LeftStr(ZQ_FacturaOSCUIT_CUIL.AsString, 11);

    if (ZQ_FacturaOSLOCALIDAD.IsNull) or (trim(ZQ_FacturaOSLOCALIDAD.AsString) = '') then
      localidad:= 'SANTA FE'
    else
      localidad:= LeftStr(ZQ_FacturaOSLOCALIDAD.AsString, 50);

    if (ZQ_FacturaOSDIRECCION.IsNull) or (trim(ZQ_FacturaOSDIRECCION.AsString) = '') then
      DomicilioComprador:= '(3000) SANTA FE'
    else
      DomicilioComprador:= LeftStr(ZQ_FacturaOSDIRECCION.AsString + ' ' + localidad, 50);

    tipoFactura:= HasarObtenerTipoFactura(if_modelo, ZQ_FacturaOSTIPO_FACTURA.AsString);
    NroDocComprador:= ZQ_FacturaOSCUIT_CUIL.AsString;
    MemoLog.Lines.Add(' - Hasar.DatosCliente(' + NombreComprador + ', ' + NroDocComprador + ', ' + IntToStr(TIPO_CUIT) + ', ' + IntToStr(HasarObtenerTipoIVAComprador(ZQ_FacturaOSID_TIPO_IVA.AsInteger)) + ', ' + DomicilioComprador + ');');
    Hasar.DatosCliente(NombreComprador, NroDocComprador, TIPO_CUIT, HasarObtenerTipoIVAComprador(ZQ_FacturaOSID_TIPO_IVA.AsInteger), DomicilioComprador);

    MemoLog.Lines.Add(' - Hasar.AbrirComprobanteFiscal(' + IntToStr(tipoFactura) + ');');
    Hasar.AbrirComprobanteFiscal(tipoFactura);

//PASO 2: CARGAR ITEMS
    descuento_redondeo:= 0;
    ZQ_ItemsOS.First;
    while not ZQ_ItemsOS.Eof do
    begin
      if modelo = 'P-330F' then //Max de 50 caracteres
        DescripcionProducto:= LeftStr(ZQ_ItemsOSDETALLE.AsString, 50)
      else if modelo = 'P-715F' then //Max de 20 caracteres
        DescripcionProducto:= LeftStr(ZQ_ItemsOSDETALLE.AsString, 20);

      Cantidad:= ZQ_ItemsOSCANTIDAD.AsFloat;

//      if (tipoFactura = FACTURA_A) or (tipoFactura = TICKET_FACTURA_A) then
//      begin
//        PrecioUnitario:= (ZQ_ItemsOSIMPORTE_VENTA.AsFloat*(1-ZQ_ItemsOSPORC_IVA.AsFloat)) / ZQ_ItemsOSCANTIDAD.AsFloat;
//        PrecioUnitario:= RoundTo(PrecioUnitario, -2);
//      end
//      else
//      begin
        PrecioUnitario:= ZQ_ItemsOSIMPORTE_VENTA.AsFloat / ZQ_ItemsOSCANTIDAD.AsFloat;
        PrecioUnitario:= RoundTo(PrecioUnitario, -2);
//      end;

      ImpuestosInternos:= 0;
      if ZQ_ItemsOSPORC_IVA.IsNull then
        TasaIva:= 21
      else
        TasaIva:= ZQ_ItemsOSPORC_IVA.AsFloat * 100;

      MemoLog.Lines.Add(' - Hasar.ImprimirItem(' + DescripcionProducto + ', ' + FloatToStr(Cantidad) + ', ' + FloatToStr(PrecioUnitario) + ', ' + FloatToStr(TasaIva) + ', ' + FloatToStr(ImpuestosInternos) + ');');
      Hasar.ImprimirItem(DescripcionProducto, Cantidad, PrecioUnitario, TasaIva, ImpuestosInternos);

      ZQ_ItemsOS.Next;
    end;

//PASO 3: SUBTOTAL
    MemoLog.Lines.Add(' - Hasar.Subtotal(true);');
    Hasar.Subtotal(true);

//PASO 6: CERRAR FACTURA
    MemoLog.Lines.Add(' - Hasar.CerrarComprobanteFiscal();');
    Hasar.CerrarComprobanteFiscal(); //se puede pasar la cantidad de copias

//PASO 7: OBTENER NUMERO DE COMPROBANTE Y PUNTO DE VENTA
    numeroCpb:= Hasar.Respuesta[3];
    Hasar.Enviar(Chr(115));
    puntoVenta:= Hasar.Respuesta[7];
    lblFactura.Caption:= LPad(puntoVenta, 4, '0') + '-' + LPad(numeroCpb, 8, '0');

  //cerramos la fiscal
    Hasar.Finalizar;

//PASO 8: INSERTAR EL NUMERO DE COMPROBANTE, PUNTO DE VENTA Y FECHA EN COMPROBANTE IMPRESO
    if resultado then
    begin
      if EKModelo.iniciar_transaccion('UPDATE FACTURA', []) then
      begin
        ZQ_UpdateFactura.Close;
        ZQ_UpdateFactura.ParamByName('numcpb').AsInteger:= StrToInt(numeroCpb);
        ZQ_UpdateFactura.ParamByName('pventa').AsInteger:= StrToInt(puntoVenta);
        ZQ_UpdateFactura.ParamByName('fimpresa').AsDateTime:= EKModelo.FechayHora();
        ZQ_UpdateFactura.ParamByName('idcpb').AsString:= id_cpb;
        ZQ_UpdateFactura.ExecSQL;

        if not EKModelo.finalizar_transaccion('UPDATE FACTURA') then
        begin
          mensajeError:= 'Error al actualizar el PV y NUMERO del comprobante';
          mostrarError(mensajeError, tituloError);
        end
      end
    end;
  end
end;
//**********************************
//  FIN FACTURA DE OBRA SOCIAL HASAR
//**********************************


//**********************************
//  FACTURA DE OBRA SOCIAL EPSON
//**********************************
procedure TFPrincipal.facturaEpson_OS(modelo: string);
begin
//
end;



//**********************************
//  FIN FACTURA DE OBRA SOCIAL EPSON
//**********************************

//COMPROBANTE NO FISCAL
//    HASAR1.AbrirComprobanteNoFiscal
//    HASAR1.ImprimirTextoNoFiscal "Linea Texto No Fiscal..."
//    HASAR1.CerrarComprobanteNoFiscal
//FACTURA B
//    HASAR1.DatosCliente "Cliente...", "99999999995", TIPO_CUIT, MONOTRIBUTO, "Domicilio..."
//    HASAR1.AbrirComprobanteFiscal FACTURA_B
//    HASAR1.ImprimirTextoFiscal "Texto Fiscal..."
//    HASAR1.ImprimirItem "Producto Uno", 1, 100, 21, 0
//    HASAR1.DescuentoUltimoItem "Oferta del Dia", 5, True
//    HASAR1.DescuentoGeneral "Oferta Pago Efectivo", 25, True
//    HASAR1.EspecificarPercepcionPorIVA "Percep IVA21", 100, 21
//    HASAR1.EspecificarPercepcionGlobal "Percep. RG 0000", 125#
//    HASAR1.ImprimirPago "Efectivo", 295#
//    HASAR1.CerrarComprobanteFiscal
//FACTURA A
//    HASAR1.DatosCliente "Cliente...", "99999999995", TIPO_CUIT, RESPONSABLE_INSCRIPTO, "Domicilio..."
//    HASAR1.AbrirComprobanteFiscal FACTURA_A
//    HASAR1.ImprimirTextoFiscal "Texto Fiscal..."
//    HASAR1.ImprimirItem "Producto Uno", 1, 100, 21, 0
//    HASAR1.DescuentoUltimoItem "Oferta del Dia", 5, True
//    HASAR1.DescuentoGeneral "Oferta Pago Efectivo", 25, True
//    HASAR1.EspecificarPercepcionPorIVA "Percep IVA21", 100, 21
//    HASAR1.EspecificarPercepcionGlobal "Percep. RG 0000", 125#
//    HASAR1.ImprimirPago "Efectivo", 295#
//    HASAR1.CerrarComprobanteFiscal
//NOTA CREDITO A
//    HASAR1.InformacionRemito(1) = "0000-00000000"
//    HASAR1.DatosCliente "Cliente...", "99999999995", TIPO_CUIT, RESPONSABLE_INSCRIPTO, "Domicilio..."
//    HASAR1.AbrirComprobanteNoFiscalHomologado NOTA_CREDITO_A
//    HASAR1.ImprimirTextoFiscal "Texto Fiscal..."
//    HASAR1.ImprimirItem "Producto Uno", 1, 100, 21, 0
//    HASAR1.DescuentoUltimoItem "Oferta del Dia", 5, True
//    HASAR1.DescuentoGeneral "Oferta Pago Efectivo", 25, True
//    HASAR1.EspecificarPercepcionPorIVA "Percep IVA21", 100, 21
//    HASAR1.EspecificarPercepcionGlobal "Percep. RG 0000", 125#
//    HASAR1.ImprimirPago "Efectivo", 295#
//    HASAR1.CerrarComprobanteNoFiscalHomologado
//NOTA CREDITO B
//    HASAR1.InformacionRemito(1) = "0000-00000000"
//    HASAR1.DatosCliente "Cliente...", "99999999995", TIPO_DNI, CONSUMIDOR_FINAL, "Domicilio..."
//    HASAR1.AbrirComprobanteNoFiscalHomologado NOTA_CREDITO_B
//    HASAR1.ImprimirTextoFiscal "Texto Fiscal..."
//    HASAR1.ImprimirItem "Producto Uno", 1, 100, 21, 0
//    HASAR1.DescuentoUltimoItem "Oferta del Dia", 5, True
//    HASAR1.DescuentoGeneral "Oferta Pago Efectivo", 25, True
//    HASAR1.EspecificarPercepcionPorIVA "Percep IVA21", 100, 21
//    HASAR1.EspecificarPercepcionGlobal "Percep. RG 0000", 125#
//    HASAR1.ImprimirPago "Efectivo", 295#
//    HASAR1.CerrarComprobanteNoFiscalHomologado

end.

