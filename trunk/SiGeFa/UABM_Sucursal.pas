unit UABM_Sucursal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls,
  EKOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan, ExtDlgs, jpeg,
  EKBusquedaAvanzada, QRCtrls, QuickRpt, EKVistaPreviaQR, ComCtrls;

type
  TFABM_Sucursal = class(TForm)
    PContenedor: TPanel;
    DBGridSucursal: TDBGrid;
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
    ZQ_Sucursal: TZQuery;
    ZQ_SucursalID_SUCURSAL: TIntegerField;
    ZQ_SucursalNOMBRE: TStringField;
    ZQ_SucursalDIRECCION: TStringField;
    ZQ_SucursalLOCALIDAD: TStringField;
    ZQ_SucursalCODIGO_POSTAL: TStringField;
    ZQ_SucursalTELEFONO: TStringField;
    ZQ_SucursalEMAIL: TStringField;
    ZQ_SucursalBAJA: TStringField;
    DS_Sucursal: TDataSource;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    PBusqueda: TPanel;
    lblCantidadRegistros: TLabel;
    StaticTxtBaja: TStaticText;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    AModificar: TAction;
    AEliminar: TAction;
    ABaja: TAction;
    AReactivar: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    buscarImagen: TOpenPictureDialog;
    ZQ_SucursalLOGO: TBlobField;
    EKBuscar: TEKBusquedaAvanzada;
    ZQ_SucursalREPORTE_TITULO: TStringField;
    ZQ_SucursalREPORTE_SUBTITULO: TStringField;
    EKVistaPrevia: TEKVistaPreviaQR;
    RepSucursal: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepSucursal_Subtitulo: TQRLabel;
    RepSucursal_Titulo: TQRLabel;
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
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    PageControl1: TPageControl;
    TabSheetDatosGral: TTabSheet;
    TabSheetDatosReportes: TTabSheet;
    PanelEdicion: TPanel;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEApellidoNombre: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    edImagen: TDBImage;
    ZQ_SucursalCOMPROBANTE_TITULO: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON1: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON2: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON3: TStringField;
    ZQ_SucursalCOMPROBANTE_RENGLON4: TStringField;
    procedure btnNuevoClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGridSucursalDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnBajaClick(Sender: TObject);
    procedure btnReactivarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CargaImagenProporcionado(Archivo: string);
    //------TECLAS RAPIDAS
    procedure ANuevoExecute(Sender: TObject);
    procedure AModificarExecute(Sender: TObject);
    procedure ABajaExecute(Sender: TObject);
    procedure AReactivarExecute(Sender: TObject);
    procedure AGuardarExecute(Sender: TObject);
    procedure ACancelarExecute(Sender: TObject);
    procedure edImagenDblClick(Sender: TObject);
    procedure ABuscarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_Sucursal: TFABM_Sucursal;

const
  Transaccion_ABMSucursal = 'ABM Sucursal';

implementation

uses  UDM, UPrincipal;

{$R *.dfm}

procedure TFABM_Sucursal.btnBuscarClick(Sender: TObject);
begin
  EKBuscar.Buscar;
  dm.mostrarCantidadRegistro(ZQ_Sucursal, lblCantidadRegistros);
end;


procedure TFABM_Sucursal.btnNuevoClick(Sender: TObject);
begin
  if dm.EKModelo.iniciar_transaccion(Transaccion_ABMSucursal, [ZQ_Sucursal]) then
  begin
    DBGridSucursal.Enabled := false;
    PageControl1.Visible:= true;
    PageControl1.ActivePageIndex:= 0;    

    ZQ_Sucursal.Append;
    ZQ_SucursalBAJA.AsString:= 'N';
    ZQ_SucursalREPORTE_TITULO.AsString:= 'SIGEFA';
    ZQ_SucursalREPORTE_SUBTITULO.AsString:= '';
    DBEApellidoNombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_Sucursal.btnModificarClick(Sender: TObject);
begin
  if ZQ_Sucursal.IsEmpty then
    exit;

  if dm.EKModelo.iniciar_transaccion(Transaccion_ABMSucursal, [ZQ_Sucursal]) then
  begin
    DBGridSucursal.Enabled := false;
    PageControl1.Visible:= true;
    PageControl1.ActivePageIndex:= 0;

    ZQ_Sucursal.Edit;
    DBEApellidoNombre.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
  end;
