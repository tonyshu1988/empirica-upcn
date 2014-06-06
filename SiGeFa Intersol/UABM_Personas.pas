unit UABM_Personas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, Grids, DBGrids,
  EKBusquedaAvanzada, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ZStoredProcedure, ComCtrls, EKDBDateTimePicker,
  StdCtrls, DBCtrls, Mask, ZSqlUpdate, EKFiltrarColumna, ActnList,
  XPStyleActnCtrls, ActnMan, EKVistaPreviaQR, QRCtrls, QuickRpt, Buttons,
  Menus, ShellAPI, EKListadoSQL, cxClasses;

type
  TFABM_Personas = class(TForm)
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
    btnImprimirDetalle: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelFondo: TPanel;
    DBGridClientes: TDBGrid;
    ZQ_Persona: TZQuery;
    DS_Persona: TDataSource;
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
    Nro_Persona: TZStoredProc;
    ZQ_PersonaID_PERSONA: TIntegerField;
    ZQ_PersonaID_PROVINCIA: TIntegerField;
    ZQ_PersonaID_TIPO_DOC: TIntegerField;
    ZQ_PersonaID_TIPO_IVA: TIntegerField;
    ZQ_PersonaNOMBRE: TStringField;
    ZQ_PersonaDIRECCION: TStringField;
    ZQ_PersonaLOCALIDAD: TStringField;
    ZQ_PersonaCODIGO_POSTAL: TStringField;
    ZQ_PersonaTELEFONO: TStringField;
    ZQ_PersonaEMAIL: TStringField;
    ZQ_PersonaFECHA_NACIMIENTO: TDateField;
    ZQ_PersonaNUMERO_DOC: TStringField;
    ZQ_PersonaSEXO: TStringField;
    ZQ_PersonaCUIT_CUIL: TStringField;
    ZQ_PersonaBAJA: TStringField;
    ZQ_PersonaNOMBRE_TIPO_DOC: TStringField;
    ZQ_PersonaNOMBRE_TIPO_IVA: TStringField;
    ZQ_PersonaNOMBRE_PROVINCIA: TStringField;
    Nro_PersonaID: TIntegerField;
    PanelEdicion: TPanel;
    PageControl: TPageControl;
    TabSheetDatos: TTabSheet;
    Label9: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    DBLCBoxProvincia: TDBLookupComboBox;
    DBLCBoxCondIva: TDBLookupComboBox;
    DBEApellidoNombre: TDBEdit;
    DBENroDocumento: TDBEdit;
    DBELocalidad: TDBEdit;
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
    ZU_Persona: TZUpdateSQL;
    PanelCabecera: TPanel;
    lblCantidadRegistros: TLabel;
    ZQ_VerRelacionPersona: TZQuery;
    StaticTxtBaja: TStaticText;
    TabSheetRol: TTabSheet;
    DBGridRol: TDBGrid;
    ZQ_PersonaDESCRIPCION: TStringField;
    DS_VerRelacionPersona: TDataSource;
    ZQ_VerRelacionPersonaID_PERSONA_RELACION: TIntegerField;
    ZQ_VerRelacionPersonaID_PERSONA: TIntegerField;
    ZQ_VerRelacionPersonaID_RELACION: TIntegerField;
    ZQ_VerRelacionPersonaID_EMPRESA: TIntegerField;
    ZQ_VerRelacionPersonaID_SUCURSAL: TIntegerField;
    ZQ_VerRelacionPersonaDESCRIPCION: TStringField;
    ZQ_VerRelacionPersonaNOMBRE: TStringField;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    btnImprimirListado: TdxBarLargeButton;
    RepPersonaDetalle: TQuickRep;
    QRBand1: TQRBand;
    QRDBLogo2: TQRDBImage;
    QRLabel6: TQRLabel;
    RepPersonaDetalle_Subtitulo: TQRLabel;
    RepPersonaDetalle_Titulo: TQRLabel;
    QRBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRlblPieDePaginaDetalle: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData2: TQRSysData;
    ChildBand1: TQRChildBand;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    RepPersonaListado: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepPersonaListado_Subtitulo: TQRLabel;
    RepPersonaListado_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand11: TQRBand;
    QRlblPieDePaginaListado: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand12: TQRBand;
    QRExpr18: TQRExpr;
    TitleBand2: TQRBand;
    QRLabelCritBusqueda: TQRLabel;
    QRLabel48: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    EKVistaPreviaListado: TEKVistaPreviaQR;
    EKVistaPreviaDetalle: TEKVistaPreviaQR;
    QRSubDetail1: TQRSubDetail;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRLabel24: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText24: TQRDBText;
    ZQ_RelacionCliente: TZQuery;
    ZQ_RelacionClienteID_PERSONA_RELACION: TIntegerField;
    ZQ_RelacionClienteID_PERSONA: TIntegerField;
    ZQ_RelacionClienteID_RELACION: TIntegerField;
    ZQ_RelacionClienteID_EMPRESA: TIntegerField;
    ZQ_RelacionClienteID_SUCURSAL: TIntegerField;
    RadioGroupRelacionCliente: TRadioGroup;
    Label7: TLabel;
    DBEditCodigo: TDBEdit;
    ZQ_UltimoNro: TZQuery;
    ZQ_UltimoNroCODIGO_CORTO: TIntegerField;
    ZQ_PersonaDESCUENTO_ESPECIAL: TFloatField;
    ZQ_PersonaCODIGO_CORTO: TIntegerField;
    Label11: TLabel;
    DBEDescuento: TDBEdit;
    ZQ_TipoRelacion: TZQuery;
    ZQ_TipoRelacionID_TIPO_RELACION: TIntegerField;
    ZQ_TipoRelacionDESCRIPCION: TStringField;
    TabSheetCtaCte: TTabSheet;
    ZQ_CtaCte: TZQuery;
    ZQ_CtaCteID_CTA_CTE: TIntegerField;
    ZQ_CtaCteID_PERSONA: TIntegerField;
    ZQ_CtaCteSALDO: TFloatField;
    ZQ_CtaCteLIMITE_DEUDA: TFloatField;
    ZQ_CtaCteFECHA_ALTA: TDateField;
    ZQ_CtaCteFECHA_BAJA: TDateField;
    DS_CtaCte: TDataSource;
    ZQ_CtaCteBAJA: TStringField;
    gBoxCuentaCorriente: TGroupBox;
    btnCtaCte_Alta: TButton;
    Label15: TLabel;
    EKDBFechaCtaCte: TEKDBDateTimePicker;
    Label12: TLabel;
    DBEditLimiteDeuda: TDBEdit;
    btnCtaCte_Aceptar: TBitBtn;
    btnCtaCte_Cancelar: TBitBtn;
    btnCtaCte_Modificar: TButton;
    TabSheetTelMail: TTabSheet;
    DBGridTelMail: TDBGrid;
    ZQ_EntidadTelefono: TZQuery;
    DS_EntidadTelefono: TDataSource;
    ZQ_EntidadTelefonoID_ENTIDAD_TELEFONO: TIntegerField;
    ZQ_EntidadTelefonoID_ENTIDAD: TIntegerField;
    ZQ_EntidadTelefonoTELEFONO: TStringField;
    ZQ_EntidadTelefonoMAIL: TStringField;
    PopupMenuTelmail: TPopupMenu;
    AgregarTelMail: TMenuItem;
    EliminarTelMail: TMenuItem;
    EditarTelMail: TMenuItem;
    ZQ_EntidadTelefonoID_PERSONA: TIntegerField;
    ZQ_EntidadTelefonoDESCRIPCION: TStringField;
    Label3: TLabel;
    DBEditVencimDia: TDBEdit;
    btnCtaCte_Reactivar: TButton;
    btnCtaCte_Baja: TButton;
    ZQ_CtaCteID_PROVEEDOR: TIntegerField;
    ZQ_CtaCteVENCIMIENTO_DIAS: TIntegerField;
    EKDBDateTimePicker1: TEKDBDateTimePicker;
    Label4: TLabel;
    btnExcel: TdxBarLargeButton;
    btnEMail: TdxBarLargeButton;
    btnSkype: TdxBarLargeButton;
    ZQ_PersonaCODIGO_BARRA: TStringField;
    TabSheetObraSocial: TTabSheet;
    DBGridObraSocial: TDBGrid;
    ZQ_PersonaObraSocial: TZQuery;
    ZQ_PersonaObraSocialID_PERSONA_OS: TIntegerField;
    ZQ_PersonaObraSocialNRO_AFILIADO: TStringField;
    ZQ_PersonaObraSocialID_OS: TIntegerField;
    ZQ_PersonaObraSocialID_PERSONA: TIntegerField;
    DS_PersonaObraSocial: TDataSource;
    ZQ_ObraSocial: TZQuery;
    ZQ_ObraSocialID_OS: TIntegerField;
    ZQ_ObraSocialCODIGO: TStringField;
    ZQ_ObraSocialNOMBRE: TStringField;
    ZQ_PersonaObraSocialcodigo: TStringField;
    ZQ_PersonaObraSocialobra_social: TStringField;
    EKListadoObraSocial: TEKListadoSQL;
    PopupMenuObraSocial: TPopupMenu;
    AgregarObraSocial1: TMenuItem;
    QuitarObraSocial1: TMenuItem;
    QRSubDetailObraSocial: TQRSubDetail;
    QRLabel26: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel28: TQRLabel;
    ChildBandObraSocial: TQRChildBand;
    QRLabel31: TQRLabel;
    grpClave: TGroupBox;
    edClave: TDBEdit;
    ZQ_PersonaCLAVE: TStringField;
    ZQ_IvaCOEFICIENTE: TFloatField;
    ZQ_IvaVERIFICA_CUIT: TStringField;
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnImprimirDetalleClick(Sender: TObject);
    procedure btnImprimirListadoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    function  validarcampos():boolean;
    procedure DBGridClientesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnVerDetalleClick(Sender: TObject);
    procedure ZQ_PersonaAfterScroll(DataSet: TDataSet);
    //------TECLAS RAPIDAS
    procedure ABuscarExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AReactivarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure RadioGroupRelacionClienteClick(Sender: TObject);
    procedure habilitarCtaCte(flag: boolean);
    procedure btnCtaCte_AceptarClick(Sender: TObject);
    procedure btnCtaCte_CancelarClick(Sender: TObject);
    procedure btnCtaCte(Sender: TObject);
    procedure AgregarTelMailClick(Sender: TObject);
    procedure EditarTelMailClick(Sender: TObject);
    procedure EliminarTelMailClick(Sender: TObject);
    procedure ZQ_EntidadTelefonoBeforePost(DataSet: TDataSet);
    procedure DBGridTelMailDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridRolDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnExcelClick(Sender: TObject);
    procedure permisosUsuario();
    procedure btnEMailClick(Sender: TObject);
    procedure btnSkypeClick(Sender: TObject);
    procedure AgregarObraSocial1Click(Sender: TObject);
    procedure QuitarObraSocial1Click(Sender: TObject);
  private
    id_persona: integer;
  public
    id_sucursal: integer;
    existeRelacionCliente, tieneCuentaCorriente, altaCtaCte: boolean;
  end;

