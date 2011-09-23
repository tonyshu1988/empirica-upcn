unit UABM_CPB_Transferencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  ZStoredProcedure, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  QRCtrls, QuickRpt, EKVistaPreviaQR, EKOrdenarGrilla, EKListadoSQL,
  ComCtrls, EKDBDateTimePicker;

type
  TFABM_CPB_Transferencia = class(TForm)
    PanelFondo: TPanel;
    PanelGrilla: TPanel;
    DBGridTransferencia: TDBGrid;
    PanelEdicion: TPanel;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
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
    ABaja: TAction;
    AConfirmar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    EKBuscar: TEKBusquedaAvanzada;
    EKVistaPrevia: TEKVistaPreviaQR;
    RepTransf: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepTransf_Subtitulo: TQRLabel;
    RepTransf_Titulo: TQRLabel;
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
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupCBoxEgreso: TDBLookupComboBox;
    DBMemoDescripcion: TDBMemo;
    DBLookupCBoxIngreso: TDBLookupComboBox;
    DBEditImporte: TDBEdit;
    DBEditNroComprobante: TDBEdit;
    EditCodCtaEgreso: TEdit;
    EditCodCtaIngreso: TEdit;
    ZQ_Comprobante: TZQuery;
    ZQ_ComprobanteID_COMPROBANTE: TIntegerField;
    ZQ_ComprobanteID_SUCURSAL: TIntegerField;
    ZQ_ComprobanteID_PROVEEDOR: TIntegerField;
    ZQ_ComprobanteID_CLIENTE: TIntegerField;
    ZQ_ComprobanteID_TIPO_CPB: TIntegerField;
    ZQ_ComprobanteID_VENDEDOR: TIntegerField;
    ZQ_ComprobanteID_COMP_ESTADO: TIntegerField;
    ZQ_ComprobanteID_TIPO_IVA: TIntegerField;
    ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField;
    ZQ_ComprobanteCODIGO: TStringField;
    ZQ_ComprobanteFECHA: TDateTimeField;
    ZQ_ComprobanteOBSERVACION: TStringField;
    ZQ_ComprobanteBASE_IMPONIBLE: TFloatField;
    ZQ_ComprobanteSALDO: TFloatField;
    ZQ_ComprobantePORC_IVA: TFloatField;
    ZQ_ComprobanteIMPORTE_IVA: TFloatField;
    ZQ_ComprobantePORC_DESCUENTO: TFloatField;
    ZQ_ComprobanteIMPORTE_DESCUENTO: TFloatField;
    ZQ_ComprobanteIMPORTE_TOTAL: TFloatField;
    ZQ_ComprobanteIMPORTE_VENTA: TFloatField;
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
    ZQ_CpbFormaPagoFECHA_FP: TDateTimeField;
    ZQ_CpbFormaPagoIMPORTE_REAL: TFloatField;
    DS_CpbFormaPago: TDataSource;
    EKListadoCuenta: TEKListadoSQL;
    ZQ_ListadoCuenta: TZQuery;
    ZQ_ListadoCuentaID_CUENTA: TIntegerField;
    ZQ_ListadoCuentaMEDIO_DEFECTO: TIntegerField;
    ZQ_ListadoCuentaCODIGO: TStringField;
    ZQ_ListadoCuentaNOMBRE_CUENTA: TStringField;
    ZQ_ListadoCuentaNRO_CTA_BANCARIA: TStringField;
    ZQ_ListadoCuentaBAJA: TStringField;
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
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    ZP_CpbID: TZStoredProc;
    ZP_CpbIDID: TIntegerField;
    ZQ_NumeroCpb: TZQuery;
    ZQ_NumeroCpbULTIMO_NUMERO: TIntegerField;
    ZQ_NumeroCpbID_TIPO_CPB: TIntegerField;
    ZQ_NumeroCpbNOMBRE_TIPO_CPB: TStringField;
    ZQ_NumeroCpbSIGNO_COBRO_PAGO: TIntegerField;
    ZQ_NumeroCpbSIGNO_STOCK: TIntegerField;
    ZQ_NumeroCpbSIGNO_CTA_CTE: TIntegerField;
    ZQ_NumeroCpbBAJA: TStringField;
    ZQ_VerCpb_Fpago: TZQuery;
    DS_VerCpb_Fpago: TDataSource;
    EKDBDateTimePicker1: TEKDBDateTimePicker;
    StaticTxtBaja: TStaticText;
    StaticTxtConfirmado: TStaticText;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    ZQ_VerCpb_FpagoFECHA: TDateField;
    ZQ_VerCpb_FpagoNUMERO_CPB: TIntegerField;
    ZQ_VerCpb_FpagoMDCP_CHEQUE: TStringField;
    ZQ_VerCpb_FpagoCTA_EGRESO_CODIGO: TStringField;
    ZQ_VerCpb_FpagoCTA_EGRESO: TStringField;
    ZQ_VerCpb_FpagoCTA_INGRESO_CODIGO: TStringField;
    ZQ_VerCpb_FpagoCTA_INGRESO: TStringField;
    ZQ_VerCpb_FpagoIMPORTE_TOTAL: TFloatField;
    ZQ_VerCpb_FpagoOBSERVACION: TStringField;
    ZQ_VerCpb_FpagoID_COMP_ESTADO: TIntegerField;
    ZQ_VerCpb_FpagoID_COMPROBANTE: TIntegerField;
    btnConfirmar: TdxBarLargeButton;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    ZQ_VerCpb_FpagoFECHA_ANULADO: TDateField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridTransferenciaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    //------TECLAS RAPIDAS
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure DBLookupCBoxEgresoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupCBoxIngresoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodCtaEgresoExit(Sender: TObject);
    procedure EditCodCtaIngresoExit(Sender: TObject);
    function ValidarCampos():boolean;
    procedure AConfirmarExecute(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
  public
    id_comprobante: Integer;
    tipoComprobante: Integer;
  end;

var
  FABM_CPB_Transferencia: TFABM_CPB_Transferencia;

const
  transaccion_ABM = 'ABM TRANSFERENCIA';

implementation

uses UDM, UPrincipal, UUtilidades;

{$R *.dfm}
function TFABM_CPB_Transferencia.ValidarCampos():boolean;
begin
  result:= true;

  if ZQ_ComprobanteFECHA.IsNull then
   begin
     Application.MessageBox('El campo "Fecha" se encuentra Vacio, verifique','Validar',MB_OK+MB_ICONINFORMATION);
     EKDBDateTimePicker1.SetFocus;
     result := false;
     Exit;
   end;

  if ZQ_CpbFormaPagoCUENTA_EGRESO.IsNull then
   begin
     Application.MessageBox('El campo "Cuenta Egreso" se encuentra Vacio, verifique','Validar',MB_OK+MB_ICONINFORMATION);
     DBLookupCBoxEgreso.SetFocus;
     DBLookupCBoxEgreso.perform(WM_LBUTTONDOWN,1,0);
     result := false;
     Exit;
   end;

  if ZQ_CpbFormaPagoCUENTA_INGRESO.IsNull then
   begin
     Application.MessageBox('El campo "Cuenta Ingreso" se encuentra Vacio, verifique','Validar',MB_OK+MB_ICONINFORMATION);
     DBLookupCBoxIngreso.SetFocus;
     DBLookupCBoxIngreso.perform(WM_LBUTTONDOWN,1,0);
     result := false;
     Exit;
   end;

  if ZQ_CpbFormaPagoCUENTA_INGRESO.AsInteger =  ZQ_CpbFormaPagoCUENTA_EGRESO.AsInteger then
   begin
     Application.MessageBox('La "Cuenta Egreso" es la misma que la "Cuenta Ingreso", verifique','Validar',MB_OK+MB_ICONINFORMATION);
     DBLookupCBoxEgreso.SetFocus;
     result := false;
     Exit;
   end;

  if ZQ_ComprobanteIMPORTE_TOTAL.IsNull then
   begin
     Application.MessageBox('El campo "Importe" se encuentra Vacio, verifique','Validar',MB_OK+MB_ICONINFORMATION);
     DBEditImporte.SetFocus;
     result := false;
     Exit;
   end;

  if (ZQ_ComprobanteIMPORTE_TOTAL.AsFloat <= 0) then
   begin
     Application.MessageBox('El campo "Importe" posee un valor menor o igual a cero, verifique','Validar',MB_OK+MB_ICONINFORMATION);
     DBEditImporte.SetFocus;
     result := false;
     Exit;
   end;
end;


procedure TFABM_CPB_Transferencia.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  tipoComprobante:= CPB_TRANSFERENCIA;

  EKOrdenarGrilla1.CargarConfigColumnas;

  dm.EKModelo.abrir(ZQ_Cuenta);

//  EKBuscar.Abrir;
  ZQ_VerCpb_Fpago.Open;
  dm.mostrarCantidadRegistro(ZQ_VerCpb_Fpago, lblCantidadRegistros);
end;


procedure TFABM_CPB_Transferencia.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
  EKOrdenarGrilla1.GuardarConfigColumnas;
end;


procedure TFABM_CPB_Transferencia.btnSalirClick(Sender: TObject);
begin
 Close;
end;


procedure TFABM_CPB_Transferencia.btnBuscarClick(Sender: TObject);
begin
//  if EKBuscar.Buscar then
//    dm.mostrarCantidadRegistro(ZQ_Cuentas, lblCantidadRegistros);
end;


procedure TFABM_CPB_Transferencia.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbFormaPago, ZQ_NumeroCpb]) then
  begin
    DBGridTransferencia.Enabled := false;
    PanelEdicion.Visible:= true;

    ZP_CpbID.Active:= false;
    ZP_CpbID.Active:= true;
    id_comprobante:= ZP_CpbIDID.AsInteger;
    ZP_CpbID.Active:= false;

    ZQ_NumeroCpb.Close;
    ZQ_NumeroCpb.ParamByName('id_tipo').AsInteger:= tipoComprobante;
    ZQ_NumeroCpb.Open;

    ZQ_Comprobante.Append;
    ZQ_ComprobanteID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_ComprobanteID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
    ZQ_ComprobanteID_TIPO_CPB.AsInteger:= tipoComprobante;
    ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_SIN_CONFIRMAR;
    ZQ_ComprobantePUNTO_VENTA.AsInteger:= 1;
    ZQ_ComprobanteNUMERO_CPB.AsInteger:= ZQ_NumeroCpbULTIMO_NUMERO.AsInteger + 1;
    ZQ_ComprobanteFECHA.AsDateTime:= dm.EKModelo.FechayHora;

    ZQ_CpbFormaPago.Append;
    ZQ_CpbFormaPagoID_COMPROBANTE.AsInteger:= id_comprobante;
    ZQ_CpbFormaPagoID_TIPO_FORMAPAG.AsInteger:= FP_TRANSFERENCIA;
    ZQ_CpbFormaPagoFECHA_FP.AsDateTime:= ZQ_ComprobanteFECHA.AsDateTime; //y le pongo la fecha de fp igual a la del comprobante

    EKDBDateTimePicker1.SetFocus;

    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_CPB_Transferencia.btnModificarClick(Sender: TObject);
