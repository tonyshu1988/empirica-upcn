unit UABMEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, ComCtrls, Grids, DBGrids,
  DBCtrls, StdCtrls, Mask, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Menus,UBuscarPersona,
  ZStoredProcedure,ShellAPI, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, ActnList,
  XPStyleActnCtrls, ActnMan, DBClient, Provider, QuickRpt,
  QRCtrls, Buttons, cxClasses,
  ISVistaPreviaQR, ISBusquedaAvanzada, ISListadoSQL, ISOrdenarGrilla,
  ISDBDateTimePicker,UDM;

type
  TFABMEmpresas = class(TForm)
    PanelContenedor: TPanel;
    dxBarABM: TdxBarManager;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnBuscar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btverbajados: TdxBarLargeButton;
    BtBusquedaNueva: TdxBarLargeButton;
    btnSiguiente: TdxBarLargeButton;
    btnAnterior: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    PageControlEdicion: TPageControl;
    TabEmpresa: TTabSheet;
    TabContactos: TTabSheet;
    TabViajantes: TTabSheet;
    DBGridEmpresas: TDBGrid;
    Label10: TLabel;
    DBMemoEmpresa: TDBMemo;
    DBGridContactos: TDBGrid;
    DBGridViajantes: TDBGrid;
    ZQ_Empresa: TZQuery;
    DS_Empresa: TDataSource;
    ZQ_EmpresaCUIT_CUIL: TStringField;
    ZQ_EmpresaID_PROVINCIA: TIntegerField;
    ZQ_EmpresaID_TIPO_IVA: TIntegerField;
    ZQ_EmpresaNOMBRE: TStringField;
    ZQ_EmpresaDIRECCION: TStringField;
    ZQ_EmpresaLOCALIDAD: TStringField;
    ZQ_EmpresaCODIGO_POSTAL: TStringField;
    ZQ_EmpresaTELEFONO: TStringField;
    ZQ_EmpresaEMAIL: TStringField;
    ZQ_EmpresaPAGINA_WEB: TStringField;
    ZQ_EmpresaBAJA: TStringField;
    ZQ_EmpresaDESCRIPCION: TStringField;
    ZQ_Provincia: TZQuery;
    ZQ_ProvinciaID_PROVINCIA: TIntegerField;
    ZQ_ProvinciaNOMBRE_PROVINCIA: TStringField;
    DS_Provincia: TDataSource;
    ZQ_TipoEmpresa: TZQuery;
    DS_TipoEmpresa: TDataSource;
    ZQ_TipoIVA: TZQuery;
    DS_TipoIVA: TDataSource;
    ZQ_TipoEmpresaID_TIPO_EMPRESA: TIntegerField;
    ZQ_TipoEmpresaDESCRIPCION: TStringField;
    ZQ_TipoIVAID_TIPO_IVA: TIntegerField;
    ZQ_TipoIVANOMBRE_TIPO_IVA: TStringField;
    ZQ_TipoIVAABREVIATURA: TStringField;
    ZQ_TipoIVADISCRIMINAR: TStringField;
    ZQ_TipoIVALETRA: TStringField;
    ZQ_TipoIVAFISCAL: TStringField;
    ZQ_Empresaprovincia: TStringField;
    ZQ_Empresatipo_empresa: TStringField;
    ZQ_Empresatipo_IVA: TStringField;
    ZQ_EmpresaID_EMPRESA: TIntegerField;
    ZQ_EmpresaID_TIPO_EMPRESA: TIntegerField;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    PopupMenuContactos: TPopupMenu;
    AgregarContacto1: TMenuItem;
    QuitarContacto1: TMenuItem;
    ZQ_PersonaRelacionContacto: TZQuery;
    ZQ_PersonaRelacionContactoID_PERSONA_RELACION: TIntegerField;
    ZQ_PersonaRelacionContactoID_PERSONA: TIntegerField;
    ZQ_PersonaRelacionContactoID_RELACION: TIntegerField;
    ZQ_PersonaRelacionContactoID_EMPRESA: TIntegerField;
    ZQ_PersonaRelacionContactoID_SUCURSAL: TIntegerField;
    ZQ_Personas: TZQuery;
    DS_PersonaRelacionContacto: TDataSource;
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
    ZQ_PersonaRelacionContactonombre: TStringField;
    DS_PersonaRelacionViajante: TDataSource;
    PopupMenuViajantes: TPopupMenu;
    AgregarViajante1: TMenuItem;
    QuitarViajante1: TMenuItem;
    ZQ_PersonaRelacionContactodireccion: TStringField;
    ZQ_PersonaRelacionContactotelefono: TStringField;
    ZQ_PersonaRelacionContactoemail: TStringField;
    ZQ_PersonaRelacionContactodescripcion: TStringField;
    ZQ_PersonaRelacionContactolocalidad: TStringField;
    ZQ_PersonaRelacionContactocod_postal: TStringField;
    ZQ_PersonaRelacionViajante: TZQuery;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    Panel1: TPanel;
    DBMemoContactos: TDBMemo;
    Label12: TLabel;
    ZQ_PersonaRelacionViajanteID_PERSONA_RELACION: TIntegerField;
    ZQ_PersonaRelacionViajanteID_PERSONA: TIntegerField;
    ZQ_PersonaRelacionViajanteID_RELACION: TIntegerField;
    ZQ_PersonaRelacionViajanteID_EMPRESA: TIntegerField;
    ZQ_PersonaRelacionViajanteID_SUCURSAL: TIntegerField;
    DBMemoViajantes: TDBMemo;
    Panel2: TPanel;
    Label13: TLabel;
    ZPID_Empresa: TZStoredProc;
    ZPID_EmpresaID: TIntegerField;
    btnSkype: TdxBarLargeButton;
    bt: TdxBarLargeButton;
    ZQ_PersonaRelacionViajantetelefono: TStringField;
    btnEnviarMail: TdxBarLargeButton;
    ZQ_EmpresaDESCRIPCION_PRIVADA: TStringField;
    TabDescripcion: TTabSheet;
    DBMemoDescripcion: TDBMemo;
    PopupMenuSkypeMail: TPopupMenu;
    llamar1: TMenuItem;
    EnviarunMail1: TMenuItem;
    PanelEdicion: TPanel;
    Label5: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    dbNombre: TDBEdit;
    DBCBoxProvincia: TDBLookupComboBox;
    DBEditCuitCuil: TDBEdit;
    DBCBoxTipoIva: TDBLookupComboBox;
    DBCBoxTipoEmpresa: TDBLookupComboBox;
    DBEditDireccion: TDBEdit;
    DBEditLocalidad: TDBEdit;
    DBEditCodPostal: TDBEdit;
    DBEditWeb: TDBEdit;
    ZQ_PersonaRelacionViajanteemail: TStringField;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    TabMarcas: TTabSheet;
    GrillaMarcas: TDBGrid;
    PopupMenuMarcas: TPopupMenu;
    AgregarMarca: TMenuItem;
    QuitarMarca: TMenuItem;
    ZQ_EmpresaMarca: TZQuery;
    ZQ_EmpresaMarcaID: TIntegerField;
    ZQ_EmpresaMarcaID_EMPRESA: TIntegerField;
    ZQ_EmpresaMarcaID_MARCA: TIntegerField;
    ZQ_Marcas: TZQuery;
    ZQ_MarcasID_MARCA: TIntegerField;
    ZQ_MarcasNOMBRE_MARCA: TStringField;
    ZQ_MarcasBAJA: TStringField;
    ZQ_MarcasCODIGO_MARCA: TIntegerField;
    ZQ_EmpresaMarca_marca: TStringField;
    ZQ_EmpresaMarca_codMarca: TStringField;
    DS_EmpresaMarca: TDataSource;
    DBMemo1: TDBMemo;
    Panel3: TPanel;
    Label14: TLabel;
    ZQ_EmpresaMarcaDESCRIPCION: TStringField;
    DataSetProvider1: TDataSetProvider;
    RepListaEmpresas: TQuickRep;
    QRBand5: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel11: TQRLabel;
    RepListaEmpresas_subtitulo: TQRLabel;
    RepListaEmpresas_Titulo: TQRLabel;
    QRBandDetalle: TQRBand;
    QRDBTextCoefGanancia: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBTextPrecioCosto: TQRDBText;
    QRDBTextPrecioVenta: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand7: TQRBand;
    QRLabel24: TQRLabel;
    QRSysData2: TQRSysData;
    QRBand1: TQRBand;
    QRExpr15: TQRExpr;
    RepDetalleEmpresa: TQuickRep;
    QRBand2: TQRBand;
    QRDBLogo2: TQRDBImage;
    QRLabel2: TQRLabel;
    RepDetalleEmpresa_subtitulo: TQRLabel;
    RepDetalleEmpresa_titulo: TQRLabel;
    QRBand3: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand4: TQRBand;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand6: TQRBand;
    QRExpr1: TQRExpr;
    QRChildBand1: TQRChildBand;
    ChildBand1: TQRChildBand;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    ZQ_RelacionEmpresa: TZQuery;
    ZQ_RelacionEmpresaRELACION: TStringField;
    ZQ_RelacionEmpresaNOMBRE: TStringField;
    ZQ_RelacionEmpresaTELEFONO: TStringField;
    ZQ_RelacionEmpresaEMAIL: TStringField;
    ZQ_RelacionEmpresaCUIT_CUIL: TStringField;
    QRLabel9: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText18: TQRDBText;
    btImprimirDetalle: TdxBarLargeButton;
    QRDBText19: TQRDBText;
    QRLabel28: TQRLabel;
    DBGridContactoTelMail: TDBGrid;
    ZQ_EntidadTelefonoContacto: TZQuery;
    ZQ_EntidadTelefonoContactoID_ENTIDAD_TELEFONO: TIntegerField;
    ZQ_EntidadTelefonoContactoID_ENTIDAD: TIntegerField;
    ZQ_EntidadTelefonoContactoTELEFONO: TStringField;
    ZQ_EntidadTelefonoContactoMAIL: TStringField;
    DS_EntidadTelefonoContacto: TDataSource;
    DBGridViajanteTelMail: TDBGrid;
    TabTelMail: TTabSheet;
    DBGridEntidadTelefonoEmpresa: TDBGrid;
    ZQ_EntidadTelefonoEmpresa: TZQuery;
    DS_EntidadTelefonoEmpresa: TDataSource;
    PopupMenuTelmail: TPopupMenu;
    AgregarTelMail: TMenuItem;
    EditarTelMail: TMenuItem;
    EliminarTelMail: TMenuItem;
    ZQ_EntidadTelefonoEmpresaID_ENTIDAD_TELEFONO: TIntegerField;
    ZQ_EntidadTelefonoEmpresaID_ENTIDAD: TIntegerField;
    ZQ_EntidadTelefonoEmpresaID_PERSONA: TIntegerField;
    ZQ_EntidadTelefonoEmpresaTELEFONO: TStringField;
    ZQ_EntidadTelefonoEmpresaMAIL: TStringField;
    ZQ_EntidadTelefonoViajantes: TZQuery;
    DS_EntidadTelefonoViajantes: TDataSource;
    ZQ_EntidadTelefonoViajantesID_ENTIDAD_TELEFONO: TIntegerField;
    ZQ_EntidadTelefonoViajantesID_ENTIDAD: TIntegerField;
    ZQ_EntidadTelefonoViajantesID_PERSONA: TIntegerField;
    ZQ_EntidadTelefonoViajantesTELEFONO: TStringField;
    ZQ_EntidadTelefonoViajantesMAIL: TStringField;
    ZQ_EntidadTelefonoViajantesDESCRIPCION: TStringField;
    ZQ_EntidadTelefonoContactoID_PERSONA: TIntegerField;
    ZQ_EntidadTelefonoContactoDESCRIPCION: TStringField;
    ZQ_EntidadTelefonoEmpresaDESCRIPCION: TStringField;
    btIrWeb: TButton;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    TabCtaCte: TTabSheet;
    btnCtaCte_Alta: TButton;
    btnCtaCte_Modificar: TButton;
    btnCtaCte_Baja: TButton;
    btnCtaCte_Reactivar: TButton;
    gBoxCuentaCorriente: TGroupBox;
    Label15: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEditLimiteDeuda: TDBEdit;
    btnCtaCte_Aceptar: TBitBtn;
    btnCtaCte_Cancelar: TBitBtn;
    DBEditVencimDia: TDBEdit;
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
    ZQ_EmpresaCODIGO_CORTO: TIntegerField;
    btnExcel: TdxBarLargeButton;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabelCritBusqueda: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel43: TQRLabel;
    QRlblPieDePaginaListado: TQRLabel;
    ZQ_TipoIVACOEFICIENTE: TFloatField;
    ZQ_TipoIVAVERIFICA_CUIT: TStringField;
    ISVistaPreviaDetalleEmpresa: TISVistaPreviaQR;
    ISVistaPreviaListaEmpresas: TISVistaPreviaQR;
    ISOrdenarViajantes: TISOrdenarGrilla;
    ISOrdenarEmpresas: TISOrdenarGrilla;
    ISOrdenarContactos: TISOrdenarGrilla;
    ISListadoMarca: TISListadoSQL;
    ISBusquedaAvanzadaEmpresas: TISBusquedaAvanzada;
    ISDBFechaCtaCte: TISDBDateTimePicker;
    ISDBFechaCtaCte2: TISDBDateTimePicker;
    ZQ_PersonasDESCUENTO_ESPECIAL: TFloatField;
    ZQ_PersonasCODIGO_CORTO: TStringField;
    ZQ_PersonasCODIGO_BARRA: TStringField;
    ZQ_PersonasCLAVE: TStringField;
    ZQ_PersonasIMPORTADO: TStringField;
    ZQ_PersonasNRO_AFILIADO: TStringField;
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure DBGridEmpresasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure AgregarContacto1Click(Sender: TObject);
    procedure ZQ_EmpresaAfterScroll(DataSet: TDataSet);
    procedure AgregarViajante1Click(Sender: TObject);
    procedure QuitarContacto1Click(Sender: TObject);
    function validarCampos():boolean;
    procedure QuitarViajante1Click(Sender: TObject);
    procedure btnSkypeClick(Sender: TObject);
    procedure llamar1Click(Sender: TObject);
    procedure btnEnviarMailClick(Sender: TObject);
    procedure EnviarunMail1Click(Sender: TObject);
    //------TECLAS RAPIDAS
    procedure ABuscarExecute(Sender: TObject);
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AReactivarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure AgregarMarcaClick(Sender: TObject);
    procedure QuitarMarcaClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btImprimirDetalleClick(Sender: TObject);
    procedure ZQ_PersonaRelacionContactoAfterScroll(DataSet: TDataSet);
    procedure ZQ_PersonaRelacionViajanteAfterScroll(DataSet: TDataSet);
    procedure AgregarTelMailClick(Sender: TObject);
    procedure EditarTelMailClick(Sender: TObject);
    procedure ZQ_EntidadTelefonoEmpresaBeforePost(DataSet: TDataSet);
    procedure btIrWebClick(Sender: TObject);
    procedure habilitarCtaCte(flag: boolean);
    procedure DBGridEntidadTelefonoEmpresaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridContactosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridContactoTelMailDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridViajantesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridViajanteTelMailDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GrillaMarcasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnCtaCte_AceptarClick(Sender: TObject);
    procedure btnCtaCte_CancelarClick(Sender: TObject);
    procedure btnCtaCte(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure permisosUsuario();
  private
    vsel : TFBuscarPersona;
    procedure OnSelPersona;
  public
    tieneCuentaCorriente, altaCtaCte: boolean;
  end;

var
  FABMEmpresas: TFABMEmpresas;
  contacto : integer; //si es contacto, es 1 si es viajante es 0;

const
  transaccion_ABMEmpresas = 'ABM Empresas';

implementation

uses UPrincipal, UMailEnviar, UUtilidades;

{$R *.dfm}

function TFABMEmpresas.validarCampos():boolean;
var
  mensaje: string;
begin
  result:= true;
  mensaje:= '';

  if (ZQ_EmpresaNOMBRE.IsNull) or (trim(ZQ_EmpresaNOMBRE.AsString) = '') then
  begin
    mensaje:= 'El campo Nombre se encuentra vac�o.';
    result := false;
  end;

  //Verifica_CUIT es un campo de la tabla TIPO_CUIT, se configura ah� si se le exige el NroCUIT
  if (ZQ_TipoIVAVERIFICA_CUIT.AsString='S') then
    if not EsCUITValido(ZQ_EmpresaCUIT_CUIL.AsString) then
    begin
      mensaje:= mensaje+#13+'El valor ingresado en el campo Cuit/Cuil es invalido.'+char(13)+'(s�lo debe ingresar n�meros, sin guiones)';
      result := false;
    end;

  if Result = False then
  begin
    mensaje:= mensaje+#13#13+'Verifique.';
    Application.MessageBox(pchar(mensaje), 'Validaci�n', MB_OK+MB_ICONINFORMATION);
    dbNombre.SetFocus;
  end;
end;


procedure TFABMEmpresas.btnNuevoClick(Sender: TObject);
begin
  if dm.ISModelo.iniciar_transaccion(transaccion_ABMEmpresas, [ZQ_Empresa,ZQ_PersonaRelacionContacto, ZQ_PersonaRelacionViajante, ZQ_EmpresaMarca, ZQ_EntidadTelefonoEmpresa, ZQ_CtaCte]) then
  begin
    tieneCuentaCorriente:= false;
    
    GrupoVisualizando.Enabled:=false;
    GrupoEditando.Enabled:=true;
    DBGridEmpresas.Enabled:= false;
    ZQ_Empresa.Append;
    ZQ_EmpresaBAJA.AsString := 'N';
    ZQ_EmpresaID_PROVINCIA.AsInteger:= DM.provinciaPorDefecto;
    ZPID_Empresa.Active := false;
    ZPID_Empresa.Active := true;
    ZQ_EmpresaID_EMPRESA.AsInteger := ZPID_EmpresaID.AsInteger;    

    DBGridViajantes.PopupMenu := PopupMenuViajantes;
    DBGridContactos.PopupMenu := PopupMenuContactos;
    GrillaMarcas.PopupMenu := PopupMenuMarcas;
    DBGridEntidadTelefonoEmpresa.PopupMenu:=PopupMenuTelmail;

    PanelEdicion.Enabled := true;
    PageControlEdicion.ActivePageIndex:=0;
    TabCtaCte.Enabled:= true;
    dbNombre.SetFocus;
  end;
end;


procedure TFABMEmpresas.btnModificarClick(Sender: TObject);
begin
  if (ZQ_Empresa.IsEmpty) or (ZQ_EmpresaBAJA.AsString = 'S') then
   exit;

  if dm.ISModelo.iniciar_transaccion(transaccion_ABMEmpresas, [ZQ_Empresa,ZQ_PersonaRelacionContacto, ZQ_PersonaRelacionViajante, ZQ_EmpresaMarca, ZQ_EntidadTelefonoEmpresa, ZQ_CtaCte]) then
  begin
    DBGridEmpresas.Enabled:=false;
    ZQ_Empresa.Edit;
    GrupoVisualizando.Enabled := false;
    GrupoEditando.Enabled:=true;

    DBGridViajantes.PopupMenu := PopupMenuViajantes;
    DBGridContactos.PopupMenu := PopupMenuContactos;
    GrillaMarcas.PopupMenu := PopupMenuMarcas;
    DBGridEntidadTelefonoEmpresa.PopupMenu:=PopupMenuTelmail;

    TabCtaCte.Enabled:= true;
    PanelEdicion.Enabled := true;
  end;
end;


procedure TFABMEmpresas.btnGuardarClick(Sender: TObject);
var
recno:integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);
  if validarcampos() then
  begin

    if DM.ISModelo.finalizar_transaccion(transaccion_ABMEmpresas) then
    begin
      DBGridEmpresas.Enabled:=true;
      GrupoVisualizando.Enabled:=true;
      GrupoEditando.Enabled:=false;
      recno:=ZQ_Empresa.RecNo;
      ZQ_Empresa.Refresh;
      ZQ_Empresa.RecNo:=recno;
      DBGridEmpresas.SetFocus;

      DBGridViajantes.PopupMenu := nil;
      DBGridContactos.PopupMenu := nil;
      GrillaMarcas.PopupMenu := nil;
      DBGridEntidadTelefonoEmpresa.PopupMenu:=nil;

      PanelEdicion.Enabled := false;
      TabCtaCte.Enabled:= false;
      habilitarCtaCte(false);
    end;
  end;
  
  dm.mostrarCantidadRegistro(ZQ_Empresa, lblCantidadRegistros);

  if (dgEditing	in DBGridEntidadTelefonoEmpresa.Options) then
  begin
    DBGridEntidadTelefonoEmpresa.Options := DBGridEntidadTelefonoEmpresa.Options - [dgEditing];
    DBGridEntidadTelefonoEmpresa.Options := DBGridEntidadTelefonoEmpresa.Options + [dgRowSelect];
  end;  

