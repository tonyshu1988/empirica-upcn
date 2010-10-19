unit UMovimientos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, StdCtrls,
  DBCtrls, Mask, ComCtrls, ISDBEditDateTimePicker, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, EKListadoSQL, ZStoredProcedure,
  EKBusquedaAvanzada, ActnList, XPStyleActnCtrls, ActnMan, EKDbSuma,
  EKLlenarCombo, mxNativeExcel, mxExport, QuickRpt, QRCtrls,
  EKVistaPreviaQR, EKNumeroATexto, DBClient, QPrinters, EKIni, jpeg,
  EKOrdenarGrilla, UAlta_OrdenPago, EKDBDateTimePicker;

type
  TFMovimientos = class(TForm)
    PContenedor: TPanel;
    dxBarABM: TdxBarManager;
    BtIngresos: TdxBarLargeButton;
    BtEgresos: TdxBarLargeButton;
    btBuscar: TdxBarLargeButton;
    BtGuardar: TdxBarLargeButton;
    BtCancelar: TdxBarLargeButton;
    btImprimirLB: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    DBGridLibroBanco: TDBGrid;
    btSalir: TdxBarLargeButton;
    ZQ_Cuenta_Movimiento: TZQuery;
    DS_Cuenta_Movimiento: TDataSource;
    ZQ_Cuenta_MovimientoID: TIntegerField;
    ZQ_Cuenta_MovimientoNRO_MOVIMIENTO: TIntegerField;
    ZQ_Cuenta_MovimientoID_CUENTA_INGRESO: TIntegerField;
    ZQ_Cuenta_MovimientoID_CUENTA_EGRESO: TIntegerField;
    ZQ_Cuenta_MovimientoID_MEDIO: TIntegerField;
    ZQ_Cuenta_MovimientoFECHA_MDC: TDateField;
    ZQ_Cuenta_MovimientoBANCO_MDC: TStringField;
    ZQ_Cuenta_MovimientoIMPORTE: TFloatField;
    ZQ_Cuenta_MovimientoCONCILIADO: TStringField;
    ZQ_Cuentas: TZQuery;
    ZQ_Medios_Cobro_Pago: TZQuery;
    ZQ_Medios_Cobro_PagoID_MEDIO: TIntegerField;
    ZQ_Medios_Cobro_PagoNOMBRE_MEDIO_COBRO_PAGO: TStringField;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasNOMBRE_CUENTA: TStringField;
    ZQ_CuentasMEDIO_DE_PAGO: TStringField;
    ZQ_CuentasNRO_CUENTA_BANCARIA: TStringField;
    ZQ_CuentasULTIMO_NRO: TIntegerField;
    ZQ_CuentasAUTONUMERAR: TStringField;
    ZQ_CuentasMEDIO_POR_DEFECTO: TIntegerField;
    ZQ_Proveedores: TZQuery;
    ZQ_Conceptos: TZQuery;
    ZQ_ConceptosID_CONCEPTO: TIntegerField;
    ZQ_ConceptosCOD_CORTO: TStringField;
    ZQ_ConceptosNOMBRE_CONCEPTO: TStringField;
    ZQ_ConceptosBAJA: TStringField;
    ZQ_ConceptosIMPORTE: TFloatField;
    ZQ_ProveedoresNRO_PROVEEDOR: TIntegerField;
    ZQ_ProveedoresAPELLIDO_Y_NOMBRE: TStringField;
    ZQ_ProveedoresNOMBRE_FANTASIA: TStringField;
    ZQ_ProveedoresDIRECCION: TStringField;
    ZQ_ProveedoresTIPO_DOCUMENTO: TStringField;
    ZQ_ProveedoresNRO_DOCUMENTO: TStringField;
    ZQ_ProveedoresTELEFONOS: TStringField;
    ZQ_ProveedoresEMAIL: TStringField;
    ZQ_ProveedoresBAJA: TStringField;
    ZQ_Movimientos: TZQuery;
    ZQ_MovimientosNRO_MOVIMIENTO: TIntegerField;
    ZQ_MovimientosNRO_PROVEEDOR: TIntegerField;
    ZQ_MovimientosID_CONCEPTO: TIntegerField;
    ZQ_MovimientosID_OBJETO_MOVIMIENTO: TIntegerField;
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
    DS_Proveedores: TDataSource;
    DS_Conceptos: TDataSource;
    DS_Cuentas: TDataSource;
    DS_Movimientos: TDataSource;
    ZQ_Tipo_Movimiento: TZQuery;
    ZQ_Tipo_MovimientoID_TIPO_MOVIEMIENTO: TIntegerField;
    ZQ_Tipo_MovimientoCODIGO_CORTO: TStringField;
    ZQ_Tipo_MovimientoDESCRIPCION: TStringField;
    DS_Tipo_Movimiento: TDataSource;
    ZQ_Cuenta_Movimientonombre_cuenta_egreso: TStringField;
    ZQ_Cuenta_Movimientonombre_cuenta_ingreso: TStringField;
    ZQ_Cuenta_Movimientomedio_de_pago: TStringField;
    EK_ListadoCuentas: TEKListadoSQL;
    EK_ListadoMedCobroPago: TEKListadoSQL;
    Nro_Moviemiento: TZStoredProc;
    Nro_MoviemientoID: TIntegerField;
    DS_LIBRO_BANCO: TDataSource;
    PParametrosLibroBanco: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    DTPFechaDesde: TDateTimePicker;
    DTPFechaHasta: TDateTimePicker;
    btaplicar: TButton;
    LIBRO_BANCO: TZQuery;
    LIBRO_BANCOID_MOVIMIENTO: TIntegerField;
    LIBRO_BANCOORDEN: TIntegerField;
    LIBRO_BANCOFECHA: TDateField;
    LIBRO_BANCOMOVIMIENTO: TStringField;
    LIBRO_BANCONRO_PAGO_REC: TIntegerField;
    LIBRO_BANCOMEDIO: TStringField;
    LIBRO_BANCONRO_MEDIO: TStringField;
    LIBRO_BANCODEBE: TFloatField;
    LIBRO_BANCOHABER: TFloatField;
    LIBRO_BANCOSALDO: TFloatField;
    LIBRO_BANCOCONCILIADO: TStringField;
    LIBRO_BANCONOMBRE_CONCEPTO: TStringField;
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    LIBRO_BANCOFECHA_PD: TDateField;
    EKLlenarCombo1: TEKLlenarCombo;
    DBLCuenta: TComboBox;
    BtEditarMovimiento: TdxBarLargeButton;
    ComboOrden: TComboBox;
    Label10: TLabel;
    btnFiltrar: TdxBarLargeButton;
    PFiltrosColumnas: TPanel;
    BtAplicarFiltrosColumnas: TButton;
    CBFechaEmi: TCheckBox;
    CBFechaPD: TCheckBox;
    CBNroMov: TCheckBox;
    CBMedio: TCheckBox;
    CBNroMedio: TCheckBox;
    CBProveedor: TCheckBox;
    CBConcepto: TCheckBox;
    CBNroOrden: TCheckBox;
    StaticText1: TStaticText;
    CBRecibo: TCheckBox;
    CBNroFactura: TCheckBox;
    ZQ_CuentasBUSQUEDA: TStringField;
    EKListado_Proveedores: TEKListadoSQL;
    EKListado_Conceptos: TEKListadoSQL;
    BtVerDetalle: TdxBarLargeButton;
    LIBRO_BANCONRO_ORDEN: TIntegerField;
    nro_orden: TZStoredProc;
    nro_ordenID: TIntegerField;
    ZQ_MovimientosNRO_ORDEN: TIntegerField;
    LIBRO_BANCOOTROS: TStringField;
    BtAnularOrden: TdxBarLargeButton;
    BtAnularMov: TdxBarLargeButton;
    BtExportarExel: TdxBarLargeButton;
    mxNativeExcel1: TmxNativeExcel;
    mxDBGridExport: TmxDBGridExport;
    EKNumeroALetras1: TEKNumeroALetras;
    ZQ_NroCheque: TZQuery;
    ZQ_NroChequeULTIMO_NRO: TIntegerField;
    CD_Cheque: TClientDataSet;
    CD_ChequeNumero: TIntegerField;
    ZQ_Tipo_MovimientoPRIORIDAD: TIntegerField;
    ZQ_Tipo_MovimientoTIPO: TStringField;
    PanelImpresion: TPanel;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    nro_comprobante: TDBEdit;
    DBMemo3: TDBMemo;
    cBoxImpresoras: TComboBox;
    ori: TCheckBox;
    dup: TCheckBox;
    tri: TCheckBox;
    btnImprimirAceptar: TButton;
    btnImprimirCancelar: TButton;
    btnImprimirOrden: TdxBarLargeButton;
    EKIni_Impresion: TEKIni;
    EKVistaPreviaOrdenPago: TEKVistaPreviaQR;
    Label14: TLabel;
    ZQ_Autoriza: TZQuery;
    DS_Autoriza: TDataSource;
    ZQ_AutorizaID_AUTORIDAD: TIntegerField;
    ZQ_AutorizaNOMBE: TStringField;
    ZQ_AutorizaPRIORIDAD: TIntegerField;
    QR_OrdenPago: TQuickRep;
    QRBand13: TQRBand;
    QRDBText30: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText41: TQRDBText;
    QRDBText46: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText63: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel43: TQRLabel;
    QRDBText64: TQRDBText;
    QRBand14: TQRBand;
    RepOrdenCompra_SITUACIONIVAYCUIT: TQRLabel;
    RepOrdenCompra_TELEFONOS: TQRLabel;
    RepOrdenCompra_DIRECCION: TQRLabel;
    QRDBText65: TQRDBText;
    RepOrdenCompra_EMPRESA: TQRLabel;
    QRShape2: TQRShape;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRDBText66: TQRDBText;
    RepOrdenCompra_DUENIO: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel106: TQRLabel;
    QRSubDetail14: TQRSubDetail;
    QRLabel107: TQRLabel;
    QRChildBand8: TQRChildBand;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel116: TQRLabel;
    QRSubDetail17: TQRSubDetail;
    QRDBText71: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRSubDetail18: TQRSubDetail;
    QrtImporteFPago: TQRLabel;
    QRBand15: TQRBand;
    QRLabel123: TQRLabel;
    QRlblFechaHoy: TQRLabel;
    QRLabelImpresion: TQRLabel;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape1: TQRShape;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRShape3: TQRShape;
    QRDBText15: TQRDBText;
    QRLabel3: TQRLabel;
    CBoxAutoriza: TComboBox;
    EKLlenarCBAutoriza: TEKLlenarCombo;
    LIBRO_BANCOFECHA_CONCILIADO: TDateField;
    LIBRO_BANCOID_MEDIO: TIntegerField;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    EKIniGuardarFiltros: TEKIni;
    ZQ_Cuenta_MovimientoFECHA_CONCILIADO: TDateField;
    ZQ_Cuenta_MovimientoANULADO: TStringField;
    LIBRO_BANCOMOV_ANULADO: TStringField;
    LIBRO_BANCOCTA_MOV_ANULADO: TStringField;
    DataSource1: TDataSource;
    PIngresos: TPanel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label16: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DS_Medios_Cobro_Pago: TDataSource;
    LIBRO_BANCONRO_FACTURA: TStringField;
    LIBRO_BANCONRO_RECIBO: TStringField;
    ZQ_MovimientosNRO_FACTURA: TStringField;
    ZQ_MovimientosNRO_RECIBO: TStringField;
    ChildBand1: TQRChildBand;
    QRLblConfecciona: TQRLabel;
    QRLblAutorizo: TQRLabel;
    QRShape6: TQRShape;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    ChildBand2: TQRChildBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    RepLibroB: TQuickRep;
    QRBand5: TQRBand;
    QRLabel41: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel11: TQRLabel;
    RepLibroB_Reporte_Titulo_2: TQRLabel;
    RepLibroB_Reporte_Titulo_1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    lblLibBco_FDesde: TQRLabel;
    lblLibBco_FHasta: TQRLabel;
    lblLibBco_Oden: TQRLabel;
    lblLibBco_Cuenta: TQRLabel;
    QRBand6: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBTxtConciliado: TQRDBText;
    QRShape11: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLblProveedor: TQRLabel;
    QRChildBand2: TQRChildBand;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRBand7: TQRBand;
    QRLabel35: TQRLabel;
    QRlblFechaHoyLibroBanco: TQRLabel;
    QRLabel24: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand8: TQRBand;
    QRExpr15: TQRExpr;
    EKVistaPrevia_LibroBco: TEKVistaPreviaQR;
    ZQ_MovimientosNRO_ORDEN_STRING: TStringField;
    ZQ_Ver_NroOrden: TZQuery;
    ZQ_Ver_NroOrdenNRO_ORDEN_STRING: TStringField;
    ZQ_Ver_NroOrdenNRO_ORDEN_INT: TIntegerField;
    DS_Ver_NroOrden: TDataSource;
    LIBRO_BANCOPROVEEDOR: TStringField;
    ZQ_MovimientosDESCRIPCION: TStringField;
    CBFechaConciliado: TCheckBox;
    Label27: TLabel;
    LIBRO_BANCONRO_ORDEN_STRING: TStringField;
    btnAltaOrdenPago: TdxBarLargeButton;
    EKDbSuma1: TEKDbSuma;
    ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF: TIntegerField;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label1: TLabel;
    Label3: TLabel;
    EKDBDateTimePicker1: TEKDBDateTimePicker;
    EKDBDateTimePicker2: TEKDBDateTimePicker;
    Label4: TLabel;
    PEgresos: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label22: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    EKDBDateTimePicker3: TEKDBDateTimePicker;
    EKDBDateTimePicker4: TEKDBDateTimePicker;
    procedure BtEgresosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtGuardarClick(Sender: TObject);
    procedure BtIngresosClick(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btaplicarClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure EKLlenarCombo1Cambio(valor: String);
    function validarcampos():boolean;
    procedure BtEditarMovimientoClick(Sender: TObject);
    procedure BtAplicarFiltrosColumnasClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure DBGridLibroBancoDblClick(Sender: TObject);
    procedure DBGridLibroBancoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtVerDetalleClick(Sender: TObject);
    procedure BtAnularOrdenClick(Sender: TObject);
    procedure BtAnularMovClick(Sender: TObject);
    procedure BtExportarExelClick(Sender: TObject);
    procedure btImprimirLBClick(Sender: TObject);
    function validarNroCheque(): integer;
    procedure btnImprimirOrdenClick(Sender: TObject);
    procedure btnImprimirCancelarClick(Sender: TObject);
    procedure btnImprimirAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GuardarOpcionesFiltrado();
    procedure LeerOpcionesFiltrado();
    procedure LIBRO_BANCOAfterScroll(DataSet: TDataSet);
    procedure btnAltaOrdenPagoClick(Sender: TObject);
    procedure EKDbSuma1SumListChanged(Sender: TObject);
  private
    ventanaOrdenPago: TFAlta_OrdenPago;
  public
    UltimoNroCheque, NroChequeEditando: integer;
  end;

var
  FMovimientos: TFMovimientos;
  CuentaNro : integer;
  BanderaIngresoEgreso : integer; //Si es 1 es ingreso si es 0 es egreso

const
  Transaccion_Movimientos = 'ABM MOVIMIENTOS';

implementation

uses UDM, DateUtils, EKUsrLogin;

{$R *.dfm}

procedure TFMovimientos.FormCreate(Sender: TObject);
begin
  UltimoNroCheque:= -1;
  EKOrdenarGrilla1.CargarConfigColunmas;

  CD_Cheque.CreateDataSet;
  dm.EKModelo.abrir(ZQ_Proveedores);
  dm.EKModelo.abrir(ZQ_Conceptos);
  dm.EKModelo.abrir(ZQ_Cuentas);
  dm.EKModelo.abrir(ZQ_Autoriza);

  DTPFechaDesde.Date:= StartOfAMonth(YearOf(DM.EKModelo.Fecha),MonthOf(DM.EKModelo.Fecha));
  DTPFechaHasta.Date:= DM.EKModelo.Fecha;
  EKLlenarCombo1.CargarCombo;
  EKLlenarCBAutoriza.CargarCombo;

  if dm.EKUsrLogin1.PermisoAccionValor('ACCESO') = '' then
    CuentaNro:= 0
  else
    CuentaNro:= StrToInt(dm.EKUsrLogin1.PermisoAccionValor('ACCESO'));

  if CuentaNro <> 0 then //si me logueo como un usuario que tiene asignada una cuenta
  begin
    ZQ_Cuentas.Locate('id_cuenta',CuentaNro,[]);
    DBLCuenta.ItemIndex:= CuentaNro-1;
    DBLCuenta.Enabled:=false;
  end
  else  //si me logueo como administrador
  begin
    ZQ_Cuentas.First;
    EKLlenarCombo1.SelectClave:=ZQ_CuentasID_CUENTA.AsString;
    DBLCuenta.ItemIndex:= 0;
    DBLCuenta.Enabled:=true;
  end;

  btaplicar.Click;
  LeerOpcionesFiltrado;
  BtAplicarFiltrosColumnas.Click;
end;


procedure TFMovimientos.btSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFMovimientos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then
  begin
    if not (application.MessageBox(pchar('La Transacción esta activa, hay cambios sin guardar. Los Cancela?'), 'Pregunta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose := False
    else
      dm.EKModelo.cancelar_transaccion(Transaccion_Movimientos);
  end;
end;


function TFMovimientos.validarNroCheque():integer;
var
  anterior: integer;
begin
//  result := -1;
//  anterior:= -1;
//  CD_Cheque.IndexFieldNames:= 'Numero';
//  CD_Cheque.First;
//  while not CD_Cheque.Eof do
//  begin
//    if anterior = -1 then //si es el primer cheque
//      anterior:= CD_ChequeNumero.AsInteger
//    else
//    begin //si falta un numero de cheque o hay 2 o mas cheques con el mismo numero
//     if ((CD_ChequeNumero.AsInteger - anterior) >  1) or (CD_ChequeNumero.AsInteger = anterior) then
//     begin
//       result:= anterior;
//       exit;
//     end;
//     anterior:= CD_ChequeNumero.AsInteger;
//    end;
//
//    CD_Cheque.Next;
//  end;
end;


function TFMovimientos.validarcampos():boolean;
begin
  result := true;

//  if PIngresos.Visible = false then
//  begin
//   if (ZQ_MovimientosFECHA.IsNull) then
//    begin
//      Application.MessageBox('El campo "Fecha" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
//      ISDBEditDateTimePicker1.SetFocus;
//      result := false;
//      exit;
//    end;
//
//  if (DBLUpCBoxProveedor.Text = '') then
//    begin
//      Application.MessageBox('El campo "Proveedor" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
//      DBLUpCBoxProveedor.SetFocus;
//      result := false;
//      exit;
//    end;
//
//   if (DBLUpCBoxConcepto.Text='') then
//    begin
//      Application.MessageBox('El campo "Concepto" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
//      DBLUpCBoxConcepto.SetFocus;
//      result := false;
//      exit;
//    end;
//
//   if (DBLUpCBoxCuenta.Text='') then
//    begin
//      Application.MessageBox('El campo "Cuenta" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
//      DBLUpCBoxCuenta.SetFocus;
//      result := false;
//      exit;
//    end;

//   if (DBLUCBoxNombreTipoMov.Text='') then
//    begin
//      Application.MessageBox('El campo "Tipo Movimiento" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
//      DBLUCBoxNombreTipoMov.SetFocus;
//      result := false;
//      exit;
//    end;

//   if (validarNroCheque <> -1) then
//    begin
//     if (Application.MessageBox(pchar('El cheque nro: '+IntToStr(validarNroCheque)+ 'esta repetido o falta el nro: '+IntToStr(validarNroCheque + 1)+', Desea continuar con la transaccion?'),'Validación',MB_YESNO+MB_ICONINFORMATION) = IDYES)then
//       result := true
//     else
//       result := false;
//
//     exit;
//    end;
end;


procedure TFMovimientos.BtEgresosClick(Sender: TObject);
begin
//  PParametrosLibroBanco.Visible:=false;
//
//  ZQ_Movimientos.Active := False;
//  ZQ_Movimientos.ParamByName('NroMov').AsInteger := 0;
//
//  ZQ_Cuenta_Movimiento.Active := False;
//  ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger := 0;
//  ZQ_Cuenta_Movimiento.ParamByName('IDCtaMov').AsInteger := 0;
//
//  if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Movimientos, ZQ_Cuenta_Movimiento]) then
//  begin
//    ZQ_Ver_NroOrden.Close;
//    ZQ_Ver_NroOrden.Open;
//
//    lblNroOrden.Caption:= 'ORDEN DE PAGO Nro: '+ZQ_Ver_NroOrdenNRO_ORDEN_STRING.AsString;
//
//    ZQ_Movimientos.Append;
//    ZQ_Cuenta_Movimiento.Append;
//
//    if CuentaNro <> 0 then //si me logueo como un usuario que tiene asignada una cuenta
//    begin
//      DBLUpCBoxCuenta.Enabled:= false;
//      ZQ_Cuentas.Locate('id_cuenta',CuentaNro,[]);
//      DBLUpCBoxCuenta.KeyValue:= ZQ_CuentasID_CUENTA.AsInteger;
//    end
//    else  //si me logueo como administrador
//      DBLUpCBoxCuenta.KeyValue:= ZQ_CuentasID_CUENTA.AsInteger;
//
//    if ZQ_CuentasAUTONUMERAR.AsString = 'S' then
//      UltimoNroCheque:= ZQ_CuentasULTIMO_NRO.AsInteger;
//
//    ISDBEditDateTimePicker1.SetFocus;
//
//    ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger:=1; //PONGO QUE ES UNA ORDEN DE PAGO
//    ZQ_MovimientosFECHA.Value := dm.EKModelo.Fecha;
//    GrupoEditando.Enabled := false;
//    GrupoGuardarCancelar.Enabled := true;
//  end;
end;


procedure TFMovimientos.BtIngresosClick(Sender: TObject);
begin
PIngresos.Visible:=true;
DBEditCodMedio.SetFocus;


  ZQ_Movimientos.Active := False;
  ZQ_Movimientos.ParamByName('NroMov').AsInteger := 0;
  ZQ_Cuenta_Movimiento.Active := False;
  ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger := 0;
  ZQ_Cuenta_Movimiento.ParamByName('IDCtaMov').AsInteger := 0;

  if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Movimientos,ZQ_Cuenta_Movimiento]) then
  begin
    ZQ_Movimientos.Append;
    ZQ_Cuenta_Movimiento.Append;

    if CuentaNro <> 0 then //si me logueo como un usuario que tiene asignada una cuenta
    begin
      DBLUpCBoxCuentaIngreaso.Enabled:= false;
      ZQ_Cuentas.Locate('id_cuenta', CuentaNro, []);
      DBLUpCBoxCuentaIngreaso.KeyValue:= ZQ_CuentasID_CUENTA.AsInteger;
    end
    else //si me logueo como administrador
      DBLUpCBoxCuentaIngreaso.KeyValue:= ZQ_CuentasID_CUENTA.AsInteger;


    ZQ_Cuenta_MovimientoID_CUENTA_INGRESO.AsInteger := ZQ_CuentasID_CUENTA.AsInteger;
    ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger:= 2; //PONGO Q ES UN RECIBO
    ZQ_MovimientosNRO_PROVEEDOR.AsInteger:=0;//Pongo proveedor generico
    ZQ_MovimientosID_CONCEPTO.AsInteger:=0;//Pongo Concepto generico
    ZQ_MovimientosFECHA.Value := dm.EKModelo.Fecha;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFMovimientos.BtGuardarClick(Sender: TObject);
var
  nro_mov : integer;
begin
// ZQ_Cuenta_Movimiento.First; //borro los renglones vacios
// while not ZQ_Cuenta_Movimiento.Eof do
// begin
//   if (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 0) then
//     ZQ_Cuenta_Movimiento.Delete;
//
//   if (ZQ_Cuenta_MovimientoIMPORTE.AsFloat = 0) then //si el saldo es 0 entonces anulo el movimiento
//   begin
//     ZQ_Cuenta_Movimiento.Edit;
//     ZQ_Cuenta_MovimientoANULADO.AsString := 'A';
//   end
//   else
//   begin
//     ZQ_Cuenta_Movimiento.Edit;
//     ZQ_Movimientos.Edit;
//     ZQ_Cuenta_MovimientoANULADO.Clear;
//     ZQ_MovimientosANULADO.Clear;
//   end;
//
//   ZQ_Cuenta_Movimiento.Next;
// end;
//
// if validarcampos then
// begin
//    ZQ_Tipo_Movimiento.Filtered:= false;
//
//    ZQ_Cuenta_Movimiento.First;
//    if ZQ_Cuenta_MovimientoNRO_MOVIMIENTO.AsInteger = 0 then
//    begin
//      Nro_Moviemiento.Active := true;
//      nro_mov := Nro_MoviemientoID.AsInteger;
//      Nro_Moviemiento.Active := false;
//      ZQ_MovimientosNRO_MOVIMIENTO.AsInteger := nro_mov;
//
//      if ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger = 1 then //SI ES UNA ORDEN DE PAGO LE CARGO UN NRO DE ORDEN
//      begin
//        nro_orden.Active := true;
//        ZQ_MovimientosNRO_ORDEN.AsInteger := nro_ordenID.AsInteger;
//        nro_orden.Active := false;
//      end;
//    end
//    else
//      nro_mov:= ZQ_MovimientosNRO_MOVIMIENTO.AsInteger;
//
//
//    while not ZQ_Cuenta_Movimiento.Eof do //recorro todas la formas de pago cargadas
//    begin
//      ZQ_Cuenta_Movimiento.Edit;
//      ZQ_Cuenta_MovimientoNRO_MOVIMIENTO.AsInteger :=nro_mov; //le agrego el nro de movimiento
//
//      if ZQ_Cuenta_MovimientoFECHA_MDC.IsNull then //si la fecha es vacia le pongo la fecha de emision
//        ZQ_Cuenta_MovimientoFECHA_MDC.AsDateTime := ZQ_MovimientosFECHA.AsDateTime;
//
//      //si es un cheque y no tiene la marca de conciliado le pongo q no esta conciliado
//      if (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2) and (ZQ_Cuenta_MovimientoCONCILIADO.IsNull) then
//        ZQ_Cuenta_MovimientoCONCILIADO.AsString := 'N';
//
//      ZQ_Cuenta_Movimiento.Next;
//    end;
//
//    if DM.EKModelo.finalizar_transaccion(Transaccion_Movimientos) then
//    begin
//     UltimoNroCheque:= -1;
//     GrupoEditando.Enabled := true;
//     GrupoGuardarCancelar.Enabled := false;
//     PEgresos.Visible:= false;
//     PIngresos.Visible:=false;
//     PParametrosLibroBanco.Visible:=true;
//     DBGridLibroBanco.Visible:=true;
//     btaplicar.Click;
//    end;
// end;
end;


procedure TFMovimientos.btaplicarClick(Sender: TObject);
begin
  LIBRO_BANCO.Close;
  LIBRO_BANCO.ParamByName('cuenta').AsInteger :=ZQ_CuentasID_CUENTA.AsInteger;
  LIBRO_BANCO.ParamByName('desde').AsDate := DTPFechaDesde.Date;
  LIBRO_BANCO.ParamByName('hasta').AsDate := DTPFechaHasta.Date;
  LIBRO_BANCO.ParamByName('ordenamiento').AsInteger := ComboOrden.ItemIndex;
  LIBRO_BANCO.Open;
end;


procedure TFMovimientos.EKLlenarCombo1Cambio(valor: String);
begin
  ZQ_Cuentas.Locate('id_cuenta',strtoint(EKLlenarCombo1.SelectClave),[]);
end;


procedure TFMovimientos.BtEditarMovimientoClick(Sender: TObject);
begin
 if LIBRO_BANCO.IsEmpty then
  exit;
  Application.CreateForm(TFAlta_OrdenPago,FAlta_OrdenPago);
  FAlta_OrdenPago.EditarOrdenPago();
  FAlta_OrdenPago.ShowModal;
  FAlta_OrdenPago.Release;
//
// ZQ_Movimientos.Close;
// ZQ_Movimientos.ParamByName('NroMov').AsInteger := LIBRO_BANCONRO_PAGO_REC.AsInteger;
// ZQ_Movimientos.Open;
//
// //si el un saldo inicial no se puede editar
// if ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger = 4 then
//  exit;
//
// ZQ_Cuenta_Movimiento.Close;
// ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger :=ZQ_MovimientosNRO_MOVIMIENTO.AsInteger;
// ZQ_Cuenta_Movimiento.Open;
//
// ZQ_Cuentas.Locate('id_cuenta',ZQ_Cuenta_MovimientoID_CUENTA_INGRESO.AsInteger,[]);
//
// if ZQ_Cuenta_MovimientoID_CUENTA_INGRESO.IsNull then
// begin
////    DbGridMediosCobroPago.Columns[2].Visible := false;
////    DbGridMediosCobroPago.Columns[3].Visible := false;
////    DbGridMediosCobroPago.Columns[6].Visible := true;
////    DbGridMediosCobroPago.Columns[7].Visible := true;
////    DbGridMediosCobroPago.Columns[4].Visible := true;
////    DbGridMediosCobroPago.Columns[5].Visible := true;
//    BanderaIngresoEgreso:=0;
//    DBLUpCBoxCuenta.DataSource:= DS_Cuenta_Movimiento;
//    DBLUpCBoxCuenta.DataField := 'ID_CUENTA_EGRESO';
//
//    PEgresos.Visible:= true;
//    PParametrosLibroBanco.Visible:=false;
//    DBGridLibroBanco.Visible:=false;
//    ISDBEditDateTimePicker1.SetFocus;
//
//    lblNroOrden.Caption:= 'ORDEN DE PAGO Nro: '+ZQ_MovimientosNRO_ORDEN_STRING.AsString;
// end
// else
// begin
//    BanderaIngresoEgreso:=1;
//    PIngresos.Visible:= true;
//    PParametrosLibroBanco.Visible:=false;
//    DBEditCodMedio.SetFocus;
// end;
//
//  if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Movimientos,ZQ_Cuenta_Movimiento]) then
//  begin
//    ZQ_Movimientos.edit;
//    ZQ_Cuenta_Movimiento.Edit;
//
////    PEdicion.Visible:= true;
////    PParametrosLibroBanco.Visible:=false;
////    DBGridLibroBanco.Visible:=false;
////    ISDBEditDateTimePicker1.SetFocus;
//    GrupoEditando.Enabled := false;
//    GrupoGuardarCancelar.Enabled := true;
//  end;
end;


procedure TFMovimientos.btnFiltrarClick(Sender: TObject);
begin
  if PFiltrosColumnas.Visible = false then
    PFiltrosColumnas.Visible:=true
  else
    PFiltrosColumnas.Visible:=false;
end;


procedure TFMovimientos.DBGridLibroBancoDblClick(Sender: TObject);
begin
  if ((sender as tdbgrid).SelectedField.FullName = 'CONCILIADO') then
  begin
   ZQ_Cuenta_Movimiento.Close;
   ZQ_Cuenta_Movimiento.ParamByName('NroMov').clear;
   ZQ_Cuenta_Movimiento.ParamByName('IDCtaMov').AsInteger := LIBRO_BANCOID_MOVIMIENTO.AsInteger;
   ZQ_Cuenta_Movimiento.Open;

   if ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2 then
   begin
     if (ZQ_Cuenta_MovimientoCONCILIADO.AsString = 'N') then
     begin
       if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Cuenta_Movimiento]) then
       begin
         ZQ_Cuenta_Movimiento.edit;
         ZQ_Cuenta_MovimientoCONCILIADO.AsString := 'S';
         if not DM.EKModelo.finalizar_transaccion(Transaccion_Movimientos) then
           DM.EKModelo.cancelar_transaccion(Transaccion_Movimientos);
       end
     end
     else
     begin
       if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Cuenta_Movimiento]) then
       begin
         ZQ_Cuenta_Movimiento.edit;
         ZQ_Cuenta_MovimientoCONCILIADO.AsString := 'N';
         if not DM.EKModelo.finalizar_transaccion(Transaccion_Movimientos) then
           DM.EKModelo.cancelar_transaccion(Transaccion_Movimientos);
       end;
     end;
      btaplicar.Click;
      LIBRO_BANCO.Locate('ID_MOVIMIENTO',ZQ_Cuenta_MovimientoID.AsInteger,[]);
   end;
  end;
