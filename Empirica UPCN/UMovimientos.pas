unit UMovimientos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids, StdCtrls,
  DBCtrls, Mask, ComCtrls, ISDBEditDateTimePicker, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, EKListadoSQL, ZStoredProcedure,
  EKBusquedaAvanzada, ActnList, XPStyleActnCtrls, ActnMan, EKDbSuma,
  EKLlenarCombo, mxNativeExcel, mxExport, QuickRpt, QRCtrls,
  EKVistaPreviaQR, EKNumeroATexto, DBClient, QPrinters, EKIni, jpeg;

type
  TFMovimientos = class(TForm)
    PContenedor: TPanel;
    dxBarABM: TdxBarManager;
    BtIngresos: TdxBarLargeButton;
    BtEgresos: TdxBarLargeButton;
    btBuscar: TdxBarLargeButton;
    BtGuardar: TdxBarLargeButton;
    BtCancelar: TdxBarLargeButton;
    btImprimir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    DBGridLibroBanco: TDBGrid;
    btSalir: TdxBarLargeButton;
    PEdicion: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ISDBEditDateTimePicker1: TISDBEditDateTimePicker;
    DBEditNroProveedor: TDBEdit;
    DBLUpCBoxProveedor: TDBLookupComboBox;
    DBMemoDescripcion: TDBMemo;
    panel_edicion_medio_de_pago: TPanel;
    Shape5: TShape;
    Label7: TLabel;
    DbGridMediosCobroPago: TDBGrid;
    Panel2: TPanel;
    txt_total_medio_pago: TLabel;
    btEliminarLinea: TButton;
    DBLUpCBoxConcepto: TDBLookupComboBox;
    DBEditNroConcepto: TDBEdit;
    Label1: TLabel;
    DBLUpCBoxCuenta: TDBLookupComboBox;
    ZQ_Cuenta_Movimiento: TZQuery;
    DS_Cuenta_Movimiento: TDataSource;
    ZQ_Cuenta_MovimientoID: TIntegerField;
    ZQ_Cuenta_MovimientoNRO_MOVIMIENTO: TIntegerField;
    ZQ_Cuenta_MovimientoID_CUENTA_INGRESO: TIntegerField;
    ZQ_Cuenta_MovimientoID_CUENTA_EGRESO: TIntegerField;
    ZQ_Cuenta_MovimientoID_MEDIO: TIntegerField;
    ZQ_Cuenta_MovimientoFECHA_MDC: TDateField;
    ZQ_Cuenta_MovimientoBANCO_MDC: TStringField;
    ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF: TStringField;
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
    ZQ_MovimientosID_TIPO_MOVIMIENTO: TIntegerField;
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
    DS_Proveedores: TDataSource;
    DS_Conceptos: TDataSource;
    DS_Cuentas: TDataSource;
    DS_Movimientos: TDataSource;
    DBLUCBoxNroTipoMov: TDBLookupComboBox;
    ZQ_Tipo_Movimiento: TZQuery;
    ZQ_Tipo_MovimientoID_TIPO_MOVIEMIENTO: TIntegerField;
    ZQ_Tipo_MovimientoCODIGO_CORTO: TStringField;
    ZQ_Tipo_MovimientoDESCRIPCION: TStringField;
    DS_Tipo_Movimiento: TDataSource;
    Label2: TLabel;
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
    LIBRO_BANCODESCRIPCION: TStringField;
    LIBRO_BANCOCONCILIADO: TStringField;
    LIBRO_BANCONOMBRE_CONCEPTO: TStringField;
    LIBRO_BANCOTIPO_MOV: TStringField;
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    LIBRO_BANCOFECHA_PD: TDateField;
    ActionManager1: TActionManager;
    ADeleteLinea: TAction;
    EKDbSumaImporte: TEKDbSuma;
    EKLlenarCombo1: TEKLlenarCombo;
    DBLCuenta: TComboBox;
    BtEditarMovimiento: TdxBarLargeButton;
    ComboOrden: TComboBox;
    Label10: TLabel;
    BtVerCampos: TdxBarLargeButton;
    PFiltrosColumnas: TPanel;
    BtAplicarFiltrosColumnas: TButton;
    CBFechaEmi: TCheckBox;
    CBFechaPD: TCheckBox;
    CBNroMov: TCheckBox;
    CBMedio: TCheckBox;
    CBNroMedio: TCheckBox;
    CBProveedor: TCheckBox;
    CBConcepto: TCheckBox;
    CBTipoMedio: TCheckBox;
    ZQ_Cuenta_MovimientoNRO_FACTURA_RECIBO: TStringField;
    LIBRO_BANCONRO_FAC_REC: TStringField;
    StaticText1: TStaticText;
    CBOtros: TCheckBox;
    CBNroFactura: TCheckBox;
    ZQ_CuentasBUSQUEDA: TStringField;
    EKListado_Proveedores: TEKListadoSQL;
    EKListado_Conceptos: TEKListadoSQL;
    BtVerDetalle: TdxBarLargeButton;
    LabelDetalle: TLabel;
    DBLUCBoxNombreTipoMov: TDBLookupComboBox;
    Label12: TLabel;
    Label13: TLabel;
    LIBRO_BANCONRO_ORDEN: TIntegerField;
    nro_orden: TZStoredProc;
    nro_ordenID: TIntegerField;
    ZQ_MovimientosNRO_ORDEN: TIntegerField;
    ZQ_Cuenta_MovimientoOTROS: TStringField;
    LIBRO_BANCOOTROS: TStringField;
    BtAnularOrden: TdxBarLargeButton;
    BtAnularMov: TdxBarLargeButton;
    StaticText2: TStaticText;
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
    QRLblConfecciona: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRBand15: TQRBand;
    QRLabel123: TQRLabel;
    QRLblAutorizo: TQRLabel;
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
    procedure BtEgresosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DbGridMediosCobroPagoColExit(Sender: TObject);
    procedure DbGridMediosCobroPagoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtGuardarClick(Sender: TObject);
    procedure BtIngresosClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btaplicarClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure DBLUpCBoxCuentaEnter(Sender: TObject);
    procedure btEliminarLineaClick(Sender: TObject);
    procedure ADeleteLineaExecute(Sender: TObject);
    procedure EKDbSumaImporteSumListChanged(Sender: TObject);
    procedure EKLlenarCombo1Cambio(valor: String);
    function validarcampos():boolean;
    procedure BtEditarMovimientoClick(Sender: TObject);
    procedure BtAplicarFiltrosColumnasClick(Sender: TObject);
    procedure BtVerCamposClick(Sender: TObject);
    procedure DBGridLibroBancoDblClick(Sender: TObject);
    procedure DBGridLibroBancoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBLUpCBoxProveedorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditNroProveedorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditNroConceptoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLUpCBoxConceptoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtVerDetalleClick(Sender: TObject);
    procedure BtAnularOrdenClick(Sender: TObject);
    procedure BtAnularMovClick(Sender: TObject);
    procedure BtExportarExelClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure DBLUpCBoxCuentaExit(Sender: TObject);
    function validarNroCheque(): integer;
    procedure btnImprimirOrdenClick(Sender: TObject);
    procedure btnImprimirCancelarClick(Sender: TObject);
    procedure btnImprimirAceptarClick(Sender: TObject);
  private
    { Private declarations }
  public
    UltimoNroCheque: integer;
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

