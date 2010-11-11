unit UConfiguracion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, StdCtrls, DBCtrls, ComCtrls, Mask,
  Buttons, Grids, DBGrids, ExtCtrls, ZSqlProcessor, EKDBDateTimePicker;

type
  TFConfiguracion = class(TForm)
    pFondo: TPanel;
    panelGrilla: TPanel;
    DBGrid2: TDBGrid;
    btModifGral: TBitBtn;
    btQuitarGral: TBitBtn;
    btAgregGral: TBitBtn;
    Panel3: TPanel;
    grpGeneral: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    dbEditClave: TDBEdit;
    dbEditNro: TDBEdit;
    dbEditTexto: TDBMemo;
    dbEditNivel: TDBEdit;
    btAceptarGral: TBitBtn;
    btCancGral: TBitBtn;
    dbMemo: TDBMemo;
    DS_General: TDataSource;
    ZQ_Config: TZQuery;
    ZQ_ConfigCLAVE: TStringField;
    ZQ_ConfigFECHA: TDateField;
    ZQ_ConfigNUMERO: TFloatField;
    ZQ_ConfigTEXTO: TStringField;
    ZQ_ConfigNIVEL: TSmallintField;
    ZQ_ConfigGRUPO: TStringField;
    ZQ_ConfigDESCRIPCION: TStringField;
    ZQ_ConfigGRAFICO: TBlobField;
    dxBarABM: TdxBarManager;
    btnConfigNroOrden: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnEliminar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    ZQ_ReiniciarNroOrden: TZQuery;
    EKDBDateTimePicker1: TEKDBDateTimePicker;
    procedure btnSalirClick(Sender: TObject);
    procedure btAgregGralClick(Sender: TObject);
    procedure btModifGralClick(Sender: TObject);
    procedure btQuitarGralClick(Sender: TObject);
    procedure btAceptarGralClick(Sender: TObject);
    procedure btCancGralClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnConfigNroOrdenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfiguracion: TFConfiguracion;

const
  TRANSACCION = 'CONFIGURACION';

implementation

uses UDM, UUtilidades;

{$R *.dfm}

procedure TFConfiguracion.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFConfiguracion.btAgregGralClick(Sender: TObject);
begin
  grpGeneral.Enabled:= true;
  panelGrilla.Enabled:= false;

  if dm.EKModelo.iniciar_transaccion(TRANSACCION, [ZQ_Config]) then
  begin
    ZQ_Config.Append;
    dbEditClave.SetFocus;
  end;
end;


procedure TFConfiguracion.btModifGralClick(Sender: TObject);
begin
  if not(ZQ_Config.IsEmpty) then
  begin
    grpGeneral.Enabled:= true;
    panelGrilla.Enabled:= false;

    if dm.EKModelo.iniciar_transaccion(TRANSACCION, [ZQ_Config]) then
    begin
      ZQ_Config.edit;
      dbEditClave.SetFocus;
    end;
  end
end;


procedure TFConfiguracion.btQuitarGralClick(Sender: TObject);
begin
  if not(ZQ_Config.IsEmpty) then
  begin
    if (application.MessageBox(pchar('¿Esta seguro que desea eliminar la clave '+ZQ_ConfigCLAVE.AsString+'?'), 'Configuracón', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    begin
      if dm.EKModelo.iniciar_transaccion(TRANSACCION, [ZQ_Config]) then
      begin
        ZQ_Config.Delete;
        dm.EKModelo.finalizar_transaccion(TRANSACCION);
      end;
    end;
  end
end;


procedure TFConfiguracion.btAceptarGralClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);
  if DM.EKModelo.finalizar_transaccion(TRANSACCION) then
  begin
    grpGeneral.Enabled:= false;
    panelGrilla.Enabled:= true;
  end
end;


procedure TFConfiguracion.btCancGralClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);
  if DM.EKModelo.cancelar_transaccion(TRANSACCION) then
  begin
    grpGeneral.Enabled:= false;
    panelGrilla.Enabled:= true;
  end
end;


procedure TFConfiguracion.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(TRANSACCION) then
  begin
    if not (application.MessageBox(pchar('Si continua con el cierre se perderan los cambios realizados.'+#13+#13+'¿Salir de todos modos?'),'Atención', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose := False
    else
      dm.EKModelo.cancelar_transaccion(TRANSACCION);
  end;
end;


procedure TFConfiguracion.FormCreate(Sender: TObject);
begin
  dm.EKModelo.abrir(ZQ_Config);
  grpGeneral.Enabled:= false;
  panelGrilla.Enabled:= true;
end;

procedure TFConfiguracion.btnConfigNroOrdenClick(Sender: TObject);
var
  nro: string;
  numero: integer;
begin
  if InputQuery('Número de Orden de Pago', 'Ingrese el Número de Orden de Pago del cual desea arrancar:', nro) then
  begin
    if (trim(nro) = '') or not (sonTodosNumeros(nro)) then
    begin
      ShowMessage('El nro de Orden de Pago ingresado es incorrecto');
      exit;
    end;

    numero:= StrToInt(nro);
    if (numero <= 0) then
    begin
      ShowMessage('El nro de Orden de Pago ingresado es incorrecto (tiene que ser > 0)');
      exit;
    end;

    if dm.EKModelo.iniciar_transaccion(TRANSACCION, []) then
    begin
      ZQ_ReiniciarNroOrden.SQL.Clear;
      ZQ_ReiniciarNroOrden.SQL.Add('set generator GEN_IE_NRO_ORDEN_ID to '+IntToStr(numero - 1));
      ZQ_ReiniciarNroOrden.ExecSQL;

//      ShowMessage(ZQ_ReiniciarNroOrden.SQL.Text);

      if not DM.EKModelo.finalizar_transaccion(TRANSACCION) then
        dm.EKModelo.cancelar_transaccion(TRANSACCION);
    end;
  end;
end;

end.