var
  FABM_Personas: TFABM_Personas;

const
  transaccion_ABMPersona = 'ABM PERSONAS';

implementation

uses UDM, UPrincipal, EKModelo, RegExpr, UUtilidades, UMailEnviar;

{$R *.dfm}


procedure TFABM_Personas.permisosUsuario();
begin
  TabSheetCtaCte.TabVisible:= true;
  TabSheetDetalle.TabVisible:= true;
  TabSheetObraSocial.TabVisible:= true;

  grpClave.Visible:=dm.ISUsrLogin.PermisoAccion('PERSONA_CLAVE');

  if not dm.ISUsrLogin.PermisoAccion('PERSONA_DETALLE') then
  begin
    TabSheetDetalle.TabVisible:= false;
  end;

  if not dm.ISUsrLogin.PermisoAccion('PERSONA_CTA_CTE') then
  begin
    TabSheetCtaCte.TabVisible:= false;
  end;

  if not dm.ISUsrLogin.PermisoAccion('PERSONA_OBRA_SOCIAL') then
  begin
    TabSheetObraSocial.TabVisible:= false;
    QRSubDetailObraSocial.Enabled := false;
    ChildBandObraSocial.Enabled := false;
  end;

end;


procedure TFABM_Personas.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  QRDBLogo2.DataSet:= DM.ZQ_Sucursal;
    
  habilitarCtaCte(false);

  EKOrdenar.CargarConfigColumnas;

  DBEApellidoNombre.Color:= dm.colorCampoRequido;
  DBEDireccion.Color:= dm.colorCampoRequido;
  DBLCBoxTipoDoc.Color:= dm.colorCampoRequido;
  DBENroDocumento.Color:= dm.colorCampoRequido;
  DBLCBoxCondIva.Color:= dm.colorCampoRequido;  

  PageControl.ActivePage:= TabSheetDatos;
  StaticTxtBaja.Color:= FPrincipal.baja;

  dm.EKModelo.abrir(ZQ_Provincia);
  dm.EKModelo.abrir(ZQ_Iva);
  dm.EKModelo.abrir(ZQ_Documento);
  dm.EKModelo.abrir(ZQ_TipoRelacion);

  EKBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_Persona, lblCantidadRegistros);
  permisosUsuario;