function TFMovimientos.validarNroCheque():integer;
var
  anterior: integer;
begin
  result := -1;
  anterior:= -1;
  CD_Cheque.IndexFieldNames:= 'Numero';
  CD_Cheque.First;
  while not CD_Cheque.Eof do
  begin
    if anterior = -1 then
      anterior:= CD_ChequeNumero.AsInteger
    else
    begin
     if (CD_ChequeNumero.AsInteger - anterior) >  1 then
     begin
       result := anterior + 1;
       exit;
     end;
     anterior:= CD_ChequeNumero.AsInteger;
    end;
    CD_Cheque.Next;
  end;
end;


function TFMovimientos.validarcampos():boolean;
begin
  result := true;


   if (ZQ_MovimientosFECHA.IsNull) then
    begin
      Application.MessageBox('El campo "Fecha" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      ISDBEditDateTimePicker1.SetFocus;
      result := false;
      exit;
    end;

  if (DBLUpCBoxProveedor.Text = '') then
    begin
      Application.MessageBox('El campo "Proveedor" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      DBLUpCBoxProveedor.SetFocus;
      result := false;
      exit;
    end;

   if (DBLUpCBoxConcepto.Text='') then
    begin
      Application.MessageBox('El campo "Concepto" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      DBLUpCBoxConcepto.SetFocus;
      result := false;
      exit;
    end;

   if (DBLUpCBoxCuenta.Text='') then
    begin
      Application.MessageBox('El campo "Cuenta" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      DBLUpCBoxCuenta.SetFocus;
      result := false;
      exit;
    end;

   if (DBLUCBoxNombreTipoMov.Text='') then
    begin
      Application.MessageBox('El campo "Tipo Movimiento" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      DBLUCBoxNombreTipoMov.SetFocus;
      result := false;
      exit;
    end;

   if (validarNroCheque <> -1) then
    begin
     if (Application.MessageBox(pchar('Falta el cheque nro: '+IntToStr(validarNroCheque)+', Desea continuar con la transaccion?'),'Validación',MB_YESNO+MB_ICONINFORMATION) = IDYES)then
       result := true
     else
       result := false;
       
      exit;
    end;
end;


procedure TFMovimientos.BtEgresosClick(Sender: TObject);
begin
  PEdicion.Visible:= true;
  PParametrosLibroBanco.Visible:=false;
  DBGridLibroBanco.Visible:=false;
  BanderaIngresoEgreso:=0;
  DbGridMediosCobroPago.Columns[2].Visible := false;
  DbGridMediosCobroPago.Columns[3].Visible := false;
  DbGridMediosCobroPago.Columns[6].Visible := true;
  DbGridMediosCobroPago.Columns[7].Visible := true;
  DbGridMediosCobroPago.Columns[4].Visible := true;
  DbGridMediosCobroPago.Columns[5].Visible := true;

  ZQ_Movimientos.Active := False;
  ZQ_Movimientos.ParamByName('NroMov').AsInteger := 0;
  ZQ_Cuenta_Movimiento.Active := False;
  ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger := 0;
  ZQ_Cuenta_Movimiento.ParamByName('IDCtaMov').AsInteger := 0;

  if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Movimientos,ZQ_Cuenta_Movimiento]) then
  begin
    ZQ_Movimientos.Append;
    ZQ_Cuenta_Movimiento.Append;

    if CuentaNro <> 0 then
    begin
      DBLUpCBoxCuenta.Enabled:= false;
      ZQ_Cuentas.Locate('id_cuenta',CuentaNro,[]);
      DBLUpCBoxCuenta.KeyValue:= ZQ_CuentasID_CUENTA.AsInteger;
    end
    else
      DBLUpCBoxCuenta.KeyValue:= ZQ_CuentasID_CUENTA.AsInteger;

    ISDBEditDateTimePicker1.SetFocus;

    ZQ_Tipo_Movimiento.Filter:= 'TIPO = ''E'' or TIPO = ''T''';
    ZQ_Tipo_Movimiento.Filtered:= true;
    DBLUCBoxNombreTipoMov.KeyValue:= ZQ_Tipo_MovimientoID_TIPO_MOVIEMIENTO.AsInteger;
    DBLUCBoxNroTipoMov.KeyValue:= ZQ_Tipo_MovimientoID_TIPO_MOVIEMIENTO.AsInteger;

    ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger:=1;
    ZQ_MovimientosFECHA.Value := dm.EKModelo.Fecha;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFMovimientos.FormCreate(Sender: TObject);
begin
  CD_Cheque.CreateDataSet;
  dm.EKModelo.abrir(ZQ_Proveedores);
  dm.EKModelo.abrir(ZQ_Conceptos);
  dm.EKModelo.abrir(ZQ_Cuentas);
  dm.EKModelo.abrir(ZQ_Tipo_Movimiento);
  dm.EKModelo.abrir(ZQ_Autoriza);


  DTPFechaDesde.Date:= StartOfAMonth(YearOf(DM.EKModelo.Fecha),MonthOf(DM.EKModelo.Fecha));
  DTPFechaHasta.Date:= DM.EKModelo.Fecha;
  EKLlenarCombo1.CargarCombo;
  EKLlenarCBAutoriza.CargarCombo;

  CuentaNro:= StrToInt(dm.EKUsrLogin1.PermisoAccionValor('ACCESO'));
  if CuentaNro <> 0 then
  begin
    ZQ_Cuentas.Locate('id_cuenta',CuentaNro,[]);
    DBLCuenta.ItemIndex:= CuentaNro-1;
    DBLCuenta.Enabled:=false;
  end
  else
  begin
    ZQ_Cuentas.First;
    EKLlenarCombo1.SelectClave:=ZQ_CuentasID_CUENTA.AsString;
    DBLCuenta.ItemIndex:= 0;
    DBLCuenta.Enabled:=true;
  end;

  btaplicar.Click;
end;


procedure TFMovimientos.DbGridMediosCobroPagoColExit(Sender: TObject);
begin
   if ((sender as tdbgrid).SelectedField.FullName = 'ID_MEDIO') then
    if (ZQ_Cuenta_MovimientoID_MEDIO.IsNull) then
    begin
      if EK_ListadoMedCobroPago.Buscar then
      begin
        ZQ_Medios_Cobro_Pago.Refresh;
        ZQ_Cuenta_Movimiento.Edit;
        ZQ_Cuenta_MovimientoID_MEDIO.AsInteger := StrToInt(EK_ListadoMedCobroPago.Resultado);

        if ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2 then    //si es un cheque
        begin
            UltimoNroCheque:= UltimoNroCheque + 1;
            ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF.AsInteger:= UltimoNroCheque; //le clavo el ultimo nro
            CD_Cheque.Append;
            CD_ChequeNumero.AsInteger:= UltimoNroCheque;
            CD_Cheque.Post
        end;

        if BanderaIngresoEgreso = 1 then
          ZQ_Cuenta_MovimientoID_CUENTA_INGRESO.AsInteger := ZQ_CuentasID_CUENTA.AsInteger
        else
          ZQ_Cuenta_MovimientoID_CUENTA_EGRESO.AsInteger := ZQ_CuentasID_CUENTA.AsInteger;
      end;
    end
    else
    begin
      ZQ_Cuenta_Movimiento.Edit;
      if ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF.AsString = '' then
        if ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2 then    //si es un cheque
        begin
            UltimoNroCheque:= UltimoNroCheque + 1;
            ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF.AsInteger:= UltimoNroCheque; //le clavo el ultimo nro
            CD_Cheque.Append;
            CD_ChequeNumero.AsInteger:= UltimoNroCheque;
            CD_Cheque.Post
        end;

      if ZQ_Cuenta_MovimientoID_CUENTA_INGRESO.IsNull and ZQ_Cuenta_MovimientoID_CUENTA_EGRESO.IsNull then
        if BanderaIngresoEgreso = 1 then
          ZQ_Cuenta_MovimientoID_CUENTA_INGRESO.AsInteger := ZQ_CuentasID_CUENTA.AsInteger
        else
          ZQ_Cuenta_MovimientoID_CUENTA_EGRESO.AsInteger := ZQ_CuentasID_CUENTA.AsInteger;
    end
end;


procedure TFMovimientos.DbGridMediosCobroPagoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin
    if ((sender as tdbgrid).SelectedField.FullName = 'ID_MEDIO') then
      if EK_ListadoMedCobroPago.Buscar then
      begin
        ZQ_Medios_Cobro_Pago.Refresh;
        ZQ_Cuenta_Movimiento.Edit;
        ZQ_Cuenta_MovimientoID_MEDIO.AsInteger := StrToInt(EK_ListadoMedCobroPago.Resultado);
      end;

    if ((sender as tdbgrid).SelectedField.FullName = 'medio_de_pago') then
      if EK_ListadoMedCobroPago.Buscar then
      begin
        ZQ_Medios_Cobro_Pago.Refresh;
        ZQ_Cuenta_Movimiento.Edit;
        ZQ_Cuenta_MovimientoID_MEDIO.AsInteger := StrToInt(EK_ListadoMedCobroPago.Resultado);

        if ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF.AsString = '' then
          if ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2 then    //si es un cheque
          begin
              UltimoNroCheque:= UltimoNroCheque + 1;
              ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF.AsInteger:= UltimoNroCheque; //le clavo el ultimo nro
              CD_Cheque.Append;
              CD_ChequeNumero.AsInteger:= UltimoNroCheque;
              CD_Cheque.Post
          end;
      end;
  end;
end;


procedure TFMovimientos.BtGuardarClick(Sender: TObject);
var
nro_mov : integer;
begin
 ZQ_Cuenta_Movimiento.First;
 while not ZQ_Cuenta_Movimiento.Eof do
 begin
   if (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 0) then
     ZQ_Cuenta_Movimiento.Delete;

   ZQ_Cuenta_Movimiento.Next;
 end;

 if validarcampos then
 begin
    ZQ_Tipo_Movimiento.Filtered:= false;

    ZQ_Cuenta_Movimiento.First;

    if ZQ_Cuenta_MovimientoNRO_MOVIMIENTO.AsInteger = 0 then
    begin
      Nro_Moviemiento.Active := true;
      nro_mov := Nro_MoviemientoID.AsInteger;
      Nro_Moviemiento.Active := false;

      ZQ_MovimientosNRO_MOVIMIENTO.AsInteger := nro_mov;

      if ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger = 1 then //SI ES UNA ORDEN DE PAGO
      begin
        nro_orden.Active := true;
        ZQ_MovimientosNRO_ORDEN.AsInteger := nro_ordenID.AsInteger;
        nro_orden.Active := false;
      end;
    end
    else
     nro_mov:= ZQ_MovimientosNRO_MOVIMIENTO.AsInteger;

    while not ZQ_Cuenta_Movimiento.Eof do
    begin
      ZQ_Cuenta_Movimiento.Edit;
      ZQ_Cuenta_MovimientoNRO_MOVIMIENTO.AsInteger :=nro_mov;

      if ZQ_Cuenta_MovimientoFECHA_MDC.IsNull then
        ZQ_Cuenta_MovimientoFECHA_MDC.AsDateTime := ZQ_MovimientosFECHA.AsDateTime;

       if (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2) and (ZQ_Cuenta_MovimientoCONCILIADO.IsNull) then
         ZQ_Cuenta_MovimientoCONCILIADO.AsString := 'N';

      ZQ_Cuenta_Movimiento.Next;
    end;

    if DM.EKModelo.finalizar_transaccion(Transaccion_Movimientos) then
    begin
     GrupoEditando.Enabled := true;
     GrupoGuardarCancelar.Enabled := false;
     PEdicion.Visible:= false;
     PParametrosLibroBanco.Visible:=true;
     DBGridLibroBanco.Visible:=true;
     btaplicar.Click;
    end;
 end;
end;


procedure TFMovimientos.BtIngresosClick(Sender: TObject);
begin
  PEdicion.Visible:= true;
  PParametrosLibroBanco.Visible:=false;
  DBGridLibroBanco.Visible:=false;
  BanderaIngresoEgreso:=1;
  DbGridMediosCobroPago.Columns[2].Visible := true;
  DbGridMediosCobroPago.Columns[3].Visible := true;
  DbGridMediosCobroPago.Columns[6].Visible := true;
  DbGridMediosCobroPago.Columns[7].Visible := true;
  DbGridMediosCobroPago.Columns[4].Visible := false;
  DbGridMediosCobroPago.Columns[5].Visible := false;

  ZQ_Movimientos.Active := False;
  ZQ_Movimientos.ParamByName('NroMov').AsInteger := 0;
  ZQ_Cuenta_Movimiento.Active := False;
  ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger := 0;
  ZQ_Cuenta_Movimiento.ParamByName('IDCtaMov').AsInteger := 0;



  if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Movimientos,ZQ_Cuenta_Movimiento]) then
  begin
    ZQ_Movimientos.Append;
    ZQ_Cuenta_Movimiento.Append;

    if CuentaNro <> 0 then
    begin
      DBLUpCBoxCuenta.Enabled:= false;
      ZQ_Cuentas.Locate('id_cuenta',CuentaNro,[]);
      DBLUpCBoxCuenta.KeyValue:= ZQ_CuentasID_CUENTA.AsInteger;
    end
    else
      DBLUpCBoxCuenta.KeyValue:= ZQ_CuentasID_CUENTA.AsInteger;

    ISDBEditDateTimePicker1.SetFocus;

    ZQ_Tipo_Movimiento.Filter:= 'TIPO = ''I'' or TIPO = ''T''';
    ZQ_Tipo_Movimiento.Filtered:= true;
    DBLUCBoxNombreTipoMov.KeyValue:= ZQ_Tipo_MovimientoID_TIPO_MOVIEMIENTO.AsInteger;
    DBLUCBoxNroTipoMov.KeyValue:= ZQ_Tipo_MovimientoID_TIPO_MOVIEMIENTO.AsInteger;

    ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger:=2;
    ZQ_MovimientosFECHA.Value := dm.EKModelo.Fecha;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFMovimientos.BtCancelarClick(Sender: TObject);
begin
  ZQ_Tipo_Movimiento.Filtered:= false;
  if dm.EKModelo.cancelar_transaccion(Transaccion_Movimientos) then
  begin
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    PEdicion.Visible:= false;
    PParametrosLibroBanco.Visible:=True;
    DBGridLibroBanco.Visible:=true;
  end
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


procedure TFMovimientos.btaplicarClick(Sender: TObject);
begin
  LIBRO_BANCO.Close;
  LIBRO_BANCO.ParamByName('cuenta').AsInteger :=ZQ_CuentasID_CUENTA.AsInteger;
  LIBRO_BANCO.ParamByName('desde').AsDate := DTPFechaDesde.Date;
  LIBRO_BANCO.ParamByName('hasta').AsDate := DTPFechaHasta.Date;
  LIBRO_BANCO.ParamByName('ordenamiento').AsInteger := ComboOrden.ItemIndex;
  LIBRO_BANCO.Open;
end;


procedure TFMovimientos.btBuscarClick(Sender: TObject);
begin
  EKBusquedaAvanzada1.Buscar;
end;


procedure TFMovimientos.DBLUpCBoxCuentaEnter(Sender: TObject);
begin
  if ZQ_Cuenta_MovimientoID_MEDIO.AsInteger <> 0 then
    DBLUpCBoxCuenta.Enabled:=false;
end;


procedure TFMovimientos.btEliminarLineaClick(Sender: TObject);
begin
  if not(ZQ_Cuenta_Movimiento.IsEmpty)then
  begin
    if ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2 then
    begin
      CD_Cheque.Locate('Numero', ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF.AsInteger, []);
      CD_Cheque.Delete;
      UltimoNroCheque:= UltimoNroCheque - 1;
    end;
    ZQ_Cuenta_Movimiento.Delete;
    if (ZQ_Cuenta_Movimiento.IsEmpty) and (CuentaNro = 0) then
      DBLUpCBoxCuenta.Enabled:=true;
  end;
end;


procedure TFMovimientos.ADeleteLineaExecute(Sender: TObject);
begin
  if DbGridMediosCobroPago.Focused then
    btEliminarLinea.Click;
end;


procedure TFMovimientos.EKDbSumaImporteSumListChanged(Sender: TObject);
begin
  txt_total_medio_pago.Caption:='Total:     '+FormatFloat('###,###,###,##0.00',EKDbSumaImporte.SumCollection[0].SumValue);
end;


procedure TFMovimientos.EKLlenarCombo1Cambio(valor: String);
begin
  ZQ_Cuentas.Locate('id_cuenta',strtoint(EKLlenarCombo1.SelectClave),[]);
end;


procedure TFMovimientos.BtEditarMovimientoClick(Sender: TObject);
begin
 if LIBRO_BANCO.IsEmpty then
  exit;

 ZQ_Movimientos.Close;
 ZQ_Movimientos.ParamByName('NroMov').AsInteger := LIBRO_BANCONRO_PAGO_REC.AsInteger;
 ZQ_Movimientos.Open;

 //si el un saldo inicial no se puede editar
 if ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger = 4 then
  exit;

 ZQ_Cuenta_Movimiento.Close;
 ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger :=ZQ_MovimientosNRO_MOVIMIENTO.AsInteger;
 ZQ_Cuenta_Movimiento.Open;

 ZQ_Cuentas.Locate('id_cuenta',ZQ_Cuenta_MovimientoID_CUENTA_INGRESO.AsInteger,[]);

 if ZQ_Cuenta_MovimientoID_CUENTA_INGRESO.IsNull then
 begin
    DbGridMediosCobroPago.Columns[2].Visible := false;
    DbGridMediosCobroPago.Columns[3].Visible := false;
    DbGridMediosCobroPago.Columns[6].Visible := true;
    DbGridMediosCobroPago.Columns[7].Visible := true;
    DbGridMediosCobroPago.Columns[4].Visible := true;
    DbGridMediosCobroPago.Columns[5].Visible := true;
    BanderaIngresoEgreso:=0;
    DBLUpCBoxCuenta.DataSource:= DS_Cuenta_Movimiento;
    DBLUpCBoxCuenta.DataField := 'ID_CUENTA_EGRESO';
 end
 else
 begin
    DbGridMediosCobroPago.Columns[2].Visible := true;
    DbGridMediosCobroPago.Columns[3].Visible := true;
    DbGridMediosCobroPago.Columns[6].Visible := true;
    DbGridMediosCobroPago.Columns[7].Visible := true;
    DbGridMediosCobroPago.Columns[4].Visible := false;
    DbGridMediosCobroPago.Columns[5].Visible := false;
    BanderaIngresoEgreso:=1;
    DBLUpCBoxCuenta.DataSource:= DS_Cuenta_Movimiento;
    DBLUpCBoxCuenta.DataField := 'ID_CUENTA_INGRESO';
 end;


  if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Movimientos,ZQ_Cuenta_Movimiento]) then
  begin
    ZQ_Movimientos.edit;
    ZQ_Cuenta_Movimiento.Edit;

    PEdicion.Visible:= true;
    PParametrosLibroBanco.Visible:=false;
    DBGridLibroBanco.Visible:=false;
    ISDBEditDateTimePicker1.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFMovimientos.BtAplicarFiltrosColumnasClick(Sender: TObject);
