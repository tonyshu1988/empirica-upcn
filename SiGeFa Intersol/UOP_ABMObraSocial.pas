unit UOP_ABMObraSocial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
   ActnList, XPStyleActnCtrls, ActnMan, 
   QRCtrls, QuickRpt, ComCtrls, cxClasses, ISVistaPreviaQR,
  ISOrdenarGrilla, ISBusquedaAvanzada, Buttons, Menus;

type
  TFOP_ABMObraSocial = class(TForm)
    PanelFondo: TPanel;
    PanelGrilla: TPanel;
    DBGridObraSocial: TDBGrid;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    ZQ_OP_PLAN: TZQuery;
    DS_OP_ObraSocial: TDataSource;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    PanelEdicion: TPanel;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    RepObraSocial: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepObraSocial_Subtitulo: TQRLabel;
    RepObraSocial_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText19: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand11: TQRBand;
    QRlblPieDePagina: TQRLabel;
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
    btnExcel: TdxBarLargeButton;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    Label9: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label16: TLabel;
    Label10: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBLCBoxProvincia: TDBLookupComboBox;
    DBLCBoxCondIva: TDBLookupComboBox;
    DBENombre: TDBEdit;
    DBELocalidad: TDBEdit;
    DBEDireccion: TDBEdit;
    DBECodPostal: TDBEdit;
    DBECuit_Cuil: TDBEdit;
    DBEditCodigo: TDBEdit;
    Label6: TLabel;
    DBETelefono: TDBEdit;
    Label13: TLabel;
    DBEMail: TDBEdit;
    ZQ_Provincia: TZQuery;
    ZQ_ProvinciaID_PROVINCIA: TIntegerField;
    ZQ_ProvinciaNOMBRE_PROVINCIA: TStringField;
    ZQ_Iva: TZQuery;
    ZQ_IvaID_TIPO_IVA: TIntegerField;
    ZQ_IvaNOMBRE_TIPO_IVA: TStringField;
    ZQ_IvaABREVIATURA: TStringField;
    ZQ_IvaDISCRIMINAR: TStringField;
    ZQ_IvaLETRA: TStringField;
    ZQ_IvaFISCAL: TStringField;
    ZQ_IvaCOEFICIENTE: TFloatField;
    ZQ_IvaVERIFICA_CUIT: TStringField;
    DS_Iva: TDataSource;
    DS_Provincia: TDataSource;
    DBCheckBoxFacturaAuto: TDBCheckBox;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    TabAfiliados: TTabSheet;
    ZQ_Afiliados: TZQuery;
    DS_Afiliados: TDataSource;
    ZQ_AfiliadosNRO_AFILIADO: TStringField;
    ZQ_AfiliadosNOMBRE: TStringField;
    ZQ_AfiliadosID_PERSONA: TIntegerField;
    DBGridAfiliados: TDBGrid;
    Label1: TLabel;
    ISBuscar: TISBusquedaAvanzada;
    ISOrdenarGrilla1: TISOrdenarGrilla;
    ISVistaPrevia: TISVistaPreviaQR;
    ISOrdenarGrilla2: TISOrdenarGrilla;
    TabSheet3: TTabSheet;
    ZQ_OS_CABECERA: TZQuery;
    StringField11: TStringField;
    StringField12: TStringField;
    DS_OP_PLAN: TDataSource;
    ZQ_OS_CABECERAID_OPTICA_OS_CABECERA: TIntegerField;
    ZQ_OS_CABECERATELEFONO1: TStringField;
    ZQ_OS_CABECERATELEFONO2: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    grillaPlanes: TDBGrid;
    PPlan: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    dbNombrePlan: TDBEdit;
    dbDctoPlan: TDBEdit;
    DBEdit4: TDBEdit;
    dbCodPlan: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    btnPlanAceptar: TBitBtn;
    btnPlanCancelar: TBitBtn;
    ZQ_OP_PLANID_OS: TIntegerField;
    ZQ_OP_PLANCODIGO: TStringField;
    ZQ_OP_PLANNOMBRE: TStringField;
    ZQ_OP_PLANDESCRIPCION: TStringField;
    ZQ_OP_PLANBAJA: TStringField;
    ZQ_OP_PLANFACTURA_AUTOMATICA: TStringField;
    ZQ_OP_PLANID_OPTICA_OS_CABECERA: TIntegerField;
    ZQ_OP_PLANDESCUENTO: TFloatField;
    ZQ_OS_CABECERACODIGO: TStringField;
    ZQ_OS_CABECERANOMBRE: TStringField;
    ZQ_OS_CABECERADIRECCION: TStringField;
    ZQ_OS_CABECERADESCRIPCION: TStringField;
    ZQ_OS_CABECERABAJA: TStringField;
    ZQ_OS_CABECERACUIT_CUIL: TStringField;
    ZQ_OS_CABECERALOCALIDAD: TStringField;
    ZQ_OS_CABECERACODIGO_POSTAL: TStringField;
    ZQ_OS_CABECERAEMAIL: TStringField;
    ZQ_OS_CABECERAID_PROVINCIA: TIntegerField;
    ZQ_OS_CABECERAID_TIPO_IVA: TIntegerField;
    ZQ_OS_CABECERAFACTURA_AUTOMATICA: TStringField;
    PopupMenuPlan: TPopupMenu;
    AgregarObraSocial1: TMenuItem;
    QuitarObraSocial1: TMenuItem;
    BajaPlanOs: TMenuItem;
    ReactivarPlanOs: TMenuItem;
    ZQ_AfiliadosNPLAN: TStringField;
    modifPlanOss: TMenuItem;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);    
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridObraSocialDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    //------TECLAS RAPIDAS
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AReactivarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ZQ_OP_PLANAfterScroll(DataSet: TDataSet);
    procedure DBGridAfiliadosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    function validarcampos():boolean;
    procedure habilitarPlanes(flag: boolean);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure AgregarObraSocial1Click(Sender: TObject);
    procedure QuitarObraSocial1Click(Sender: TObject);
    procedure btnPlanAceptarClick(Sender: TObject);
    procedure btnPlanCancelarClick(Sender: TObject);
    function validarcampos2():boolean;
    procedure BajaPlanOsClick(Sender: TObject);
    procedure ReactivarPlanOsClick(Sender: TObject);
    procedure grillaPlanesDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure modifPlanOssClick(Sender: TObject);
  private
  public
  end;

