unit UBuscarPersona;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, dxBar, dxBarExtItems, ComCtrls,
  ISDBEditDateTimePicker, StdCtrls, Mask, DBCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, EKBusquedaAvanzada, EKOrdenarGrilla,
  ZStoredProcedure, ActnList, XPStyleActnCtrls, ActnMan;

type
  TFBuscarPersona = class(TForm)
    PanelContenedor: TPanel;
    DBGridPersonas: TDBGrid;
    dxBarABM: TdxBarManager;
    btnSeleccionar: TdxBarLargeButton;
    btnCrearPersona: TdxBarLargeButton;
    btBaja: TdxBarLargeButton;
    btnBuscar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    BtImprimir: TdxBarLargeButton;
    btReactivar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btverbajados: TdxBarLargeButton;
    BtBusquedaNueva: TdxBarLargeButton;
    btnSiguiente: TdxBarLargeButton;
    btnAnterior: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    PanelEdicion: TPanel;
    Label5: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    dbcSexo: TDBComboBox;
    dblkTipoDoc: TDBLookupComboBox;
    dbNombre: TDBEdit;
    dbNroDocu: TDBEdit;
    ISDBEditDateTimePicker1: TISDBEditDateTimePicker;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    DBEDireccion: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    ZQ_Personas: TZQuery;
    ZQ_PersonasID_PERSONA: TIntegerField;
    ZQ_PersonasID_PROVINCIA: TIntegerField;
    ZQ_PersonasID_TIPO_DOC: TIntegerField;
    ZQ_PersonasID_TIPO_IVA: TIntegerField;
    ZQ_PersonasNOMBRE: TStringField;
    ZQ_PersonasDIRECCION: TStringField;
    ZQ_PersonasLOCALIDAD: TStringField;
    ZQ_PersonasCODIGO_POSTAL: TStringField;
    ZQ_PersonasTELEFONO: TStringField;
    ZQ_PersonasEMAIL: TStringField;
    ZQ_PersonasFECHA_NACIMIENTO: TDateField;
    ZQ_PersonasNUMERO_DOC: TStringField;
    ZQ_PersonasSEXO: TStringField;
    ZQ_PersonasBAJA: TStringField;
    ZQ_PersonasDESCRIPCION: TStringField;
    ZQ_PersonasCUIT_CUIL: TStringField;
    DS_Personas: TDataSource;
    ZQ_Provincia: TZQuery;
    ZQ_ProvinciaID_PROVINCIA: TIntegerField;
    ZQ_ProvinciaNOMBRE_PROVINCIA: TStringField;
    DS_Provincia: TDataSource;
    DS_TipoIVA: TDataSource;
    ZQ_TipoIVA: TZQuery;
    ZQ_TipoIVAID_TIPO_IVA: TIntegerField;
    ZQ_TipoIVANOMBRE_TIPO_IVA: TStringField;
    ZQ_TipoIVAABREVIATURA: TStringField;
    ZQ_TipoIVADISCRIMINAR: TStringField;
    ZQ_TipoIVALETRA: TStringField;
    ZQ_TipoIVAFISCAL: TStringField;
    ZQ_TipoDoc: TZQuery;
    DS_TipoDoc: TDataSource;
    ZQ_TipoDocID_TIPO_DOC: TIntegerField;
    ZQ_TipoDocNOMBRE_TIPO_DOC: TStringField;
    EKBusqueda: TEKBusquedaAvanzada;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    Nro_Persona: TZStoredProc;
    Nro_PersonaID: TIntegerField;
    ATeclasRapidas: TActionManager;
    ASeleccionar: TAction;
    ABuscar: TAction;
    ASalir: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    procedure btnSeleccionarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridPersonasDblClick(Sender: TObject);
    procedure btnCrearPersonaClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure configRelacion(relacion:Integer);
    function validarcampos():boolean;
    procedure ABuscarExecute(Sender: TObject);
    procedure ASeleccionarExecute(Sender: TObject);
    procedure ASalirExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    id_persona: integer;
    OnSeleccionar : procedure() of object;
  end;

var
  FBuscarPersona: TFBuscarPersona;

const
  Transaccion_CrearPersona = 'Crear Persona';

implementation

uses UDM;

{$R *.dfm}


function TFBuscarPersona.validarcampos():boolean;
var
  mensaje: string;
  color: TColor;
begin
  result:= true;
  mensaje:= '';
  dbNombre.SetFocus;

  if (ZQ_PersonasNOMBRE.IsNull) then
  begin
    mensaje:= 'El campo Apellido y Nombre se encuentra vacío, Verifique';
    result := false;
  end;

  if (ZQ_PersonasDIRECCION.IsNull) then
  begin
    mensaje:= mensaje+#13+'El campo Dirección se encuentra vacío, Verifique';
    result := false;
  end;

  if (ZQ_PersonasID_TIPO_DOC.IsNull) then
  begin
    mensaje:= mensaje+#13+'El campo Tipo Documento se encuentra vacío, Verifique';
    result := false;
  end;

  if (ZQ_PersonasID_TIPO_DOC.AsInteger <> 0) then
    if (ZQ_PersonasNUMERO_DOC.IsNull) then
    begin
      mensaje:= mensaje+#13+'El campo Número Documento se encuentra vacío, Verifique';
      result := false;
    end;

  if Result = False then
    Application.MessageBox(pchar(mensaje), 'Validación', MB_OK+MB_ICONINFORMATION);