begin
  if not CBFechaEmi.Checked then
    DBGridLibroBanco.Columns[1].Visible := false
  else
    DBGridLibroBanco.Columns[1].Visible := true;

  if not CBFechaPD.Checked then
    DBGridLibroBanco.Columns[2].Visible := false
  else
    DBGridLibroBanco.Columns[2].Visible := true;

  if not CBNroMov.Checked then
    DBGridLibroBanco.Columns[3].Visible := false
  else
    DBGridLibroBanco.Columns[3].Visible := true;

  if not CBMedio.Checked then
    DBGridLibroBanco.Columns[5].Visible := false
  else
    DBGridLibroBanco.Columns[5].Visible := true;

  if not CBNroMedio.Checked then
    DBGridLibroBanco.Columns[6].Visible := false
  else
    DBGridLibroBanco.Columns[6].Visible := true;

  if not CBProveedor.Checked then
    DBGridLibroBanco.Columns[8].Visible := false
  else
    DBGridLibroBanco.Columns[8].Visible := true;

  if not CBConcepto.Checked then
    DBGridLibroBanco.Columns[9].Visible := false
  else
    DBGridLibroBanco.Columns[9].Visible := true;

  if not CBTipoMedio.Checked then
    DBGridLibroBanco.Columns[7].Visible := false
  else
    DBGridLibroBanco.Columns[7].Visible := true;

  if not CBOtros.Checked then
    DBGridLibroBanco.Columns[10].Visible := false
  else
    DBGridLibroBanco.Columns[10].Visible := true;

  if not CBNroFactura.Checked then
    DBGridLibroBanco.Columns[11].Visible := false
  else
    DBGridLibroBanco.Columns[11].Visible := true;