var
  FOP_ABMObraSocial: TFOP_ABMObraSocial;

const
  transaccion_ABM = 'ABM OBRA SOCIAL';

implementation

uses UPrincipal, UDM, UUtilidades;

{$R *.dfm}

procedure TFOP_ABMObraSocial.habilitarPlanes(flag: boolean);
begin
  PPlan.Enabled:= flag;
  if flag then
  begin
    FPrincipal.Iconos_Menu_16.GetBitmap(0, btnPlanCancelar.Glyph);
    FPrincipal.Iconos_Menu_16.GetBitmap(1, btnPlanAceptar.Glyph);
  end
  else
  begin
    btnPlanAceptar.Glyph:= nil;
    btnPlanCancelar.Glyph:= nil;
  end;
  grillaPlanes.Enabled:=not flag;

  
end;

procedure TFOP_ABMObraSocial.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFOP_ABMObraSocial.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFOP_ABMObraSocial.btnBuscarClick(Sender: TObject);
begin
  if ISBuscar.Buscar then
    dm.mostrarCantidadRegistro(ZQ_OS_CABECERA, lblCantidadRegistros);
end;


procedure TFOP_ABMObraSocial.btnNuevoClick(Sender: TObject);
begin
  if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_OS_CABECERA,ZQ_OP_PLAN]) then
  begin
    DBGridObraSocial.Enabled := false;

    ZQ_OS_CABECERA.Append;
    ZQ_OS_CABECERABAJA.AsString:= 'N';
    ZQ_OS_CABECERAFACTURA_AUTOMATICA.AsString:= 'N';

    PageControl1.ActivePageIndex:= 0;
    DBEditCodigo.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
    grillaPlanes.PopupMenu:=PopupMenuPlan;
  end;
end;


procedure TFOP_ABMObraSocial.btnModificarClick(Sender: TObject);
begin
  if (ZQ_OS_CABECERA.IsEmpty) then
    exit;

  if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_OS_CABECERA,ZQ_OP_PLAN]) then
  begin
    DBGridObraSocial.Enabled := false;

    ZQ_OS_CABECERA.Edit;

    PageControl1.ActivePageIndex:= 0;
    DBEditCodigo.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
    grillaPlanes.PopupMenu:=PopupMenuPlan;
  end;
end;


procedure TFOP_ABMObraSocial.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_OS_CABECERA.IsEmpty) OR (ZQ_OS_CABECERABAJA.AsString <> 'N')then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja la "Obra Social" seleccionada?'), 'ABM Obra Social', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_OS_CABECERA]) then
    begin
      ZQ_OS_CABECERA.Edit;
      ZQ_OS_CABECERABAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_OS_CABECERA.RecNo;
    ZQ_OS_CABECERA.Refresh;
    ZQ_OS_CABECERA.RecNo:= recNo;
  end;
end;


