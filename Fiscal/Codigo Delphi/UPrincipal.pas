unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EKIni, ZConnection, EKModelo, StdCtrls, ExtCtrls, OleCtrls, StrUtils,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Buttons, ComCtrls, Grids, DBGrids, EPSON_Impresora_Fiscal_TLB, ComObj,
  FiscalPrinterLib_TLB;

type
  TFPrincipal = class(TForm)
    conexion: TZConnection;
    EKIni: TEKIni;
    EKModelo: TEKModeloTransaccion;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    editParametros: TEdit;
    ZQ_Factura: TZQuery;
    ZQ_Items: TZQuery;
    ZQ_FormaPago: TZQuery;
    ZQ_FacturaID_CLIENTE: TIntegerField;
    ZQ_FacturaNOMBRE: TStringField;
    ZQ_FacturaNOMBRE_TIPO_DOC: TStringField;
    ZQ_FacturaNUMERO_DOC: TStringField;
    ZQ_FacturaCUIT_CUIL: TStringField;
    ZQ_FacturaDIRECCION: TStringField;
    ZQ_FacturaLOCALIDAD: TStringField;
    ZQ_FacturaID_TIPO_IVA: TIntegerField;
    ZQ_FacturaNOMBRE_TIPO_IVA: TStringField;
    ZQ_FacturaTIPO_FACTURA: TStringField;
    ZQ_FacturaLETRA_FISCAL: TStringField;
    ZQ_ItemsID_PRODUCTO: TIntegerField;
    ZQ_ItemsCANTIDAD: TFloatField;
    ZQ_ItemsIMPORTE_IF: TFloatField;
    ZQ_ItemsIMPORTE_IF_SINIVA: TFloatField;
    ZQ_ItemsIMPUESTO_INTERNO: TFloatField;
    ZQ_ItemsCODIGO_BARRA: TStringField;
    ZQ_ItemsNOMBRE_PRODUCTO: TStringField;
    ZQ_ItemsNOMBRE_COLOR: TStringField;
    ZQ_ItemsNOMBRE_MARCA: TStringField;
    ZQ_ItemsNOMBRE_MEDIDA: TStringField;
    ZQ_FormaPagoFORMA_PAGO_NOMBRE: TStringField;
    ZQ_FormaPagoFORMA_PAGO_IMPORTE: TFloatField;
    btnCierreZ: TButton;
    btnCierreX: TButton;
    btnAuditoria: TButton;
    editNumeroComprobante: TEdit;
    btnFactura: TButton;
    lblErrorDriver: TLabel;
    btnAbrirPuerto: TBitBtn;
    btnCerrarPuerto: TBitBtn;
    ZQ_UpdateFactura: TZQuery;
    ZQ_Config: TZQuery;
    lblFactura: TLabel;
    DateTimeFechaDesde: TDateTimePicker;
    DateTimeFechaHasta: TDateTimePicker;
    ComboBoxTipoAuditoria: TComboBox;
    ZQ_ConfigCLAVE: TStringField;
    ZQ_ConfigFECHA: TDateField;
    ZQ_ConfigNUMERO: TFloatField;
    ZQ_ConfigTEXTO: TStringField;
    ZQ_Config_Fiscal: TZQuery;
    ZQ_Config_FiscalID: TIntegerField;
    ZQ_Config_FiscalMARCA: TStringField;
    ZQ_Config_FiscalMODELO: TStringField;
    ZQ_Config_FiscalPUERTO: TStringField;
    ZQ_Config_FiscalVELOCIDAD: TStringField;
    ZQ_Config_FiscalPREDETERMINADA: TStringField;
    btnCancelarFactura: TButton;
    Hasar: THASAR;
    gBoxImpresora: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    cBoxImpresora_Marca: TComboBox;
    cBoxImpresora_Velocidad: TComboBox;
    cBoxImpresora_Puerto: TComboBox;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure leerParametros();
    procedure leerArchivoIni();
    procedure cierreZ();
    procedure cierreX();
    procedure facturar(marca: string);
    procedure facturaEpson();
    procedure facturaHasar();
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
  private
    PrinterFiscal_Epson: _PrinterFiscalDisp;
    db_name, db_host, db_pass, db_user: string;
    if_puerto, if_marca, if_modelo: string;
    if_velocidad: integer;
    preview: boolean;
    id_cpb, impresora, audModo, audFDesde, audFHasta: string;
    resultado: boolean;
    errorDriver: integer;
    productoDetallado: boolean;
    mensajeError, tituloError: string;
    puntoVenta: widestring;
    comando: widestring;
  public
  end;

