unit UArqueo_Caja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Grids, DBGrids, StdCtrls, ExtCtrls, dxBar,
  dxBarExtItems, ComCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, QRCtrls, QuickRpt,ISVistaPreviaQR, cxClasses, ISDbSuma, ISOrdenarGrilla;

type
  TFArqueo_Caja = class(TForm)
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelContenedor: TPanel;
    PanelFiltro: TPanel;
    Label39: TLabel;
    ZQ_Arqueo_Movimientos: TZQuery;
    DS_Arqueo_Movimientos: TDataSource;
    DateTimePicker1: TDateTimePicker;
    DS_Comprobante_FormaPago: TDataSource;
    RepArqueo: TQuickRep;
    QRBand14: TQRBand;
    RepArqueo_Titulo: TQRLabel;
    RepArqueo_Subtitulo: TQRLabel;
    qrlblTitulo: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRSubDetail2: TQRSubDetail;
    QRSubDetail3: TQRSubDetail;
    QRDBText33: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRSubDetail4: TQRSubDetail;
    QRLabelImporteventa: TQRLabel;
    QRLabelImporteTotal: TQRLabel;
    ZQ_Arqueo_MovimientosIMPORTE_VENTA: TFloatField;
    ZQ_Arqueo_MovimientosCODIGO: TStringField;
    ZQ_Arqueo_MovimientosFECHA: TDateTimeField;
    ZQ_Arqueo_MovimientosOBSERVACION: TStringField;
    ZQ_Arqueo_MovimientosTIPO_COMPROBANTE: TStringField;
    ZQ_Arqueo_MovimientosTIPO_MOVIMIENTO: TStringField;
    ZQ_Arqueo_MovimientosNOMBRE_ENTIDAD: TStringField;
    ZQ_Arqueo_MovimientosID_COMPROBANTE: TIntegerField;
    ZQ_Arqueo_MovimientosCANT_VENDIDA: TFloatField;
    ZQ_Arqueo_MovimientosIMPORTE_TRANSFERIDO: TFloatField;
    ZQ_Arqueo_Fpago: TZQuery;
    ZQ_Arqueo_FpagoTIPO_FPAGO: TStringField;
    ZQ_Arqueo_FpagoFISCAL: TStringField;
    ZQ_Arqueo_FpagoCUENTA: TStringField;
    ZQ_Arqueo_FpagoIMPORTE_VENTA: TFloatField;
    ZQ_Arqueo_FpagoIMPORTE_TRANSFERIDO: TFloatField;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    PageFooterBand1: TQRBand;
    QRlblPieDePagina: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData1: TQRSysData;
    ChildBand2: TQRChildBand;
    ChildBand3: TQRChildBand;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel4: TQRLabel;
    ZQ_SaldoCuenta_PDiario: TZQuery;
    DS_SaldoCuenta_PDiario: TDataSource;
    ZQ_SaldoCuenta_PDiarioID_CUENTA: TIntegerField;
    ZQ_SaldoCuenta_PDiarioCODIGO: TStringField;
    ZQ_SaldoCuenta_PDiarioNOMBRE_CUENTA: TStringField;
    ZQ_SaldoCuenta_PDiarioNRO_CTA_BANCO: TStringField;
    ZQ_SaldoCuenta_PDiarioSALDO: TFloatField;
    ZQ_SaldoCuenta_PDiarioSALDO_ANT: TFloatField;
    ZQ_SaldoCuenta_PDiarioDIFERENCIA: TFloatField;
    RepSaldo: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLblTituloSaldo: TQRLabel;
    RepSaldo_Subtitulo: TQRLabel;
    RepSaldo_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand11: TQRBand;
    QRlblRepSaldo_PieDePagina: TQRLabel;
    QRLabel13: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand12: TQRBand;
    ColumnHeaderBand2: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBLogo2: TQRDBImage;
    PageControl1: TPageControl;
    TabSheetMovimientos: TTabSheet;
    TabSheetCuentas: TTabSheet;
    Panel5: TPanel;
    Panel1: TPanel;
    lblTotalFPago: TLabel;
    lblTotalMovimientos: TLabel;
    DBGridArqueoMovimiento: TDBGrid;
    DBGridFormaPago: TDBGrid;
    DBGrid1: TDBGrid;
    ISVistaPreviaDetalle: TISVistaPreviaQR;
    ISVistaPreviaSaldo: TISVistaPreviaQR;
    ISOrdenarGrilla1: TISOrdenarGrilla;
    ISOrdenarGrilla2: TISOrdenarGrilla;
    ISDbSuma_ArqueoMov: TISDbSuma;
    ISDbSuma_ArqueoFpago: TISDbSuma;
    procedure DateTimePicker1Change(Sender: TObject);
    procedure EKDbSuma_ArqueoFpagoSumListChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure DBGridArqueoMovimientoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EKDbSuma_ArqueoMovSumListChanged(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FArqueo_Caja: TFArqueo_Caja;

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFArqueo_Caja.DateTimePicker1Change(Sender: TObject);
begin
  ZQ_Arqueo_Movimientos.Close;
  ZQ_Arqueo_Movimientos.ParamByName('fecha_arqueo').AsDate:=DateTimePicker1.Date;
  ZQ_Arqueo_Movimientos.ParamByName('id_sucursal_ingreso').AsInteger:= SUCURSAL_LOGUEO;
  ZQ_Arqueo_Movimientos.Open;

  ZQ_Arqueo_Fpago.Close;
  ZQ_Arqueo_Fpago.ParamByName('fecha_arqueo').AsDate:=DateTimePicker1.Date;
  ZQ_Arqueo_Fpago.ParamByName('id_sucursal_ingreso').AsInteger:= SUCURSAL_LOGUEO;
  ZQ_Arqueo_Fpago.Open;

  ZQ_SaldoCuenta_PDiario.Close;
  ZQ_SaldoCuenta_PDiario.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
  ZQ_SaldoCuenta_PDiario.ParamByName('fecha_desde').AsDate := DateTimePicker1.Date;
  ZQ_SaldoCuenta_PDiario.ParamByName('fecha_hasta').AsDate := DateTimePicker1.Date;
  ZQ_SaldoCuenta_PDiario.Open;
end;


procedure TFArqueo_Caja.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:= 0;
  QRDBLogo.DataSet:= dm.ZQ_Sucursal;
  QRDBLogo2.DataSet:= dm.ZQ_Sucursal;

  ISOrdenarGrilla1.CargarConfigColunmas;
  ISOrdenarGrilla2.CargarConfigColunmas;
  DateTimePicker1.Date:=dm.ISModelo.Fecha();
  DateTimePicker1Change(self);
end;


procedure TFArqueo_Caja.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFArqueo_Caja.btnImprimirClick(Sender: TObject);
begin
  if ZQ_Arqueo_Movimientos.IsEmpty then
    exit;

  ZQ_Arqueo_Movimientos.SortedFields:= 'TIPO_MOVIMIENTO; TIPO_COMPROBANTE; IMPORTE_VENTA';

  qrlblTitulo.Caption:= 'ARQUEO CAJA DIA ' + FormatDateTime('dd/mm/yyyy', DateTimePicker1.DateTime);
  QRLblTituloSaldo.Caption:= 'DETALLE CUENTAS DIA ' + FormatDateTime('dd/mm/yyyy', DateTimePicker1.DateTime);
  QRLabelImporteventa.Caption:= FormatFloat('Total: $ ##,###,##0.00', ISDbSuma_ArqueoMov.SumCollection[0].SumValue);
  QRLabelImporteventa.Caption:= QRLabelImporteventa.Caption + FormatFloat('  /  Transferido: $ ##,###,##0.00  ', ISDbSuma_ArqueoMov.SumCollection[1].SumValue);

  QRLabelImporteTotal.Caption:= FormatFloat('Total: $ ##,###,##0.00', ISDbSuma_ArqueoFpago.SumCollection[0].SumValue);
  QRLabelImporteTotal.Caption:= QRLabelImporteTotal.Caption + FormatFloat('  /  Transferido: $ ##,###,##0.00  ', ISDbSuma_ArqueoFpago.SumCollection[1].SumValue);
  QRlblPieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ', dm.ISModelo.Fecha);
  QRlblRepSaldo_PieDePagina.Caption:= TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ', dm.ISModelo.Fecha);
  DM.VariablesReportes(RepArqueo);
  DM.VariablesReportes(RepSaldo);
  ISVistaPreviaDetalle.VistaPrevia;
  ISVistaPreviaSaldo.VistaPrevia;

  ZQ_Arqueo_Movimientos.SortedFields:= 'FECHA';  
end;


procedure TFArqueo_Caja.btnExcelClick(Sender: TObject);
begin
  if not ZQ_Arqueo_Movimientos.IsEmpty then
    dm.ExportarEXCEL(DBGridArqueoMovimiento);
end;


procedure TFArqueo_Caja.DBGridArqueoMovimientoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridArqueoMovimiento, Rect, DataCol, Column, State);
end;