end;


procedure TFABM_Personas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenar.GuardarConfigColumnas;
end;


procedure TFABM_Personas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABMPersona);
end;


procedure TFABM_Personas.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABM_Personas.btnBuscarClick(Sender: TObject);
begin
  if EKBuscar.Buscar then
    dm.mostrarCantidadRegistro(ZQ_Persona, lblCantidadRegistros);
end;


procedure TFABM_Personas.btnVerDetalleClick(Sender: TObject);
begin
  PanelEdicion.Visible:= not PanelEdicion.Visible;
end;


procedure TFABM_Personas.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABMPersona, [ZQ_Persona, ZQ_RelacionCliente, ZQ_CtaCte, ZQ_EntidadTelefono, ZQ_PersonaObraSocial]) then
  begin
    existeRelacionCliente:= false;
    tieneCuentaCorriente:= false;

    DBGridClientes.Enabled := false;
    PanelEdicion.Visible:= true;
    TabSheetDatos.Enabled:= true;
    TabSheetCtaCte.Enabled:= true;
    PageControl.Visible:= true;
    PageControl.ActivePageIndex:= 0;

    Nro_Persona.Active:= True;
    id_persona:= Nro_PersonaID.AsInteger;
    Nro_Persona.Active:= false;

    ZQ_Persona.Append;
    ZQ_PersonaID_PERSONA.AsInteger:= id_persona;
    ZQ_PersonaID_PROVINCIA.AsInteger:= dm.provinciaPorDefecto;  //por defecto santa fe
    ZQ_PersonaBAJA.AsString:= 'N';

    ZQ_UltimoNro.Close;
    ZQ_UltimoNro.Open;
    if ZQ_UltimoNro.IsEmpty then
      ZQ_PersonaCODIGO_CORTO.AsInteger:= 1
    else
      ZQ_PersonaCODIGO_CORTO.AsInteger:= ZQ_UltimoNroCODIGO_CORTO.AsInteger + 1;

    DBEApellidoNombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;

    DBGridTelMail.PopupMenu:=PopupMenuTelmail;
    DBGridObraSocial.PopupMenu:= PopupMenuObraSocial;

    RadioGroupRelacionCliente.ItemIndex:= 1;
    permisosUsuario;
  end;
