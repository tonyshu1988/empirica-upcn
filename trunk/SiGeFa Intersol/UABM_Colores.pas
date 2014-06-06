unit UABM_Colores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  ZStoredProcedure, ActnList, XPStyleActnCtrls, ActnMan,
  QRCtrls, QuickRpt,  cxClasses,
  ISOrdenarGrilla, ISVistaPreviaQR, ISBusquedaAvanzada;

type
  TFABM_Colores = class(TForm)
    PanelFondo: TPanel;
    PanelGrilla: TPanel;
    DBGridColor: TDBGrid;
    PanelEdicion: TPanel;
    Label1: TLabel;
    DBENombre: TDBEdit;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
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
    Label2: TLabel;
    ZQ_Colores: TZQuery;
    DS_Colores: TDataSource;
    ColorBox1: TColorBox;
    Label3: TLabel;
    DBECodigo: TDBEdit;
    ZSP_ID_COLOR: TZStoredProc;
    ZSP_ID_COLORID: TIntegerField;
    ZQ_UltimoNro: TZQuery;
    ZQ_UltimoNroCODIGO_COLOR: TIntegerField;
    ZQ_ColoresID_COLOR: TIntegerField;
    ZQ_ColoresCODIGO_COLOR: TIntegerField;
    ZQ_ColoresNOMBRE: TStringField;
    ZQ_ColoresREFERENCIA: TStringField;
    ZQ_ColoresBAJA: TStringField;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
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
    btnExcel: TdxBarLargeButton;
    ISOrdenarGrilla1: TISOrdenarGrilla;
    ISVistaPrevia: TISVistaPreviaQR;
    ISBuscar: TISBusquedaAvanzada;
    btnEliminar: TdxBarLargeButton;
    procedure ZQ_ColoresAfterScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBajaClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridColorDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
    procedure AEliminarExecute(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
  private
  public
  end;

var
  FABM_Colores: TFABM_Colores;

const
  transaccion_ABM = 'ABM COLOR';
implementation

uses UDM, UPrincipal, UUtilidades;

{$R *.dfm}

procedure TFABM_Colores.ZQ_ColoresAfterScroll(DataSet: TDataSet);
begin
  if not(ZQ_ColoresREFERENCIA.IsNull) then
    ColorBox1.Selected:= StringToColor(ZQ_ColoresREFERENCIA.AsString);

  dm.mostrarCantidadRegistro(ZQ_Colores, lblCantidadRegistros);
end;


procedure TFABM_Colores.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
  ISOrdenarGrilla1.GuardarConfigColumnas;
end;


procedure TFABM_Colores.btnSalirClick(Sender: TObject);
begin
 Close;
end;


procedure TFABM_Colores.btnModificarClick(Sender: TObject);
begin
  if (ZQ_Colores.IsEmpty) or (ZQ_ColoresID_COLOR.AsInteger = 0) then
    exit;

  if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Colores]) then
  begin
    DBGridColor.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_Colores.Edit;
    if ZQ_ColoresCODIGO_COLOR.IsNull then
    begin
      ZQ_UltimoNro.Close;
      ZQ_UltimoNro.Open;
      if ZQ_UltimoNro.IsEmpty then
        ZQ_ColoresCODIGO_COLOR.AsInteger:= 1
      else
        ZQ_ColoresCODIGO_COLOR.AsInteger:= ZQ_UltimoNroCODIGO_COLOR.AsInteger + 1;
    end;

    DBECodigo.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_Colores.btnEliminarClick(Sender: TObject);
begin
  FPrincipal.eliminarRegistro(ZQ_Colores, transaccion_ABM)
end;


procedure TFABM_Colores.btnBajaClick(Sender: TObject);
begin
  FPrincipal.BajaReactivar(ZQ_Colores, 'BAJA', transaccion_ABM, 'S')
end;

procedure TFABM_Colores.btnReactivarClick(Sender: TObject);
begin
  FPrincipal.BajaReactivar(ZQ_Colores, 'BAJA', transaccion_ABM, 'N')
end;


procedure TFABM_Colores.btnGuardarClick(Sender: TObject);
var
  recNo: integer;