end;


procedure TFABM_Sucursal.btnGuardarClick(Sender: TObject);
begin
 if (trim(DBEApellidoNombre.Text) = '') then
  begin
    Application.MessageBox('El campo "Nombre" se encuentra vacío, por favor Verifique','Validación',MB_OK+MB_ICONINFORMATION);
    PageControl1.ActivePageIndex:= 0;
    DBEApellidoNombre.SetFocus;
    exit;
  end;

  if DM.EKModelo.finalizar_transaccion(Transaccion_ABMSucursal) then
  begin
    DBGridSucursal.Enabled:=true;
    GrupoEditando.Enabled:=true;
    GrupoGuardarCancelar.Enabled:=false;
    DBGridSucursal.SetFocus;
    PageControl1.Visible := false;
  end;

  dm.mostrarCantidadRegistro(ZQ_Sucursal, lblCantidadRegistros);
  dm.ZQ_Sucursal.Refresh;  
end;


procedure TFABM_Sucursal.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(Transaccion_ABMSucursal) then
  begin
    DBGridSucursal.Enabled:=true;
    DBGridSucursal.SetFocus;
    GrupoEditando.Enabled:=true;
    GrupoGuardarCancelar.Enabled:=false;
    PageControl1.Visible := false;
  end;
end;


procedure TFABM_Sucursal.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFABM_Sucursal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  EKOrdenarGrilla1.GuardarConfigColumnas;
  CanClose:= FPrincipal.cerrar_ventana(Transaccion_ABMSucursal);
end;


procedure TFABM_Sucursal.DBGridSucursalDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if ZQ_Sucursal.IsEmpty then
    exit;

  FPrincipal.PintarFilasGrillasConBajas(DBGridSucursal, ZQ_SucursalBAJA.AsString, Rect, DataCol, Column, State);
end;


procedure TFABM_Sucursal.btnBajaClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Sucursal.IsEmpty) OR (ZQ_SucursalBAJA.AsString <> 'N') OR (ZQ_SucursalID_SUCURSAL.AsInteger = 0)then
    exit;

  if (application.MessageBox(pchar('¿Desea dar de baja la "Sucursal" seleccionada?'), 'ABM Sucursal', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(Transaccion_ABMSucursal, [ZQ_Sucursal]) then
    begin
      ZQ_Sucursal.Edit;
      ZQ_SucursalBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(Transaccion_ABMSucursal)) then
      dm.EKModelo.cancelar_transaccion(Transaccion_ABMSucursal);

    recNo:= ZQ_Sucursal.RecNo;
    ZQ_Sucursal.Refresh;
    ZQ_Sucursal.RecNo:= recNo;
  end;
end;


procedure TFABM_Sucursal.btnReactivarClick(Sender: TObject);
var
  recNo: integer;
begin
  if (ZQ_Sucursal.IsEmpty) OR (ZQ_SucursalBAJA.AsString <> 'S') OR (ZQ_SucursalID_SUCURSAL.AsInteger = 0) then
    exit;

  if (application.MessageBox(pchar('¿Desea reactivar la "Sucursal" seleccionada?'), 'ABM Sucursal', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES) then
  begin
    if dm.EKModelo.iniciar_transaccion(Transaccion_ABMSucursal, [ZQ_Sucursal]) then
    begin
      ZQ_Sucursal.Edit;
      ZQ_SucursalBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.EKModelo.finalizar_transaccion(Transaccion_ABMSucursal)) then
      dm.EKModelo.cancelar_transaccion(Transaccion_ABMSucursal);

    recNo:= ZQ_Sucursal.RecNo;
    ZQ_Sucursal.Refresh;
    ZQ_Sucursal.RecNo:= recNo;
  end;
end;


procedure TFABM_Sucursal.FormCreate(Sender: TObject);
begin
  EKOrdenarGrilla1.CargarConfigColumnas;

  StaticTxtBaja.Color:= FPrincipal.baja;

  EKBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_Sucursal, lblCantidadRegistros);
end;


