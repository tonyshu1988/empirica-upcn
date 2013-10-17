unit UImpresionCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, QuickRpt, QRCtrls, Grids, DBGrids, ExtCtrls, jpeg,
  dxBar, dxBarExtItems, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKBusquedaAvanzada, EKNumeroATexto, EKVistaPreviaQR, DBClient, ZSqlUpdate,
  ZStoredProcedure, EKOrdenarGrilla, cxClasses;

type
  TFImpresionCheques = class(TForm)
    PanelContenedor: TPanel;
    DBGridCheques: TDBGrid;
    RepChequesCorriente: TQuickRep;
    QRBandCorriente: TQRBand;
    dxBarABM: TdxBarManager;
    btnNuevo: TdxBarLargeButton;
    btnchequeDiferido: TdxBarLargeButton;
    BtVistaPreviaCorr: TdxBarLargeButton;
    BtVistaPreviaDif: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnBuscar: TdxBarLargeButton;
    btnChequeCorriente: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    QRImageChequeCorriente1: TQRImage;
    ZQ_movimientos: TZQuery;
    ZQ_movimientosFECHA: TDateField;
    ZQ_movimientosFECHA_MDC: TDateField;
    ZQ_movimientosIMPORTE: TFloatField;
    ZQ_movimientosANULADO: TStringField;
    ZQ_movimientosAPELLIDO_Y_NOMBRE: TStringField;
    EKNumeroALetras1: TEKNumeroALetras;
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    DS_movimientos: TDataSource;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    QRLabelNumeroLetraCorriente1: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabelmesCheque1: TQRLabel;
    ZQ_movimientosIMPRESO: TStringField;
    ClientZQ_movimientos: TClientDataSet;
    ClientZQ_movimientosFecha_emision: TDateTimeField;
    ClientZQ_movimientosFecha_Pd: TDateTimeField;
    ClientZQ_movimientosproveedor: TStringField;
    ClientZQ_movimientosImporte: TFloatField;
    ClientZQ_movimientosorden_impresion: TIntegerField;
    ClientZQ_movimientosimpreso: TStringField;
    QRLabelDiaCheque1: TQRLabel;
    QRLabelanioCheque1: TQRLabel;
    QRBandDiferido: TQRBand;
    QRImageChequeDiferido: TQRImage;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabelNumeroLetraDiferido1: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabelmesChequedif: TQRLabel;
    QRLabelDiaChequeDif: TQRLabel;
    QRLabelanioChequedif: TQRLabel;
    EKVistaPreviaQR2: TEKVistaPreviaQR;
    RepChequeDiferido: TQuickRep;
    QRLabeldiaPD: TQRLabel;
    QRLabelmesPD: TQRLabel;
    QRLabelanioPD: TQRLabel;
    PBusqueda: TPanel;
    Label4: TLabel;
    StaticText3: TStaticText;
    Update_Cheques: TZQuery;
    ZQ_movimientosID: TIntegerField;
    ClientZQ_movimientosIdCheque: TIntegerField;
    ZQ_movimientosTIPOPROV: TStringField;
    ClientZQ_movimientostipoProv: TStringField;
    ZQ_movimientosNRO_CHEQUE_TRANSF: TStringField;
    ClientZQ_movimientosnro_cheque: TStringField;
    ZQ_Cuenta: TZQuery;
    ZQ_CuentaID_CUENTA: TIntegerField;
    ZQ_CuentaNOMBRE_CUENTA: TStringField;
    ZQ_CuentaMEDIO_DE_PAGO: TStringField;
    ZQ_CuentaNRO_CUENTA_BANCARIA: TStringField;
    ZQ_CuentaULTIMO_NRO: TIntegerField;
    ZQ_CuentaAUTONUMERAR: TStringField;
    ZQ_CuentaMEDIO_POR_DEFECTO: TIntegerField;
    ZQ_CuentaCOLOR_CONSILIADO: TStringField;
    ZQ_CuentaBUSQUEDA: TStringField;
    ZQ_movimientosNRO_MOVIMIENTO: TIntegerField;
    ZQ_movimientosCONCILIADO: TStringField;
    ZQ_movimientosNOMBRE_CONCEPTO: TStringField;
    ZQ_movimientosNRO_ORDEN: TIntegerField;
    ZQ_movimientosID_MEDIO: TIntegerField;
    ZQ_movimientosFECHA_CONCILIADO: TDateField;
    ZQ_movimientosANULADO_1: TStringField;
    ZQ_movimientosNRO_FACTURA: TStringField;
    ZQ_movimientosNRO_RECIBO: TStringField;
    ZQ_movimientosNRO_ORDEN_STRING: TStringField;
    ZQ_movimientosDESCRIPCION: TStringField;
    ClientZQ_movimientosconcepto: TStringField;
    ClientZQ_movimientosdenominacion: TStringField;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    QRLabelImporte1: TQRLabel;
    QRImageChequeCorriente2: TQRImage;
    QRLabelNumeroLetraCorriente2: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabelmesCheque2: TQRLabel;
    QRLabelDiaCheque2: TQRLabel;
    QRLabelanioCheque2: TQRLabel;
    QRLabelImporte2: TQRLabel;
    QRLabelProveedor2: TQRLabel;
    QRLabelProveedor1: TQRLabel;
    QRImageChequeCorriente3: TQRImage;
    QRLabelNumeroLetraCorriente3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabelmesCheque3: TQRLabel;
    QRLabelDiaCheque3: TQRLabel;
    QRLabelanioCheque3: TQRLabel;
    QRLabelImporte3: TQRLabel;
    QRLabelProveedor3: TQRLabel;
    QRImageChequeCorriente4: TQRImage;
    QRLabelNumeroLetraCorriente4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabelmesCheque4: TQRLabel;
    QRLabelDiaCheque4: TQRLabel;
    QRLabelanioCheque4: TQRLabel;
    QRLabelImporte4: TQRLabel;
    QRLabelProveedor4: TQRLabel;
    procedure btnChequeCorrienteClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridChequesDblClick(Sender: TObject);
    procedure ClientZQ_movimientosAfterScroll(DataSet: TDataSet);
    procedure btnchequeDiferidoClick(Sender: TObject);
    procedure llenarclient();
    procedure DBGridChequesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BtVistaPreviaDifClick(Sender: TObject);
    procedure BtVistaPreviaCorrClick(Sender: TObject);
    procedure ajustarMargenes();
    procedure QRBandCorrienteBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBandDiferidoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImpresionCheques: TFImpresionCheques;
  orden_impresion : integer;
  tipocheque : string;

