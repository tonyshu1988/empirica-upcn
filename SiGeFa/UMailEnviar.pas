unit UMailEnviar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  IdBaseComponent, IdMessage, IdException, ComCtrls, Buttons;

type
  TFMailEnviar = class(TForm)
    PanelFondo: TPanel;
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnEnviar: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    panelArriba: TPanel;
    panelCuerpo: TPanel;
    panelAdjunto: TPanel;
    panelCabecera: TPanel;
    IdMensaje: TIdMessage;
    EditPara: TEdit;
    EditCC: TEdit;
    EditBCC: TEdit;
    EditAsunto: TEdit;
    cBoxPrioridad: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    chkAcuseRecibo: TCheckBox;
    OpenDialog: TOpenDialog;
    MemoCuerpo: TMemo;
    StatusBar1: TStatusBar;
    listaAdjuntos: TListView;
    btnAdjuntarArchivo: TBitBtn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function enviarMensaje(): boolean;
    function ValidarCampos():boolean;
    function ConectarServidor(): boolean;
    procedure DesconectarServidor();
    procedure btnEnviarClick(Sender: TObject);
    procedure mostrarOcupado(flag: boolean);
    procedure btnAdjuntarArchivoClick(Sender: TObject);
    procedure agregarAListaAdjuntos;
    procedure cargarDestinatario(destinatario: string);
  private
    { Private declarations }
  public
    conectado: boolean;
  end;

var
  FMailEnviar: TFMailEnviar;

const
  transaccion_ABM = 'ABM TIPO ARTICULO';

implementation

uses UPrincipal, UDM, UUtilidades;

{$R *.dfm}

procedure TFMailEnviar.mostrarOcupado(flag: boolean);
begin
  if flag then
    screen.cursor := crHourglass
  else
    screen.cursor := crDefault;
end;


procedure TFMailEnviar.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose:= FPrincipal.cerrar_ventana(transaccion_ABM);
end;


procedure TFMailEnviar.btnSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TFMailEnviar.cargarDestinatario(destinatario: string);
begin
  EditPara.Text:= destinatario;
end;


procedure TFMailEnviar.FormCreate(Sender: TObject);
begin
  MemoCuerpo.Clear;
  cBoxPrioridad.ItemIndex:= Ord(IdMensaje.Priority);

  EditPara.Text:= '';
  EditCC.Text:= '';
  EditBCC.Text:= '';
  EditAsunto.Text:= '';
  StatusBar1.Panels[0].text:= '';
  
  conectado:= false;
end;


procedure TFMailEnviar.DesconectarServidor();
begin
  if DM.IdSMTP.Connected then
  begin
   DM.IdSMTP.Disconnect;
   conectado:= false;
  end
end;


//Función para conectar con el servidor de email
function TFMailEnviar.ConectarServidor(): boolean;
begin
  try
    if not conectado then
    begin
      DM.IdSMTP.Connect;
      conectado:= true;
    end
  except
    ON E: EIdProtocolReplyError do
    begin
      ShowMessage(pchar('No se ha podido enviar el e-Mail' + #13 +
                        'Error de configuración de cuenta de usuario'));
      DesconectarServidor;
    end;
    on E: EFOpenError do
    begin
      ShowMessage(pchar('No se ha podido enviar el e-Mail' + #13 +
                        'Archivo adjunto desconocido o erróneo'));
      DesconectarServidor;
    end;
    on E: EIdSocketError do
    begin
      ShowMessage(pchar('No se ha podido enviar el e-Mail'+ #13 +
                        'Host/Puerto desconocido o incorrecto'));
      DesconectarServidor;
    end
    else
    begin
      ShowMessage(pchar('No se ha podido enviar el e-Mail'+ #13 +
                        'Error desconocido'));
      DesconectarServidor;
    end;
  end;

  Result:= conectado;
end;


function TFMailEnviar.ValidarCampos():boolean;
var
  i: integer;
  cc, bcc, para: String;
