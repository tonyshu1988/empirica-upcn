unit UListadoErogaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSqlUpdate,
  EKBusquedaAvanzada, StdCtrls, EKDbSuma, QuickRpt, QRCtrls,
  EKVistaPreviaQR, EKOrdenarGrilla, EKIni, mxNativeExcel, mxExport;

type
  TFListadoErogaciones = class(TForm)
    dxBarABM: TdxBarManager;
    btnListadoErogaciones: TdxBarLargeButton;
    btnLibroBanco: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
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
    pResumen: TPanel;
    EKDbSuma: TEKDbSuma;
    lblSaldo: TLabel;
    RepErog: TQuickRep;
    QRBand5: TQRBand;
    QRLabel41: TQRLabel;
    QRDBImage1: TQRDBImage;
    RepErog_TITULO_EROG: TQRLabel;
    RepErog_Reporte_Titulo_2: TQRLabel;
    RepErog_Reporte_Titulo_1: TQRLabel;
    QRLabel1: TQRLabel;
    QRlblErogaciones_FDesde: TQRLabel;
    QRlblErogaciones_FHasta: TQRLabel;
    QRlblErogaciones_Cuenta: TQRLabel;
    QRBandDetalle: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText17: TQRDBText;
    QRChildBand2: TQRChildBand;
    QRLabel18: TQRLabel;
    QRBand7: TQRBand;
    QRLabel24: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand8: TQRBand;
    QRGroup1: TQRGroup;
    QRBandGroupFooterDesc: TQRBand;
    EKVistaPrevia: TEKVistaPreviaQR;
    QRlblTotalDiferidos: TQRLabel;
    QRlblTotalCorrientes: TQRLabel;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    EKIniGuardarFiltros: TEKIni;
    QRDBText2: TQRDBText;
    ZQ_Libro_erogaciones_nombreConcepto: TStringField;
    QRLabel21: TQRLabel;
    QRLabel27: TQRLabel;
    ChildBandRecibo: TQRChildBand;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText3: TQRDBText;
    ZQ_Libro_erogacionesFECHA: TDateField;
    ZQ_Libro_erogacionesNRO_ORDEN: TIntegerField;
    ZQ_Libro_erogacionesNRO_MOVIMIENTO: TIntegerField;
    ZQ_Libro_erogacionesNRO_RECIBO: TStringField;
    ZQ_Libro_erogacionesNRO_ORDEN_STRING: TStringField;
    ZQ_Libro_erogacionesANULADO: TStringField;
    ZQ_Libro_erogacionesAPELLIDO_Y_NOMBRE: TStringField;
    ZQ_Libro_erogacionesNOMBRE_CONCEPTO: TStringField;
    ZQ_Libro_erogacionesCOD_CORTO: TStringField;
    ZQ_Libro_erogacionesNOMBRE_CUENTA: TStringField;
    ZQ_Libro_erogacionesNRO_CUENTA_BANCARIA: TStringField;
    ZQ_Libro_erogacionesNOMBRE_MEDIO_COBRO_PAGO: TStringField;
    ZQ_Libro_erogacionesFECHA_MDC: TDateField;
    ZQ_Libro_erogacionesBANCO_MDC: TStringField;
    ZQ_Libro_erogacionesIMPORTE: TFloatField;
    ZQ_Libro_erogacionesCONCILIADO: TStringField;
    ZQ_Libro_erogacionesFECHA_CONCILIADO: TDateField;
    ZQ_Libro_erogacionesCMOV_ANULADO: TStringField;
    btexportarExel: TdxBarLargeButton;
    ZQ_Libro_erogacionesNRO_CHEQUE_TRANSF: TStringField;
    ZQ_Libro_erogacionesTIPO_PROVEEDOR: TStringField;
    ChildBandFactura: TQRChildBand;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel36: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText1: TQRDBText;
    QRDetVertical1: TQRShape;
    QRDescVertical1: TQRShape;
    QRNroReciboVertical1: TQRShape;
    QRNroFacturaVertical1: TQRShape;
    QRDetVertical2: TQRShape;
    QRDetVertical3: TQRShape;
    QRDetVertical4: TQRShape;
    QRDescVertical2: TQRShape;
    QRDescVertical3: TQRShape;
    QRDescVertical4: TQRShape;
    QRNroReciboVertical2: TQRShape;
    QRNroReciboVertical3: TQRShape;
    QRNroReciboVertical4: TQRShape;
    QRNroFacturaVertical2: TQRShape;
    QRNroFacturaVertical3: TQRShape;
    QRNroFacturaVertical4: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShapePanelFondo: TQRShape;
    ChildBand1: TQRChildBand;
    QRShape11: TQRShape;
    ZQ_Libro_erogacionesNRO_FACTURA: TStringField;
    ZQ_Libro_erogacionesDESCRIPCION: TStringField;
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
    procedure ZQ_Libro_erogacionesAfterScroll(DataSet: TDataSet);
    procedure btexportarExelClick(Sender: TObject);
    procedure QRBandDetalleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBandGroupFooterDescBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBandReciboBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBandFacturaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
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
  EKOrdenarGrilla1.CargarConfigColumnas;
  dm.EKModelo.abrir(ZQ_Libro_erogaciones);
  dm.EKModelo.abrir(ZQ_Cuentas);
  TEKCriterioBA(EKBAvanzadaListadoErog.CriteriosBusqueda.Items[1]).ItemIndex:= MonthOf(DM.EKModelo.Fecha)-1;
  TEKCriterioBA(EKBAvanzadaListadoErog.CriteriosBusqueda.Items[2]).Valor:= IntToStr(YearOf(DM.EKModelo.Fecha));

  if CuentaNro <> 0 then //si me logueo como un usuario que tiene asignada una cuenta
  begin
    ZQ_Cuentas.Filter:= 'ID_CUENTA = '+IntToStr(CuentaNro);
    ZQ_Cuentas.Filtered:= true;
  end
  else  //si me logueo como administrador
  begin
    ZQ_Cuentas.Filter:= '';
    ZQ_Cuentas.Filtered:= false;
  end;

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

  ZQ_Libro_erogaciones_nombreConcepto.AsString:=Format('%s / %s',[ZQ_Libro_erogacionesAPELLIDO_Y_NOMBRE.AsString,ZQ_Libro_erogacionesNOMBRE_CONCEPTO.AsString]);