var
  FPrincipal: TFPrincipal;

const
  PuertoIF = 1;

implementation

uses IniFiles, UUtilidades, Math, DateUtils;

{$R *.dfm}

//mensaje de error, con el botón "Aceptar"

procedure TFPrincipal.mostrarError(mensaje, titulo: string);
begin
  mensaje:= mensaje + #13 + #13 + 'Para mas información contacte al soporte tecnico.';

  application.MessageBox(pchar(mensaje), pchar(titulo), (MB_OK + MB_ICONSTOP));
end;


procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  if_puerto:= '1';
  if_velocidad:= 9600;
  if_marca:= '';
  if_modelo:= '';

  //OBJETO PARA LA IMPRESORA EPSON
  PrinterFiscal_Epson:= CreateComObject(CLASS_PrinterFiscal) as _PrinterFiscalDisp;

  tituloError:= 'ERROR MODULO FISCAL';
  EKIni.Path:= ExtractFilePath(Application.ExeName);
  leerArchivoIni;

  try
    ZQ_Config.Close;
    EKModelo.abrir(ZQ_Config);
    configurarBoolean(ZQ_Config, 'clave', 'texto', 'ticketFacturaDetallada', 'SI', productoDetallado);

    ZQ_Config_Fiscal.Close;
    EKModelo.abrir(ZQ_Config_Fiscal);
    if not ZQ_Config_Fiscal.IsEmpty then
    begin
      if_puerto:= ZQ_Config_FiscalPUERTO.AsString;
      if_velocidad:= ZQ_Config_FiscalVELOCIDAD.AsInteger;
      if_marca:= ZQ_Config_FiscalMARCA.AsString;
      if_modelo:= ZQ_Config_FiscalMODELO.AsString;
      ZQ_Config_Fiscal.Close;
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

  ZQ_Factura.Close;
  ZQ_Items.Close;
  ZQ_FormaPago.Close;

  DateTimeFechaDesde.Date:= StartOfTheMonth(EKModelo.Fecha);
  DateTimeFechaHasta.Date:= EndOfTheMonth(EKModelo.Fecha);

  abrirImpresora();

  leerParametros();
end;


procedure TFPrincipal.leerArchivoIni();
begin
  EKIni.abrir;

  db_name:= EKIni.Ini.ReadString('DB', 'db_name', '');
  db_host:= EKIni.Ini.ReadString('DB', 'db_host', '127.0.0.1');
  db_user:= EKIni.Ini.ReadString('DB', 'db_user', 'SYSDBA');
  db_pass:= EKIni.Ini.ReadString('DB', 'db_pass', 'masterkey');

  conexion.Database:= db_name;
  conexion.HostName:= db_host;
  conexion.Password:= db_pass;
  conexion.User:= db_user;

  EKIni.cerrar;
end;


function TFPrincipal.abrirImpresora: integer;
begin
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
    Hasar.Puerto:= strtoint(if_puerto);
    Hasar.Baudios:= if_velocidad;
    Hasar.Modelo:= MODELO_P330;
    Result:= 0;
  end
end;


procedure TFPrincipal.leerParametros;
var
  i: integer;
begin
  preview:= false;

  id_cpb:= '';
  impresora:= '';
  comando:= '';
  audModo:= '';
  audFDesde:= '';
  audFHasta:= '';

  if ParamCount > 0 then
  begin
    for i:= 1 to ParamCount do
    begin
      editParametros.Text:= editParametros.Text + ' ' + ParamStr(i);

      if LeftStr(ParamStr(i), 2) = '-c' then //-c = Comando. Z(Cierre Z), X(Cierre X), A(Auditoria Z), F(Impresion de Factura)
        comando:= RightStr(ParamStr(i), length(ParamStr(i)) - 2)
      else
        if LeftStr(ParamStr(i), 2) = '-l' then //-l = Nro de comprobante a imprimir. Solo con comando F
          id_cpb:= RightStr(ParamStr(i), length(ParamStr(i)) - 2)
        else
          if LeftStr(ParamStr(i), 2) = '-t' then //-t = Tipo de auditoria Z (T=Total general; D=Detallado). Solo con comando A
            audModo:= RightStr(ParamStr(i), length(ParamStr(i)) - 2)
          else
            if LeftStr(ParamStr(i), 2) = '-d' then //-d = Fecha desde de la auditoria Z. Solo con comando A
              audFDesde:= RightStr(ParamStr(i), length(ParamStr(i)) - 2)
            else
              if LeftStr(ParamStr(i), 2) = '-h' then //-h = Fecha hasta de la auditoria Z. Solo con comando A
                audFHasta:= RightStr(ParamStr(i), length(ParamStr(i)) - 2)
              else
                if LeftStr(ParamStr(i), 2) = '-p' then //-p = si se muestra el panel principal
                  preview:= true;
    end;

    Visible:= preview;
    Panel1.Enabled:= preview;

    try
      if comando <> '' then
      begin
        if comando = 'Z' then
          cierreZ()
        else
          if comando = 'X' then
            cierreX()
          else
            if comando = 'F' then
              facturar(if_marca)
            else
              if comando = 'A' then
                auditoria();
      end;
    except
      begin
        mensajeError:= 'Comando a ejecutar incorrecto, verifique. Z(Cierre Z), X(Cierre X), A(Auditoria), F(Factura)';
        mostrarError(mensajeError, tituloError);
      end
    end;

    if not visible then
      Application.Terminate;
  end
  else
  begin
    Visible:= true;
    Panel1.Enabled:= true;
    gBoxImpresora.Visible:= true;
    cBoxImpresora_MarcaChange(self);
    cBoxImpresora_PuertoChange(self);
    cBoxImpresora_VelocidadChange(self);
  end
