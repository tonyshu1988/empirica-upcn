unit UABM_Articulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFABM_Articulo = class(TForm)
    PanelFondo: TPanel;
    PanelEdicion: TPanel;
    Label4: TLabel;
    DBEDescripcion: TDBEdit;
    PanelGrilla: TPanel;
    DBGridArticulo: TDBGrid;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    ZQ_Articulo: TZQuery;
    DS_Articulo: TDataSource;
    ZQ_ArticuloID_ARTICULO: TIntegerField;
    ZQ_ArticuloID_TIPO_ARTICULO: TIntegerField;
    ZQ_ArticuloDESCRIPCION: TStringField;
    ZQ_ArticuloBAJA: TStringField;
    ZQ_TipoArt: TZQuery;
    ZQ_TipoArtID_TIPO_ARTICULO: TIntegerField;
    ZQ_TipoArtDESCRIPCION: TStringField;
    ZQ_TipoArtBAJA: TStringField;
    DS_TipoArt: TDataSource;
    ZQ_ArticuloTipoArticulo: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridArticuloDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_Articulo: TFABM_Articulo;

const
  transaccion_ABM = 'ABM ARTICULO';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFABM_Articulo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_Articulo.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_Articulo.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Articulo]) then
  begin
    DBGridArticulo.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Articulo.Append;

    DBEDescripcion.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_Articulo.btnModificarClick(Sender: TObject);
begin
  if ZQ_Articulo.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Articulo]) then
  begin
    DBGridArticulo.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Articulo.Edit;

    DBEDescripcion.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_Articulo.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Articulo.IsEmpty) OR (ZQ_ArticuloBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja la Medida seleccionada?'), 'ABM Articulo Medida', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Articulo]) then
    begin
      ZQ_Articulo.Edit;
      ZQ_ArticuloBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Articulo.RecNo;
    ZQ_Articulo.Refresh;
    ZQ_Articulo.RecNo:= recNo;
  end;
end;

procedure TFABM_Articulo.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Articulo.IsEmpty) OR (ZQ_ArticuloBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar la Medida seleccionado?'), 'ABM Articulo Medida', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Articulo]) then
    begin
      ZQ_Articulo.Edit;
      ZQ_ArticuloBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Articulo.RecNo;
    ZQ_Articulo.Refresh;
    ZQ_Articulo.RecNo:= recNo;
  end;
end;

procedure TFABM_Articulo.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if (DBLookupComboBox1.Text = '') then
  begin
    Application.MessageBox(pchar('El campo Tipo Articulo se encuentra vacío, Verifique'), 'Validación', MB_OK+MB_ICONINFORMATION);
    DBLookupComboBox1.SetFocus;
    Exit;
  end;

  if (DBEDescripcion.Text = '') then
  begin
    Application.MessageBox(pchar('El campo Descripción se encuentra vacío, Verifique'), 'Validación', MB_OK+MB_ICONINFORMATION);
    DBEDescripcion.SetFocus;
    Exit;
  end;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridArticulo.Enabled := true;
      DBGridArticulo.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      recNo:= ZQ_Articulo.RecNo;
      ZQ_Articulo.Refresh;
      ZQ_Articulo.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end
end;


procedure TFABM_Articulo.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridArticulo.Enabled := true;
    DBGridArticulo.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;
end;


procedure TFABM_Articulo.FormCreate(Sender: TObject);
begin
  ZQ_Articulo.Close;
  ZQ_Articulo.open;
end;

procedure TFABM_Articulo.DBGridArticuloDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_Articulo.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridArticulo, ZQ_ArticuloBAJA.AsString, Rect, DataCol, Column, State);
end;

end.
