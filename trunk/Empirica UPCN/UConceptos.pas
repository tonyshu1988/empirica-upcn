unit UConceptos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ComCtrls, dxtree, dxdbtree, StdCtrls,
  ExtCtrls, DBCtrls, Mask, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, EKListadoSQL, Grids, DBGrids, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt, EKOrdenarGrilla;

type
  TFConceptos = class(TForm)
    pDatos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbNombreConcepto: TDBEdit;
    dbCodigoConcepto: TDBEdit;
    ZQ_IE_Conceptos: TZQuery;
    DS_IE_Conceptos: TDataSource;
    Grilla: TDBGrid;
    ZQ_IE_ConceptosID_CONCEPTO: TIntegerField;
    ZQ_IE_ConceptosCOD_CORTO: TStringField;
    ZQ_IE_ConceptosNOMBRE_CONCEPTO: TStringField;
    ZQ_IE_ConceptosBAJA: TStringField;
    ZQ_IE_ConceptosIMPORTE: TFloatField;
    dbImporte: TDBEdit;
    Label3: TLabel;
    dxBarABM: TdxBarManager;
    BtNuevo: TdxBarLargeButton;
    BtModificar: TdxBarLargeButton;
    btBaja: TdxBarLargeButton;
    btBuscar: TdxBarLargeButton;
    BtGuardar: TdxBarLargeButton;
    BtCancelar: TdxBarLargeButton;
    btReactivar: TdxBarLargeButton;
    Bt_Seleccionar: TdxBarLargeButton;
    btBajar: TdxBarLargeButton;
    bt_salir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    PBusqueda: TPanel;
    Label4: TLabel;
    StaticText3: TStaticText;
    Panel1: TPanel;
    RepCptos: TQuickRep;
    QRBand5: TQRBand;
    QRDBImage1: TQRDBImage;
    QRLabel11: TQRLabel;
    RepCptos_Reporte_Titulo_2: TQRLabel;
    RepCptos_Reporte_Titulo_1: TQRLabel;
    QRBandDetalle: TQRBand;
    QRDBText30: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRChildBand2: TQRChildBand;
    QRLabel27: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand7: TQRBand;
    QRLabel35: TQRLabel;
    QRlblFechaHoy: TQRLabel;
    QRLabel24: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    QRExpr15: TQRExpr;
    EKVistaPrevia: TEKVistaPreviaQR;
    btnImprimir: TdxBarLargeButton;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    procedure FormCreate(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure BtNuevoClick(Sender: TObject);
    procedure BtModificarClick(Sender: TObject);
    procedure btBajaClick(Sender: TObject);
    procedure btReactivarClick(Sender: TObject);
    function validarcampos():boolean;
    procedure BtGuardarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bt_salirClick(Sender: TObject);
    procedure GrillaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConceptos: TFConceptos;

const
  Transaccion_Conceptos='ABM Conceptos';
implementation

uses UDM;

{$R *.dfm}

procedure TFConceptos.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla1.CargarConfigColunmas;
  dm.EKModelo.abrir(ZQ_IE_Conceptos);
end;

procedure TFConceptos.btBuscarClick(Sender: TObject);
begin
  EKBusquedaAvanzada1.Buscar;
  //Así ve el ultimo id generado y no llora.
  ZQ_IE_Conceptos.Last;
end;

procedure TFConceptos.BtNuevoClick(Sender: TObject);
begin
 if dm.EKModelo.iniciar_transaccion(Transaccion_Conceptos, [ZQ_IE_Conceptos]) then
  begin
    Grilla.Enabled := false;
    pDatos.Visible := true;
    ZQ_IE_Conceptos.Append;
    ZQ_IE_ConceptosBAJA.AsString:='N';
    ZQ_IE_ConceptosIMPORTE.Value :=0;
    dbCodigoConcepto.SetFocus;
    GrupoGuardarCancelar.Enabled := true;
    GrupoEditando.Enabled := false;
  end;
end;

procedure TFConceptos.BtModificarClick(Sender: TObject);
begin
if ZQ_IE_Conceptos.IsEmpty then exit;

 if dm.EKModelo.iniciar_transaccion(Transaccion_Conceptos, [ZQ_IE_Conceptos]) then
  begin
    Grilla.Enabled := false;
    pDatos.Visible := true;
    ZQ_IE_Conceptos.Edit;
    dbCodigoConcepto.SetFocus;
    GrupoGuardarCancelar.Enabled := true;
    GrupoEditando.Enabled := false;
  end;
end;

procedure TFConceptos.btBajaClick(Sender: TObject);
begin
  if (ZQ_IE_Conceptos.IsEmpty) or (ZQ_IE_ConceptosBAJA.AsString='S') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja el Concepto?'), 'ABM Conceptos', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(Transaccion_Conceptos, [ZQ_IE_Conceptos]) then
    begin
      ZQ_IE_Conceptos.Edit;
      ZQ_IE_ConceptosBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(Transaccion_Conceptos)) then
      dm.EKModelo.cancelar_transaccion(Transaccion_Conceptos);
  end;
