unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZConnection, StdCtrls, ZSqlUpdate, EKIni, ExtCtrls, EKEdit,
  ZStoredProcedure, dxBar, dxBarExtItems, EKIconizacion, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP, ComCtrls, DBClient;

type
  TFPrincipal = class(TForm)
    DBGrid1: TDBGrid;
    DS_SincroTabla: TDataSource;
    Local: TZQuery;
    Memo1: TMemo;
    ZQ_SincroTabla: TZQuery;
    ZQ_SincroTablaKEY_FIELD: TStringField;
    ZQ_SincroTablaKEY_VALUE: TStringField;
    ZQ_SincroTablaLOG_TABLES_ID: TLargeintField;
    inicio: TEKIni;
    Panel1: TPanel;
    Label7: TLabel;
    RadioGroup1: TRadioGroup;
    Panel2: TPanel;
    Panel3: TPanel;
    Timer1: TTimer;
    cuenta: TEKEdit;
    GroupBox1: TGroupBox;
    edPathArchivo: TEdit;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    LBase: TEdit;
    LUser: TEdit;
    LPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    estaSincronizado: TZQuery;
    Panel4: TPanel;
    ZQ_Configuracion: TZQuery;
    ZQ_ConfiguracionDB_SUCURSAL: TIntegerField;
    ZQ_ConfiguracionID_SUCURSAL: TIntegerField;
    ZQ_ConfiguracionULTIMA_FECHA: TDateTimeField;
    dxBarABM: TdxBarManager;
    btnSincronizar: TdxBarLargeButton;
    btnOcultar: TdxBarLargeButton;
    btnConectar: TdxBarLargeButton;
    btnSubir: TdxBarLargeButton;
    btnBajar: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnBorrarLog: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    EKIconizacion1: TEKIconizacion;
    SincronizacionLocal: TZQuery;
    SincronizacionLocalID: TIntegerField;
    SincronizacionLocalFECHA: TDateField;
    SincronizacionLocalHORA: TTimeField;
    SincronizacionLocalULTIMO_LOTE_SINC: TIntegerField;
    Splitter1: TSplitter;
    estaSincronizadoCOUNT: TIntegerField;
    SincronizacionLocalSUCURSAL: TIntegerField;
    ZSP_GenerarLoteSinc: TZStoredProc;
    ZSP_GenerarLoteSincLOTESINC: TIntegerField;
    chkTimer: TCheckBox;
    ProgressBar1: TProgressBar;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnSincronizarClick(Sender: TObject);
    procedure btnBorrarLogClick(Sender: TObject);
    procedure guardarArchivoLog();
    procedure btnOcultarClick(Sender: TObject);
    procedure EKIconizacion1DblClick(Sender: TObject);
    function estaEnBDLocal():Boolean ;
    procedure conectar();
    procedure btnConectarClick(Sender: TObject);
    procedure btnBajarClick(Sender: TObject);
    procedure btnSubirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function subirXML(archivo:String):Boolean ;
    function bajarXML(archivo:String):Boolean ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;
  unidad,encendido : string;
  ultFecha:TDate;
  intervalo, lote_commit,loteGenerado,ultLoteR,ultLoteL,ultSuc,idSucursal : integer;
implementation

uses Unit2, UDM;

{$R *.dfm}

procedure TFPrincipal.FormCreate(Sender: TObject);
var
  dir : string;
begin

  DM.ZC_Local.Connected:=False;

  ZQ_SincroTabla.close;

  dir:=Application.ExeName;