end;


function TFPrincipal.cerrarImpresora: integer;
begin
  if if_marca = '' then
    exit;

  if (if_marca = 'EPSON') then
  begin
    lblErrorDriver.Caption:= '';
    Result:= 0;
  end
end;


///////////////////////////////////////////
//              CIERRE Z
///////////////////////////////////////////

procedure TFPrincipal.cierreZ;
var
  auxTipo, auxImprimir, auxEstado: WideString;
begin
  if if_marca = '' then
    exit;

  if (if_marca = 'EPSON') then
  begin
    auxTipo:= 'Z';
    auxImprimir:= 'P';
    auxEstado:= 'N';
    if PrinterFiscal_Epson.CloseJournal(auxTipo, auxImprimir) then
      PrinterFiscal_Epson.Status(auxEstado);
  end;

  if (if_marca = 'HASAR') then
  begin
    Hasar.Comenzar;
    Hasar.TratarDeCancelarTodo;
    Hasar.ReporteZ;
    Hasar.Finalizar;
  end;
end;


///////////////////////////////////////////
//              CIERRE X
///////////////////////////////////////////

procedure TFPrincipal.cierreX;
var
  auxTipo, auxImprimir, auxEstado: WideString;
begin
  if if_marca = '' then
    exit;

  if (if_marca = 'EPSON') then
  begin
    auxTipo:= 'X';
    auxImprimir:= 'P';
    auxEstado:= 'N';
    if PrinterFiscal_Epson.CloseJournal(auxTipo, auxImprimir) then
      PrinterFiscal_Epson.Status(auxEstado);
  end;

  if (if_marca = 'HASAR') then
  begin
    Hasar.Comenzar;
    Hasar.TratarDeCancelarTodo;
    Hasar.ReporteX;
    Hasar.Finalizar;
  end;
end;


///////////////////////////////////////////
//              AUDITORIA
///////////////////////////////////////////

procedure TFPrincipal.auditoria;
var
  auxEstado, auxMode, auxFdesde, auxFHasta, auxTipo: WideString;
  auxFDesdeD, auxFHastaD: TDateTime;
  anio, mes, dia: integer;
begin
  if if_marca = '' then
    exit;

  if (if_marca = 'EPSON') then
  begin
    auxTipo:= 'F';
    auxMode:= audModo;
    auxFdesde:= audFDesde;
    auxFHasta:= audFHasta;
    auxEstado:= 'N';
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

    Hasar.Comenzar;
    Hasar.TratarDeCancelarTodo;
    if audModo = 'T' then //T = Reporte total general
      Hasar.ReporteZPorFechas(auxFDesdeD, auxFHastaD, false)
    else
      if audModo = 'D' then //D = Reporte detallado
        Hasar.ReporteZPorFechas(auxFDesdeD, auxFHastaD, true);
    Hasar.Finalizar;
  end;
end;


///////////////////////////////////////////
//              FACTURA
///////////////////////////////////////////

procedure TFPrincipal.facturar(marca: string);
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
    facturaEpson;
  if (marca = 'HASAR') then
    facturaHasar;
end;


procedure TFPrincipal.cancelarTicket(marca: string);
var
  aux1, aux2, aux3: widestring;
