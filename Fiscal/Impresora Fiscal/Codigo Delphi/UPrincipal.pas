unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EKIni, ZConnection, EKModelo, StdCtrls, ExtCtrls, OleCtrls, StrUtils,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, OCXFISLib_TLB;

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
    lblError: TLabel;
    btnCierreZ: TButton;
    btnCierreX: TButton;
    btnAuditoria: TButton;
    editNumeroComprobante: TEdit;
    btnFactura: TButton;
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
  private
    db_name, db_host, db_pass, db_user: string;
    if_puerto: string;
    if_velocidad: integer;
    preview: boolean;
    id_cpb, comando, impresora, audTipo, audFDesde, audFHasta: string;
    errorFiscal: integer;
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

const
  PuertoIF = 1;  

implementation

uses IniFiles;

{$R *.dfm}
 
procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  ZQ_Factura.Close;
  ZQ_Items.Close;
  ZQ_FormaPago.Close;

  preview:= false;

  leerArchivoIni;

  //leerParametros;
end;


procedure TFPrincipal.leerArchivoIni();
begin
  EKIni.abrir;

  db_name:= EKIni.Ini.ReadString('DB', 'db_name', '');
  db_host:= EKIni.Ini.ReadString('DB', 'db_host', '127.0.0.1');
  db_user:= EKIni.Ini.ReadString('DB', 'db_user', 'SYSDBA');
  db_pass:= EKIni.Ini.ReadString('DB', 'db_pass', 'masterkey');

  if_puerto:= EKIni.Ini.ReadString('IF', 'if_puerto', 'COM1');
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
      impresora:= RightStr(ParamStr(i), length(ParamStr(i))-2)
    else
    if LeftStr(ParamStr(i), 2) = '-c' then //-c = Comando. Z(Cierre Z), X(Cierre X), A(Auditoria Z), F(Impresion de Factura)
      comando:= RightStr(ParamStr(i), length(ParamStr(i))-2)
    else
    if LeftStr(ParamStr(i), 2) = '-l' then //-l = Nro de comprobante a imprimir. Solo con comando F
      id_cpb:= RightStr(ParamStr(i), length(ParamStr(i))-2)
    else
    if LeftStr(ParamStr(i), 2) = '-t' then //-t = Tipo de auditoria Z (T=Total general; D=Detallado). Solo con comando A
      audTipo:= RightStr(ParamStr(i), length(ParamStr(i))-2)
    else
    if LeftStr(ParamStr(i), 2) = '-d' then //-d = Fecha desde de la auditoria Z. Solo con comando A
      audFDesde:= RightStr(ParamStr(i), length(ParamStr(i))-2)
    else
    if LeftStr(ParamStr(i), 2) = '-h' then //-h = Fecha hasta de la auditoria Z. Solo con comando A
      audFHasta:= RightStr(ParamStr(i), length(ParamStr(i))-2)
    else
    if LeftStr(ParamStr(i), 2) = '-p' then //-p = si se muestra el panel principal
      preview:=true;
  end;

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
      auditoria()
    else
      ShowMessage('comando incorrecto');
    end;
end;


function TFPrincipal.abrirImpresora: integer;
begin
  Result:= DriverFiscal.IF_OPEN(if_puerto, if_velocidad);
end;


function TFPrincipal.cerrarImpresora: integer;
begin
  Result:= DriverFiscal.IF_CLOSE();
end;


///////////////////////////////////////////
//              CIERRE Z
///////////////////////////////////////////
procedure TFPrincipal.cierreZ;
var
  err: integer;
begin
  if impresora = '' then
    exit;

  if (impresora = 'TM-U220AF') or (impresora = 'TM-2000AF') then
  begin
    err:= abrirImpresora;
    errorFiscal:= DriverFiscal.EpsonForm.CIERRE('Z', 'P');
    lblError.Caption:= inttostr(errorFiscal);
    err:= cerrarImpresora;
  end;
end;


///////////////////////////////////////////
//              CIERRE X
///////////////////////////////////////////
procedure TFPrincipal.cierreX;
var
  err: integer;
