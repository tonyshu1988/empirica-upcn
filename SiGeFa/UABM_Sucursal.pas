unit UABM_Sucursal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  EKOrdenarGrilla;

type
  TFABM_Sucursal = class(TForm)
    PContenedor: TPanel;
    DBGridSucursal: TDBGrid;
    PanelEdicion: TPanel;
    Label1: TLabel;
    DBEApellidoNombre: TDBEdit;
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
    ZQ_Sucursal: TZQuery;
    ZQ_SucursalID_SUCURSAL: TIntegerField;
    ZQ_SucursalNOMBRE: TStringField;
    ZQ_SucursalDIRECCION: TStringField;
    ZQ_SucursalLOCALIDAD: TStringField;
    ZQ_SucursalCODIGO_POSTAL: TStringField;
    ZQ_SucursalTELEFONO: TStringField;
    ZQ_SucursalEMAIL: TStringField;
    ZQ_SucursalBAJA: TStringField;
    ZQ_SucursalAUD_UDUARIO: TStringField;
    ZQ_SucursalAUD_FECHA: TDateTimeField;
    DS_Sucursal: TDataSource;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    PBusqueda: TPanel;
    Label16: TLabel;
    StaticText3: TStaticText;
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGridSucursalDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_Sucursal: TFABM_Sucursal;

const
  Transaccion_ABMSucursal = 'ABM Sucursal';

implementation

uses  UDM, UPrincipal;

{$R *.dfm}

procedure TFABM_Sucursal.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(Transaccion_ABMSucursal, [ZQ_Sucursal]) then
  begin
    DBGridSucursal.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Sucursal.Append;
    ZQ_SucursalBAJA.AsString:= 'N';
    DBEApellidoNombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;

procedure TFABM_Sucursal.btnModificarClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(Transaccion_ABMSucursal, [ZQ_Sucursal]) then
  begin
    DBGridSucursal.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Sucursal.Edit;
    DBEApellidoNombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;

procedure TFABM_Sucursal.btnGuardarClick(Sender: TObject);
begin
   if (trim(ZQ_SucursalNOMBRE.AsString) = '') then
    begin
      Application.MessageBox('El campo "Nombre" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      DBEApellidoNombre.SetFocus;
      exit;
    end;

    if DM.EKModelo.finalizar_transaccion(Transaccion_ABMSucursal) then
    begin
      DBGridSucursal.Enabled:=true;
      GrupoEditando.Enabled:=true;
      GrupoGuardarCancelar.Enabled:=false;
      DBGridSucursal.SetFocus;
      PanelEdicion.Visible := false;
    end;
end;

procedure TFABM_Sucursal.btnCancelarClick(Sender: TObject);
begin
  DM.EKModelo.cancelar_transaccion(Transaccion_ABMSucursal);
  DBGridSucursal.Enabled:=true;
  GrupoEditando.Enabled:=true;
  GrupoGuardarCancelar.Enabled:=false;
  DBGridSucursal.SetFocus;
  PanelEdicion.Visible := false;
end;

procedure TFABM_Sucursal.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFABM_Sucursal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(Transaccion_ABMSucursal);
end;

procedure TFABM_Sucursal.DBGridSucursalDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_Sucursal.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridSucursal, ZQ_SucursalBAJA.AsString, Rect, DataCol, Column, State);

end;

procedure TFABM_Sucursal.btnBajaClick(Sender: TObject);
begin
  if  not(ZQ_Sucursal.IsEmpty) then
  begin
    if (ZQ_SucursalBAJA.AsString='S') then
    begin
      Application.MessageBox(PChar('La sucursal seleccionado ya fue dado de baja'),'Baja Empresa',MB_OK+MB_ICONWARNING);
    end
    else
    begin
      if dm.EKModelo.iniciar_transaccion(Transaccion_ABMSucursal,[ZQ_Sucursal]) then
      begin
        ZQ_Sucursal.Edit;
        ZQ_SucursalBAJA.AsString:='S';
        if dm.EKModelo.finalizar_transaccion(Transaccion_ABMSucursal) then
          Application.MessageBox(PChar('La sucursal seleccionado há sido dada de Baja'),'Atención',MB_OK+MB_ICONINFORMATION)
      end
    end
  end;
end;

procedure TFABM_Sucursal.btnReactivarClick(Sender: TObject);
begin
  if not(ZQ_Sucursal.IsEmpty) then
  begin
    if (ZQ_SucursalBAJA.AsString='N') then
    begin
      Application.MessageBox(PChar('La sucursal seleccionada no figura como dada de Baja'),'Reactivar Empresa',MB_OK+MB_ICONWARNING);
    end
    else
    begin
      if dm.EKModelo.iniciar_transaccion(Transaccion_ABMSucursal,[ZQ_Sucursal]) then
      begin
        ZQ_Sucursal.Edit;
        ZQ_SucursalBAJA.AsString:='N';
        if dm.EKModelo.finalizar_transaccion(Transaccion_ABMSucursal) then
          Application.MessageBox(PChar('La sucursal seleccionada há sido Reactivada'),'Atención',MB_OK+MB_ICONINFORMATION)
      end
    end
  end;
end;

procedure TFABM_Sucursal.FormCreate(Sender: TObject);
begin
dm.EKModelo.abrir(ZQ_Sucursal);
end;

end.
