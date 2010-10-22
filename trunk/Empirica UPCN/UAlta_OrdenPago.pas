unit UAlta_OrdenPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ComCtrls, ISDBEditDateTimePicker,
  Grids, DBGrids, ExtCtrls, dxBar, dxBarExtItems, ActnList,
  XPStyleActnCtrls, ActnMan, EKDbSuma, EKDBDateTimePicker, DBClient, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, EKListadoSQL,
  ZStoredProcedure;

type
  TFAlta_OrdenPago = class(TForm)
    PEgresos: TPanel;
    LabelDetalle: TLabel;
    panel_edicion_medio_de_pago: TPanel;
    Shape5: TShape;
    Label7: TLabel;
    DbGridMediosCobroPago: TDBGrid;
    Panel2: TPanel;
    txt_total_medio_pago: TLabel;
    btEliminarLinea: TButton;
    gBoxDatos: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label25: TLabel;
    lblNroOrden: TLabel;
    DBEditNroProveedor: TDBEdit;
    DBLUpCBoxProveedor: TDBLookupComboBox;
    DBMemoDescripcion: TDBMemo;
    DBLUpCBoxConcepto: TDBLookupComboBox;
    DBEditNroConcepto: TDBEdit;
    DBLUpCBoxCuenta: TDBLookupComboBox;
    DBEditNroFactura: TDBEdit;
    Label26: TLabel;
    DBEditNroRecibo: TDBEdit;
    dxBarABM: TdxBarManager;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    ActionManager1: TActionManager;
    ADeleteLinea: TAction;
    dbFechaEmision: TEKDBDateTimePicker;
    EKListado_Proveedores: TEKListadoSQL;
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
    ZQ_MovimientosNRO_ORDEN: TIntegerField;
    ZQ_MovimientosNRO_FACTURA: TStringField;
    ZQ_MovimientosNRO_RECIBO: TStringField;
    ZQ_MovimientosNRO_ORDEN_STRING: TStringField;
    ZQ_MovimientosDESCRIPCION: TStringField;
    DS_Movimientos: TDataSource;
    EKListado_Conceptos: TEKListadoSQL;
    ZQ_Cuenta_Movimiento: TZQuery;
    ZQ_Cuenta_MovimientoID: TIntegerField;
    ZQ_Cuenta_MovimientoNRO_MOVIMIENTO: TIntegerField;
    ZQ_Cuenta_MovimientoID_CUENTA_INGRESO: TIntegerField;
    ZQ_Cuenta_MovimientoID_CUENTA_EGRESO: TIntegerField;
    ZQ_Cuenta_MovimientoID_MEDIO: TIntegerField;
    ZQ_Cuenta_MovimientoFECHA_MDC: TDateField;
    ZQ_Cuenta_MovimientoBANCO_MDC: TStringField;
    ZQ_Cuenta_MovimientoIMPORTE: TFloatField;
    ZQ_Cuenta_MovimientoCONCILIADO: TStringField;
    ZQ_Cuenta_Movimientonombre_cuenta_egreso: TStringField;
    ZQ_Cuenta_Movimientonombre_cuenta_ingreso: TStringField;
    ZQ_Cuenta_Movimientomedio_de_pago: TStringField;
    ZQ_Cuenta_MovimientoFECHA_CONCILIADO: TDateField;
    ZQ_Cuenta_MovimientoANULADO: TStringField;
    ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF: TIntegerField;
    DS_Cuenta_Movimiento: TDataSource;
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
    EK_ListadoMedCobroPago: TEKListadoSQL;
    ZQ_Medios_Cobro_Pago: TZQuery;
    ZQ_Medios_Cobro_PagoID_MEDIO: TIntegerField;
    ZQ_Medios_Cobro_PagoNOMBRE_MEDIO_COBRO_PAGO: TStringField;
    DS_Medios_Cobro_Pago: TDataSource;
    ZQ_Conceptos: TZQuery;
    ZQ_ConceptosID_CONCEPTO: TIntegerField;
    ZQ_ConceptosCOD_CORTO: TStringField;
    ZQ_ConceptosNOMBRE_CONCEPTO: TStringField;
    ZQ_ConceptosBAJA: TStringField;
    ZQ_ConceptosIMPORTE: TFloatField;
    ZQ_Proveedores: TZQuery;
    ZQ_ProveedoresNRO_PROVEEDOR: TIntegerField;
    ZQ_ProveedoresAPELLIDO_Y_NOMBRE: TStringField;
    ZQ_ProveedoresNOMBRE_FANTASIA: TStringField;
    ZQ_ProveedoresDIRECCION: TStringField;
    ZQ_ProveedoresTIPO_DOCUMENTO: TStringField;
    ZQ_ProveedoresNRO_DOCUMENTO: TStringField;
    ZQ_ProveedoresTELEFONOS: TStringField;
    ZQ_ProveedoresEMAIL: TStringField;
    ZQ_ProveedoresBAJA: TStringField;
    DS_Proveedores: TDataSource;
    DS_Conceptos: TDataSource;
    ZQ_Ver_NroOrden: TZQuery;
    ZQ_Ver_NroOrdenNRO_ORDEN_STRING: TStringField;
    ZQ_Ver_NroOrdenNRO_ORDEN_INT: TIntegerField;
    nro_orden: TZStoredProc;
    nro_ordenID: TIntegerField;
    Nro_Moviemiento: TZStoredProc;
    Nro_MoviemientoID: TIntegerField;
    EKDbSuma1: TEKDbSuma;
    AVerDetalle: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    procedure DBEditNroProveedorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditNroConceptoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLUpCBoxCuentaEnter(Sender: TObject);
    procedure DbGridMediosCobroPagoColExit(Sender: TObject);
    procedure DbGridMediosCobroPagoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AltaOrdenPago();
    procedure btEliminarLineaClick(Sender: TObject);
    procedure ADeleteLineaExecute(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    function validarcampos():boolean;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure habilitar(hab:boolean);
    procedure VerOrdenPago(nroMovimiento: integer);
    procedure EditarOrdenPago(nroMovimiento: integer);
    procedure CargarDatos(nroMovimiento: integer);
    procedure FormCreate(Sender: TObject);
    procedure EKDbSuma1SumListChanged(Sender: TObject);
    procedure AVerDetalleExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure dbFechaEmisionChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CuentaNro: integer;
  end;

var
  FAlta_OrdenPago: TFAlta_OrdenPago;

const
  Transaccion_Movimientos = 'ABM ORDEN PAGO';

implementation

uses UDM, DateUtils;

{$R *.dfm}

procedure TFAlta_OrdenPago.DBEditNroProveedorKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
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


procedure TFAlta_OrdenPago.DBEditNroConceptoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
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


procedure TFAlta_OrdenPago.DBLUpCBoxCuentaEnter(Sender: TObject);
begin
  if ZQ_Cuenta_MovimientoID_MEDIO.AsInteger <> 0 then
    DBLUpCBoxCuenta.Enabled:=false;
end;


procedure TFAlta_OrdenPago.DbGridMediosCobroPagoColExit(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then //SI ESTOY DANDO DE ALTA O EDITANDO
  begin
    if ((sender as tdbgrid).SelectedField.FullName = 'ID_MEDIO') then
      if EK_ListadoMedCobroPago.Buscar then
      begin
        //ZQ_Medios_Cobro_Pago.Refresh;
        ZQ_Cuenta_Movimiento.Edit;
        ZQ_Cuenta_MovimientoID_MEDIO.AsInteger := StrToInt(EK_ListadoMedCobroPago.Resultado);
      end;
  end;
end;


procedure TFAlta_OrdenPago.DbGridMediosCobroPagoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then
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
        end;
    end;
  end;
end;


procedure TFAlta_OrdenPago.CargarDatos(nroMovimiento: integer);
begin
  ZQ_Movimientos.Close;
  ZQ_Movimientos.ParamByName('NroMov').AsInteger:= nroMovimiento;
  ZQ_Movimientos.Open;

  ZQ_Cuenta_Movimiento.Close;
  ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger :=ZQ_MovimientosNRO_MOVIMIENTO.AsInteger;
  ZQ_Cuenta_Movimiento.ParamByName('IDCtaMov').clear;
  ZQ_Cuenta_Movimiento.Open;

  if CuentaNro <> 0 then //si me logueo como un usuario que tiene asignada una cuenta
  begin
    DBLUpCBoxCuenta.Enabled:= false;
    ZQ_Cuentas.Locate('id_cuenta', ZQ_Cuenta_MovimientoID_CUENTA_INGRESO.AsInteger,[]);
  end;
  DBLUpCBoxCuenta.KeyValue:= ZQ_CuentasID_CUENTA.AsInteger;

  lblNroOrden.Caption:= 'ORDEN DE PAGO Nro: '+ZQ_MovimientosNRO_ORDEN_STRING.AsString;  
end;


procedure TFAlta_OrdenPago.habilitar(hab:boolean);
var
  i:Integer;
begin
  gBoxDatos.Enabled:= hab;
  btEliminarLinea.Enabled:=hab;

  if hab then
    btnGuardar.Visible:= ivAlways
  else
    btnGuardar.Visible:= ivNever;
end;


procedure TFAlta_OrdenPago.AltaOrdenPago();
begin
  FAlta_OrdenPago.Caption:= 'ALTA ORDEN DE PAGO';
  habilitar(True);

  ZQ_Movimientos.Close;
  ZQ_Cuenta_Movimiento.Close;

  ZQ_Movimientos.ParamByName('NroMov').AsInteger := -1;
  ZQ_Movimientos.Open;

  ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger :=-1;
  ZQ_Cuenta_Movimiento.ParamByName('IDCtaMov').clear;
  ZQ_Cuenta_Movimiento.Open;

  if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Movimientos, ZQ_Cuenta_Movimiento]) then
  begin
    ZQ_Ver_NroOrden.Close;
    ZQ_Ver_NroOrden.Open;

    lblNroOrden.Caption:= Format('ORDEN DE PAGO Nro: %d-%s',[yearof(dbFechaEmision.Date)-2000, FormatCurr('0000', ZQ_Ver_NroOrdenNRO_ORDEN_INT.AsInteger)]);

    ZQ_Movimientos.Append;
    ZQ_Cuenta_Movimiento.Append;

    if CuentaNro <> 0 then //si me logueo como un usuario que tiene asignada una cuenta
    begin
      DBLUpCBoxCuenta.Enabled:= false;
      ZQ_Cuentas.Locate('id_cuenta',CuentaNro,[]);
    end;
    DBLUpCBoxCuenta.KeyValue:= ZQ_CuentasID_CUENTA.AsInteger;

    ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger:=1; //PONGO QUE ES UNA ORDEN DE PAGO
    ZQ_MovimientosFECHA.Value := dm.EKModelo.Fecha;
  end;
