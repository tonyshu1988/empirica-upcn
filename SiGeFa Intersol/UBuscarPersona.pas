unit UBuscarPersona;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, dxBar, dxBarExtItems, ComCtrls,
  StdCtrls, Mask, DBCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, EKBusquedaAvanzada, EKOrdenarGrilla,
  ZStoredProcedure, ActnList, XPStyleActnCtrls, ActnMan, EKDBDateTimePicker,
  Menus, Buttons, cxClasses;

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
    PanelEdicion: TPanel;
    PopupMenuTelmail: TPopupMenu;
    AgregarTelMail: TMenuItem;
    EditarTelMail: TMenuItem;
    EliminarTelMail: TMenuItem;
    ZQ_EntidadTelefono: TZQuery;
    ZQ_EntidadTelefonoID_ENTIDAD_TELEFONO: TIntegerField;
    ZQ_EntidadTelefonoID_ENTIDAD: TIntegerField;
    ZQ_EntidadTelefonoTELEFONO: TStringField;
    ZQ_EntidadTelefonoMAIL: TStringField;
    ZQ_EntidadTelefonoID_PERSONA: TIntegerField;
    ZQ_EntidadTelefonoDESCRIPCION: TStringField;
    DS_EntidadTelefono: TDataSource;
    PageControl: TPageControl;
    TabSheetDatos: TTabSheet;
    Label9: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    DBLCBoxProvincia: TDBLookupComboBox;
    DBLCBoxCondIva: TDBLookupComboBox;
    DBEApellidoNombre: TDBEdit;
    DBENroDocumento: TDBEdit;
    DBELocalidad: TDBEdit;
    DBEDireccion: TDBEdit;
    DBECodPostal: TDBEdit;
    DBCBoxSexo: TDBComboBox;
    EKDBFechaNacimiento: TEKDBDateTimePicker;
    DBLCBoxTipoDoc: TDBLookupComboBox;
    DBECuit_Cuil: TDBEdit;
    DBEditCodigo: TDBEdit;
    DBEDescuento: TDBEdit;
    TabSheetTelMail: TTabSheet;
    DBGridTelMail: TDBGrid;
    TabSheetDetalle: TTabSheet;
    DBMemoDetalle: TDBMemo;
    TabSheetCtaCte: TTabSheet;
    gBoxCuentaCorriente: TGroupBox;
    Label15: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EKDBFechaCtaCte: TEKDBDateTimePicker;
    DBEditLimiteDeuda: TDBEdit;
    btnCtaCte_Aceptar: TBitBtn;
    btnCtaCte_Cancelar: TBitBtn;
    DBEditVencimDia: TDBEdit;
    EKDBDateTimePicker1: TEKDBDateTimePicker;
    btnCtaCte_Alta: TButton;
    btnCtaCte_Modificar: TButton;
    btnCtaCte_Reactivar: TButton;
    btnCtaCte_Baja: TButton;
    ZQ_PersonasDESCUENTO_ESPECIAL: TFloatField;
    ZQ_PersonasCODIGO_CORTO: TIntegerField;
    ZQ_UltimoNro: TZQuery;
    ZQ_UltimoNroCODIGO_CORTO: TIntegerField;
    ZQ_RelacionCliente: TZQuery;
    ZQ_RelacionClienteID_PERSONA_RELACION: TIntegerField;
    ZQ_RelacionClienteID_PERSONA: TIntegerField;
    ZQ_RelacionClienteID_RELACION: TIntegerField;
    ZQ_RelacionClienteID_EMPRESA: TIntegerField;
    ZQ_RelacionClienteID_SUCURSAL: TIntegerField;
    RadioGroupRelacionCliente: TRadioGroup;
    ZQ_CtaCte: TZQuery;
    ZQ_CtaCteID_CTA_CTE: TIntegerField;
    ZQ_CtaCteID_PERSONA: TIntegerField;
    ZQ_CtaCteSALDO: TFloatField;
    ZQ_CtaCteLIMITE_DEUDA: TFloatField;
    ZQ_CtaCteFECHA_ALTA: TDateField;
    ZQ_CtaCteFECHA_BAJA: TDateField;
    ZQ_CtaCteBAJA: TStringField;
    ZQ_CtaCteID_PROVEEDOR: TIntegerField;
    ZQ_CtaCteVENCIMIENTO_DIAS: TIntegerField;
    DS_CtaCte: TDataSource;
    ZQ_PersonasCODIGO_BARRA: TStringField;
    ZQ_PersonasCLAVE: TStringField;
    procedure btnSeleccionarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridPersonasDblClick(Sender: TObject);
    procedure btnCrearPersonaClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure configRelacion(relacion: Integer; permitirAlta: boolean);
    procedure configCtaCte();
    function validarcampos():boolean;
    procedure ABuscarExecute(Sender: TObject);
    procedure ASeleccionarExecute(Sender: TObject);
    procedure ASalirExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AgregarTelMailClick(Sender: TObject);
    procedure EditarTelMailClick(Sender: TObject);
    procedure EliminarTelMailClick(Sender: TObject);
    procedure ZQ_EntidadTelefonoBeforePost(DataSet: TDataSet);
    procedure DBGridPersonasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridTelMailDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnCtaCte(Sender: TObject);
    procedure habilitarCtaCte(flag: boolean);
    procedure btnCtaCte_AceptarClick(Sender: TObject);
    procedure btnCtaCte_CancelarClick(Sender: TObject);
    procedure RadioGroupRelacionClienteClick(Sender: TObject);
    procedure permisosUsuario();
  private
    { Private declarations }
  public
    id_persona: integer;
    id_relacion: integer;
    tieneCuentaCorriente, altaCtaCte: boolean;
    OnSeleccionar : procedure() of object;
  end;