procedure TFOP_ABMObraSocial.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_OS_CABECERA.IsEmpty) OR (ZQ_OS_CABECERABAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar la "Obra Social" seleccionada?'), 'ABM Obra Social', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_OS_CABECERA]) then
    begin
      ZQ_OS_CABECERA.Edit;
      ZQ_OS_CABECERABAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.ISModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_OS_CABECERA.RecNo;
    ZQ_OS_CABECERA.Refresh;
    ZQ_OS_CABECERA.RecNo:= recNo;
  end;
end;


procedure TFOP_ABMObraSocial.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  Perform(WM_NEXTDLGCTL, 0, 0);

  if not validarcampos() then
    exit;

  try
    if DM.ISModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridObraSocial.Enabled:= true;
      DBGridObraSocial.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      recNo:= ZQ_OS_CABECERA.RecNo;
      ZQ_OS_CABECERA.Refresh;
      ZQ_OS_CABECERA.RecNo:= recNo;
      grillaPlanes.PopupMenu:=nil;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_OS_CABECERA, lblCantidadRegistros);
end;


procedure TFOP_ABMObraSocial.btnCancelarClick(Sender: TObject);
begin
  if dm.ISModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridObraSocial.Enabled:=true;
    DBGridObraSocial.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    grillaPlanes.PopupMenu:=nil;
  end;
end;


procedure TFOP_ABMObraSocial.FormCreate(Sender: TObject);
begin
  dm.ISModelo.abrir(ZQ_Provincia);
  dm.ISModelo.abrir(ZQ_Iva);

  dbCodPlan.Color:= dm.colorCampoRequido;
  dbNombrePlan.Color:= dm.colorCampoRequido;
  dbDctoPlan.Color:= dm.colorCampoRequido;

  ISOrdenarGrilla1.CargarConfigColunmas;
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  StaticTxtBaja.Color:= FPrincipal.baja;
  PageControl1.ActivePageIndex:= 0;
  grillaPlanes.PopupMenu:=nil;
  habilitarPlanes(false);

  ISBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_OS_CABECERA, lblCantidadRegistros);
end;


procedure TFOP_ABMObraSocial.DBGridObraSocialDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(DBGridObraSocial, ZQ_OS_CABECERABAJA.AsString, Rect, DataCol, Column, State);
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFOP_ABMObraSocial.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFOP_ABMObraSocial.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFOP_ABMObraSocial.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFOP_ABMObraSocial.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFOP_ABMObraSocial.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFOP_ABMObraSocial.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFOP_ABMObraSocial.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------

procedure TFOP_ABMObraSocial.btnImprimirClick(Sender: TObject);
begin
  if ZQ_OS_CABECERA.IsEmpty then
    exit;

  DM.VariablesReportes(RepObraSocial);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
  QRLabelCritBusqueda.Caption := ISBuscar.ParametrosBuscados;
  ISVistaPrevia.VistaPrevia;
end;

procedure TFOP_ABMObraSocial.btnExcelClick(Sender: TObject);
begin
  if not ZQ_OS_CABECERA.IsEmpty then
    dm.ExportarEXCEL(DBGridObraSocial);
end;

procedure TFOP_ABMObraSocial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ISOrdenarGrilla1.GuardarConfigColumnas;
end;

procedure TFOP_ABMObraSocial.ZQ_OP_PLANAfterScroll(
  DataSet: TDataSet);
begin

ZQ_OP_PLAN.Close;ZQ_Afiliados.Close;

if ZQ_OS_CABECERA.IsEmpty then
    exit;

ZQ_Afiliados.ParamByName('ID_OS').AsInteger:= ZQ_OS_CABECERAID_OPTICA_OS_CABECERA.AsInteger;
ZQ_Afiliados.Open;
ZQ_OP_PLAN.ParamByName('ID').AsInteger:= ZQ_OS_CABECERAID_OPTICA_OS_CABECERA.AsInteger;
ZQ_OP_PLAN.Open;

end;

procedure TFOP_ABMObraSocial.DBGridAfiliadosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridAfiliados, Rect, DataCol, Column, State);
end;


function TFOP_ABMObraSocial.validarcampos():boolean;
var
  mensaje: string;
begin
  result:= true;
  mensaje:= '';
  if (ZQ_OS_CABECERANOMBRE.IsNull) or (trim(ZQ_OS_CABECERANOMBRE.AsString) = '') then
  begin
    mensaje:= 'El campo Nombre se encuentra vacío.';
    result := false;
  end;

  if (ZQ_OS_CABECERAID_TIPO_IVA.IsNull) then
  begin
    mensaje:= mensaje+#13+'El campo Condición IVA se encuentra vacío.';
    result := false;
  end;

  //Verifica_CUIT es un campo de la tabla TIPO_CUIT, se configura ahí si se le exige el NroCUIT
  if (ZQ_IvaVERIFICA_CUIT.AsString='S') then
    if not EsCUITValido(ZQ_OS_CABECERACUIT_CUIL.AsString) then
    begin
      mensaje:= mensaje+#13+'El valor ingresado en el campo Cuit/Cuil es invalido.'+char(13)+'(sólo debe ingresar números, sin guiones)';
      result := false;
    end;

  if Result = False then
  begin
    mensaje:= mensaje+#13#13+'Verifique.';
    Application.MessageBox(pchar(mensaje), 'Validación', MB_OK+MB_ICONINFORMATION);
    PageControl1.ActivePageIndex:=0;
    DBENombre.SetFocus;
  end;
