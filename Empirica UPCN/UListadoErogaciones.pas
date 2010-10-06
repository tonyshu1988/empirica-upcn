unit UListadoErogaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSqlUpdate,
  EKBusquedaAvanzada, StdCtrls, EKDbSuma, QuickRpt, QRCtrls,
  EKVistaPreviaQR, EKOrdenarGrilla;

type
  TFListadoErogaciones = class(TForm)
    dxBarABM: TdxBarManager;
    btnListadoErogaciones: TdxBarLargeButton;
    btnLibroBanco: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btn2: TdxBarLargeButton;
    btImprimir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PContenedor: TPanel;
    DBGridListaErogacion: TDBGrid;
    ZQ_Libro_erogaciones: TZQuery;
    ZQ_Libro_erogacionespagos_diferidos: TFloatField;
    ZQ_Libro_erogacionespagos_corrientes: TFloatField;
    DS_Libro_erogaciones: TDataSource;
    EKBAvanzadaListadoErog: TEKBusquedaAvanzada;
    DS_Cuentas: TDataSource;
    ZQ_Cuentas: TZQuery;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasMEDIO_DE_PAGO: TStringField;
    ZQ_CuentasNRO_CUENTA_BANCARIA: TStringField;
    ZQ_CuentasULTIMO_NRO: TIntegerField;
    ZQ_CuentasAUTONUMERAR: TStringField;
    ZQ_CuentasMEDIO_POR_DEFECTO: TIntegerField;
    ZQ_CuentasBUSQUEDA: TStringField;
    pDatos: TPanel;
    Shape2: TShape;
    Shape1: TShape;
    Label2: TLabel;
    Label1: TLabel;
    StaticText1: TStaticText;
    Label3: TLabel;
    lblNombreCuenta: TLabel;
    Label4: TLabel;
    lblFechaDesde: TLabel;
    lblFechaHasta: TLabel;
    Label7: TLabel;
    ZQ_Libro_erogacionesID: TIntegerField;
    ZQ_Libro_erogacionesNRO_MOVIMIENTO: TIntegerField;
    ZQ_Libro_erogacionesID_CUENTA_INGRESO: TIntegerField;
    ZQ_Libro_erogacionesID_CUENTA_EGRESO: TIntegerField;
    ZQ_Libro_erogacionesID_MEDIO: TIntegerField;
    ZQ_Libro_erogacionesFECHA_MDC: TDateField;
    ZQ_Libro_erogacionesBANCO_MDC: TStringField;
    ZQ_Libro_erogacionesNRO_CHEQUE_TRANSF: TStringField;
    ZQ_Libro_erogacionesNRO_FACTURA_RECIBO: TStringField;
    ZQ_Libro_erogacionesOTROS: TStringField;
    ZQ_Libro_erogacionesIMPORTE: TFloatField;
    ZQ_Libro_erogacionesCONCILIADO: TStringField;
    ZQ_Libro_erogacionesFECHA_CONCILIADO: TDateField;
    ZQ_Libro_erogacionesNRO_MOVIMIENTO_1: TIntegerField;
    ZQ_Libro_erogacionesNRO_PROVEEDOR: TIntegerField;
    ZQ_Libro_erogacionesID_CONCEPTO: TIntegerField;
    ZQ_Libro_erogacionesID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_Libro_erogacionesID_OBJETO_MOVIMIENTO: TIntegerField;
    ZQ_Libro_erogacionesDESCRIPCION: TStringField;
    ZQ_Libro_erogacionesPAGO_DEL_EJERCICIO: TStringField;
    ZQ_Libro_erogacionesFECHA: TDateField;
    ZQ_Libro_erogacionesIMPORTE_1: TFloatField;
    ZQ_Libro_erogacionesIMPRESO: TStringField;
    ZQ_Libro_erogacionesNRO_COMPROMISO: TIntegerField;
    ZQ_Libro_erogacionesNRO_PARTE: TIntegerField;
    ZQ_Libro_erogacionesANULADO: TStringField;
    ZQ_Libro_erogacionesFECHA_ANULADO: TDateField;
    ZQ_Libro_erogacionesPARTE_ANULADO: TIntegerField;
    ZQ_Libro_erogacionesDETALLE_ANULADO: TStringField;
    ZQ_Libro_erogacionesNRO_ORDEN: TIntegerField;
    ZQ_Libro_erogacionesNOMBRE_CUENTA: TStringField;
    ZQ_Libro_erogacionesNRO_CUENTA_BANCARIA: TStringField;
    ZQ_Libro_erogacionesNRO_PROVEEDOR_1: TIntegerField;
    ZQ_Libro_erogacionesNOMBRE_FANTASIA: TStringField;
    ZQ_Libro_erogacionesNOMBRE_MEDIO_COBRO_PAGO: TStringField;
    ZQ_Libro_erogacionesCOD_CONCEPTO: TStringField;
    ZQ_Libro_erogacionesNOMBRE_CONCEPTO: TStringField;
    ZQ_Libro_erogacionesCOD_TIPOMOVIMIENTO: TStringField;
    ZQ_Libro_erogacionesNOMBRE_TIPOMOV: TStringField;
    ZQ_Libro_erogacionesCOD_OBJMOVIMIENTO: TStringField;
    ZQ_Libro_erogacionesNOMBRE_OBJMOVIMIENTO: TStringField;
    pResumen: TPanel;
    EKDbSuma: TEKDbSuma;
    lblSaldo: TLabel;
    ReporteErogaciones: TQuickRep;
    QRBand5: TQRBand;
    QRLabel41: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel11: TQRLabel;
    ReporteErogaciones_direccion: TQRLabel;
    ReporteErogaciones_entidad: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRlblErogaciones_FDesde: TQRLabel;
    QRlblErogaciones_FHasta: TQRLabel;
    QRlblErogaciones_Cuenta: TQRLabel;
    QRBandDetalle: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText30: TQRDBText;
    QRChildBand2: TQRChildBand;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel16: TQRLabel;
    QRBand7: TQRBand;
    QRLabel35: TQRLabel;
    QRlblFechaHoy: TQRLabel;
    QRLabel24: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand8: TQRBand;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRBandGroup1Footer: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    EKVistaPrevia: TEKVistaPreviaQR;
    QRlblTotalDiferidos: TQRLabel;
    QRlblTotalCorrientes: TQRLabel;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure ZQ_Libro_erogacionesCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btnListadoErogacionesClick(Sender: TObject);
    function validarDatos():boolean;
    procedure DBGridListaErogacionDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnSalirClick(Sender: TObject);
    procedure EKDbSumaSumListChanged(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    fechaDesde, fechaHasta: TDate;
  end;

var
  FListadoErogaciones: TFListadoErogaciones;

implementation

uses UDM,DateUtils;

{$R *.dfm}

function TFListadoErogaciones.validarDatos():boolean;
begin
  result := true;

  if trim(EKBAvanzadaListadoErog.ParametrosSeleccionados1[0]) = '' then
  begin
    Application.MessageBox('No se ha seleccionado ninguna CUENTA, por favor Verifique','Atención',MB_OK+MB_ICONINFORMATION);
    result := false;
    exit;
  end;
end;


procedure TFListadoErogaciones.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla1.CargarConfigColunmas;
  dm.EKModelo.abrir(ZQ_Libro_erogaciones);
  dm.EKModelo.abrir(ZQ_Cuentas);
  TEKCriterioBA(EKBAvanzadaListadoErog.CriteriosBusqueda.Items[1]).ItemIndex:= MonthOf(DM.EKModelo.Fecha)-1;
  TEKCriterioBA(EKBAvanzadaListadoErog.CriteriosBusqueda.Items[2]).Valor:= IntToStr(YearOf(DM.EKModelo.Fecha));

  lblNombreCuenta.Caption:= '';
  lblFechaDesde.Caption:= '';
  lblFechaHasta.Caption:= '';
end;


procedure TFListadoErogaciones.ZQ_Libro_erogacionesCalcFields(
  DataSet: TDataSet);
begin
  if (ZQ_Libro_erogacionesCONCILIADO.AsString = 'S') and (ZQ_Libro_erogacionesFECHA_CONCILIADO.AsDateTime < fechaHasta) then
    ZQ_Libro_erogacionespagos_corrientes.AsFloat:= ZQ_Libro_erogacionesIMPORTE.AsFloat
  else
    ZQ_Libro_erogacionespagos_diferidos.AsFloat:= ZQ_Libro_erogacionesIMPORTE.AsFloat;
end;


procedure TFListadoErogaciones.FormActivate(Sender: TObject);
begin
  ZQ_Libro_erogaciones.Refresh;
end;


procedure TFListadoErogaciones.btnListadoErogacionesClick(Sender: TObject);
var
  anio, mes: integer;
begin
  if EKBAvanzadaListadoErog.BuscarSinEjecutar then
  begin
    if not validarDatos then
    begin
       btnListadoErogaciones.Click;
    end
    else
    begin
      mes:= StrToInt(EKBAvanzadaListadoErog.ParametrosSelecReales1[1]);
      anio:= StrToInt(EKBAvanzadaListadoErog.ParametrosSelecReales1[2]);

      fechaDesde:= StartOfAMonth(anio, mes);
      fechaHasta:= EndOfAMonth(anio, mes);

      ZQ_Libro_erogaciones.Close;
      ZQ_Libro_erogaciones.ParamByName('cuenta').AsInteger:= StrToInt(EKBAvanzadaListadoErog.ParametrosSeleccionados1[0]);
      ZQ_Libro_erogaciones.ParamByName('Fecha_Desde').AsDate:= fechaDesde;
      ZQ_Libro_erogaciones.ParamByName('Fecha_Hasta').AsDate:= fechaHasta;
      ZQ_Libro_erogaciones.open;

      lblNombreCuenta.Caption:= EKBAvanzadaListadoErog.ParametrosSelecReales1[0];
      lblFechaDesde.Caption:= DateToStr(fechaDesde);
      lblFechaHasta.Caption:= DateToStr(fechaHasta);
    end;
  end;
end;


procedure TFListadoErogaciones.DBGridListaErogacionDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not ZQ_Libro_erogaciones.IsEmpty then
  begin
    if (ZQ_Libro_erogacionespagos_diferidos.Value > 0) then
      begin
       DBGridListaErogacion.Canvas.Brush.Color :=StaticText1.Brush.Color;
       DBGridListaErogacion.Canvas.Font.Color := clBlack;
       if (gdFocused in State) or (gdSelected in State) then
         begin
         DBGridListaErogacion.Canvas.Font.Color := clBlack;
         DBGridListaErogacion.Canvas.Font.Style := DBGridListaErogacion.Canvas.Font.Style + [fsBold];
         end
      end
    else
      begin
        if (gdFocused in State) or (gdSelected in State) then
         begin
           DBGridListaErogacion.Canvas.Font.Color := clwhite;
           DBGridListaErogacion.Canvas.Brush.Color:=clBlue;
           DBGridListaErogacion.Canvas.Font.Style := DBGridListaErogacion.Canvas.Font.Style + [fsBold];
         end;
      end;
    DBGridListaErogacion.DefaultDrawColumnCell(rect,datacol,column,state);
  end;
end;


procedure TFListadoErogaciones.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFListadoErogaciones.EKDbSumaSumListChanged(Sender: TObject);
var
  diferido, corriente: Real;
begin
  corriente:= EKDbSuma.SumCollection[0].SumValue;
  diferido:= EKDbSuma.SumCollection[1].SumValue;
  lblSaldo.Caption:= 'TOTAL DIFERIDO: '+ FormatFloat('$ ###,###,##0.00', diferido)+'    /    TOTAL CORRIENTE: '+ FormatFloat('$ ###,###,##0.00', corriente);
end;


procedure TFListadoErogaciones.btImprimirClick(Sender: TObject);
var
  diferido, corriente: Real;
begin
  if ZQ_Libro_erogaciones.IsEmpty then
    exit;

  corriente:= EKDbSuma.SumCollection[0].SumValue;
  diferido:= EKDbSuma.SumCollection[1].SumValue;

  QRlblErogaciones_Cuenta.Caption:= lblNombreCuenta.Caption;
  QRlblErogaciones_FDesde.Caption:= lblFechaDesde.Caption;
  QRlblErogaciones_FHasta.Caption:= lblFechaHasta.Caption;

  QRlblTotalDiferidos.Caption:= FormatFloat('$ ###,###,##0.00', diferido);
  QRlblTotalCorrientes.Caption:= FormatFloat('$ ###,###,##0.00', corriente);

  QRlblFechaHoy.Caption:= FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);

  EKVistaPrevia.VistaPrevia;
end;

procedure TFListadoErogaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
end;

end.
