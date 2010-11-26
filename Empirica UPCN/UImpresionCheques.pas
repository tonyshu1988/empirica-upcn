unit UImpresionCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, QuickRpt, QRCtrls, Grids, DBGrids, ExtCtrls, jpeg,
  dxBar, dxBarExtItems, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKBusquedaAvanzada, EKNumeroATexto, EKVistaPreviaQR, DBClient, ZSqlUpdate;

type
  TFImpresionCheques = class(TForm)
    PanelContenedor: TPanel;
    DBGridCheques: TDBGrid;
    RepChequesCorriente: TQuickRep;
    QRBand17: TQRBand;
    dxBarABM: TdxBarManager;
    btnNuevo: TdxBarLargeButton;
    btnchequeDiferido: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnBuscar: TdxBarLargeButton;
    btnChequeCorriente: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    QRImageCheque: TQRImage;
    QRDBText1: TQRDBText;
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
    QRDBText4: TQRDBText;
    QRLabelNumeroLetracorriente: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabelmesCheque: TQRLabel;
    ZQ_movimientosIMPRESO: TStringField;
    ClientZQ_movimientos: TClientDataSet;
    ClientZQ_movimientosFecha_emision: TDateTimeField;
    ClientZQ_movimientosFecha_Pd: TDateTimeField;
    ClientZQ_movimientosproveedor: TStringField;
    ClientZQ_movimientosImporte: TFloatField;
    ClientZQ_movimientosorden_impresion: TIntegerField;
    ClientZQ_movimientosimpreso: TStringField;
    QRLabelDiaCheque: TQRLabel;
    QRLabelanioCheque: TQRLabel;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabelNumeroLetraDiferido: TQRLabel;
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
    ZUpdateSQL1: TZUpdateSQL;
    ZQ_movimientosTIPOPROV: TStringField;
    ClientZQ_movimientostipoProv: TStringField;
    ZQ_movimientosNRO_CHEQUE_TRANSF: TStringField;
    ClientZQ_movimientosnro_cheque: TStringField;
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
    procedure RepChequeDiferidoEndPage(Sender: TCustomQuickRep);
    procedure RepChequesCorrienteEndPage(Sender: TCustomQuickRep);
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

  if dm.EKModelo.iniciar_transaccion(transaccion_cheques, [ZQ_movimientos]) then
  begin
    ZQ_movimientos.Edit;

    QRImageCheque.Enabled:= true;
    QRDBText2.Enabled:= true;
    EKVistaPreviaQR1.VistaPrevia;
    if (Application.MessageBox('Los cheques se imprimieron correctamente?','Impresion Cheques',MB_YESNO+MB_ICONQUESTION) = IDYES) then
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
if EKBusquedaAvanzada1.Buscar then
  llenarclient();

end;

procedure TFImpresionCheques.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFImpresionCheques.FormCreate(Sender: TObject);
begin
  ClientZQ_movimientos.CreateDataSet;
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

procedure TFImpresionCheques.ClientZQ_movimientosAfterScroll(
  DataSet: TDataSet);
begin
EKNumeroALetras1.Numero := ClientZQ_movimientosImporte.AsFloat;

  if tipocheque = 'CORRIENTE' then
  BEGIN
    QRLabelNumeroLetracorriente.Caption := UpperCase(EKNumeroALetras1.AsString);
    QRLabelDiaCheque.Caption := FormatDateTime('dd',ClientZQ_movimientosFecha_emision.AsDateTime);
    QRLabelmesCheque.Caption := FormatDateTime('mmmm',ClientZQ_movimientosFecha_emision.AsDateTime);
    QRLabelanioCheque.Caption := FormatDateTime('yyyy',ClientZQ_movimientosFecha_emision.AsDateTime);
  END
  ELSE
  BEGIN
    QRLabelNumeroLetraDiferido.Caption := UpperCase(EKNumeroALetras1.AsString);
    QRLabelDiaChequeDif.Caption := FormatDateTime('dd',ClientZQ_movimientosFecha_emision.AsDateTime);
    QRLabelmesChequedif.Caption := FormatDateTime('mmmm',ClientZQ_movimientosFecha_emision.AsDateTime);
    QRLabelanioChequedif.Caption := FormatDateTime('yyyy',ClientZQ_movimientosFecha_emision.AsDateTime);

    QRLabeldiaPD.Caption := FormatDateTime('dd',ClientZQ_movimientosFecha_Pd.AsDateTime);
    QRLabelmesPD.Caption := FormatDateTime('mmmm',ClientZQ_movimientosFecha_Pd.AsDateTime);
    QRLabelanioPD.Caption := FormatDateTime('yyyy',ClientZQ_movimientosFecha_Pd.AsDateTime);
  END;
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

  if dm.EKModelo.iniciar_transaccion(transaccion_cheques, [ZQ_movimientos]) then
  begin
    ZQ_movimientos.Edit;

    QRImage1.Enabled := true;
    QRDBText6.Enabled := true;
    EKVistaPreviaQR2.VistaPrevia;
    if (Application.MessageBox('Los cheques se imprimieron correctamente?','Impresion Cheques',MB_YESNO+MB_ICONQUESTION) = IDYES) then
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
    ClientZQ_movimientos.Post;

    ZQ_movimientos.Next;
  end;
end;

procedure TFImpresionCheques.RepChequeDiferidoEndPage(
  Sender: TCustomQuickRep);
begin
 QRImage1.Enabled := false;
 QRDBText6.Enabled := false;
end;

procedure TFImpresionCheques.RepChequesCorrienteEndPage(
  Sender: TCustomQuickRep);
begin
QRImageCheque.Enabled:= false;
QRDBText2.Enabled:= false;
end;

end.