var
  FBuscarPersona: TFBuscarPersona;

const
  Transaccion_CrearPersona = 'Crear Persona';

implementation

uses UDM, UPrincipal, UUtilidades;

{$R *.dfm}


function TFBuscarPersona.validarcampos():boolean;
var
  mensaje: string;
begin
  PageControl.ActivePageIndex:= 0;
  result:= true;
  mensaje:= '';

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

  if (ZQ_PersonasID_TIPO_IVA.IsNull) then
  begin
    mensaje:= mensaje+#13+'El campo Condición IVA se encuentra vacío, Verifique';
    result := false;
  end;

  if not ((ZQ_PersonasCUIT_CUIL.IsNull) or (ZQ_PersonasCUIT_CUIL.AsString = '')) then
    if not sonTodosNumeros(ZQ_PersonasCUIT_CUIL.AsString) then
    begin
      mensaje:= mensaje+#13+'El valor ingresado en el campo Cuit/Cuil es invalido, Verifique'+char(13)+'(sólo debe ingresar números, sin guiones)';
      result := false;
    end;
      
  if Result = False then
  begin
    Application.MessageBox(pchar(mensaje), 'Validación', MB_OK+MB_ICONINFORMATION);
    DBEApellidoNombre.SetFocus;
  end;
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

  EKBusqueda.SQL_Select.Text:= 'select p.*';
  EKBusqueda.SQL_From.Text:= 'from persona p';
  EKBusqueda.SQL_Where.Text:= format('where p.baja <> %s', [QuotedStr('S')]);
  EKBusqueda.SQL_Orden.Text:= 'order by p.nombre';

  PanelEdicion.Visible:= false;

  DM.EKModelo.abrir(ZQ_Provincia);
  DM.EKModelo.abrir(ZQ_TipoIVA);
  DM.EKModelo.abrir(ZQ_TipoDoc);

  DBEApellidoNombre.Color:= dm.colorCampoRequido;
  DBEDireccion.Color:= dm.colorCampoRequido;
  DBLCBoxTipoDoc.Color:= dm.colorCampoRequido;
  DBENroDocumento.Color:= dm.colorCampoRequido;
  DBLCBoxCondIva.Color:= dm.colorCampoRequido;

  id_relacion:= -1;
  RadioGroupRelacionCliente.Enabled:= true;
  RadioGroupRelacionCliente.ItemIndex:= 0;
  tieneCuentaCorriente:= false;
  altaCtaCte:= false;
  habilitarCtaCte(false);
  permisosUsuario;
end;


