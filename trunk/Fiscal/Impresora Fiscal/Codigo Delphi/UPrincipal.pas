unit UPrincipal;

interface             //4597417

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, EKIni, ZConnection, EKModelo, StdCtrls, ExtCtrls, OleCtrls, StrUtils,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, OCXFISLib_TLB,
  Buttons, ComCtrls, Grids, DBGrids;

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
    resultado: integer;
    errorDriver: integer;
    productoDetallado: boolean;
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

const
  PuertoIF = 1;

implementation

uses IniFiles, UUtilidades, Math, DateUtils;

{$R *.dfm}

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  leerArchivoIni;

  ZQ_Config.Close;
  EKModelo.abrir(ZQ_Config);
  configurarBoolean(ZQ_Config, 'clave', 'texto', 'ticketFacturaDetallada', 'SI', productoDetallado);

  ZQ_Factura.Close;
  ZQ_Items.Close;
  ZQ_FormaPago.Close;

  DateTimeFechaDesde.Date:= StartOfTheMonth(EKModelo.Fecha);
  DateTimeFechaHasta.Date:= EndOfTheMonth(EKModelo.Fecha);

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
    editParametros.Text:= editParametros.Text+' '+ParamStr(i);

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

  Visible:= preview;

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
    ShowMessage('Comando a ejecutar incorrecto, verifique. Z(Cierre Z), X(Cierre X), A(Auditoria), F(Factura)');
  end;

  if not preview then
    Application.Terminate;
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
    if DriverFiscal.EpsonForm.CIERRE('Z', 'P') = 0 then
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
    if DriverFiscal.EpsonForm.CIERRE('X', 'P') = 0 then
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
    if DriverFiscal.EpsonForm.AUDITORIAF(audFDesde, audFHasta, audTipo) = 0 then
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
  Cantidad: double;               // Cantidad vendida
  PrecioUnitario: double;         // Precio Unitario
  TasaIva: double;                // Tasa del iva
  CalificadorDeItem: string;      // Calificador de la operación. M = Monto agregado mercadería (SUMA); m = Anula el item vendido (RESTA); R = Bonificacion (RESTA); r = anula una bonificacion (SUMA)
  CantidadDeBultos: integer;       // Canidad de bultos
  ImpuestosInternos: double;      // Impuestos internos porcentuales
  LineaDescExtra1: string;        // Linea 1 descripcion complementaria del item (max 30 bytes)
  LineaDescExtra2: string;        // Linea 2 descripcion complementaria del item (max 30 bytes)
  LineaDescExtra3: string;        // Linea 3 descripcion complementaria del item (max 30 bytes)
  TasaAcrecentamiento: double;    // Tasa Acrecentamiento
  ImpuestosIntFijos: double;      // Impuestos Internos Fijos
  //VARIABLES PARA ENVIAR FORMA PAGO
  DescripcionFPago: string;       // Texto con descripcion del pago (max 25 bytes)
  MontoFPago: double;             // monto
  CalificadorFPago: string;       // Calificador del item de línea. C=Cancelar el comprobante, T=Suma al importe pagado, t=Anula un pago hecho con T, D=Realiza un DESCUENTO GLOBAL de monto fijo, R=Realiza un RECARGO GLOBAL de monto fijo
  //VARIABLES PARA ACTUALIZAR COMPROBANTE
  puntoVenta: string;
  numeroCpb: string;
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
  begin
    ShowMessage('El Comprobante Código '+rellenar(id_cpb, '0', 8)+' es inexistente, verifique.');
    exit;
  end;

  if (impresora = 'TM-U220AF') or (impresora = 'TM-2000AF') then
  begin