const
  transaccion_cheques = 'TRANSACCION CHEQUES';

implementation

uses UDM;

{$R *.dfm}

procedure TFImpresionCheques.btnChequeCorrienteClick(Sender: TObject);
begin
  tipocheque:='CORRIENTE';
  ClientZQ_movimientos.Filtered:=true;

  if ClientZQ_movimientos.IsEmpty then
  begin
    ClientZQ_movimientos.Filtered:= false;
    exit;
  end;

  if dm.EKModelo.iniciar_transaccion(transaccion_cheques, []) then
  begin
    QRImageChequeCorriente1.Enabled:= false;
    QRImageChequeCorriente2.Enabled:= false;
    QRImageChequeCorriente3.Enabled:= false;
    QRImageChequeCorriente4.Enabled:= false;

    QRDBText2.Enabled:= false;
    RepChequesCorriente.Prepare;
    RepChequesCorriente.Print;

    if (Application.MessageBox('Verifique que los cheques se imprimieron correctamente?','Impresion Cheques',MB_YESNO+MB_ICONQUESTION) = IDYES) then
    begin
      ClientZQ_movimientos.First;

      while not ClientZQ_movimientos.Eof do
      begin
        Update_Cheques.ParamByName('impreso').AsString :='S';
        Update_Cheques.ParamByName('id').AsInteger := ClientZQ_movimientosIdCheque.AsInteger;
        Update_Cheques.ExecSQL;
        ClientZQ_movimientos.Next;
      end;

      if not DM.EKModelo.finalizar_transaccion(transaccion_cheques) then
        dm.EKModelo.cancelar_transaccion(transaccion_cheques);

    end
    else
      dm.EKModelo.cancelar_transaccion(transaccion_cheques);
  end;

  ClientZQ_movimientos.Filtered:= false;
  EKBusquedaAvanzada1.Abrir;
  llenarclient();
end;


procedure TFImpresionCheques.btnBuscarClick(Sender: TObject);
begin
if CuentaNro <> 0 then //si me logueo como un usuario que tiene asignada una cuenta
  begin
    ZQ_Cuenta.Filtered:=False;
    ZQ_Cuenta.Filter:=Format('ID_CUENTA=%d',[CuentaNro]);
    ZQ_Cuenta.Filtered:=True;
  end;

