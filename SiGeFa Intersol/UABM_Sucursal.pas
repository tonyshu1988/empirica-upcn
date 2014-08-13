unit UABM_Sucursal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxBar,
  dxBarExtItems, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, UBuscarPersona,
  ActnList, XPStyleActnCtrls, ActnMan, ExtDlgs, jpeg,
  QRCtrls, QuickRpt, ComCtrls, Menus,
  cxClasses, ISVistaPreviaQR, ISOrdenarGrilla, ISBusquedaAvanzada;

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
    ZQ_SucursalREPORTE_TITULO: TStringField;
    ZQ_SucursalREPORTE_SUBTITULO: TStringField;
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
    TabSheetVendedores: TTabSheet;
    ZQ_PersonaRelacionVendedor: TZQuery;
    ZQ_PersonaRelacionVendedorID_PERSONA_RELACION: TIntegerField;
    ZQ_PersonaRelacionVendedorID_PERSONA: TIntegerField;
    ZQ_PersonaRelacionVendedorID_RELACION: TIntegerField;
    ZQ_PersonaRelacionVendedorID_EMPRESA: TIntegerField;
    ZQ_PersonaRelacionVendedorID_SUCURSAL: TIntegerField;
    ZQ_PersonaRelacionVendedornombre: TStringField;
    ZQ_PersonaRelacionVendedordireccion: TStringField;
    ZQ_PersonaRelacionVendedortelefono: TStringField;
    ZQ_PersonaRelacionVendedoremail: TStringField;
    ZQ_PersonaRelacionVendedordescripcion: TStringField;
    ZQ_PersonaRelacionVendedorlocalidad: TStringField;
    ZQ_PersonaRelacionVendedorcod_postal: TStringField;
    DS_PersonaRelacionVendedor: TDataSource;
    ZQ_Personas: TZQuery;
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
    PopupMenuVendedor: TPopupMenu;
    AgregarContacto1: TMenuItem;
    QuitarContacto1: TMenuItem;
    DBMemoVendedor: TDBMemo;
    DBGridVendedor: TDBGrid;
    Label15: TLabel;
    btnExcel: TdxBarLargeButton;
    ISVistaPrevia: TISVistaPreviaQR;
    ISOrdenarSucursal: TISOrdenarGrilla;
    ISOrdenarEmpleado: TISOrdenarGrilla;
    ISBuscar: TISBusquedaAvanzada;
    ZQ_PersonasDESCUENTO_ESPECIAL: TFloatField;
    ZQ_PersonasCODIGO_CORTO: TStringField;
    ZQ_PersonasCODIGO_BARRA: TStringField;
    ZQ_PersonasCLAVE: TStringField;
    ZQ_PersonasIMPORTADO: TStringField;
    ZQ_PersonasNRO_AFILIADO: TStringField;
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
    procedure AgregarContacto1Click(Sender: TObject);
    procedure QuitarContacto1Click(Sender: TObject);
    procedure ZQ_SucursalAfterScroll(DataSet: TDataSet);
    procedure btnVerDetalleClick(Sender: TObject);
    procedure DBGridVendedorDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure btnExcelClick(Sender: TObject);
  private
    vsel : TFBuscarPersona;
    procedure OnSelVendedor;
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
  if ISBuscar.Buscar then
    dm.mostrarCantidadRegistro(ZQ_Sucursal, lblCantidadRegistros);
end;


procedure TFABM_Sucursal.btnNuevoClick(Sender: TObject);
begin
  if dm.ISModelo.iniciar_transaccion(Transaccion_ABMSucursal, [ZQ_Sucursal, ZQ_PersonaRelacionVendedor]) then
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

  if dm.ISModelo.iniciar_transaccion(Transaccion_ABMSucursal, [ZQ_Sucursal, ZQ_PersonaRelacionVendedor]) then
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

  if DM.ISModelo.finalizar_transaccion(Transaccion_ABMSucursal) then
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
  if (application.MessageBox(pchar('¿Seguro que desea cancelar? Se perderan los cambios realizados.'), 'ATENCION - ABM Sucursal', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDNO) then
    exit;

  if (ZQ_Sucursal.State = dsinsert) then
  begin
     if not ZQ_PersonaRelacionVendedor.IsEmpty then
       ZQ_PersonaRelacionVendedor.CancelUpdates;
  end;

  if dm.ISModelo.cancelar_transaccion(Transaccion_ABMSucursal) then
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
  ISOrdenarSucursal.GuardarConfigColumnas;
  ISOrdenarEmpleado.GuardarConfigColumnas;

  CanClose:= FPrincipal.cerrar_ventana(Transaccion_ABMSucursal);
end;


procedure TFABM_Sucursal.DBGridSucursalDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
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
    if dm.ISModelo.iniciar_transaccion(Transaccion_ABMSucursal, [ZQ_Sucursal]) then
    begin
      ZQ_Sucursal.Edit;
      ZQ_SucursalBAJA.AsString:='S';
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(Transaccion_ABMSucursal)) then
      dm.ISModelo.cancelar_transaccion(Transaccion_ABMSucursal);

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
    if dm.ISModelo.iniciar_transaccion(Transaccion_ABMSucursal, [ZQ_Sucursal]) then
    begin
      ZQ_Sucursal.Edit;
      ZQ_SucursalBAJA.AsString:='N';
    end
    else
      exit;

    if not (dm.ISModelo.finalizar_transaccion(Transaccion_ABMSucursal)) then
      dm.ISModelo.cancelar_transaccion(Transaccion_ABMSucursal);

    recNo:= ZQ_Sucursal.RecNo;
    ZQ_Sucursal.Refresh;
    ZQ_Sucursal.RecNo:= recNo;
  end;
