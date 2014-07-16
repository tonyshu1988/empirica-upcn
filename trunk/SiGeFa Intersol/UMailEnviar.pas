unit UMailEnviar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  IdBaseComponent, IdMessage, IdException, ComCtrls, Buttons,
  ZStoredProcedure, cxClasses, IdAttachmentFile, ImgList, ActnList,
  XPStyleActnCtrls, ActnMan, ISListadoSQL;

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
    Panel1: TPanel;
    Label6: TLabel;
    DS_Cuentas: TDataSource;
    DBTextCuenta: TDBText;
    ZQ_Cuentas: TZQuery;
    ZQ_CuentasID_CUENTA: TIntegerField;
    ZQ_CuentasID_SUCURSAL: TIntegerField;
    ZQ_CuentasEMAIL: TStringField;
    ZQ_CuentasPOP3_HOST: TStringField;
    ZQ_CuentasPOP3_PUERTO: TIntegerField;
    ZQ_CuentasPOP3_USUARIO: TStringField;
    ZQ_CuentasPOP3_PASSWORD: TStringField;
    ZQ_CuentasSMTP_HOST: TStringField;
    ZQ_CuentasSMTP_PUERTO: TIntegerField;
    ZQ_CuentasSMTP_USUARIO: TStringField;
    ZQ_CuentasSMTP_PASSWORD: TStringField;
    ZQ_CuentasSMTP_AUTENTICACION: TStringField;
    ZQ_CuentasCUENTA_PRINCIPAL: TStringField;
    ZQ_Mail: TZQuery;
    ZQ_MailID_MAIL_MENSAJE: TIntegerField;
    ZQ_MailID_CUENTA: TIntegerField;
    ZQ_MailCABECERA_PARA: TStringField;
    ZQ_MailCABECERA_CC: TStringField;
    ZQ_MailCABECERA_CCO: TStringField;
    ZQ_MailCABECERA_ASUNTO: TStringField;
    ZQ_MailCABECERA_PRIORIDAD: TStringField;
    ZQ_MailCABECERA_ACUSE_RECIBO: TStringField;
    ZQ_MailCUERPO: TBlobField;
    ZQ_MailFECHA_Y_HORA: TDateTimeField;
    ZQ_MailENVIADO: TStringField;
    ZQ_MailTIPO: TStringField;
    ZQ_Adjunto: TZQuery;
    ZQ_AdjuntoID_ADJUNTO: TIntegerField;
    ZQ_AdjuntoID_MAIL: TIntegerField;
    ZQ_AdjuntoNOMBRE: TStringField;
    ZQ_AdjuntoUBICACION_ARCHIVO: TStringField;
    ZP_IDMail: TZStoredProc;
    ZP_IDMailID: TIntegerField;
    btnCambiarCuenta: TBitBtn;
    ImageList: TImageList;
    BitBtnBuscarPara: TBitBtn;
    BitBtnBuscarCC: TBitBtn;
    BitBtnBuscarBCC: TBitBtn;
    ZQ_ListaMails: TZQuery;
    ZQ_ListaMailsID_ENTIDAD_TELEFONO: TIntegerField;
    ZQ_ListaMailsID_ENTIDAD: TIntegerField;
    ZQ_ListaMailsID_PERSONA: TIntegerField;
    ZQ_ListaMailsTELEFONO: TStringField;
    ZQ_ListaMailsMAIL: TStringField;
    ZQ_ListaMailsDESCRIPCION: TStringField;
    ActionManager1: TActionManager;
    ABuscar_Para: TAction;
    ABuscar_CC: TAction;
    ABuscar_BCC: TAction;
    ISListadoMail: TISListadoSQL;
    ISListadoCuentas: TISListadoSQL;
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
    procedure reenviar(destinatario, cc, cco, asunto, cuerpo: string; id_cuenta, id_mail: integer);
    procedure guardarMail();
    procedure marcarEnvio(enviado: boolean);
    function finalDireccionValida(direccion: string): boolean;
    procedure EditParaExit(Sender: TObject);
    procedure EditCCExit(Sender: TObject);
    procedure EditBCCExit(Sender: TObject);
    procedure btnCambiarCuentaClick(Sender: TObject);
    procedure responder(destinatario, cc, cco, asunto: string; id_cuenta: integer);
    procedure enviarConAdjunto(destinatario, asunto, archivo: string);
    procedure BitBtnBuscarParaClick(Sender: TObject);
    procedure BitBtnBuscarCCClick(Sender: TObject);
    procedure BitBtnBuscarBCCClick(Sender: TObject);
    procedure ABuscar_ParaExecute(Sender: TObject);
    procedure ABuscar_CCExecute(Sender: TObject);
    procedure ABuscar_BCCExecute(Sender: TObject);
  private
    { Private declarations }
  public
    conectado: boolean;
    id_mensaje: integer;
    reenviando: boolean;
  end;