end;


procedure TFBuscarPersona.btnSeleccionarClick(Sender: TObject);
begin
  if ((not(DBGridPersonas.SelectedRows.Count > 0)) and (not(ZQ_Personas.IsEmpty))) then
  begin
    if Assigned(OnSeleccionar) then
      OnSeleccionar
  end
  else
    Application.MessageBox(PChar('Debe seleccionar algúna Persona.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;


procedure TFBuscarPersona.DBGridPersonasDblClick(Sender: TObject);
begin
  btnSeleccionar.Click;
end;


procedure TFBuscarPersona.btnBuscarClick(Sender: TObject);
begin
  EKBusqueda.Buscar;
end;


procedure TFBuscarPersona.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFBuscarPersona.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla1.CargarConfigColumnas;

  FBuscarPersona.Caption:= 'Buscar Persona';

  EKBusqueda.SQL_Select.Text:= 'select p.*';
  EKBusqueda.SQL_From.Text:= 'from persona p';
  EKBusqueda.SQL_Where.Text:= format('where p.baja <> %s', [QuotedStr('S')]);
  EKBusqueda.SQL_Orden.Text:= 'order by p.nombre';

  PanelEdicion.Visible:= false;
  DM.EKModelo.abrir(ZQ_Provincia);
  DM.EKModelo.abrir(ZQ_TipoIVA);
  DM.EKModelo.abrir(ZQ_TipoDoc);

  dbNombre.Color:= dm.colorCampoRequido;
  DBEDireccion.Color:= dm.colorCampoRequido;
  dblkTipoDoc.Color:= dm.colorCampoRequido;
  dbNroDocu.Color:= dm.colorCampoRequido;
end;


procedure TFBuscarPersona.btnCrearPersonaClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(Transaccion_CrearPersona,[ZQ_Personas]) then
  begin
    GrupoVisualizando.Enabled:=false;
    GrupoEditando.Enabled:=true;
    DBGridPersonas.Enabled:= false;

    Nro_Persona.Active:= True;
    id_persona:= Nro_PersonaID.AsInteger;
    Nro_Persona.Active:= false;

    ZQ_Personas.Append;
    ZQ_PersonasID_PERSONA.AsInteger:= id_persona;
    ZQ_PersonasBAJA.AsString := 'N';
    PanelEdicion.Visible := true;
    dbNombre.SetFocus;
  end;
end;


procedure TFBuscarPersona.btnGuardarClick(Sender: TObject);
var
  id : integer;
begin
    if not validarcampos then
    exit;

    id:= ZQ_PersonasID_PERSONA.AsInteger;
    if DM.EKModelo.finalizar_transaccion(Transaccion_CrearPersona) then
    begin
      DBGridPersonas.Enabled:=true;
      GrupoVisualizando.Enabled:=true;
      GrupoEditando.Enabled:=false;
      DBGridPersonas.SetFocus;
      PanelEdicion.Visible := false;

      ZQ_Personas.Refresh;
      ZQ_Personas.Locate('ID_PERSONA',id,[]);
      
      if Assigned(OnSeleccionar) then
        OnSeleccionar
    end;
end;


procedure TFBuscarPersona.btnCancelarClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);
  
  if dm.EKModelo.cancelar_transaccion(Transaccion_CrearPersona) then
  begin
    DBGridPersonas.Enabled:=true;
    GrupoVisualizando.Enabled:=true;
    GrupoEditando.Enabled:=false;
    DBGridPersonas.SetFocus;
    PanelEdicion.Visible := false;
  end;
end;

procedure TFBuscarPersona.configRelacion(relacion:Integer);
begin
  FBuscarPersona.Caption:= 'Buscar Cliente';
  btnCrearPersona.Visible:= ivNever;
  btnGuardar.Visible:= ivNever;
  btnCancelar.Visible:= ivNever;

  EKBusqueda.SQL_Select.Text:= 'select p.*';
  EKBusqueda.SQL_From.Text:= 'from persona p left join persona_relacion pr on (p.id_persona = pr.id_persona)';
  EKBusqueda.SQL_Where.Text:= format('where (p.baja <> %s) and (pr.id_relacion = %d)', [QuotedStr('S'), relacion]);
  EKBusqueda.SQL_Orden.Text:= 'order by p.nombre';
end;

procedure TFBuscarPersona.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFBuscarPersona.ASeleccionarExecute(Sender: TObject);
begin
  if btnSeleccionar.Enabled then
    btnSeleccionar.Click;
end;

procedure TFBuscarPersona.ASalirExecute(Sender: TObject);
begin
  if btnSalir.Enabled then
    btnSalir.Click;
end;

procedure TFBuscarPersona.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFBuscarPersona.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;

procedure TFBuscarPersona.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
end;

end.
