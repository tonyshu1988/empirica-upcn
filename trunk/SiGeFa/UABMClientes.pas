unit UABMClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids,
  EKBusquedaAvanzada, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ZStoredProcedure, ComCtrls, EKDBDateTimePicker,
  StdCtrls, DBCtrls, Mask, ZSqlUpdate;

type
  TFABMClientes = class(TForm)
    dxBarABM: TdxBarManager;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnBuscar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelFondo: TPanel;
    DBGridClientes: TDBGrid;
    ZQ_Clientes: TZQuery;
    DS_Clientes: TDataSource;
    EKBuscar: TEKBusquedaAvanzada;
    ZQ_Provincia: TZQuery;
    DS_Provincia: TDataSource;
    ZQ_Iva: TZQuery;
    DS_Iva: TDataSource;
    ZQ_Documento: TZQuery;
    DS_Documento: TDataSource;
    ZQ_ProvinciaID_PROVINCIA: TIntegerField;
    ZQ_ProvinciaNOMBRE_PROVINCIA: TStringField;
    ZQ_IvaID_TIPO_IVA: TIntegerField;
    ZQ_IvaNOMBRE_TIPO_IVA: TStringField;
    ZQ_IvaABREVIATURA: TStringField;
    ZQ_IvaDISCRIMINAR: TStringField;
    ZQ_IvaLETRA: TStringField;
    ZQ_IvaFISCAL: TStringField;
    ZQ_DocumentoID_TIPO_DOC: TIntegerField;
    ZQ_DocumentoNOMBRE_TIPO_DOC: TStringField;
    EKOrdenar: TEKOrdenarGrilla;
    Nro_Cliente: TZStoredProc;
    ZQ_ClientesID_PERSONA: TIntegerField;
    ZQ_ClientesID_PROVINCIA: TIntegerField;
    ZQ_ClientesID_TIPO_DOC: TIntegerField;
    ZQ_ClientesID_TIPO_IVA: TIntegerField;
    ZQ_ClientesNOMBRE: TStringField;
    ZQ_ClientesDIRECCION: TStringField;
    ZQ_ClientesLOCALIDAD: TStringField;
    ZQ_ClientesCODIGO_POSTAL: TStringField;
    ZQ_ClientesTELEFONO: TStringField;
    ZQ_ClientesEMAIL: TStringField;
    ZQ_ClientesFECHA_NACIMIENTO: TDateField;
    ZQ_ClientesNUMERO_DOC: TStringField;
    ZQ_ClientesSEXO: TStringField;
    ZQ_ClientesDESCRIPCION: TStringField;
    ZQ_ClientesCUIT_CUIL: TStringField;
    ZQ_ClientesBAJA: TStringField;
    ZQ_ClientesAUD_USUARIO: TStringField;
    ZQ_ClientesAUD_FECHA: TDateTimeField;
    ZQ_ClientesNOMBRE_TIPO_DOC: TStringField;
    ZQ_ClientesNOMBRE_TIPO_IVA: TStringField;
    ZQ_ClientesNOMBRE_PROVINCIA: TStringField;
    Nro_ClienteID: TIntegerField;
    PanelEdicion: TPanel;
    PageControl: TPageControl;
    TabSheetDatos: TTabSheet;
    Label9: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label16: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    DBLCBoxProvincia: TDBLookupComboBox;
    DBLCBoxCondIva: TDBLookupComboBox;
    DBETelefonos: TDBEdit;
    DBEApellidoNombre: TDBEdit;
    DBENroDocumento: TDBEdit;
    DBELocalidad: TDBEdit;
    DBEEmail: TDBEdit;
    DBEDireccion: TDBEdit;
    DBECodPostal: TDBEdit;
    TabSheetDetalle: TTabSheet;
    DBMemoDetalle: TDBMemo;
    Label13: TLabel;
    Label14: TLabel;
    DBCBoxSexo: TDBComboBox;
    EKDBFechaNacimiento: TEKDBDateTimePicker;
    DBLCBoxTipoDoc: TDBLookupComboBox;
    Label2: TLabel;
    DBECuit_Cuil: TDBEdit;
    ZU_Clientes: TZUpdateSQL;
    PanelCabecera: TPanel;
    ShapeCabeceraFrente: TShape;
    ShapeCabeceraFondo: TShape;
    LabelCabeceraFrente: TLabel;
    LabelCabeceraFondo: TLabel;
    lblResultadoBusqueda: TLabel;
    StaticTxtBaja: TStaticText;
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    function  validarcampos():boolean;
    procedure DBGridClientesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnVerDetalleClick(Sender: TObject);
  private
    id_cliente: integer;
  public
    { Public declarations }
  end;

var
  FABMClientes: TFABMClientes;

const
  transaccion_ABMCliente = 'ABM CLIENTES';

implementation

uses UDM, UPrincipal;

{$R *.dfm}