end;


procedure TFAlta_OrdenPago.VerOrdenPago(nroMovimiento: integer);
begin
  habilitar(false);
  CargarDatos(nroMovimiento);
  ZQ_Cuenta_Movimiento.ReadOnly:= true;   //No permito la edicion de la orden de Pago
  FAlta_OrdenPago.Caption:= 'VIENDO ORDEN DE PAGO NRO: '+ZQ_MovimientosNRO_ORDEN_STRING.AsString;
end;


procedure TFAlta_OrdenPago.EditarOrdenPago(nroMovimiento: integer);
begin
  habilitar(true);
  CargarDatos(nroMovimiento);
  ZQ_Cuenta_Movimiento.ReadOnly:= false;   //Permito la edicion de la orden de Pago
  FAlta_OrdenPago.Caption:= 'EDITANDO ORDEN DE PAGO NRO: '+ZQ_MovimientosNRO_ORDEN_STRING.AsString;

  if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Movimientos, ZQ_Cuenta_Movimiento]) then
  begin
    ZQ_Movimientos.Edit;
    ZQ_Cuenta_Movimiento.Edit;

    ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger:=1; //PONGO QUE ES UNA ORDEN DE PAGO
  end;
end;


procedure TFAlta_OrdenPago.btEliminarLineaClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then
  begin
    if not(ZQ_Cuenta_Movimiento.IsEmpty)then
    begin
      ZQ_Cuenta_Movimiento.Delete;

      if (ZQ_Cuenta_Movimiento.IsEmpty) and (CuentaNro = 0) then
        DBLUpCBoxCuenta.Enabled:=true;
    end;
  end;
