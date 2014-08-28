unit UImportarAfiliado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  ZStoredProcedure, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  QRCtrls, QuickRpt, EKVistaPreviaQR, EKOrdenarGrilla, cxClasses,
  UFlexCelGrid, UFlexCelImport, UExcelAdapter, XLSAdapter, DBClient,
  ComCtrls, ZSqlProcessor, ISOrdenarGrilla, ZSqlMonitor, ZIBEventAlerter;

type
  TFImportarAfiliado = class(TForm)
    PanelFondo: TPanel;
    PanelGrilla: TPanel;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    AActualizar: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    EKVistaPrevia: TEKVistaPreviaQR;
    RepColor: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepColor_Subtitulo: TQRLabel;
    RepColor_Titulo: TQRLabel;
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
    btnActualizar: TdxBarLargeButton;
    XLSAdapter: TXLSAdapter;
    XLSImport: TFlexCelImport;
    FlexCelGrid: TFlexCelGrid;
    abrirXLS: TOpenDialog;
    DS_Afiliados: TDataSource;
    DBGridArchivo: TDBGrid;
    ZQ_Afiliados: TZQuery;
    ZQ_AfiliadosNRO_AFILIADO: TStringField;
    ZQ_AfiliadosAPELLIDO_NOMBRE: TStringField;
    ZQ_AfiliadosTIPO_DOC: TStringField;
    ZQ_AfiliadosNRO_DOC: TStringField;
    ZQ_AfiliadosSEXO: TStringField;
    ZQ_AfiliadosDIRECCION: TStringField;
    ZQ_AfiliadosTELEFONO: TStringField;
    ZQ_AfiliadosLOCALIDAD: TStringField;
    ZQ_AfiliadosCP: TStringField;
    ZQ_AfiliadosPLAN_OS: TStringField;
    ZSQL_Delete: TZSQLProcessor;
    ZP_Actualizar: TZStoredProc;
    ISOrdenarGrilla: TISOrdenarGrilla;
    ZP_ActualizarAFILIADOS_IMPORTADOS: TIntegerField;
    ZP_ActualizarAFILIADOS_ACTUALIZADOS: TIntegerField;
    Panel1: TPanel;
    ProgressBar: TProgressBar;
    CheckBoxActualizar: TCheckBox;
    DataSource1: TDataSource;
    Edit1: TEdit;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridColorDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    //------TECLAS RAPIDAS
    procedure AActualizarExecute(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure cargarDataSet();
    procedure DBGridArchivoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnActualizarClick(Sender: TObject);
  private
    idPersona: Integer;
    extArch, nombrelargo: string;
    pathArch: string;
    nombreArch: string;
    archivo: TFileName;
    pathynombre: string;
  public
  end;

var
  FImportarAfiliado: TFImportarAfiliado;

const
  transaccion_ABM = 'ABM COLOR';
implementation

uses UDM, UPrincipal, UUtilidades, _Busy, _Busy2;

{$R *.dfm}

procedure TFImportarAfiliado.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
  ISOrdenarGrilla.GuardarConfigColumnas;
end;


procedure TFImportarAfiliado.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFImportarAfiliado.FormCreate(Sender: TObject);
begin
//  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
//  EKOrdenarGrilla1.CargarConfigColumnas;
//
//  EKBuscar.Abrir;
//  dm.mostrarCantidadRegistro(ZQ_Colores, lblCantidadRegistros);

//  CD_Afiliados.CreateDataSet;
//  ZQ_Personas.Open;
end;


procedure TFImportarAfiliado.DBGridColorDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFImportarAfiliado.AActualizarExecute(Sender: TObject);
begin
  if btnActualizar.Enabled then
    btnActualizar.Click;
end;

procedure TFImportarAfiliado.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFImportarAfiliado.btnImprimirClick(Sender: TObject);
begin
//  if ZQ_Colores.IsEmpty then
//    exit;
//
//  DM.VariablesReportes(RepColor);
//  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
//  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
//  EKVistaPrevia.VistaPrevia;
end;

procedure TFImportarAfiliado.btnBuscarClick(Sender: TObject);
var
  cant: Integer;
begin
  try
    if abrirXLS.Execute then
    begin
      archivo:= abrirXLS.FileName;
      nombreArch:= ExtractFileName(archivo);
      XLSImport.OpenFile(archivo);
      lblCantidadRegistros.Caption:= 'Cantidad Afiliados: ' + IntToStr(XLSImport.MaxRow);
      DBGridArchivo.Color:= $00DEDEBC;
      cargarDataSet;
    end;
  except
    ShowMessage('Se produjo un error al abrir el archivo ' + nombreArch);
  end;
end;


procedure TFImportarAfiliado.cargarDataSet;
var
  i, j: integer;
begin
  if dm.EKModelo.iniciar_transaccion('IMPORTAR', [ZQ_Afiliados]) then
  begin
    ZSQL_Delete.Execute;
    ZQ_Afiliados.Open;

    DBGridArchivo.Enabled:= false;
    ProgressBar.Visible:= true;
    ProgressBar.Max:= XLSImport.MaxRow +500;
    ProgressBar.Position:= 0;
    ZQ_Afiliados.DisableControls;

    for i:= 1 to XLSImport.MaxRow do
    begin
      ZQ_Afiliados.Append;
      for j:= 1 to XLSImport.MaxCol do
      begin
        ZQ_Afiliados.Fields[j - 1].Value:= XLSImport.Cell[i, j].Value;
      end;

      if (i mod 100) = 0 then
      begin
        ProgressBar.Position:= i;
        Application.ProcessMessages;
      end;
    end;

    dm.EKModelo.finalizar_transaccion('IMPORTAR');
    ProgressBar.Position:= ProgressBar.Max;
    Application.ProcessMessages;
    ProgressBar.Visible:= false;
    ZQ_Afiliados.First;
    ZQ_Afiliados.EnableControls;
    DBGridArchivo.Enabled:= true;
  end;
end;


procedure TFImportarAfiliado.DBGridArchivoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridArchivo, Rect, DataCol, Column, State);
end;