end;


procedure TFMovimientos.BtVerCamposClick(Sender: TObject);
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
   ZQ_Cuenta_Movimiento.ParamByName('IDCtaMov').AsInteger := LIBRO_BANCOID_MOVIMIENTO.AsInteger;
   ZQ_Cuenta_Movimiento.Open;

   if ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2 then
   begin
     if ZQ_Cuenta_MovimientoCONCILIADO.AsString = 'N' then
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
//           DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
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

       if ((LIBRO_BANCODEBE.IsNull) and (LIBRO_BANCOHABER.Value = 0)) or ((LIBRO_BANCOHABER.IsNull) and (LIBRO_BANCODEBE.Value = 0)) then
       begin
         DBGridLibroBanco.Canvas.Brush.Color :=StaticText2.Brush.Color;
         DBGridLibroBanco.Canvas.Font.Color := clBlack;
//          DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
         if (gdFocused in State) or (gdSelected in State) then
         begin
           DBGridLibroBanco.Canvas.Font.Color := clBlack;
           DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
         end
       end;

       DBGridLibroBanco.DefaultDrawColumnCell(rect,datacol,column,state);
     end
     else
     begin
       if ((LIBRO_BANCODEBE.IsNull) and (LIBRO_BANCOHABER.Value = 0)) or ((LIBRO_BANCOHABER.IsNull) and (LIBRO_BANCODEBE.Value = 0)) then
       begin
         DBGridLibroBanco.Canvas.Brush.Color :=StaticText2.Brush.Color;
         DBGridLibroBanco.Canvas.Font.Color := clBlack;
