unit UConciliacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, StdCtrls, ExtCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZStoredProcedure,
  EKBusquedaAvanzada, EKDbSuma, QuickRpt, QRCtrls, EKVistaPreviaQR,
  EKOrdenarGrilla;

type
  TFConciliacion = class(TForm)
    PContenedor: TPanel;
    DBGridListaErogacion: TDBGrid;
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
    btnLibroBanco: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btn2: TdxBarLargeButton;
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
    ZSP_LibroBancoNRO_MEDIO: TStringField;
    ZSP_LibroBancoDEBE: TFloatField;
    ZSP_LibroBancoHABER: TFloatField;
    ZSP_LibroBancoSALDO: TFloatField;
    ZSP_LibroBancoDESCRIPCION: TStringField;
    ZSP_LibroBancoCONCILIADO: TStringField;
    ZSP_LibroBancoNOMBRE_CONCEPTO: TStringField;
    ZSP_LibroBancoTIPO_MOV: TStringField;
    ZSP_LibroBancoFECHA_PD: TDateField;
    ZSP_LibroBancoOTROS: TStringField;
    ZSP_LibroBancoNRO_FAC_REC: TStringField;
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
    ZSP_ConciliacionNRO_MEDIO: TStringField;
    ZSP_ConciliacionDEBE: TFloatField;
    ZSP_ConciliacionHABER: TFloatField;
    ZSP_ConciliacionSALDO: TFloatField;
    ZSP_ConciliacionDESCRIPCION: TStringField;
    ZSP_ConciliacionCONCILIADO: TStringField;
    ZSP_ConciliacionNOMBRE_CONCEPTO: TStringField;
    ZSP_ConciliacionTIPO_MOV: TStringField;
    ZSP_ConciliacionFECHA_PD: TDateField;
    ZSP_ConciliacionOTROS: TStringField;
    ZSP_ConciliacionNRO_FAC_REC: TStringField;
    ZSP_ConciliacionNRO_ORDEN: TIntegerField;
    Panel1: TPanel;
    Label6: TLabel;
    lblTotalHaber: TLabel;
    EKDbSuma1: TEKDbSuma;
    Label7: TLabel;
    lblSaldoConciliacion: TLabel;
    Label8: TLabel;
    lblFdesde: TLabel;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    Label5: TLabel;
    lblSaldo: TLabel;
    ReporteConciliacion: TQuickRep;
    QRBand5: TQRBand;
    QRDBImage1: TQRDBImage;
    QRLabel12: TQRLabel;
    ReporteConciliacion_direccion: TQRLabel;
    ReporteConciliacion_entidad: TQRLabel;
    QRBandDetalle: TQRBand;
    QRChildBand2: TQRChildBand;
    QRBand7: TQRBand;
    QRLabel35: TQRLabel;
    QRlblFechaHoy: TQRLabel;
    QRLabel24: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    QRLabel9: TQRLabel;
    qrSaldoConciliacion: TQRLabel;
    QRLabel11: TQRLabel;
    qrExtracto: TQRLabel;
    QRLabel10: TQRLabel;
    qrTotalHaber: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel3: TQRLabel;
    qrFecha: TQRLabel;
    QRLabel4: TQRLabel;
    qrSaldoLibroBanco: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    procedure FormCreate(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    function validarcampos():boolean;
    procedure btImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConciliacion: TFConciliacion;

implementation

uses UDM;

{$R *.dfm}

procedure TFConciliacion.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla1.CargarConfigColunmas;
  dm.EKModelo.abrir(ZQ_Cuentas);
//  TEKCriterioBA(EKBAvanzadaListadoErog.CriteriosBusqueda.Items[1]).Valor := DateToStr(StartOfAMonth(YearOf(DM.EKModelo.Fecha),MonthOf(DM.EKModelo.Fecha)));
//  TEKCriterioBA(EKBAvanzadaListadoErog.CriteriosBusqueda.Items[2]).Valor := DateToStr(EndOfAMonth(YearOf(DM.EKModelo.Fecha),MonthOf(DM.EKModelo.Fecha)));
//
  lblNombreCuenta.Caption:= '';
  lblFdesde.Caption:= '';
  lblFHasta.Caption:= '';
  lblSaldo.Caption:= '';
end;

procedure TFConciliacion.btnBuscarClick(Sender: TObject);
begin
  TEKCriterioBA(BuscarParametros.CriteriosBusqueda.Items[1]).Valor := '01/01/2010';
  TEKCriterioBA(BuscarParametros.CriteriosBusqueda.Items[2]).Valor := DateToStr(dm.EKModelo.Fecha());

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
      ZSP_LibroBanco.ParamByName('e_ordenamiento').AsInteger:=1; //Fecha PD
      ZSP_LibroBanco.ParamByName('e_hasta').AsDate:= StrToDate(BuscarParametros.ParametrosSeleccionados1[2]);
      ZSP_LibroBanco.ParamByName('e_desde').AsDate:= StrToDate(BuscarParametros.ParametrosSeleccionados1[1]);
      ZSP_LibroBanco.open;

      ZSP_Conciliacion.Close;
      ZSP_Conciliacion.ParamByName('e_id_cuenta').AsInteger:= StrToInt(BuscarParametros.ParametrosSeleccionados1[0]);
      ZSP_Conciliacion.ParamByName('e_ordenamiento').AsInteger:=1; //Fecha PD
      ZSP_Conciliacion.ParamByName('e_fecha').AsDate:= StrToDate(BuscarParametros.ParametrosSeleccionados1[2]);
      ZSP_Conciliacion.ParamByName('e_desde').AsDate:= StrToDate(BuscarParametros.ParametrosSeleccionados1[1]);
      ZSP_Conciliacion.open;

      lblNombreCuenta.Caption:= BuscarParametros.ParametrosSelecReales1[0];
      lblFdesde.Caption:= BuscarParametros.ParametrosSelecReales1[1];
      lblFHasta.Caption:= BuscarParametros.ParametrosSelecReales1[2];
      lblSaldo.Caption:= '$ '+ZSP_LibroBancoSALDO.AsString;
      lblTotalHaber.Caption:= '$ '+floattostr(EKDbSuma1.SumCollection[0].SumValue);
      lblSaldoConciliacion.Caption:= '$ '+floattostr(EKDbSuma1.SumCollection[0].SumValue+ZSP_LibroBancoSALDO.AsFloat);
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
      Application.MessageBox('El campo "Fecha Desde" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      result := false;
      exit;
    end;
   if (BuscarParametros.ParametrosSelecReales1[2]='') then
    begin
      Application.MessageBox('El campo "Fecha Hasta" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      result := false;
      exit;
    end;
end;

procedure TFConciliacion.btImprimirClick(Sender: TObject);
begin
  if ZSP_Conciliacion.IsEmpty then exit;

  qrSaldoLibroBanco.Caption:=lblSaldo.Caption;
  qrFecha.Caption:=lblFHasta.Caption;
  qrSaldoConciliacion.Caption:=lblSaldoConciliacion.Caption;
  qrTotalHaber.Caption:=lblTotalHaber.Caption;
  qrExtracto.Caption:=lblSaldoConciliacion.Caption;

  QRlblFechaHoy.Caption:= FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);

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

end.