end;


procedure TFMovimientos.DBGridLibroBancoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not LIBRO_BANCO.IsEmpty then
  begin
   if LIBRO_BANCOMEDIO.AsString = 'CHEQUE' then
    begin
     if (LIBRO_BANCOCONCILIADO.Value='S') then
        begin
         DBGridLibroBanco.Canvas.Brush.Color :=StaticText1.Brush.Color;
         DBGridLibroBanco.Canvas.Font.Color := clBlack;
         if (gdFocused in State) or (gdSelected in State) then
           begin
           DBGridLibroBanco.Canvas.Font.Color := clBlack;
           DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
           end
        end
     else
        begin
          if (gdFocused in State) or (gdSelected in State) then
           begin
             DBGridLibroBanco.Canvas.Font.Color := clwhite;
             DBGridLibroBanco.Canvas.Brush.Color:=clBlue;
             DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
           end;
          end;
    end;
    DBGridLibroBanco.DefaultDrawColumnCell(rect,datacol,column,state);
  end;
end;


procedure TFMovimientos.BtVerDetalleClick(Sender: TObject);
begin
 if LIBRO_BANCO.IsEmpty then
  exit;

  //Sólo para Ordenes de Pago
  Application.CreateForm(TFAlta_OrdenPago,FAlta_OrdenPago);
  FAlta_OrdenPago.VerOrdenPago();
  FAlta_OrdenPago.ShowModal;
  FAlta_OrdenPago.Release;