begin
  if marca = 'EPSON' then
  begin
    aux1:= 'CANCELADO';
    aux2:= '000000000000';
    aux3:= 'C';

    PrinterFiscal_Epson.SendInvoicePayment(aux1, aux2, aux3);
  end;
end;


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


procedure TFPrincipal.btnAbrirPuertoClick(Sender: TObject);
begin
  abrirImpresora();
end;


procedure TFPrincipal.btnCerrarPuertoClick(Sender: TObject);
begin
  cerrarImpresora();
end;


procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.ProcessMessages;
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


procedure TFPrincipal.cBoxImpresora_PuertoChange(Sender: TObject);
begin
  if_puerto:= cBoxImpresora_Puerto.Text;
end;


procedure TFPrincipal.cBoxImpresora_VelocidadChange(Sender: TObject);
begin
  if_velocidad:= strtoint(cBoxImpresora_Velocidad.Text);
end;


procedure TFPrincipal.facturaEpson;
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
begin
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

  resultado:= PrinterFiscal_Epson.OpenInvoice(TipoDocumento, TipoPapel, TipoLetra, CantidadCopias, TipoFormulario,
    TipoFuente, TipoIVAEmisor, TipoIVAComprador, NombreComprador1, NombreComprador2,
    TpoDocComprador, NroDocComprador, BienDeUso, DomicilioComprador1, DomicilioComprador2,
    DomicilioComprador3, LineaVariable1, LineaVariable2, TipoTablaBien);
  if not resultado then
  begin
    mensajeError:= DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
      DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
    mensajeError:= '1. OPEN INVOICE' + #13 + mensajeError;
    mostrarError(mensajeError, tituloError);
    cancelarTicket(marca);
    exit;
  end;

  //PASO 2: CARGAR ITEMS
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
      descuento_redondeo:= roundto((PrecioUnitario * Cantidad) - ZQ_ItemsIMPORTE_IF_SINIVA.AsFloat, -2);
    end
    else
    begin
      PrecioUnitario:= ZQ_ItemsIMPORTE_IF.AsFloat / ZQ_ItemsCANTIDAD.AsFloat;
      PrecioUnitario:= RoundTo(PrecioUnitario, -2);
      descuento_redondeo:= roundto((PrecioUnitario * Cantidad) - ZQ_ItemsIMPORTE_IF.AsFloat, -2);
    end;
    PrecioUnitarioWide:= FloatToStr(PrecioUnitario * 100);
    descuento_redondeoWide:= FloatToStr(descuento_redondeo * 100);

    TasaIva:= 0.21;
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

    resultado:= PrinterFiscal_Epson.SendInvoiceItem(DescripcionProducto, CantidadWide, PrecioUnitarioWide, TasaIvaWide, CalificadorDeItem,
      CantidadDeBultosWide, ImpuestosInternosWide, LineaDescExtra1, LineaDescExtra2,
      LineaDescExtra3, TasaAcrecentamientoWide, ImpuestosIntFijosWide);
    if not resultado then
    begin
      mensajeError:= DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
        DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
      mensajeError:= '2. SEND INVOICE ITEM' + #13 + mensajeError;
      mostrarError(mensajeError, tituloError);
      cancelarTicket(marca);
      exit;
    end;

    ZQ_Items.Next;
  end;

  //PASO 3: SUBTOTAL
  auxSubtotal1:= 'P';
  auxSubtotal2:= 'SUBTOTAL';
  resultado:= PrinterFiscal_Epson.GetInvoiceSubtotal(auxSubtotal1, auxSubtotal2);
  if not resultado then
  begin
    mensajeError:= DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
      DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
    mensajeError:= '3. GET INVOICE SUBTOTAL' + #13 + mensajeError;
    mostrarError(mensajeError, tituloError);
    cancelarTicket(marca);
    exit;
  end;

  //PASO 4: CARGAR FORMA PAGO
  ZQ_FormaPago.First;
  while not ZQ_FormaPago.Eof do
  begin
    DescripcionFPago:= LeftStr(ZQ_FormaPagoFORMA_PAGO_NOMBRE.AsString, 25);
    MontoFPago:= ZQ_FormaPagoFORMA_PAGO_IMPORTE.AsFloat;
    MontoFPagoWide:= FloatToStr(ZQ_FormaPagoFORMA_PAGO_IMPORTE.AsFloat * 100);
    CalificadorFPago:= 'T';
    resultado:= PrinterFiscal_Epson.SendInvoicePayment(DescripcionFPago, MontoFPagoWide, CalificadorFPago);
    if not resultado then
    begin
      mensajeError:= DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
        DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
      mensajeError:= '4. SEND INVOICE PAYMENT (T)' + #13 + mensajeError;
      mostrarError(mensajeError, tituloError);
      cancelarTicket(marca);
      exit;
    end;

    ZQ_FormaPago.Next;
  end;

  if descuento_redondeo > 0 then
  begin
    DescripcionFPago:= 'DESCUENTO REDONDEO';
    CalificadorFPago:= 'D';
    resultado:= PrinterFiscal_Epson.SendInvoicePayment(DescripcionFPago, descuento_redondeoWide, CalificadorFPago);
    if not resultado then
    begin
      mensajeError:= DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
        DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
      mensajeError:= '4. SEND INVOICE PAYMENT (D)' + #13 + mensajeError;
      mostrarError(mensajeError, tituloError);
      cancelarTicket(marca);
      exit;
    end;
  end;

