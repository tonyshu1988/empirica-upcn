unit UConfiguracion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, StdCtrls, Mask, DBCtrls,
  Buttons, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ComCtrls, ZStoredProcedure, ExtDlgs, ZSqlUpdate, DBClient, STRUTILS,
  EKOrdenarGrilla, EKDBDateTimePicker;

type
  TFConfiguracion = class(TForm)
    dxBarABM: TdxBarManager;
    BtModificar: TdxBarLargeButton;
    BtGuardar: TdxBarLargeButton;
    BtCancelar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btNuevo: TdxBarLargeButton;
    PGeneral: TPanel;
    GrupoVisualizacion: TdxBarGroup;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label17: TLabel;
    DBLogo: TDBImage;
    BuscarLogo: TOpenPictureDialog;
    ZQ_General: TZQuery;
    DS_Variables: TDataSource;
    GrupoEdicion: TdxBarGroup;
    PageControl1: TPageControl;
    TabSheetGeneral: TTabSheet;
    TabSheetVariables: TTabSheet;
    Panel1: TPanel;
    Panel4: TPanel;
    ZQ_Logo: TZQuery;
    DS_Logo: TDataSource;
    PVariables: TPanel;
    ZQ_Variables: TZQuery;
    DBGridVariables: TDBGrid;
    Panel2: TPanel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    Label9: TLabel;
    DBMemo2: TDBMemo;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    EKDBDateTimePicker1: TEKDBDateTimePicker;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    panelColor: TPanel;
    ZQ_VariablesCLAVE: TStringField;
    ZQ_VariablesFECHA: TDateField;
    ZQ_VariablesNUMERO: TFloatField;
    ZQ_VariablesTEXTO: TStringField;
    ZQ_VariablesNIVEL: TSmallintField;
    ZQ_VariablesGRUPO: TStringField;
    ZQ_VariablesDESCRIPCION: TStringField;
    ZQ_VariablesGRAFICO: TBlobField;
    ZQ_GeneralID_SUCURSAL: TIntegerField;
    ZQ_GeneralNOMBRE: TStringField;
    ZQ_GeneralDIRECCION: TStringField;
    ZQ_GeneralLOCALIDAD: TStringField;
    ZQ_GeneralCODIGO_POSTAL: TStringField;
    ZQ_GeneralTELEFONO: TStringField;
    ZQ_GeneralEMAIL: TStringField;
    ZQ_GeneralBAJA: TStringField;
    ZQ_GeneralLOGO: TBlobField;
    ZQ_GeneralREPORTE_TITULO: TStringField;
    ZQ_GeneralREPORTE_SUBTITULO: TStringField;
    ZQ_GeneralCOMPROBANTE_TITULO: TStringField;
    ZQ_GeneralCOMPROBANTE_RENGLON1: TStringField;
    ZQ_GeneralCOMPROBANTE_RENGLON2: TStringField;
    ZQ_GeneralCOMPROBANTE_RENGLON3: TStringField;
    ZQ_GeneralCOMPROBANTE_RENGLON4: TStringField;
    ZQ_LogoLOGO: TBlobField;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DS_General: TDataSource;
    ColorDialog: TColorDialog;
    procedure btnSalirClick(Sender: TObject);
    procedure habilitarCarga(flag: boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DBLogoClick(Sender: TObject);
    procedure BtGuardarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtModificarClick(Sender: TObject);
    procedure cargarDatosGeneral();
    procedure guardarDatosGeneral();
    procedure cargarTexto(clave: string; busqueda: string; var variable: TEdit);
    procedure guardarTexto(clave: string; busqueda: string; valor: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ZQ_VariablesAfterScroll(DataSet: TDataSet);
    procedure panelColorClick(Sender: TObject);
    procedure btNuevoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfiguracion: TFConfiguracion;

const
  abmConfiguracion='CONFIGURACION';

implementation

uses UDM, UUtilidades;

{$R *.dfm}


procedure TFConfiguracion.cargarTexto(clave: string; busqueda: string; var variable: TEdit);
begin
  busqueda:= UpperCase(busqueda);
  if ZQ_General.Locate(clave, VarArrayOf([busqueda]), [loCaseInsensitive]) then
    variable.Text:= ZQ_General.fieldbyname('texto').AsString;
end;


procedure TFConfiguracion.guardarTexto(clave: string; busqueda: string; valor: string);
begin
  busqueda:= UpperCase(busqueda);
  if ZQ_General.Locate(clave, VarArrayOf([busqueda]), [loCaseInsensitive]) then
  begin
    ZQ_General.Edit;
    ZQ_General.FieldByName('texto').AsString:= valor;
  end;
end;


procedure TFConfiguracion.cargarDatosGeneral();
var
  auxString: string;
begin
//  cargarTexto('clave', 'municipio', municipio);
//  cargarTexto('clave', 'direccion', direccion);
//  cargarTexto('clave', 'codigo_postal', codigo_postal);
//  cargarTexto('clave', 'ciudad', ciudad);
//  cargarTexto('clave', 'cuit', cuit);
//  cargarTexto('clave', 'telefono', telefono);
//
//  cargarTexto('clave', '3erRengEncBoleta', e3erRengEncBoleta);
//  cargarTexto('clave', '1erCargo', e1erFirma);
//  auxString:= e1erFirma.Text;
//  e1erFirma.Text:= AnsiMidStr(auxString, 1, pos(#13, auxString)-1);
//  e1erCargo.Text:= AnsiMidStr(auxString, pos(#13, auxString)+1, length(auxString));
//
//  cargarTexto('clave', '2doCargo', e2doFirma);
//  auxString:= e2doFirma.Text;
//  e2doFirma.Text:= AnsiMidStr(auxString, 1, pos(#13, auxString)-1);
//  e2doCargo.Text:= AnsiMidStr(auxString, pos(#13, auxString)+1, length(auxString));
//
//  cargarTexto('clave', '3erCargo', e3erFirma);
//  auxString:= e3erFirma.Text;
//  e3erFirma.Text:= AnsiMidStr(auxString, 1, pos(#13, auxString)-1);
//  e3erCargo.Text:= AnsiMidStr(auxString, pos(#13, auxString)+1, length(auxString));
end;


procedure TFConfiguracion.guardarDatosGeneral();
begin
//  guardarTexto('clave', 'municipio', municipio.Text);
//  guardarTexto('clave', 'direccion', direccion.Text);
//  guardarTexto('clave', 'codigo_postal', codigo_postal.Text);
//  guardarTexto('clave', 'ciudad', ciudad.Text);
//  guardarTexto('clave', 'cuit', cuit.Text);
//  guardarTexto('clave', 'telefono', telefono.Text);
//
//  guardarTexto('clave', '3erRengEncBoleta', e3erRengEncBoleta.Text);
//  guardarTexto('clave', '1erCargo', (e1erFirma.Text+#13+e1erCargo.Text));
//  guardarTexto('clave', '2doCargo', (e2doFirma.Text+#13+e2doCargo.Text));
//  guardarTexto('clave', '3erCargo', (e3erFirma.Text+#13+e3erCargo.Text));
end;


procedure TFConfiguracion.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFConfiguracion.habilitarCarga(flag: boolean);
begin
  PGeneral.Enabled:= flag;

  GrupoVisualizacion.Enabled:= not flag;
  GrupoEdicion.Enabled:= flag;
end;


procedure TFConfiguracion.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if dm.EKModelo.verificar_transaccion(abmConfiguracion) then
  begin
    if not (application.MessageBox(pchar('La Transacción esta activa, hay cambios sin guardar. Los Cancela ?'),'Pregunta', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = IDYES) then
      canClose := False
    else
      dm.EKModelo.cancelar_transaccion(abmConfiguracion);
  end;
end;


procedure TFConfiguracion.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla1.CargarConfigColumnas;
  PageControl1.ActivePageIndex:= 0;

  ZQ_General.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
  dm.EKModelo.abrir(ZQ_General);

  ZQ_Logo.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
  dm.EKModelo.abrir(ZQ_Logo);

  dm.EKModelo.abrir(ZQ_Variables);

  habilitarCarga(false);
end;


procedure TFConfiguracion.DBLogoClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(abmConfiguracion) then
    if BuscarLogo.Execute then
    begin
      DBLogo.Picture.LoadFromFile(BuscarLogo.FileName);
    end
end;


procedure TFConfiguracion.BtGuardarClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(abmConfiguracion) then
  begin
    dm.EKModelo.finalizar_transaccion(abmConfiguracion);
    dm.configVariables;
    dm.cargarReporteSucursal(SUCURSAL_LOGUEO);
    
    habilitarCarga(false);
  end;
end;


procedure TFConfiguracion.BtCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(abmConfiguracion) then
  begin
    dm.EKModelo.cancelar_transaccion(abmConfiguracion);

    habilitarCarga(false);
  end;
end;


procedure TFConfiguracion.BtModificarClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(abmConfiguracion,[ZQ_General, ZQ_Variables, ZQ_Logo]) then
  begin
    habilitarCarga(true);

    ZQ_General.edit;
    ZQ_Logo.edit;
    ZQ_Variables.edit;
  end;
end;


procedure TFConfiguracion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
end;


procedure TFConfiguracion.ZQ_VariablesAfterScroll(DataSet: TDataSet);
var
  color: TColor;
begin
  if not ZQ_VariablesTEXTO.IsNull then
  begin
    try
      color:= StringToColor(ZQ_VariablesTEXTO.AsString)
    except
      begin
         panelColor.color:= clBtnFace;
         Exit;
      end;
    end;
    panelColor.color:= color;
  end
end;


procedure TFConfiguracion.panelColorClick(Sender: TObject);
begin
  if dm.EKModelo.verificar_transaccion(abmConfiguracion) then
    if ColorDialog.Execute then
    begin
      panelColor.Color:= ColorDialog.Color;
      ZQ_Variables.Edit;
      ZQ_VariablesTEXTO.AsString:= ColorToString(panelColor.Color);
    end
end;

procedure TFConfiguracion.btNuevoClick(Sender: TObject);
begin
  ZQ_Variables.Append;
  DBEdit1.SetFocus;
end;

end.

