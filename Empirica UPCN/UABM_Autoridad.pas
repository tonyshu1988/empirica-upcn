unit UABM_Autoridad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, DBCtrls, Mask,
  QuickRpt, EKVistaPreviaQR, QRCtrls, EKOrdenarGrilla;

type
  TFABM_Autoridad = class(TForm)
    pContenedor: TPanel;
    dxBarABM: TdxBarManager;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    pDatos: TPanel;
    dbGridAutoridad: TDBGrid;
    DS_Autoridad: TDataSource;
    ZQ_Autoridad: TZQuery;
    Label1: TLabel;
    Label2: TLabel;
    dbEditNombre: TDBEdit;
    dbEditPrioridad: TDBEdit;
    btnVerDetalle: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    ZQ_AutoridadID_AUTORIDAD: TIntegerField;
    ZQ_AutoridadNOMBE: TStringField;
    ZQ_AutoridadPRIORIDAD: TIntegerField;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    function  validarDatos(): boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_Autoridad: TFABM_Autoridad;

const
  transaccion_autoridad: string = 'ABM AUTORIDAD';

implementation

uses UPrincipal, UDM, UUtilidades;

{$R *.dfm}

procedure TFABM_Autoridad.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_autoridad, [ZQ_Autoridad]) then
  begin
    dbGridAutoridad.Enabled := false;
    pDatos.Visible := true;
    pDatos.Enabled := true;
    ZQ_Autoridad.Append;
    dbEditNombre.SetFocus;
    GrupoVisualizando.Enabled := false;
    GrupoEditando.Enabled := true;
  end;
end;


procedure TFABM_Autoridad.btnModificarClick(Sender: TObject);
begin
  if ZQ_Autoridad.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_autoridad, [ZQ_Autoridad]) then
  begin
    dbGridAutoridad.Enabled := false;
    pDatos.Visible := true;
    pDatos.Enabled := true;    
    dbEditNombre.SetFocus;
    GrupoVisualizando.Enabled := false;
    GrupoEditando.Enabled := true;
  end;
end;


procedure TFABM_Autoridad.btnEliminarClick(Sender: TObject);
begin
  if ZQ_Autoridad.IsEmpty then
    exit;

  if (application.MessageBox(pchar('¿Esta seguro que desea Eliminar la Autoridad?                        ' + #13 + #13), 'Eliminar Autoridad', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_autoridad, [ZQ_Autoridad]) then
      ZQ_Autoridad.Delete
    else
      exit;
    try
      if not (dm.EKModelo.finalizar_transaccion(transaccion_autoridad)) then
        dm.EKModelo.cancelar_transaccion(transaccion_autoridad);

    except
      begin
        Application.MessageBox('La autoridad seleccionada no se puede borrar porque está siendo utilizada.','Atención',MB_OK+MB_ICONINFORMATION);
        dm.EKModelo.cancelar_transaccion(transaccion_autoridad);
      end
    end;
  end;
end;


procedure TFABM_Autoridad.btnGuardarClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if not validarDatos() then
    exit;
     try
      begin
       if DM.EKModelo.finalizar_transaccion(transaccion_autoridad) then
          begin
            dbGridAutoridad.Enabled := true;
            GrupoVisualizando.Enabled := true;
            GrupoEditando.Enabled := false;
            pDatos.Visible := false;
            pDatos.Enabled := false;
            ZQ_Autoridad.Refresh;
          end;
      end
     except
        Application.MessageBox('Verifique que la Autoridad ingresada no exista y que los campos estén correctamente cargados.','Validación',MB_OK+MB_ICONINFORMATION);
     end

end;


procedure TFABM_Autoridad.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_autoridad) then
  begin
    dbGridAutoridad.Enabled := true;
    pDatos.Visible := false;
    pDatos.Enabled := false;
    GrupoVisualizando.Enabled := true;
    GrupoEditando.Enabled := false;
  end;
end;


procedure TFABM_Autoridad.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFABM_Autoridad.FormCreate(Sender: TObject);
begin
  dm.ekModelo.abrir(ZQ_Autoridad);
end;


procedure TFABM_Autoridad.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(transaccion_autoridad) then
  begin
    if not (application.MessageBox(pchar('Si continua con el cierre se perderan los cambios realizados.'+#13+#13+'¿Salir de todos modos?'),'Atención', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose := False
    else
      dm.EKModelo.cancelar_transaccion(transaccion_autoridad);
  end;
end;


function TFABM_Autoridad.validarDatos():boolean;
begin
  result:= true;

   if (ZQ_AutoridadNOMBE.IsNull) then
   begin
      Application.MessageBox('El campo "Nombre" se encuentra vacío, Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      dbEditNombre.SetFocus;
      result:= false;
      exit;
   end;

   if (ZQ_AutoridadPRIORIDAD.IsNull) then
   begin
      Application.MessageBox('El campo "Prioridad" se encuentra vacío, Verifique','Validación',MB_OK+MB_ICONINFORMATION);
      dbEditPrioridad.SetFocus;
      result:= false;
      exit;
   end;
end;

end.
