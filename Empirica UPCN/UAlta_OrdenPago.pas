unit UAlta_OrdenPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, ExtCtrls, dxBar, dxBarExtItems, ActnList,
  XPStyleActnCtrls, ActnMan, EKDbSuma, EKDBDateTimePicker, DBClient, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, EKListadoSQL,
  ZStoredProcedure,StrUtils;

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
    DBLUpCBoxProveedor: TDBLookupComboBox;
    DBMemoDescripcion: TDBMemo;
    DBLUpCBoxConcepto: TDBLookupComboBox;
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
    Nro_Moviemiento: TZStoredProc;
    Nro_MoviemientoID: TIntegerField;
    EKDbSuma1: TEKDbSuma;
    AVerDetalle: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    dbNroOrden: TDBEdit;
    ZQ_MovimientosNRO_ORDEN_STRING: TStringField;
    ChequesPorOrden: TClientDataSet;
    ChequesPorOrdennroCheque: TStringField;
    ChequesPorOrdenestado: TStringField;
    ZQ_ProveedoresDESCRIPCION: TStringField;
    ZQ_ProveedoresEDITABLE: TStringField;
    ZQ_ProveedoresID_CUENTA: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    ZSP_NRO_ORDEN_SIGUIENTE: TZStoredProc;
    ZSP_NRO_ORDEN_SIGUIENTENRO_ORDEN_STRING: TStringField;
    ZSP_NRO_ORDEN_SIGUIENTENRO_ORDEN_INT: TIntegerField;
    ZSP_DECODIFICAR_NRO_ORDEN: TZStoredProc;
    ZSP_DECODIFICAR_NRO_ORDENANIO: TIntegerField;
    ZSP_DECODIFICAR_NRO_ORDENNRO_ORDEN: TIntegerField;
    ZQ_Configuracion: TZQuery;
    ZQ_ConfiguracionCLAVE: TStringField;
    ZQ_ConfiguracionFECHA: TDateField;
    ZQ_ConfiguracionNUMERO: TFloatField;
    ZQ_ConfiguracionTEXTO: TStringField;
    ZQ_ConfiguracionNIVEL: TSmallintField;
    ZQ_ConfiguracionGRUPO: TStringField;
    ZQ_ConfiguracionDESCRIPCION: TStringField;
    ZQ_ConfiguracionGRAFICO: TBlobField;
    ZSP_EXISTE_CHEQUE: TZStoredProc;
    ZSP_EXISTE_CHEQUEEXISTE: TStringField;
    ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF: TStringField;
    ZQ_Cuenta_MovimientoIMPRESO: TStringField;
    ZQ_ProveedoresID_TIPO: TIntegerField;
    ZQ_ProveedoresID_TIPO_IVA: TIntegerField;
    ZQ_ProveedoresID_TIPO_FACTURA: TIntegerField;
    ZQ_ProveedoresTIPO_PROVEEDOR: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    Label2: TLabel;
    ZQ_MovimientosNRO_CUENTA: TIntegerField;
    ZQ_Movimientosnombre_cuenta: TStringField;
    LabelCuenta: TLabel;
    procedure DBEditNroProveedorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditNroConceptoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    function validarNroOrden(nro:String):boolean;
    procedure ZQ_CuentasAfterScroll(DataSet: TDataSet);
    procedure dbFechaEmisionChange(Sender: TObject);
    procedure DbGridMediosCobroPagoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ZQ_ProveedoresAfterScroll(DataSet: TDataSet);
    procedure ZQ_Cuenta_MovimientoIMPORTEValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    CuentaNro: integer;
  end;

var
  FAlta_OrdenPago: TFAlta_OrdenPago;
  NroOrdenAnt:Integer;
  
const
  Transaccion_Movimientos = 'ABM ORDEN PAGO';

implementation

uses UDM, DateUtils, UMovimientos, UUtilidades;

{$R *.dfm}

