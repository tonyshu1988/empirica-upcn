unit UABMProveedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, StdCtrls, DBCtrls, Mask, ExtCtrls, Grids,
  DBGrids, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSqlUpdate,
  EKBusquedaAvanzada;

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
    Label7: TLabel;
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
    ZQ_IE_ProveedoresID_TIPO_DOCUMENTO: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    ZQ_TipoDocumento: TZQuery;
    ZQ_TipoDocumentoID_TIPO_DOCUMENTO: TIntegerField;
    ZQ_TipoDocumentoDECRIPCION: TStringField;
    DS_TipoDocumento: TDataSource;
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    PBusqueda: TPanel;
    Label4: TLabel;
    StaticText3: TStaticText;
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

uses UDM;

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
  if DM.EKModelo.finalizar_transaccion(transaccion_ABMProveedores) then
  begin
    Panel_edicion.Enabled:=false;
    DBGridProveedores.Enabled := true;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    ZQ_IE_Proveedores.Refresh;
  end;
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
end;

procedure TFABMProveedores.DBGridProveedoresDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not ZQ_IE_Proveedores.IsEmpty then
    begin
       if (ZQ_IE_ProveedoresBAJA.Value='S') then
          begin
           DBGridProveedores.Canvas.Brush.Color :=$007A7AFE;
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

end.