if EKBusquedaAvanzada1.Buscar then
  llenarclient();

end;


procedure TFImpresionCheques.btnSalirClick(Sender: TObject);
begin
close;
end;


procedure TFImpresionCheques.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla1.CargarConfigColumnas;
  dm.EKModelo.abrir(ZQ_Cuenta);
  ClientZQ_movimientos.CreateDataSet;
  ajustarMargenes;
end;


procedure TFImpresionCheques.DBGridChequesDblClick(
  Sender: TObject);
begin
  if (ClientZQ_movimientosorden_impresion.IsNull) then
  begin
    ClientZQ_movimientos.Edit;
    orden_impresion:=orden_impresion+1;
    ClientZQ_movimientosorden_impresion.AsInteger:=orden_impresion;
    ClientZQ_movimientosimpreso.AsString := 'S';
  end;
end;


procedure TFImpresionCheques.ClientZQ_movimientosAfterScroll(DataSet: TDataSet);
var
  texto_numero: string;
begin
//  EKNumeroALetras1.Numero := ClientZQ_movimientosImporte.AsFloat;
//  texto_numero:= UpperCase(EKNumeroALetras1.AsString)+'.--';
//
//  if tipocheque = 'CORRIENTE' then
//  BEGIN
//    QRLabelNumeroLetraCorriente1.Caption := '                          ' + texto_numero;
//    QRLabelDiaCheque.Caption := FormatDateTime('dd',ClientZQ_movimientosFecha_emision.AsDateTime);
//    QRLabelmesCheque.Caption := FormatDateTime('mmmm',ClientZQ_movimientosFecha_emision.AsDateTime);
//    QRLabelanioCheque.Caption := FormatDateTime('yyyy',ClientZQ_movimientosFecha_emision.AsDateTime);
//  END
//  ELSE //DIFERIDO
//  BEGIN
//    QRLabelNumeroLetraDiferido1.Caption := '                          ' + texto_numero;
//    QRLabelDiaChequeDif.Caption := FormatDateTime('dd',ClientZQ_movimientosFecha_emision.AsDateTime);
//    QRLabelmesChequedif.Caption := FormatDateTime('mmmm',ClientZQ_movimientosFecha_emision.AsDateTime);
//    QRLabelanioChequedif.Caption := FormatDateTime('yyyy',ClientZQ_movimientosFecha_emision.AsDateTime);
//
//    QRLabeldiaPD.Caption := FormatDateTime('dd',ClientZQ_movimientosFecha_Pd.AsDateTime);
//    QRLabelmesPD.Caption := FormatDateTime('mmmm',ClientZQ_movimientosFecha_Pd.AsDateTime);
//    QRLabelanioPD.Caption := FormatDateTime('yyyy',ClientZQ_movimientosFecha_Pd.AsDateTime);
//  END;
end;


procedure TFImpresionCheques.btnchequeDiferidoClick(Sender: TObject);
begin
  tipocheque:='DIFERIDO';
  ClientZQ_movimientos.Filtered:=true;

  if ClientZQ_movimientos.IsEmpty then
  begin
    ClientZQ_movimientos.Filtered:= false;
    exit;
  end;

  if dm.EKModelo.iniciar_transaccion(transaccion_cheques, []) then
  begin
    QRImageChequeDiferido.Enabled := false;
    QRDBText6.Enabled := false;
    RepChequeDiferido.Prepare;
    RepChequeDiferido.Print;

    if (Application.MessageBox('Verifique que los cheques se imprimieron correctamente?','Impresion Cheques',MB_YESNO+MB_ICONQUESTION) = IDYES) then
    begin
      ClientZQ_movimientos.First;

      while not ClientZQ_movimientos.Eof do
      begin
        Update_Cheques.ParamByName('impreso').AsString :='S';
        Update_Cheques.ParamByName('id').AsInteger := ClientZQ_movimientosIdCheque.AsInteger;
        Update_Cheques.ExecSQL;
        ClientZQ_movimientos.Next;
      end;

      if not DM.EKModelo.finalizar_transaccion(transaccion_cheques) then
        dm.EKModelo.cancelar_transaccion(transaccion_cheques);
    end
    else
      dm.EKModelo.cancelar_transaccion(transaccion_cheques);
  end;

  ClientZQ_movimientos.Filtered:= false;
  EKBusquedaAvanzada1.Abrir;
  llenarclient();
end;