//PASO 1: ABRIR FACTURA
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
      NombreComprador1:= LeftStr(ZQ_FacturaNOMBRE.AsString, 40);

    NombreComprador2:= char(127);

    if (ZQ_FacturaNOMBRE_TIPO_DOC.IsNull) or (ZQ_FacturaNOMBRE_TIPO_DOC.AsString = '') then
      TpoDocComprador:= 'DNI'
    else
      TpoDocComprador:= LeftStr(ZQ_FacturaNOMBRE_TIPO_DOC.AsString, 6);

    if (ZQ_FacturaNUMERO_DOC.IsNull) or (ZQ_FacturaNUMERO_DOC.AsString = '') then
      NroDocComprador:= '11111111'
    else
      NroDocComprador:= LeftStr(ZQ_FacturaNUMERO_DOC.AsString,  11);

    if not ((ZQ_FacturaCUIT_CUIL.IsNull) or (ZQ_FacturaCUIT_CUIL.AsString = '')) then
    begin
      if (TipoLetra = 'A') or (TipoIVAComprador = 'M') or (TipoIVAComprador = 'E') then
      begin
        TpoDocComprador:= 'CUIT';
        NroDocComprador:= LeftStr(ZQ_FacturaCUIT_CUIL.AsString, 11);
      end;
    end;

    BienDeUso:= 'N';

    if (ZQ_FacturaDIRECCION.IsNull) or (ZQ_FacturaDIRECCION.AsString = '') then
      DomicilioComprador1:= 'SANTA FE'
    else
      DomicilioComprador1:= LeftStr(ZQ_FacturaDIRECCION.AsString, 40);

    if (ZQ_FacturaLOCALIDAD.IsNull) or (ZQ_FacturaLOCALIDAD.AsString = '') then
      DomicilioComprador2:= 'SANTA FE'
    else
      DomicilioComprador2:= LeftStr(ZQ_FacturaLOCALIDAD.AsString, 40);

    DomicilioComprador3:= char(127);

    LineaVariable1:= char(127);
    LineaVariable2:= char(127);

    TipoTablaBien:= 'C';

    resultado:= DriverFiscal.EpsonForm.FACTABRE(TipoDocumento, TipoPapel, TipoLetra, CantidadCopias, TipoFormulario,
                                    TipoFuente, TipoIVAEmisor, TipoIVAComprador, NombreComprador1, NombreComprador2,
                                    TpoDocComprador, NroDocComprador, BienDeUso, DomicilioComprador1, DomicilioComprador2,
                                    DomicilioComprador3, LineaVariable1, LineaVariable2, TipoTablaBien);
    if resultado <> 0 then
    begin
      DriverFiscal.EpsonForm.FACTCANCEL;
      exit;
    end;

//PASO 2: CARGAR ITEMS
    ZQ_Items.First;
    while not ZQ_Items.Eof do
    begin
      //Max de 20 caracteres
      DescripcionProducto:= LeftStr(' '+ZQ_ItemsNOMBRE_PRODUCTO.AsString, 20);

      Cantidad:= ZQ_ItemsCANTIDAD.AsFloat;

      If (TipoLetra = 'A') and (ZQ_ItemsIMPORTE_IF_SINIVA.AsFloat > 0) Then
        PrecioUnitario:= ZQ_ItemsIMPORTE_IF_SINIVA.AsFloat / ZQ_ItemsCANTIDAD.AsFloat
      else
        PrecioUnitario:= ZQ_ItemsIMPORTE_IF.AsFloat / ZQ_ItemsCANTIDAD.AsFloat;

      TasaIva:= 0.21;

      CalificadorDeItem:= 'M';

      CantidadDeBultos:= 1;

      ImpuestosInternos:= 0;

      LineaDescExtra1:= char(127);
      LineaDescExtra2:= char(127);
      LineaDescExtra3:= char(127);

      if productoDetallado then
      begin
        LineaDescExtra1:= LeftStr(' Marca: '+ZQ_ItemsNOMBRE_MARCA.AsString, 30);
        LineaDescExtra2:= LeftStr(' C: '+ZQ_ItemsNOMBRE_COLOR.AsString+' / M: '+ZQ_ItemsNOMBRE_MEDIDA.AsString, 30);
      end;

      TasaAcrecentamiento:= 0;

      If ZQ_ItemsIMPUESTO_INTERNO.IsNull Then
        ImpuestosIntFijos:= 0
      else
        ImpuestosIntFijos:= ZQ_ItemsIMPUESTO_INTERNO.AsFloat / ZQ_ItemsCANTIDAD.AsFloat;

      resultado:= DriverFiscal.EpsonForm.FACTITEM(DescripcionProducto, Cantidad, PrecioUnitario, TasaIva, CalificadorDeItem,
                                                  CantidadDeBultos, ImpuestosInternos, LineaDescExtra1, LineaDescExtra2,
                                                  LineaDescExtra3, TasaAcrecentamiento, ImpuestosIntFijos);
      if resultado <> 0 then
      begin
        DriverFiscal.EpsonForm.FACTCANCEL;
        exit;
      end;

      ZQ_Items.Next;
    end;

//PASO 3: SUBTOTAL
    resultado:= DriverFiscal.EpsonForm.FACTSUBTOTAL('P', 'SUBTOTAL');
    if resultado <> 0 then
    begin
      DriverFiscal.EpsonForm.FACTCANCEL;
      exit;
    end;