var
  estado: integer;
begin
  estado:= ZQ_VerCpb_FpagoID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb_Fpago.IsEmpty) or
     ((estado = ESTADO_CONFIRMADO) or (estado = ESTADO_ANULADO))) then
    exit;

  id_comprobante:= ZQ_VerCpb_FpagoID_COMPROBANTE.AsInteger;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante, ZQ_CpbFormaPago]) then
  begin
    DBGridTransferencia.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Comprobante.Close;
    ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_Comprobante.Open;

    ZQ_CpbFormaPago.Close;
    ZQ_CpbFormaPago.ParamByName('id_comprobante').AsInteger:= id_comprobante;
    ZQ_CpbFormaPago.Open;

    ZQ_Comprobante.Edit;
    ZQ_CpbFormaPago.Edit;

    EKDBDateTimePicker1.SetFocus;

    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_CPB_Transferencia.btnBajaClick(Sender: TObject);
var
  recno, estado: Integer;
begin
  estado:= ZQ_VerCpb_FpagoID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb_Fpago.IsEmpty) or (estado = ESTADO_ANULADO)) then
    exit;

  id_comprobante:= ZQ_VerCpb_FpagoID_COMPROBANTE.AsInteger;

  if (application.MessageBox(pchar('¿Desea anular la Transferencia seleccionada?'), 'ABM Transferencia', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante]) then
    begin
      ZQ_Comprobante.Close;
      ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
      ZQ_Comprobante.Open;

      ZQ_Comprobante.Edit;
      ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_ANULADO;
      ZQ_ComprobanteFECHA_ANULADO.AsDateTime:= dm.EKModelo.FechayHora;

      try
        if not DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
          dm.EKModelo.cancelar_transaccion(transaccion_ABM)
      except
        begin
          Application.MessageBox('No se pudo anular la Transferencia.', 'Atención',MB_OK+MB_ICONINFORMATION);
          exit;
        end
      end;
    end;

  recNo:= ZQ_VerCpb_Fpago.RecNo;
  ZQ_VerCpb_Fpago.Refresh;
  ZQ_VerCpb_Fpago.RecNo:= recNo;
  dm.mostrarCantidadRegistro(ZQ_VerCpb_Fpago, lblCantidadRegistros);
