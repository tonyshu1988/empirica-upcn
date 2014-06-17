unit UImportarAfiliado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  ZStoredProcedure, ActnList, XPStyleActnCtrls, ActnMan, EKBusquedaAvanzada,
  QRCtrls, QuickRpt, EKVistaPreviaQR, EKOrdenarGrilla, cxClasses,
  UFlexCelGrid, UFlexCelImport, UExcelAdapter, XLSAdapter, DBClient,
  ComCtrls;

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
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    btnActualizar: TdxBarLargeButton;
    XLSAdapter: TXLSAdapter;
    XLSImport: TFlexCelImport;
    FlexCelGrid: TFlexCelGrid;
    abrirXLS: TOpenDialog;
    CD_Afiliados: TClientDataSet;
    CD_Afiliadosnro_afiliado: TStringField;
    CD_Afiliadosapellido_nombre: TStringField;
    CD_Afiliadostipo_documento: TStringField;
    CD_Afiliadosnro_documento: TStringField;
    CD_Afiliadossexo: TStringField;
    CD_Afiliadosdireccion: TStringField;
    CD_Afiliadostelefono: TStringField;
    CD_Afiliadoslocalidad: TStringField;
    CD_Afiliadoscodigo_postal: TStringField;
    CD_Afiliadosplan_os: TStringField;
    DS_Afiliados: TDataSource;
    DBGridArchivo: TDBGrid;
    ProgressBar: TProgressBar;
    DBGridBD: TDBGrid;
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
    procedure DBGridBDDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

uses UDM, UPrincipal, UUtilidades;

{$R *.dfm}

procedure TFImportarAfiliado.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
  EKOrdenarGrilla1.GuardarConfigColumnas;
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

  CD_Afiliados.CreateDataSet;
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
      CD_Afiliados.EmptyDataSet;
      archivo:= abrirXLS.FileName;
      nombreArch:= ExtractFileName(archivo);
      XLSImport.OpenFile(archivo);
      lblCantidadRegistros.Caption:= 'Cantidad Afiliados: '+IntToStr(XLSImport.MaxRow);
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
  DBGridBD.Enabled:= false;
  ProgressBar.Visible:= true;
  ProgressBar.Max := XLSImport.MaxRow - 1;
  ProgressBar.Position := 0;
  CD_Afiliados.DisableControls;

  for i:= 1 to XLSImport.MaxRow do
  begin
    CD_Afiliados.Append;
    for j:= 1 to XLSImport.MaxCol do
    begin
      CD_Afiliados.Fields[j - 1].Value:= XLSImport.Cell[i, j].Value;
    end;
    CD_Afiliados.Post;
    ProgressBar.Position:= i;
    Application.ProcessMessages;
  end;

  ProgressBar.Visible:= false;
  CD_Afiliados.EnableControls;
  CD_Afiliados.First;
  DBGridBD.Enabled:= true;
end;


procedure TFImportarAfiliado.DBGridArchivoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridArchivo, Rect, DataCol, Column, State);
end;


procedure TFImportarAfiliado.DBGridBDDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridBD, Rect, DataCol, Column, State);
end;

end.