end;


procedure TFMovimientos.BtAnularOrdenClick(Sender: TObject);
begin
 if LIBRO_BANCO.IsEmpty then
  exit;

 if (application.MessageBox(pchar('¿Esta seguro que desea Anular la Orden de Pago número '+LIBRO_BANCONRO_ORDEN.AsString+'?' + #13 + #13), 'Anular Orden de Pago', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO) then
  exit;

 ZQ_Movimientos.Close;
 ZQ_Movimientos.ParamByName('NroMov').AsInteger := LIBRO_BANCONRO_PAGO_REC.AsInteger;
 ZQ_Movimientos.Open;

 //si el un saldo inicial no se puede editar
 if ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger = 4 then
  exit;

 ZQ_Cuenta_Movimiento.Close;
 ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger :=ZQ_MovimientosNRO_MOVIMIENTO.AsInteger;
 ZQ_Cuenta_Movimiento.ParamByName('IDCtaMov').Clear;
 ZQ_Cuenta_Movimiento.Open;

 ZQ_Cuenta_Movimiento.First;

 if not ZQ_Cuenta_MovimientoID.IsNull then
 begin
   if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Movimientos,ZQ_Cuenta_Movimiento]) then
   begin
     while not ZQ_Cuenta_Movimiento.eof do
     begin
       ZQ_Cuenta_Movimiento.Edit;
       ZQ_Cuenta_MovimientoIMPORTE.AsInteger := 0;
       ZQ_Cuenta_MovimientoANULADO.AsString := 'A';       
       ZQ_Cuenta_Movimiento.Next;
     end;
   end;

   ZQ_Movimientos.Edit;
   ZQ_MovimientosANULADO.AsString:= 'A';

   if not DM.EKModelo.finalizar_transaccion(Transaccion_Movimientos) then
     dm.EKModelo.cancelar_transaccion(Transaccion_Movimientos);

   btaplicar.Click;
 end;
end;


procedure TFMovimientos.BtAnularMovClick(Sender: TObject);
begin
 if LIBRO_BANCO.IsEmpty then
  exit;

 if (application.MessageBox(pchar('¿Esta seguro que desea Anular el Movimiento número '+LIBRO_BANCONRO_PAGO_REC.AsString+'?' + #13 + #13), 'Anular Movimiento', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO) then
  exit;

 ZQ_Movimientos.Close;
 ZQ_Movimientos.ParamByName('NroMov').AsInteger := LIBRO_BANCONRO_PAGO_REC.AsInteger;
 ZQ_Movimientos.Open;

 //si el un saldo inicial no se puede editar
 if ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger = 4 then
  exit;

 ZQ_Cuenta_Movimiento.Close;
 ZQ_Cuenta_Movimiento.ParamByName('NroMov').Clear;
 ZQ_Cuenta_Movimiento.ParamByName('IDCtaMov').AsInteger :=LIBRO_BANCOID_MOVIMIENTO.AsInteger;
 ZQ_Cuenta_Movimiento.Open;

 if not ZQ_Cuenta_MovimientoID.IsNull then
 begin
   if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Movimientos,ZQ_Cuenta_Movimiento]) then
   begin
     ZQ_Cuenta_Movimiento.Edit;
     ZQ_Cuenta_MovimientoID.AsInteger;

     ZQ_Cuenta_MovimientoIMPORTE.AsInteger:= 0;
     ZQ_Cuenta_MovimientoANULADO.AsString:= 'A';

     ZQ_Cuenta_Movimiento.Post;

   end;

   if not DM.EKModelo.finalizar_transaccion(Transaccion_Movimientos) then
     dm.EKModelo.cancelar_transaccion(Transaccion_Movimientos);

   btaplicar.Click;
 end;
end;


procedure TFMovimientos.BtExportarExelClick(Sender: TObject);
begin
  if not LIBRO_BANCO.IsEmpty then
    mxDBGridExport.Select;
end;


procedure TFMovimientos.btImprimirLBClick(Sender: TObject);
begin
  if LIBRO_BANCO.IsEmpty then
    exit;

  lblLibBco_Cuenta.Caption:= DBLCuenta.Text;
  lblLibBco_FDesde.Caption:= DateToStr(DTPFechaDesde.Date);
  lblLibBco_FHasta.Caption:= DateToStr(DTPFechaHasta.Date);
  lblLibBco_Oden.Caption:=   ComboOrden.Text;

  QRlblFechaHoyLibroBanco.Caption:= FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  dm.VariablesReportes(RepLibroB);

  EKVistaPrevia_LibroBco.VistaPrevia;
end;


procedure TFMovimientos.btBuscarClick(Sender: TObject);
begin
  EKBusquedaAvanzada1.Buscar;
end;


//*****************************************//
//  IMPRECION DE LA ORDEN DE PAGO          //
//*****************************************//
procedure TFMovimientos.btnImprimirOrdenClick(Sender: TObject);
var
  j, index: integer;
begin
  if (LIBRO_BANCO.IsEmpty) or (LIBRO_BANCOID_MEDIO.AsInteger <> 2) then //si no hay movimiento o el mov seleccionado
    exit;                                                     //no es una orden de pago entonces salgo

  CBoxAutoriza.ItemIndex:= 0;

  ZQ_Cuenta_Movimiento.Close;
  ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger := LIBRO_BANCONRO_PAGO_REC.AsInteger;
  ZQ_Cuenta_Movimiento.ParamByName('IDCtaMov').clear;
  ZQ_Cuenta_Movimiento.Open;

  ZQ_Movimientos.Close;
  ZQ_Movimientos.ParamByName('NroMov').AsInteger := LIBRO_BANCONRO_PAGO_REC.AsInteger;
  ZQ_Movimientos.Open;

  cBoxImpresoras.Items.Clear;
  for J := 0 to printer.Printers.Count - 1 do
    cBoxImpresoras.Items.Add(inttostr(j) + ' - ' + printer.Printers.Strings[J]);
  index := 0;
  index := EKIni_Impresion.LeerRegnumero('index_impresora_comp_ORDEN');
  cBoxImpresoras.ItemIndex := index;

  if EKIni_Impresion.LeerRegString('Imprimir_Original_Orden') = '' then
  begin
    ori.Checked := true;
    dup.Checked := true;
    tri.Checked := false;
  end
  else
  begin
    ori.Checked := StrToBool(EKIni_Impresion.LeerRegString('Imprimir_Original_Orden'));
    dup.Checked := StrToBool(EKIni_Impresion.LeerRegString('Imprimir_Duplicado_Orden'));
    tri.Checked := StrToBool(EKIni_Impresion.LeerRegString('Imprimir_Triplicado_Orden'));
  end;

  if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Movimientos]) then
  begin
    ZQ_Movimientos.Edit;

    PanelImpresion.Visible := true;
    PanelImpresion.BringToFront;
    GrupoGuardarCancelar.Enabled := false;
    GrupoEditando.Enabled := false;
    cBoxImpresoras.SetFocus;
  end;