procedure TFImpresionCheques.DBGridChequesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not ClientZQ_movimientos.IsEmpty then
  begin
    if (ClientZQ_movimientosimpreso.Value='S') then
    begin
      DBGridCheques.Canvas.Brush.Color :=StaticText3.Brush.Color;
      DBGridCheques.Canvas.Font.Color := clBlack;
      if (gdFocused in State) or (gdSelected in State) then
      begin
        DBGridCheques.Canvas.Font.Color := clBlack;
        DBGridCheques.Canvas.Font.Style := DBGridCheques.Canvas.Font.Style + [fsBold];
      end
    end
    else
    begin
      if (gdFocused in State) or (gdSelected in State) then
      begin
        DBGridCheques.Canvas.Brush.Color:=clBlue;
        DBGridCheques.Canvas.Font.Style := DBGridCheques.Canvas.Font.Style + [fsBold];
      end;
    end;
    DBGridCheques.DefaultDrawColumnCell(rect,datacol,column,state);
  end;
end;


procedure TFImpresionCheques.llenarclient;
begin
  ClientZQ_movimientos.EmptyDataSet;
  orden_impresion:=0;
  ZQ_movimientos.First;


  while not ZQ_movimientos.Eof do
  begin
    ClientZQ_movimientos.Append;
    ClientZQ_movimientosIdCheque.AsInteger := ZQ_movimientosID.AsInteger;
    ClientZQ_movimientosFecha_emision.AsDateTime := ZQ_movimientosFECHA.AsDateTime;
    ClientZQ_movimientosFecha_Pd.AsDateTime := ZQ_movimientosFECHA_MDC.AsDateTime;
    ClientZQ_movimientosproveedor.AsString := ZQ_movimientosAPELLIDO_Y_NOMBRE.AsString;
    ClientZQ_movimientosnro_cheque.AsString := ZQ_movimientosNRO_CHEQUE_TRANSF.AsString;
    ClientZQ_movimientosImporte.AsFloat := ZQ_movimientosIMPORTE.AsFloat;
    ClientZQ_movimientosimpreso.AsString := ZQ_movimientosIMPRESO.AsString;
    ClientZQ_movimientostipoProv.AsString := ZQ_movimientosTIPOPROV.AsString;
    ClientZQ_movimientosdenominacion.AsString:=ZQ_movimientosAPELLIDO_Y_NOMBRE.AsString;
    ClientZQ_movimientosconcepto.AsString:=ZQ_movimientosNOMBRE_CONCEPTO.AsString;
    ClientZQ_movimientos.Post;

    ZQ_movimientos.Next;
  end;
end;


procedure TFImpresionCheques.BtVistaPreviaDifClick(Sender: TObject);
begin

  tipocheque:='DIFERIDO';
  ClientZQ_movimientos.Filtered:=true;

  if ClientZQ_movimientos.IsEmpty then
  begin
    ClientZQ_movimientos.Filtered:= false;
    exit;
  end;

  QRImageChequeDiferido.Enabled := true;
  QRDBText6.Enabled := true;
  EKVistaPreviaQR2.VistaPrevia;
  ClientZQ_movimientos.Filtered:= false;
end;


procedure TFImpresionCheques.BtVistaPreviaCorrClick(Sender: TObject);
begin
  tipocheque:='CORRIENTE';
  ClientZQ_movimientos.Filtered:=true;

  if ClientZQ_movimientos.IsEmpty then
  begin
    ClientZQ_movimientos.Filtered:= false;
    exit;
  end;

  QRImageChequeCorriente1.Enabled:= true;
  QRImageChequeCorriente2.Enabled:= true;
  QRImageChequeCorriente3.Enabled:= true;
  QRImageChequeCorriente4.Enabled:= true;

  ajustarMargenes;
  QRDBText2.Enabled:= true;
  EKVistaPreviaQR1.VistaPrevia;
  ClientZQ_movimientos.Filtered:= false;  
end;


procedure TFImpresionCheques.ajustarMargenes();
var
  i: integer;
  desplazarIzquierda, desplazarArriba,izq,der: integer;
  AuxLabelMargenes : TQRLabel;
