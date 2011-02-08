unit Aplicaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, DB, Grids, DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar, dxBarExtItems;

type
  TFAplicaciones = class(TForm)
    Aplicaciones: TZQuery;
    DBGridPermisos: TDBGrid;
    AplicacionesAPLICACION: TStringField;
    AplicacionesCLAVE: TIntegerField;
    AplicacionesACCION: TStringField;
    AplicacionesCAPTION: TStringField;
    AplicacionesDESCRIPCION: TBlobField;
    DSAplicaciones: TDataSource;
    DBMemoDescripcion: TDBMemo;
    NAplicacion: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    PanelFondo: TPanel;
    dxBarABM: TdxBarManager;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    procedure AplicacionesAfterInsert(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAplicaciones: TFAplicaciones;

const
  transaccion_permiso: string = 'ABM PERMISOS';

implementation

{$R *.dfm}

Uses UDM;

procedure TFAplicaciones.AplicacionesAfterInsert(DataSet: TDataSet);
begin
  AplicacionesAPLICACION.AsString := NAplicacion.Caption;
end;


procedure TFAplicaciones.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_permiso) then
  begin
    if not (application.MessageBox(pchar('Si continua con el cierre se perderan los cambios realizados.'+#13+#13+'¿Salir de todos modos?'),'Atención', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose := False
    else
    begin
      dm.EKModelo.cancelar_transaccion(transaccion_permiso);
      Release;
    end;
  end;
end;


procedure TFAplicaciones.FormCreate(Sender: TObject);
begin
  DBGridPermisos.ReadOnly:= True;
  DBMemoDescripcion.ReadOnly:= True;
  GrupoEditando.Enabled:= True;
  GrupoGuardarCancelar.Enabled:= False;
end;


procedure TFAplicaciones.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFAplicaciones.btnGuardarClick(Sender: TObject);
begin
  if DM.EKModelo.finalizar_transaccion(transaccion_permiso) then
  begin
    DBGridPermisos.ReadOnly:= True;
    DBMemoDescripcion.ReadOnly:= True;
    GrupoEditando.Enabled:= True;
    GrupoGuardarCancelar.Enabled:= False;
    Aplicaciones.Refresh;
  end;
end;


procedure TFAplicaciones.btnCancelarClick(Sender: TObject);
begin
  if DM.EKModelo.cancelar_transaccion(transaccion_permiso) then
  begin
    DBGridPermisos.ReadOnly:= True;
    DBMemoDescripcion.ReadOnly:= True;
    GrupoEditando.Enabled:= True;
    GrupoGuardarCancelar.Enabled:= False;
    Aplicaciones.Refresh;
  end;
end;


procedure TFAplicaciones.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_permiso, [Aplicaciones]) then
  begin
    DBGridPermisos.ReadOnly:= false;
    DBMemoDescripcion.ReadOnly:= false;
    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;
    Aplicaciones.Append;
    DBGridPermisos.SelectedIndex:=2;
  end;
end;


procedure TFAplicaciones.btnModificarClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_permiso, [Aplicaciones]) then
  begin
    DBGridPermisos.ReadOnly:= false;
    DBMemoDescripcion.ReadOnly:= false;
    GrupoEditando.Enabled:= false;
    GrupoGuardarCancelar.Enabled:= true;
    Aplicaciones.Edit;
    DBGridPermisos.SelectedIndex:=2;
  end;
end;


procedure TFAplicaciones.btnEliminarClick(Sender: TObject);
begin
  if Aplicaciones.IsEmpty then
    exit;

  if (application.MessageBox(pchar('¿Esta seguro que desea Eliminar el permiso '+AplicacionesACCION.AsString+'?'+#13+#13), 'Eliminar Permiso', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_permiso, [Aplicaciones]) then
      Aplicaciones.Delete
    else
      exit;
    try
      if not (dm.EKModelo.finalizar_transaccion(transaccion_permiso)) then
        dm.EKModelo.cancelar_transaccion(transaccion_permiso);
    except
      begin
        Application.MessageBox('El permiso seleccionado no se puede borrar porque está siendo utilizada.','Atención',MB_OK+MB_ICONINFORMATION);
        dm.EKModelo.cancelar_transaccion(transaccion_permiso);
      end
    end;
  end;
end;

end.