end;


procedure TFMovimientos.btnImprimirCancelarClick(Sender: TObject);
begin
  if  DM.EKModelo.cancelar_transaccion(Transaccion_Movimientos) then
  begin
    PanelImpresion.SendToBack;
    GrupoGuardarCancelar.Enabled := false;
    GrupoEditando.Enabled := true;
  end;
end;


procedure TFMovimientos.btnImprimirAceptarClick(Sender: TObject);
begin
  if DM.EKModelo.finalizar_transaccion(Transaccion_Movimientos) then
  begin
    PanelImpresion.Visible := false;
    EKIni_Impresion.EsribirRegEntero('index_impresora_comp_ORDEN', cBoxImpresoras.ItemIndex);
    EKIni_Impresion.EsribirRegString('Imprimir_Original_Orden', BoolToStr(ori.Checked));
    EKIni_Impresion.EsribirRegString('Imprimir_Duplicado_Orden', BoolToStr(dup.Checked));
    EKIni_Impresion.EsribirRegString('Imprimir_Triplicado_Orden', BoolToStr(tri.Checked));

    QRlblFechaHoy.Caption := FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
    QRLblConfecciona.Caption:= 'Confeccionó: '+dm.EKUsrLogin1.nusuariosis;
    QRLblAutorizo.Caption:= 'Autorizó: '+CBoxAutoriza.Text;
    QrtImporteFPago.Caption := 'Total: '+FormatFloat('$ ###,###,###,##0.00', EKDbSuma1.SumCollection[0].sumvalue);

    QR_OrdenPago.PrinterSettings.PrinterIndex := cBoxImpresoras.ItemIndex;

    if ori.Checked then
    begin
      QRLabelImpresion.Caption := 'ORIGINAL';
      if ZQ_MovimientosANULADO.AsString = 'S' then
        QRLabelImpresion.Caption := 'ANULADO';
      QR_OrdenPago.Print;
    end;
    if dup.Checked then
    begin
      QRLabelImpresion.Caption := 'DUPLICADO';
      if ZQ_MovimientosANULADO.AsString = 'S' then
        QRLabelImpresion.Caption := 'ANULADO';
      QR_OrdenPago.Print;
    end;
    if tri.Checked then
    begin
      if ZQ_MovimientosANULADO.AsString = 'S' then
        QRLabelImpresion.Caption := 'ANULADO';
      QR_OrdenPago.Print;
    end;

    PanelImpresion.SendToBack;
    GrupoGuardarCancelar.Enabled := false;
    GrupoEditando.Enabled := true;
  end;