end;

procedure TFOP_ABMObraSocial.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
if (ZQ_OP_PLAN.state = dsInsert) or (ZQ_OP_PLAN.state = dsEdit) then
    AllowChange:= False;
end;

procedure TFOP_ABMObraSocial.AgregarObraSocial1Click(Sender: TObject);
begin
    habilitarPlanes(true);

    ZQ_OP_PLAN.Append;
    ZQ_OP_PLANID_OPTICA_OS_CABECERA.AsInteger:= ZQ_OS_CABECERAID_OPTICA_OS_CABECERA.AsInteger;
    ZQ_OP_PLANBAJA.AsString:='N';
    ZQ_OP_PLANFACTURA_AUTOMATICA.AsString:=ZQ_OS_CABECERAFACTURA_AUTOMATICA.AsString;
    ZQ_OP_PLANDESCUENTO.AsFloat:=0;

    if dbCodPlan.Enabled then dbCodPlan.SetFocus;

    GrupoGuardarCancelar.Enabled:= false;
end;

procedure TFOP_ABMObraSocial.QuitarObraSocial1Click(Sender: TObject);
begin
    ZQ_OP_PLAN.Delete;
end;


function TFOP_ABMObraSocial.validarcampos2():boolean;
var
  mensaje: string;
begin
  PageControl1.ActivePageIndex:= 1;
  result:= true;
  mensaje:= '';

  if (ZQ_OP_PLANCODIGO.IsNull) then
  begin
    mensaje:= 'El campo Código Corto se encuentra vacío.';
    result := false;
  end;

  if (ZQ_OP_PLANNOMBRE.IsNull) then
  begin
    mensaje:= mensaje+#13+'El campo Nombre se encuentra vacío.';
    result := false;
  end;

  if (ZQ_OP_PLANDESCUENTO.IsNull) then
  begin
    mensaje:= mensaje+#13+'El campo Descuento se encuentra vacío.';
    result := false;
  end;

  if (ZQ_OP_PLANDESCUENTO.AsFloat<0) then
  begin
    mensaje:= mensaje+#13+'El campo Descuento debe ser mayor a 0.';
    result := false;
  end;

  if Result = False then
  begin
    mensaje:= mensaje+#13#13+'Verifique.';
    Application.MessageBox(pchar(mensaje), 'Validación', MB_OK+MB_ICONINFORMATION);
    dbCodPlan.SetFocus;
  end;

end;

procedure TFOP_ABMObraSocial.btnPlanAceptarClick(Sender: TObject);
begin
 if validarcampos2 then
  begin
   ZQ_OP_PLAN.Post;
   habilitarPlanes(false);
   GrupoGuardarCancelar.Enabled:= true;
  end;
end;

procedure TFOP_ABMObraSocial.btnPlanCancelarClick(Sender: TObject);
begin
  ZQ_OP_PLAN.RevertRecord;
  habilitarPlanes(false);
  GrupoGuardarCancelar.Enabled:= true;
end;

procedure TFOP_ABMObraSocial.BajaPlanOsClick(Sender: TObject);
begin
if (ZQ_OP_PLAN.IsEmpty) OR (ZQ_OP_PLANBAJA.AsString <> 'N')then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja el Plan seleccionado?'), 'ABM Plan Obra Social', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
   begin
     ZQ_OP_PLAN.Edit;
     ZQ_OP_PLANBAJA.AsString:='S';
     ZQ_OP_PLAN.Post;
   end
    else
      exit;
end;

procedure TFOP_ABMObraSocial.ReactivarPlanOsClick(Sender: TObject);
begin
if (ZQ_OP_PLAN.IsEmpty) OR (ZQ_OP_PLANBAJA.AsString <> 'S')then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar el Plan seleccionado?'), 'ABM Plan Obra Social', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
   begin
     ZQ_OP_PLAN.Edit;
     ZQ_OP_PLANBAJA.AsString:='N';
     ZQ_OP_PLAN.Post;
   end
    else
      exit;
end;

procedure TFOP_ABMObraSocial.grillaPlanesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(grillaPlanes, ZQ_OP_PLANBAJA.AsString, Rect, DataCol, Column, State);
end;

procedure TFOP_ABMObraSocial.modifPlanOssClick(Sender: TObject);
begin
   habilitarPlanes(true);

    ZQ_OP_PLAN.Edit;
    
    if dbCodPlan.Enabled then dbCodPlan.SetFocus;

    GrupoGuardarCancelar.Enabled:= false;
end;

end.
