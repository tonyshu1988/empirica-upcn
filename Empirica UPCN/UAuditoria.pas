unit UAuditoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, TeEngine, Series, TeeProcs, Chart, DbChart,
  Grids, DBGrids, Buttons, ExtCtrls, dxBar, dxBarExtItems, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, EKBusquedaAvanzada,
  DBCtrls, EKLlenarCombo;

type
  TFAuditoria = class(TForm)
    PageControl: TPageControl;
    TabSheet9: TTabSheet;
    Panel13: TPanel;
    Panel16: TPanel;
    GroupBox1: TGroupBox;
    DBGrid_Movimientos: TDBGrid;
    Panel17: TPanel;
    GroupBox2: TGroupBox;
    DBGrid_Cuentas_Mov: TDBGrid;
    TabSheet12: TTabSheet;
    Panel19: TPanel;
    DBChartMov: TDBChart;
    Panel1: TPanel;
    Label1: TLabel;
    fechaDesde: TDateTimePicker;
    ZQ_Movimientos: TZQuery;
    ZQ_CuentaMov: TZQuery;
    DS_Movimientos: TDataSource;
    DS_CuentaMov: TDataSource;
    ZQ_MovInsert: TZQuery;
    DS_MovInsert: TDataSource;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    ZQ_MovimientosID_AUDIT_MOV: TIntegerField;
    ZQ_MovimientosNRO_MOVIMIENTO: TIntegerField;
    ZQ_MovimientosNRO_PROVEEDOR: TIntegerField;
    ZQ_MovimientosID_CONCEPTO: TIntegerField;
    ZQ_MovimientosID_OBJETO_MOVIMIENTO: TIntegerField;
    ZQ_MovimientosDESCRIPCION: TStringField;
    ZQ_MovimientosPAGO_DEL_EJERCICIO: TStringField;
    ZQ_MovimientosFECHA: TDateField;
    ZQ_MovimientosIMPORTE: TFloatField;
    ZQ_MovimientosIMPRESO: TStringField;
    ZQ_MovimientosNRO_COMPROMISO: TIntegerField;
    ZQ_MovimientosNRO_PARTE: TIntegerField;
    ZQ_MovimientosANULADO: TStringField;
    ZQ_MovimientosFECHA_ANULADO: TDateField;
    ZQ_MovimientosPARTE_ANULADO: TIntegerField;
    ZQ_MovimientosDETALLE_ANULADO: TStringField;
    ZQ_MovimientosNRO_ORDEN: TIntegerField;
    ZQ_MovimientosNRO_FACTURA: TStringField;
    ZQ_MovimientosNRO_RECIBO: TStringField;
    ZQ_MovimientosAUDIT_USUARIO: TStringField;
    ZQ_MovimientosAUDIT_FECHA: TDateField;
    ZQ_MovimientosAUDIT_TIPO: TStringField;
    ZQ_MovimientosDESCRIPCION_1: TStringField;
    ZQ_MovimientosAPELLIDO_Y_NOMBRE: TStringField;
    ZQ_MovimientosNOMBRE_CONCEPTO: TStringField;
    ZQ_CuentaMovID_AUDIT_CTA_MOV: TIntegerField;
    ZQ_CuentaMovID_CTA_MOV: TIntegerField;
    ZQ_CuentaMovNRO_MOVIMIENTO: TIntegerField;
    ZQ_CuentaMovID_CUENTA_INGRESO: TIntegerField;
    ZQ_CuentaMovID_CUENTA_EGRESO: TIntegerField;
    ZQ_CuentaMovID_MEDIO: TIntegerField;
    ZQ_CuentaMovFECHA_MDC: TDateField;
    ZQ_CuentaMovBANCO_MDC: TStringField;
    ZQ_CuentaMovNRO_CHEQUE_TRANSF: TIntegerField;
    ZQ_CuentaMovIMPORTE: TFloatField;
    ZQ_CuentaMovCONCILIADO: TStringField;
    ZQ_CuentaMovFECHA_CONCILIADO: TDateField;
    ZQ_CuentaMovANULADO: TStringField;
    ZQ_CuentaMovAUDIT_USUARIO: TStringField;
    ZQ_CuentaMovAUDIT_FECHA: TDateField;
    ZQ_CuentaMovAUDIT_TIPO: TStringField;
    ZQ_CuentaMovNOMBRE_CUENTA: TStringField;
    ZQ_CuentaMovNOMBRE_CUENTA_1: TStringField;
    ZQ_CuentaMovNOMBRE_MEDIO_COBRO_PAGO: TStringField;
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series4: TBarSeries;
    ZQ_MovUpdate: TZQuery;
    DS_MovUpdate: TDataSource;
    ZQ_MovDelete: TZQuery;
    DS_MovDelete: TDataSource;
    panelArriba: TPanel;
    panelAbajo: TPanel;
    Panel2: TPanel;
    DBChartUserTipoMov: TDBChart;
    Label2: TLabel;
    DS_Usuarios: TDataSource;
    ZQ_Grafico_TipoMov: TZQuery;
    DS_Grafico_TipoMov: TDataSource;
    Series5: TBarSeries;
    ZQ_MovimientosNRO_ORDEN_STRING: TStringField;
    ZQ_Usuarios: TZQuery;
    ZQ_UsuariosAUDIT_USUARIO: TStringField;
    btnAplicarFecha: TButton;
    btnAplicarUsuario: TButton;
    CBoxUsuario: TComboBox;
    EKLlenarComboUsuario: TEKLlenarCombo;
    Label3: TLabel;
    CBoxAccion: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure ZQ_MovimientosAfterScroll(DataSet: TDataSet);
    procedure DBGrid_MovimientosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid_Cuentas_MovDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnAplicarFechaClick(Sender: TObject);
    procedure btnAplicarUsuarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    hoy: Tdate;
  end;

