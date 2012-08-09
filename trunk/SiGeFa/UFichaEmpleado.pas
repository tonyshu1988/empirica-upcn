unit UFichaEmpleado;

//ZQ_VerificarIngresoEgreso:
// Para el Ingreso: abro la query y si tiene un registro es porque ya esta registrado y salgo;
// Para el Egreso: abro la query y si no tiene un registro es porque todavia no esta registrado y salgo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxBar, dxBarExtItems, ExtCtrls, Buttons, Grids,
  DBGrids, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls,
  EKOrdenarGrilla, QRCtrls, QuickRpt, EKVistaPreviaQR;

type
  TFFichaEmpleado = class(TForm)
    panelContenedor: TPanel;
    panelFicha: TPanel;
    panelHistoria: TPanel;
    dxBarABM: TdxBarManager;
    btnSalir: TdxBarLargeButton;
    btnVerSucursales: TdxBarLargeButton;
    GrupoVisualizacion: TdxBarGroup;
    gBoxFechaYHora: TGroupBox;
    lblFecha: TLabel;
    lblHora: TLabel;
    Timer1: TTimer;
    btnFicharIngreso: TBitBtn;
    btnFicharEgreso: TBitBtn;
    DBGridHistoria: TDBGrid;
    lblTituloHistorial: TLabel;
    ZQ_Historial: TZQuery;
    DS_Historial: TDataSource;
    ZQ_HistorialID_HISTORIAL_FICHA: TIntegerField;
    ZQ_HistorialID_SUCURSAL: TIntegerField;
    ZQ_HistorialEMPLEADO: TStringField;
    ZQ_HistorialFECHA_INGRESO: TDateTimeField;
    ZQ_HistorialFECHA_EGRESO: TDateTimeField;
    ZQ_HistorialDETALLE: TStringField;
    Panel1: TPanel;
    DBMemoDetalle: TDBMemo;
    Label1: TLabel;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    ZQ_VerificarIngresoEgreso: TZQuery;
    panelRegistrarIngresoEgreso: TPanel;
    lblTituloRegistrar: TLabel;
    Label2: TLabel;
    editRegistrarUsuario: TEdit;
    Label3: TLabel;
    editRegistrarContrasenia: TEdit;
    memoRegistrarDetalle: TMemo;
    Label4: TLabel;
    btnRegistrarAceptar: TBitBtn;
    btnRegistrarCancelar: TBitBtn;
    ZQ_VerificarIngresoEgresoID_HISTORIAL_FICHA: TIntegerField;
    ZQ_VerificarIngresoEgresoID_SUCURSAL: TIntegerField;
    ZQ_VerificarIngresoEgresoEMPLEADO: TStringField;
    ZQ_VerificarIngresoEgresoFECHA_INGRESO: TDateTimeField;
    ZQ_VerificarIngresoEgresoFECHA_EGRESO: TDateTimeField;
    ZQ_VerificarIngresoEgresoDETALLE: TStringField;
    ZQ_Historial_sucursal: TStringField;
    QuickRep1: TQuickRep;
    EKVistaPreviaQR1: TEKVistaPreviaQR;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepColor_Subtitulo: TQRLabel;
    RepColor_Titulo: TQRLabel;
    QRBand11: TQRBand;
    QRlblPieDePagina: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData1: TQRSysData;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnFicharIngresoClick(Sender: TObject);
    procedure btnFicharEgresoClick(Sender: TObject);
    procedure btnRegistrarCancelarClick(Sender: TObject);
    procedure btnRegistrarAceptarClick(Sender: TObject);
    procedure btnVerSucursalesClick(Sender: TObject);
    procedure DBGridHistoriaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  Private
    { Private declarations }
  Public
    fecha: TDate;
    //fechaRegistro: TDateTime;
    tipoFicha: string;
    viendoSucursal: string;
  end;

var
  FFichaEmpleado: TFFichaEmpleado;

implementation

uses UDM, UPrincipal;

{$R *.dfm}