//      //PASO 5: DISCRIMINACION IVA  revisar esto
//      //    If TipoLetra = 'Alfajor' Then
//      //    begin
//      //      DescripcionFPago:= 'IVA 21 %';
//      //      MontoFPago:= 0;
//      //      CalificadorFPago:= 'T';
//      //      resultado:= DriverFiscal.EpsonForm.FACTPAGO(DescripcionFPago, MontoFPago, CalificadorFPago);
//      //      if resultado <> 0 then
//      //      begin
//      //        DriverFiscal.EpsonForm.FACTCANCEL;
//      //        exit;
//      //      end;
//      //
//      //      DescripcionFPago:= 'CONCEPTOS NO GRABADOS';
//      //      MontoFPago:= 0;
//      //      CalificadorFPago:= 'T';
//      //      resultado:= DriverFiscal.EpsonForm.FACTPAGO(DescripcionFPago, MontoFPago, CalificadorFPago);
//      //      if resultado <> 0 then
//      //      begin
//      //        DriverFiscal.EpsonForm.FACTCANCEL;
//      //        exit;
//      //      end;
//      //    end;

  //PASO 5: CERRAR FACTURA
  auxCerrar:= 'TOTAL';
  resultado:= PrinterFiscal_Epson.CloseInvoice(TipoDocumento, TipoLetra, auxCerrar);
  if not resultado then
  begin
    mensajeError:= DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
      DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
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
end;


procedure TFPrincipal.facturaHasar;
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
  NombreComprador: widestring; // Nombre comercial del comprador línea 1 (max 40 bytes)
  TpoDocComprador: widestring; // Tipo de documento del comprador (CUIT, CUIL, DNI) (max 6 bytes)
  NroDocComprador: widestring; // CUIT o Numero documento del comprador (max 11 bytes)
  BienDeUso: widestring; // Bien de uso (B o N)
  DomicilioComprador: widestring; // Domicilio del comprador, línea 1 (max 40 bytes)
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
begin
  marca:= 'HASAR';

  Hasar.PrecioBase:= false;
  Hasar.Comenzar;
  Hasar.TratarDeCancelarTodo;
//  Hasar.DatosCliente(NombreComprador, NroDocComprador, );

  //TIPO DE FACTURA A, B o C
  if (ZQ_FacturaTIPO_FACTURA.IsNull) or (trim(ZQ_FacturaTIPO_FACTURA.AsString) = '') then
    TipoLetra:= 'B'
  else
    TipoLetra:= ZQ_FacturaTIPO_FACTURA.AsString;

  if TipoLetra = 'A' then
    Hasar.AbrirComprobanteFiscal(FACTURA_A)
  else
  if TipoLetra = 'B' then
    Hasar.AbrirComprobanteFiscal(FACTURA_B);