end;

procedure TFConceptos.btReactivarClick(Sender: TObject);
begin
  if (ZQ_IE_Conceptos.IsEmpty) or (ZQ_IE_ConceptosBAJA.AsString='N') then
    exit;

  if (application.MessageBox(pchar('¿Desea Reactivar el Concepto?'), 'ABM Conceptos', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(Transaccion_Conceptos, [ZQ_IE_Conceptos]) then
    begin
      ZQ_IE_Conceptos.Edit;
      ZQ_IE_ConceptosBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(Transaccion_Conceptos)) then
      dm.EKModelo.cancelar_transaccion(Transaccion_Conceptos);
  end;
end;


function TFConceptos.validarcampos():boolean;
begin
result := true;

   if (dbCodigoConcepto.Text = '') then
    begin
      Application.MessageBox('El campo "Código" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      dbCodigoConcepto.SetFocus;
      result := false;
      exit;
    end;
  if (dbNombreConcepto.Text = '') then
    begin
      Application.MessageBox('El campo "Nombre" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      dbNombreConcepto.SetFocus;
      result := false;
      exit;
    end;
   if (dbImporte.Text='') then
    begin
      Application.MessageBox('El campo "Importe" es incorrecto, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      dbImporte.SetFocus;
      result := false;
      exit;
    end;

end;

procedure TFConceptos.BtGuardarClick(Sender: TObject);
begin
if validarcampos() then
 begin
     if DM.EKModelo.finalizar_transaccion(Transaccion_Conceptos) then
      begin
        pDatos.Visible:=false;
        Grilla.Enabled := true;
        GrupoEditando.Enabled := true;
        GrupoGuardarCancelar.Enabled := false;
        ZQ_IE_Conceptos.Refresh;
      end;
 end
end;

procedure TFConceptos.BtCancelarClick(Sender: TObject);
begin
  DM.EKModelo.cancelar_transaccion(Transaccion_Conceptos);
  pDatos.Visible:=false;
  Grilla.Enabled := true;
  GrupoEditando.Enabled := true;
  GrupoGuardarCancelar.Enabled := false;
  ZQ_IE_Conceptos.Refresh;
end;

procedure TFConceptos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(Transaccion_Conceptos) then
  begin
    if not (application.MessageBox(pchar('La Transacción esta activa, hay cambios sin guardar. Los Cancela?'), 'Pregunta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose := False
    else
      dm.EKModelo.cancelar_transaccion(Transaccion_Conceptos);
  end;
end;

procedure TFConceptos.bt_salirClick(Sender: TObject);
begin
  close;
end;

procedure TFConceptos.GrillaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if not ZQ_IE_Conceptos.IsEmpty then
    begin
       if (ZQ_IE_ConceptosBAJA.Value='S') then
          begin
           Grilla.Canvas.Brush.Color :=StaticText3.Brush.Color;
           Grilla.Canvas.Font.Color := clBlack;
           Grilla.Canvas.Font.Style := Grilla.Canvas.Font.Style + [fsBold];
           if (gdFocused in State) or (gdSelected in State) then
             begin
             Grilla.Canvas.Font.Color := clwhite;
             end
          end
       else
          begin
            if (gdFocused in State) or (gdSelected in State) then
             begin
               Grilla.Canvas.Font.Color := clwhite;
               Grilla.Canvas.Brush.Color:=clBlue;
               Grilla.Canvas.Font.Style := Grilla.Canvas.Font.Style + [fsBold];
             end;
          end;
       Grilla.DefaultDrawColumnCell(rect,datacol,column,state);
    end;

end;

procedure TFConceptos.btnImprimirClick(Sender: TObject);
begin
  if ZQ_IE_Conceptos.IsEmpty then
    exit;

  QRlblFechaHoy.Caption:= FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  dm.VariablesReportes(RepCptos);

  EKVistaPrevia.VistaPrevia;
end;

procedure TFConceptos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
end;

end.