begin
  DBECodigo.SetFocus;

  if (trim(DBECodigo.Text) = '') then
  begin
    Application.MessageBox('El campo "Código" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBECodigo.SetFocus;
    exit;
  end;

  if (trim(DBENombre.Text) = '') then
  begin
    Application.MessageBox('El campo "Detalle" se encuentra vacío, por favor Verifique','Validar Datos',MB_OK+MB_ICONINFORMATION);
    DBENombre.SetFocus;
    exit;
  end;

  ZQ_ColoresREFERENCIA.AsString:= ColorToString(ColorBox1.Selected);

  try
    if DM.ISModelo.finalizar_transaccion(transaccion_ABM) then
    begin
      DBGridColor.Enabled:= true;
      DBGridColor.SetFocus;
      GrupoEditando.Enabled := true;
      GrupoGuardarCancelar.Enabled := false;
      PanelEdicion.Visible := false;
      recNo:= ZQ_Colores.RecNo;
      ZQ_Colores.Refresh;
      ZQ_Colores.RecNo:= recNo;
    end
  except
    begin
      Application.MessageBox('Verifique que los datos estén cargados correctamente.', 'Atención',MB_OK+MB_ICONINFORMATION);
      exit;
    end
  end;

  dm.mostrarCantidadRegistro(ZQ_Colores, lblCantidadRegistros);   
end;


procedure TFABM_Colores.btnCancelarClick(Sender: TObject);
begin
 if dm.ISModelo.cancelar_transaccion(transaccion_ABM) then
  begin
    DBGridColor.Enabled:=true;
    DBGridColor.SetFocus;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    PanelEdicion.Visible := false;
  end;
end;


procedure TFABM_Colores.btnBuscarClick(Sender: TObject);
begin
  if ISBuscar.Buscar then
    dm.mostrarCantidadRegistro(ZQ_Colores, lblCantidadRegistros);
end;


procedure TFABM_Colores.btnNuevoClick(Sender: TObject);
begin
  if dm.ISModelo.iniciar_transaccion(transaccion_ABM, [ZQ_Colores]) then
  begin
    DBGridColor.Enabled := false;
    PanelEdicion.Visible:= true;

    ZQ_UltimoNro.Close;
    ZQ_UltimoNro.Open;

    ZSP_ID_COLOR.Active:=false;
    ZSP_ID_COLOR.Active:=True;

    ZQ_Colores.Append;
    ZQ_ColoresID_COLOR.AsInteger:=ZSP_ID_COLORID.AsInteger;
    ZQ_ColoresBAJA.AsString:= 'N';
    if ZQ_UltimoNro.IsEmpty then
      ZQ_ColoresCODIGO_COLOR.AsInteger:= 1
    else
      ZQ_ColoresCODIGO_COLOR.AsInteger:= ZQ_UltimoNroCODIGO_COLOR.AsInteger + 1;

    DBENombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_Colores.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;
  ISOrdenarGrilla1.CargarConfigColunmas;

  ISBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_Colores, lblCantidadRegistros);  
end;


procedure TFABM_Colores.DBGridColorDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (column.FieldName = 'REFERENCIA') and not(ZQ_ColoresREFERENCIA.IsNull) then
    DBGridColor.Canvas.Brush.Color:= StringToColor(ZQ_ColoresREFERENCIA.AsString);

  FPrincipal.PintarFilasGrillasConBajas(DBGridColor, ZQ_ColoresBAJA.AsString, Rect, DataCol, Column, State);
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_Colores.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_Colores.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_Colores.AEliminarExecute(Sender: TObject);
begin
  if btnEliminar.Enabled then
    btnEliminar.Click;
end;

procedure TFABM_Colores.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_Colores.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_Colores.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_Colores.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;

procedure TFABM_Colores.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------


procedure TFABM_Colores.btnImprimirClick(Sender: TObject);
begin
  if ZQ_Colores.IsEmpty then
    exit;

  DM.VariablesReportes(RepColor);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
  QRLabelCritBusqueda.Caption := ISBuscar.ParametrosBuscados;
  ISVistaPrevia.VistaPrevia;
end;


procedure TFABM_Colores.btnExcelClick(Sender: TObject);
begin
  if not ZQ_Colores.IsEmpty then
    dm.ExportarEXCEL(DBGridColor);
end;




end.


