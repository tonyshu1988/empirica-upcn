unit UABMEmpresas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, ComCtrls, Grids, DBGrids,
  DBCtrls, StdCtrls, Mask, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, EKBusquedaAvanzada, EKOrdenarGrilla, Menus,UBuscarPersona,
  ZStoredProcedure,ShellAPI, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, ActnList,
  XPStyleActnCtrls, ActnMan, EKListadoSQL, DBClient, Provider, QuickRpt,
  QRCtrls, EKVistaPreviaQR;

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
    EKBusquedaAvanzadaEmpresas: TEKBusquedaAvanzada;
    ZQ_EmpresaID_EMPRESA: TIntegerField;
    ZQ_EmpresaID_TIPO_EMPRESA: TIntegerField;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    EKOrdenarEmpresas: TEKOrdenarGrilla;
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
    Label15: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dbNombre: TDBEdit;
    DBEditTelefono: TDBEdit;
    DBCBoxProvincia: TDBLookupComboBox;
    DBEditCuitCuil: TDBEdit;
    DBCBoxTipoIva: TDBLookupComboBox;
    DBCBoxTipoEmpresa: TDBLookupComboBox;
    DBEditDireccion: TDBEdit;
    DBEditLocalidad: TDBEdit;
    DBEditCodPostal: TDBEdit;
    DBEditEmail: TDBEdit;
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
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
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
    EKListadoMarca: TEKListadoSQL;
    DataSetProvider1: TDataSetProvider;
    RepListaEmpresas: TQuickRep;
    QRBand5: TQRBand;
    QRDBImage1: TQRDBImage;
    QRLabel11: TQRLabel;
    RepCtas_Reporte_Titulo_2: TQRLabel;
    RepCtas_Reporte_Titulo_1: TQRLabel;
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
    QRChildBandCleinte: TQRChildBand;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    EKVistaPreviaListaEmpresas: TEKVistaPreviaQR;
    RepDetalleEmpresa: TQuickRep;
    QRBand2: TQRBand;
    QRDBImage2: TQRDBImage;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
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
    EKVistaPreviaDetalleEmpresa: TEKVistaPreviaQR;
    QRDBText19: TQRDBText;
    QRLabel28: TQRLabel;
    EKOrdenarContactos: TEKOrdenarGrilla;
    EKOrdenarViajantes: TEKOrdenarGrilla;
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure DBGridEmpresasDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
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
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btImprimirDetalleClick(Sender: TObject);
  private
    { Private declarations }
    vsel : TFBuscarPersona;
    procedure OnSelPersona;
  public
    { Public declarations }
  end;

var
  FABMEmpresas: TFABMEmpresas;
  contacto : integer; //si es contacto, es 1 si es viajante es 0;

const
  transaccion_ABMEmpresas = 'ABM Empresas';

implementation

uses UDM, UPrincipal, UMailEnviar;

{$R *.dfm}

function TFABMEmpresas.validarCampos():boolean;
var
  mensaje: string;
  color: TColor;
begin
  result:= true;
  mensaje:= '';
//  PageControl.ActivePageIndex:= 0;
//
//
//  if (ZQ_PersonaNOMBRE.IsNull) then
//  begin
//    mensaje:= 'El campo Apellido y Nombre se encuentra vacío, Verifique';
//    result := false;
//  end;
//
//  if (ZQ_PersonaDIRECCION.IsNull) then
//  begin
//    mensaje:= mensaje+#13+'El campo Dirección se encuentra vacío, Verifique';
//    result := false;
//  end;
//
//  if (ZQ_PersonaID_TIPO_DOC.IsNull) then
//  begin
//    mensaje:= mensaje+#13+'El campo Tipo Documento se encuentra vacío, Verifique';
//    result := false;
//  end;
//
//  if (ZQ_PersonaID_TIPO_DOC.AsInteger <> 0) then
//    if (ZQ_PersonaNUMERO_DOC.IsNull) then
//    begin
//      mensaje:= mensaje+#13+'El campo Número Documento se encuentra vacío, Verifique';
//      result := false;
//    end;
//
//  if Result = False then
//  begin
//    Application.MessageBox(pchar(mensaje), 'Validación', MB_OK+MB_ICONINFORMATION);
//    DBEApellidoNombre.SetFocus;
//  end;
end;