var
  FMailEnviar: TFMailEnviar;

const
  transaccion_ABM = 'ABM TIPO ARTICULO';

implementation

uses UPrincipal, UDM, UUtilidades, UPanelNotificacion, RegExpr;

{$R *.dfm}

//REENVIAR MAIL
procedure TFMailEnviar.reenviar(destinatario, cc, cco, asunto, cuerpo: string; id_cuenta, id_mail: integer);
begin
  reenviando:= true;
  id_mensaje:= id_mail;

  ZQ_Cuentas.Filtered:= false; //desactivo el filtro para que muestre la cuenta principal
  ZQ_Cuentas.Locate('ID_CUENTA', VarArrayOf([inttostr(id_cuenta)]), []);

  dm.configMail('CUENTA', id_cuenta);
  EditPara.Text:= destinatario;
  EditCC.Text:= cc;
  EditBCC.Text:= cco;
  EditAsunto.Text:= asunto;
  MemoCuerpo.Lines.Text:= cuerpo;
end;

//ENVIAR MAIL CON ADJUNTO
procedure TFMailEnviar.enviarConAdjunto(destinatario, asunto, archivo: string);
begin
  if FileExists(archivo) then
  begin
    TIdAttachmentFile.Create(IdMensaje.MessageParts, archivo);
    agregarAListaAdjuntos;
  end;

  EditPara.Text:= destinatario;
  EditAsunto.Text:= asunto;
end;

//RESPONDER MAIL
procedure TFMailEnviar.responder(destinatario, cc, cco, asunto: string; id_cuenta: integer);
begin
  ZQ_Cuentas.Filtered:= false; //desactivo el filtro para que muestre la cuenta principal
  ZQ_Cuentas.Locate('ID_CUENTA', VarArrayOf([inttostr(id_cuenta)]), []);

  dm.configMail('CUENTA', id_cuenta);
  EditPara.Text:= destinatario;
  EditCC.Text:= cc;
  EditBCC.Text:= cco;
  EditAsunto.Text:= 'RE: '+asunto;
end;


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
  reenviando:= false;
  MemoCuerpo.Clear;
  cBoxPrioridad.ItemIndex:= Ord(IdMensaje.Priority);
  ImageList.GetBitmap(0, btnCambiarCuenta.Glyph);
  
  EditPara.Text:= '';
  EditCC.Text:= '';
  EditBCC.Text:= '';
  EditAsunto.Text:= '';
  StatusBar1.Panels[0].text:= '';

  conectado:= false;
  id_mensaje:= -1;

  dm.ISModelo.abrir(ZQ_ListaMails);

  //busco todas las cuentas de la sucursal
  ZQ_Cuentas.Close;
  ZQ_Cuentas.ParamByName('id_sucursal').AsInteger:= SUCURSAL_LOGUEO;
  ZQ_Cuentas.Open;
  ZQ_Cuentas.Filtered:= true; //filtro para que muestre la cuenta principal
  dm.configMail('CUENTA', ZQ_CuentasID_CUENTA.AsInteger); //cargo los datos de la cuenta principal
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
  result:= false;

  try
    if not conectado then
    begin
      DM.IdSMTP.Connect;
      conectado:= true;
    end
  except
