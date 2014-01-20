unit UMovimientosInternos;

interface
//que ponemos en la fecha de anulacion, la del comprobante o la de hoy?
//si queremos llevar el historico tendria que ser la de hoy.

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  ZStoredProcedure, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  QRCtrls, QuickRpt, EKVistaPreviaQR, EKOrdenarGrilla, ComCtrls,
  EKDBDateTimePicker, EKListadoSQL, EKDbSuma, Buttons, cxClasses;

type
  TFMovimientosInternos = class(TForm)
    PanelFondo: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnAnular: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AAnular: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    EKVistaPrevia: TEKVistaPreviaQR;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepCuentas_Subtitulo: TQRLabel;
    RepCuentas_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand11: TQRBand;
    QRlblPieDePagina: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand12: TQRBand;
    QRExpr18: TQRExpr;
    TitleBand2: TQRBand;
    QRLabelCritBusqueda: TQRLabel;
    QRLabel48: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    PanelCalendario: TPanel;
    PanelDia_Lista: TPanel;
    PanelDia_Movimiento: TPanel;
    PanelDia_InfoMovimiento: TPanel;
    PanelDia_InfoLista: TPanel;
    lblFechaHoy: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    PanelDia_Cuentas: TPanel;
    DBGridFPago_Egreso: TDBGrid;
    EKDBDateTimePicker1: TEKDBDateTimePicker;
    DBEdit1: TDBEdit;
    RadioButtonEgreso: TRadioButton;
    RadioButtonIngreso: TRadioButton;
    DBLookupComboBox1: TDBLookupComboBox;
    ZQ_TipoMovimiento: TZQuery;
    DS_TipoMovimiento: TDataSource;
    ZQ_TipoMovimientoID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_TipoMovimientoNOMBRE_MOVIMIENTO: TStringField;
    ZQ_TipoMovimientoBAJA: TStringField;
    ZQ_Comprobante: TZQuery;
    ZQ_ComprobanteID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteID_SUCURSAL: TIntegerField;
    ZQ_ComprobanteID_PROVEEDOR: TIntegerField;
    ZQ_ComprobanteID_CLIENTE: TIntegerField;
    ZQ_ComprobanteID_TIPO_CPB: TIntegerField;
    ZQ_ComprobanteID_VENDEDOR: TIntegerField;
    ZQ_ComprobanteID_COMP_ESTADO: TIntegerField;
    ZQ_ComprobanteCODIGO: TStringField;
    ZQ_ComprobanteFECHA: TDateTimeField;
    ZQ_ComprobanteOBSERVACION: TStringField;
    ZQ_ComprobanteBASE_IMPONIBLE: TFloatField;
    ZQ_ComprobanteSALDO: TFloatField;
    ZQ_ComprobanteIMPORTE_TOTAL: TFloatField;
    ZQ_ComprobantePORC_IVA: TFloatField;
    ZQ_ComprobanteIMPORTE_IVA: TFloatField;
    ZQ_ComprobantePORC_DESCUENTO: TFloatField;
    ZQ_ComprobanteIMPORTE_DESCUENTO: TFloatField;
    ZQ_ComprobanteENCABEZADO: TStringField;
    ZQ_ComprobantePIE: TStringField;
    ZQ_ComprobanteFECHA_COBRADA: TDateField;
    ZQ_ComprobanteFECHA_ENVIADA: TDateField;
    ZQ_ComprobanteFECHA_IMPRESA: TDateField;
    ZQ_ComprobanteFECHA_VENCIMIENTO: TDateField;
    ZQ_ComprobantePUNTO_VENTA: TIntegerField;
    ZQ_ComprobanteNUMERO_CPB: TIntegerField;
    ZQ_ComprobanteFECHA_ANULADO: TDateField;
    DS_Comprobante: TDataSource;
    ZQ_NumeroCpb: TZQuery;
    ZQ_NumeroCpbULTIMO_NUMERO: TIntegerField;
    ZQ_NumeroCpbID_TIPO_CPB: TIntegerField;
    ZQ_NumeroCpbNOMBRE_TIPO_CPB: TStringField;
    ZQ_NumeroCpbSIGNO_COBRO_PAGO: TIntegerField;
    ZQ_NumeroCpbSIGNO_STOCK: TIntegerField;
    ZQ_NumeroCpbSIGNO_CTA_CTE: TIntegerField;
    ZQ_NumeroCpbBAJA: TStringField;
    ZP_CpbID: TZStoredProc;
    ZP_CpbIDID: TIntegerField;
    PanelDia: TPanel;
    ZQ_ComprobanteID_TIPO_IVA: TIntegerField;
    ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_MovHoy: TZQuery;
    DS_MovHoy: TDataSource;
    ZQ_MovHoyID_COMPROBANTE: TIntegerField;
    ZQ_MovHoyID_SUCURSAL: TIntegerField;
    ZQ_MovHoyID_PROVEEDOR: TIntegerField;
    ZQ_MovHoyID_CLIENTE: TIntegerField;
    ZQ_MovHoyID_TIPO_CPB: TIntegerField;
    ZQ_MovHoyID_VENDEDOR: TIntegerField;
    ZQ_MovHoyID_TIPO_IVA: TIntegerField;
    ZQ_MovHoyID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_MovHoyFECHA: TDateTimeField;
    ZQ_MovHoyOBSERVACION: TStringField;
    ZQ_MovHoyIMPORTE_TOTAL: TFloatField;
    ZQ_MovHoyPUNTO_VENTA: TIntegerField;
    ZQ_MovHoyNUMERO_CPB: TIntegerField;
    DBGrid_Dia: TDBGrid;
    ZQ_MovHoy_movimiento: TStringField;
    ZQ_ListadoMedio: TZQuery;
    ZQ_ListadoMedioID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_ListadoMedioDESCRIPCION: TStringField;
    ZQ_ListadoMedioBAJA: TStringField;
    EKListadoMedio: TEKListadoSQL;
    EKListadoCuenta: TEKListadoSQL;
    ZQ_ListadoCuenta: TZQuery;
    ZQ_ListadoCuentaID_CUENTA: TIntegerField;
    ZQ_ListadoCuentaMEDIO_DEFECTO: TIntegerField;
    ZQ_ListadoCuentaCODIGO: TStringField;
    ZQ_ListadoCuentaNOMBRE_CUENTA: TStringField;
    ZQ_ListadoCuentaNRO_CTA_BANCARIA: TStringField;
    ZQ_ListadoCuentaBAJA: TStringField;
    DS_TipoFPago: TDataSource;
    ZQ_TipoFPago: TZQuery;
    ZQ_TipoFPagoID_TIPO_FORMAPAGO: TIntegerField;
    ZQ_TipoFPagoDESCRIPCION: TStringField;
    ZQ_TipoFPagoBAJA: TStringField;
    ZQ_Cuenta: TZQuery;
    ZQ_CuentaID_CUENTA: TIntegerField;
    ZQ_CuentaMEDIO_DEFECTO: TIntegerField;
    ZQ_CuentaCODIGO: TStringField;
    ZQ_CuentaNOMBRE_CUENTA: TStringField;
    ZQ_CuentaNRO_CTA_BANCARIA: TStringField;
    ZQ_CuentaBAJA: TStringField;
    ZQ_CuentaDESCRIPCION: TStringField;
    ZQ_CuentaBUSQUEDA: TStringField;
    DS_Cuenta: TDataSource;
    DS_CpbFormaPago: TDataSource;
    ZQ_CpbFormaPago: TZQuery;
    ZQ_CpbFormaPagoID_COMPROB_FP: TIntegerField;
    ZQ_CpbFormaPagoID_COMPROBANTE: TIntegerField;
    ZQ_CpbFormaPagoID_TIPO_FORMAPAG: TIntegerField;
    ZQ_CpbFormaPagoMDCP_FECHA: TDateField;
    ZQ_CpbFormaPagoMDCP_BANCO: TStringField;
    ZQ_CpbFormaPagoMDCP_CHEQUE: TStringField;
    ZQ_CpbFormaPagoIMPORTE: TFloatField;
    ZQ_CpbFormaPagoCONCILIADO: TDateField;
    ZQ_CpbFormaPagoCUENTA_INGRESO: TIntegerField;
    ZQ_CpbFormaPagoCUENTA_EGRESO: TIntegerField;
    ZQ_CpbFormaPago_CuentaIngreso_Nombre: TStringField;
    ZQ_CpbFormaPago_CuentaIngreso_Codigo: TStringField;
    ZQ_CpbFormaPago_CuentaEgreso_Nombre: TStringField;
    ZQ_CpbFormaPago_CuentaEgreso_Codigo: TStringField;
    ZQ_CpbFormaPago_TipoFormaPago: TStringField;
    EKSuma_FPago: TEKDbSuma;
    Panel1: TPanel;
    Label6: TLabel;
    lblTotalFormaPago: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    PanelManejoCalendario: TPanel;
    SpeedBtn_MesAnterior: TSpeedButton;
    SpeedBtn_DiaAnterior: TSpeedButton;
    SpeedBtn_DiaSiguiente: TSpeedButton;
    SpeedBtn_MesSiguiente: TSpeedButton;
    SpeedBtn_Hoy: TSpeedButton;
    ZQ_CpbFormaPagoFECHA_FP: TDateTimeField;
    ZQ_CpbFormaPagoIMPORTE_REAL: TFloatField;
    ZQ_MovHoyFECHA_ANULADO: TDateField;
    Panel2: TPanel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    ZQ_ComprobanteIMPORTE_VENTA: TFloatField;
    ZQ_ComprobanteIMAGEN: TBlobField;
    DBGridFPago_Ingreso: TDBGrid;
    EKOrdenarGrilla_Dia: TEKOrdenarGrilla;
    EKOrdenarGrillaFPago_Egreso: TEKOrdenarGrilla;
    EKOrdenarGrillaFPago_Ingreso: TEKOrdenarGrilla;
    ZQ_MovHoyINGRESOS: TFloatField;
    ZQ_MovHoyEGRESOS: TFloatField;
    EKSuma_Mov: TEKDbSuma;
    Panel3: TPanel;
    lblMov_TotalEgresos: TLabel;
    lblMov_TotalIngresos: TLabel;
    EKBuscar: TEKBusquedaAvanzada;
    btnExcel: TdxBarLargeButton;
    ZQ_MovHoyNOMBRE: TStringField;
    btn_ImprimirComprobante: TdxBarLargeButton;
    RepComprobante: TQuickRep;
    QRBand1: TQRBand;
    QRDBImage1: TQRDBImage;
    QRLabel4: TQRLabel;
    RepComprobante_Subtitulo: TQRLabel;
    RepComprobante_Titulo: TQRLabel;
    QRBand2: TQRBand;
    QRDBCuentaCod: TQRDBText;
    QRDBCuentaNombre: TQRDBText;
    QRDBImporte: TQRDBText;
    QRDBTipoFP: TQRDBText;
    QRBand4: TQRBand;
    QRlblRepSaldo_SaldoTotal: TQRLabel;
    QRBand5: TQRBand;
    QRBand6: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    EKVistaPreviaRepCpb: TEKVistaPreviaQR;
    ChildBand1: TQRChildBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel12: TQRLabel;
    ChildBand2: TQRChildBand;
    QRLabel14: TQRLabel;
    QRExpr1: TQRExpr;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnAnularClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tituloFecha(fecha: Tdate);
    procedure configFormaPago(tipo: integer);
    //------TECLAS RAPIDAS
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure ZQ_MovHoyAfterScroll(DataSet: TDataSet);
    procedure RadioButtonIngresoClick(Sender: TObject);
    procedure RadioButtonEgresoClick(Sender: TObject);
    procedure DBGridFPago_EgresoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EKSuma_FPagoSumListChanged(Sender: TObject);
    procedure DBGrid_DiaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ZQ_ComprobanteID_TIPO_CPBChange(Sender: TField);
    procedure DBGridFPago_EgresoExit(Sender: TObject);
    procedure SpeedBtn_HoyClick(Sender: TObject);
    procedure SpeedBtn_MesAnteriorClick(Sender: TObject);
    procedure SpeedBtn_DiaAnteriorClick(Sender: TObject);
    procedure SpeedBtn_DiaSiguienteClick(Sender: TObject);
    procedure SpeedBtn_MesSiguienteClick(Sender: TObject);
    procedure EKSuma_MovSumListChanged(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btn_ImprimirComprobanteClick(Sender: TObject);
  private
    id_cuenta_fpago: integer;
    fechaActual: TDate;
    id_comprobante, id_sucursalBusqueda: integer;
    tipoComprobante: integer;
    tipoMovimiento: integer;
    columnaActual: string;
    function getColumnIndex(Grid: TDBGrid; Nombre: string): Integer;
  public
  end;

var
  FMovimientosInternos: TFMovimientosInternos;

const
  transaccion_ABM = 'MOVIMIENTOS INTERNOS';
  TIPO_INGRESO = 0;
  TIPO_EGRESO  = 1;

implementation

uses UDM, UPrincipal, UUtilidades, DateUtils, UEstadisticaMovInternos,
  EKModelo;

{$R *.dfm}

//Devuelve el indice en la grilla de la columna que se pasa como parametro
function TFMovimientosInternos.getColumnIndex(Grid: TDBGrid; Nombre: string): Integer;
var
  i: Integer;
begin
  Result:= -1;
  for i:= 0 to Grid.Columns.Count -1 do
    if Nombre = Grid.Columns[i].FieldName then
    begin
      Result:= i;
      Exit;
    end;
end;


procedure TFMovimientosInternos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  EKOrdenarGrilla_Dia.GuardarConfigColumnas;
  EKOrdenarGrillaFPago_Egreso.GuardarConfigColumnas;
  EKOrdenarGrillaFPago_Ingreso.GuardarConfigColumnas;

  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFMovimientosInternos.btnSalirClick(Sender: TObject);
begin
 Close;
end;


procedure TFMovimientosInternos.tituloFecha(fecha: Tdate);
begin
  lblFechaHoy.Caption:= 'Movimientos del '+ FormatDateTime('dddd dd "de" mmmm "de" yyyy', fecha);
  PanelManejoCalendario.Caption:= UpperCase(FormatDateTime('mmmm yyyy', fecha));
end;



procedure TFMovimientosInternos.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbFormaPago, ZQ_NumeroCpb]) then
  begin
    lblTotalFormaPago.Caption:= '$ 0.00';
    tipoComprobante:= CPB_OTROS_INGRESOS;

    ZQ_Comprobante.Close;
    ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= -1;
    ZQ_Comprobante.open;

    ZQ_CpbFormaPago.Close;
    ZQ_CpbFormaPago.ParamByName('id_comprobante').AsInteger:= -1;
    ZQ_CpbFormaPago.Open;

    ZP_CpbID.Active:=false;
    ZP_CpbID.Active:=true;
    id_comprobante:= ZP_CpbIDID.AsInteger;
    ZP_CpbID.Active:=false;

    ZQ_Comprobante.Append;
    ZQ_ComprobanteID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_ComprobanteID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
    ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_CONFIRMADO;
    ZQ_ComprobanteFECHA.AsDateTime:= dm.EKModelo.FechayHora;
    ZQ_ComprobanteFECHA_COBRADA.Clear;
    ZQ_ComprobanteFECHA_ENVIADA.Clear;
    ZQ_ComprobanteFECHA_IMPRESA.Clear;
    ZQ_ComprobanteFECHA_VENCIMIENTO.Clear;
    ZQ_ComprobanteFECHA_ANULADO.Clear;
    ZQ_ComprobanteID_CLIENTE.Clear;
    ZQ_ComprobanteID_PROVEEDOR.Clear;
    RadioButtonIngresoClick(Sender);

    PanelDia_Movimiento.Enabled:= true;
    PanelDia_Lista.Enabled:= false;

    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
    RadioButtonIngreso.Checked:= true;
    EKDBDateTimePicker1.SetFocus;
  end;
