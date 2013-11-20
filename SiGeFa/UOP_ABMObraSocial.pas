unit UOP_ABMObraSocial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  EKVistaPreviaQR, QRCtrls, QuickRpt, ComCtrls, cxClasses;

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
    ZQ_OP_ObraSocial: TZQuery;
    DS_OP_ObraSocial: TDataSource;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    PanelEdicion: TPanel;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    EKBuscar: TEKBusquedaAvanzada;
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
    EKVistaPrevia: TEKVistaPreviaQR;
    btnExcel: TdxBarLargeButton;
    ZQ_OP_ObraSocialID_OS: TIntegerField;
    ZQ_OP_ObraSocialCODIGO: TStringField;
    ZQ_OP_ObraSocialNOMBRE: TStringField;
    ZQ_OP_ObraSocialDIRECCION: TStringField;
    ZQ_OP_ObraSocialTELEFONO: TStringField;
    ZQ_OP_ObraSocialDESCRIPCION: TStringField;
    ZQ_OP_ObraSocialBAJA: TStringField;
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
    ZQ_OP_ObraSocialCUIT_CUIL: TStringField;
    ZQ_OP_ObraSocialLOCALIDAD: TStringField;
    ZQ_OP_ObraSocialCODIGO_POSTAL: TStringField;
    ZQ_OP_ObraSocialEMAIL: TStringField;
    ZQ_OP_ObraSocialID_TIPO_IVA: TIntegerField;
    ZQ_OP_ObraSocialID_PROVINCIA: TIntegerField;
    ZQ_OP_ObraSocial_tipoIva: TStringField;
    ZQ_OP_ObraSocial_provincia: TStringField;
    ZQ_OP_ObraSocialFACTURA_AUTOMATICA: TStringField;
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
    EKOrdenarGrilla2: TEKOrdenarGrilla;
    Label1: TLabel;
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
    procedure ZQ_OP_ObraSocialAfterScroll(DataSet: TDataSet);
    procedure DBGridAfiliadosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    function validarcampos():boolean;
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
  if EKBuscar.Buscar then
    dm.mostrarCantidadRegistro(ZQ_OP_ObraSocial, lblCantidadRegistros);
end;


procedure TFOP_ABMObraSocial.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_OP_ObraSocial]) then
  begin
    DBGridObraSocial.Enabled := false;

    ZQ_OP_ObraSocial.Append;
    ZQ_OP_ObraSocialBAJA.AsString:= 'N';
    ZQ_OP_ObraSocialFACTURA_AUTOMATICA.AsString:= 'N';

    PageControl1.ActivePageIndex:= 0;
    DBEditCodigo.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFOP_ABMObraSocial.btnModificarClick(Sender: TObject);
begin
  if (ZQ_OP_ObraSocial.IsEmpty) then
    exit;

  if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_OP_ObraSocial]) then
  begin
    DBGridObraSocial.Enabled := false;

    ZQ_OP_ObraSocial.Edit;

    PageControl1.ActivePageIndex:= 0;
    DBEditCodigo.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFOP_ABMObraSocial.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_OP_ObraSocial.IsEmpty) OR (ZQ_OP_ObraSocialBAJA.AsString <> 'N')then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja la "Obra Social" seleccionada?'), 'ABM Obra Social', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_OP_ObraSocial]) then
    begin
      ZQ_OP_ObraSocial.Edit;
      ZQ_OP_ObraSocialBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_OP_ObraSocial.RecNo;
    ZQ_OP_ObraSocial.Refresh;
    ZQ_OP_ObraSocial.RecNo:= recNo;
  end;
end;


