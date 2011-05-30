unit UABM_Colores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  ZStoredProcedure;

type
  TFABM_Colores = class(TForm)
    PanelFondo: TPanel;
    PanelGrilla: TPanel;
    DBGridColor: TDBGrid;
    PanelEdicion: TPanel;
    Label1: TLabel;
    DBENombre: TDBEdit;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
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
    Label2: TLabel;
    ZQ_Colores: TZQuery;
    DS_Colores: TDataSource;
    ZQ_ColoresID_COLOR: TIntegerField;
    ZQ_ColoresNOMBRE: TStringField;
    ZQ_ColoresREFERENCIA: TStringField;
    ColorBox1: TColorBox;
    ZQ_ColoresBAJA: TStringField;
    Label3: TLabel;
    DBECodigo: TDBEdit;
    ZQ_ColoresCODIGO: TStringField;
    ZSP_ID_COLOR: TZStoredProc;
    ZSP_ID_COLORID: TIntegerField;
    procedure ZQ_ColoresAfterScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridColorDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_Colores: TFABM_Colores;

const
  transaccion_ABM = 'ABM COLOR';
implementation

uses UDM, UPrincipal, UUtilidades;

{$R *.dfm}

procedure TFABM_Colores.ZQ_ColoresAfterScroll(DataSet: TDataSet);
begin
if not(ZQ_ColoresREFERENCIA.IsNull) then
       ColorBox1.Selected:=StringToColor(ZQ_ColoresREFERENCIA.AsString);

 dm.mostrarCantidadRegistro(ZQ_Colores, lblCantidadRegistros);
end;

procedure TFABM_Colores.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;

procedure TFABM_Colores.btnSalirClick(Sender: TObject);
begin
 Close;
end;

procedure TFABM_Colores.btnModificarClick(Sender: TObject);
begin
if ZQ_Colores.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Colores]) then
  begin
    DBGridColor.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Colores.Edit;
    DBENombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;

procedure TFABM_Colores.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Colores.IsEmpty) OR (ZQ_ColoresBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja el Color seleccionado?'), 'ABM Colores', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Colores]) then
    begin
      ZQ_Colores.Edit;
      ZQ_ColoresBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Colores.RecNo;
    ZQ_Colores.Refresh;
    ZQ_Colores.RecNo:= recNo;
  end;
end;

procedure TFABM_Colores.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if (trim(DBECodigo.Text) = '') then
  begin
    Application.MessageBox('El campo "Cod" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBECodigo.SetFocus;
    exit;
  end;
  if (trim(DBENombre.Text) = '') then
  begin
    Application.MessageBox('El campo "Detalle" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBENombre.SetFocus;
    exit;
  end;

  ZQ_ColoresREFERENCIA.AsString:=ColorToString(ColorBox1.Selected);
  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridColor.Enabled:= true;
      DBGridColor.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      PanelEdicion.Visible := false;
      recNo:= ZQ_Colores.RecNo;
      ZQ_Colores.Refresh;
      ZQ_Colores.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

 
end;

procedure TFABM_Colores.btnCancelarClick(Sender: TObject);
begin
 if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridColor.Enabled:=true;
    DBGridColor.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    PanelEdicion.Visible := false;
  end;
end;

procedure TFABM_Colores.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Colores.IsEmpty) OR (ZQ_ColoresBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar el Color seleccionado?'), 'ABM Colores', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Colores]) then
    begin
      ZQ_Colores.Edit;
      ZQ_ColoresBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_Colores.RecNo;
    ZQ_Colores.Refresh;
    ZQ_Colores.RecNo:= recNo;
  end;

end;

procedure TFABM_Colores.btnNuevoClick(Sender: TObject);
begin
if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Colores]) then
  begin
    DBGridColor.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Colores.Append;
    ZQ_ColoresBAJA.AsString:= 'N';
    ZSP_ID_COLOR.Active:=false;
    ZSP_ID_COLOR.Active:=True;
    ZQ_ColoresID_COLOR.AsInteger:=ZSP_ID_COLORID.AsInteger;
    ZQ_ColoresCODIGO.AsString:=rellenar(ZSP_ID_COLORID.AsString,'0',4);
    DBECodigo.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;

procedure TFABM_Colores.FormCreate(Sender: TObject);
begin
dm.EKModelo.abrir(ZQ_Colores);
end;

procedure TFABM_Colores.DBGridColorDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if ZQ_Colores.IsEmpty then
    exit;
  if (column.FieldName='REFERENCIA')and not(ZQ_ColoresREFERENCIA.IsNull) then
      begin
        DBGridColor.Canvas.Brush.Color:= StringToColor(ZQ_ColoresREFERENCIA.AsString);
      end;
      
  FPrincipal.PintarFilasGrillasConBajas(DBGridColor, ZQ_ColoresBAJA.AsString, Rect, DataCol, Column, State);


end;

end.