end;


procedure TFABM_CPB_Transferencia.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if not ValidarCampos then
    exit;

  if ZQ_Comprobante.State = dsInsert then //si estoy dando de alta un comprobante
  begin
    //busco de nuevo cual es el ultimo numero
    ZQ_NumeroCpb.Close;
    ZQ_NumeroCpb.ParamByName('id_tipo').AsInteger:= tipoComprobante;
    ZQ_NumeroCpb.Open;

    //si el ultimo numero es distinto al que cargue al principio lo actualizo
    if ZQ_ComprobanteNUMERO_CPB.AsInteger <> (ZQ_NumeroCpbULTIMO_NUMERO.AsInteger + 1) then
    begin
      ZQ_ComprobanteNUMERO_CPB.AsInteger:= ZQ_NumeroCpbULTIMO_NUMERO.AsInteger + 1;
    end;

    ZQ_NumeroCpb.Edit;
    ZQ_NumeroCpbULTIMO_NUMERO.AsInteger:= ZQ_ComprobanteNUMERO_CPB.AsInteger;
  end;

  ZQ_ComprobanteIMPORTE_VENTA.AsFloat:= ZQ_ComprobanteIMPORTE_TOTAL.AsFloat;

  ZQ_CpbFormaPago.Edit;
  ZQ_CpbFormaPagoIMPORTE.AsFloat:= ZQ_ComprobanteIMPORTE_TOTAL.AsFloat; //pongo el mismo importe cargado al importe_real
  ZQ_CpbFormaPagoIMPORTE_REAL.AsFloat:= ZQ_CpbFormaPagoIMPORTE.AsFloat; //pongo el mismo importe cargado al importe_real
  ZQ_CpbFormaPagoFECHA_FP.AsDateTime:= ZQ_ComprobanteFECHA.AsDateTime; //y le pongo la fecha de fp igual a la del comprobante

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      PanelEdicion.Visible:= false;
      DBGridTransferencia.Enabled:= true;
      DBGridTransferencia.SetFocus;

      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;

      ZQ_VerCpb_Fpago.Refresh;
      ZQ_VerCpb_Fpago.Locate('ID_COMPROBANTE', id_comprobante,[]);
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_VerCpb_Fpago, lblCantidadRegistros);
end;