procedure TFArqueo_Caja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ISOrdenarGrilla1.GuardarConfigColumnas;
  ISOrdenarGrilla2.GuardarConfigColumnas;
end;


procedure TFArqueo_Caja.EKDbSuma_ArqueoMovSumListChanged(Sender: TObject);
begin
  lblTotalMovimientos.Caption:= FormatFloat('Total: $ ##,###,##0.00', ISDbSuma_ArqueoMov.SumCollection[0].SumValue);
  lblTotalMovimientos.Caption:= lblTotalMovimientos.Caption + FormatFloat('  /  Transferido: $ ##,###,##0.00   ', ISDbSuma_ArqueoMov.SumCollection[1].SumValue);
end;


procedure TFArqueo_Caja.EKDbSuma_ArqueoFpagoSumListChanged(Sender: TObject);
begin
  lblTotalFPago.Caption:= FormatFloat('Total: $ ##,###,##0.00', ISDbSuma_ArqueoFpago.SumCollection[0].SumValue);
  lblTotalFPago.Caption:= lblTotalFPago.Caption + FormatFloat('  /  Transferido: $ ##,###,##0.00   ', ISDbSuma_ArqueoFpago.SumCollection[1].SumValue);
end;

procedure TFArqueo_Caja.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGrid1, Rect, DataCol, Column, State);
end;

end.