end;
//*****************************************//
//  FIN IMPRECION DE LA ORDEN DE PAGO      //
//*****************************************//


procedure TFMovimientos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
  GuardarOpcionesFiltrado;
end;


procedure TFMovimientos.BtAplicarFiltrosColumnasClick(Sender: TObject);
begin
  if not CBFechaEmi.Checked then  //fecha emision
    DBGridLibroBanco.Columns[0].Visible := false
  else
    DBGridLibroBanco.Columns[0].Visible := true;

  if not CBFechaPD.Checked then  //fecha postdata
    DBGridLibroBanco.Columns[1].Visible := false
  else
    DBGridLibroBanco.Columns[1].Visible := true;

  if not CBNroMov.Checked then //nro movimiento
    DBGridLibroBanco.Columns[2].Visible := false
  else
    DBGridLibroBanco.Columns[2].Visible := true;

  if not CBNroOrden.Checked then //Nro Orden
    DBGridLibroBanco.Columns[3].Visible := false
  else
    DBGridLibroBanco.Columns[3].Visible := true;

  if not CBMedio.Checked then  //medio
    DBGridLibroBanco.Columns[4].Visible := false
  else
    DBGridLibroBanco.Columns[4].Visible := true;

  if not CBNroMedio.Checked then  //nro cheque/transf
    DBGridLibroBanco.Columns[5].Visible := false
  else
    DBGridLibroBanco.Columns[5].Visible := true;

  if not CBProveedor.Checked then  //proveedor
    DBGridLibroBanco.Columns[6].Visible := false
  else
    DBGridLibroBanco.Columns[6].Visible := true;