procedure TFABM_CPB_Transferencia.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    PanelEdicion.Visible := false;
    DBGridTransferencia.Enabled:=true;
    DBGridTransferencia.SetFocus;

    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;
end;


procedure TFABM_CPB_Transferencia.btnImprimirClick(Sender: TObject);
begin
  if ZQ_VerCpb_Fpago.IsEmpty then
    exit;

  DM.VariablesReportes(RepTransf);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
  EKVistaPrevia.VistaPrevia;
end;


procedure TFABM_CPB_Transferencia.DBGridTransferenciaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGridTransferencia.Canvas.Font.Color := clBlack;

  if (ZQ_VerCpb_FpagoID_COMP_ESTADO.AsInteger = ESTADO_CONFIRMADO) then
  begin
    DBGridTransferencia.Canvas.Brush.Color:= StaticTxtConfirmado.Color;
    if (gdFocused in State) or (gdSelected in State) then
      DBGridTransferencia.Canvas.Font.Style := DBGridTransferencia.Canvas.Font.Style + [fsBold];
  end;

  if (ZQ_VerCpb_FpagoID_COMP_ESTADO.AsInteger = ESTADO_ANULADO) then
  begin
    DBGridTransferencia.Canvas.Brush.Color:= StaticTxtBaja.Color;
    if (gdFocused in State) or (gdSelected in State) then
      DBGridTransferencia.Canvas.Font.Style := DBGridTransferencia.Canvas.Font.Style + [fsBold];
  end;  

  DBGridTransferencia.DefaultDrawColumnCell(rect,datacol,column,state);

  FPrincipal.PintarFilasGrillas(DBGridTransferencia, Rect, DataCol, Column, State);
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_CPB_Transferencia.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_CPB_Transferencia.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_CPB_Transferencia.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_CPB_Transferencia.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_CPB_Transferencia.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;