end;


procedure TFABM_Personas.btnModificarClick(Sender: TObject);
begin
  if ZQ_Persona.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABMPersona, [ZQ_Persona, ZQ_RelacionCliente, ZQ_CtaCte, ZQ_EntidadTelefono, ZQ_PersonaObraSocial]) then
  begin
    DBGridClientes.Enabled := false;
    PanelEdicion.Visible:= true;
    TabSheetDatos.Enabled:= true;
    TabSheetCtaCte.Enabled:= true;
    PageControl.Visible:= true;
    PageControl.ActivePageIndex:= 0;

    id_persona:= ZQ_PersonaID_PERSONA.AsInteger;
    ZQ_Persona.Edit;
    if ZQ_PersonaCODIGO_CORTO.IsNull then
    begin
      ZQ_UltimoNro.Close;
      ZQ_UltimoNro.Open;
      if ZQ_UltimoNro.IsEmpty then
        ZQ_PersonaCODIGO_CORTO.AsInteger:= 1
      else
        ZQ_PersonaCODIGO_CORTO.AsInteger:= ZQ_UltimoNroCODIGO_CORTO.AsInteger + 1;
    end;

    DBEApellidoNombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;

    DBGridTelMail.PopupMenu:= PopupMenuTelmail;
    DBGridObraSocial.PopupMenu:= PopupMenuObraSocial;
  end;