var
  FAuditoria: TFAuditoria;

implementation

uses UDM, DateUtils;

{$R *.dfm}

procedure TFAuditoria.FormCreate(Sender: TObject);
var
  texto: TStrings;
begin
  PageControl.TabIndex:=0;
  
  EKBusquedaAvanzada1.Abrir;
  EKLlenarComboUsuario.CargarCombo;

  ZQ_Usuarios.Close;
  ZQ_Usuarios.Open;

  //cargo fecha actual y la del mes anterior
  fechaDesde.Date:= StartOfTheMonth(dm.EKModelo.Fecha());
  hoy:= dm.EKModelo.Fecha;

  ZQ_MovInsert.close;
  ZQ_MovInsert.ParamByName('fdesde').AsDate:= fechaDesde.Date;
  ZQ_MovInsert.ParamByName('fhasta').AsDate:= hoy;
  ZQ_MovInsert.Open;

  ZQ_MovDelete.close;
  ZQ_MovDelete.ParamByName('fdesde').AsDate:= fechaDesde.Date;
  ZQ_MovDelete.ParamByName('fhasta').AsDate:= hoy;
  ZQ_MovDelete.Open;

  ZQ_MovUpdate.close;
  ZQ_MovUpdate.ParamByName('fdesde').AsDate:= fechaDesde.Date;
  ZQ_MovUpdate.ParamByName('fhasta').AsDate:= hoy;
  ZQ_MovUpdate.Open;
end;


procedure TFAuditoria.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFAuditoria.ZQ_MovimientosAfterScroll(DataSet: TDataSet);
begin
  ZQ_CuentaMov.Close;
  ZQ_CuentaMov.ParamByName('nro_Mov').AsInteger:= ZQ_MovimientosNRO_MOVIMIENTO.AsInteger;
  ZQ_CuentaMov.Open;
end;


procedure TFAuditoria.DBGrid_MovimientosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdFocused in State) or (gdSelected in State) then
  begin
    DBGrid_Movimientos.Canvas.Font.Color := clwhite;
    DBGrid_Movimientos.Canvas.Brush.Color:=clBlue;
    DBGrid_Movimientos.Canvas.Font.Style := DBGrid_Movimientos.Canvas.Font.Style + [fsBold];
  end;

  DBGrid_Movimientos.DefaultDrawColumnCell(rect,datacol,column,state);
end;


procedure TFAuditoria.DBGrid_Cuentas_MovDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdFocused in State) or (gdSelected in State) then
  begin
    DBGrid_Cuentas_Mov.Canvas.Font.Color := clwhite;
    DBGrid_Cuentas_Mov.Canvas.Brush.Color:=clBlue;
    DBGrid_Cuentas_Mov.Canvas.Font.Style := DBGrid_Cuentas_Mov.Canvas.Font.Style + [fsBold];
  end;

  DBGrid_Cuentas_Mov.DefaultDrawColumnCell(rect,datacol,column,state);
end;


procedure TFAuditoria.btnBuscarClick(Sender: TObject);
begin
  EKBusquedaAvanzada1.Buscar;
end;


procedure TFAuditoria.btnAplicarFechaClick(Sender: TObject);
begin
  ZQ_MovInsert.close;
  ZQ_MovInsert.ParamByName('fdesde').AsDate:= fechaDesde.Date;
  ZQ_MovInsert.ParamByName('fhasta').AsDate:= hoy;
  ZQ_MovInsert.Open;

  ZQ_MovDelete.close;
  ZQ_MovDelete.ParamByName('fdesde').AsDate:= fechaDesde.Date;
  ZQ_MovDelete.ParamByName('fhasta').AsDate:= hoy;
  ZQ_MovDelete.Open;

  ZQ_MovUpdate.close;
  ZQ_MovUpdate.ParamByName('fdesde').AsDate:= fechaDesde.Date;
  ZQ_MovUpdate.ParamByName('fhasta').AsDate:= hoy;
  ZQ_MovUpdate.Open;
end;


procedure TFAuditoria.btnAplicarUsuarioClick(Sender: TObject);
begin
  ZQ_Grafico_TipoMov.Close;
  ZQ_Grafico_TipoMov.ParamByName('usuario').AsString:= ZQ_UsuariosAUDIT_USUARIO.AsString;
  ZQ_Grafico_TipoMov.ParamByName('tipo').AsString:= CBoxAccion.Text;
  ZQ_Grafico_TipoMov.Open;
end;

end.