procedure TFAlta_OrdenPago.DbGridMediosCobroPagoColExit(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then //SI ESTOY DANDO DE ALTA O EDITANDO
  begin
    if ((sender as tdbgrid).SelectedField.FullName = 'ID_MEDIO')and(ZQ_Cuenta_MovimientoID_MEDIO.IsNull) then
      begin
        if EK_ListadoMedCobroPago.Buscar then
        begin
          //ZQ_Medios_Cobro_Pago.Refresh;
          ZQ_Cuenta_Movimiento.Edit;
          ZQ_Cuenta_MovimientoID_MEDIO.AsInteger := StrToInt(EK_ListadoMedCobroPago.Resultado);
        end
      end
  end;
end;


procedure TFAlta_OrdenPago.DbGridMediosCobroPagoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then
  begin
    if key = 112 then
    begin
      if (((sender as tdbgrid).SelectedField.FullName = 'ID_MEDIO')or ((sender as tdbgrid).SelectedField.FullName = 'medio_de_pago'))
          and(ZQ_Cuenta_MovimientoID_MEDIO.IsNull) then
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
    ZQ_Cuentas.Locate('id_cuenta', ZQ_Cuenta_MovimientoID_CUENTA_INGRESO.AsInteger,[]);
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

  if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Movimientos, ZQ_Cuenta_Movimiento,ZQ_Configuracion]) then
  begin
    ZQ_Movimientos.Append;
    ZQ_Cuenta_Movimiento.Append;

    if CuentaNro <> 0 then //si me logueo como un usuario que tiene asignada una cuenta
      ZQ_Cuentas.Locate('id_cuenta',CuentaNro,[]);

    //Cargo los valores por defecto...
    ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger:=1; //PONGO QUE ES UNA ORDEN DE PAGO
    ZQ_MovimientosFECHA.Value := dm.EKModelo.Fecha;

    //Busco el nro de Orden Siguiente al mayor numero cargado
    //ZSP_NRO_ORDEN_SIGUIENTE.Active:=False;
    //ZSP_NRO_ORDEN_SIGUIENTE.Active:=True;
    //ZQ_MovimientosNRO_ORDEN_STRING.AsString:=ZSP_NRO_ORDEN_SIGUIENTENRO_ORDEN_STRING.AsString;

    ZQ_MovimientosNRO_ORDEN.AsInteger:=ZQ_ConfiguracionNIVEL.AsInteger;
    ZQ_MovimientosNRO_ORDEN_STRING.AsString:=Format('%d-%s',[yearof(dbFechaEmision.Date)-2000, FormatCurr('0000', ZQ_ConfiguracionNIVEL.AsInteger)]);

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
  ZQ_Cuenta_Movimiento.ReadOnly:=false;   //Permito la edicion de la orden de Pago
  FAlta_OrdenPago.Caption:= 'EDITANDO ORDEN DE PAGO NRO: '+ZQ_MovimientosNRO_ORDEN_STRING.AsString;

  if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Cuenta_Movimiento,ZQ_Movimientos,ZQ_Configuracion]) then
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
    if (ZQ_Cuenta_Movimiento.RecordCount>1)then
      ZQ_Cuenta_Movimiento.Delete
    else
      begin
        Application.MessageBox('Debe ingresar al menos un medio de Pago (modifique el existente).','Atención',MB_OK+MB_ICONINFORMATION);
        exit;
      end
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
  if (validarcampos) then
  begin
      ZSP_DECODIFICAR_NRO_ORDEN.Active:=False;
      ZSP_DECODIFICAR_NRO_ORDEN.ParamByName('NRO_ORDEN_STRING').AsString:=dbNroOrden.Text;
      ZSP_DECODIFICAR_NRO_ORDEN.Active:=True;
      ZQ_MovimientosNRO_ORDEN.AsInteger:=ZSP_DECODIFICAR_NRO_ORDENNRO_ORDEN.AsInteger;
      ZQ_MovimientosNRO_CUENTA.AsInteger:=ZQ_CuentasID_CUENTA.AsInteger;
      NroOrdenAnt:=ZQ_MovimientosNRO_ORDEN.AsInteger;

      //ZQ_Cuenta_Movimiento.First;
      if ZQ_MovimientosNRO_MOVIMIENTO.IsNull then //si es un alta
      begin
        Nro_Moviemiento.Active := true;   //obtengo el numero de movimiento
        nro_mov := Nro_MoviemientoID.AsInteger;
        Nro_Moviemiento.Active := false;
        ZQ_MovimientosNRO_MOVIMIENTO.AsInteger := nro_mov;
      end
      else
        nro_mov:= ZQ_MovimientosNRO_MOVIMIENTO.AsInteger;


     if ZQ_Cuenta_Movimiento.IsEmpty then
      begin
        Application.MessageBox('Debe ingresar al menos un medio de Pago.','Atención',MB_OK+MB_ICONINFORMATION);
        exit;
      end;

      //Recorro todas la formas de pago cargadas
      ZQ_Cuenta_Movimiento.First;
      while not ZQ_Cuenta_Movimiento.Eof do
      begin
         //Borro los renglones vacios
         if (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 0) then ZQ_Cuenta_Movimiento.Delete;

         //Si el importe es 0 entonces anulo el movimiento
         if ((ZQ_Cuenta_MovimientoIMPORTE.AsFloat = 0) or (ZQ_Cuenta_MovimientoIMPORTE.IsNull)) then
         begin
           ZQ_Cuenta_Movimiento.Edit;
           ZQ_Cuenta_MovimientoIMPORTE.AsFloat:= 0;
           ZQ_Cuenta_MovimientoANULADO.AsString:= 'A';
         end
         else //Si el importe es distinto de cero
         begin
           ZQ_Cuenta_Movimiento.Edit;
           ZQ_Movimientos.Edit;
           ZQ_Cuenta_MovimientoANULADO.Clear;
           ZQ_MovimientosANULADO.Clear;
         end;

          ZQ_Cuenta_Movimiento.Edit;
          ZQ_Cuenta_MovimientoNRO_MOVIMIENTO.AsInteger:= nro_mov; //le agrego el nro de movimiento

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

          //Si es un cheque y no tiene la marca de conciliado le pongo q no esta conciliado
          if ((ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2) or (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 3)) and (ZQ_Cuenta_MovimientoCONCILIADO.IsNull) then
            ZQ_Cuenta_MovimientoCONCILIADO.AsString := 'N';

          ZQ_Cuenta_Movimiento.Next;
      end;

      ZQ_MovimientosIMPORTE.AsFloat:= EKDbSuma1.SumCollection[0].SumValue;
      ZQ_Configuracion.Edit;
      ZQ_ConfiguracionNIVEL.AsInteger:=nroOrdenAnt+1;
      ZQ_Configuracion.Post;

      try
        if DM.EKModelo.finalizar_transaccion(Transaccion_Movimientos) then
           begin
            Close;
           end
      except
        begin
          ZQ_Cuenta_Movimiento.edit;
          ZQ_Movimientos.Edit;
          Application.MessageBox('Verifique que los datos estén cargados correctamente.'+char(13)
                                +'Revise el Nro de Orden (y su cuenta) y los nros de cheque ingresados.'+char(13)
                                +'(no deben duplicarse en el sistema/orden de pago)','Orden de Pago',MB_OK+MB_ICONINFORMATION);
          exit;
        end;
      end
  end;