begin
//  desplazarIzquierda:= 0;
//  desplazarArriba:= 0;
//
//  dm.ZQ_Configuracion.Close;
//  dm.ZQ_Configuracion.Open;
//
//  if dm.ZQ_Configuracion.Locate('clave', VarArrayOf(['Cheque_AjustarIzq']), []) then //si existe la clave desplazarIzquierda se toma este valor para ajustar el margen izquierdo
//    desplazarIzquierda:= (dm.ZQ_Configuracion.fieldbyname('nivel').AsInteger);
//
//  if dm.ZQ_Configuracion.Locate('clave', VarArrayOf(['Cheque_AjustarArriba']), []) then //si existe la clave desplazarArriba se toma este valor para ajustar el margen superior
//    desplazarArriba:= (dm.ZQ_Configuracion.fieldbyname('nivel').AsInteger);

  for i := 1 to 4 do
  begin
    desplazarIzquierda:= 0;
    desplazarArriba:= 0;

    dm.ZQ_Configuracion.Close;
    dm.ZQ_Configuracion.Open;

    if dm.ZQ_Configuracion.Locate('clave', VarArrayOf(['Cheque_Izq'+IntToStr(i)]), []) then //si existe la clave desplazarIzquierda se toma este valor para ajustar el margen izquierdo
      desplazarIzquierda:= (dm.ZQ_Configuracion.fieldbyname('nivel').AsInteger);

    if dm.ZQ_Configuracion.Locate('clave', VarArrayOf(['Cheque_Arriba'+IntToStr(i)]), []) then //si existe la clave desplazarArriba se toma este valor para ajustar el margen superior
      desplazarArriba:= (dm.ZQ_Configuracion.fieldbyname('nivel').AsInteger);

    AuxLabelMargenes := TQRLabel(FImpresionCheques.FindComponent('QRLabelNumeroLetraCorriente'+IntToStr(i)));
    AuxLabelMargenes.Top := AuxLabelMargenes.Top + desplazarArriba;
    AuxLabelMargenes.Left := AuxLabelMargenes.Left + desplazarIzquierda;

    AuxLabelMargenes := TQRLabel(FImpresionCheques.FindComponent('QRLabelDiaCheque'+IntToStr(i)));
    AuxLabelMargenes.Top := AuxLabelMargenes.Top + desplazarArriba;
    AuxLabelMargenes.Left := AuxLabelMargenes.Left + desplazarIzquierda;

    AuxLabelMargenes := TQRLabel(FImpresionCheques.FindComponent('QRLabelmesCheque'+IntToStr(i)));
    AuxLabelMargenes.Top := AuxLabelMargenes.Top + desplazarArriba;
    AuxLabelMargenes.Left := AuxLabelMargenes.Left + desplazarIzquierda;

    AuxLabelMargenes := TQRLabel(FImpresionCheques.FindComponent('QRLabelanioCheque'+IntToStr(i)));
    AuxLabelMargenes.Top := AuxLabelMargenes.Top + desplazarArriba;
    AuxLabelMargenes.Left := AuxLabelMargenes.Left + desplazarIzquierda;

    AuxLabelMargenes := TQRLabel(FImpresionCheques.FindComponent('QRLabelImporte'+IntToStr(i)));
    AuxLabelMargenes.Top := AuxLabelMargenes.Top + desplazarArriba;
    AuxLabelMargenes.Left := AuxLabelMargenes.Left + desplazarIzquierda;

    AuxLabelMargenes := TQRLabel(FImpresionCheques.FindComponent('QRLabelProveedor'+IntToStr(i)));
    AuxLabelMargenes.Top := AuxLabelMargenes.Top + desplazarArriba;
    AuxLabelMargenes.Left := AuxLabelMargenes.Left + desplazarIzquierda;
  end;

//  for i := 0 to QRBandCorriente.ControlCount-1 do
//  begin
//    if QRBandCorriente.Controls[i].Name <> 'QRImageChequeCorriente1' then
//    begin
//      QRBandCorriente.Controls[i].Top:= QRBandCorriente.Controls[i].Top + desplazarArriba;
//      QRBandCorriente.Controls[i].Left:= QRBandCorriente.Controls[i].Left + desplazarIzquierda;
//    end;
//  end;
//
//  for i := 0 to QRBandDiferido.ControlCount-1 do
//  begin
//    if QRBandDiferido.Controls[i].Name <> 'QRImageChequeDiferido' then
//    begin
//      QRBandDiferido.Controls[i].Top:= QRBandDiferido.Controls[i].Top + desplazarArriba;
//      QRBandDiferido.Controls[i].Left:= QRBandDiferido.Controls[i].Left + desplazarIzquierda;
//    end;
//  end;
end;


procedure TFImpresionCheques.QRBandCorrienteBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  texto_numero: string;
  i : integer;
  AuxLabel : TQRLabel;