end;


procedure TFABM_Personas.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Persona.IsEmpty) OR (ZQ_PersonaBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja el Cliente seleccionado?'), 'ABM Cliente', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMPersona, [ZQ_Persona]) then
    begin
      ZQ_Persona.Edit;
      ZQ_PersonaBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMPersona)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMPersona);

    recNo:= ZQ_Persona.RecNo;
    ZQ_Persona.Refresh;
    ZQ_Persona.RecNo:= recNo;
  end;
end;


procedure TFABM_Personas.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Persona.IsEmpty) OR (ZQ_PersonaBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar el Cliente seleccionado?'), 'ABM Cliente', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMPersona, [ZQ_Persona]) then
    begin
      ZQ_Persona.Edit;
      ZQ_PersonaBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMPersona)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMPersona);

    recNo:= ZQ_Persona.RecNo;
    ZQ_Persona.Refresh;
    ZQ_Persona.RecNo:= recNo;
  end;
end;


procedure TFABM_Personas.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if not validarcampos() then
    exit;


  if not existeRelacionCliente then //si la relacion no existe todavia
  begin
    if (RadioGroupRelacionCliente.ItemIndex = 1) then //si esta marcado como que es cliente
    begin
      ZQ_RelacionCliente.Append;
      ZQ_RelacionClienteID_PERSONA.AsInteger:= id_persona;
      ZQ_RelacionClienteID_RELACION.AsInteger:= RELACION_CLIENTE; //cliente
      ZQ_RelacionClienteID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
      ZQ_RelacionClienteID_EMPRESA.Clear;
    end
    else //Es empleado
     begin
      ZQ_RelacionCliente.Append;
      ZQ_RelacionClienteID_PERSONA.AsInteger:= id_persona;
      ZQ_RelacionClienteID_RELACION.AsInteger:= RELACION_EMPLEADO; //cliente
      ZQ_RelacionClienteID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
      ZQ_RelacionClienteID_EMPRESA.Clear;
     end
  end
  else //si existe la relacion
  begin
    if (RadioGroupRelacionCliente.ItemIndex = 0) then //si esta marcado como que ya no es cliente
    begin
      ZQ_VerRelacionPersona.Locate('ID_PERSONA; ID_SUCURSAL', VarArrayOf([ZQ_PersonaID_PERSONA.AsString,inttostr(SUCURSAL_LOGUEO)]), []);
      ZQ_RelacionCliente.Close;
      ZQ_RelacionCliente.ParamByName('idRelacion').AsInteger:= ZQ_VerRelacionPersonaID_PERSONA_RELACION.AsInteger;
      ZQ_RelacionCliente.Open;

      ZQ_RelacionCliente.Delete;
    end
  end;

  if (ZQ_PersonaCODIGO_BARRA.IsNull) or (ZQ_PersonaCODIGO_BARRA.AsString = '') then
  begin
    if ZQ_Persona.State in [dsinsert] then
      ZQ_PersonaCODIGO_BARRA.AsString := rellenar(Nro_PersonaID.AsString,'0',LONG_COD_BARRAS)
      else
        if ZQ_Persona.State in [dsedit] then
          ZQ_PersonaCODIGO_BARRA.AsString := rellenar(ZQ_PersonaID_PERSONA.AsString,'0',LONG_COD_BARRAS);
  end;

  //Quito los espacios de Clave
  ZQ_PersonaCLAVE.AsString:=trim(ZQ_PersonaCLAVE.AsString);

  try
    if DM.EKModelo.finalizar_transaccion(transaccion_ABMPersona) then
    begin
      DBGridClientes.Enabled := true;
      TabSheetDatos.Enabled:= False;
      TabSheetCtaCte.Enabled:= false;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      recNo:= ZQ_Persona.RecNo;
      ZQ_Persona.Refresh;
      ZQ_Persona.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_Persona, lblCantidadRegistros);
  
  if (dgEditing	in DBGridTelMail.Options) then
  begin
    DBGridTelMail.Options := DBGridTelMail.Options - [dgEditing];
    DBGridTelMail.Options := DBGridTelMail.Options + [dgRowSelect];
  end;

  DBGridTelMail.PopupMenu:=nil;
  DBGridObraSocial.PopupMenu:=nil;