end;


procedure TFABMEmpresas.btnCancelarClick(Sender: TObject);
begin
  if (application.MessageBox(pchar('�Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION - ABM Empresas', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO) then
    exit;

  Perform(WM_NEXTDLGCTL, 0, 0);
  DBGridEmpresas.Enabled:=true;

  // Cuando estoy insertando primero cancela ZQ_empresa y despues Persona_relacion.. por lo que me deja sin id_empresa y hay problemas con la
  //clave foranea... entonces dejo en nulo el campo id_empresa al cancelar cuando estoy insertando para no tener problemas.
  if (ZQ_Empresa.State=dsinsert) then
  begin
     if not ZQ_PersonaRelacionContacto.IsEmpty then
       ZQ_PersonaRelacionContacto.CancelUpdates;

     if not ZQ_PersonaRelacionViajante.IsEmpty then
       ZQ_PersonaRelacionViajante.CancelUpdates;

     if not ZQ_EmpresaMarca.IsEmpty then
       ZQ_EmpresaMarca.CancelUpdates;
  end;

  if dm.ISModelo.cancelar_transaccion(transaccion_ABMEmpresas) then
  begin
    GrupoVisualizando.Enabled:=true;
    GrupoEditando.Enabled:=false;
    DBGridEmpresas.SetFocus;

    DBGridViajantes.PopupMenu := nil;
    DBGridContactos.PopupMenu := nil;
    GrillaMarcas.PopupMenu := nil;
    DBGridEntidadTelefonoEmpresa.PopupMenu:=nil;

    PanelEdicion.Enabled := false;
    TabCtaCte.Enabled:= false;
    habilitarCtaCte(false);
  end;

  if (dgEditing	in DBGridEntidadTelefonoEmpresa.Options) then
  begin
    DBGridEntidadTelefonoEmpresa.Options := DBGridEntidadTelefonoEmpresa.Options - [dgEditing];
    DBGridEntidadTelefonoEmpresa.Options := DBGridEntidadTelefonoEmpresa.Options + [dgRowSelect];
  end;
end;


procedure TFABMEmpresas.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABMEmpresas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  ISOrdenarEmpresas.GuardarConfigColumnas;
  ISOrdenarContactos.GuardarConfigColumnas;
  ISOrdenarViajantes.GuardarConfigColumnas;

  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABMEmpresas);
end;


procedure TFABMEmpresas.btnBuscarClick(Sender: TObject);
begin
  if ISBusquedaAvanzadaEmpresas.Buscar then
    dm.mostrarCantidadRegistro(ZQ_Empresa, lblCantidadRegistros);
end;


procedure TFABMEmpresas.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Empresa.IsEmpty) OR (ZQ_EmpresaBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('�Desea dar de baja la "Empresa" seleccionado?'), 'ABM Empresas', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABMEmpresas, [ZQ_Empresa]) then
    begin
      ZQ_Empresa.Edit;
      ZQ_EmpresaBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABMEmpresas)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABMEmpresas);

    recNo:= ZQ_Empresa.RecNo;
    ZQ_Empresa.Refresh;
    ZQ_Empresa.RecNo:= recNo;
  end;