begin

  for i := 1 to 4 do
  begin
    AuxLabel := TQRLabel(FImpresionCheques.FindComponent('QRLabelNumeroLetraCorriente'+IntToStr(i)));
    AuxLabel.Enabled := false;

    AuxLabel := TQRLabel(FImpresionCheques.FindComponent('QRLabelDiaCheque'+IntToStr(i)));
    AuxLabel.Enabled := false;

    AuxLabel := TQRLabel(FImpresionCheques.FindComponent('QRLabelmesCheque'+IntToStr(i)));
    AuxLabel.Enabled := false;

    AuxLabel := TQRLabel(FImpresionCheques.FindComponent('QRLabelanioCheque'+IntToStr(i)));
    AuxLabel.Enabled := false;

    AuxLabel := TQRLabel(FImpresionCheques.FindComponent('QRLabelImporte'+IntToStr(i)));
    AuxLabel.Enabled := false;

    AuxLabel := TQRLabel(FImpresionCheques.FindComponent('QRLabelProveedor'+IntToStr(i)));
    AuxLabel.Enabled := false;
  end;


  ClientZQ_movimientos.First;
  while Not(ClientZQ_movimientos.Eof) do
  begin
    texto_numero := '';
    EKNumeroALetras1.Numero := ClientZQ_movimientosImporte.AsFloat;
    texto_numero:= UpperCase(EKNumeroALetras1.AsString)+'.--';

    i := ClientZQ_movimientosorden_impresion.AsInteger;
    AuxLabel := TQRLabel(FImpresionCheques.FindComponent('QRLabelNumeroLetraCorriente'+IntToStr(i)));
    AuxLabel.Enabled := true;
    AuxLabel.Caption := '                          ' + texto_numero;

    AuxLabel := TQRLabel(FImpresionCheques.FindComponent('QRLabelDiaCheque'+IntToStr(i)));
    AuxLabel.Enabled := true;
    AuxLabel.Caption := FormatDateTime('dd',ClientZQ_movimientosFecha_emision.AsDateTime);

    AuxLabel := TQRLabel(FImpresionCheques.FindComponent('QRLabelmesCheque'+IntToStr(i)));
    AuxLabel.Enabled := true;
    AuxLabel.Caption := FormatDateTime('mmmm',ClientZQ_movimientosFecha_emision.AsDateTime);

    AuxLabel := TQRLabel(FImpresionCheques.FindComponent('QRLabelanioCheque'+IntToStr(i)));
    AuxLabel.Enabled := true;
    AuxLabel.Caption := FormatDateTime('yyyy',ClientZQ_movimientosFecha_emision.AsDateTime);

    AuxLabel := TQRLabel(FImpresionCheques.FindComponent('QRLabelImporte'+IntToStr(i)));
    AuxLabel.Enabled := true;
    AuxLabel.Caption := FormatFloat('$ ###,###,###,##0.00', ClientZQ_movimientosImporte.AsFloat);

    AuxLabel := TQRLabel(FImpresionCheques.FindComponent('QRLabelProveedor'+IntToStr(i)));
    AuxLabel.Enabled := true;
    AuxLabel.Caption := ClientZQ_movimientosproveedor.AsString;

    
    ClientZQ_movimientos.Next;
  end;
end;


procedure TFImpresionCheques.QRBandDiferidoBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  texto_numero: string;
begin
  EKNumeroALetras1.Numero := ClientZQ_movimientosImporte.AsFloat;
  texto_numero:= UpperCase(EKNumeroALetras1.AsString)+'.--';

  QRLabelNumeroLetraDiferido1.Caption := '                          ' + texto_numero;
  QRLabelDiaChequeDif.Caption := FormatDateTime('dd',ClientZQ_movimientosFecha_emision.AsDateTime);
  QRLabelmesChequedif.Caption := FormatDateTime('mmmm',ClientZQ_movimientosFecha_emision.AsDateTime);
  QRLabelanioChequedif.Caption := FormatDateTime('yyyy',ClientZQ_movimientosFecha_emision.AsDateTime);

  QRLabeldiaPD.Caption := FormatDateTime('dd',ClientZQ_movimientosFecha_Pd.AsDateTime);
  QRLabelmesPD.Caption := FormatDateTime('mmmm',ClientZQ_movimientosFecha_Pd.AsDateTime);
  QRLabelanioPD.Caption := FormatDateTime('yyyy',ClientZQ_movimientosFecha_Pd.AsDateTime);
end;

procedure TFImpresionCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
end;

end.