//    ON E: EIdProtocolReplyError do
//    begin
//      ShowMessage(pchar('No se ha podido enviar el e-Mail' + #13 +
//                        'Error de configuración de cuenta de usuario'));
//      DesconectarServidor;
//    end;
//    on E: EFOpenError do
//    begin
//      ShowMessage(pchar('No se ha podido enviar el e-Mail' + #13 +
//                        'Archivo adjunto desconocido o erróneo'));
//      DesconectarServidor;
//    end;
//    on E: EIdSocketHandleError do
//    begin
//      ShowMessage(pchar('No se ha podido enviar el e-Mail'+ #13 +
//                        'Host/Puerto desconocido o incorrecto'));
//      DesconectarServidor;
//    end
//    else
//    begin
//      ShowMessage(pchar('No se ha podido enviar el e-Mail'+ #13 +
//                        'Error desconocido'));
//      DesconectarServidor;
//    end;

    on E: EIdException do
    begin
      ShowMessage(E.ClassName+' '+E.Message);
      DesconectarServidor;
    end

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

  mailUsuario:= ZQ_CuentasEMAIL.AsString;
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
  if not ValidarCampos then
    exit;

  enviandoMail:= true;
  StatusBar1.Panels[0].text:= 'Enviando Mensaje...';
  //FPrincipal.BringToFront;
  Application.ProcessMessages;
  if enviarMensaje then
  begin
    FPanelNotificacion.ver_aviso_mensaje('El mensaje fue enviado con exito!!');
    guardarMail();
    marcarEnvio(true);
    close;
  end
  else
  begin
    FPanelNotificacion.ver_aviso_mensaje('No se pudo enviar el mensaje!!');
    guardarMail();
    marcarEnvio(false);    
    close;
  end;
end;


