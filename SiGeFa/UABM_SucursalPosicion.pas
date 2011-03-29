unit UABM_SucursalPosicion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKListadoSQL, EKBusquedaAvanzada;

type
  TFABM_SucursalPosicion = class(TForm)
    PContenedor: TPanel;
    DBGridPosicionSucursal: TDBGrid;
    PanelEdicion: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
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
    DBLookupCBoxSuc: TDBLookupComboBox;
    Label4: TLabel;
    ZQ_PosicionSucursal: TZQuery;
    DS_PosicionSucursal: TDataSource;
    ZQ_PosicionSucursalID_POSICION_SUCURSAL: TIntegerField;
    ZQ_PosicionSucursalID_SUCURSAL: TIntegerField;
    ZQ_PosicionSucursalSECCION: TStringField;
    ZQ_PosicionSucursalSECTOR: TStringField;
    ZQ_PosicionSucursalFILA: TStringField;
    ZQ_PosicionSucursalCOLUMNA: TStringField;
    ZQ_Sucursal: TZQuery;
    ZQ_PosicionSucursalsucursal: TStringField;
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
    ZQ_PosicionSucursalBAJA: TStringField;
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    EKListadoSucursal: TEKListadoSQL;
    PBusqueda: TPanel;
    StaticText3: TStaticText;
    LabelRegistros: TLabel;
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBLookupCBoxSucKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridPosicionSucursalDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_SucursalPosicion: TFABM_SucursalPosicion;

const

  Transaccion_ABMPosicionSuc = 'ABM Posicion Sucursal';

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFABM_SucursalPosicion.btnNuevoClick(Sender: TObject);
begin
   if dm.EKModelo.iniciar_transaccion(Transaccion_ABMPosicionSuc, [ZQ_PosicionSucursal]) then
  begin
    DBGridPosicionSucursal.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_PosicionSucursal.Append;
    ZQ_PosicionSucursalBAJA.AsString:= 'N';
    DBLookupCBoxSuc.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;

procedure TFABM_SucursalPosicion.btnModificarClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(Transaccion_ABMPosicionSuc, [ZQ_PosicionSucursal]) then
  begin
    DBGridPosicionSucursal.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_PosicionSucursal.Edit;
    DBLookupCBoxSuc.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;

procedure TFABM_SucursalPosicion.btnGuardarClick(Sender: TObject);
begin
    if DM.EKModelo.finalizar_transaccion(Transaccion_ABMPosicionSuc) then
    begin
      DBGridPosicionSucursal.Enabled:=true;
      GrupoEditando.Enabled:=true;
      GrupoGuardarCancelar.Enabled:=false;
      DBGridPosicionSucursal.SetFocus;
      PanelEdicion.Visible := false;
    end;
end;

procedure TFABM_SucursalPosicion.btnCancelarClick(Sender: TObject);
begin
  DM.EKModelo.cancelar_transaccion(Transaccion_ABMPosicionSuc);
  DBGridPosicionSucursal.Enabled:=true;
  GrupoEditando.Enabled:=true;
  GrupoGuardarCancelar.Enabled:=false;
  DBGridPosicionSucursal.SetFocus;
  PanelEdicion.Visible := false;
end;

procedure TFABM_SucursalPosicion.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFABM_SucursalPosicion.btnBajaClick(Sender: TObject);
begin
  if  not(ZQ_PosicionSucursal.IsEmpty) then
  begin
    if (ZQ_PosicionSucursalBAJA.AsString='S') then
    begin
      Application.MessageBox(PChar('La Posicion seleccionada ya fue dado de baja'),'Baja Empresa',MB_OK+MB_ICONWARNING);
    end
    else
    begin
      if dm.EKModelo.iniciar_transaccion(Transaccion_ABMPosicionSuc,[ZQ_PosicionSucursal]) then
      begin
        ZQ_PosicionSucursal.Edit;
        ZQ_PosicionSucursalBAJA.AsString:='S';
        if dm.EKModelo.finalizar_transaccion(Transaccion_ABMPosicionSuc) then
          Application.MessageBox(PChar('La Posicion seleccionada há sido dada de Baja'),'Atención',MB_OK+MB_ICONINFORMATION)
      end
    end
  end;
end;

procedure TFABM_SucursalPosicion.btnReactivarClick(Sender: TObject);
begin
  if not(ZQ_PosicionSucursal.IsEmpty) then
  begin
    if (ZQ_PosicionSucursalBAJA.AsString='N') then
    begin
      Application.MessageBox(PChar('La Posicion seleccionada no figura como dada de Baja'),'Reactivar Empresa',MB_OK+MB_ICONWARNING);
    end
    else
    begin
      if dm.EKModelo.iniciar_transaccion(Transaccion_ABMPosicionSuc,[ZQ_PosicionSucursal]) then
      begin
        ZQ_PosicionSucursal.Edit;
        ZQ_PosicionSucursalBAJA.AsString:='N';
        if dm.EKModelo.finalizar_transaccion(Transaccion_ABMPosicionSuc) then
          Application.MessageBox(PChar('La Posicion seleccionada há sido Reactivada'),'Atención',MB_OK+MB_ICONINFORMATION)
      end
    end
  end;
end;

procedure TFABM_SucursalPosicion.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(Transaccion_ABMPosicionSuc);
end;

procedure TFABM_SucursalPosicion.DBLookupCBoxSucKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = 112 then
      if EKListadoSucursal.Buscar then
      begin
        ZQ_PosicionSucursal.Edit;
        ZQ_PosicionSucursalID_SUCURSAL.AsInteger :=  StrToInt(EKListadoSucursal.Resultado);
      end;
end;

procedure TFABM_SucursalPosicion.DBGridPosicionSucursalDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_PosicionSucursal.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridPosicionSucursal, ZQ_PosicionSucursalBAJA.AsString, Rect, DataCol, Column, State);
end;

procedure TFABM_SucursalPosicion.btnBuscarClick(Sender: TObject);
begin
EKBusquedaAvanzada1.Buscar;
LabelRegistros.Caption := 'Registros: '+IntToStr(ZQ_PosicionSucursal.RecordCount);
end;

procedure TFABM_SucursalPosicion.FormActivate(Sender: TObject);
begin
ZQ_Sucursal.Refresh;
end;

procedure TFABM_SucursalPosicion.FormCreate(Sender: TObject);
begin
dm.EKModelo.abrir(ZQ_Sucursal);
end;

end.