procedure TFOP_ABMObraSocial.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_OP_ObraSocial.IsEmpty) OR (ZQ_OP_ObraSocialBAJA.AsString <> 'S') then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar la "Obra Social" seleccionada?'), 'ABM Obra Social', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(transaccion_ABM, [ZQ_OP_ObraSocial]) then
    begin
      ZQ_OP_ObraSocial.Edit;
      ZQ_OP_ObraSocialBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(transaccion_ABM)) then
      dm.EKModelo.cancelar_transaccion(transaccion_ABM);

    recNo:= ZQ_OP_ObraSocial.RecNo;
    ZQ_OP_ObraSocial.Refresh;
    ZQ_OP_ObraSocial.RecNo:= recNo;
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
    if DM.EKModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridObraSocial.Enabled:= true;
      DBGridObraSocial.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      recNo:= ZQ_OP_ObraSocial.RecNo;
      ZQ_OP_ObraSocial.Refresh;
      ZQ_OP_ObraSocial.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_OP_ObraSocial, lblCantidadRegistros);
end;


procedure TFOP_ABMObraSocial.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridObraSocial.Enabled:=true;
    DBGridObraSocial.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
  end;
end;


procedure TFOP_ABMObraSocial.FormCreate(Sender: TObject);
begin
  dm.EKModelo.abrir(ZQ_Provincia);
  dm.EKModelo.abrir(ZQ_Iva);


  DBENombre.Color:= dm.colorCampoRequido;
  DBLCBoxCondIva.Color:= dm.colorCampoRequido;
  DBECuit_Cuil.Color:= dm.colorCampoRequido;

  EKOrdenarGrilla1.CargarConfigColumnas;
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  StaticTxtBaja.Color:= FPrincipal.baja;
  PageControl1.ActivePageIndex:= 0;

  EKBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_OP_ObraSocial, lblCantidadRegistros);
end;


procedure TFOP_ABMObraSocial.DBGridObraSocialDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillasConBajas(DBGridObraSocial, ZQ_OP_ObraSocialBAJA.AsString, Rect, DataCol, Column, State);
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
  if ZQ_OP_ObraSocial.IsEmpty then
    exit;

  DM.VariablesReportes(RepObraSocial);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
  EKVistaPrevia.VistaPrevia;
end;

procedure TFOP_ABMObraSocial.btnExcelClick(Sender: TObject);
begin
  if not ZQ_OP_ObraSocial.IsEmpty then
    dm.ExportarEXCEL(DBGridObraSocial);
end;

procedure TFOP_ABMObraSocial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
end;

procedure TFOP_ABMObraSocial.ZQ_OP_ObraSocialAfterScroll(
  DataSet: TDataSet);
begin
  ZQ_Afiliados.Close;

  if ZQ_OP_ObraSocial.IsEmpty then
    exit;

  ZQ_Afiliados.ParamByName('ID_OS').AsInteger:= ZQ_OP_ObraSocialID_OS.AsInteger;
  ZQ_Afiliados.Open;
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

  if (ZQ_OP_ObraSocialNOMBRE.IsNull) or (trim(ZQ_OP_ObraSocialNOMBRE.AsString) = '') then
  begin
    mensaje:= 'El campo Nombre se encuentra vacío.';
    result := false;
  end;

  if (ZQ_OP_ObraSocialID_TIPO_IVA.IsNull) then
  begin
    mensaje:= mensaje+#13+'El campo Condición IVA se encuentra vacío.';
    result := false;
  end;

  //Verifica_CUIT es un campo de la tabla TIPO_CUIT, se configura ahí si se le exige el NroCUIT
  if (ZQ_IvaVERIFICA_CUIT.AsString='S') then
    if not EsCUITValido(ZQ_OP_ObraSocialCUIT_CUIL.AsString) then
    begin
      mensaje:= mensaje+#13+'El valor ingresado en el campo Cuit/Cuil es invalido.'+char(13)+'(sólo debe ingresar números, sin guiones)';
      result := false;
    end;

  if Result = False then
  begin
    mensaje:= mensaje+#13#13+'Verifique.';
    Application.MessageBox(pchar(mensaje), 'Validación', MB_OK+MB_ICONINFORMATION);
    DBENombre.SetFocus;
  end;
end;

end.
