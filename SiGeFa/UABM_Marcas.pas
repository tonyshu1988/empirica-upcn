unit UABM_Marcas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFABM_Marcas = class(TForm)
    PanelFondo: TPanel;
    PanelEdicion: TPanel;
    Label4: TLabel;
    DBEDescripcion: TDBEdit;
    PanelGrilla: TPanel;
    DBGridMarca: TDBGrid;
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
    ZQ_Marcas: TZQuery;
    DS_Marcas: TDataSource;
    ZQ_MarcasID_MARCA: TIntegerField;
    ZQ_MarcasNOMBRE_MARCA: TStringField;
    ZQ_MarcasBAJA: TStringField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridMarcaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_Marcas: TFABM_Marcas;

const
  transaccion_ABM = 'ABM MARCA';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFABM_Marcas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFABM_Marcas.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_Marcas.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Marcas]) then
  begin
    DBGridMarca.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Marcas.Append;

    DBEDescripcion.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_Marcas.btnModificarClick(Sender: TObject);
begin
  if ZQ_Marcas.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Marcas]) then
  begin
    DBGridMarca.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Marcas.Edit;

    DBEDescripcion.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_Marcas.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Marcas.IsEmpty) OR (ZQ_MarcasBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja la Medida seleccionada?'), 'ABM Articulo Medida', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Marcas]) then
    begin
      ZQ_Marcas.Edit;
      ZQ_MarcasBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Marcas.RecNo;
    ZQ_Marcas.Refresh;
    ZQ_Marcas.RecNo:= recNo;
  end;
end;

procedure TFABM_Marcas.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Marcas.IsEmpty) OR (ZQ_MarcasBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar la Medida seleccionado?'), 'ABM Articulo Medida', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Marcas]) then
    begin
      ZQ_Marcas.Edit;
      ZQ_MarcasBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Marcas.RecNo;
    ZQ_Marcas.Refresh;
    ZQ_Marcas.RecNo:= recNo;
  end;
end;

procedure TFABM_Marcas.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if (DBEDescripcion.Text = '') then
  begin
    Application.MessageBox(pchar('El campo Descripción se encuentra vacío, Verifique'), 'Validación', MB_OK+MB_ICONINFORMATION);
    DBEDescripcion.SetFocus;
    Exit;
  end;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridMarca.Enabled := true;
      DBGridMarca.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      recNo:= ZQ_Marcas.RecNo;
      ZQ_Marcas.Refresh;
      ZQ_Marcas.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end
end;


procedure TFABM_Marcas.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridMarca.Enabled := true;
    DBGridMarca.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;
end;


procedure TFABM_Marcas.FormCreate(Sender: TObject);
begin
  ZQ_Marcas.Close;
  ZQ_Marcas.open;
end;

procedure TFABM_Marcas.DBGridMarcaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_Marcas.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridMarca, ZQ_MarcasBAJA.AsString, Rect, DataCol, Column, State);
end;

end.
