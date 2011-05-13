unit UABM_TipoEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, EKDBDateTimePicker, Mask, dxBar,
  dxBarExtItems, Grids, DBGrids, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, EKOrdenarGrilla;

type
  TFABM_TipoEmpresa = class(TForm)
    PContenedor: TPanel;
    DBGridTipoEmpresa: TDBGrid;
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
    PanelEdicion: TPanel;
    Label1: TLabel;
    DBEApellidoNombre: TDBEdit;
    ZQ_TipoEmpresa: TZQuery;
    ZQ_TipoEmpresaID_TIPO_EMPRESA: TIntegerField;
    ZQ_TipoEmpresaDESCRIPCION: TStringField;
    DS_TipoEmpresa: TDataSource;
    ZQ_TipoEmpresaBAJA: TStringField;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGridTipoEmpresaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_TipoEmpresa: TFABM_TipoEmpresa;

const
  Transaccion_ABM_TipoEmpresa = 'ABM TIPO EMPRESA';

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFABM_TipoEmpresa.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(Transaccion_ABM_TipoEmpresa, [ZQ_TipoEmpresa]) then
  begin
    DBGridTipoEmpresa.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_TipoEmpresa.Append;
    ZQ_TipoEmpresaBAJA.AsString:= 'N';
    DBEApellidoNombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_TipoEmpresa.btnModificarClick(Sender: TObject);
begin
  if ZQ_TipoEmpresa.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(Transaccion_ABM_TipoEmpresa, [ZQ_TipoEmpresa]) then
  begin
    DBGridTipoEmpresa.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_TipoEmpresa.Edit;
    DBEApellidoNombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_TipoEmpresa.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
   Perform(WM_NEXTDLGCTL, 0, 0);

   if (trim(DBEApellidoNombre.Text) = '') then
    begin
      Application.MessageBox('El campo "Tipo Empresa" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      DBEApellidoNombre.SetFocus;
      exit;
    end;

  try
    if DM.EKModelo.finalizar_transaccion(Transaccion_ABM_TipoEmpresa) then
    begin
      DBGridTipoEmpresa.Enabled:= true;
      DBGridTipoEmpresa.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      PanelEdicion.Visible := false;
      recNo:= ZQ_TipoEmpresa.RecNo;
      ZQ_TipoEmpresa.Refresh;
      ZQ_TipoEmpresa.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_TipoEmpresa, lblCantidadRegistros);  
end;


procedure TFABM_TipoEmpresa.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(Transaccion_ABM_TipoEmpresa) then
  begin
    DBGridTipoEmpresa.Enabled:=true;
    DBGridTipoEmpresa.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    PanelEdicion.Visible := false;
  end;
end;


procedure TFABM_TipoEmpresa.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFABM_TipoEmpresa.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_TipoEmpresa.IsEmpty) OR (ZQ_TipoEmpresaBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja el "Tipo Empresa" seleccionado?'), 'ABM Tipo Empresa', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(Transaccion_ABM_TipoEmpresa, [ZQ_TipoEmpresa]) then
    begin
      ZQ_TipoEmpresa.Edit;
      ZQ_TipoEmpresaBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(Transaccion_ABM_TipoEmpresa)) then
      dm.EKModelo.cancelar_transaccion(Transaccion_ABM_TipoEmpresa);

    recNo:= ZQ_TipoEmpresa.RecNo;
    ZQ_TipoEmpresa.Refresh;
    ZQ_TipoEmpresa.RecNo:= recNo;
  end;
end;


procedure TFABM_TipoEmpresa.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_TipoEmpresa.IsEmpty) OR (ZQ_TipoEmpresaBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar el "Tipo Empresa" seleccionado?'), 'ABM Tipo Empresa', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(Transaccion_ABM_TipoEmpresa, [ZQ_TipoEmpresa]) then
    begin
      ZQ_TipoEmpresa.Edit;
      ZQ_TipoEmpresaBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(Transaccion_ABM_TipoEmpresa)) then
      dm.EKModelo.cancelar_transaccion(Transaccion_ABM_TipoEmpresa);

    recNo:= ZQ_TipoEmpresa.RecNo;
    ZQ_TipoEmpresa.Refresh;
    ZQ_TipoEmpresa.RecNo:= recNo;
  end;
end;


procedure TFABM_TipoEmpresa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(Transaccion_ABM_TipoEmpresa);
end;


procedure TFABM_TipoEmpresa.DBGridTipoEmpresaDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_TipoEmpresa.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridTipoEmpresa, ZQ_TipoEmpresaBAJA.AsString, Rect, DataCol, Column, State);
end;


procedure TFABM_TipoEmpresa.FormCreate(Sender: TObject);
begin
  StaticTxtBaja.Color:= FPrincipal.baja;
  dm.EKModelo.abrir(ZQ_TipoEmpresa);

  dm.mostrarCantidadRegistro(ZQ_TipoEmpresa, lblCantidadRegistros);
end;

end.
