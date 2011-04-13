unit UABM_TipoEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, EKDBDateTimePicker, Mask, dxBar,
  dxBarExtItems, Grids, DBGrids, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

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
    Label16: TLabel;
    StaticText3: TStaticText;
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
begin
   Perform(WM_NEXTDLGCTL, 0, 0);

   if (trim(DBEApellidoNombre.Text) = '') then
    begin
      Application.MessageBox('El campo "Descripcion" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      DBEApellidoNombre.SetFocus;
      exit;
    end;

    if DM.EKModelo.finalizar_transaccion(Transaccion_ABM_TipoEmpresa) then
    begin
      DBGridTipoEmpresa.Enabled:=true;
      GrupoEditando.Enabled:=true;
      GrupoGuardarCancelar.Enabled:=false;
      DBGridTipoEmpresa.SetFocus;
      PanelEdicion.Visible := false;
    end;
end;

procedure TFABM_TipoEmpresa.btnCancelarClick(Sender: TObject);
begin
  DM.EKModelo.cancelar_transaccion(Transaccion_ABM_TipoEmpresa);
  DBGridTipoEmpresa.Enabled:=true;
  GrupoEditando.Enabled:=true;
  GrupoGuardarCancelar.Enabled:=false;
  DBGridTipoEmpresa.SetFocus;
  PanelEdicion.Visible := false;
end;

procedure TFABM_TipoEmpresa.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFABM_TipoEmpresa.btnBajaClick(Sender: TObject);
begin
  if  not(ZQ_TipoEmpresa.IsEmpty) then
  begin
    if (ZQ_TipoEmpresaBAJA.AsString='S') then
    begin
      Application.MessageBox(PChar('El tipo empresa seleccionado ya fue dado de baja'),'Baja Empresa',MB_OK+MB_ICONWARNING);
    end
    else
    begin
      if dm.EKModelo.iniciar_transaccion(Transaccion_ABM_TipoEmpresa,[ZQ_TipoEmpresa]) then
      begin
        ZQ_TipoEmpresa.Edit;
        ZQ_TipoEmpresaBAJA.AsString:='S';
        if dm.EKModelo.finalizar_transaccion(Transaccion_ABM_TipoEmpresa) then
          Application.MessageBox(PChar('El tipo empresa seleccionado há sido dado de Baja'),'Atención',MB_OK+MB_ICONINFORMATION)
      end
    end
  end;

end;

procedure TFABM_TipoEmpresa.btnReactivarClick(Sender: TObject);
begin
  if not(ZQ_TipoEmpresa.IsEmpty) then
  begin
    if (ZQ_TipoEmpresaBAJA.AsString='N') then
    begin
      Application.MessageBox(PChar('El tipo empresa seleccionado no figura como dado de Baja'),'Reactivar Empresa',MB_OK+MB_ICONWARNING);
    end
    else
    begin
      if dm.EKModelo.iniciar_transaccion(Transaccion_ABM_TipoEmpresa,[ZQ_TipoEmpresa]) then
      begin
        ZQ_TipoEmpresa.Edit;
        ZQ_TipoEmpresaBAJA.AsString:='N';
        if dm.EKModelo.finalizar_transaccion(Transaccion_ABM_TipoEmpresa) then
          Application.MessageBox(PChar('El tipo empresa seleccionado há sido Reactivado'),'Atención',MB_OK+MB_ICONINFORMATION)
      end
    end
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
dm.EKModelo.abrir(ZQ_TipoEmpresa);
end;

end.
