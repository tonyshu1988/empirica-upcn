unit UABM_MedioCobroPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla;

type
  TFABM_MedioCobroPago = class(TForm)
    Panel1: TPanel;
    Grilla: TDBGrid;
    PBusqueda: TPanel;
    Label4: TLabel;
    pDatos: TPanel;
    Label1: TLabel;
    dbNombreConcepto: TDBEdit;
    dxBarABM: TdxBarManager;
    BtNuevo: TdxBarLargeButton;
    BtModificar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
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
    DBEditCodcorto: TDBEdit;
    Label2: TLabel;
    ZQ_MedioCobroPago: TZQuery;
    DS_MedioCobroPago: TDataSource;
    ZQ_MedioCobroPagoID_MEDIO: TIntegerField;
    ZQ_MedioCobroPagoCODIGO_CORTO: TStringField;
    ZQ_MedioCobroPagoNOMBRE_MEDIO_COBRO_PAGO: TStringField;
    ZQ_MedioCobroPagoEDITABLE: TStringField;
    ZQ_MedioCobroPagoVER_LIBRO_BANCO: TStringField;
    Label3: TLabel;
    DBCBoxVerLB: TDBComboBox;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    procedure BtNuevoClick(Sender: TObject);
    procedure BtModificarClick(Sender: TObject);
    procedure BtGuardarClick(Sender: TObject);
    procedure bt_salirClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_MedioCobroPago: TFABM_MedioCobroPago;

const
  Transaccion_Medios='ABM  MEDIOS';

implementation

uses UDM;

{$R *.dfm}

procedure TFABM_MedioCobroPago.BtNuevoClick(Sender: TObject);
begin
 if dm.EKModelo.iniciar_transaccion(Transaccion_Medios, [ZQ_MedioCobroPago]) then
  begin
    Grilla.Enabled := false;
    pDatos.Visible := true;
    ZQ_MedioCobroPago.Insert;
    ZQ_MedioCobroPagoVER_LIBRO_BANCO.AsString:= 'S';
    DBEditCodcorto.SetFocus;
    GrupoGuardarCancelar.Enabled := true;
    GrupoEditando.Enabled := false;
  end;

end;


procedure TFABM_MedioCobroPago.BtModificarClick(Sender: TObject);
begin
  if ZQ_MedioCobroPago.IsEmpty or (ZQ_MedioCobroPagoEDITABLE.AsString='N') then
  exit;
      //EFECTIVO                                   //CHEQUE                                     //TRANSFERENCIA                              //DEBITO BANCARIO
  if (ZQ_MedioCobroPagoID_MEDIO.AsInteger = 1) or (ZQ_MedioCobroPagoID_MEDIO.AsInteger = 2) or (ZQ_MedioCobroPagoID_MEDIO.AsInteger = 3) or (ZQ_MedioCobroPagoID_MEDIO.AsInteger = 5) then
  exit; 

 if dm.EKModelo.iniciar_transaccion(Transaccion_Medios, [ZQ_MedioCobroPago]) then
  begin
    Grilla.Enabled := false;
    pDatos.Visible := true;
    ZQ_MedioCobroPago.Edit;
    DBEditCodcorto.SetFocus;
    GrupoGuardarCancelar.Enabled := true;
    GrupoEditando.Enabled := false;
  end;
end;


procedure TFABM_MedioCobroPago.BtGuardarClick(Sender: TObject);
begin
  if trim(dbNombreConcepto.Text) = '' then
  begin
    Application.MessageBox('El campo nombre medio esta vacio','VERIFICAR',MB_OK+MB_ICONINFORMATION);
    dbNombreConcepto.SetFocus;
    exit;
  end;
  try
    begin
     if DM.EKModelo.finalizar_transaccion(Transaccion_Medios) then
      begin
        pDatos.Visible:=false;
        Grilla.Enabled := true;
        GrupoEditando.Enabled := true;
        GrupoGuardarCancelar.Enabled := false;
        ZQ_MedioCobroPago.Refresh;
      end;
    end
   except
      Application.MessageBox('Verifique que el Medio ingresado no exista y que los campos estén correctamente cargados.','Validación',MB_OK+MB_ICONINFORMATION);
   end

end;


procedure TFABM_MedioCobroPago.bt_salirClick(Sender: TObject);
begin
  close;
end;


procedure TFABM_MedioCobroPago.BtCancelarClick(Sender: TObject);
begin
  DM.EKModelo.cancelar_transaccion(Transaccion_Medios);
  pDatos.Visible:=false;
  Grilla.Enabled := true;
  GrupoEditando.Enabled := true;
  GrupoGuardarCancelar.Enabled := false;
  ZQ_MedioCobroPago.Refresh;
end;


procedure TFABM_MedioCobroPago.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(Transaccion_Medios) then
  begin
    if not (application.MessageBox(pchar('Si continua con el cierre se perderan los cambios realizados.'+#13+#13+'¿Salir de todos modos?'),'Atención', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose := False
    else
      dm.EKModelo.cancelar_transaccion(Transaccion_Medios);
  end;
end;


procedure TFABM_MedioCobroPago.FormCreate(Sender: TObject);
begin
  dm.EKModelo.abrir(ZQ_MedioCobroPago);
end;

procedure TFABM_MedioCobroPago.btnEliminarClick(Sender: TObject);
begin
  if (ZQ_MedioCobroPago.IsEmpty) or (ZQ_MedioCobroPagoEDITABLE.AsString='N') then
    exit;

  if (application.MessageBox(pchar('¿Esta seguro que desea eliminar el Medio seleccionado?                        ' + #13 + #13), 'Eliminar Medio', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(Transaccion_Medios, [ZQ_MedioCobroPago]) then
      ZQ_MedioCobroPago.Delete
    else
      exit;
    try
      if not (dm.EKModelo.finalizar_transaccion(Transaccion_Medios)) then
        dm.EKModelo.cancelar_transaccion(Transaccion_Medios);

    except
      begin
        Application.MessageBox('El Medio seleccionado no se puede borrar porque está siendo utilizado.','Atención',MB_OK+MB_ICONINFORMATION);
        dm.EKModelo.cancelar_transaccion(Transaccion_Medios);
      end
    end;
  end;
end;

end.