procedure TFABMClientes.FormCreate(Sender: TObject);
begin
  EKOrdenar.CargarConfigColunmas;
  dm.EKModelo.abrir(ZQ_Provincia);
  dm.EKModelo.abrir(ZQ_Iva);
  dm.EKModelo.abrir(ZQ_Documento);

  StaticTxtBaja.Color:= FPrincipal.baja;

  EKBuscar.Abrir;
end;


procedure TFABMClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenar.GuardarConfigColumnas
end;


procedure TFABMClientes.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABMCliente);
end;


procedure TFABMClientes.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABMClientes.btnBuscarClick(Sender: TObject);
begin
  EKBuscar.Buscar;
end;


procedure TFABMClientes.btnVerDetalleClick(Sender: TObject);
begin
  PanelEdicion.Visible:= not PanelEdicion.Visible;
end;


procedure TFABMClientes.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABMCliente, [ZQ_Clientes]) then
  begin
    DBGridClientes.Enabled := false;
    PanelEdicion.Visible:= true;
    TabSheetDatos.Enabled:= true;
    PageControl.Visible:= true;
    PageControl.ActivePageIndex:= 0;

    ZQ_Clientes.Append;
    ZQ_ClientesBAJA.AsString:= 'N';

    DBEApellidoNombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABMClientes.btnModificarClick(Sender: TObject);
begin
  if ZQ_Clientes.IsEmpty then
    exit;


  if dm.EKModelo.iniciar_transaccion(transaccion_ABMCliente, [ZQ_Clientes]) then
  begin
    DBGridClientes.Enabled := false;
    PanelEdicion.Visible:= true;
    TabSheetDatos.Enabled:= true;
    PageControl.Visible:= true;
    PageControl.ActivePageIndex:= 0;

    ZQ_Clientes.Edit;

    DBEApellidoNombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABMClientes.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Clientes.IsEmpty) OR (ZQ_ClientesBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('�Desea dar de baja el Cliente seleccionado?'), 'ABM Cliente', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMCliente, [ZQ_Clientes]) then
    begin
      ZQ_Clientes.Edit;
      ZQ_ClientesBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMCliente)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMCliente);

    recNo:= ZQ_Clientes.RecNo;
    ZQ_Clientes.Refresh;
    ZQ_Clientes.RecNo:= recNo;
  end;
end;


procedure TFABMClientes.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Clientes.IsEmpty) OR (ZQ_ClientesBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('�Desea reactivar el Cliente seleccionado?'), 'ABM Cliente', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMCliente, [ZQ_Clientes]) then
    begin
      ZQ_Clientes.Edit;
      ZQ_ClientesBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMCliente)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMCliente);

    recNo:= ZQ_Clientes.RecNo;
    ZQ_Clientes.Refresh;
    ZQ_Clientes.RecNo:= recNo;
  end;
end;


procedure TFABMClientes.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if not validarcampos() then
    exit;

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABMCliente) then
    begin
      DBGridClientes.Enabled := true;
      TabSheetDatos.Enabled:= False;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      recNo:= ZQ_Clientes.RecNo;
      EKBuscar.VerConsultaOriginal;
      ZQ_Clientes.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos est�n cargados correctamente.', 'Atenci�n',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end
end;


procedure TFABMClientes.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABMCliente) then
  begin
    TabSheetDatos.Enabled:= false;
    DBGridClientes.Enabled := true;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;
end;


procedure TFABMClientes.btnImprimirClick(Sender: TObject);
begin
  if ZQ_Clientes.IsEmpty then
    exit;

//  dm.TitulosReportes(RepProv,CuentaNro);
//  EKVistaPreviaQR1.VistaPrevia;
end;


function TFABMClientes.validarcampos():boolean;
begin
   result := true;

//  if (ZQ_ClientesNOMBRE.IsNull) then
//  begin
//    Application.MessageBox('El campo Apellido y Nombre se encuentra vac�o, por favor Verifique','Validaci�n',MB_OK+MB_ICONINFORMATION);
//    PageControl.ActivePageIndex:= 0;
//    DBEApellidoNombre.SetFocus;
//    result := false;
//    exit;
//  end;
//
//  if (DBENombreFantasia.Text = '') then
//  begin
//    Application.MessageBox('El campo "Nombre de Fantas�a" se encuentra vac�o, por favor Verifique','Validaci�n',MB_OK+MB_ICONINFORMATION);
//    PageControl1.ActivePageIndex:= 0;
//    DBENombreFantasia.SetFocus;
//    result := false;
//    exit;
//  end;
//
//  if (DBTipo.Text = '') then
//  begin
//    Application.MessageBox('El campo "Tipo" se encuentra vac�o, por favor Verifique','Validaci�n',MB_OK+MB_ICONINFORMATION);
//    PageControl1.ActivePageIndex:= 0;
//    DBTipo.SetFocus;
//    result := false;
//    exit;
//  end;
end;


procedure TFABMClientes.DBGridClientesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_Clientes.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridClientes, ZQ_ClientesBAJA.AsString, Rect, DataCol, Column, State);
end;



end.