//  if not CBConcepto.Checked then  //anulado
//    DBGridLibroBanco.Columns[7].Visible := false
//  else
//    DBGridLibroBanco.Columns[7].Visible := true;

  if not CBConcepto.Checked then  //concepto
    DBGridLibroBanco.Columns[8].Visible := false
  else
    DBGridLibroBanco.Columns[8].Visible := true;

  if not CBNroFactura.Checked then //factura
    DBGridLibroBanco.Columns[9].Visible := false
  else
    DBGridLibroBanco.Columns[9].Visible := true;

  if not CBrecibo.Checked then //Recibo
    DBGridLibroBanco.Columns[10].Visible := false
  else
    DBGridLibroBanco.Columns[10].Visible := true;

  if not CBFechaConciliado.Checked then //conciliado
    DBGridLibroBanco.Columns[15].Visible := false
  else
    DBGridLibroBanco.Columns[15].Visible := true;

  PFiltrosColumnas.Visible:=false;
end;


procedure TFMovimientos.GuardarOpcionesFiltrado();
begin
  if CBFechaEmi.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\FechaEmision', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\FechaEmision', 'FALSE');

  if CBFechaPD.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\FechaPD', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\FechaPD', 'FALSE');

  if CBNroMov.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\NroMov', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\NroMov', 'FALSE');

  if CBMedio.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\Medio', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\Medio', 'FALSE');

  if CBNroMedio.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\NroMedio', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\NroMedio', 'FALSE');

  if CBProveedor.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\Proveedor', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\Proveedor', 'FALSE');

  if CBConcepto.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\Concepto', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\Concepto', 'FALSE');

  if CBNroOrden.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\NroOrden', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\NroOrden', 'FALSE');

  if CBRecibo.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\Otros', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\Otros', 'FALSE');

  if CBNroFactura.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\NroFactura', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\NroFactura', 'FALSE');

  if CBFechaConciliado.Checked then
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\FechaConciliado', 'TRUE')
  else
    EKIniGuardarFiltros.EsribirRegString('\UMovimiento\Filtro\FechaConciliado', 'FALSE');