procedure TFFichaEmpleado.FormCreate(Sender: TObject);
begin
  tipoFicha:= '';
  fecha:= dm.EKModelo.Fecha;
  lblFecha.Caption:= FormatDateTime('dddd dd "de" mmmm "de" yyyy ', dm.EKModelo.Fecha);
  lblHora.Caption:= TimeToStr(dm.EKModelo.Hora);

  FPrincipal.Iconos_Menu_32.GetBitmap(51, btnFicharIngreso.Glyph);
  FPrincipal.Iconos_Menu_32.GetBitmap(52, btnFicharEgreso.Glyph);

  FPrincipal.Iconos_Menu_16.GetBitmap(0, btnRegistrarCancelar.Glyph);
  FPrincipal.Iconos_Menu_16.GetBitmap(1, btnRegistrarAceptar.Glyph);

  viendoSucursal:= 'PROPIA';
  btnVerSucursales.Caption:= 'Ver Sucursal Propia / Todas';
  lblTituloHistorial.Caption:= 'HISTORICO '+dm.ZQ_SucursalNOMBRE.AsString+' - '+DateToStr(dm.EKModelo.Fecha);
  ZQ_Historial.Close;
  ZQ_Historial.ParamByName('fecha').AsDate:= dm.EKModelo.Fecha;
  ZQ_Historial.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
  ZQ_Historial.Open;

  btnVerSucursales.Visible:= ivNever;
  if dm.EKUsrLogin.PermisoAccion('FICHAEMP_VERSUCURSAL') then
    btnVerSucursales.Visible:= ivAlways;
end;


procedure TFFichaEmpleado.Timer1Timer(Sender: TObject);
begin
  if fecha <> dm.EKModelo.Fecha then
    lblFecha.Caption:= FormatDateTime('dddd dd "de" mmmm "de" yyyy ', dm.EKModelo.Fecha);
  lblHora.Caption:= TimeToStr(dm.EKModelo.Hora);
end;


procedure TFFichaEmpleado.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFFichaEmpleado.btnFicharIngresoClick(Sender: TObject);
begin
  panelRegistrarIngresoEgreso.Visible:= True;
  panelRegistrarIngresoEgreso.BringToFront;
  panelContenedor.Enabled:= False;
  editRegistrarUsuario.Text:= '';
  editRegistrarContrasenia.Text:= '';
  memoRegistrarDetalle.Lines.Clear;
  tipoFicha:= 'INGRESO';
  editRegistrarUsuario.SetFocus;
end;


procedure TFFichaEmpleado.btnFicharEgresoClick(Sender: TObject);
begin
  panelRegistrarIngresoEgreso.Visible:= True;
  panelRegistrarIngresoEgreso.BringToFront;
  panelContenedor.Enabled:= False;
  editRegistrarUsuario.Text:= '';
  editRegistrarContrasenia.Text:= '';
  memoRegistrarDetalle.Lines.Clear;
  GrupoVisualizacion.Enabled:= false;
  tipoFicha:= 'EGRESO';
  editRegistrarUsuario.SetFocus;
end;


procedure TFFichaEmpleado.btnRegistrarCancelarClick(Sender: TObject);
begin
  panelContenedor.Enabled:= true;
  panelRegistrarIngresoEgreso.SendToBack;
  panelRegistrarIngresoEgreso.Visible:= false;
  GrupoVisualizacion.Enabled:= true;
  tipoFicha:= '';
  DBGridHistoria.SetFocus;
end;


procedure TFFichaEmpleado.btnRegistrarAceptarClick(Sender: TObject);
var
  fechaGuardar: TDateTime;
  repetir: boolean;