procedure TFBuscarPersona.btnCrearPersonaClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(Transaccion_CrearPersona,[ZQ_Personas, ZQ_RelacionCliente, ZQ_CtaCte, ZQ_EntidadTelefono]) then
  begin
    GrupoVisualizando.Enabled:=false;
    GrupoEditando.Enabled:=true;

    DBGridPersonas.Enabled:= false;
    PageControl.TabIndex:= 0;

    Nro_Persona.Active:= True;
    id_persona:= Nro_PersonaID.AsInteger;
    Nro_Persona.Active:= false;

    ZQ_Personas.Append;
    ZQ_PersonasID_PERSONA.AsInteger:= id_persona;
    ZQ_PersonasID_PROVINCIA.AsInteger:= dm.provinciaPorDefecto;  //por defecto santa fe
    ZQ_PersonasBAJA.AsString:= 'N';

    ZQ_UltimoNro.Close;
    ZQ_UltimoNro.Open;
    if ZQ_UltimoNro.IsEmpty then
      ZQ_PersonasCODIGO_CORTO.AsInteger:= 1
    else
      ZQ_PersonasCODIGO_CORTO.AsInteger:= ZQ_UltimoNroCODIGO_CORTO.AsInteger + 1;

    PanelEdicion.Visible:= true;
    DBEApellidoNombre.SetFocus;
  end;
end;


procedure TFBuscarPersona.btnGuardarClick(Sender: TObject);
var
  id : integer;
begin
  PageControl.TabIndex := 0;

  if not validarcampos then
    exit;

  if id_relacion = RELACION_CLIENTE then //si estoy dando de alta un cliente
  begin
    ZQ_RelacionCliente.Append;
    ZQ_RelacionClienteID_PERSONA.AsInteger:= id_persona;
    ZQ_RelacionClienteID_RELACION.AsInteger:= RELACION_CLIENTE; //cliente
    ZQ_RelacionClienteID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
    ZQ_RelacionClienteID_EMPRESA.Clear;
  end
  else //si no estoy dando de alta un cliente, pregunto si quiero que la persona sea cliente
    if (RadioGroupRelacionCliente.ItemIndex = 1) then //si esta marcado como que es cliente
    begin
      ZQ_RelacionCliente.Append;
      ZQ_RelacionClienteID_PERSONA.AsInteger:= id_persona;
      ZQ_RelacionClienteID_RELACION.AsInteger:= RELACION_CLIENTE; //cliente
      ZQ_RelacionClienteID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
      ZQ_RelacionClienteID_EMPRESA.Clear;
    end;

  id:= ZQ_PersonasID_PERSONA.AsInteger;
  if DM.EKModelo.finalizar_transaccion(Transaccion_CrearPersona) then
  begin
    DBGridPersonas.Enabled:=true;
    GrupoVisualizando.Enabled:=true;
    GrupoEditando.Enabled:=false;
    DBGridPersonas.SetFocus;

    PanelEdicion.Visible := false;

    ZQ_Personas.Refresh;
    ZQ_Personas.Locate('ID_PERSONA', id, []);

    if Assigned(OnSeleccionar) then
      OnSeleccionar
  end;
end;