end;


procedure TFABM_Sucursal.FormCreate(Sender: TObject);
begin
  QRDBLogo.DataSet:= DM.ZQ_Sucursal;

  ISOrdenarSucursal.CargarConfigColunmas;
  ISOrdenarEmpleado.CargarConfigColunmas;

  StaticTxtBaja.Color:= FPrincipal.baja;

  dm.ISModelo.abrir(ZQ_Personas);

  ISBuscar.Abrir;
  dm.mostrarCantidadRegistro(ZQ_Sucursal, lblCantidadRegistros);
  PageControl1.ActivePageIndex:= 0;
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
   if dm.ISModelo.verificar_transaccion(Transaccion_ABMSucursal) then
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
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
  QRLabelCritBusqueda.Caption := ISBuscar.ParametrosBuscados;
  ISVistaPrevia.VistaPrevia;
end;

procedure TFABM_Sucursal.AgregarContacto1Click(Sender: TObject);
begin
  if ZQ_SucursalID_SUCURSAL.AsInteger = 0 then
  begin
    Application.MessageBox(PChar('Debe seleccionar una sucursal a la cual asignarle un Vendedor'),'Atención',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  if not Assigned(vsel) then
    vsel := TFBuscarPersona.Create(nil);
  vsel.btnBuscar.Click;
  vsel.OnSeleccionar := OnSelVendedor;
  vsel.ShowModal;
end;


procedure TFABM_Sucursal.OnSelVendedor;
begin
  if vsel.ZQ_Personas.IsEmpty then
    exit;

  ZQ_PersonaRelacionVendedor.Filter:= 'id_persona = '+vsel.ZQ_PersonasID_PERSONA.AsString;
  ZQ_PersonaRelacionVendedor.Filtered := true;

  if not ZQ_PersonaRelacionVendedor.IsEmpty then
  begin
    ZQ_PersonaRelacionVendedor.Filtered := false;
    Application.MessageBox('La Persona seleccionada ya figura como Empleado de la Empresa','Carga Empleado',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  ZQ_PersonaRelacionVendedor.Append;
  ZQ_PersonaRelacionVendedorID_PERSONA.AsInteger := vsel.ZQ_PersonasID_PERSONA.AsInteger;
  ZQ_PersonaRelacionVendedorID_RELACION.AsInteger := RELACION_EMPLEADO;
  ZQ_PersonaRelacionVendedorID_SUCURSAL.AsInteger := ZQ_SucursalID_SUCURSAL.AsInteger;
  ZQ_PersonaRelacionVendedor.Post;
  
  vsel.Close;
  ZQ_Personas.Refresh;
end;


procedure TFABM_Sucursal.QuitarContacto1Click(Sender: TObject);
begin
  if ZQ_PersonaRelacionVendedor.IsEmpty then
    exit;

  ZQ_PersonaRelacionVendedor.Delete;
end;


procedure TFABM_Sucursal.ZQ_SucursalAfterScroll(DataSet: TDataSet);
begin
  ZQ_PersonaRelacionVendedor.Close;
  ZQ_PersonaRelacionVendedor.ParamByName('relacion').AsInteger := RELACION_EMPLEADO;
  ZQ_PersonaRelacionVendedor.ParamByName('id_sucursal').AsInteger := ZQ_SucursalID_SUCURSAL.AsInteger;
  ZQ_PersonaRelacionVendedor.Open;
end;


procedure TFABM_Sucursal.btnVerDetalleClick(Sender: TObject);
begin
  PageControl1.Visible:= not PageControl1.Visible;
end;

procedure TFABM_Sucursal.DBGridVendedorDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridVendedor, Rect, DataCol, Column, State);
end;

procedure TFABM_Sucursal.btnExcelClick(Sender: TObject);
begin
  if not ZQ_Sucursal.IsEmpty then
    dm.ExportarEXCEL(DBGridSucursal);
end;

end.
