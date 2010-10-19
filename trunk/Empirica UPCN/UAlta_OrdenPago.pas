unit UAlta_OrdenPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ComCtrls, ISDBEditDateTimePicker,
  Grids, DBGrids, ExtCtrls, dxBar, dxBarExtItems, ActnList,
  XPStyleActnCtrls, ActnMan, EKDbSuma, EKDBDateTimePicker;

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
    procedure DBEditNroProveedorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditNroConceptoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLUpCBoxCuentaEnter(Sender: TObject);
    procedure DbGridMediosCobroPagoColEnter(Sender: TObject);
    procedure DbGridMediosCobroPagoColExit(Sender: TObject);
    procedure DbGridMediosCobroPagoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IniciarOrdenPago();
    procedure btEliminarLineaClick(Sender: TObject);
    procedure ADeleteLineaExecute(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    function validarcampos():boolean;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure VerOrdenPago();
    procedure habilitar(hab:boolean);
    procedure EditarOrdenPago();
  private
    { Private declarations }
  public
    { Public declarations }
    UltimoNroCheque, NroChequeEditando: integer;
  end;

var
  FAlta_OrdenPago: TFAlta_OrdenPago;

implementation

uses UMovimientos, UDM;

{$R *.dfm}

procedure TFAlta_OrdenPago.DBEditNroProveedorKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  with FMovimientos do
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
end;


procedure TFAlta_OrdenPago.DBEditNroConceptoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  with FMovimientos do
  begin
    if key = 112 then
    begin
        if FMovimientos.EKListado_Conceptos.Buscar then
        begin
          FMovimientos.ZQ_Movimientos.Edit;
          FMovimientos.ZQ_MovimientosID_CONCEPTO.AsInteger := StrToInt(FMovimientos.EKListado_Conceptos.Resultado);
        end;
    end;
  end;
end;


procedure TFAlta_OrdenPago.DBLUpCBoxCuentaEnter(Sender: TObject);
begin
  if FMovimientos.ZQ_Cuenta_MovimientoID_MEDIO.AsInteger <> 0 then
    DBLUpCBoxCuenta.Enabled:=false;
end;


procedure TFAlta_OrdenPago.DbGridMediosCobroPagoColEnter(Sender: TObject);
begin
if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then
  with FMovimientos do
  begin
     if ((sender as tdbgrid).SelectedField.FullName = 'NRO_CHEQUE_TRANSF') then
     begin
      NroChequeEditando:= -1;
      //si es un cheque y y la cuenta es autonumerada
      if (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2) and (ZQ_CuentasAUTONUMERAR.AsString = 'S') then
        if ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF.AsString <> '' then //si tiene un numero de cheque cargado
        begin
          NroChequeEditando:= ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF.AsInteger;
        end
     end;
  end;
end;


procedure TFAlta_OrdenPago.DbGridMediosCobroPagoColExit(Sender: TObject);
begin
if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then
  with FMovimientos do
  begin
     if ((sender as tdbgrid).SelectedField.FullName = 'NRO_CHEQUE_TRANSF') then
     begin
      //si un cheque y y la cuenta es autonumerada
      if (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2) and (ZQ_CuentasAUTONUMERAR.AsString = 'S') then
        if ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF.AsString <> '' then //si tiene un numero de cheque cargado
        begin
          if ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF.AsInteger <> NroChequeEditando then //si es distinto del actual
          begin
            CD_Cheque.Locate('Numero', NroChequeEditando, []);
            CD_Cheque.Edit;
            CD_ChequeNumero.AsInteger:= ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF.AsInteger;
            CD_Cheque.Post;
          end;
        end
        else
        begin
            CD_Cheque.Locate('Numero', NroChequeEditando, []);
            CD_Cheque.Delete;
        end;
     end;

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

          ZQ_Cuenta_MovimientoID_CUENTA_EGRESO.AsInteger := ZQ_CuentasID_CUENTA.AsInteger;
        end;
      end
      else
      begin
        ZQ_Cuenta_Movimiento.Edit;

          //si es un cheque y y la cuenta es autonumerada
          if (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2) and (ZQ_CuentasAUTONUMERAR.AsString = 'S') then
            if ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF.AsString = '' then //si no tiene nro de cheque
            begin
                UltimoNroCheque:= UltimoNroCheque + 1;
                ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF.AsInteger:= UltimoNroCheque; //le clavo el ultimo nro
                CD_Cheque.Append;
                CD_ChequeNumero.AsInteger:= UltimoNroCheque;
                CD_Cheque.Post
            end;

          if ZQ_Cuenta_MovimientoID_CUENTA_EGRESO.IsNull then
            ZQ_Cuenta_MovimientoID_CUENTA_EGRESO.AsInteger := ZQ_CuentasID_CUENTA.AsInteger;
      end
  end;
end;


procedure TFAlta_OrdenPago.DbGridMediosCobroPagoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then
  with FMovimientos do
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

          //si es un cheque y y la cuenta es autonumerada
          if (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2) and (ZQ_CuentasAUTONUMERAR.AsString = 'S') then
            if ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF.AsString = '' then //si no tiene nro de cheque
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
end;



procedure TFAlta_OrdenPago.VerOrdenPago();
begin
  habilitar(False);
  //asdasd
  with FMovimientos do
    begin
     ZQ_Movimientos.Close;
     ZQ_Movimientos.ParamByName('NroMov').AsInteger := LIBRO_BANCONRO_PAGO_REC.AsInteger;
     ZQ_Movimientos.Open;

     ZQ_Cuenta_Movimiento.Close;
     ZQ_Cuenta_Movimiento.ParamByName('NroMov').AsInteger :=ZQ_MovimientosNRO_MOVIMIENTO.AsInteger;
     ZQ_Cuenta_Movimiento.ParamByName('IDCtaMov').clear;
     ZQ_Cuenta_Movimiento.Open;

     ZQ_Cuentas.Locate('id_cuenta',ZQ_Cuenta_MovimientoID_CUENTA_INGRESO.AsInteger,[]);
     GrupoEditando.Enabled := false;
    end;



end;

procedure TFAlta_OrdenPago.habilitar(hab:boolean);
var
i:Integer;
begin
    for i:=0 to (gBoxDatos.ControlCount-1) do
    begin
        if not(gBoxDatos.Controls[i].ClassNameIs('TLabel'))then
        gBoxDatos.Controls[i].Enabled:=hab;
    end;
    btEliminarLinea.Enabled:=hab;
    //Permito o no la edicion de la orden de Pago
    FMovimientos.ZQ_Cuenta_Movimiento.ReadOnly:=not(hab);

end;


procedure TFAlta_OrdenPago.IniciarOrdenPago();
begin
  habilitar(True);
  with FMovimientos do
  begin
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

      lblNroOrden.Caption:= 'ORDEN DE PAGO Nro: '+ZQ_Ver_NroOrdenNRO_ORDEN_STRING.AsString;

      ZQ_Movimientos.Append;
      ZQ_Cuenta_Movimiento.Append;

      if CuentaNro <> 0 then //si me logueo como un usuario que tiene asignada una cuenta
      begin
        DBLUpCBoxCuenta.Enabled:= false;
        ZQ_Cuentas.Locate('id_cuenta',CuentaNro,[]);
      end;

      DBLUpCBoxCuenta.KeyValue:= ZQ_CuentasID_CUENTA.AsInteger;

      if ZQ_CuentasAUTONUMERAR.AsString = 'S' then
        UltimoNroCheque:= ZQ_CuentasULTIMO_NRO.AsInteger;

      ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger:=1; //PONGO QUE ES UNA ORDEN DE PAGO
      ZQ_MovimientosFECHA.Value := dm.EKModelo.Fecha;
      GrupoEditando.Enabled := false;
      //Por defecto los coloco en el primer registro
      ZQ_MovimientosNRO_PROVEEDOR.AsInteger:=1;
      ZQ_MovimientosID_CONCEPTO.AsInteger:=1;
    end;
  end;
end;



procedure TFAlta_OrdenPago.EditarOrdenPago();
begin
  VerOrdenPago();
  habilitar(True);
  with FMovimientos do
  begin

    if dm.EKModelo.iniciar_transaccion(Transaccion_Movimientos, [ZQ_Movimientos, ZQ_Cuenta_Movimiento]) then
    begin


      ZQ_Movimientos.Edit;
      ZQ_Cuenta_Movimiento.Edit;

      if CuentaNro <> 0 then //si me logueo como un usuario que tiene asignada una cuenta
      begin
        DBLUpCBoxCuenta.Enabled:= false;
        ZQ_Cuentas.Locate('id_cuenta',CuentaNro,[]);
      end;

      DBLUpCBoxCuenta.KeyValue:= ZQ_CuentasID_CUENTA.AsInteger;

      if ZQ_CuentasAUTONUMERAR.AsString = 'S' then
        UltimoNroCheque:= ZQ_CuentasULTIMO_NRO.AsInteger;

      ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger:=1; //PONGO QUE ES UNA ORDEN DE PAGO
      GrupoEditando.Enabled := false;
    end;
  end;
end;

procedure TFAlta_OrdenPago.btEliminarLineaClick(Sender: TObject);
begin
if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then
 with FMovimientos do
  begin
    if not(ZQ_Cuenta_Movimiento.IsEmpty)then
    begin
      //si un cheque y y la cuenta es autonumerada
      if (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2) and (ZQ_CuentasAUTONUMERAR.AsString = 'S') then
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

  FMovimientos.GrupoEditando.Enabled := true;
  close;
end;


procedure TFAlta_OrdenPago.btnGuardarClick(Sender: TObject);
var
  nro_mov : integer;
begin
if dm.EKModelo.verificar_transaccion(Transaccion_Movimientos) then
  with FMovimientos do
  begin
    ZQ_Cuenta_Movimiento.First; //borro los renglones vacios
    while (not ZQ_Cuenta_Movimiento.Eof) do
      begin
       if (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 0) then
         ZQ_Cuenta_Movimiento.Delete;

       if (ZQ_Cuenta_MovimientoIMPORTE.AsFloat = 0) then //si el saldo es 0 entonces anulo el movimiento
         begin
           ZQ_Cuenta_Movimiento.Edit;
           ZQ_Cuenta_MovimientoANULADO.AsString := 'A';
         end
       else
         begin
           ZQ_Cuenta_Movimiento.Edit;
           ZQ_Movimientos.Edit;
           ZQ_Cuenta_MovimientoANULADO.Clear;
           ZQ_MovimientosANULADO.Clear;
         end;

       ZQ_Cuenta_Movimiento.Next;
      end;

    if self.validarcampos then
    begin
      ZQ_Cuenta_Movimiento.First;
      if ZQ_Cuenta_MovimientoNRO_MOVIMIENTO.AsInteger = 0 then
        begin
          Nro_Moviemiento.Active := true;
          nro_mov := Nro_MoviemientoID.AsInteger;
          Nro_Moviemiento.Active := false;
          ZQ_MovimientosNRO_MOVIMIENTO.AsInteger := nro_mov;

          if ZQ_MovimientosID_OBJETO_MOVIMIENTO.AsInteger = 1 then //SI ES UNA ORDEN DE PAGO LE CARGO UN NRO DE ORDEN
          begin
            nro_orden.Active := true;
            ZQ_MovimientosNRO_ORDEN.AsInteger := nro_ordenID.AsInteger;
            nro_orden.Active := false;
          end;
        end
      else
        nro_mov:= ZQ_MovimientosNRO_MOVIMIENTO.AsInteger;


      while not ZQ_Cuenta_Movimiento.Eof do //recorro todas la formas de pago cargadas
      begin
        ZQ_Cuenta_Movimiento.Edit;
        ZQ_Cuenta_MovimientoNRO_MOVIMIENTO.AsInteger :=nro_mov; //le agrego el nro de movimiento

        if ZQ_Cuenta_MovimientoFECHA_MDC.IsNull then //si la fecha es vacia le pongo la fecha de emision
          ZQ_Cuenta_MovimientoFECHA_MDC.AsDateTime := ZQ_MovimientosFECHA.AsDateTime;

        //si es un cheque y no tiene la marca de conciliado le pongo q no esta conciliado
        if (ZQ_Cuenta_MovimientoID_MEDIO.AsInteger = 2) and (ZQ_Cuenta_MovimientoCONCILIADO.IsNull) then
          ZQ_Cuenta_MovimientoCONCILIADO.AsString := 'N';

        ZQ_Cuenta_Movimiento.Next;
      end;

      if DM.EKModelo.finalizar_transaccion(Transaccion_Movimientos) then
        begin
          UltimoNroCheque:= -1;
          GrupoEditando.Enabled := true;
          btaplicar.Click;
          close;
        end
      else
        DM.EKModelo.cancelar_transaccion(Transaccion_Movimientos);
    end;
  end;

end;


function TFAlta_OrdenPago.validarcampos():boolean;
begin
  result := true;

  with FMovimientos do
  begin

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
  lblNroOrden.Caption:= Format('ORDEN DE PAGO Nro: %s',[FMovimientos.LIBRO_BANCONRO_ORDEN_STRING.AsString]);
end;





end.
