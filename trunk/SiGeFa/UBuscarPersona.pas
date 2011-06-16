unit UBuscarPersona;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, dxBar, dxBarExtItems, ComCtrls,
  ISDBEditDateTimePicker, StdCtrls, Mask, DBCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, EKBusquedaAvanzada, EKOrdenarGrilla,
  ZStoredProcedure;

type
  TFBuscarPersona = class(TForm)
    PanelContenedor: TPanel;
    DBGridPersonas: TDBGrid;
    dxBarABM: TdxBarManager;
    BtSeleccionar: TdxBarLargeButton;
    BtCrearPersona: TdxBarLargeButton;
    btBaja: TdxBarLargeButton;
    btBuscar: TdxBarLargeButton;
    BtGuardar: TdxBarLargeButton;
    BtCancelar: TdxBarLargeButton;
    BtImprimir: TdxBarLargeButton;
    btReactivar: TdxBarLargeButton;
    btsalir: TdxBarLargeButton;
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
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    Nro_Persona: TZStoredProc;
    Nro_PersonaID: TIntegerField;
    procedure BtSeleccionarClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure btsalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridPersonasDblClick(Sender: TObject);
    procedure BtCrearPersonaClick(Sender: TObject);
    procedure BtGuardarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    function validarcampos():boolean;
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

procedure TFBuscarPersona.BtSeleccionarClick(Sender: TObject);
begin
  if ((not(DBGridPersonas.SelectedRows.Count > 0)) and (not(ZQ_Personas.IsEmpty))) then
  begin
    if Assigned(OnSeleccionar) then
      OnSeleccionar
  end
  else
    Application.MessageBox(PChar('Debe seleccionar algúna Persona.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;


procedure TFBuscarPersona.btBuscarClick(Sender: TObject);
begin
  EKBusquedaAvanzada1.Buscar;
end;


procedure TFBuscarPersona.btsalirClick(Sender: TObject);
begin
  close;
end;


procedure TFBuscarPersona.FormCreate(Sender: TObject);
begin
  PanelEdicion.Visible:= false;
  DM.EKModelo.abrir(ZQ_Provincia);
  DM.EKModelo.abrir(ZQ_TipoIVA);
  DM.EKModelo.abrir(ZQ_TipoDoc);

  dbNombre.Color:= dm.colorCampoRequido;
  DBEDireccion.Color:= dm.colorCampoRequido;
  dblkTipoDoc.Color:= dm.colorCampoRequido;
  dbNroDocu.Color:= dm.colorCampoRequido;

  EKBusquedaAvanzada1.Buscar;
end;


procedure TFBuscarPersona.DBGridPersonasDblClick(Sender: TObject);
begin
  if ((not(DBGridPersonas.SelectedRows.Count > 0)) and (not(ZQ_Personas.IsEmpty))) then
  begin
    if Assigned(OnSeleccionar) then
      OnSeleccionar
  end
  else
    Application.MessageBox(PChar('Debe seleccionar algúna Persona.'),'Datos Incompletos',MB_OK+MB_ICONWARNING);
end;


procedure TFBuscarPersona.BtCrearPersonaClick(Sender: TObject);
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

procedure TFBuscarPersona.BtGuardarClick(Sender: TObject);
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


procedure TFBuscarPersona.BtCancelarClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);
  DBGridPersonas.Enabled:=true;
  dm.EKModelo.cancelar_transaccion(Transaccion_CrearPersona);
  GrupoVisualizando.Enabled:=true;
  GrupoEditando.Enabled:=false;
  DBGridPersonas.SetFocus;
  PanelEdicion.Visible := false;
end;

end.