procedure TFMailEnviar.btnAdjuntarArchivoClick(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    TIdAttachmentFile.Create(IdMensaje.MessageParts, OpenDialog.FileName);
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
    if IdMensaje.MessageParts.Items[i] is TIdAttachmentFile then
    begin
      auxLista.ImageIndex := 8;
      auxLista.Caption := TIdAttachmentFile(IdMensaje.MessageParts.Items[i]).Filename;
      auxLista.SubItems.Add(TIdAttachmentFile(IdMensaje.MessageParts.Items[i]).ContentType);
      auxLista.SubItems.Add(OpenDialog.GetNamePath);
    end;
  end;
end;


procedure TFMailEnviar.guardarMail();
var
  indice: integer;
begin
  try
    if dm.ISModelo.iniciar_transaccion('ENVIANDO MAIL', [ZQ_Mail, ZQ_Adjunto]) then
    begin
      if not reenviando then //si se esta enviando por primera vez
      begin
        ZP_IDMail.Close;
        ZP_IDMail.Open;
        id_mensaje:= ZP_IDMailID.AsInteger;
        ZP_IDMail.Close;

        ZQ_Mail.Append;
        ZQ_MailID_MAIL_MENSAJE.AsInteger:= id_mensaje;
      end
      else //si se esta reenviando
      begin
        ZQ_Mail.Close;
        ZQ_Mail.ParamByName('id_mensaje').AsInteger:= id_mensaje;
        ZQ_Mail.Open;

        ZQ_Mail.Edit;
      end;

      ZQ_MailID_CUENTA.AsInteger:= ZQ_CuentasID_CUENTA.AsInteger;
      ZQ_MailCABECERA_PARA.AsString:= EditPara.Text;
      ZQ_MailCABECERA_CC.AsString:= EditCC.Text;
      ZQ_MailCABECERA_CCO.AsString:= EditBCC.Text;
      ZQ_MailCABECERA_ASUNTO.AsString:= EditAsunto.Text;
      ZQ_MailCABECERA_PRIORIDAD.AsString:= cBoxPrioridad.Text;
      if chkAcuseRecibo.Checked then
        ZQ_MailCABECERA_ACUSE_RECIBO.AsString:= 'S'
      else
        ZQ_MailCABECERA_ACUSE_RECIBO.AsString:= 'N';
      ZQ_MailCUERPO.Value:= MemoCuerpo.Lines.Text;
      ZQ_MailTIPO.AsString:= 'S'; //Salida

  //    for indice:= 0 to listaAdjuntos.Items.Count - 1 do
  //    begin
  //      ZQ_Adjunto.Append;
  //      ZQ_AdjuntoID_MAIL.AsInteger:= id_mensaje;
  //      ZQ_AdjuntoNOMBRE.AsString:= listaAdjuntos.Items[0].SubItems.Text;
  //      ZQ_AdjuntoUBICACION_ARCHIVO.AsString:= listaAdjuntos.Items[0].SubItems.Text;
  //    end;

      if not (dm.ISModelo.finalizar_transaccion('ENVIANDO MAIL')) then
        dm.ISModelo.cancelar_transaccion('ENVIANDO MAIL');
    end
  except
    begin
      FPanelNotificacion.ver_aviso_mensaje('No se pudo guardar el mail de salida!!');
      exit;
    end
  end
end;


procedure TFMailEnviar.marcarEnvio(enviado: boolean);
begin
  if dm.ISModelo.iniciar_transaccion('ENVIANDO MAIL', [ZQ_Mail]) then
  begin
    ZQ_Mail.Close;
    ZQ_Mail.ParamByName('id_mensaje').AsInteger:= id_mensaje;
    ZQ_Mail.Open;

    ZQ_Mail.Edit;
    if enviado then
      ZQ_MailENVIADO.AsString:= 'S'
    else
      ZQ_MailENVIADO.AsString:= 'N';

    if not (dm.ISModelo.finalizar_transaccion('ENVIANDO MAIL')) then
      dm.ISModelo.cancelar_transaccion('ENVIANDO MAIL');
  end;

  enviandoMail:= false;
end;


Function TFMailEnviar.finalDireccionValida(direccion: string): boolean;
var
  tamanio: integer;
begin
  Result:= false;

  tamanio:= Length(direccion);
  if tamanio = 0 then
    exit;

  if direccion[tamanio] = ';' then
    Result:= true;
end;


procedure TFMailEnviar.EditParaExit(Sender: TObject);
begin
  if (trim(EditPara.Text) <> '') and (not finalDireccionValida(EditPara.Text)) then
    EditPara.Text:= EditPara.Text + ';';
end;


procedure TFMailEnviar.EditCCExit(Sender: TObject);
begin
  if (trim(EditCC.Text) <> '') and (not finalDireccionValida(EditCC.Text)) then
    EditCC.Text:= EditCC.Text + ';';
end;


procedure TFMailEnviar.EditBCCExit(Sender: TObject);
begin
  if (trim(EditBCC.Text) <> '') and (not finalDireccionValida(EditBCC.Text)) then
    EditBCC.Text:= EditBCC.Text + ';';
end;


procedure TFMailEnviar.btnCambiarCuentaClick(Sender: TObject);
begin
  ZQ_Cuentas.Filtered:= false;

  ISListadoCuentas.SQL.Text:= 'select c.* '+
                              'from mail_cuentas c '+
                              'where id_sucursal = '+IntToStr(SUCURSAL_LOGUEO);

  if ISListadoCuentas.Buscar then
  begin
    dm.configMail('CUENTA', StrToInt(ISListadoCuentas.Resultado));
  end;
end;


procedure TFMailEnviar.BitBtnBuscarParaClick(Sender: TObject);
begin
  if ISListadoMail.Buscar then
  begin
    if ISListadoMail.Resultado <> '' then
    begin
      if ExecRegExpr ('^[A-Za-z][A-Za-z0-9_.\-]*@[A-Za-z0-9_\-]+\.[A-Za-z0-9_.]+[A-za-z]', ZQ_ListaMailsMAIL.AsString) then
        EditPara.Text:= EditPara.Text+ZQ_ListaMailsMAIL.AsString+'; '
      else
        ShowMessage('El mail seleccionado es invalido, verifique');
    end;
  end;
end;


procedure TFMailEnviar.BitBtnBuscarCCClick(Sender: TObject);
begin
  if ISListadoMail.Buscar then
  begin
    if ISListadoMail.Resultado <> '' then
    begin
      if ExecRegExpr ('^[A-Za-z][A-Za-z0-9_.\-]*@[A-Za-z0-9_\-]+\.[A-Za-z0-9_.]+[A-za-z]', ZQ_ListaMailsMAIL.AsString) then
        EditCC.Text:= EditCC.Text+ZQ_ListaMailsMAIL.AsString+'; '
      else
        ShowMessage('El mail seleccionado es invalido, verifique');
    end;
  end;
end;


procedure TFMailEnviar.BitBtnBuscarBCCClick(Sender: TObject);
begin
  if ISListadoMail.Buscar then
  begin
    if ISListadoMail.Resultado <> '' then
    begin
      if ExecRegExpr ('^[A-Za-z][A-Za-z0-9_.\-]*@[A-Za-z0-9_\-]+\.[A-Za-z0-9_.]+[A-za-z]', ZQ_ListaMailsMAIL.AsString) then
        EditBCC.Text:= EditBCC.Text+ZQ_ListaMailsMAIL.AsString+'; '
      else
        ShowMessage('El mail seleccionado es invalido, verifique');
    end;
  end;
end;


procedure TFMailEnviar.ABuscar_ParaExecute(Sender: TObject);
begin
  BitBtnBuscarPara.Click;
end;

procedure TFMailEnviar.ABuscar_CCExecute(Sender: TObject);
begin
  BitBtnBuscarCC.Click;
end;

procedure TFMailEnviar.ABuscar_BCCExecute(Sender: TObject);
begin
  BitBtnBuscarBCC.Click;
end;

end.