end;


procedure TFABMEmpresas.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Empresa.IsEmpty) OR (ZQ_EmpresaBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('�Desea reactivar la "Empresa" seleccionado?'), 'ABM Empresas', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABMEmpresas, [ZQ_Empresa]) then
    begin
      ZQ_Empresa.Edit;
      ZQ_EmpresaBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABMEmpresas)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABMEmpresas);

    recNo:= ZQ_Empresa.RecNo;
    ZQ_Empresa.Refresh;
    ZQ_Empresa.RecNo:= recNo;
  end;
end;


procedure TFABMEmpresas.DBGridEmpresasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(DBGridEmpresas, ZQ_EmpresaBAJA.AsString, Rect, DataCol, Column, State);
end;


procedure TFABMEmpresas.permisosUsuario();
begin
  PageControlEdicion.Pages[5].TabVisible:= true;
  PageControlEdicion.Pages[6].TabVisible:= true;

  if not dm.ISUsrLogin.PermisoAccion('EMPRESA_DETALLE') then
  begin
    PageControlEdicion.Pages[5].TabVisible:= false;
  end;

  if not dm.ISUsrLogin.PermisoAccion('EMPRESA_CTA_CTE') then
  begin
    PageControlEdicion.Pages[6].TabVisible:= false;
  end;