procedure TFABM_CPB_Transferencia.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_CPB_Transferencia.AConfirmarExecute(Sender: TObject);
begin
  if btnConfirmar.Enabled then
    btnConfirmar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFABM_CPB_Transferencia.DBLookupCBoxEgresoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
    if EKListadoCuenta.Buscar then
    begin
      ZQ_CpbFormaPago.Edit;
      ZQ_CpbFormaPagoCUENTA_EGRESO.AsInteger := StrToInt(EKListadoCuenta.Resultado);
      EditCodCtaEgreso.Text:= ZQ_CuentaCODIGO.AsString;
      DBLookupCBoxEgreso.setfocus;
    end;
end;


procedure TFABM_CPB_Transferencia.DBLookupCBoxIngresoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
    if EKListadoCuenta.Buscar then
    begin
      ZQ_CpbFormaPago.Edit;
      ZQ_CpbFormaPagoCUENTA_INGRESO.AsInteger := StrToInt(EKListadoCuenta.Resultado);
      EditCodCtaIngreso.Text:= ZQ_CuentaCODIGO.AsString;
      DBLookupCBoxIngreso.setfocus;
    end;
end;


procedure TFABM_CPB_Transferencia.EditCodCtaEgresoExit(Sender: TObject);
begin
  if EditCodCtaEgreso.Text <> '' then
    if ZQ_Cuenta.Locate('CODIGO', VarArrayOf([EditCodCtaEgreso.Text]), []) then
    begin
      ZQ_CpbFormaPago.Edit;
      ZQ_CpbFormaPagoCUENTA_EGRESO.AsInteger:= ZQ_CuentaID_CUENTA.AsInteger;
    end
    else
    begin
      ShowMessage('El Código de Cuenta ingresado es inexistente, verifique');
      EditCodCtaEgreso.Text:= '';
      EditCodCtaEgreso.SetFocus;
    end;
end;


procedure TFABM_CPB_Transferencia.EditCodCtaIngresoExit(Sender: TObject);
begin
  if EditCodCtaIngreso.Text <> '' then
    if ZQ_Cuenta.Locate('CODIGO', VarArrayOf([EditCodCtaIngreso.Text]), []) then
    begin
      ZQ_CpbFormaPago.Edit;
      ZQ_CpbFormaPagoCUENTA_INGRESO.AsInteger:= ZQ_CuentaID_CUENTA.AsInteger;
    end
    else
    begin
      ShowMessage('El Código de Cuenta ingresado es inexistente, verifique');
      EditCodCtaIngreso.Text:= '';
      EditCodCtaIngreso.SetFocus;
    end;
end;



procedure TFABM_CPB_Transferencia.btnConfirmarClick(Sender: TObject);
var
  recno, estado: Integer;
begin
  estado:= ZQ_VerCpb_FpagoID_COMP_ESTADO.AsInteger;
  if ((ZQ_VerCpb_Fpago.IsEmpty) or
     ((estado = ESTADO_CONFIRMADO) or (estado = ESTADO_ANULADO))) then
    exit;

  id_comprobante:= ZQ_VerCpb_FpagoID_COMPROBANTE.AsInteger;

  if (application.MessageBox(pchar('¿Desea confirmar la Transferencia seleccionada?'), 'ABM Transferencia', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Comprobante]) then
    begin
      ZQ_Comprobante.Close;
      ZQ_Comprobante.ParamByName('id_comprobante').AsInteger:= id_comprobante;
      ZQ_Comprobante.Open;

      ZQ_Comprobante.Edit;
      ZQ_ComprobanteID_COMP_ESTADO.AsInteger:= ESTADO_CONFIRMADO;

      try
        if not DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
          dm.EKModelo.cancelar_transaccion(transaccion_ABM)
      except
        begin
          Application.MessageBox('No se pudo confirmar la Transferencia.', 'Atención',MB_OK+MB_ICONINFORMATION);
          exit;
        end
      end;
    end;

  recNo:= ZQ_VerCpb_Fpago.RecNo;
  ZQ_VerCpb_Fpago.Refresh;
  ZQ_VerCpb_Fpago.RecNo:= recNo;
  dm.mostrarCantidadRegistro(ZQ_VerCpb_Fpago, lblCantidadRegistros);
end;

end.