procedure TFABMEmpresas.btnNuevoClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if not validarcampos() then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABMEmpresas, [ZQ_Empresa,ZQ_PersonaRelacionContacto, ZQ_PersonaRelacionViajante,ZQ_EmpresaMarca]) then
  begin
    GrupoVisualizando.Enabled:=false;
    GrupoEditando.Enabled:=true;
    DBGridEmpresas.Enabled:= false;
    ZQ_Empresa.Append;
    ZQ_EmpresaBAJA.AsString := 'N';
    ZPID_Empresa.Active := false;
    ZPID_Empresa.Active := true;
    ZQ_EmpresaID_EMPRESA.AsInteger := ZPID_EmpresaID.AsInteger;    
    DBGridViajantes.PopupMenu := PopupMenuViajantes;
    DBGridContactos.PopupMenu := PopupMenuContactos;
    GrillaMarcas.PopupMenu := PopupMenuMarcas;
    PanelEdicion.Enabled := true;
    PageControlEdicion.ActivePageIndex:=0;
    dbNombre.SetFocus;
  end;
end;


procedure TFABMEmpresas.btnModificarClick(Sender: TObject);
begin
  if (ZQ_Empresa.IsEmpty) or (ZQ_EmpresaBAJA.AsString = 'S') then
   exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABMEmpresas, [ZQ_Empresa,ZQ_PersonaRelacionContacto, ZQ_PersonaRelacionViajante,ZQ_EmpresaMarca]) then
  begin
    DBGridEmpresas.Enabled:=false;
    ZQ_Empresa.Edit;
    GrupoVisualizando.Enabled := false;
    GrupoEditando.Enabled:=true;
    DBGridViajantes.PopupMenu := PopupMenuViajantes;
    DBGridContactos.PopupMenu := PopupMenuContactos;
    GrillaMarcas.PopupMenu := PopupMenuMarcas;
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

    if DM.EKModelo.finalizar_transaccion(transaccion_ABMEmpresas) then
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
      PanelEdicion.Enabled := false;
    end;
  end;
  
  dm.mostrarCantidadRegistro(ZQ_Empresa, lblCantidadRegistros);
end;


procedure TFABMEmpresas.btnCancelarClick(Sender: TObject);
begin
  Perform(WM_NEXTDLGCTL, 0, 0);
  DBGridEmpresas.Enabled:=true;

  // Cuando estoy insertando primero cancela ZQ_empresa y despues Persona_relacion.. por lo que me deja sin id_empresa y hay problemas con la
  //clave foranea... entonces dejo en nulo el campo id_empresa al cancelar cuando estoy insertando para no tener problemas.
  if (ZQ_Empresa.State=dsinsert) then
  begin
     if ZQ_PersonaRelacionContactoID_EMPRESA.AsInteger <> 0 then
       ZQ_PersonaRelacionContactoID_EMPRESA.Clear;

     if ZQ_PersonaRelacionViajanteID_EMPRESA.AsInteger <> 0 then
       ZQ_PersonaRelacionViajanteID_EMPRESA.Clear;
  end;

  dm.EKModelo.cancelar_transaccion(transaccion_ABMEmpresas);
  GrupoVisualizando.Enabled:=true;
  GrupoEditando.Enabled:=false;
  DBGridEmpresas.SetFocus;
  DBGridViajantes.PopupMenu := nil;
  DBGridContactos.PopupMenu := nil;
  GrillaMarcas.PopupMenu := nil;
  PanelEdicion.Enabled := false;
end;


procedure TFABMEmpresas.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFABMEmpresas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  EKOrdenarEmpresas.GuardarConfigColumnas;
  EKOrdenarContactos.GuardarConfigColumnas;
  EKOrdenarViajantes.GuardarConfigColumnas;

  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABMEmpresas);
end;


procedure TFABMEmpresas.btnBuscarClick(Sender: TObject);
begin
  EKBusquedaAvanzadaEmpresas.Buscar;
  dm.mostrarCantidadRegistro(ZQ_Empresa, lblCantidadRegistros);
end;


procedure TFABMEmpresas.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Empresa.IsEmpty) OR (ZQ_EmpresaBAJA.AsString <> 'N') then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja la "Empresa" seleccionado?'), 'ABM Empresas', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMEmpresas, [ZQ_Empresa]) then
    begin
      ZQ_Empresa.Edit;
      ZQ_EmpresaBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMEmpresas)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMEmpresas);

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

  if (application.MessageBox(pchar('¿Desea reactivar la "Empresa" seleccionado?'), 'ABM Empresas', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABMEmpresas, [ZQ_Empresa]) then
    begin
      ZQ_Empresa.Edit;
      ZQ_EmpresaBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABMEmpresas)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABMEmpresas);

    recNo:= ZQ_Empresa.RecNo;
    ZQ_Empresa.Refresh;
    ZQ_Empresa.RecNo:= recNo;
  end;