begin
  fechaGuardar:= dm.EKModelo.FechayHora;
  repetir:= false;

  if trim(editRegistrarUsuario.Text) = '' then
  begin
    Application.MessageBox('No se ha ingresado ningún Usuario.', 'Validación', MB_OK + MB_ICONINFORMATION);
    repetir:= true;
    editRegistrarUsuario.SetFocus;
  end;

  if repetir = false then //repetir 1
  begin
    //verifico que el usuario ingresado existe y la contraseña sea la correcta.



    if repetir = false then //repetir 2
    begin
      //verifico que el usuario ingresado posea:
      //para un INGRESO: que no haya un ingreso previo sin fecha de egreso aun.
      //para un EGRESO:  que haya un ingreso previo sin fecha de egreso.
      ZQ_VerificarIngresoEgreso.Close;
      ZQ_VerificarIngresoEgreso.ParamByName('fecha').AsDate:= DateOf(fechaGuardar);
      ZQ_VerificarIngresoEgreso.ParamByName('empleado').AsString:= editRegistrarUsuario.Text;
      ZQ_VerificarIngresoEgreso.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
      ZQ_VerificarIngresoEgreso.Open;
      if tipoFicha = 'INGRESO' then
      begin
        if not ZQ_VerificarIngresoEgreso.IsEmpty then
        begin
          Application.MessageBox(pchar('La Ficha de Ingreso para el Usuario ya esta registrada (Ingreso: ' + ZQ_VerificarIngresoEgresoFECHA_INGRESO.AsString + ')'), 'Validación', MB_OK + MB_ICONINFORMATION);
          btnRegistrarCancelar.Click;
          exit;
        end;
      end
      else
        if tipoFicha = 'EGRESO' then
        begin
          if ZQ_VerificarIngresoEgreso.IsEmpty then
          begin
            Application.MessageBox(pchar('El Usuario no posee Ficha de Ingreso registrada'), 'Validación', MB_OK + MB_ICONINFORMATION);
            btnRegistrarCancelar.Click;
            exit;
          end;
        end;

  //guardo la fecha
      if dm.EKModelo.iniciar_transaccion('FICHA EMPLEADO', [ZQ_Historial, ZQ_VerificarIngresoEgreso]) then
      begin
        if tipoFicha = 'INGRESO' then
        begin
          ZQ_Historial.Append;
          ZQ_HistorialID_SUCURSAL.AsInteger:= SUCURSAL_LOGUEO;
          ZQ_HistorialEMPLEADO.AsString:= editRegistrarUsuario.Text;
          ZQ_HistorialFECHA_INGRESO.AsDateTime:= fechaGuardar;
          ZQ_HistorialFECHA_EGRESO.Clear;
          ZQ_HistorialDETALLE.AsString:= memoRegistrarDetalle.Text;
        end
        else
          if tipoFicha = 'EGRESO' then
          begin
            ZQ_VerificarIngresoEgreso.Edit;
            ZQ_VerificarIngresoEgresoFECHA_EGRESO.AsDateTime:= fechaGuardar;
          end;

        try
          if DM.EKModelo.finalizar_transaccion('FICHA EMPLEADO') then
          begin
            btnRegistrarCancelar.Click; //limpio todos y oculto la pantalla
            ZQ_Historial.Refresh;
          end
          else
            dm.EKModelo.cancelar_transaccion('FICHA EMPLEADO')
        except
          begin
            Application.MessageBox('No se pudo registrar el fichaje del Usuario', 'Atención', MB_OK + MB_ICONINFORMATION);
            exit;
          end
        end;
      end;
    end; //fin repetir 2
  end; //fin repetir 1
end;


procedure TFFichaEmpleado.btnVerSucursalesClick(Sender: TObject);
begin
  if viendoSucursal = 'PROPIA' then
  begin
    ZQ_Historial.Close;
    ZQ_Historial.ParamByName('fecha').AsDate:= dm.EKModelo.Fecha;
    ZQ_Historial.ParamByName('id_sucursal').AsInteger:= -1;
    ZQ_Historial.Open;
    viendoSucursal:= 'TODAS';
    lblTituloHistorial.Caption:= 'HISTORICO SUCURSALES - '+DateToStr(dm.EKModelo.Fecha);
    //btnVerSucursales.Caption:= 'Ver Sucursal Propia';
  end
  else
  begin
    ZQ_Historial.Close;
    ZQ_Historial.ParamByName('fecha').AsDate:= dm.EKModelo.Fecha;
    ZQ_Historial.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
    ZQ_Historial.Open;
    viendoSucursal:= 'PROPIA';
    lblTituloHistorial.Caption:= 'HISTORICO '+dm.ZQ_SucursalNOMBRE.AsString+' - '+DateToStr(dm.EKModelo.Fecha);
    //btnVerSucursales.Caption:= 'Ver Todas las Sucursales';
  end;
end;

procedure TFFichaEmpleado.DBGridHistoriaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  FPrincipal.PintarFilasGrillas(DBGridHistoria, Rect, DataCol, Column, State);
end;

end.