//          DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
         if (gdFocused in State) or (gdSelected in State) then
         begin
           DBGridLibroBanco.Canvas.Font.Color := clBlack;
           DBGridLibroBanco.Canvas.Font.Style := DBGridLibroBanco.Canvas.Font.Style + [fsBold];
         end;
         DBGridLibroBanco.DefaultDrawColumnCell(rect,datacol,column,state);
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
  end;
end;


procedure TFMovimientos.DBLUpCBoxProveedorKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin
      if EKListado_Proveedores.Buscar then
      begin
        ZQ_Movimientos.Edit;
        ZQ_MovimientosNRO_PROVEEDOR.AsInteger := StrToInt(EKListado_Proveedores.Resultado);
      end;
  end;
end;


procedure TFMovimientos.DBEditNroProveedorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 112 then
  begin
      if EKListado_Proveedores.Buscar then
      begin
        ZQ_Movimientos.Edit;
        ZQ_MovimientosNRO_PROVEEDOR.AsInteger := StrToInt(EKListado_Proveedores.Resultado);
      end;
  end;
end;


procedure TFMovimientos.DBEditNroConceptoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 112 then
  begin
      if EKListado_Conceptos.Buscar then
      begin
        ZQ_Movimientos.Edit;
        ZQ_MovimientosID_CONCEPTO.AsInteger := StrToInt(EKListado_Conceptos.Resultado);
      end;
  end;
