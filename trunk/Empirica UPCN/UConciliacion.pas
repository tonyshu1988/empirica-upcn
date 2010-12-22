unit UConciliacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, StdCtrls, ExtCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZStoredProcedure,
  EKBusquedaAvanzada, EKDbSuma, QuickRpt, QRCtrls, EKVistaPreviaQR,
  EKOrdenarGrilla, mxNativeExcel, mxExport;

type
  TFConciliacion = class(TForm)
    PContenedor: TPanel;
    DBGridConciliacion: TDBGrid;
    pDatos: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    lblNombreCuenta: TLabel;
    Label4: TLabel;
    lblFHasta: TLabel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btImprimir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    ZQ_Cuentas: TZQuery;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasMEDIO_DE_PAGO: TStringField;
    ZQ_CuentasNRO_CUENTA_BANCARIA: TStringField;
    ZQ_CuentasULTIMO_NRO: TIntegerField;
    ZQ_CuentasAUTONUMERAR: TStringField;
    ZQ_CuentasMEDIO_POR_DEFECTO: TIntegerField;
    ZQ_CuentasBUSQUEDA: TStringField;
    DS_Cuentas: TDataSource;
    ZSP_LibroBanco: TZStoredProc;
    ZSP_LibroBancoID_MOVIMIENTO: TIntegerField;
    ZSP_LibroBancoORDEN: TIntegerField;
    ZSP_LibroBancoFECHA: TDateField;
    ZSP_LibroBancoMOVIMIENTO: TStringField;
    ZSP_LibroBancoNRO_PAGO_REC: TIntegerField;
    ZSP_LibroBancoMEDIO: TStringField;
    ZSP_LibroBancoDEBE: TFloatField;
    ZSP_LibroBancoHABER: TFloatField;
    ZSP_LibroBancoSALDO: TFloatField;
    ZSP_LibroBancoCONCILIADO: TStringField;
    ZSP_LibroBancoNOMBRE_CONCEPTO: TStringField;
    ZSP_LibroBancoFECHA_PD: TDateField;
    ZSP_LibroBancoNRO_ORDEN: TIntegerField;
    BuscarParametros: TEKBusquedaAvanzada;
    DS_LibroBanco: TDataSource;
    ZSP_Conciliacion: TZStoredProc;
    DS_Conciliacion: TDataSource;
    ZSP_ConciliacionID_MOVIMIENTO: TIntegerField;
    ZSP_ConciliacionORDEN: TIntegerField;
    ZSP_ConciliacionFECHA: TDateField;
    ZSP_ConciliacionMOVIMIENTO: TStringField;
    ZSP_ConciliacionNRO_PAGO_REC: TIntegerField;
    ZSP_ConciliacionMEDIO: TStringField;
    ZSP_ConciliacionDEBE: TFloatField;
    ZSP_ConciliacionHABER: TFloatField;
    ZSP_ConciliacionSALDO: TFloatField;
    ZSP_ConciliacionCONCILIADO: TStringField;
    ZSP_ConciliacionNOMBRE_CONCEPTO: TStringField;
    ZSP_ConciliacionTIPO_MOV: TStringField;
    ZSP_ConciliacionNRO_ORDEN: TIntegerField;
    Panel1: TPanel;
    Label6: TLabel;
    lblTotalHaber: TLabel;
    EKDbSuma1: TEKDbSuma;
    Label7: TLabel;
    lblSaldoConciliacion: TLabel;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    RepConciliacion: TQuickRep;
    QRBand5: TQRBand;
    QRDBImage1: TQRDBImage;
    RepConciliacion_TITULO_CONCILIAC: TQRLabel;
    RepConciliacion_Reporte_Titulo_2: TQRLabel;
    RepConciliacion_Reporte_Titulo_1: TQRLabel;
    QRBandDetalle: TQRBand;
    QRChildBand2: TQRChildBand;
    QRBand7: TQRBand;
    QRLabel24: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    qrSaldoLibroBanco: TQRLabel;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    ZSP_ConciliacionFECHA_PD: TDateField;
    ZSP_LibroBancoPROVEEDOR: TStringField;
    ZSP_ConciliacionPROVEEDOR: TStringField;
    QRLabel2: TQRLabel;
    Label8: TLabel;
    lblSaldoExtracto: TLabel;
    lblDetalleExtracto: TLabel;
    Label5: TLabel;
    lblSaldo: TLabel;
    lblFechaConciliacion: TLabel;
    lblFechaExtracto: TLabel;
    QRlblMesEmision: TQRLabel;
    QRLabel9: TQRLabel;
    ZSP_LibroBancoNRO_MEDIO: TStringField;
    ZSP_LibroBancoOTROS: TStringField;
    ZSP_LibroBancoFECHA_CONCILIADO: TDateField;
    ZSP_LibroBancoID_MEDIO: TIntegerField;
    ZSP_LibroBancoMOV_ANULADO: TStringField;
    ZSP_LibroBancoCTA_MOV_ANULADO: TStringField;
    ZSP_LibroBancoNRO_FACTURA: TStringField;
    ZSP_LibroBancoNRO_RECIBO: TStringField;
    ZSP_LibroBancoNRO_ORDEN_STRING: TStringField;
    ZSP_LibroBancoORDEN_SALDO_ANTERIOR: TIntegerField;
    ZSP_ConciliacionNRO_MEDIO: TStringField;
    ZSP_ConciliacionOTROS: TStringField;
    ZSP_ConciliacionNRO_FAC_REC: TStringField;
    ZSP_ConciliacionID_MEDIO: TIntegerField;
    ZSP_ConciliacionFECHA_CONCILIADO: TDateField;
    ZSP_LibroBancoTIPO_PROVEEDOR: TStringField;
    ZSP_ConciliacionTIPO_PROVEEDOR: TStringField;
    mxDBGridExport: TmxDBGridExport;
    mxNativeExcel1: TmxNativeExcel;
    QRShapeV2: TQRShape;
    QRShapeV3: TQRShape;
    QRShapeV4: TQRShape;
    QRShapeV5: TQRShape;
    QRShapeV6: TQRShape;
    qrCuenta: TQRLabel;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    qrsaldoC: TQRLabel;
    qrsaldoEB: TQRLabel;
    QRLabel10: TQRLabel;
    qrTotalHaber: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape10: TQRShape;
    QRLabel3: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    function validarcampos():boolean;
    procedure btImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure imprimirMesReporte();
    procedure QRBandDetalleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure btnExcelClick(Sender: TObject);
    procedure RepConciliacionBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public
    aux_fecha:string;
    aux_imprimir: Integer;
  end;