end;


procedure TFABMEmpresas.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  QRDBLogo2.DataSet:= DM.ZQ_Sucursal;

  TabCtaCte.Enabled:= false;
  habilitarCtaCte(false);

  ISOrdenarEmpresas.CargarConfigColunmas;
  ISOrdenarContactos.CargarConfigColunmas;
  ISOrdenarViajantes.CargarConfigColunmas;

  DBGridContactos.PopupMenu:= nil;
  DBGridViajantes.PopupMenu:= nil;

  StaticTxtBaja.Color:= FPrincipal.baja;
  dm.ISModelo.abrir(ZQ_Marcas);
  dm.ISModelo.abrir(ZQ_Personas);

  PageControlEdicion.TabIndex:=0;

  ISBusquedaAvanzadaEmpresas.Abrir;
  dm.mostrarCantidadRegistro(ZQ_Empresa, lblCantidadRegistros);
  permisosUsuario;

  dbNombre.Color:= dm.colorCampoRequido;

end;


procedure TFABMEmpresas.AgregarContacto1Click(Sender: TObject);
begin
  contacto :=1; //indico que estoy agregando un contacto

  if ZQ_EmpresaID_EMPRESA.AsInteger = 0 then
  begin
    Application.MessageBox(PChar('Debe seleccionar una empresa a la cual asignarle un contacto'),'Atenci�n',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  if not Assigned(vsel) then
    vsel := TFBuscarPersona.Create(nil);
  vsel.btnBuscar.Click;
  vsel.OnSeleccionar := OnSelPersona;
  vsel.ShowModal;
end;


procedure TFABMEmpresas.AgregarViajante1Click(Sender: TObject);
begin
  contacto :=0;

  if ZQ_EmpresaID_EMPRESA.AsInteger = 0 then
  begin
    Application.MessageBox(PChar('Debe seleccionar una empresa a la cual asignarle un Viajante'),'Atenci�n',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  if not Assigned(vsel) then
    vsel := TFBuscarPersona.Create(nil);
  vsel.btnBuscar.Click;
  vsel.OnSeleccionar := OnSelPersona;
  vsel.ShowModal;
end;


procedure TFABMEmpresas.OnSelPersona;
begin
  if vsel.ZQ_Personas.IsEmpty then
    exit;

  if contacto = 1 then
  begin
    ZQ_PersonaRelacionContacto.Filter:= 'id_persona = '+vsel.ZQ_PersonasID_PERSONA.AsString;
    ZQ_PersonaRelacionContacto.Filtered := true;

    if not ZQ_PersonaRelacionContacto.IsEmpty then
    begin
      ZQ_PersonaRelacionContacto.Filtered := false;
      Application.MessageBox('La Persona seleccionada ya figura como contacto de la Empresa','Carga Contacto',MB_OK+MB_ICONINFORMATION);
      exit;
    end;

    ZQ_PersonaRelacionContacto.Filtered := false;
    ZQ_PersonaRelacionContacto.Append;
    ZQ_PersonaRelacionContactoID_PERSONA.AsInteger := vsel.ZQ_PersonasID_PERSONA.AsInteger;
    ZQ_PersonaRelacionContactoID_RELACION.AsInteger := RELACION_CONTACTO;
    ZQ_PersonaRelacionContactoID_EMPRESA.AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
    ZQ_PersonaRelacionContacto.Post;
  end
  else
  begin
    ZQ_PersonaRelacionViajante.Filter:= 'id_persona = '+vsel.ZQ_PersonasID_PERSONA.AsString;
    ZQ_PersonaRelacionViajante.Filtered := true;

    if not ZQ_PersonaRelacionViajante.IsEmpty then
    begin
      ZQ_PersonaRelacionViajante.Filtered := false;
      Application.MessageBox('La Persona seleccionada ya figura como viajante de la Empresa','Carga Viajante',MB_OK+MB_ICONINFORMATION);
      exit;
    end;

    ZQ_PersonaRelacionViajante.Filtered := false;
    ZQ_PersonaRelacionViajante.Append;
    ZQ_PersonaRelacionViajanteID_PERSONA.AsInteger := vsel.ZQ_PersonasID_PERSONA.AsInteger;
    ZQ_PersonaRelacionViajanteID_RELACION.AsInteger := RELACION_VIAJANTE;
    ZQ_PersonaRelacionViajanteID_EMPRESA.AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
    ZQ_PersonaRelacionViajante.Post;
  end;

  ZQ_Personas.Refresh;
  vsel.Close;
end;


procedure TFABMEmpresas.ZQ_EmpresaAfterScroll(DataSet: TDataSet);
begin
  ZQ_CtaCte.Close;
  ZQ_PersonaRelacionContacto.Close;
  ZQ_PersonaRelacionViajante.Close;
  ZQ_EmpresaMarca.Close;
  ZQ_EntidadTelefonoEmpresa.Close;

  if ZQ_Empresa.IsEmpty then
    exit;

  ZQ_PersonaRelacionContacto.ParamByName('relacion').AsInteger := RELACION_CONTACTO;
  ZQ_PersonaRelacionContacto.ParamByName('id_empresa').AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
  ZQ_PersonaRelacionContacto.Open;

  ZQ_PersonaRelacionViajante.ParamByName('relacion').AsInteger := RELACION_VIAJANTE;
  ZQ_PersonaRelacionViajante.ParamByName('id_empresa').AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
  ZQ_PersonaRelacionViajante.Open;

  ZQ_EmpresaMarca.ParamByName('id_empresa').AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
  ZQ_EmpresaMarca.Open;

  ZQ_EntidadTelefonoEmpresa.ParamByName('ID_ENTIDAD').AsInteger:= ZQ_EmpresaID_EMPRESA.AsInteger;
  ZQ_EntidadTelefonoEmpresa.Open;

  ZQ_CtaCte.ParamByName('id_proveedor').AsInteger:= ZQ_EmpresaID_EMPRESA.AsInteger;
  ZQ_CtaCte.Open;

  tieneCuentaCorriente:= false;
  if not ZQ_CtaCte.IsEmpty then
    tieneCuentaCorriente:= true;
end;


procedure TFABMEmpresas.QuitarContacto1Click(Sender: TObject);
begin
  if ZQ_PersonaRelacionContacto.IsEmpty then
  exit;

  ZQ_PersonaRelacionContacto.Delete;
end;


procedure TFABMEmpresas.QuitarViajante1Click(Sender: TObject);
begin
  if ZQ_PersonaRelacionViajante.IsEmpty then
  exit;

  ZQ_PersonaRelacionViajante.Delete;
end;


procedure TFABMEmpresas.btnSkypeClick(Sender: TObject);
var
  Telefono : string;
begin
  case PageControlEdicion.TabIndex of
  1:  begin
        if ZQ_EntidadTelefonoEmpresa.IsEmpty then
          exit;

        Telefono:= '"callto://+'+ZQ_EntidadTelefonoEmpresaTELEFONO.AsString+'"';

        if ShellExecute(0, 0, pchar(Telefono), 0, 0, SW_SHOWNORMAL) <= 32 then
          Application.MessageBox('No se pudo ejecutar la aplicaci�n verifique que este instalada', 'Atenci�n', MB_ICONINFORMATION);
    end;

   2: begin
        if ZQ_EntidadTelefonoContacto.IsEmpty then
          exit;

        if DBMemoContactos.SelText <> '' then
        begin
          Telefono:= '"callto://+'+DBMemoContactos.SelText+'"';
          DBMemoContactos.SetFocus;
        end
        else
          Telefono:= '"callto://+'+ZQ_EntidadTelefonoContactoTELEFONO.AsString+'"';

        if ShellExecute(0, 0, pchar(Telefono), 0, 0, SW_SHOWNORMAL) <= 32 then
          Application.MessageBox('No se pudo ejecutar la aplicaci�n verifique que este instalada', 'Atenci�n', MB_ICONINFORMATION);
      end;

   3: begin
        if ZQ_EntidadTelefonoViajantes.IsEmpty then
          exit;

        if DBMemoViajantes.SelText <> '' then
        begin
          Telefono:= '"callto://+'+DBMemoViajantes.SelText+'"';
          DBMemoViajantes.SetFocus;
        end
        else
          Telefono:= '"callto://+'+ZQ_EntidadTelefonoViajantesTELEFONO.AsString+'"';

        if ShellExecute(0, 0, pchar(Telefono), 0, 0, SW_SHOWNORMAL) <= 32 then
          Application.MessageBox('No se pudo ejecutar la aplicaci�n verifique que este instalada', 'Atenci�n', MB_ICONINFORMATION);
      end;

   5: begin
        if ZQ_Empresa.IsEmpty then
          exit;

        Telefono:= '"callto://+'+DBMemoDescripcion.SelText+'"';

        if ShellExecute(0, 0, pchar(Telefono), 0, 0, SW_SHOWNORMAL) <= 32 then
          Application.MessageBox('No se pudo ejecutar la aplicaci�n verifique que este instalada', 'Atenci�n', MB_ICONINFORMATION);
      end;
  end;
end;


procedure TFABMEmpresas.llamar1Click(Sender: TObject);
begin
  btnSkype.Click;
end;


procedure TFABMEmpresas.btnEnviarMailClick(Sender: TObject);
begin
  Application.CreateForm(TFMailEnviar, FMailEnviar);

  case PageControlEdicion.TabIndex of
  1: begin
        if ZQ_EntidadTelefonoEmpresa.IsEmpty then
        exit;

        FMailEnviar.cargarDestinatario(ZQ_EntidadTelefonoEmpresaMAIL.AsString+';');
     end;

  2:  begin
        if ZQ_EntidadTelefonoContacto.IsEmpty then
        exit;

        if DBMemoContactos.SelText <> '' then
        begin
          FMailEnviar.cargarDestinatario(DBMemoContactos.SelText+';');
          DBMemoContactos.SetFocus;
        end
        else
          FMailEnviar.cargarDestinatario(ZQ_EntidadTelefonoContactoMAIL.AsString+';');
      end;

   3: begin
        if ZQ_EntidadTelefonoViajantes.IsEmpty then
        exit;

        if DBMemoViajantes.SelText <> '' then
        begin
          FMailEnviar.cargarDestinatario(DBMemoViajantes.SelText+';');
          DBMemoViajantes.SetFocus;
        end
        else
          FMailEnviar.cargarDestinatario(ZQ_EntidadTelefonoViajantesMAIL.AsString+';');

      end;

   5: begin
        if ZQ_Empresa.IsEmpty then
        exit;

        FMailEnviar.cargarDestinatario(DBMemoDescripcion.SelText+';');

      end;
  end;

  FMailEnviar.ShowModal;
end;


procedure TFABMEmpresas.EnviarunMail1Click(Sender: TObject);
begin
  btnEnviarMail.Click;
end;

//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABMEmpresas.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABMEmpresas.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABMEmpresas.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABMEmpresas.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABMEmpresas.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABMEmpresas.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABMEmpresas.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------

procedure TFABMEmpresas.AgregarMarcaClick(Sender: TObject);
begin
  if ISListadoMarca.Buscar then
  begin
    ZQ_EmpresaMarca.Filter:= 'id_marca = '+ZQ_MarcasID_MARCA.AsString;
    ZQ_EmpresaMarca.Filtered := true;

    if not ZQ_EmpresaMarca.IsEmpty then
    begin
      ZQ_EmpresaMarca.Filtered := false;
      Application.MessageBox('Esta Marca ya fue cargada','Carga Marca',MB_OK+MB_ICONINFORMATION);
      exit;
    end;

    ZQ_EmpresaMarca.Filtered := false;
    ZQ_EmpresaMarca.Append;
    ZQ_EmpresaMarcaID_MARCA.AsInteger := ZQ_MarcasID_MARCA.AsInteger;
    ZQ_EmpresaMarcaID_EMPRESA.AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
    ZQ_EmpresaMarca.Post;
  end;
end;


procedure TFABMEmpresas.QuitarMarcaClick(Sender: TObject);
begin
  if not ZQ_EmpresaMarca.IsEmpty then
    ZQ_EmpresaMarca.Delete;
end;


procedure TFABMEmpresas.btnImprimirClick(Sender: TObject);
begin
  if ZQ_Empresa.IsEmpty then
    exit;

  DM.VariablesReportes(RepListaEmpresas);
  QRlblPieDePaginaListado.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
  QRLabelCritBusqueda.Caption := ISBusquedaAvanzadaEmpresas.ParametrosBuscados;
  ISVistaPreviaListaEmpresas.VistaPrevia;
end;

procedure TFABMEmpresas.btImprimirDetalleClick(Sender: TObject);
begin
  if ZQ_Empresa.IsEmpty then
    exit;

  ZQ_RelacionEmpresa.Close;
  ZQ_RelacionEmpresa.ParamByName('ID_EMPRESA').AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
  ZQ_RelacionEmpresa.Open;

  ISVistaPreviaDetalleEmpresa.VistaPrevia;
end;

procedure TFABMEmpresas.ZQ_PersonaRelacionContactoAfterScroll(
  DataSet: TDataSet);
begin
  ZQ_EntidadTelefonoContacto.Close;
  ZQ_EntidadTelefonoContacto.ParamByName('ID_PERSONA').AsInteger:= ZQ_PersonaRelacionContactoID_PERSONA.AsInteger;
  ZQ_EntidadTelefonoContacto.Open;
end;

procedure TFABMEmpresas.ZQ_PersonaRelacionViajanteAfterScroll(
  DataSet: TDataSet);
begin
  ZQ_EntidadTelefonoViajantes.Close;
  ZQ_EntidadTelefonoViajantes.ParamByName('ID_PERSONA').AsInteger:= ZQ_PersonaRelacionViajanteID_PERSONA.AsInteger;
  ZQ_EntidadTelefonoViajantes.Open;
end;

procedure TFABMEmpresas.AgregarTelMailClick(Sender: TObject);
begin
  if not (dgEditing	in DBGridEntidadTelefonoEmpresa.Options) then
  begin
    DBGridEntidadTelefonoEmpresa.Options := DBGridEntidadTelefonoEmpresa.Options - [dgRowSelect];
    DBGridEntidadTelefonoEmpresa.Options := DBGridEntidadTelefonoEmpresa.Options + [dgEditing];
    ZQ_EntidadTelefonoEmpresa.Append;
  end;
end;

procedure TFABMEmpresas.EditarTelMailClick(Sender: TObject);
begin
  if not (dgEditing	in DBGridEntidadTelefonoEmpresa.Options) then
  begin
    DBGridEntidadTelefonoEmpresa.Options := DBGridEntidadTelefonoEmpresa.Options - [dgRowSelect];
    DBGridEntidadTelefonoEmpresa.Options := DBGridEntidadTelefonoEmpresa.Options + [dgEditing];
    ZQ_EntidadTelefonoEmpresa.Edit;
  end;
end;

procedure TFABMEmpresas.ZQ_EntidadTelefonoEmpresaBeforePost(
  DataSet: TDataSet);
begin
ZQ_EntidadTelefonoEmpresaID_ENTIDAD.AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
end;

procedure TFABMEmpresas.btIrWebClick(Sender: TObject);
begin
  if trim(ZQ_EmpresaPAGINA_WEB.AsString) = '' then
    exit;

  ShellExecute(self.handle, 'open', pchar('http://'+ZQ_EmpresaPAGINA_WEB.AsString), nil, nil, SW_SHOWNORMAL);
end;

procedure TFABMEmpresas.DBGridEntidadTelefonoEmpresaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridEntidadTelefonoEmpresa, Rect, DataCol, Column, State);
end;

procedure TFABMEmpresas.DBGridContactosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridContactos, Rect, DataCol, Column, State);
end;