begin
  if impresora = '' then
    exit;

  if (impresora = 'TM-U220AF') or (impresora = 'TM-2000AF') then
  begin
    err:= abrirImpresora;
    errorFiscal:= DriverFiscal.EpsonForm.CIERRE('X', 'P');
    lblError.Caption:= inttostr(errorFiscal);
    err:= cerrarImpresora;
  end;
end;


///////////////////////////////////////////
//              AUDITORIA
///////////////////////////////////////////
procedure TFPrincipal.auditoria;
var
  err: integer;
begin
  if impresora = '' then
    exit;

  if (impresora = 'TM-U220AF') or (impresora = 'TM-2000AF') then
  begin
    err:= abrirImpresora;
    errorFiscal:= DriverFiscal.EpsonForm.AUDITORIAF(audFDesde, audFHasta, audTipo);
    lblError.Caption:= inttostr(errorFiscal);
    err:= cerrarImpresora;
  end;
end;


///////////////////////////////////////////
//              FACTURA
///////////////////////////////////////////
procedure TFPrincipal.facturar;
var
  err: integer;
    TipoFormulario: String;            // 'FormType
    TipoLetra : String  ;             // 'InvoiceLetter
    TipoFuente : String ;             // 'FontType
    TipoIVAComprador : String   ;     // 'Iva_buyer
    NombreComprador1 : String    ;    // 'BuyerName1
    NombreComprador2 : String     ;   // 'BuyerName2
    TpoDocComprador : String       ;  //  'BuyerDocumentType
    NroDocComprador : String        ; //  'BuyerDocumentNumber
    BienDeUso : String         ;      //  'Fixed:sert (B o N)
    DomicilioComprador1 : String;     //  'BuyerAdress1
    DomicilioComprador2 : String ;    //  'BuyerAdress2
    DomicilioComprador3 : String  ;   //  'BuyerAdress3
    LineaRemito1 : String          ;  // 'Remit1
    LineaRemito2 : String;            // 'Remit2
    TipoTablaBien : String;           //  'StorageDataType (G o C)
    DescripcionArticulo : String ;    //  'Description
    Cantidad : String          ;      //  'Quantity
    PrecioUnitario : String  ;        //  'UnitPrice
    TasaIva : String          ;       //  'Iva_tax
    CalificadorDeItem : String ;      //  'Qualifier M,m,R,r
    CantidadDeBultos : String   ;     //  'Bundle
    ImpuestosInternos : String   ;    //  'PorcentualInternalTaxes
    Impuestosfijos : String       ;   //  '
    LineaDescExtra1 : String       ;  //  'Extraline1
    LineaDescExtra2 : String   ;      //  'Extraline2
    LineaDescExtra3 : String    ;     // 'Extraline3
    TasaAcrecentamiento : String ;    //  'Incre:eTax
    ImpuestosIntFijos : String ;      //  'FixesIntTaxes
    TipoIvaEmisor : String    ;  //
    vBonifXItem : String; //
    DescuentoGlobal : String; //
    vLeyendaBonif : String ;//
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
    err:= abrirImpresora;

    TipoIvaEmisor:= 'I'

    errorFiscal:= DriverFiscal.EpsonForm.AUDITORIAF(audFDesde, audFHasta, audTipo);
    lblError.Caption:= inttostr(errorFiscal);


    err:= cerrarImpresora;
  end;
end;


procedure TFPrincipal.btnCierreZClick(Sender: TObject);
begin
  impresora:= 'TM-U220AF';
  cierreZ;
end;


procedure TFPrincipal.btnCierreXClick(Sender: TObject);
begin
  impresora:= 'TM-U220AF';
  cierreX;
end;


procedure TFPrincipal.btnAuditoriaClick(Sender: TObject);
begin
  impresora:= 'TM-U220AF';
  audFDesde:= '120101';
  audFHasta:= '121231';
  audTipo:= 'T';
  auditoria;
end;


procedure TFPrincipal.btnFacturaClick(Sender: TObject);
begin
  impresora:= 'TM-U220AF';
  id_cpb:= editNumeroComprobante.Text;
  facturar;
end;

end.
