unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EKIni, ZConnection, EKModelo, StdCtrls, ExtCtrls, OleCtrls, StrUtils,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, OCXFISLib_TLB,
  Buttons;

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
    DriverFiscal: TDriverFiscal;
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
    procedure FormCreate(Sender: TObject);
    procedure leerParametros();
    procedure leerArchivoIni();
    procedure cierreZ();
    procedure cierreX();
    procedure facturar();
    procedure auditoria();
    procedure btnCierreZClick(Sender: TObject);
    procedure btnCierreXClick(Sender: TObject);
    procedure btnAuditoriaClick(Sender: TObject);
    function abrirImpresora: integer;
    function cerrarImpresora: integer;
    procedure btnFacturaClick(Sender: TObject);
    procedure btnAbrirPuertoClick(Sender: TObject);
    procedure btnCerrarPuertoClick(Sender: TObject);
    procedure DriverFiscalFiscalError(ASender: TObject; PrinterCode, FiscalCode: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DriverFiscalDriverError(ASender: TObject; DriverError: Smallint);
  private
    db_name, db_host, db_pass, db_user: string;
    if_puerto: string;
    if_velocidad: integer;
    preview: boolean;
    id_cpb, comando, impresora, audTipo, audFDesde, audFHasta: string;
    errorFiscal: integer;
    errorDriver, errorImpresora: integer;
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

const
  PuertoIF = 1;

implementation

uses IniFiles, UUtilidades;

{$R *.dfm}

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  ZQ_Factura.Close;
  ZQ_Items.Close;
  ZQ_FormaPago.Close;

  preview:= false;

  leerArchivoIni;

  abrirImpresora();

  leerParametros;
end;


procedure TFPrincipal.leerArchivoIni();
begin
  EKIni.abrir;

  db_name:= EKIni.Ini.ReadString('DB', 'db_name', '');
  db_host:= EKIni.Ini.ReadString('DB', 'db_host', '127.0.0.1');
  db_user:= EKIni.Ini.ReadString('DB', 'db_user', 'SYSDBA');
  db_pass:= EKIni.Ini.ReadString('DB', 'db_pass', 'masterkey');

  if_puerto:= EKIni.Ini.ReadString('IF', 'if_puerto', 'COM2');
  if_velocidad:= EKIni.Ini.ReadInteger('IF', 'if_velocidad', 9600);

  conexion.Database:= db_name;
  conexion.HostName:= db_host;
  conexion.Password:= db_pass;
  conexion.User:= db_user;

  EKIni.cerrar;
end;


procedure TFPrincipal.leerParametros;
var
  i: integer;
begin
  preview:= false;

  id_cpb:= '';
  impresora:= '';
  comando:= '';
  audTipo:= '';
  audFDesde:= '';
  audFHasta:= '';

  for i:= 1 to ParamCount do
  begin
    editParametros.Text:= ParamStr(i);

    if LeftStr(ParamStr(i), 2) = '-i' then //-i = Impresora
      impresora:= RightStr(ParamStr(i), length(ParamStr(i)) - 2)
    else
      if LeftStr(ParamStr(i), 2) = '-c' then //-c = Comando. Z(Cierre Z), X(Cierre X), A(Auditoria Z), F(Impresion de Factura)
        comando:= RightStr(ParamStr(i), length(ParamStr(i)) - 2)
      else
        if LeftStr(ParamStr(i), 2) = '-l' then //-l = Nro de comprobante a imprimir. Solo con comando F
          id_cpb:= RightStr(ParamStr(i), length(ParamStr(i)) - 2)
        else
          if LeftStr(ParamStr(i), 2) = '-t' then //-t = Tipo de auditoria Z (T=Total general; D=Detallado). Solo con comando A
            audTipo:= RightStr(ParamStr(i), length(ParamStr(i)) - 2)
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

  if impresora = '' then
    impresora:= 'TM-U220AF';

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
            facturar()
          else
            if comando = 'A' then
              auditoria();
    end;
  except
    ShowMessage('Comando Incorrecto');
  end;
end;


function TFPrincipal.abrirImpresora: integer;
begin
  lblErrorDriver.Caption:= '';
  Result:= DriverFiscal.IF_OPEN(if_puerto, if_velocidad);
end;


function TFPrincipal.cerrarImpresora: integer;
begin
  lblErrorDriver.Caption:= '';
  Result:= DriverFiscal.IF_CLOSE();
end;


///////////////////////////////////////////
//              CIERRE Z
///////////////////////////////////////////

procedure TFPrincipal.cierreZ;
begin
  if impresora = '' then
    exit;

  if (impresora = 'TM-U220AF') or (impresora = 'TM-2000AF') then
  begin
    errorFiscal:= DriverFiscal.EpsonForm.CIERRE('Z', 'P');
    DriverFiscal.EpsonForm.ESTADO('N');
  end;
end;


///////////////////////////////////////////
//              CIERRE X
///////////////////////////////////////////

procedure TFPrincipal.cierreX;
begin
  if impresora = '' then
    exit;

  if (impresora = 'TM-U220AF') or (impresora = 'TM-2000AF') then
  begin
    errorFiscal:= DriverFiscal.EpsonForm.CIERRE('X', 'P');
    DriverFiscal.EpsonForm.ESTADO('N');
  end;
end;


///////////////////////////////////////////
//              AUDITORIA
///////////////////////////////////////////

procedure TFPrincipal.auditoria;
begin
  if impresora = '' then
    exit;

  if (impresora = 'TM-U220AF') or (impresora = 'TM-2000AF') then
  begin
    //AAMMDD
    errorFiscal:= DriverFiscal.EpsonForm.AUDITORIAF(audFDesde, audFHasta, audTipo);
    DriverFiscal.EpsonForm.ESTADO('N');
  end;
end;


///////////////////////////////////////////
//              FACTURA
///////////////////////////////////////////

procedure TFPrincipal.facturar;
var
  //VARIABLES PARA ABRIR FACTURA
  TipoDocumento: string;          // Tipo de documento fiscal a realizar. F=Ticket-factura; M=Nota de crédito; T=Ticket-factura
  TipoPapel: string;              // Tipo de salida impresa para factura fiscal o recibo. C=Formulario continuo; S=Hoja suelta o slip
  TipoLetra: string;              // Letra del documento fiscal (A,B o C)
  CantidadCopias: string;         // Cantidad de copias que se deben imprimir (1 a 5)
  TipoFormulario: string;         // Tipo de formulario que se utiliza para la factura emitidas en hoja suelta o formulario continuo. A=Autoimpreso; F=Formulario pre-impreso; P=La impresora fiscal debe dibujar las líneas
  TipoFuente: string;             // Tamaño de los caracteres que se van a utilizar en toda la factura en CPI (10, 12, 17)
  TipoIVAEmisor: string;          // Responsabilidad frente al IVA del EMISOR (I, R, N, E, M)
  TipoIVAComprador: string;       // Responsabilidad frente al IVA del COMPROADOR (I, R, N, E, M, F, S)
  NombreComprador1: string;       // Nombre comercial del comprador línea 1 (max 40 bytes)
  NombreComprador2: string;       // Nombre comercial del comprador línea 2 (max 40 bytes)
  TpoDocComprador: string;        // Tipo de documento del comprador (CUIT, CUIL, DNI) (max 6 bytes)
  NroDocComprador: string;        // CUIT o Numero documento del comprador (max 11 bytes)
  BienDeUso: string;              // Bien de uso (B o N)
  DomicilioComprador1: string;    // Domicilio del comprador, línea 1 (max 40 bytes)
  DomicilioComprador2: string;    // Domicilio del comprador, línea 2 (max 40 bytes)
  DomicilioComprador3: string;    // Domicilio del comprador, línea 3 (max 40 bytes)
  LineaVariable1: string;         // Línea 1 de texto variable (max 40 bytes)
  LineaVariable2: string;         // Línea 1 de texto variable (max 40 bytes)
  TipoTablaBien: string;          // Formato para almacenar los datos (C o G)
  //VARIABLES PARA ENVIAR ITEMS
  DescripcionProducto: string;    // Descripción del producto (max 20 bytes)
  Cantidad: string;               // Cantidad vendida
  PrecioUnitario: string;         // Precio Unitario
  TasaIva: string;                // Tasa del iva
  CalificadorDeItem: string;      // Calificador de la operación. M = Monto agregado mercadería (SUMA); m = Anula el item vendido (RESTA); R = Bonificacion (RESTA); r = anula una bonificacion (SUMA)
  CantidadDeBultos: string;       // Canidad de bultos
  ImpuestosInternos: string;      // Impuestos internos porcentuales
  LineaDescExtra1: string;        // Linea 1 descripcion complementaria del item (max 30 bytes)
  LineaDescExtra2: string;        // Linea 2 descripcion complementaria del item (max 30 bytes)
  LineaDescExtra3: string;        // Linea 3 descripcion complementaria del item (max 30 bytes)
  TasaAcrecentamiento: string;    // Tasa Acrecentamiento
  ImpuestosIntFijos: string;      // Impuestos Internos Fijos

begin
  if impresora = '' then
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
    exit;

  if (impresora = 'TM-U220AF') or (impresora = 'TM-2000AF') then
  begin
    //VARIABLES PARA ABRIR FACTURA
    TipoDocumento:= 'T';  // T = Ticket-factura

    TipoPapel:= 'C';  //C = Formulario continuo

    if (ZQ_FacturaTIPO_FACTURA.IsNull) or (ZQ_FacturaTIPO_FACTURA.AsString = '') then
      TipoLetra:= 'B'
    else
      TipoLetra:= ZQ_FacturaTIPO_FACTURA.AsString;

    CantidadCopias:= '1';

    TipoFormulario:= 'P'; //P = La impresora fiscal debe dibujar las líneas

    TipoFuente:= '17';

    TipoIVAEmisor:= 'I'; //I = Responsable Inscripto

    if (ZQ_FacturaLETRA_FISCAL.IsNull) or (ZQ_FacturaLETRA_FISCAL.AsString = '') then
      TipoIVAComprador:= 'F'
    else
      TipoIVAComprador:= ZQ_FacturaLETRA_FISCAL.AsString;

    if (ZQ_FacturaNOMBRE.IsNull) or (ZQ_FacturaNOMBRE.AsString = '') then
      NombreComprador1:= 'CONSUMIDOR FINAL'
    else
      NombreComprador1:= ZQ_FacturaNOMBRE.AsString;

    NombreComprador2:= '';

    if (ZQ_FacturaNOMBRE_TIPO_DOC.IsNull) or (ZQ_FacturaNOMBRE_TIPO_DOC.AsString = '') then
      TpoDocComprador:= 'DNI'
    else
      TpoDocComprador:= 'DNI';// ZQ_FacturaNOMBRE_TIPO_DOC.AsString;

    if (ZQ_FacturaNUMERO_DOC.IsNull) or (ZQ_FacturaNUMERO_DOC.AsString = '') then
      NroDocComprador:= '11111111'
    else
      NroDocComprador:= ZQ_FacturaNUMERO_DOC.AsString;

    if not ((ZQ_FacturaCUIT_CUIL.IsNull) or (ZQ_FacturaCUIT_CUIL.AsString = '')) then
    begin
      if (TipoLetra = 'A') or (TipoIVAComprador = 'M') or (TipoIVAComprador = 'E') then
      begin
        TpoDocComprador:= 'CUIT';
        NroDocComprador:= ZQ_FacturaCUIT_CUIL.AsString;
      end;
    end;

    BienDeUso:= 'N';

    if (ZQ_FacturaDIRECCION.IsNull) or (ZQ_FacturaDIRECCION.AsString = '') then
      DomicilioComprador1:= 'SANTA FE'
    else
      DomicilioComprador1:= ZQ_FacturaDIRECCION.AsString;

    if (ZQ_FacturaLOCALIDAD.IsNull) or (ZQ_FacturaLOCALIDAD.AsString = '') then
      DomicilioComprador2:= 'SANTA FE'
    else
      DomicilioComprador2:= ZQ_FacturaLOCALIDAD.AsString;

    DomicilioComprador3:= char(127);

    LineaVariable1:= char(127);

    LineaVariable2:= char(127);

    TipoTablaBien:= 'C';

    DriverFiscal.EpsonForm.FACTABRE(TipoDocumento, TipoPapel, TipoLetra, CantidadCopias, TipoFormulario,
                                    TipoFuente, TipoIVAEmisor, TipoIVAComprador, NombreComprador1, NombreComprador2,
                                    TpoDocComprador, NroDocComprador, BienDeUso, DomicilioComprador1, DomicilioComprador2,
                                    DomicilioComprador3, LineaVariable1, LineaVariable2, TipoTablaBien);
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
begin
  audFDesde:= '120101';
  audFHasta:= '121231';
  audTipo:= 'T';
  auditoria;
end;


procedure TFPrincipal.btnFacturaClick(Sender: TObject);
begin
  id_cpb:= editNumeroComprobante.Text;
  facturar;
end;


procedure TFPrincipal.btnAbrirPuertoClick(Sender: TObject);
begin
  abrirImpresora();
end;

procedure TFPrincipal.btnCerrarPuertoClick(Sender: TObject);
begin
  cerrarImpresora();
end;


procedure TFPrincipal.DriverFiscalFiscalError(ASender: TObject; PrinterCode, FiscalCode: Integer);
begin
  if errorDriver = 5 then
//    lblErrorDriver.Caption:= lblErrorDriver.Caption + Format(' PrinterCode: %d // FiscalCode: %d ', [PrinterCode, FiscalCode]);
    ShowMessage(DecodificadorErrorFiscal(PrinterCode, 'PrinterCode'));
    ShowMessage(DecodificadorErrorFiscal(FiscalCode, 'FiscalCode'));
end;


procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cerrarImpresora();
end;


procedure TFPrincipal.DriverFiscalDriverError(ASender: TObject; DriverError: Smallint);
begin
  errorDriver:= DriverError;

  case DriverError of
    0..4: begin
        lblErrorDriver.Caption:= 'Error COM/DLL';
      end;
    5: begin
        lblErrorDriver.Caption:= 'Error Impresora: ';
      end;
  end;
end;

end.