//  if ParamCount=0 then
//  begin
//    if IsProcess('Sincronizador.exe') then
//    begin
//      Application.MessageBox('Ya hay una instancia del programa ejecutándose.','Atención');
//      Application.Terminate;
//    end;
//  end;

  inicio.abrir;
  DM.IdFTP1.Username :=inicio.Ini.ReadString('servidor', 'usuario','');
  DM.IdFTP1.Password :=inicio.Ini.ReadString('servidor', 'password','');
  DM.IdFTP1.Host :=  inicio.Ini.ReadString('servidor', 'direccion','');

  edPathArchivo.Text:=inicio.Ini.ReadString('servidor', 'path','');

  DM.ZC_Local.HostName:=inicio.Ini.ReadString('Base Local', 'direccion','');
  DM.ZC_Local.Database:=inicio.Ini.ReadString('Base Local', 'base','');
  DM.ZC_Local.User:=inicio.Ini.ReadString('Base Local', 'usuario','');
  DM.ZC_Local.Password:=inicio.Ini.ReadString('Base Local', 'password','');

  Lbase.Text:=DM.ZC_Local.Database;
  LUser.Text:=DM.ZC_Local.User;
  LPassword.Text:=DM.ZC_Local.Password;

  unidad:=inicio.Ini.ReadString('SINCRONIZACION', 'unidad','minutos');
  intervalo:=strtoint(inicio.Ini.ReadString('SINCRONIZACION', 'intervalo','15'));
  lote_commit:=strtoint(inicio.Ini.ReadString('SINCRONIZACION', 'lote_commit','100'));
  encendido:=inicio.Ini.ReadString('SINCRONIZACION', 'encendido','S');

  chkTimer.Checked:=(encendido='S');

  cuenta.Text:=inttostr(intervalo);
  if unidad='segundos' then
    RadioGroup1.ItemIndex:=0
  else
    RadioGroup1.ItemIndex:=1;

  RadioGroup1Click(self);
  inicio.cerrar;

  try
    begin
      DM.ZC_Local.Disconnect;

      memo1.Lines.Clear;
      memo1.Lines.Add('...### Sincronización SiGeFa ###...');
      DM.ZC_Local.Disconnect;
      memo1.Lines.Add('Conectando Base Local: '+DM.ZC_Local.HostName+':'+DM.ZC_Local.Database);
      DM.ZC_Local.Connect;
      memo1.Lines.Add('...Conectado.');

      // Obtengo el num de mi sucursal
      ZQ_Configuracion.Close;
      ZQ_Configuracion.Open;
      ZQ_Configuracion.Last;
      idSucursal:=ZQ_ConfiguracionID_SUCURSAL.AsInteger;

      FPrincipal.Caption:='Sincronizador SiGeFa - Sucursal: '+ZQ_ConfiguracionID_SUCURSAL.AsString;
    end
    except
     on E: Exception do
      begin


        DM.ZC_Local.Disconnect;

        memo1.Lines.Add(E.Message);
        memo1.Lines.Add('ERROR Conexión Local!!');
      end;
  end;

end;

procedure TFPrincipal.Timer1Timer(Sender: TObject);
var
  cu : integer;
begin
  if chkTimer.Checked then
   begin
    cu := strtoint(cuenta.text);
    cu := cu-1;
    cuenta.Text:=inttostr(cu);
    if cu=0 then
    begin
      timer1.Enabled:=False;
      //Sincronizar();
    end;
   end;
end;

procedure TFPrincipal.guardarArchivoLog();
var
   nombre:String;
begin
      try
        begin
         nombre:=Format('LOG_%s.TXT',[FormatDateTime('dd-mm-yyyy(hh_nn_ss)',dm.ModeloLocal.FechayHora)]);
         memo1.Lines.SaveToFile(nombre);
        end
      except
       begin
         Application.MessageBox('Se produjo un error al crear el archivo de Log.','Atención',MB_OK+MB_ICONINFORMATION);
       end
      end
end;

procedure TFPrincipal.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=0 then
    timer1.Interval:=1000
  else
    timer1.Interval:=60000;  
end;

procedure TFPrincipal.btnSalirClick(Sender: TObject);
begin
  if Application.MessageBox('Si apaga el sincronizador dejará de actualizar la BD.', 'Atención', MB_OKCANCEL)= IDOK then
  begin
    EKIconizacion1.Visible:=false;
    DM.IdFTP1.Disconnect;
    DM.ZC_Local.Disconnect;
    Application.Terminate;
  end;
end;

procedure TFPrincipal.btnSincronizarClick(Sender: TObject);
begin
 // Sincronizar;
end;

procedure TFPrincipal.btnBorrarLogClick(Sender: TObject);
begin
  memo1.Lines.Clear;
end;

procedure TFPrincipal.btnOcultarClick(Sender: TObject);
begin
  Visible:=False;
end;

procedure TFPrincipal.EKIconizacion1DblClick(Sender: TObject);
begin
  Visible:=true;
end;