var
  FConciliacion: TFConciliacion;

implementation

uses UDM;

{$R *.dfm}

procedure TFConciliacion.FormCreate(Sender: TObject);
begin
  aux_fecha:='';
  EKOrdenarGrilla1.CargarConfigColunmas;
  dm.EKModelo.abrir(ZQ_Cuentas);
  lblNombreCuenta.Caption:= '';
  lblSaldoExtracto.Caption:= '';
  lblSaldoConciliacion.Caption:= '';  
  lblFHasta.Caption:= '';
  lblFechaConciliacion.Caption:= '';
  lblFechaExtracto.Caption:= '';
  lblSaldo.Caption:= '';
  lblDetalleExtracto.Caption:= '';

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
end;


procedure TFConciliacion.btnBuscarClick(Sender: TObject);
begin
  TEKCriterioBA(BuscarParametros.CriteriosBusqueda.Items[1]).Valor := DateToStr(dm.EKModelo.Fecha());;

  if BuscarParametros.BuscarSinEjecutar then
  begin
    if not validarcampos then
    begin
       btnBuscar.Click;
    end
    else
    begin
      ZSP_LibroBanco.Close;
      ZSP_LibroBanco.ParamByName('e_id_cuenta').AsInteger:= StrToInt(BuscarParametros.ParametrosSeleccionados1[0]);
      ZSP_LibroBanco.ParamByName('e_ordenamiento').AsInteger:=0; //Fecha Emision
      ZSP_LibroBanco.ParamByName('e_hasta').AsDate:= StrToDate(BuscarParametros.ParametrosSeleccionados1[1]);
      ZSP_LibroBanco.ParamByName('e_desde').AsDate:= StrToDate('01/01/1950');
      ZSP_LibroBanco.open;

      ZSP_Conciliacion.Close;
      ZSP_Conciliacion.ParamByName('e_id_cuenta').AsInteger:= StrToInt(BuscarParametros.ParametrosSeleccionados1[0]);
      ZSP_Conciliacion.ParamByName('e_ordenamiento').AsInteger:=0; //Fecha Emision
      ZSP_Conciliacion.ParamByName('e_fecha').AsDate:= StrToDate(BuscarParametros.ParametrosSeleccionados1[1]);
      ZSP_Conciliacion.ParamByName('e_desde').AsDate:= StrToDate('01/01/1950');
      ZSP_Conciliacion.open;

      ZSP_LibroBanco.Last;

      lblNombreCuenta.Caption:= BuscarParametros.ParametrosSelecReales1[0];
      qrCuenta.Caption:=lblNombreCuenta.Caption;
      lblFHasta.Caption:= BuscarParametros.ParametrosSelecReales1[1];
      lblFechaConciliacion.Caption:= BuscarParametros.ParametrosSelecReales1[1];
      lblFechaExtracto.Caption:= BuscarParametros.ParametrosSelecReales1[1];

      lblSaldo.Caption:= FormatFloat('$ ###,###,##0.00', ZSP_LibroBancoSALDO.AsFloat); //'$ '+ZSP_LibroBancoSALDO.AsString;
      lblTotalHaber.Caption:= FormatFloat('$ ###,###,##0.00', EKDbSuma1.SumCollection[0].SumValue); //'$ '+floattostr(EKDbSuma1.SumCollection[0].SumValue);
      lblSaldoConciliacion.Caption:= FormatFloat('$ ###,###,##0.00', (ZSP_LibroBancoSALDO.AsFloat+EKDbSuma1.SumCollection[0].SumValue)); //'$ '+floattostr(EKDbSuma1.SumCollection[0].SumValue+ZSP_LibroBancoSALDO.AsFloat);
      lblSaldoExtracto.Caption:= FormatFloat('$ ###,###,##0.00', StrToFloat(BuscarParametros.ParametrosSelecReales1[2])); //'$ '+ BuscarParametros.ParametrosSelecReales1[2];
      //lblDetalleExtracto.Caption:= BuscarParametros.ParametrosSelecReales1[3];
    end;
  end;