end;


procedure TFMovimientos.DBLUpCBoxConceptoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin
      if EKListado_Conceptos.Buscar then
      begin
        ZQ_Movimientos.Edit;
        ZQ_MovimientosID_CONCEPTO.AsInteger := StrToInt(EKListado_Conceptos.Resultado);
      end;
  end;
end;


procedure TFMovimientos.BtVerDetalleClick(Sender: TObject);
begin
 if LIBRO_BANCO.IsEmpty then
  exit;

   if PEdicion.Visible = true then
   begin
    PEdicion.Visible:= false;
    PParametrosLibroBanco.Visible:=true;
    DBGridLibroBanco.Visible:=true;
    PEdicion.Enabled:=true;
    LabelDetalle.Caption:= '';
    GrupoEditando.Enabled := true;
   end
   else
   begin
    PEdicion.Visible:= true;
    PParametrosLibroBanco.Visible:=false;
    DBGridLibroBanco.Visible:=false;
    PEdicion.Enabled:=false;
    GrupoEditando.Enabled := false;
    BtVerDetalle.Enabled:=true;

     ZQ_Movimientos.Close;
     ZQ_Movimientos.ParamByName('NroMov').AsInteger := LIBRO_BANCONRO_PAGO_REC.AsInteger;
     ZQ_Movimientos.Open;

     ZQ_Cuenta_Movimiento.Close;
     ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger :=ZQ_MovimientosNRO_MOVIMIENTO.AsInteger;
     ZQ_Cuenta_Movimiento.Open;

     ZQ_Cuentas.Locate('id_cuenta',ZQ_Cuenta_MovimientoID_CUENTA_INGRESO.AsInteger,[]);

     if ZQ_Cuenta_MovimientoID_CUENTA_INGRESO.IsNull then
     begin
        DbGridMediosCobroPago.Columns[2].Visible := false;
        DbGridMediosCobroPago.Columns[3].Visible := false;
        DbGridMediosCobroPago.Columns[6].Visible := true;
        DbGridMediosCobroPago.Columns[7].Visible := true;
        DbGridMediosCobroPago.Columns[4].Visible := true;
        DbGridMediosCobroPago.Columns[5].Visible := true;
        BanderaIngresoEgreso:=0;
        DBLUpCBoxCuenta.DataSource:=DS_Cuenta_Movimiento;
        DBLUpCBoxCuenta.DataField := 'ID_CUENTA_EGRESO';
     end
     else
     begin
        DbGridMediosCobroPago.Columns[2].Visible := true;
        DbGridMediosCobroPago.Columns[3].Visible := true;
        DbGridMediosCobroPago.Columns[6].Visible := true;
        DbGridMediosCobroPago.Columns[7].Visible := true;
        DbGridMediosCobroPago.Columns[4].Visible := false;
        DbGridMediosCobroPago.Columns[5].Visible := false;
        BanderaIngresoEgreso:=1;
        DBLUpCBoxCuenta.DataSource:=DS_Cuenta_Movimiento;
        DBLUpCBoxCuenta.DataField := 'ID_CUENTA_INGRESO';
     end;

     LabelDetalle.Caption:= 'DETALLE '+DBLUCBoxNombreTipoMov.Text;
   end;
