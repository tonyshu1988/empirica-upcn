unit UABMProveedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, StdCtrls, DBCtrls, Mask, ExtCtrls, Grids,
  DBGrids, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSqlUpdate,
  EKBusquedaAvanzada, QuickRpt, QRCtrls, EKVistaPreviaQR;

type
  TFABMProveedores = class(TForm)
    DBGridProveedores: TDBGrid;
    Panel_edicion: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label16: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    DBENombreApellido: TDBEdit;
    DBENombreFantasia: TDBEdit;
    DBETelefono: TDBEdit;
    DBEDireccion: TDBEdit;
    DBENroDocumento: TDBEdit;
    DBEEmail: TDBEdit;
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
    PanelContenedor: TPanel;
    ZQ_IE_Proveedores: TZQuery;
    DS_IE_Proveedores: TDataSource;
    ZQ_IE_ProveedoresNRO_PROVEEDOR: TIntegerField;
    ZQ_IE_ProveedoresAPELLIDO_Y_NOMBRE: TStringField;
    ZQ_IE_ProveedoresNOMBRE_FANTASIA: TStringField;
    ZQ_IE_ProveedoresDIRECCION: TStringField;
    ZQ_IE_ProveedoresNRO_DOCUMENTO: TStringField;
    ZQ_IE_ProveedoresTELEFONOS: TStringField;
    ZQ_IE_ProveedoresEMAIL: TStringField;
    ZQ_IE_ProveedoresBAJA: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    ZQ_TipoDocumento: TZQuery;
    DS_TipoDocumento: TDataSource;
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    PBusqueda: TPanel;
    Label4: TLabel;
    StaticText3: TStaticText;
    btImprimir: TdxBarLargeButton;
    ReporteProveedores: TQuickRep;
    QRBand7: TQRBand;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRBand9: TQRBand;
    QRLabel35: TQRLabel;
    fechaHoy: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand10: TQRBand;
    QRDBText53: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText69: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel18: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRBand1: TQRBand;
    QRSysData4: TQRSysData;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    ZQ_TipoDocumentoTIPO_DOCUMENTO: TIntegerField;
    ZQ_TipoDocumentoDESCRIPCION: TStringField;
    ZQ_IE_ProveedoresTIPO_DOCUMENTO: TStringField;
    procedure bt_salirClick(Sender: TObject);
    procedure BtNuevoClick(Sender: TObject);
    procedure BtModificarClick(Sender: TObject);
    procedure btBajaClick(Sender: TObject);
    procedure btReactivarClick(Sender: TObject);
    procedure BtGuardarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridProveedoresDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btImprimirClick(Sender: TObject);
    function validarcampos():boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABMProveedores: TFABMProveedores;

const

  transaccion_ABMProveedores = 'ABM PROVEEDORES';

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFABMProveedores.bt_salirClick(Sender: TObject);
begin
close;
end;

procedure TFABMProveedores.BtNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABMProveedores, [ZQ_IE_Proveedores]) then
  begin
    DBGridProveedores.Enabled := false;
    Panel_edicion.Enabled:=true;
    ZQ_IE_Proveedores.Append;
    DBENombreApellido.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;

end;

procedure TFABMProveedores.BtModificarClick(Sender: TObject);
begin
  if ZQ_IE_Proveedores.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABMProveedores, [ZQ_IE_Proveedores]) then
  begin
    Panel_edicion.Enabled:=true;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;

end;

procedure TFABMProveedores.btBajaClick(Sender: TObject);
begin
  if ZQ_IE_Proveedores.IsEmpty then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja el Proveedor ?'), 'ABM Proveedores', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMProveedores, [ZQ_IE_Proveedores]) then
    begin
      ZQ_IE_Proveedores.Edit;
      ZQ_IE_ProveedoresBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMProveedores)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMProveedores);
  end;
end;

procedure TFABMProveedores.btReactivarClick(Sender: TObject);
begin
  if ZQ_IE_Proveedores.IsEmpty then
    exit;

  if (application.MessageBox(pchar('¿Desea Reactivar el Proveedor ?'), 'ABM Proveedores', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMProveedores, [ZQ_IE_Proveedores]) then
    begin
      ZQ_IE_Proveedores.Edit;
      ZQ_IE_ProveedoresBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMProveedores)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMProveedores);
  end;
end;

procedure TFABMProveedores.BtGuardarClick(Sender: TObject);
begin
if validarcampos() then
 begin
  if DM.EKModelo.finalizar_transaccion(transaccion_ABMProveedores) then
  begin
    Panel_edicion.Enabled:=false;
    DBGridProveedores.Enabled := true;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    ZQ_IE_Proveedores.Refresh;
  end;
 end
end;

procedure TFABMProveedores.BtCancelarClick(Sender: TObject);
begin
  Panel_edicion.Enabled:=FALSE;
  DBGridProveedores.Enabled := true;
  dm.EKModelo.cancelar_transaccion(transaccion_ABMProveedores);
  GrupoEditando.Enabled := true;
  GrupoGuardarCancelar.Enabled := false;
end;

procedure TFABMProveedores.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_ABMProveedores) then
  begin
    if not (application.MessageBox(pchar('La Transacción esta activa, hay cambios sin guardar. Los Cancela?'), 'Pregunta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose := False
    else
      dm.EKModelo.cancelar_transaccion(transaccion_ABMProveedores);
  end;

end;

procedure TFABMProveedores.btBuscarClick(Sender: TObject);
begin
EKBusquedaAvanzada1.Buscar;
end;

procedure TFABMProveedores.FormCreate(Sender: TObject);
begin
dm.EKModelo.abrir(ZQ_TipoDocumento);
EKBusquedaAvanzada1.Abrir;
end;

procedure TFABMProveedores.DBGridProveedoresDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not ZQ_IE_Proveedores.IsEmpty then
    begin
       if (ZQ_IE_ProveedoresBAJA.Value='S') then
          begin
           DBGridProveedores.Canvas.Brush.Color :=StaticText3.Brush.Color;
           DBGridProveedores.Canvas.Font.Color := clBlack;
           DBGridProveedores.Canvas.Font.Style := DBGridProveedores.Canvas.Font.Style + [fsBold];
           if (gdFocused in State) or (gdSelected in State) then
             begin
             DBGridProveedores.Canvas.Font.Color := clwhite;
             end
          end
       else
          begin
            if (gdFocused in State) or (gdSelected in State) then
             begin
               DBGridProveedores.Canvas.Font.Color := clwhite;
               DBGridProveedores.Canvas.Brush.Color:=clBlue;
               DBGridProveedores.Canvas.Font.Style := DBGridProveedores.Canvas.Font.Style + [fsBold];
             end;
          end;
       DBGridProveedores.DefaultDrawColumnCell(rect,datacol,column,state);
    end;

end;

procedure TFABMProveedores.btImprimirClick(Sender: TObject);
begin
if not ZQ_IE_Proveedores.IsEmpty then
  EKVistaPreviaQR1.VistaPrevia;
end;


function TFABMProveedores.validarcampos():boolean;
begin
result := true;

   if (DBENombreApellido.Text = '') then
    begin
      Application.MessageBox('El campo "Nombre y Apellido" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      DBENombreApellido.SetFocus;
      result := false;
      exit;
    end;
  if (DBENombreFantasia.Text = '') then
    begin
      Application.MessageBox('El campo "Nombre de Fantasía" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      DBENombreFantasia.SetFocus;
      result := false;
      exit;
    end;

end;

end.