procedure TFBuscarPersona.btnCancelarClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if (application.MessageBox(pchar('¿Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION - ABM Personas', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.cancelar_transaccion(Transaccion_CrearPersona) then
    begin
      DBGridPersonas.Enabled:=true;
      GrupoVisualizando.Enabled:=true;
      GrupoEditando.Enabled:=false;
      DBGridPersonas.SetFocus;
      PanelEdicion.Visible := false;
    end;
end;


procedure TFBuscarPersona.configRelacion(relacion: Integer; permitirAlta: boolean);
begin
  btnCrearPersona.Visible:= ivNever;
  btnGuardar.Visible:= ivNever;
  btnCancelar.Visible:= ivNever;
  if permitirAlta then
  begin
    btnCrearPersona.Visible:= ivAlways;
    btnGuardar.Visible:= ivAlways;
    btnCancelar.Visible:= ivAlways;
  end;

  EKBusqueda.SQL_Select.Text:= 'select p.*';
  EKBusqueda.SQL_From.Text:= 'from persona p left join persona_relacion pr on (p.id_persona = pr.id_persona)';
  EKBusqueda.SQL_Where.Text:= format('where (p.baja <> %s) and (pr.id_relacion = %d)', [QuotedStr('S'), relacion]);
  EKBusqueda.SQL_Orden.Text:= 'order by p.nombre';

  id_relacion:= relacion;
  case relacion of
  RELACION_CLIENTE: begin
                      FBuscarPersona.Caption:= 'Buscar Cliente';
                      RadioGroupRelacionCliente.Enabled:= false;
                      RadioGroupRelacionCliente.ItemIndex:= 1;
                    end;
  RELACION_EMPLEADO:begin
                      FBuscarPersona.Caption:= 'Buscar Empleado';
                      EKBusqueda.SQL_Where.Text:= format('where (p.baja <> %s) and (pr.id_relacion = %d) and (pr.id_sucursal = %d)', [QuotedStr('S'), relacion, SUCURSAL_LOGUEO]);
                    end;
  RELACION_VIAJANTE:begin
                      FBuscarPersona.Caption:= 'Buscar Viejante';
                    end;
  RELACION_CONTACTO:begin
                      FBuscarPersona.Caption:= 'Buscar Contacto';
                    end;
  end;
end;


procedure TFBuscarPersona.configCtaCte();
begin
  FBuscarPersona.Caption:= 'Buscar Cliente - Cta. Cte.';
  btnCrearPersona.Visible:= ivNever;
  btnGuardar.Visible:= ivNever;
  btnCancelar.Visible:= ivNever;

  EKBusqueda.SQL_Select.Text:= 'select p.*, cc.*';
  EKBusqueda.SQL_From.Text:= 'from persona p left join cuenta_corriente cc on (p.id_persona = cc.id_persona)';
  EKBusqueda.SQL_Where.Text:= 'where cc.id_cta_cte is not null';
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


procedure TFBuscarPersona.AgregarTelMailClick(Sender: TObject);
begin
  if not (dgEditing	in DBGridTelMail.Options) then
  begin
    DBGridTelMail.Options := DBGridTelMail.Options - [dgRowSelect];
    DBGridTelMail.Options := DBGridTelMail.Options + [dgEditing];
    ZQ_EntidadTelefono.Append;
  end;

  ZQ_EntidadTelefono.Append;
end;


procedure TFBuscarPersona.EditarTelMailClick(Sender: TObject);
begin
  if not (dgEditing	in DBGridTelMail.Options) then
  begin
    DBGridTelMail.Options := DBGridTelMail.Options - [dgRowSelect];
    DBGridTelMail.Options := DBGridTelMail.Options + [dgEditing];
    ZQ_EntidadTelefono.Edit;
  end;
end;


procedure TFBuscarPersona.EliminarTelMailClick(Sender: TObject);
begin
 if not ZQ_EntidadTelefono.IsEmpty then
 begin
    ZQ_EntidadTelefono.Delete;
 end
end;


procedure TFBuscarPersona.ZQ_EntidadTelefonoBeforePost(DataSet: TDataSet);
begin
  ZQ_EntidadTelefonoID_PERSONA.AsInteger := ZQ_PersonasID_PERSONA.AsInteger;
end;


procedure TFBuscarPersona.DBGridPersonasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridPersonas, Rect, DataCol, Column, State);
end;


procedure TFBuscarPersona.DBGridTelMailDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridTelMail, Rect, DataCol, Column, State);
end;


procedure TFBuscarPersona.btnCtaCte(Sender: TObject);
var
  btn: TButton;
begin
  altaCtaCte:= false;
  btn:= Sender as TButton;

  if btn.Caption = 'Alta' then
  begin
    if tieneCuentaCorriente then
      exit;

    altaCtaCte:= true;
    habilitarCtaCte(true);

    ZQ_CtaCte.Append;
    ZQ_CtaCteID_PERSONA.AsInteger:= id_persona;
    ZQ_CtaCteID_PROVEEDOR.Clear;
    ZQ_CtaCteFECHA_ALTA.AsDateTime:= dm.EKModelo.FechayHora;
    ZQ_CtaCteFECHA_BAJA.Clear;
    ZQ_CtaCteLIMITE_DEUDA.AsFloat:= ctacte_credito; //por defecto lo de la configuracion
    ZQ_CtaCteVENCIMIENTO_DIAS.AsInteger:= ctacte_diasVencimiento; //por defecto lo de la configuracion
    ZQ_CtaCteSALDO.AsFloat:= 0;
    ZQ_CtaCteBAJA.AsString:= 'N';

    EKDBFechaCtaCte.SetFocus;
    GrupoEditando.Enabled:= false;
  end;

  if btn.Caption = 'Modificar' then
  begin
    if not tieneCuentaCorriente then
      exit;

    habilitarCtaCte(true);
    ZQ_CtaCte.Edit;
    EKDBFechaCtaCte.SetFocus;
    GrupoEditando.Enabled:= false;
  end;

  if btn.Caption = 'Baja' then
  begin
    if (not tieneCuentaCorriente) or (ZQ_CtaCteBAJA.AsString = 'S') then
      exit;

    if (application.MessageBox(pchar('¿Desea dar de baja la "Cuenta Corriente"?'), 'ABM Persona', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    begin
      ZQ_CtaCte.Edit;
      ZQ_CtaCteBAJA.AsString:= 'S';
      ZQ_CtaCteFECHA_BAJA.AsDateTime:= dm.EKModelo.FechayHora;
    end;
  end;

  if btn.Caption = 'Reactivar' then
  begin
    if (not tieneCuentaCorriente) or (ZQ_CtaCteBAJA.AsString = 'N') then
      exit;

    if (application.MessageBox(pchar('¿Desea reactivar la "Cuenta Corriente"?'), 'ABM Persona', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    begin
      ZQ_CtaCte.Edit;
      ZQ_CtaCteBAJA.AsString:= 'N';
      ZQ_CtaCteFECHA_BAJA.clear;
    end;
  end;
end;


procedure TFBuscarPersona.habilitarCtaCte(flag: boolean);
begin
  gBoxCuentaCorriente.Enabled:= flag;
  if flag then
  begin
    FPrincipal.Iconos_Menu_16.GetBitmap(0, btnCtaCte_Cancelar.Glyph);
    FPrincipal.Iconos_Menu_16.GetBitmap(1, btnCtaCte_Aceptar.Glyph);
  end
  else
  begin
    btnCtaCte_Aceptar.Glyph:= nil;
    btnCtaCte_Cancelar.Glyph:= nil;
  end;

  btnCtaCte_Alta.Enabled:= not flag;
  btnCtaCte_Modificar.Enabled:= not flag;
  btnCtaCte_Baja.Enabled:= not flag;
  btnCtaCte_Reactivar.Enabled:= not flag;
end;


procedure TFBuscarPersona.btnCtaCte_AceptarClick(Sender: TObject);
begin
  if altaCtaCte then
    tieneCuentaCorriente:= true;

  ZQ_CtaCte.Post;
  habilitarCtaCte(false);
  GrupoEditando.Enabled:= true;
end;


procedure TFBuscarPersona.btnCtaCte_CancelarClick(Sender: TObject);
begin
  if altaCtaCte then
    tieneCuentaCorriente:= false;

  ZQ_CtaCte.RevertRecord;
  habilitarCtaCte(false);
  GrupoEditando.Enabled:= true;
end;


procedure TFBuscarPersona.RadioGroupRelacionClienteClick(Sender: TObject);
begin
  if RadioGroupRelacionCliente.ItemIndex = 1 then
    TabSheetCtaCte.TabVisible:= true
  else
    TabSheetCtaCte.TabVisible:= false;
  permisosUsuario;
end;


procedure TFBuscarPersona.permisosUsuario();
begin
  TabSheetCtaCte.TabVisible:= true;
  TabSheetDetalle.TabVisible:= true;

  if not dm.ISUsrLogin.PermisoAccion('PERSONA_DETALLE') then
  begin
    TabSheetDetalle.TabVisible:= false;
  end;

  if not dm.ISUsrLogin.PermisoAccion('PERSONA_CTA_CTE') then
  begin
    TabSheetCtaCte.TabVisible:= false;
  end;
end;

end.