end;


procedure TFAlta_OrdenPago.ADeleteLineaExecute(Sender: TObject);
begin
 if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then
  if DbGridMediosCobroPago.Focused then
    btEliminarLinea.Click;
end;


procedure TFAlta_OrdenPago.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then
    dm.EKModelo.cancelar_transaccion(Transaccion_Movimientos);

  close;
end;


procedure TFAlta_OrdenPago.btnGuardarClick(Sender: TObject);
var
  nro_mov : integer;
begin

      ZQ_Cuenta_Movimiento.First; //borro los renglones vacios
      while (not ZQ_Cuenta_Movimiento.Eof) do
      begin
       if (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 0) then
         ZQ_Cuenta_Movimiento.Delete;

       if ((ZQ_Cuenta_MovimientoIMPORTE.AsFloat = 0)or(ZQ_Cuenta_MovimientoIMPORTE.IsNull)) then //si el importe es 0 entonces anulo el movimiento
       begin
         ZQ_Cuenta_Movimiento.Edit;
         ZQ_Cuenta_MovimientoIMPORTE.AsFloat:=0;
//         ZQ_Cuenta_MovimientoANULADO.AsString := 'A';
       end
       else //si el importe es distinto de cero
       begin
         ZQ_Cuenta_Movimiento.Edit;
         ZQ_Movimientos.Edit;
         ZQ_Cuenta_MovimientoANULADO.Clear;
         ZQ_MovimientosANULADO.Clear;
       end;

       ZQ_Cuenta_Movimiento.Next;
      end;
      if ZQ_Cuenta_Movimiento.IsEmpty then
      begin
        Application.MessageBox('Debe ingresar al menos un medio de Pago.','Atención',MB_OK+MB_ICONINFORMATION);
        exit;
      end;

    if validarcampos then
    begin
      ZQ_Cuenta_Movimiento.First;
      if ZQ_Cuenta_MovimientoNRO_MOVIMIENTO.AsInteger = 0 then //si es un alta
      begin
        Nro_Moviemiento.Active := true;   //obtengo el numero de movimiento
        nro_mov := Nro_MoviemientoID.AsInteger;
        Nro_Moviemiento.Active := false;
        ZQ_MovimientosNRO_MOVIMIENTO.AsInteger := nro_mov;

        nro_orden.Active := true; //obtengo el numero de orden de pago
        ZQ_MovimientosNRO_ORDEN.AsInteger := nro_ordenID.AsInteger;
        nro_orden.Active := false;
      end
      else
        nro_mov:= ZQ_MovimientosNRO_MOVIMIENTO.AsInteger;

      while not ZQ_Cuenta_Movimiento.Eof do //recorro todas la formas de pago cargadas
      begin
        ZQ_Cuenta_Movimiento.Edit;
        ZQ_Cuenta_MovimientoNRO_MOVIMIENTO.AsInteger :=nro_mov; //le agrego el nro de movimiento

        if ZQ_Cuenta_MovimientoID_CUENTA_EGRESO.IsNull then
          ZQ_Cuenta_MovimientoID_CUENTA_EGRESO.AsInteger := ZQ_CuentasID_CUENTA.AsInteger;

        if ZQ_Cuenta_MovimientoFECHA_MDC.IsNull then //si la fecha es vacia le pongo la fecha de emision
          ZQ_Cuenta_MovimientoFECHA_MDC.AsDateTime := ZQ_MovimientosFECHA.AsDateTime
        else
          if ZQ_Cuenta_MovimientoFECHA_MDC.AsDateTime < ZQ_MovimientosFECHA.AsDateTime then
          begin
            Application.MessageBox('La Fecha de postdatado de una de las forma de pago es menor a la fecha de emisión de la Orden','Validación',MB_OK+MB_ICONINFORMATION);
            exit;
          end;

        //si es un cheque y no tiene la marca de conciliado le pongo q no esta conciliado
        if (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2) and (ZQ_Cuenta_MovimientoCONCILIADO.IsNull) then
          ZQ_Cuenta_MovimientoCONCILIADO.AsString := 'N';

        ZQ_Cuenta_Movimiento.Next;
      end;

      ZQ_MovimientosIMPORTE.AsFloat:= EKDbSuma1.SumCollection[0].SumValue;

      if DM.EKModelo.finalizar_transaccion(Transaccion_Movimientos) then
      begin
        close;
      end
      else
        DM.EKModelo.cancelar_transaccion(Transaccion_Movimientos);
    end;