end;


procedure TFABMEmpresas.DBGridEmpresasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_Empresa.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridEmpresas, ZQ_EmpresaBAJA.AsString, Rect, DataCol, Column, State);
end;


procedure TFABMEmpresas.FormCreate(Sender: TObject);
begin
  EKOrdenarEmpresas.CargarConfigColumnas;
  EKOrdenarContactos.CargarConfigColumnas;
  EKOrdenarViajantes.CargarConfigColumnas;

  StaticTxtBaja.Color:= FPrincipal.baja;
  dm.EKModelo.abrir(ZQ_Marcas);
  dm.EKModelo.abrir(ZQ_Personas);

  PageControlEdicion.TabIndex:=0;

  EKBusquedaAvanzadaEmpresas.Abrir;
  dm.mostrarCantidadRegistro(ZQ_Empresa, lblCantidadRegistros);
end;


procedure TFABMEmpresas.AgregarContacto1Click(Sender: TObject);
begin
  if ZQ_EmpresaID_EMPRESA.AsInteger = 0 then
  begin
    Application.MessageBox(PChar('Debe seleccionar una empresa a la cual asignarle un contacto'),'Atención',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  ZQ_PersonaRelacionContacto.Append;
  contacto :=1;

  if not Assigned(vsel) then
    vsel := TFBuscarPersona.Create(nil);
  vsel.btnBuscar.Click;    
  vsel.OnSeleccionar := OnSelPersona;
  vsel.ShowModal;

  if ZQ_PersonaRelacionContactoID_PERSONA.AsInteger = 0 then
    exit;

  ZQ_PersonaRelacionContactoID_RELACION.AsInteger := RELACION_CONTACTO;
  ZQ_PersonaRelacionContactoID_EMPRESA.AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
end;


procedure TFABMEmpresas.OnSelPersona;
begin
  ZQ_Personas.Refresh;
  if contacto = 1 then
    ZQ_PersonaRelacionContactoID_PERSONA.AsInteger := vsel.ZQ_PersonasID_PERSONA.AsInteger
  else
    ZQ_PersonaRelacionViajanteID_PERSONA.AsInteger := vsel.ZQ_PersonasID_PERSONA.AsInteger;

  vsel.Close;
end;


procedure TFABMEmpresas.ZQ_EmpresaAfterScroll(DataSet: TDataSet);
begin
  ZQ_PersonaRelacionContacto.Close;
  ZQ_PersonaRelacionContacto.ParamByName('relacion').AsInteger := RELACION_CONTACTO;
  ZQ_PersonaRelacionContacto.ParamByName('id_empresa').AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
  ZQ_PersonaRelacionContacto.Open;

  ZQ_PersonaRelacionViajante.Close;
  ZQ_PersonaRelacionViajante.ParamByName('relacion').AsInteger := RELACION_VIAJANTE;
  ZQ_PersonaRelacionViajante.ParamByName('id_empresa').AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
  ZQ_PersonaRelacionViajante.Open;

  ZQ_EmpresaMarca.Close;
  ZQ_EmpresaMarca.ParamByName('id_empresa').AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
  ZQ_EmpresaMarca.Open;
end;


procedure TFABMEmpresas.AgregarViajante1Click(Sender: TObject);
begin
  if ZQ_EmpresaID_EMPRESA.AsInteger = 0 then
  begin
    Application.MessageBox(PChar('Debe seleccionar una empresa a la cual asignarle un Viajante'),'Atención',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  ZQ_PersonaRelacionViajante.Append;
  contacto :=0;

  if not Assigned(vsel) then
    vsel := TFBuscarPersona.Create(nil);
  vsel.btnBuscar.Click;
  vsel.OnSeleccionar := OnSelPersona;
  vsel.ShowModal;

  if ZQ_PersonaRelacionViajanteID_PERSONA.AsInteger = 0 then
    exit;

  ZQ_PersonaRelacionViajanteID_RELACION.AsInteger := RELACION_VIAJANTE;
  ZQ_PersonaRelacionViajanteID_EMPRESA.AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
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
  0: begin
        if ZQ_Empresa.IsEmpty then
        exit;

        if DBMemoEmpresa.SelText <> '' then
        begin
          Telefono:= '"callto://+'+DBMemoEmpresa.SelText+'"';
          DBMemoEmpresa.SetFocus;
        end

        else
          Telefono:= '"callto://+'+ZQ_EmpresaTELEFONO.AsString+'"';

        if ShellExecute(0, 0, pchar(Telefono), 0, 0, SW_SHOWNORMAL) <= 32 then
        Application.MessageBox('No se pudo ejecutar la aplicación verifique que este instalada', 'Atención', MB_ICONINFORMATION);
     end;

  1:  begin
        if ZQ_PersonaRelacionContacto.IsEmpty then
        exit;

        if DBMemoContactos.SelText <> '' then
        begin
          Telefono:= '"callto://+'+DBMemoContactos.SelText+'"';
          DBMemoContactos.SetFocus;
        end
        else
          Telefono:= '"callto://+'+ZQ_PersonaRelacionContactotelefono.AsString+'"';

        if ShellExecute(0, 0, pchar(Telefono), 0, 0, SW_SHOWNORMAL) <= 32 then
        Application.MessageBox('No se pudo ejecutar la aplicación verifique que este instalada', 'Atención', MB_ICONINFORMATION);
    end;

   2: begin
        if ZQ_PersonaRelacionViajante.IsEmpty then
        exit;

        if DBMemoViajantes.SelText <> '' then
        begin
          Telefono:= '"callto://+'+DBMemoViajantes.SelText+'"';
          DBMemoViajantes.SetFocus;
        end
        else
          Telefono:= '"callto://+'+ZQ_PersonaRelacionViajantetelefono.AsString+'"';

        if ShellExecute(0, 0, pchar(Telefono), 0, 0, SW_SHOWNORMAL) <= 32 then
        Application.MessageBox('No se pudo ejecutar la aplicación verifique que este instalada', 'Atención', MB_ICONINFORMATION);
      end;

   3: begin
        if ZQ_Empresa.IsEmpty then
        exit;

        Telefono:= '"callto://+'+DBMemoDescripcion.SelText+'"';

        if ShellExecute(0, 0, pchar(Telefono), 0, 0, SW_SHOWNORMAL) <= 32 then
        Application.MessageBox('No se pudo ejecutar la aplicación verifique que este instalada', 'Atención', MB_ICONINFORMATION);
      end;
  end;
end;


procedure TFABMEmpresas.llamar1Click(Sender: TObject);
var
  telefono : string;
begin
  btnSkype.Click;
end;


procedure TFABMEmpresas.btnEnviarMailClick(Sender: TObject);
begin
  Application.CreateForm(TFMailEnviar, FMailEnviar);

  case PageControlEdicion.TabIndex of
  0: begin
        if ZQ_Empresa.IsEmpty then
        exit;

        if DBMemoEmpresa.SelText <> '' then
        begin
          FMailEnviar.cargarDestinatario(DBMemoEmpresa.SelText+';');
          DBMemoEmpresa.SetFocus;
        end
        else
          FMailEnviar.cargarDestinatario(ZQ_EmpresaEMAIL.AsString+';');
     end;

  1:  begin
        if ZQ_PersonaRelacionContacto.IsEmpty then
        exit;

        if DBMemoContactos.SelText <> '' then
        begin
          FMailEnviar.cargarDestinatario(DBMemoContactos.SelText+';');
          DBMemoContactos.SetFocus;
        end
        else
          FMailEnviar.cargarDestinatario(ZQ_PersonaRelacionContactoemail.AsString+';');
      end;

   2: begin
        if ZQ_PersonaRelacionViajante.IsEmpty then
        exit;

        if DBMemoViajantes.SelText <> '' then
        begin
          FMailEnviar.cargarDestinatario(DBMemoViajantes.SelText+';');
          DBMemoViajantes.SetFocus;
        end
        else
          FMailEnviar.cargarDestinatario(ZQ_PersonaRelacionViajanteemail.AsString+';');

      end;

   3: begin
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

procedure TFABMEmpresas.MenuItem1Click(Sender: TObject);
begin
  if EKListadoMarca.Buscar then
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

procedure TFABMEmpresas.MenuItem2Click(Sender: TObject);
begin
if not ZQ_EmpresaMarca.IsEmpty then
 ZQ_EmpresaMarca.Delete;

end;

procedure TFABMEmpresas.btnImprimirClick(Sender: TObject);
begin
  if ZQ_Empresa.IsEmpty then
    exit;

  EKVistaPreviaListaEmpresas.VistaPrevia;
end;

procedure TFABMEmpresas.btImprimirDetalleClick(Sender: TObject);
begin
  if ZQ_Empresa.IsEmpty then
    exit;

  ZQ_RelacionEmpresa.Close;
  ZQ_RelacionEmpresa.ParamByName('ID_EMPRESA').AsInteger := ZQ_EmpresaID_EMPRESA.AsInteger;
  ZQ_RelacionEmpresa.Open;

  EKVistaPreviaDetalleEmpresa.VistaPrevia;  
end;

end.