end;


function TFConciliacion.validarcampos():boolean;
begin
result := true;

   if (BuscarParametros.ParametrosSelecReales1[0]='') then
    begin
      Application.MessageBox('El campo "Cuenta" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      result := false;
      exit;
    end;
   if (BuscarParametros.ParametrosSelecReales1[1]='') then
    begin
      Application.MessageBox('El campo "Fecha" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      result := false;
      exit;
    end;
   if (BuscarParametros.ParametrosSelecReales1[2]='') then
    begin
      Application.MessageBox('El campo "Monto Extr. Bancario" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      result := false;
      exit;
    end;
end;


procedure TFConciliacion.btImprimirClick(Sender: TObject);
begin
  if ZSP_Conciliacion.IsEmpty then
    exit;
  aux_fecha:= '';
  qrSaldoLibroBanco.Caption:=Format('%s' ,[lblSaldo.Caption]);
  //qrSaldoConciliacion.Caption:=lblSaldoConciliacion.Caption;
  qrTotalHaber.Caption:=lblTotalHaber.Caption;
  //qrExtracto.Caption:=lblSaldoExtracto.Caption;
  qrsaldoEB.Caption:=Format('Saldo s/ Extracto Bancario al %s %s : %s',[lblFechaExtracto.Caption,lblDetalleExtracto.Caption,lblSaldoExtracto.Caption]);
  qrsaldoC.Caption:=Format('Saldo s/ Conciliación al %s : %s',[lblFechaConciliacion.Caption,lblSaldoConciliacion.Caption]);
  dm.TitulosReportes(RepConciliacion,CuentaNro);
  EKVistaPreviaQR1.VistaPrevia;
end;


procedure TFConciliacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
end;


procedure TFConciliacion.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFConciliacion.imprimirMesReporte;
begin
  if FormatDateTime('mm-yyyy', ZSP_ConciliacionFECHA.AsDateTime) <> aux_fecha then
  begin
    aux_fecha:= FormatDateTime('mm-yyyy', ZSP_ConciliacionFECHA.AsDateTime);
    QRlblMesEmision.Caption:= UpperCase(FormatDateTime('MMM-YY',ZSP_ConciliacionFECHA.AsDateTime));
  end
  else
    QRlblMesEmision.Caption:= '';
end;


procedure TFConciliacion.QRBandDetalleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  imprimirMesReporte;

  if StrLen(pchar(ZSP_ConciliacionPROVEEDOR.AsString)) > 40 then
  begin
    QRShapeV2.Height:= 76;
    QRShapeV3.Height:= 76;
    QRShapeV4.Height:= 76;
    QRShapeV5.Height:= 76;
    QRShapeV6.Height:= 76;
  end
  else
  begin
    QRShapeV2.Height:= 28;
    QRShapeV3.Height:= 28;
    QRShapeV4.Height:= 28;
    QRShapeV5.Height:= 28;
    QRShapeV6.Height:= 28;
  end
end;


procedure TFConciliacion.btnExcelClick(Sender: TObject);
begin
  if not ZSP_Conciliacion.IsEmpty then
    mxDBGridExport.Select;
end;

procedure TFConciliacion.RepConciliacionBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  aux_fecha:= '';
end;

end.