end;


procedure TFMovimientos.BtAnularOrdenClick(Sender: TObject);
begin
 if LIBRO_BANCO.IsEmpty then
  exit;

 ZQ_Movimientos.Close;
 ZQ_Movimientos.ParamByName('NroMov').AsInteger := LIBRO_BANCONRO_PAGO_REC.AsInteger;
 ZQ_Movimientos.Open;

 //si el un saldo inicial no se puede editar
 if ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger = 4 then
  exit;

 ZQ_Cuenta_Movimiento.Close;
 ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger :=ZQ_MovimientosNRO_MOVIMIENTO.AsInteger;
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
       ZQ_Cuenta_Movimiento.Next;
     end;
   end;

   if not DM.EKModelo.finalizar_transaccion(Transaccion_Movimientos) then
     dm.EKModelo.cancelar_transaccion(Transaccion_Movimientos);

   btaplicar.Click;
 end;
end;


procedure TFMovimientos.BtAnularMovClick(Sender: TObject);
begin
 if LIBRO_BANCO.IsEmpty then
  exit;

 ZQ_Movimientos.Close;
 ZQ_Movimientos.ParamByName('NroMov').AsInteger := LIBRO_BANCONRO_PAGO_REC.AsInteger;
 ZQ_Movimientos.Open;

 //si el un saldo inicial no se puede editar
 if ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger = 4 then
  exit;

 ZQ_Cuenta_Movimiento.Close;
 ZQ_Cuenta_Movimiento.ParamByName('IDCtaMov').AsInteger :=LIBRO_BANCOID_MOVIMIENTO.AsInteger;
 ZQ_Cuenta_Movimiento.Open;

 if not ZQ_Cuenta_MovimientoID.IsNull then
 begin
   if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Movimientos,ZQ_Cuenta_Movimiento]) then
   begin
     ZQ_Cuenta_Movimiento.Edit;
     ZQ_Cuenta_MovimientoIMPORTE.AsInteger := 0;
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


