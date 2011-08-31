unit UABM_Tipo_Denominacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids,
  QRCtrls, QuickRpt, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, EKOrdenarGrilla;

type
  TFABM_Tipo_Denominacion = class(TForm)
    Panel1: TPanel;
    Grilla: TDBGrid;
    pDatos: TPanel;
    Label1: TLabel;
    dbNombreTipo: TDBEdit;
    dxBarABM: TdxBarManager;
    BtNuevo: TdxBarLargeButton;
    BtModificar: TdxBarLargeButton;
    btEliminar: TdxBarLargeButton;
    btBuscar: TdxBarLargeButton;
    BtGuardar: TdxBarLargeButton;
    BtCancelar: TdxBarLargeButton;
    btReactivar: TdxBarLargeButton;
    Bt_Seleccionar: TdxBarLargeButton;
    btBajar: TdxBarLargeButton;
    bt_salir: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    ZQ_tipo_proveedor: TZQuery;
    DS_tipo_proveedor: TDataSource;
    ZQ_tipo_proveedorID_TIPO: TIntegerField;
    ZQ_tipo_proveedorDESCRIPCION: TStringField;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    procedure BtNuevoClick(Sender: TObject);
    procedure BtModificarClick(Sender: TObject);
    procedure BtGuardarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure bt_salirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_Tipo_Denominacion: TFABM_Tipo_Denominacion;

const
  transaccion_Tipo_Denominacion = 'ABM Tipo Denominacion';

implementation

uses UDM;

{$R *.dfm}

procedure TFABM_Tipo_Denominacion.BtNuevoClick(Sender: TObject);
begin
 if dm.EKModelo.iniciar_transaccion(transaccion_Tipo_Denominacion, [ZQ_tipo_proveedor]) then
  begin
    Grilla.Enabled := false;
    pDatos.Visible := true;
    ZQ_tipo_proveedor.Append;
    dbNombreTipo.SetFocus;
    GrupoGuardarCancelar.Enabled := true;
    GrupoEditando.Enabled := false;
  end;
end;

procedure TFABM_Tipo_Denominacion.BtModificarClick(Sender: TObject);
begin
if (ZQ_tipo_proveedor.IsEmpty) then exit;

 if dm.EKModelo.iniciar_transaccion(transaccion_Tipo_Denominacion, [ZQ_tipo_proveedor]) then
  begin
    Grilla.Enabled := false;
    pDatos.Visible := true;
    ZQ_tipo_proveedor.Edit;
    dbNombreTipo.SetFocus;
    GrupoGuardarCancelar.Enabled := true;
    GrupoEditando.Enabled := false;
  end;
end;

procedure TFABM_Tipo_Denominacion.BtGuardarClick(Sender: TObject);
begin
  try
      begin
       if DM.EKModelo.finalizar_transaccion(transaccion_Tipo_Denominacion) then
        begin
          pDatos.Visible:=false;
          Grilla.Enabled := true;
          GrupoEditando.Enabled := true;
          GrupoGuardarCancelar.Enabled := false;
          ZQ_tipo_proveedor.Refresh;
        end
      end
     except
        Application.MessageBox('Verifique que el Código ingresado no exista y que los campos estén correctamente cargados.','Validación',MB_OK+MB_ICONINFORMATION);
     end

end;

procedure TFABM_Tipo_Denominacion.BtCancelarClick(Sender: TObject);
begin
  DM.EKModelo.cancelar_transaccion(transaccion_Tipo_Denominacion);
  pDatos.Visible:=false;
  Grilla.Enabled := true;
  GrupoEditando.Enabled := true;
  GrupoGuardarCancelar.Enabled := false;
  ZQ_tipo_proveedor.Refresh;
end;

procedure TFABM_Tipo_Denominacion.bt_salirClick(Sender: TObject);
begin
close;
end;

procedure TFABM_Tipo_Denominacion.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_Tipo_Denominacion) then
  begin
    if not (application.MessageBox(pchar('Si continua con el cierre se perderan los cambios realizados.'+#13+#13+'¿Salir de todos modos?'),'Atención', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose := False
    else
      dm.EKModelo.cancelar_transaccion(transaccion_Tipo_Denominacion);
  end;
end;

procedure TFABM_Tipo_Denominacion.FormCreate(Sender: TObject);
begin
  dm.EKModelo.abrir(ZQ_tipo_proveedor);
end;

procedure TFABM_Tipo_Denominacion.btEliminarClick(Sender: TObject);
begin
 if dm.EKModelo.iniciar_transaccion(transaccion_Tipo_Denominacion, [ZQ_tipo_proveedor]) then
 begin
  ZQ_tipo_proveedor.Delete;

  try
  if DM.EKModelo.finalizar_transaccion(transaccion_Tipo_Denominacion) then
  begin
    pDatos.Visible:=false;
    Grilla.Enabled := true;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    ZQ_tipo_proveedor.Refresh;
  end
  else
      raise Exception.Create('');
  except
    begin
      Application.MessageBox('Este registro no puede ser eliminado.'+char(13)
                              +'Verifique que no este siendo usado por alguna Denominación'+char(13)
                              ,'ABM Tipo Denominacion',MB_OK+MB_ICONINFORMATION);

      dm.EKModelo.cancelar_transaccion(transaccion_Tipo_Denominacion);                        
      exit;
    end
  end

 end;
end;

end.