end;


function TFAlta_OrdenPago.validarNroOrden(nro:String):boolean;
var
anio,num:String;
begin
  result := true;
  anio:=LeftStr(nro,2);
  num:=RightStr(nro,4);

  if (anio<>Format('%d',[yearof(dbFechaEmision.Date)-2000])) then
    begin
      Application.MessageBox('Los 2 primeros dígitos deben corresponder al año en Curso.','Nº Orden de Pago',MB_OK+MB_ICONINFORMATION);
      result:=false;
      exit;
    end;

  if not(sonTodosNumeros(num)) then
    begin
      Application.MessageBox('Los 4 últimos dígitos deben corresponder al Nº de Orden.','Nº Orden de Pago',MB_OK+MB_ICONINFORMATION);
      result:=false;
      exit;
    end;
  if (MidStr(dbNroOrden.Text,3,1)<>'-') then
    begin
      Application.MessageBox('El formato es 00-0000.','Nº Orden de Pago',MB_OK+MB_ICONINFORMATION);
      result:=false;
      exit;
    end;

end;


function TFAlta_OrdenPago.validarcampos():boolean;
begin
  result := true;

  if not (validarNroOrden(dbNroOrden.Text)) then
    begin
     result := False;
     exit;
    end;


  if (ZQ_MovimientosNRO_ORDEN_STRING.AsString='') then
    begin
      Application.MessageBox('Debe ingresar un Nro de Orden de Pago.','Validación',MB_OK+MB_ICONINFORMATION);
      dbNroOrden.SetFocus;
      result := False;
      exit;
    end;
   
  if (ZQ_MovimientosFECHA.IsNull) then
  begin
    Application.MessageBox('El campo "Fecha" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    dbFechaEmision.SetFocus;
    result := false;
    exit;
  end;

  if (DBLUpCBoxProveedor.Text = '') then
  begin
    Application.MessageBox('El campo "Denominacion" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
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
end;


procedure TFAlta_OrdenPago.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then
  begin
    if not (application.MessageBox(pchar('Si continua con el cierre se perderán los cambios realizados.'+#13+#13+'¿Salir de todos modos?'),'Atención', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
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
  dm.EKModelo.abrir(ZQ_Conceptos);
  dm.EKModelo.abrir(ZQ_Cuentas);
  ZQ_Cuentas.Locate('id_cuenta',FMovimientos.ZQ_CuentasID_CUENTA.AsInteger,[]);
  ZQ_Proveedores.Active:=false;
  ZQ_Proveedores.ParamByName('idCta').AsInteger:=ZQ_CuentasID_CUENTA.AsInteger;
  ZQ_Proveedores.Active:=true;
  dm.EKModelo.abrir(ZQ_Proveedores);
  ZQ_Configuracion.Active:=false;
  ZQ_Configuracion.ParamByName('cta').AsInteger:=ZQ_CuentasID_CUENTA.AsInteger;
  ZQ_Configuracion.Active:=true;

  LabelCuenta.Caption:= ZQ_CuentasBUSQUEDA.AsString;
end;


procedure TFAlta_OrdenPago.EKDbSuma1SumListChanged(Sender: TObject);
begin
  FAlta_OrdenPago.txt_total_medio_pago.Caption:= Format('Total: $ %s',[FormatFloat('###,###,###,##0.00',EKDbSuma1.SumCollection[0].SumValue)]);
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
  ZQ_MovimientosNRO_ORDEN_STRING.AsString:=Format('%d-%s',[yearof(dbFechaEmision.Date)-2000, FormatCurr('0000', ZQ_ConfiguracionNIVEL.AsInteger)]);
end;


procedure TFAlta_OrdenPago.DbGridMediosCobroPagoDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  a: TRect;
begin
  a.Left := rect.Left;
  a.Right := rect.Right;
  a.Top := rect.Top;
  a.Bottom := rect.Bottom;

  if not ZQ_Cuenta_Movimiento.IsEmpty then
  begin
    if (ZQ_Cuenta_MovimientoIMPORTE.AsFloat = 0) then
    begin
      DbGridMediosCobroPago.Canvas.Brush.Color:= $00BCC5FC;
      DbGridMediosCobroPago.Canvas.Font.Color := clBlack;
      if (gdFocused in State) or (gdSelected in State) then
      begin
         a.Top := rect.Top+1;
         a.Bottom := rect.Bottom -1;
         DbGridMediosCobroPago.Canvas.Font.Color := clBlack;
         DbGridMediosCobroPago.Canvas.Font.Style := DbGridMediosCobroPago.Canvas.Font.Style + [fsBold];
      end;
    end
    else
    begin
      if (gdFocused in State) or (gdSelected in State) then
      begin
        a.Top := rect.Top+1;
        a.Bottom := rect.Bottom -1;
        DbGridMediosCobroPago.Canvas.Font.Color := clwhite;
        DbGridMediosCobroPago.Canvas.Brush.Color:=clBlue;
        DbGridMediosCobroPago.Canvas.Font.Style := DbGridMediosCobroPago.Canvas.Font.Style + [fsBold];
      end;
    end;

    DbGridMediosCobroPago.DefaultDrawColumnCell(a,datacol,column,state);
  end;
end;


procedure TFAlta_OrdenPago.ZQ_CuentasAfterScroll(DataSet: TDataSet);
begin
  ZQ_Proveedores.Active:=false;
  ZQ_Proveedores.ParamByName('idCta').AsInteger:=ZQ_CuentasID_CUENTA.AsInteger;
  ZQ_Proveedores.Active:=true;
  ZQ_Configuracion.Active:=false;
  ZQ_Configuracion.ParamByName('cta').AsInteger:=ZQ_CuentasID_CUENTA.AsInteger;
  ZQ_Configuracion.Active:=true;
  //Si lo permite verifico el ultimo nro de orden con la cuenta correspondiente
  if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then
     ZQ_MovimientosNRO_ORDEN_STRING.AsString:=Format('%d-%s',[yearof(dbFechaEmision.Date)-2000, FormatCurr('0000', ZQ_ConfiguracionNIVEL.AsInteger)]);
end;


procedure TFAlta_OrdenPago.ZQ_ProveedoresAfterScroll(DataSet: TDataSet);
begin
  ZQ_Conceptos.Active:=false;
  ZQ_Conceptos.ParamByName('idProveedor').AsInteger:= ZQ_ProveedoresNRO_PROVEEDOR.AsInteger;
  ZQ_Conceptos.Active:=true;
end;


procedure TFAlta_OrdenPago.DBEditNroProveedorKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin
      EKListado_Proveedores.SQL[4]:= ' and (c.id_cuenta = '+ZQ_CuentasID_CUENTA.AsString+')';
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
      EKListado_Conceptos.SQL[4]:= ' and (pc.id_proveedor = '+ZQ_ProveedoresNRO_PROVEEDOR.AsString+')';
      if EKListado_Conceptos.Buscar then
      begin
        ZQ_Movimientos.Edit;
        ZQ_MovimientosID_CONCEPTO.AsInteger := StrToInt(EKListado_Conceptos.Resultado);
      end;
  end;
end;


procedure TFAlta_OrdenPago.ZQ_Cuenta_MovimientoIMPORTEValidate(
  Sender: TField);
begin
  if (ZQ_Cuenta_MovimientoIMPORTE.AsFloat  >  1000000000000.00) or
      (ZQ_Cuenta_MovimientoIMPORTE.AsFloat < -1000000000000.00)
   then
      raise Exception.Create('Importe ingresado incorrecto, verifique');
end;

end.