procedure TFMovimientos.btImprimirClick(Sender: TObject);
begin
  if LIBRO_BANCO.IsEmpty then
  exit;
{
  ZQ_Cuenta_Movimiento.Close;
  ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger := LIBRO_BANCONRO_PAGO_REC.AsInteger;
  ZQ_Cuenta_Movimiento.Open;

  ZQ_Movimientos.Close;
  ZQ_Movimientos.ParamByName('NroMov').AsInteger := LIBRO_BANCONRO_PAGO_REC.AsInteger;
  ZQ_Movimientos.Open;

  case ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger of
  1:QRLabeTipoMovimiento.Caption:='ORDEN DE PAGO';
  2:QRLabeTipoMovimiento.Caption:='RECIBO';
  3:QRLabeTipoMovimiento.Caption:='TRANSFERENCIA';
  4:QRLabeTipoMovimiento.Caption:='SALDO INICIAL';
  end;

  ekNumeroALetras1.Numero := EKDbSumaImporte.SumCollection[0].sumvalue;
  QRLabelNumeroLetras.Caption := UpperCase(EkNumeroALetras1.AsString);
  QRTIMPORTE.Caption:= FormatFloat('###,###,###,##0.00', EKDbSumaImporte.SumCollection[0].sumvalue);

  QRLabelConfecciono.Caption:= dm.EKUsrLogin1.usuariosis;
                                               }
  //EKVistaPreviaMovimiento.VistaPrevia;
end;


procedure TFMovimientos.DBLUpCBoxCuentaExit(Sender: TObject);
begin
  if ZQ_CuentasAUTONUMERAR.AsString = 'S' then
    UltimoNroCheque:= ZQ_CuentasULTIMO_NRO.AsInteger;
end;

procedure TFMovimientos.btnImprimirOrdenClick(Sender: TObject);
var
  j, index: integer;
begin
  if LIBRO_BANCO.IsEmpty then
    exit;

  CBoxAutoriza.ItemIndex:= 0;

  ZQ_Cuenta_Movimiento.Close;
  ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger := LIBRO_BANCONRO_PAGO_REC.AsInteger;
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

    //DM.VariablesReportes(QuickRepOrdenPago);
    //ekNumeroALetras1.Numero := EKDbSumaImporte.SumCollection[0].sumvalue;
    //QRLabelNumeroLetras.Caption := UpperCase(EkNumeroALetras1.AsString);
    QRlblFechaHoy.Caption := FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
    QRLblConfecciona.Caption:= 'Confeccionó: '+dm.EKUsrLogin1.nusuariosis;
    QRLblAutorizo.Caption:= 'Autorizó: '+CBoxAutoriza.Text;
    QrtImporteFPago.Caption := 'Total: '+FormatFloat('$ ###,###,###,##0.00', EKDbSumaImporte.SumCollection[0].sumvalue);

    QR_OrdenPago.PrinterSettings.PrinterIndex := cBoxImpresoras.ItemIndex;

    if ori.Checked then
    begin
      QRLabelImpresion.Caption := 'ORIGINAL';
      //if LIBRO_BANCO.AsString = 'S' then
      //  QRLabelImpresion.Caption := 'ANULADO';
      QR_OrdenPago.Print;
    end;
    if dup.Checked then
    begin
      QRLabelImpresion.Caption := 'DUPLICADO';
      //if ZQ_ConsultaOrdenANULADO.AsString = 'S' then
      //  QRLabelImpresion.Caption := 'ANULADO';
      QR_OrdenPago.Print;
    end;
    if tri.Checked then
    begin
      QRLabelImpresion.Caption := 'TRIPLICADO';
      //if ZQ_ConsultaOrdenANULADO.AsString = 'S' then
      //  QRLabelImpresion.Caption := 'ANULADO';
      QR_OrdenPago.Print;
    end;

    PanelImpresion.SendToBack;
    GrupoGuardarCancelar.Enabled := false;
    GrupoEditando.Enabled := true;
  end;
end;

end.