end;


procedure TFMovimientos.LeerOpcionesFiltrado();
begin
  if EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\FechaEmision') <> '' then
    CBFechaEmi.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\FechaEmision'));

  if EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\FechaPD') <> '' then
    CBFechaPD.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\FechaPD'));

  if EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\NroMov') <> '' then
    CBNroMov.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\NroMov'));

  if EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\Medio') <> '' then
    CBMedio.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\Medio'));

  if EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\NroMedio') <> '' then
    CBNroMedio.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\NroMedio'));

  if EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\Proveedor') <> '' then
    CBProveedor.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\Proveedor'));

  if EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\Concepto') <> '' then
    CBConcepto.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\Concepto'));

  if EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\NroOrden') <> '' then
    CBNroOrden.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\NroOrden'));

  if EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\Otros') <> '' then
    CBRecibo.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\Otros'));

  if EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\NroFactura') <> '' then
    CBNroFactura.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\NroFactura'));

  if EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\FechaConciliado') <> '' then
    CBFechaConciliado.Checked:= StrToBool(EKIniGuardarFiltros.LeerRegString('\UMovimiento\Filtro\FechaConciliado'));
end;


procedure TFMovimientos.LIBRO_BANCOAfterScroll(DataSet: TDataSet);
begin
  if LIBRO_BANCOCTA_MOV_ANULADO.AsString = 'A' then
    BtAnularMov.Enabled:= false
  else
    BtAnularMov.Enabled:= true;

  if LIBRO_BANCOMOV_ANULADO.AsString = 'A' then
    BtAnularOrden.Enabled:= false
  else
    BtAnularOrden.Enabled:= true;
end;


procedure TFMovimientos.btnAltaOrdenPagoClick(Sender: TObject);
begin
  Application.CreateForm(TFAlta_OrdenPago,FAlta_OrdenPago);
  FAlta_OrdenPago.IniciarOrdenPago();
  FAlta_OrdenPago.ShowModal;
  FAlta_OrdenPago.Release;
end;

procedure TFMovimientos.EKDbSuma1SumListChanged(Sender: TObject);
begin
 if FAlta_OrdenPago<>nil then
  FAlta_OrdenPago.txt_total_medio_pago.Caption:=Format('Total: $%f',[EKDbSuma1.SumCollection[0].SumValue]);
end;

end.