begin
  result := true;

  if Trim(EditPara.Text) = '' then
  begin
    Application.MessageBox('Falta completar el campo "Para".','Faltan Datos', MB_OK + MB_ICONEXCLAMATION);
    result := false;
    EditPara.SetFocus;
    exit;
  end;

  if EsEmailValido2(EditPara.Text) then
  begin
    Application.MessageBox('Error "Para".','Faltan Datos', MB_OK + MB_ICONEXCLAMATION);
    result := false;
    EditPara.SetFocus;
    exit;
  end;

  if (Trim(EditCC.Text) <> '') and (not EsEmailValido2(EditCC.Text)) then
  begin
    Application.MessageBox('Error "CC".','Faltan Datos', MB_OK + MB_ICONEXCLAMATION);
    result := false;
    EditCC.SetFocus;
    exit;
  end;

  if (Trim(EditBCC.Text) <> '') and (not EsEmailValido2(EditBCC.Text)) then
  begin
    Application.MessageBox('Error "BCC".','Faltan Datos', MB_OK + MB_ICONEXCLAMATION);
    result := false;
    EditBCC.SetFocus;
    exit;
  end;

  if Trim(EditAsunto.Text) = '' then
  begin
    Application.MessageBox('Falta completar el campo "Asunto".','Faltan Datos', MB_OK + MB_ICONEXCLAMATION);
    result := false;
    EditAsunto.SetFocus;
    exit;
  end;
end;


function TFMailEnviar.enviarMensaje(): boolean;
var
  mailUsuario: string;
begin
  Result:= false;

  if not ValidarCampos then
    exit;

  mailUsuario:= 'mdservicios@ciudad.com.ar';

  with IdMensaje do
  begin
    Body.Assign(MemoCuerpo.Lines);
    From.Text:= mailUsuario;
    ReplyTo.EMailAddresses:= mailUsuario;
    Recipients.EMailAddresses:= EditPara.Text; { To: header }
    Subject:= EditAsunto.Text; { Subject: header }
    Priority:= TIdMessagePriority(cBoxPrioridad.ItemIndex); { Message Priority }
    CCList.EMailAddresses:= EditCC.Text; {CC}
    BccList.EMailAddresses:= EditBCC.Text; {BBC}
    if chkAcuseRecibo.Checked then
      ReceiptRecipient.Text:= From.Text
    else
      ReceiptRecipient.Text:= '';
  end;

  if DM.IdSMTP.Connected then //si esta conectado me desconecto
    DM.IdSMTP.Disconnect;

  //Conectar al Servidor
  if ConectarServidor then
  begin
    try
      DM.IdSMTP.Send(IdMensaje);
      Result:= true;
    finally
      DM.IdSMTP.Disconnect;
    end;
  end;
end;


procedure TFMailEnviar.btnEnviarClick(Sender: TObject);
begin
  StatusBar1.Panels[0].text:= 'Enviando Mensaje...';
  Application.ProcessMessages;
  mostrarOcupado(true);
  if enviarMensaje then
  begin
    mostrarOcupado(false);
    ShowMessage('Mensaje enviado con exito!');
    btnSalir.Click;
  end
  else
  begin
    mostrarOcupado(false);
    ShowMessage('No se pudo enviar el mensaje!');
  end
end;


procedure TFMailEnviar.btnAdjuntarArchivoClick(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    TIdAttachment.Create(IdMensaje.MessageParts, OpenDialog.FileName);
    agregarAListaAdjuntos;
  end;
end;


procedure TFMailEnviar.agregarAListaAdjuntos;
var
  auxLista: TListItem;
  i: Integer;
begin
  listaAdjuntos.Items.Clear;
  for i := 0 to Pred(IdMensaje.MessageParts.Count) do
  begin
    auxLista:= listaAdjuntos.Items.Add;
    if IdMensaje.MessageParts.Items[i] is TIdAttachment then
    begin
      auxLista.ImageIndex := 8;
      auxLista.Caption := TIdAttachment(IdMensaje.MessageParts.Items[i]).Filename;
      auxLista.SubItems.Add(TIdAttachment(IdMensaje.MessageParts.Items[i]).ContentType);
    end;
  end;
end;


end.
