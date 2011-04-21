unit UABM_TipoArticulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFABM_TipoArticulo = class(TForm)
    PanelFondo: TPanel;
    PanelGrilla: TPanel;
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
    ZQ_TipoArt: TZQuery;
    DS_TipoArt: TDataSource;
    ZQ_TipoArtID_TIPO_ARTICULO: TIntegerField;
    ZQ_TipoArtDESCRIPCION: TStringField;
    ZQ_TipoArtBAJA: TStringField;
    DBGridTipoArticulo: TDBGrid;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridTipoArticuloDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_TipoArticulo: TFABM_TipoArticulo;

const
  transaccion_ABM = 'ABM TIPO ARTICULO';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFABM_TipoArticulo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_TipoArticulo.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFABM_TipoArticulo.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoArt]) then
  begin
    ZQ_TipoArt.Append; 
    DBGridTipoArticulo.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_TipoArticulo.btnModificarClick(Sender: TObject);
begin
  if ZQ_TipoArt.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoArt]) then
  begin
    ZQ_TipoArt.Edit;

    DBGridTipoArticulo.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_TipoArticulo.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_TipoArt.IsEmpty) OR (ZQ_TipoArtBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja la Medida seleccionada?'), 'ABM Articulo Medida', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoArt]) then
    begin
      ZQ_TipoArt.Edit;
      ZQ_TipoArtBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_TipoArt.RecNo;
    ZQ_TipoArt.Refresh;
    ZQ_TipoArt.RecNo:= recNo;
  end;
end;

procedure TFABM_TipoArticulo.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_TipoArt.IsEmpty) OR (ZQ_TipoArtBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar la Medida seleccionado?'), 'ABM Articulo Medida', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_TipoArt]) then
    begin
      ZQ_TipoArt.Edit;
      ZQ_TipoArtBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_TipoArt.RecNo;
    ZQ_TipoArt.Refresh;
    ZQ_TipoArt.RecNo:= recNo;
  end;
end;

procedure TFABM_TipoArticulo.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if (trim(ZQ_TipoArtDESCRIPCION.AsString) = '') then
  begin
    Application.MessageBox('El campo no puede estar vacio. VERIFIQUE','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBGridTipoArticulo.SetFocus;
    exit;
  end;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridTipoArticulo.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      recNo:= ZQ_TipoArt.RecNo;
      ZQ_TipoArt.Refresh;
      ZQ_TipoArt.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end
end;


procedure TFABM_TipoArticulo.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridTipoArticulo.SetFocus;    
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;
end;


procedure TFABM_TipoArticulo.FormCreate(Sender: TObject);
begin
  ZQ_TipoArt.Close;
  ZQ_TipoArt.open;
end;

procedure TFABM_TipoArticulo.DBGridTipoArticuloDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_TipoArt.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridTipoArticulo, ZQ_TipoArtBAJA.AsString, Rect, DataCol, Column, State);
end;

end.