end;


procedure TFListadoErogaciones.FormActivate(Sender: TObject);
begin
  ZQ_Libro_erogaciones.Refresh;
  EKDbSuma.RecalcAll;
  EKDbSumaSumListChanged(nil);
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

      lblFechaDesde.Caption:= DateToStr(fechaDesde);
      lblFechaHasta.Caption:= DateToStr(fechaHasta);     

      ZQ_Libro_erogaciones.Close;
      ZQ_Libro_erogaciones.ParamByName('cuenta').AsInteger:= StrToInt(EKBAvanzadaListadoErog.ParametrosSeleccionados1[0]);
      ZQ_Libro_erogaciones.ParamByName('Fecha_Desde').AsDate:= fechaDesde;
      ZQ_Libro_erogaciones.ParamByName('Fecha_Hasta').AsDate:= fechaHasta;
      ZQ_Libro_erogaciones.open;

      lblNombreCuenta.Caption:= EKBAvanzadaListadoErog.ParametrosSelecReales1[0];

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

  dm.TitulosReportes(RepErog,CuentaNro);

  EKVistaPrevia.VistaPrevia;
end;


procedure TFListadoErogaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
end;


procedure TFListadoErogaciones.ZQ_Libro_erogacionesAfterScroll(
  DataSet: TDataSet);
begin
  if trim(ZQ_Libro_erogacionesDESCRIPCION.AsString) = '' then
    QRBandGroupFooterDesc.Enabled:= false
  else
    QRBandGroupFooterDesc.Enabled:= true;
end;

procedure TFListadoErogaciones.btexportarExelClick(Sender: TObject);
begin
  if ZQ_Libro_erogaciones.IsEmpty then
    exit;

  dm.prepararParaExportar(ZQ_Libro_erogaciones, false); //desactivo el currency y seteo los parametros para exportar
  dm.ExcelExport.DBGrid:= DBGridListaErogacion;
  dm.ExcelExport.Select;
  dm.prepararParaExportar(ZQ_Libro_erogaciones, true); //activo el currency y vuelvo a los parametros anteriores
end;

procedure TFListadoErogaciones.QRBandDetalleBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if StrLen(pchar(ZQ_Libro_erogacionesNOMBRE_CONCEPTO.AsString)) > 80 then
  begin
    QRDetVertical1.Height:= 130;
    QRDetVertical2.Height:= 130;
    QRDetVertical3.Height:= 130;
    QRDetVertical4.Height:= 130;
  end
  else
  begin
    QRDetVertical1.Height:= 90;
    QRDetVertical2.Height:= 90;
    QRDetVertical3.Height:= 90;
    QRDetVertical4.Height:= 90;
  end
end;

procedure TFListadoErogaciones.QRBandGroupFooterDescBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRDescVertical1.Height:= 120;
  QRDescVertical2.Height:= 120;
  QRDescVertical3.Height:= 120;
  QRDescVertical4.Height:= 120;
end;

procedure TFListadoErogaciones.ChildBandReciboBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRNroReciboVertical1.Height:= 30;
  QRNroReciboVertical2.Height:= 30;
  QRNroReciboVertical3.Height:= 30;
  QRNroReciboVertical4.Height:= 30;
end;

procedure TFListadoErogaciones.ChildBandFacturaBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRNroFacturaVertical1.Height:= 30;
  QRNroFacturaVertical2.Height:= 30;
  QRNroFacturaVertical3.Height:= 30;
  QRNroFacturaVertical4.Height:= 30;
end;

end.