//----------------------------------
//  INICIO TECLAS RAPIDAS
//----------------------------------
procedure TFABM_Sucursal.ABuscarExecute(Sender: TObject);
begin
  if btnBuscar.Enabled then
    btnBuscar.Click;
end;

procedure TFABM_Sucursal.ANuevoExecute(Sender: TObject);
begin
  if btnNuevo.Enabled then
    btnNuevo.Click;
end;

procedure TFABM_Sucursal.AModificarExecute(Sender: TObject);
begin
  if btnModificar.Enabled then
    btnModificar.Click;
end;

procedure TFABM_Sucursal.ABajaExecute(Sender: TObject);
begin
  if btnBaja.Enabled then
    btnBaja.Click;
end;

procedure TFABM_Sucursal.AReactivarExecute(Sender: TObject);
begin
  if btnReactivar.Enabled then
    btnReactivar.Click;
end;

procedure TFABM_Sucursal.AGuardarExecute(Sender: TObject);
begin
  if btnGuardar.Enabled then
    btnGuardar.Click;
end;

procedure TFABM_Sucursal.ACancelarExecute(Sender: TObject);
begin
  if btnCancelar.Enabled then
    btnCancelar.Click;
end;
//----------------------------------
//  FIN TECLAS RAPIDAS
//----------------------------------

procedure TFABM_Sucursal.edImagenDblClick(Sender: TObject);
var
  jpg: TJpegImage;
begin
  try
   if dm.EKModelo.verificar_transaccion(Transaccion_ABMSucursal) then
    //si esta activa la transaccion
    if buscarImagen.Execute then //abro para buscar la imagen
     begin
      CargaImagenProporcionado(buscarImagen.FileName);
     end
  except
    showmessage('Formato de Imagen no soportado (debe bajar la resolución).');
  end;
end;


procedure TFABM_Sucursal.CargaImagenProporcionado(Archivo: string);
var
  imagen: TGraphic; //contiene la imagen, es del tipo TGraphic poque puede ser jpg o bmp
  auxBmp: TBitmap;
  Rectangulo: TRect;
  EscalaX,
  EscalaY,
  Escala: Single;
begin
  auxBMP:= TBitMap.Create;

  //creo el tipo correcto dependiendo de la extencion del archivo
  if pos('.jpg', archivo) > 0 then
    imagen:= TJPEGImage.Create
  else
    if pos('.jpeg', archivo) > 0 then
      imagen:= TJPEGImage.Create
    else
      if pos('.bmp', archivo) > 0 then
        imagen:= TBitmap.Create;

  try
    //cargo la imagen
    imagen.LoadFromFile(Archivo);

//    //comprimo la imagen
//    auxBMP.Assign(imagen);
//    TJPEGImage (imagen).CompressionQuality:= 50;
//    TJPEGImage (imagen).Compress;

    //Por defecto, escala 1:1
    EscalaX := 1.0;
    EscalaY := 1.0;

    //Hallamos la escala de reducción Horizontal
    if edImagen.Width < imagen.Width then
      EscalaX := edImagen.Width / imagen.Width;

    //La escala vertical
    if edImagen.Height < imagen.Height then
      EscalaY := edImagen.Height / imagen.Height;

    //Escogemos la menor de las 2
    if EscalaY < EscalaX then Escala := EscalaY else Escala := EscalaX;

    //Y la usamos para reducir el rectangulo destino
    with Rectangulo do begin
      Right := Trunc(imagen.Width * Escala);
      Bottom := Trunc(imagen.Height * Escala);
      Left := 0;
      Top := 0;
    end;

    //Dibujamos el bitmap con el nuevo tamaño en el TImage destino
    with edImagen.Picture.Bitmap do begin
      Width := Rectangulo.Right;
      Height := Rectangulo.Bottom;
      Canvas.StretchDraw(Rectangulo, imagen);
    end;

  finally
    imagen.Free;
    auxBmp.Free;
  end;
end;



procedure TFABM_Sucursal.btnImprimirClick(Sender: TObject);
begin
  if ZQ_Sucursal.IsEmpty then
    exit;

  DM.VariablesReportes(RepSucursal);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.EKModelo.Fecha);
  QRLabelCritBusqueda.Caption := EKBuscar.ParametrosBuscados;
  EKVistaPrevia.VistaPrevia;
end;

end.