end;


procedure TFMovimientosInternos.btnModificarClick(Sender: TObject);
begin
  if ZQ_MovHoy.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbFormaPago]) then
  begin
    PanelDia_Movimiento.Enabled:= true;
    PanelDia_Lista.Enabled:= false;

    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;

    id_comprobante:= ZQ_MovHoyID_COMPROBANTE.AsInteger;

    EKDBDateTimePicker1.SetFocus;

    ZQ_Comprobante.Edit;
  end;
end;


procedure TFMovimientosInternos.btnAnularClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_MovHoy.IsEmpty) OR (ZQ_Comprobante.IsEmpty) then
    exit;

  if (application.MessageBox(pchar('¿Desea Anular el movimiento seleccionado?'+#13+
                                    '('+FormatDateTime('dd/mm/yyyy', ZQ_ComprobanteFECHA.AsDateTime)+
                                    ' - $ '+ZQ_ComprobanteIMPORTE_TOTAL.AsString+
                                    ')'), 'ABM Cuenta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_CpbFormaPago, ZQ_Comprobante]) then
    begin
      ZQ_Comprobante.Edit;
      ZQ_ComprobanteFECHA_ANULADO.AsDateTime:= ZQ_ComprobanteFECHA.AsDateTime;
      ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_ANULADO;
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);
  end;

  ZQ_MovHoy.Refresh;
end;


procedure TFMovimientosInternos.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if ZQ_ComprobanteID_TIPO_MOVIMIENTO.IsNull then
  begin
    Application.MessageBox('Debe asociar un Tipo de Movimiento, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBLookupComboBox1.SetFocus;
    exit;
  end;

  if ZQ_CpbFormaPago.IsEmpty then
  begin
    Application.MessageBox('Debe cargar una cuenta de ingreso/egreso, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    case ZQ_ComprobanteID_TIPO_CPB.AsInteger of
      CPB_OTROS_INGRESOS: begin //Usa la cuenta de ingreso
                            DBGridFPago_Ingreso.SetFocus;
                          end;
      CPB_OTROS_EGRESOS:  begin //Usu la cuenta de egreso
                            DBGridFPago_Egreso.SetFocus;
                          end;
    end;
    exit;
  end;

  ZQ_CpbFormaPago.First;
  while not ZQ_CpbFormaPago.Eof do
  begin
    if ZQ_CpbFormaPagoID_TIPO_FORMAPAG.IsNull or (ZQ_CpbFormaPagoID_TIPO_FORMAPAG.AsInteger = 0)  then
    begin
      case ZQ_ComprobanteID_TIPO_CPB.AsInteger of
        CPB_OTROS_INGRESOS: begin //Usa la cuenta de ingreso
                              Application.MessageBox(pchar('Debe asociar una Forma de Pago para la cuenta '+ZQ_CpbFormaPago_CuentaIngreso_Nombre.AsString+' , por favor Verifique'),'Validar Datos',MB_OK+MB_ICONINFORMATION);
                              DBGridFPago_Ingreso.SetFocus;
                              exit;
                            end;
        CPB_OTROS_EGRESOS:  begin //Usu la cuenta de egreso
                              Application.MessageBox(pchar('Debe asociar una Forma de Pago para la cuenta '+ZQ_CpbFormaPago_CuentaEgreso_Nombre.AsString+' , por favor Verifique'),'Validar Datos',MB_OK+MB_ICONINFORMATION);
                              DBGridFPago_Egreso.SetFocus;
                              exit;
                            end;
      end;
    end;

    if ZQ_CpbFormaPagoIMPORTE.IsNull or (ZQ_CpbFormaPagoIMPORTE.AsFloat = 0)  then
    begin
      case ZQ_ComprobanteID_TIPO_CPB.AsInteger of
        CPB_OTROS_INGRESOS: begin //Usa la cuenta de ingreso
                              Application.MessageBox(pchar('No se ha cargado el importe de la cuenta '+ZQ_CpbFormaPago_CuentaIngreso_Nombre.AsString+' , por favor Verifique'),'Validar Datos',MB_OK+MB_ICONINFORMATION);
                              DBGridFPago_Ingreso.SetFocus;
                              exit;
                            end;
        CPB_OTROS_EGRESOS:  begin //Usu la cuenta de egreso
                              Application.MessageBox(pchar('No se ha cargado el importe de la cuenta '+ZQ_CpbFormaPago_CuentaEgreso_Nombre.AsString+' , por favor Verifique'),'Validar Datos',MB_OK+MB_ICONINFORMATION);
                              DBGridFPago_Egreso.SetFocus;
                              exit;
                            end;
      end;
    end;

    ZQ_CpbFormaPago.Edit;
    ZQ_CpbFormaPagoIMPORTE_REAL.AsFloat:= ZQ_CpbFormaPagoIMPORTE.AsFloat;
    ZQ_CpbFormaPagoFECHA_FP.AsDateTime:= ZQ_ComprobanteFECHA.AsDateTime;
    ZQ_CpbFormaPagoID_COMPROBANTE.AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;

    ZQ_CpbFormaPago.Next;
  end;

  if ZQ_Comprobante.State = dsInsert then //si estoy dando de alta un comprobante
  begin
    //busco de nuevo cual es el ultimo numero
    ZQ_NumeroCpb.Close;
    ZQ_NumeroCpb.ParamByName('id_tipo').AsInteger:= tipoComprobante;
    ZQ_NumeroCpb.Open;

    ZQ_ComprobantePUNTO_VENTA.AsInteger:= 1;
    ZQ_ComprobanteNUMERO_CPB.AsInteger:= ZQ_NumeroCpbULTIMO_NUMERO.AsInteger + 1;

    ZQ_NumeroCpb.Edit;
    ZQ_NumeroCpbULTIMO_NUMERO.AsInteger:= ZQ_ComprobanteNUMERO_CPB.AsInteger;
  end;

  EKSuma_FPago.RecalcAll;
  EKSuma_FPago.RecalcAll;
  ZQ_ComprobanteBASE_IMPONIBLE.AsFloat:= EKSuma_FPago.SumCollection[0].SumValue;
  ZQ_ComprobanteIMPORTE_TOTAL.AsFloat:= ZQ_ComprobanteBASE_IMPONIBLE.AsFloat;
  ZQ_ComprobanteIMPORTE_VENTA.AsFloat:= ZQ_ComprobanteBASE_IMPONIBLE.AsFloat;

  fechaActual:= ZQ_ComprobanteFECHA.AsDateTime;
  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      PanelDia_Movimiento.Enabled:= false;
      PanelDia_Lista.Enabled:= true;

      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;

      tituloFecha(fechaActual);
      ZQ_MovHoy.Close;
      ZQ_MovHoy.ParamByName('fecha').AsDateTime:= fechaActual;
      ZQ_MovHoy.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
      ZQ_MovHoy.Open;
      ZQ_MovHoy.Refresh;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;
end;


procedure TFMovimientosInternos.btnCancelarClick(Sender: TObject);
begin
  if (application.MessageBox(pchar('¿Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION - Movimientos Internos', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO) then
    exit;

 if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    PanelDia_Movimiento.Enabled:= false;
    PanelDia_Lista.Enabled:= true;

    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;

    ZQ_MovHoy.Refresh;
  end;
end;


procedure TFMovimientosInternos.btnBuscarClick(Sender: TObject);
begin
  if  EKBuscar.BuscarSinEjecutar then
    if (EKBuscar.ParametrosSeleccionados1[1] = '') then
    begin
      Application.MessageBox('No se ha cargado la fecha', 'Verifique', MB_OK + MB_ICONINFORMATION);
      btnBuscar.Click;
    end
    else
    begin
      fechaActual:= StrToDate(EKBuscar.ParametrosSeleccionados1[1]);
      tituloFecha(fechaActual);
      ZQ_MovHoy.Close;
      ZQ_MovHoy.ParamByName('fecha').AsDateTime:= fechaActual;
      if EKBuscar.ParametrosSeleccionados1[0] = '0' then
        ZQ_MovHoy.ParamByName('id_sucursal').AsInteger:= -1
      else
        ZQ_MovHoy.ParamByName('id_sucursal').AsInteger:= StrToInt(EKBuscar.ParametrosSeleccionados1[0]);
      id_sucursalBusqueda:= ZQ_MovHoy.ParamByName('id_sucursal').AsInteger;
      ZQ_MovHoy.Open;
      ZQ_MovHoy.Refresh;
    end;
end;


procedure TFMovimientosInternos.FormCreate(Sender: TObject);
var
  indice_suc: integer;
begin
  EKOrdenarGrilla_Dia.CargarConfigColumnas;
  EKOrdenarGrillaFPago_Egreso.CargarConfigColumnas;
  EKOrdenarGrillaFPago_Ingreso.CargarConfigColumnas;


  TEKCriterioBA(EKBuscar.CriteriosBusqueda.Items[0]).TipoComboSQL:= dm.ZQ_SucursalesVisibles;

  if dm.ZQ_SucursalesVisibles.Locate('id_sucursal', VarArrayOf([SUCURSAL_LOGUEO]), []) then
    indice_suc:= dm.ZQ_SucursalesVisibles.RecNo - 1
  else
    indice_suc:= 0;

  TEKCriterioBA(EKBuscar.CriteriosBusqueda.Items[0]).ItemIndex:= indice_suc;
  TEKCriterioBA(EKBuscar.CriteriosBusqueda.Items[1]).Valor := DateToStr(dm.EKModelo.FechayHora);

  configFormaPago(CPB_OTROS_INGRESOS);
  RadioButtonIngreso.Checked:= true;
  RadioButtonEgreso.Checked:= false;

  fechaActual:= dm.EKModelo.Fecha;

  PanelDia_Movimiento.Enabled:= false;
  PanelDia_Lista.Enabled:= true;

  dm.EKModelo.abrir(ZQ_TipoMovimiento);
  EKDBDateTimePicker1.DateTime:= dm.EKModelo.FechayHora;

  fechaActual:= dm.EKModelo.FechayHora;
  tituloFecha(fechaActual);
  ZQ_MovHoy.Close;
  ZQ_MovHoy.ParamByName('fecha').AsDateTime:= fechaActual;
  ZQ_MovHoy.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;  
  ZQ_MovHoy.Open;
  id_sucursalBusqueda:= SUCURSAL_LOGUEO;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFMovimientosInternos.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFMovimientosInternos.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFMovimientosInternos.ABajaExecute(Sender: TObject);
begin
  if btnAnular.Enabled then
    btnAnular.Click;
end;

procedure TFMovimientosInternos.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFMovimientosInternos.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;

procedure TFMovimientosInternos.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFMovimientosInternos.ZQ_MovHoyAfterScroll(DataSet: TDataSet);
begin
  ZQ_CpbFormaPago.Close;
  ZQ_Comprobante.Close;

  if ZQ_MovHoy.IsEmpty then
    exit;

  ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= ZQ_MovHoyID_COMPROBANTE.AsInteger;
  ZQ_Comprobante.open;

  configFormaPago(ZQ_ComprobanteID_TIPO_CPB.AsInteger);
  ZQ_CpbFormaPago.ParamByName('id_comprobante').AsInteger:= ZQ_ComprobanteID_COMPROBANTE.AsInteger;
  ZQ_CpbFormaPago.Open;

  EKSuma_FPago.RecalcAll;
  lblTotalFormaPago.Caption:= FormatFloat('$ ###,###,###,##0.00', EKSuma_FPago.SumCollection[0].SumValue);

  case ZQ_ComprobanteID_TIPO_CPB.AsInteger of
    CPB_OTROS_INGRESOS: begin //Usa la cuenta de ingreso
                          RadioButtonIngreso.Checked:= true;
                          RadioButtonEgreso.Checked:= false;
                        end;
    CPB_OTROS_EGRESOS:  begin //Usu la cuenta de egreso
                          RadioButtonEgreso.Checked:= true;
                          RadioButtonIngreso.Checked:= false;
                        end;
  end;
end;


procedure TFMovimientosInternos.configFormaPago(tipo: integer);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
    ZQ_ComprobanteID_TIPO_CPB.AsInteger:= tipo;

  case tipo of
    CPB_OTROS_INGRESOS: begin //Usa la cuenta de ingreso
                          DBGridFPago_Ingreso.Visible:= true;
                          DBGridFPago_Ingreso.BringToFront;

                          DBGridFPago_Egreso.Visible:= false;
                          DBGridFPago_Egreso.SendToBack;
                        end;
    CPB_OTROS_EGRESOS:  begin //Usu la cuenta de egreso
                          DBGridFPago_Ingreso.Visible:= false;
                          DBGridFPago_Ingreso.SendToBack;

                          DBGridFPago_Egreso.Visible:= true;
                          DBGridFPago_Egreso.BringToFront;
                        end;
  end;
end;


procedure TFMovimientosInternos.RadioButtonIngresoClick(Sender: TObject);
begin
  tipoComprobante:= CPB_OTROS_INGRESOS;
  configFormaPago(tipoComprobante);
end;


procedure TFMovimientosInternos.RadioButtonEgresoClick(Sender: TObject);
begin
  tipoComprobante:= CPB_OTROS_EGRESOS;
  configFormaPago(tipoComprobante);
end;


procedure TFMovimientosInternos.DBGridFPago_EgresoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
  begin
    if key = 112 then
    begin
      //CUENTA DE INGRESO
      if (((sender as tdbgrid).SelectedField.FullName = '_CuentaIngreso_Codigo') or
          ((sender as tdbgrid).SelectedField.FullName = '_CuentaIngreso_Nombre')) then
      begin
        EKListadoCuenta.SQL.Text:=dm.sql_cuentas_fpago_suc(2, true);
        if EKListadoCuenta.Buscar then
        begin
          if EKListadoCuenta.Resultado <> '' then
          begin
            id_cuenta_fpago:= StrToInt(EKListadoCuenta.Resultado);
            ZQ_ListadoCuenta.Close;
            ZQ_ListadoCuenta.ParamByName('id_cuenta').AsInteger:= id_cuenta_fpago;
            ZQ_ListadoCuenta.Open;

            if ZQ_CpbFormaPagoID_COMPROBANTE.IsNull then
              ZQ_CpbFormaPago.Append //pongo en modo edicion
            else
              ZQ_CpbFormaPago.edit; //pongo en modo edicion

            ZQ_CpbFormaPagoCUENTA_INGRESO.AsInteger:= ZQ_ListadoCuentaID_CUENTA.AsInteger;
            ZQ_CpbFormaPagoID_TIPO_FORMAPAG.AsInteger:= ZQ_ListadoCuentaMEDIO_DEFECTO.AsInteger;
            ZQ_CpbFormaPagoID_COMPROBANTE.AsInteger:= id_Comprobante;
          end;
        end;
      end;

      //CUENTA DE EGRESO
      if (((sender as tdbgrid).SelectedField.FullName = '_CuentaEgreso_Codigo') or
          ((sender as tdbgrid).SelectedField.FullName = '_CuentaEgreso_Nombre')) then
      begin
        EKListadoCuenta.SQL.Text:=dm.sql_cuentas_fpago_suc(2, true);
        if EKListadoCuenta.Buscar then
        begin
          if EKListadoCuenta.Resultado <> '' then
          begin
            id_cuenta_fpago:= StrToInt(EKListadoCuenta.Resultado);
            ZQ_ListadoCuenta.Close;
            ZQ_ListadoCuenta.ParamByName('id_cuenta').AsInteger:= id_cuenta_fpago;
            ZQ_ListadoCuenta.Open;

            if ZQ_CpbFormaPagoID_COMPROBANTE.IsNull then
              ZQ_CpbFormaPago.Append //pongo en modo edicion
            else
              ZQ_CpbFormaPago.edit; //pongo en modo edicion

            ZQ_CpbFormaPagoCUENTA_EGRESO.AsInteger:= ZQ_ListadoCuentaID_CUENTA.AsInteger;
            ZQ_CpbFormaPagoID_TIPO_FORMAPAG.AsInteger:= ZQ_ListadoCuentaMEDIO_DEFECTO.AsInteger;
            ZQ_CpbFormaPagoID_COMPROBANTE.AsInteger:= id_Comprobante;
          end;
        end;
      end;

      //MEDIO
      if ((sender as tdbgrid).SelectedField.FullName = '_TipoFormaPago') then
      begin
        //si no hay ninguna cuenta cargada salgo
        if ZQ_CpbFormaPagoCUENTA_EGRESO.IsNull and ZQ_CpbFormaPagoCUENTA_INGRESO.IsNull then
          exit;

        EKListadoMedio.SQL.Clear;
        EKListadoMedio.SQL.Add(Format('select tipo.* '+
                                      'from tipo_formapago tipo '+
                                      'left join cuenta_tipo_formapago ctfp on (tipo.id_tipo_formapago = ctfp.id_tipo_formapago) '+
                                      'where tipo.baja = %s ' +
                                      '  and ctfp.id_cuenta = %d ' +
                                      'order by tipo.descripcion',
                                      [QuotedStr('N'), id_cuenta_fpago]));

        if EKListadoMedio.Buscar then
        begin
          if EKListadoMedio.Resultado <> '' then
          begin
            ZQ_ListadoMedio.Close;
            ZQ_ListadoMedio.ParamByName('id_tipo').AsInteger:= StrToInt(EKListadoMedio.Resultado);
            ZQ_ListadoMedio.Open;

            if ZQ_CpbFormaPagoID_COMPROBANTE.IsNull then
              ZQ_CpbFormaPago.Append //pongo en modo edicion
            else
              ZQ_CpbFormaPago.edit; //pongo en modo edicion

            ZQ_CpbFormaPagoID_TIPO_FORMAPAG.AsInteger:= ZQ_ListadoMedioID_TIPO_FORMAPAGO.AsInteger;
            ZQ_CpbFormaPagoID_COMPROBANTE.AsInteger:= id_Comprobante;
          end;
        end;
      end;
    end;
  end;
end;


procedure TFMovimientosInternos.EKSuma_FPagoSumListChanged(Sender: TObject);
begin
  if EKSuma_FPago.SumCollection[0].SumValue <> 0 then
    lblTotalFormaPago.Caption:= FormatFloat('$ ###,###,###,##0.00', EKSuma_FPago.SumCollection[0].SumValue);
end;


procedure TFMovimientosInternos.DBGrid_DiaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;  State: TGridDrawState);
begin
  DBGrid_Dia.Canvas.Font.Color := clBlack;

  if ZQ_MovHoyFECHA_ANULADO.IsNull then //si los mov no estan anulados
    if (ZQ_MovHoyID_TIPO_CPB.AsInteger = CPB_OTROS_EGRESOS) then
    begin
      DBGrid_Dia.Canvas.Brush.Color:= $00B0B0FF;
      if (gdFocused in State) or (gdSelected in State) then
      begin
        DBGrid_Dia.Canvas.Brush.Color:= $008080FF;
        DBGrid_Dia.Canvas.Font.Style := DBGrid_Dia.Canvas.Font.Style + [fsBold];
      end
    end
    else
    begin
      DBGrid_Dia.Canvas.Brush.Color:= $00D1FFA4;
      if (gdFocused in State) or (gdSelected in State) then
      begin
        DBGrid_Dia.Canvas.Brush.Color:= $0080FF00;
        DBGrid_Dia.Canvas.Font.Style := DBGrid_Dia.Canvas.Font.Style + [fsBold];
      end
    end
  else //si estan anulados
  begin
    DBGrid_Dia.Canvas.Brush.Color:= $00FFBC79;
    if (gdFocused in State) or (gdSelected in State) then
    begin
      DBGrid_Dia.Canvas.Brush.Color:= $00FFA042;
      DBGrid_Dia.Canvas.Font.Style := DBGrid_Dia.Canvas.Font.Style + [fsBold];
    end
  end;


  DBGrid_Dia.DefaultDrawColumnCell(rect,datacol,column,state);
end;


procedure TFMovimientosInternos.ZQ_ComprobanteID_TIPO_CPBChange(Sender: TField);
begin
  if ZQ_CpbFormaPago.IsEmpty or (not dm.EKModelo.verificar_transaccion(transaccion_ABM))then
    exit;

  ZQ_CpbFormaPago.First;
  while not ZQ_CpbFormaPago.Eof do
  begin
    ZQ_CpbFormaPago.Edit;

    if tipoComprobante = CPB_OTROS_EGRESOS then //si es un egreso
    begin
      ZQ_CpbFormaPagoCUENTA_EGRESO.AsInteger:= ZQ_CpbFormaPagoCUENTA_INGRESO.AsInteger;
      ZQ_CpbFormaPagoCUENTA_INGRESO.Clear;
    end;

    if tipoComprobante = CPB_OTROS_INGRESOS then //si es un egreso
    begin
      ZQ_CpbFormaPagoCUENTA_INGRESO.AsInteger:= ZQ_CpbFormaPagoCUENTA_EGRESO.AsInteger;
      ZQ_CpbFormaPagoCUENTA_EGRESO.Clear;
    end;

    ZQ_CpbFormaPago.Post;
    ZQ_CpbFormaPago.Next;
  end;
end;


procedure TFMovimientosInternos.DBGridFPago_EgresoExit(Sender: TObject);
begin
//  if ((sender as tdbgrid).SelectedField.FullName = 'IMPORTE') then
//  begin
//    KeyPress((char)Keys.Enter);
//  end;
end;


//--------------------------------------------
//     BOTONES PARA EL CALENDARIO
//--------------------------------------------
procedure TFMovimientosInternos.SpeedBtn_HoyClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
    exit;

  fechaActual:= dm.EKModelo.Fecha;
  tituloFecha(fechaActual);
  ZQ_MovHoy.Close;
  ZQ_MovHoy.ParamByName('fecha').AsDateTime:= fechaActual;
  ZQ_MovHoy.ParamByName('id_sucursal').AsInteger:= id_sucursalBusqueda;
  ZQ_MovHoy.Open;
  ZQ_MovHoy.Refresh;
end;


procedure TFMovimientosInternos.SpeedBtn_MesAnteriorClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
    exit;

  fechaActual:= IncMonth(fechaActual, -1);
  tituloFecha(fechaActual);
  ZQ_MovHoy.Close;
  ZQ_MovHoy.ParamByName('fecha').AsDateTime:= fechaActual;
  ZQ_MovHoy.ParamByName('id_sucursal').AsInteger:= id_sucursalBusqueda;
  ZQ_MovHoy.Open;
  ZQ_MovHoy.Refresh;
end;


procedure TFMovimientosInternos.SpeedBtn_MesSiguienteClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
    exit;

  fechaActual:= IncMonth(fechaActual, 1);
  tituloFecha(fechaActual);
  ZQ_MovHoy.Close;
  ZQ_MovHoy.ParamByName('fecha').AsDateTime:= fechaActual;
  ZQ_MovHoy.ParamByName('id_sucursal').AsInteger:= id_sucursalBusqueda;
  ZQ_MovHoy.Open;
  ZQ_MovHoy.Refresh;
end;


procedure TFMovimientosInternos.SpeedBtn_DiaAnteriorClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
    exit;

  fechaActual:= IncDay(fechaActual, -1);
  tituloFecha(fechaActual);
  ZQ_MovHoy.Close;
  ZQ_MovHoy.ParamByName('fecha').AsDateTime:= fechaActual;
  ZQ_MovHoy.ParamByName('id_sucursal').AsInteger:= id_sucursalBusqueda;
  ZQ_MovHoy.Open;
  ZQ_MovHoy.Refresh;
end;


procedure TFMovimientosInternos.SpeedBtn_DiaSiguienteClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABM) then
    exit;

  fechaActual:= IncDay(fechaActual, 1);
  tituloFecha(fechaActual);
  ZQ_MovHoy.Close;
  ZQ_MovHoy.ParamByName('fecha').AsDateTime:= fechaActual;
  ZQ_MovHoy.ParamByName('id_sucursal').AsInteger:= id_sucursalBusqueda;
  ZQ_MovHoy.Open;
  ZQ_MovHoy.Refresh;
end;

                              
procedure TFMovimientosInternos.EKSuma_MovSumListChanged(Sender: TObject);
begin
  lblMov_TotalIngresos.Caption:= 'Total Ingresos: '+FormatFloat('$ ###,###,###,##0.00', EKSuma_Mov.SumCollection[0].SumValue);
  lblMov_TotalEgresos.Caption:= 'Total Egresos: '+FormatFloat('$ ###,###,###,##0.00', EKSuma_Mov.SumCollection[1].SumValue);
end;

procedure TFMovimientosInternos.btnExcelClick(Sender: TObject);
begin
  if not ZQ_MovHoy.IsEmpty then
    dm.ExportarEXCEL(DBGrid_Dia);
end;

procedure TFMovimientosInternos.btn_ImprimirComprobanteClick(
  Sender: TObject);
begin
  if (ZQ_MovHoyID_TIPO_CPB.AsInteger = CPB_OTROS_EGRESOS) then
  begin
    QRDBCuentaCod.DataField := '_CuentaEgreso_Codigo';
    QRDBCuentaNombre.DataField := '_CuentaEgreso_Nombre';
  end
  else
  Begin
    QRDBCuentaCod.DataField := '_CuentaIngreso_Codigo';
    QRDBCuentaNombre.DataField := '_CuentaIngreso_Nombre';
  end;

DM.VariablesReportes(RepComprobante);
EKVistaPreviaRepCpb.VistaPrevia;
end;

end.