end;


function TFAlta_OrdenPago.validarcampos():boolean;
begin
  result := true;

  if (ZQ_MovimientosFECHA.IsNull) then
  begin
    Application.MessageBox('El campo "Fecha" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    dbFechaEmision.SetFocus;
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
end;


procedure TFAlta_OrdenPago.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then
  begin
    if not (application.MessageBox(pchar('La Transacción esta activa, hay cambios sin guardar. Los Cancela ?'),'Pregunta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose := False
    else
    begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       dm.EKModelo.cancelar_transaccion(Transaccion_Movimientos);
    end
  end;
end;


procedure TFAlta_OrdenPago.FormCreate(Sender: TObject);
begin
  dm.EKModelo.abrir(ZQ_Proveedores);
  dm.EKModelo.abrir(ZQ_Conceptos);
  dm.EKModelo.abrir(ZQ_Cuentas);

  if dm.EKUsrLogin1.PermisoAccionValor('ACCESO') = '' then
    CuentaNro:= 0
  else
    CuentaNro:= StrToInt(dm.EKUsrLogin1.PermisoAccionValor('ACCESO'));
end;


procedure TFAlta_OrdenPago.EKDbSuma1SumListChanged(Sender: TObject);
begin
  FAlta_OrdenPago.txt_total_medio_pago.Caption:= Format('Total: $ %f',[EKDbSuma1.SumCollection[0].SumValue]);
end;


procedure TFAlta_OrdenPago.AVerDetalleExecute(Sender: TObject);
begin
  btnCancelar.Click;
end;

procedure TFAlta_OrdenPago.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFAlta_OrdenPago.ACancelarExecute(Sender: TObject);
begin
  btnCancelar.Click;
end;

procedure TFAlta_OrdenPago.dbFechaEmisionChange(Sender: TObject);
begin
  if ZQ_Movimientos.State = dsInsert then //solamente se cambia cuando estoy insertando (VER SI ES ASI O SE CAMBIA SIEMPRE)
    lblNroOrden.Caption:= Format('ORDEN DE PAGO Nro: %d-%s',[yearof(dbFechaEmision.Date)-2000, FormatCurr('0000', ZQ_Ver_NroOrdenNRO_ORDEN_INT.AsInteger)]);
end;

end.