function TFPrincipal.estaEnBDLocal():Boolean ;
begin
//
//estaSincronizado.Close;
//estaSincronizado.ParamByName('suc').AsInteger:=ZQ_SincroTablaSUCURSAL.AsInteger;
//estaSincronizado.ParamByName('lote').AsInteger:=ZQ_SincroTablaLOTE_SINC.AsInteger;
//estaSincronizado.Open;
//
//Result:=estaSincronizadoCOUNT.AsInteger>0;

end;


procedure TFPrincipal.conectar;
begin
    try
     begin
        DM.IdFTP1.Disconnect;
        memo1.Lines.Clear;
        memo1.Lines.Add('...### Sincronización SiGeFa ###...');
        DM.ZC_Local.Disconnect;
        memo1.Lines.Add('Conectando Base Local: '+DM.ZC_Local.HostName+':'+DM.ZC_Local.Database);
        DM.ZC_Local.Connect;
        memo1.Lines.Add('...Conectado.');
        memo1.Lines.Add('Conectando al Servidor FTP ... ');
        DM.IdFTP1.Connect;
        memo1.Lines.Add('...Conectado.');
     end
    except
      on E: Exception do
      begin
        DM.IdFTP1.Disconnect;
        DM.ZC_Local.Disconnect;
        memo1.Lines.Add(E.Message);
        memo1.Lines.Add('ERROR Sincronización!!...');
      end;
    end;
end;

procedure TFPrincipal.btnConectarClick(Sender: TObject);
begin
  conectar();
end;

procedure TFPrincipal.btnBajarClick(Sender: TObject);
begin
  bajarXML('')
  //descargaNovedades();
end;

procedure TFPrincipal.btnSubirClick(Sender: TObject);
begin
//  subirNovedades();
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin

   dm.ZC_Local.Disconnect;
end;

function TFPrincipal.bajarXML(archivo: String): Boolean;
Var
F: File of byte;
begin
DM.IdFTP1.Username := 'grupogua';
DM.IdFTP1.Password := 'grupo78gua';
DM.IdFTP1.Host := 'grupoguadalupe.com.ar';

Try
DM.IdFTP1.Connect ;
Except
Showmessage ('El Archivo no fue Recibido');
End;

If DM.IdFTP1.Connected then
    Begin
      Try
        begin
        DM.IdFTP1.ChangeDir( '/tmp/' );
        archivo:=edPathArchivo.Text;
        //ClientDataSet2.SaveToFile(narchivo,dfXMLUTF8);
        ProgressBar1.Max := DM.IdFTP1.Size( ExtractFileName( archivo ) ) div 1024;
         if FileExists( archivo ) then
            DeleteFile( archivo );
        DM.IdFTP1.Get(ExtractFileName( archivo ),archivo,False,False );
        DM.IdFTP1.EndWork(wmRead);
        DM.IdFTP1.Disconnect;
        ClientDataSet1.LoadFromFile(archivo);
        ShowMessage
        ('El Archivo fue Recibido correctamente');
        end
      except
        begin
          ShowMessage('El Archivo no pudo ser Recibido')
        end
      end;
    End;

end;

function TFPrincipal.subirXML(archivo: String): Boolean;
Var
F: File of byte;
begin
DM.IdFTP1.Username := 'grupogua';
DM.IdFTP1.Password := 'grupo78gua';
DM.IdFTP1.Host := 'grupoguadalupe.com.ar';

Try
DM.IdFTP1.Connect ;
Except
Showmessage ('El Archivo no fue Enviado');
End;

If DM.IdFTP1.Connected then
    Begin
      Try
        begin
        DM.IdFTP1.ChangeDir( '/tmp/' );
        ClientDataSet2.SaveToFile(archivo,dfXMLUTF8);
        AssignFile( F, archivo );
        Reset( F );
        ProgressBar1.Max := FileSize( F ) div 1024;
        CloseFile( F );
        DM.IdFTP1.Put( archivo, ExtractFileName( archivo ), False );
        DM.IdFTP1.EndWork(wmRead);
        DM.IdFTP1.Disconnect;
        ShowMessage
        ('El Archivo fue Enviado correctamente');
        end
      except
        begin
          ShowMessage('El Archivo no pudo ser Enviado')
        end
      end;
    End;

end;

end.