//  //PASO 1: ABRIR FACTURA
//  TipoDocumento:= 'T'; // T = Ticket-factura
//  TipoPapel:= 'C'; //C = Formulario continuo
//
//  //TIPO DE FACTURA A, B o C
//  if (ZQ_FacturaTIPO_FACTURA.IsNull) or (trim(ZQ_FacturaTIPO_FACTURA.AsString) = '') then
//    TipoLetra:= 'B'
//  else
//    TipoLetra:= ZQ_FacturaTIPO_FACTURA.AsString;
//
//  CantidadCopias:= '1';
//  TipoFormulario:= 'P'; //P = La impresora fiscal debe dibujar las líneas
//  TipoFuente:= '17';
//  TipoIVAEmisor:= 'I'; //I = Responsable Inscripto
//
//  //TIPO IVA COMPRADOR
//  if (ZQ_FacturaLETRA_FISCAL.IsNull) or (trim(ZQ_FacturaLETRA_FISCAL.AsString) = '') or (ZQ_FacturaLETRA_FISCAL.AsString = 'F') then
//    TipoIVAComprador:= 'C' //por defecto consumidor final
//  else
//    TipoIVAComprador:= ZQ_FacturaLETRA_FISCAL.AsString;
//
//  if (ZQ_FacturaNOMBRE.IsNull) or (trim(ZQ_FacturaNOMBRE.AsString) = '') then
//    NombreComprador1:= 'CONSUMIDOR FINAL'
//  else
//    NombreComprador1:= LeftStr(ZQ_FacturaNOMBRE.AsString, 50);
//
//  NombreComprador2:= char(127);
//
//  if (ZQ_FacturaNOMBRE_TIPO_DOC.IsNull) or (trim(ZQ_FacturaNOMBRE_TIPO_DOC.AsString) = '') then
//    TpoDocComprador:= 'DNI'
//  else
//    TpoDocComprador:= LeftStr(ZQ_FacturaNOMBRE_TIPO_DOC.AsString, 6);
//
//  if (ZQ_FacturaNUMERO_DOC.IsNull) or (trim(ZQ_FacturaNUMERO_DOC.AsString) = '') then
//    NroDocComprador:= 'XXX'
//  else
//    NroDocComprador:= LeftStr(ZQ_FacturaNUMERO_DOC.AsString, 11);
//
//  if not ((ZQ_FacturaCUIT_CUIL.IsNull) or (trim(ZQ_FacturaCUIT_CUIL.AsString) = '')) then
//  begin
//    if (TipoLetra = 'A') or (TipoIVAComprador = 'M') or (TipoIVAComprador = 'E') then
//    begin
//      TpoDocComprador:= 'CUIT';
//      NroDocComprador:= LeftStr(ZQ_FacturaCUIT_CUIL.AsString, 11);
//    end;
//  end;
//
//  BienDeUso:= 'N';
//
//  if (ZQ_FacturaDIRECCION.IsNull) or (trim(ZQ_FacturaDIRECCION.AsString) = '') then
//    DomicilioComprador1:= '(3000) SANTA FE'
//  else
//    DomicilioComprador1:= LeftStr(ZQ_FacturaDIRECCION.AsString, 50);
//
////  if (ZQ_FacturaLOCALIDAD.IsNull) or (trim(ZQ_FacturaLOCALIDAD.AsString) = '') then
////    DomicilioComprador2:= 'SANTA FE'
////  else
////    DomicilioComprador2:= LeftStr(ZQ_FacturaLOCALIDAD.AsString, 50);
//
////  DomicilioComprador3:= char(127);
//  LineaVariable1:= '.';
//  LineaVariable2:= '.';
//  TipoTablaBien:= 'C';
//
//  resultado:= PrinterFiscal_Epson.OpenInvoice(TipoDocumento, TipoPapel, TipoLetra, CantidadCopias, TipoFormulario,
//    TipoFuente, TipoIVAEmisor, TipoIVAComprador, NombreComprador1, NombreComprador2,
//    TpoDocComprador, NroDocComprador, BienDeUso, DomicilioComprador1, DomicilioComprador2,
//    DomicilioComprador3, LineaVariable1, LineaVariable2, TipoTablaBien);
//  if not resultado then
//  begin
//    mensajeError:= DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
//      DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
//    mensajeError:= '1. OPEN INVOICE' + #13 + mensajeError;
//    mostrarError(mensajeError, tituloError);
//    cancelarTicket(marca);
//    exit;
//  end;
//
//  //PASO 2: CARGAR ITEMS
//  ZQ_Items.First;
//  while not ZQ_Items.Eof do
//  begin
//    //Max de 20 caracteres
//    DescripcionProducto:= LeftStr(' ' + ZQ_ItemsNOMBRE_PRODUCTO.AsString, 20);
//
//    Cantidad:= ZQ_ItemsCANTIDAD.AsFloat;
//    CantidadWide:= FloatToStr(Cantidad * 1000);
//
//    if (TipoLetra = 'A') and (ZQ_ItemsIMPORTE_IF_SINIVA.AsFloat > 0) then
//    begin
//      PrecioUnitario:= ZQ_ItemsIMPORTE_IF_SINIVA.AsFloat / ZQ_ItemsCANTIDAD.AsFloat;
//      PrecioUnitario:= RoundTo(PrecioUnitario, -2);
//      descuento_redondeo:= roundto((PrecioUnitario * Cantidad) - ZQ_ItemsIMPORTE_IF_SINIVA.AsFloat, -2);
//    end
//    else
//    begin
//      PrecioUnitario:= ZQ_ItemsIMPORTE_IF.AsFloat / ZQ_ItemsCANTIDAD.AsFloat;
//      PrecioUnitario:= RoundTo(PrecioUnitario, -2);
//      descuento_redondeo:= roundto((PrecioUnitario * Cantidad) - ZQ_ItemsIMPORTE_IF.AsFloat, -2);
//    end;
//    PrecioUnitarioWide:= FloatToStr(PrecioUnitario * 100);
//    descuento_redondeoWide:= FloatToStr(descuento_redondeo * 100);
//
//    TasaIva:= 0.21;
//    TasaIvaWide:= FloatToStr(TasaIva * 10000);
//
//    CalificadorDeItem:= 'M';
//    CantidadDeBultos:= 1;
//    CantidadDeBultosWide:= FloatToStr(CantidadDeBultos);
//    ImpuestosInternos:= 0;
//    ImpuestosInternosWide:= FloatToStr(ImpuestosInternos);
//    LineaDescExtra1:= char(127);
//    LineaDescExtra2:= char(127);
//    LineaDescExtra3:= char(127);
//
//    if productoDetallado then
//    begin
//      LineaDescExtra1:= LeftStr(' Marca: ' + ZQ_ItemsNOMBRE_MARCA.AsString, 30);
//      LineaDescExtra2:= LeftStr(' Col.: ' + ZQ_ItemsNOMBRE_COLOR.AsString + ' / Med.: ' + ZQ_ItemsNOMBRE_MEDIDA.AsString, 30);
//    end;
//
//    TasaAcrecentamiento:= 0;
//    TasaAcrecentamientoWide:= FloatToStr(TasaAcrecentamiento);
//
//    if ZQ_ItemsIMPUESTO_INTERNO.IsNull then
//      ImpuestosIntFijos:= 0
//    else
//      ImpuestosIntFijos:= ZQ_ItemsIMPUESTO_INTERNO.AsFloat / ZQ_ItemsCANTIDAD.AsFloat;
//    ImpuestosIntFijosWide:= FloatToStr(ImpuestosIntFijos * 100000000);
//
//    resultado:= PrinterFiscal_Epson.SendInvoiceItem(DescripcionProducto, CantidadWide, PrecioUnitarioWide, TasaIvaWide, CalificadorDeItem,
//      CantidadDeBultosWide, ImpuestosInternosWide, LineaDescExtra1, LineaDescExtra2,
//      LineaDescExtra3, TasaAcrecentamientoWide, ImpuestosIntFijosWide);
//    if not resultado then
//    begin
//      mensajeError:= DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
//        DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
//      mensajeError:= '2. SEND INVOICE ITEM' + #13 + mensajeError;
//      mostrarError(mensajeError, tituloError);
//      cancelarTicket(marca);
//      exit;
//    end;
//
//    ZQ_Items.Next;
//  end;
//
//  //PASO 3: SUBTOTAL
//  auxSubtotal1:= 'P';
//  auxSubtotal2:= 'SUBTOTAL';
//  resultado:= PrinterFiscal_Epson.GetInvoiceSubtotal(auxSubtotal1, auxSubtotal2);
//  if not resultado then
//  begin
//    mensajeError:= DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
//      DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
//    mensajeError:= '3. GET INVOICE SUBTOTAL' + #13 + mensajeError;
//    mostrarError(mensajeError, tituloError);
//    cancelarTicket(marca);
//    exit;
//  end;
//
//  //PASO 4: CARGAR FORMA PAGO
//  ZQ_FormaPago.First;
//  while not ZQ_FormaPago.Eof do
//  begin
//    DescripcionFPago:= LeftStr(ZQ_FormaPagoFORMA_PAGO_NOMBRE.AsString, 25);
//    MontoFPago:= ZQ_FormaPagoFORMA_PAGO_IMPORTE.AsFloat;
//    MontoFPagoWide:= FloatToStr(ZQ_FormaPagoFORMA_PAGO_IMPORTE.AsFloat * 100);
//    CalificadorFPago:= 'T';
//    resultado:= PrinterFiscal_Epson.SendInvoicePayment(DescripcionFPago, MontoFPagoWide, CalificadorFPago);
//    if not resultado then
//    begin
//      mensajeError:= DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
//        DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
//      mensajeError:= '4. SEND INVOICE PAYMENT (T)' + #13 + mensajeError;
//      mostrarError(mensajeError, tituloError);
//      cancelarTicket(marca);
//      exit;
//    end;
//
//    ZQ_FormaPago.Next;
//  end;
//
//  if descuento_redondeo > 0 then
//  begin
//    DescripcionFPago:= 'DESCUENTO REDONDEO';
//    CalificadorFPago:= 'D';
//    resultado:= PrinterFiscal_Epson.SendInvoicePayment(DescripcionFPago, descuento_redondeoWide, CalificadorFPago);
//    if not resultado then
//    begin
//      mensajeError:= DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
//        DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
//      mensajeError:= '4. SEND INVOICE PAYMENT (D)' + #13 + mensajeError;
//      mostrarError(mensajeError, tituloError);
//      cancelarTicket(marca);
//      exit;
//    end;
//  end;
//
////      //PASO 5: DISCRIMINACION IVA  revisar esto
////      //    If TipoLetra = 'Alfajor' Then
////      //    begin
////      //      DescripcionFPago:= 'IVA 21 %';
////      //      MontoFPago:= 0;
////      //      CalificadorFPago:= 'T';
////      //      resultado:= DriverFiscal.EpsonForm.FACTPAGO(DescripcionFPago, MontoFPago, CalificadorFPago);
////      //      if resultado <> 0 then
////      //      begin
////      //        DriverFiscal.EpsonForm.FACTCANCEL;
////      //        exit;
////      //      end;
////      //
////      //      DescripcionFPago:= 'CONCEPTOS NO GRABADOS';
////      //      MontoFPago:= 0;
////      //      CalificadorFPago:= 'T';
////      //      resultado:= DriverFiscal.EpsonForm.FACTPAGO(DescripcionFPago, MontoFPago, CalificadorFPago);
////      //      if resultado <> 0 then
////      //      begin
////      //        DriverFiscal.EpsonForm.FACTCANCEL;
////      //        exit;
////      //      end;
////      //    end;
//
//  //PASO 5: CERRAR FACTURA
//  auxCerrar:= 'TOTAL';
//  resultado:= PrinterFiscal_Epson.CloseInvoice(TipoDocumento, TipoLetra, auxCerrar);
//  if not resultado then
//  begin
//    mensajeError:= DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.PrinterStatus, 'PrinterCode') + #13 + #13 +
//      DecodificadorErrorFiscal('$' + PrinterFiscal_Epson.FiscalStatus, 'FiscalCode');
//    mensajeError:= '5. CLOSE INVOICE' + #13 + mensajeError;
//    mostrarError(mensajeError, tituloError);
//    cancelarTicket(marca);
//    exit;
//  end;
//
//  //PASO 7: OBTENER NUMERO DE COMPROBANTE Y PUNTO DE VENTA
//  numeroCpb:= PrinterFiscal_Epson.AnswerField_3;
//    //Cambio el status para poder obtener el numero de Punto Venta. C = Información sobre el contribuyente
//  auxEstado:= 'C';
//  PrinterFiscal_Epson.Status(auxEstado);
//  puntoVenta:= PrinterFiscal_Epson.AnswerField_4;
//    //Vuelvo al estado Normal
//  auxEstado:= 'N';
//  resultado:= PrinterFiscal_Epson.Status(auxEstado);
//  lblFactura.Caption:= puntoVenta + '-' + numeroCpb;
//
//  //PASO 8: INSERTAR EL NUMERO DE COMPROBANTE, PUNTO DE VENTA Y FECHA EN COMPROBANTE IMPRESO
//  if resultado then
//  begin
//    if EKModelo.iniciar_transaccion('UPDATE FACTURA', []) then
//    begin
//      ZQ_UpdateFactura.Close;
//      ZQ_UpdateFactura.ParamByName('numcpb').AsInteger:= StrToInt(numeroCpb);
//      ZQ_UpdateFactura.ParamByName('pventa').AsInteger:= StrToInt(puntoVenta);
//      ZQ_UpdateFactura.ParamByName('fimpresa').AsDateTime:= EKModelo.FechayHora();
//      ZQ_UpdateFactura.ParamByName('idcpb').AsString:= id_cpb;
//      ZQ_UpdateFactura.ExecSQL;
//
//      if not EKModelo.finalizar_transaccion('UPDATE FACTURA') then
//      begin
//        mensajeError:= 'Error al actualizar el PV y NUMERO del comprobante';
//        mostrarError(mensajeError, tituloError);
//      end
//    end
//  end;
//
//  //PASO 9: CORTO EL TIQUET
//  PrinterFiscal_Epson.CutPaper;
end;

end.