//PASO 4: CARGAR FORMA PAGO
    ZQ_FormaPago.First;
    while not ZQ_FormaPago.Eof do
    begin
      DescripcionFPago:= LeftStr(ZQ_FormaPagoFORMA_PAGO_NOMBRE.AsString, 25);
      MontoFPago:= ZQ_FormaPagoFORMA_PAGO_IMPORTE.AsFloat;
      CalificadorFPago:= 'T';

      resultado:= DriverFiscal.EpsonForm.FACTPAGO(DescripcionFPago, MontoFPago, CalificadorFPago);
      if resultado <> 0 then
      begin
        DriverFiscal.EpsonForm.FACTCANCEL;
        exit;
      end;

      ZQ_FormaPago.Next;
    end;

//PASO 5: DISCRIMINACION IVA  revisar esto
//    If TipoLetra = 'Alfajor' Then
//    begin
//      DescripcionFPago:= 'IVA 21 %';
//      MontoFPago:= 0;
//      CalificadorFPago:= 'T';
//      resultado:= DriverFiscal.EpsonForm.FACTPAGO(DescripcionFPago, MontoFPago, CalificadorFPago);
//      if resultado <> 0 then
//      begin
//        DriverFiscal.EpsonForm.FACTCANCEL;
//        exit;
//      end;
//
//      DescripcionFPago:= 'CONCEPTOS NO GRABADOS';
//      MontoFPago:= 0;
//      CalificadorFPago:= 'T';
//      resultado:= DriverFiscal.EpsonForm.FACTPAGO(DescripcionFPago, MontoFPago, CalificadorFPago);
//      if resultado <> 0 then
//      begin
//        DriverFiscal.EpsonForm.FACTCANCEL;
//        exit;
//      end;
//    end;

//PASO 6: CERRAR FACTURA
    resultado:= DriverFiscal.EpsonForm.FACTCIERRA(TipoDocumento, TipoLetra, 'TOTAL');
    if resultado <> 0 then
    begin
      DriverFiscal.EpsonForm.FACTCANCEL;
      exit;
    end;

//PASO 7: OBTENER NUMERO DE COMPROBANTE Y PUNTO DE VENTA
    numeroCpb:= DriverFiscal.IF_READ(3);
    //Cambio el status para poder obtener el numero de Punto Venta. C = Información sobre el contribuyente
    DriverFiscal.EpsonForm.ESTADO('C');
    puntoVenta:= DriverFiscal.IF_READ(4);
    //Vuelvo al estado Normal
    resultado:= DriverFiscal.EpsonForm.ESTADO('N');
    lblFactura.Caption:= puntoVenta+'-'+numeroCpb;

//PASO 8: INSERTAR EL NUMERO DE COMPROBANTE, PUNTO DE VENTA Y FECHA EN COMPROBANTE IMPRESO
   if (resultado = 0) then
   begin
    if EKModelo.iniciar_transaccion('UPDATE FACTURA',[]) then
     begin
      ZQ_UpdateFactura.Close;
      ZQ_UpdateFactura.ParamByName('numcpb').AsString:=numeroCpb;
      ZQ_UpdateFactura.ParamByName('pventa').AsString:=puntoVenta;
      ZQ_UpdateFactura.ParamByName('fimpresa').AsDateTime:=EKModelo.FechayHora();
      ZQ_UpdateFactura.ParamByName('idcpb').AsString:=id_cpb;
      ZQ_UpdateFactura.ExecSQL;

      if not EKModelo.finalizar_transaccion('UPDATE FACTURA') then
       begin
          //errererrrorr
       end
     end
   end;

//PASO 9: CORTO EL TIQUET
    DriverFiscal.EpsonForm.CORTAPAPEL;
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
  audFDesde:= anio+mes+dia;

  anio:= RightStr(IntToStr(YearOf(DateTimeFechaHasta.Date)), 2);
  mes:= rellenar(IntToStr(MonthOf(DateTimeFechaHasta.Date)), '0', 2);
  dia:= rellenar(IntToStr(DayOf(DateTimeFechaHasta.Date)), '0', 2);
  audFHasta:= anio+mes+dia;

  if ComboBoxTipoAuditoria.ItemIndex = 0 then
    audTipo:= 'T'
  else
    audTipo:= 'D';

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
  begin
    ShowMessage(DecodificadorErrorFiscal(PrinterCode, 'PrinterCode'));
    ShowMessage(DecodificadorErrorFiscal(FiscalCode, 'FiscalCode'));
  end
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
        lblErrorDriver.Caption:= 'Error Puerto COM / Libreria DLL';
      end;
    5: begin
        lblErrorDriver.Caption:= 'Error Impresora';
      end;
  end;
end;

end.