procedure TFABMEmpresas.DBGridContactoTelMailDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridContactoTelMail, Rect, DataCol, Column, State);
end;

procedure TFABMEmpresas.DBGridViajantesDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridViajantes, Rect, DataCol, Column, State);
end;

procedure TFABMEmpresas.DBGridViajanteTelMailDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridViajanteTelMail, Rect, DataCol, Column, State);
end;

procedure TFABMEmpresas.GrillaMarcasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(GrillaMarcas, Rect, DataCol, Column, State);
end;


procedure TFABMEmpresas.habilitarCtaCte(flag: boolean);
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


procedure TFABMEmpresas.btnCtaCte(Sender: TObject);
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
    ZQ_CtaCteID_PERSONA.Clear;
    ZQ_CtaCteID_PROVEEDOR.AsInteger:= ZQ_EmpresaID_EMPRESA.AsInteger;
    ZQ_CtaCteFECHA_ALTA.AsDateTime:= dm.ISModelo.FechayHora;
    ZQ_CtaCteFECHA_BAJA.Clear;
    ZQ_CtaCteLIMITE_DEUDA.AsFloat:= ctacte_credito; //por defecto lo de la configuracion
    ZQ_CtaCteVENCIMIENTO_DIAS.AsInteger:= ctacte_diasVencimiento; //por defecto lo de la configuracion
    ZQ_CtaCteSALDO.AsFloat:= 0;
    ZQ_CtaCteBAJA.AsString:= 'N';

    ISDBFechaCtaCte.SetFocus;
    GrupoEditando.Enabled:= false;
  end;

  if btn.Caption = 'Modificar' then
  begin
    if not tieneCuentaCorriente then
      exit;

    habilitarCtaCte(true);
    ZQ_CtaCte.Edit;
    ISDBFechaCtaCte.SetFocus;
    GrupoEditando.Enabled:= false;
  end;

  if btn.Caption = 'Baja' then
  begin
    if (not tieneCuentaCorriente) or (ZQ_CtaCteBAJA.AsString = 'S') then
      exit;

    if (application.MessageBox(pchar('�Desea dar de baja la "Cuenta Corriente"?'), 'ABM Persona', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    begin
      ZQ_CtaCte.Edit;
      ZQ_CtaCteBAJA.AsString:= 'S';
      ZQ_CtaCteFECHA_BAJA.AsDateTime:= dm.ISModelo.FechayHora;
    end;
  end;

  if btn.Caption = 'Reactivar' then
  begin
    if (not tieneCuentaCorriente) or (ZQ_CtaCteBAJA.AsString = 'N') then
      exit;

    if (application.MessageBox(pchar('�Desea reactivar la "Cuenta Corriente"?'), 'ABM Persona', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
    begin
      ZQ_CtaCte.Edit;
      ZQ_CtaCteBAJA.AsString:= 'N';
      ZQ_CtaCteFECHA_BAJA.clear;
    end;
  end;
end;


procedure TFABMEmpresas.btnCtaCte_AceptarClick(Sender: TObject);
begin
  if altaCtaCte then
    tieneCuentaCorriente:= true;

  ZQ_CtaCte.Post;
  habilitarCtaCte(false);
  GrupoEditando.Enabled:= true;
end;


procedure TFABMEmpresas.btnCtaCte_CancelarClick(Sender: TObject);
begin
  if altaCtaCte then
    tieneCuentaCorriente:= false;

  ZQ_CtaCte.RevertRecord;
  habilitarCtaCte(false);
  GrupoEditando.Enabled:= true;
end;

procedure TFABMEmpresas.btnExcelClick(Sender: TObject);
begin
  if not ZQ_Empresa.IsEmpty then
    dm.ExportarEXCEL(DBGridEmpresas);
end;

end.
