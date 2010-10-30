unit UReporteMovProveedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, Grids, DBGrids, ExtCtrls, dxBar,
  dxBarExtItems, EKVistaPreviaQR, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, EKBusquedaAvanzada;

type
  TFReporteMovProveedor = class(TForm)
    Panel1: TPanel;
    DBGridMercaderiaVendida: TDBGrid;
    RepMovProveedores: TQuickRep;
    QRBand12: TQRBand;
    QRLabel11: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText14: TQRDBText;
    QRLabel12: TQRLabel;
    QRBand16: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr4: TQRExpr;
    QRBand17: TQRBand;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    ChildBand5: TQRChildBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRBand19: TQRBand;
    QRLabel39: TQRLabel;
    QRExpr2: TQRExpr;
    QRBand18: TQRBand;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    ZQ_MovimientoProveedores: TZQuery;
    ZQ_MovimientoProveedoresNRO_ORDEN: TIntegerField;
    ZQ_MovimientoProveedoresFECHA_MDC: TDateField;
    ZQ_MovimientoProveedoresNRO_CHEQUE_TRANSF: TIntegerField;
    ZQ_MovimientoProveedoresCODIGO_CORTO: TStringField;
    ZQ_MovimientoProveedoresNOMBRE_MEDIO_COBRO_PAGO: TStringField;
    ZQ_MovimientoProveedoresIMPORTE: TFloatField;
    ZQ_MovimientoProveedoresAPELLIDO_Y_NOMBRE: TStringField;
    ZQ_MovimientoProveedoresNOMBRE_CONCEPTO: TStringField;
    ZQ_MovimientoProveedoresDESCRIPCION: TStringField;
    DS_MovimientoProveedores: TDataSource;
    ZQ_MovimientoProveedoresNRO_PROVEEDOR: TIntegerField;
    dxBarABM: TdxBarManager;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnBuscar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    ZQ_MovimientoProveedoresie_Cuenta: TStringField;
    ZQ_MovimientoProveedoresFECHA: TDateField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    QRLabel35: TQRLabel;
    QRlblFechaHoyLibroBanco: TQRLabel;
    RepMovProveedores_Reporte_Titulo_2: TQRLabel;
    RepMovProveedores_Reporte_Titulo_1: TQRLabel;
    ZQ_MovimientoProveedoresID_CUENTA_INGRESO: TIntegerField;
    ZQ_MovimientoProveedoresID_CUENTA_EGRESO: TIntegerField;
    ZQ_Cuentas: TZQuery;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasMEDIO_DE_PAGO: TStringField;
    ZQ_CuentasNRO_CUENTA_BANCARIA: TStringField;
    ZQ_CuentasULTIMO_NRO: TIntegerField;
    ZQ_CuentasAUTONUMERAR: TStringField;
    ZQ_CuentasMEDIO_POR_DEFECTO: TIntegerField;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    ZQ_MovimientoProveedorescalc_importe: TFloatField;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure ZQ_MovimientoProveedoresCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FReporteMovProveedor: TFReporteMovProveedor;

implementation

uses UDM;

{$R *.dfm}

procedure TFReporteMovProveedor.btnBuscarClick(Sender: TObject);
begin
EKBusquedaAvanzada1.Buscar;
end;

procedure TFReporteMovProveedor.btnImprimirClick(Sender: TObject);
begin
  if ZQ_MovimientoProveedores.IsEmpty then
    exit;

    QRlblFechaHoyLibroBanco.Caption:= FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
    dm.VariablesReportes(RepMovProveedores);
    EKVistaPreviaQR1.VistaPrevia;
end;

procedure TFReporteMovProveedor.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFReporteMovProveedor.ZQ_MovimientoProveedoresCalcFields(
  DataSet: TDataSet);
begin
  if ZQ_MovimientoProveedoresID_CUENTA_INGRESO.IsNull then
  begin
    ZQ_Cuentas.Close;
    ZQ_Cuentas.ParamByName('ID_CUENTA').AsInteger:= ZQ_MovimientoProveedoresID_CUENTA_EGRESO.AsInteger;
    ZQ_Cuentas.Open;

    ZQ_MovimientoProveedoresie_Cuenta.AsString :=ZQ_CuentasNOMBRE_CUENTA.AsString+' '+ZQ_CuentasNRO_CUENTA_BANCARIA.AsString;
    //ZQ_MovimientoProveedorescalc_importe.AsFloat := ZQ_MovimientoProveedoresIMPORTE.AsFloat*-1;
  end
  else
  begin
    ZQ_Cuentas.Close;
    ZQ_Cuentas.ParamByName('ID_CUENTA').AsInteger:= ZQ_MovimientoProveedoresID_CUENTA_INGRESO.AsInteger;
    ZQ_Cuentas.Open;

    ZQ_MovimientoProveedoresie_Cuenta.AsString :=ZQ_CuentasNOMBRE_CUENTA.AsString+' '+ZQ_CuentasNRO_CUENTA_BANCARIA.AsString;
    //ZQ_MovimientoProveedorescalc_importe.AsFloat := ZQ_MovimientoProveedoresIMPORTE.AsFloat;
  end;

end;

end.