end;


procedure TFABM_Personas.btnCancelarClick(Sender: TObject);
begin
  if (application.MessageBox(pchar('¿Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION - ABM Personas', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    if dm.EKModelo.cancelar_transaccion(transaccion_ABMPersona) then
    begin
      TabSheetDatos.Enabled:= false;
      TabSheetCtaCte.Enabled:= false;
      DBGridClientes.Enabled := true;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
    end;

  if (dgEditing	in DBGridTelMail.Options) then
  begin
    DBGridTelMail.Options := DBGridTelMail.Options - [dgEditing];
    DBGridTelMail.Options := DBGridTelMail.Options + [dgRowSelect];
  end;

  DBGridTelMail.PopupMenu:=nil;
  DBGridObraSocial.PopupMenu:=nil;   
end;


procedure TFABM_Personas.btnImprimirDetalleClick(Sender: TObject);
begin
  if ZQ_Persona.IsEmpty then
    exit;

  DM.VariablesReportes(RepPersonaDetalle);
  QRlblPieDePaginaDetalle.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  EKVistaPreviaDetalle.VistaPrevia;
end;


procedure TFABM_Personas.btnImprimirListadoClick(Sender: TObject);
begin
  if ZQ_Persona.IsEmpty then
    exit;

  DM.VariablesReportes(RepPersonaListado);
  QRlblPieDePaginaListado.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
  EKVistaPreviaListado.VistaPrevia;
end;


function TFABM_Personas.validarcampos():boolean;
var
  mensaje: string;
begin
  PageControl.ActivePageIndex:= 0;
  result:= true;
  mensaje:= '';

  if (ZQ_PersonaNOMBRE.IsNull) then
  begin
    mensaje:= 'El campo Apellido y Nombre se encuentra vacío.';
    result := false;
  end;

  if (ZQ_PersonaDIRECCION.IsNull) then
  begin
    mensaje:= mensaje+#13+'El campo Dirección se encuentra vacío.';
    result := false;
  end;

  if (ZQ_PersonaID_TIPO_DOC.IsNull) then
  begin
    mensaje:= mensaje+#13+'El campo Tipo Documento se encuentra vacío.';
    result := false;
  end;

  if (ZQ_PersonaID_TIPO_DOC.AsInteger <> 0) then
    if (ZQ_PersonaNUMERO_DOC.IsNull) then
    begin
      mensaje:= mensaje+#13+'El campo Número Documento se encuentra vacío.';
      result := false;
    end;

  if (ZQ_PersonaID_TIPO_IVA.IsNull) then
  begin
    mensaje:= mensaje+#13+'El campo Condición IVA se encuentra vacío.';
    result := false;
  end;

  //Verifica_CUIT es un campo de la tabla TIPO_CUIT, se configura ahí si se le exige el NroCUIT
  if (ZQ_IvaVERIFICA_CUIT.AsString='S') then
    if not EsCUITValido(ZQ_PersonaCUIT_CUIL.AsString) then
    begin
      mensaje:= mensaje+#13+'El valor ingresado en el campo Cuit/Cuil es invalido.'+char(13)+'(sólo debe ingresar números, sin guiones)';
      result := false;
    end;

  if Result = False then
  begin
    mensaje:= mensaje+#13#13+'Verifique.';
    Application.MessageBox(pchar(mensaje), 'Validación', MB_OK+MB_ICONINFORMATION);
    DBEApellidoNombre.SetFocus;
  end;
end;


procedure TFABM_Personas.DBGridClientesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(DBGridClientes, ZQ_PersonaBAJA.AsString, Rect, DataCol, Column, State);
end;


procedure TFABM_Personas.ZQ_PersonaAfterScroll(DataSet: TDataSet);
begin
  ZQ_PersonaObraSocial.Close;
  ZQ_VerRelacionPersona.Close;
  ZQ_CtaCte.Close;
  ZQ_EntidadTelefono.Close;

  if ZQ_Persona.IsEmpty then
    exit;

  ZQ_VerRelacionPersona.ParamByName('id_persona').AsInteger:= ZQ_PersonaID_PERSONA.AsInteger;
  ZQ_VerRelacionPersona.Open;

  if ZQ_VerRelacionPersona.Locate('ID_RELACION; ID_SUCURSAL', VarArrayOf([RELACION_CLIENTE, inttostr(SUCURSAL_LOGUEO)]), []) then
  begin
    existeRelacionCliente:= true;
    RadioGroupRelacionCliente.ItemIndex:= 1;
  end
  else
  begin
    existeRelacionCliente:= False;
    RadioGroupRelacionCliente.ItemIndex:= 0;
  end;

  ZQ_CtaCte.ParamByName('id_persona').AsInteger:= ZQ_PersonaID_PERSONA.AsInteger;
  ZQ_CtaCte.Open;

  tieneCuentaCorriente:= false;
  if not ZQ_CtaCte.IsEmpty then
    tieneCuentaCorriente:= true;

  if existeRelacionCliente then
    TabSheetCtaCte.TabVisible:= true
  else
    TabSheetCtaCte.TabVisible:= false;
  permisosUsuario;

  ZQ_EntidadTelefono.ParamByName('ID_PERSONA').AsInteger:= ZQ_PersonaID_PERSONA.AsInteger;
  ZQ_EntidadTelefono.Open;

  ZQ_PersonaObraSocial.ParamByName('ID_PERSONA').AsInteger:= ZQ_PersonaID_PERSONA.AsInteger;
  ZQ_PersonaObraSocial.Open;
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_Personas.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_Personas.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_Personas.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_Personas.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_Personas.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_Personas.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_Personas.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------
            

procedure TFABM_Personas.RadioGroupRelacionClienteClick(Sender: TObject);
begin
  if RadioGroupRelacionCliente.ItemIndex = 1 then
    TabSheetCtaCte.TabVisible:= true
  else
    TabSheetCtaCte.TabVisible:= false;
  permisosUsuario;
end;


procedure TFABM_Personas.habilitarCtaCte(flag: boolean);
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


procedure TFABM_Personas.AgregarTelMailClick(Sender: TObject);
begin
  if not (dgEditing	in DBGridTelMail.Options) then
  begin
    DBGridTelMail.Options := DBGridTelMail.Options + [dgEditing];
    DBGridTelMail.Options := DBGridTelMail.Options - [dgRowSelect];    
    ZQ_EntidadTelefono.Append;
  end;
end;


procedure TFABM_Personas.EditarTelMailClick(Sender: TObject);
begin
  if not (dgEditing	in DBGridTelMail.Options) then
  begin
    DBGridTelMail.Options := DBGridTelMail.Options + [dgEditing];
    DBGridTelMail.Options := DBGridTelMail.Options - [dgRowSelect];    
    ZQ_EntidadTelefono.Edit;
  end;
end;


procedure TFABM_Personas.EliminarTelMailClick(Sender: TObject);
begin
if not ZQ_EntidadTelefono.IsEmpty then
  ZQ_EntidadTelefono.Delete;
end;


procedure TFABM_Personas.ZQ_EntidadTelefonoBeforePost(DataSet: TDataSet);
begin
  ZQ_EntidadTelefonoID_PERSONA.AsInteger := ZQ_PersonaID_PERSONA.AsInteger;
end;


procedure TFABM_Personas.btnCtaCte(Sender: TObject);
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
    GrupoGuardarCancelar.Enabled:= false;
  end;

  if btn.Caption = 'Modificar' then
  begin
    if not tieneCuentaCorriente then
      exit;

    habilitarCtaCte(true);
    ZQ_CtaCte.Edit;
    EKDBFechaCtaCte.SetFocus;
    GrupoGuardarCancelar.Enabled:= false;
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


procedure TFABM_Personas.btnCtaCte_AceptarClick(Sender: TObject);
begin
  if altaCtaCte then
    tieneCuentaCorriente:= true;

  ZQ_CtaCte.Post;
  habilitarCtaCte(false);
  GrupoGuardarCancelar.Enabled:= true;
end;


procedure TFABM_Personas.btnCtaCte_CancelarClick(Sender: TObject);
begin
  if altaCtaCte then
    tieneCuentaCorriente:= false;

  ZQ_CtaCte.RevertRecord;
  habilitarCtaCte(false);
  GrupoGuardarCancelar.Enabled:= true;
end;


procedure TFABM_Personas.DBGridRolDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridRol, Rect, DataCol, Column, State);
end;


procedure TFABM_Personas.DBGridTelMailDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridTelMail, Rect, DataCol, Column, State);
end;


procedure TFABM_Personas.btnExcelClick(Sender: TObject);
begin
  if not ZQ_Persona.IsEmpty then
    dm.ExportarEXCEL(DBGridClientes);
end;


procedure TFABM_Personas.btnEMailClick(Sender: TObject);
begin
  Application.CreateForm(TFMailEnviar, FMailEnviar);
  if PageControl.ActivePage = TabSheetTelMail then
  begin
    if ZQ_EntidadTelefono.IsEmpty then
      exit;

    FMailEnviar.cargarDestinatario(ZQ_EntidadTelefonoMAIL.AsString+';');
  end;
  FMailEnviar.ShowModal;
end;


procedure TFABM_Personas.btnSkypeClick(Sender: TObject);
var
  Telefono: string;
begin
  if PageControl.ActivePage = TabSheetTelMail then
  begin
    if ZQ_EntidadTelefono.IsEmpty then
      exit;

    Telefono:= '"callto://+'+ZQ_EntidadTelefonoTELEFONO.AsString+'"';

    if ShellExecute(0, 0, pchar(Telefono), 0, 0, SW_SHOWNORMAL) <= 32 then
      Application.MessageBox('No se pudo ejecutar la aplicación verifique que este instalada', 'Atención', MB_ICONINFORMATION);
  end;


  if PageControl.ActivePage = TabSheetDetalle then
  begin
    if (ZQ_PersonaDESCRIPCION.IsNull) or (ZQ_PersonaDESCRIPCION.AsString = '') then
      exit;

    if DBMemoDetalle.SelText <> '' then
    begin
      Telefono:= '"callto://+'+DBMemoDetalle.SelText+'"';
      DBMemoDetalle.SetFocus;
    end;

    if ShellExecute(0, 0, pchar(Telefono), 0, 0, SW_SHOWNORMAL) <= 32 then
      Application.MessageBox('No se pudo ejecutar la aplicación verifique que este instalada', 'Atención', MB_ICONINFORMATION);
  end;
end;

procedure TFABM_Personas.AgregarObraSocial1Click(Sender: TObject);
begin

  if EKListadoObraSocial.Buscar then
  begin
    if (EKListadoObraSocial.Resultado<>'') then
    begin
        ZQ_PersonaObraSocial.Append;
        ZQ_PersonaObraSocialID_OS.AsInteger := StrToInt(EKListadoObraSocial.Resultado);
        ZQ_PersonaObraSocialID_PERSONA.AsInteger := ZQ_PersonaID_PERSONA.AsInteger;

        ZQ_PersonaObraSocialNRO_AFILIADO.AsString := InputBox('Nro Afiliado', 'Ingrese un Nro de Afiliado', '');
    end;
  end;

end;

procedure TFABM_Personas.QuitarObraSocial1Click(Sender: TObject);
begin
  if ZQ_PersonaObraSocial.IsEmpty then
  exit;

  if Application.MessageBox('Esta seguro que desea borrar esta obra social?','Obra social', MB_YESNO+MB_ICONINFORMATION) = IDYES then
    ZQ_PersonaObraSocial.Delete;

end;

end.