procedure TFImportarAfiliado.btnActualizarClick(Sender: TObject);
var
  actualizar: string;
begin
  BusyStatus('Iniciando..');
  Sleep(StrToInt(Edit1.Text));

//  BusyBegin('Iniciando..');
//  Sleep(StrToInt(Edit1.Text));
//  BusyEnd();


//  if ZQ_Afiliados.IsEmpty then
//    exit;
//
//  if Application.MessageBox('Esta seguro que desea Actualizar la Base de Datos de Afiliados?','Actualizar Base Datos', MB_YESNO+MB_ICONINFORMATION) = IDNO then
//    exit;
//
//  if dm.EKModelo.iniciar_transaccion('IMPORTAR', []) then
//  begin
//    actualizar:= 'N';
//    if CheckBoxActualizar.Checked then
//      actualizar:= 'S';
//
//    ZP_Actualizar.Close;
//    ZP_Actualizar.ParamByName('ACTUALIZAR_AFILIADO').AsString:= actualizar;
//    ZP_Actualizar.Open;
//
//    if CheckBoxActualizar.Checked then
//      ShowMessage('Se Incorporaron '+ZP_ActualizarAFILIADOS_IMPORTADOS.AsString+' Afiliados y se Actualizaron '+ZP_ActualizarAFILIADOS_ACTUALIZADOS.AsString+'.')
//    else
//      ShowMessage('Se Incorporaron '+ZP_ActualizarAFILIADOS_IMPORTADOS.AsString+' Afiliados.');
//
//    dm.EKModelo.finalizar_transaccion('IMPORTAR');
//    DBGridArchivo.Color:= $00BAF5F4;
//  end;
end;


end.

