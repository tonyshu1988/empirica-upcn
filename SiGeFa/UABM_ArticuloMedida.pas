unit UABM_ArticuloMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFABM_ArticuloMedida = class(TForm)
    PanelFondo: TPanel;
    PanelEdicion: TPanel;
    Label4: TLabel;
    DBEDescripcion: TDBEdit;
    PanelGrilla: TPanel;
    DBGridMedidas: TDBGrid;
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
    ZQ_Medida: TZQuery;
    ZQ_MedidaID_MEDIDA: TIntegerField;
    ZQ_MedidaMEDIDA: TStringField;
    DS_Medida: TDataSource;
    ZQ_MedidaBAJA: TStringField;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridMedidasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_ArticuloMedida: TFABM_ArticuloMedida;

const
  transaccion_ABMMedida = 'ABM ARTICULO MEDIDA';

implementation

uses UPrincipal, UDM;

{$R *.dfm}

procedure TFABM_ArticuloMedida.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABMMedida);
end;


procedure TFABM_ArticuloMedida.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFABM_ArticuloMedida.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_Medida]) then
  begin
    DBGridMedidas.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Medida.Append;

    DBEDescripcion.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_ArticuloMedida.btnModificarClick(Sender: TObject);
begin
  if ZQ_Medida.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_Medida]) then
  begin
    DBGridMedidas.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Medida.Edit;

    DBEDescripcion.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_ArticuloMedida.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Medida.IsEmpty) OR (ZQ_MedidaBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja la Medida seleccionada?'), 'ABM Articulo Medida', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_Medida]) then
    begin
      ZQ_Medida.Edit;
      ZQ_MedidaBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMMedida)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMMedida);

    recNo:= ZQ_Medida.RecNo;
    ZQ_Medida.Refresh;
    ZQ_Medida.RecNo:= recNo;
  end;
end;

procedure TFABM_ArticuloMedida.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Medida.IsEmpty) OR (ZQ_MedidaBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar la Medida seleccionado?'), 'ABM Articulo Medida', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMMedida, [ZQ_Medida]) then
    begin
      ZQ_Medida.Edit;
      ZQ_MedidaBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMMedida)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMMedida);

    recNo:= ZQ_Medida.RecNo;
    ZQ_Medida.Refresh;
    ZQ_Medida.RecNo:= recNo;
  end;
end;

procedure TFABM_ArticuloMedida.btnGuardarClick(Sender: TObject);
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
    if DM.EKModelo.finalizar_transaccion(transaccion_ABMMedida) then
    begin
      DBGridMedidas.Enabled := true;
      DBGridMedidas.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      recNo:= ZQ_Medida.RecNo;
      ZQ_Medida.Refresh;
      ZQ_Medida.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end
end;


procedure TFABM_ArticuloMedida.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABMMedida) then
  begin
    DBGridMedidas.Enabled := true;
    DBGridMedidas.SetFocus;    
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;
end;


procedure TFABM_ArticuloMedida.FormCreate(Sender: TObject);
begin
  ZQ_Medida.Close;
  ZQ_Medida.open;
end;

procedure TFABM_ArticuloMedida.DBGridMedidasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_Medida.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridMedidas, ZQ_MedidaBAJA.AsString, Rect, DataCol, Column, State);
end;

end.
