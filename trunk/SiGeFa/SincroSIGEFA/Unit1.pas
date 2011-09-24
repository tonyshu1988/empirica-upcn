unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZConnection, StdCtrls, ZSqlUpdate, EKIni, ExtCtrls, EKEdit,
  ZStoredProcedure, dxBar, dxBarExtItems, EKIconizacion, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP;

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
    procedure ZQ_SincroTablaAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Sincronizar();
    procedure RadioGroup1Click(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnSincronizarClick(Sender: TObject);
    procedure btnBorrarLogClick(Sender: TObject);
    procedure guardarArchivoLog();
    procedure btnOcultarClick(Sender: TObject);
    procedure EKIconizacion1DblClick(Sender: TObject);
    function estaEnBDLocal():Boolean ;
    procedure ZQ_SincTablaLocalAfterScroll(DataSet: TDataSet);
    procedure descargaNovedades();
    procedure conectar();
    procedure btnConectarClick(Sender: TObject);
    procedure btnBajarClick(Sender: TObject);
    procedure subirNovedades();
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

procedure TFPrincipal.Sincronizar();
begin
  try
   begin
     DM.ZC_Local.Disconnect;

      memo1.Lines.Clear;
      memo1.Lines.Clear;
      memo1.Lines.Add('...### Sincronización SiGeFa ###...');
      DM.ZC_Local.Disconnect;
      memo1.Lines.Add('Conectando Base Local: '+DM.ZC_Local.HostName+':'+DM.ZC_Local.Database);
      DM.ZC_Local.Connected:=true;
      memo1.Lines.Add('...Conectado.');
      memo1.Lines.Add('Conectando Base Servidor: '+DM.ZC_Remoto.HostName+':'+DM.ZC_Remoto.Database);
      DM.ZC_Remoto.Connected:=true;
      memo1.Lines.Add('...Conectado.');

      SincronizacionLocal.Close;
      SincronizacionLocal.Open;
      // Me dá el último lote subido desde el Cliente
      SincronizacionLocal.Last;
      ultLoteL:=SincronizacionLocalULTIMO_LOTE_SINC.AsInteger;
      ultFecha:=SincronizacionLocalFECHA.AsDateTime;
      SincronizacionLocal.Close;

     //######################### SECCION DESCARGA DE NOVEDADES #####################################
     // Busco el lote que le sigue a la sincronización que no sea de mi sucursal y fecha mayor/igual al ultimo procesado
     //
     ultLoteR:=0;
     ultSuc:=0;
     ZQ_SincroTabla.close;
     ZQ_SincroTabla.ParamByName('suc').AsInteger:=idSucursal;
     ZQ_SincroTabla.ParamByName('fecha').AsDate:=ultFecha;
     ZQ_SincroTabla.Open;

     while not ZQ_SincroTabla.Eof do
        begin
             if not(estaEnBDLocal()) then
              begin
                memo1.Lines.Add('Tabla:'+ZQ_SincroTablaTABLE_NAME.AsString+' ID:'+ZQ_SincroTablaID.AsString);

                ZQ_SincroCampo.close;
                ZQ_SincroCampo.ParamByName('id').AsInteger:=ZQ_SincroTablaID.AsInteger;
                ZQ_SincroCampo.open;

                Local.SQL.Clear;
                Local.SQL.Add(
                        'select * from '+ZQ_SincroTablaTABLE_NAME.AsString+
                        ' where '+ZQ_SincroTablaPrimaryKEY_FIELD.AsString+'='+ZQ_SincroTablaPrimaryKEY_VALUE.AsString);
                Local.Open;

                if (ZQ_SincroTablaOPERATION.AsString='I') then
                    Local.Append
                else
                  if (ZQ_SincroTablaOPERATION.AsString='U') then
                      Local.Edit;

                while not ZQ_SincroCampo.Eof do
                  begin
                    Local.FieldByName(ZQ_SincroCampoFIELD_NAME.AsString).value:=ZQ_SincroCampoNEW_VALUE.value;
                    ZQ_SincroCampo.Next;
                  end;


                if ZQ_SincroTablaOPERATION.AsString='D' then
                begin
                  if Local.RecordCount=1 then
                    Local.Delete;
                end;
                // Verifico si va cambiando el lote/sucursal, y lo voy guardando para saber cual procesé y cual no
                if ((ultLoteR<>ZQ_SincroTablaLOTE_SINC.AsInteger)and(ultSuc<>ZQ_SincroTablaSUCURSAL.AsInteger)) then
                begin
                  SincronizacionLocal.Open;
                  SincronizacionLocal.Append;
                  SincronizacionLocalULTIMO_LOTE_SINC.AsInteger:=ZQ_SincroTablaLOTE_SINC.AsInteger;
                  SincronizacionLocalSUCURSAL.AsInteger:=ZQ_SincroTablaSUCURSAL.AsInteger;
                  SincronizacionLocal.Post;
                end;
                ultLoteR:=ZQ_SincroTablaLOTE_SINC.AsInteger;
                ultSuc:=ZQ_SincroTablaSUCURSAL.AsInteger;
                Local.ApplyUpdates;
              end;
          ZQ_SincroTabla.Next;
        end;
        ZQ_SincroTabla.ApplyUpdates;
        SincronizacionLocal.ApplyUpdates;


        //###########################################################################################

        //######################### SECCION SUBIDA DE NOVEDADES #####################################

        // Genero el lote de sincronizacion y guardo los cambios
        ZSP_GenerarLoteSinc.Active:=True;
        loteGenerado:=ZSP_GenerarLoteSincLOTESINC.AsInteger;
        ZSP_GenerarLoteSinc.Active:=False;
        DM.ZC_Local.Commit;

        if loteGenerado>0 then
         begin
          //subo los datos al server (el lote nuevo generado)
          ZQ_SincTablaLocal.Close;
          ZQ_SincTablaLocal.ParamByName('lote').AsInteger:=loteGenerado;
          ZQ_SincTablaLocal.ParamByName('suc').AsInteger:=idSucursal;
          ZQ_SincTablaLocal.Open;

          // Un garrón pero dpes hay que ver si se puede mejorar, quizas con el comparador de DATOS
          while not(ZQ_SincTablaLocal.Eof) do
           begin
            ZQ_SincroTabla.Append;
            ZQ_SincroTablaID.Value:=ZQ_SincTablaLocalID.Value;
            ZQ_SincroTablaTABLE_NAME.Value:=ZQ_SincTablaLocalTABLE_NAME.Value;
            ZQ_SincroTablaOPERATION.Value:=ZQ_SincTablaLocalOPERATION.Value;
            ZQ_SincroTablaDATE_TIME.Value:=ZQ_SincTablaLocalDATE_TIME.Value;
            ZQ_SincroTablaUSER_NAME.Value:=ZQ_SincTablaLocalUSER_NAME.Value;
            ZQ_SincroTablaLOTE_SINC.Value:=ZQ_SincTablaLocalLOTE_SINC.Value;
            ZQ_SincroTablaSUCURSAL.Value:=ZQ_SincTablaLocalSUCURSAL.Value;

              //Guardo las demas tablas hijas
              ZQ_SincPTLocal.First;
              while not(ZQ_SincPTLocal.Eof)
              do
                begin
                    ZQ_SincroTablaPrimary.Append;
                    ZQ_SincroTablaPrimaryKEY_FIELD.Value:=ZQ_SincPTLocalKEY_FIELD.Value;
                    ZQ_SincroTablaPrimaryKEY_VALUE.Value:=ZQ_SincPTLocalKEY_VALUE.Value;
                    ZQ_SincroTablaPrimaryLOG_TABLES_ID.Value:=ZQ_SincPTLocalLOG_TABLES_ID.Value;
                    ZQ_SincroTablaPrimary.Post;

                    ZQ_SincPTLocal.Next;
                end;
              ZQ_SincCampo.First;
              while not(ZQ_SincCampo.Eof)
              do
                begin
                    ZQ_SincroCampo.Append;
                    ZQ_SincroCampoLOG_TABLES_ID.Value:=ZQ_SincCampoLOG_TABLES_ID.Value;
                    ZQ_SincroCampoFIELD_NAME.Value:=ZQ_SincCampoFIELD_NAME.Value;
                    ZQ_SincroCampoOLD_VALUE.Value:=ZQ_SincCampoOLD_VALUE.Value;
                    ZQ_SincroCampoNEW_VALUE.Value:=ZQ_SincCampoNEW_VALUE.Value;
                    ZQ_SincroCampo.Post;

                    ZQ_SincCampo.Next;
                end;

            ZQ_SincroTabla.Post;
            ZQ_SincTablaLocal.Next;
          end;

          ZQ_SincroTabla.ApplyUpdates;
          ZQ_SincroTablaPrimary.ApplyUpdates;
          ZQ_SincroCampo.ApplyUpdates;

          // Marco como que lo subí al server (por si necesito saber lo que subí)
          SincronizacionLocal.Close;
          SincronizacionLocal.Open;
          SincronizacionLocal.Append;
          SincronizacionLocalULTIMO_LOTE_SINC.AsInteger:=loteGenerado;
          SincronizacionLocalSUCURSAL.AsInteger:=idSucursal;
          SincronizacionLocal.ApplyUpdates;

          //###########################################################################################333
        end;

        DM.ZC_Remoto.Commit;
        DM.ZC_Local.Commit;

        Local.Close;
        Remoto.Close;

        // Creo el archivo LOG para futuros chequeos...
        guardarArchivoLog();
   end
  except
     on E: Exception do
      begin

        DM.ZC_Remoto.Disconnect;
        DM.ZC_Local.Disconnect;

        memo1.Lines.Add(E.Message);
        memo1.Lines.Add('ERROR Sincronización!!...');
      end;
  end;

end;

procedure TFPrincipal.ZQ_SincroTablaAfterScroll(DataSet: TDataSet);
begin
ZQ_SincroTablaPrimary.close;
ZQ_SincroTablaPrimary.ParamByName('id').value:=ZQ_SincroTablaID.Value;
ZQ_SincroTablaPrimary.open;

ZQ_SincroCampo.close;
ZQ_SincroCampo.ParamByName('id').value:=ZQ_SincroTablaID.Value;
ZQ_SincroCampo.open;

end;

procedure TFPrincipal.FormCreate(Sender: TObject);
var
  dir : string;
begin

  DM.ZC_Remoto.Connected:=False;
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

        DM.ZC_Remoto.Disconnect;
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
      Sincronizar();
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
    Application.Terminate;
  end;
end;

procedure TFPrincipal.btnSincronizarClick(Sender: TObject);
begin
  Sincronizar;
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

estaSincronizado.Close;
estaSincronizado.ParamByName('suc').AsInteger:=ZQ_SincroTablaSUCURSAL.AsInteger;
estaSincronizado.ParamByName('lote').AsInteger:=ZQ_SincroTablaLOTE_SINC.AsInteger;
estaSincronizado.Open;

Result:=estaSincronizadoCOUNT.AsInteger>0;

end;


procedure TFPrincipal.ZQ_SincTablaLocalAfterScroll(DataSet: TDataSet);
begin
  ZQ_SincPTLocal.close;
  ZQ_SincPTLocal.ParamByName('id').value:=ZQ_SincTablaLocalID.Value;
  ZQ_SincPTLocal.open;

  ZQ_SincCampo.close;
  ZQ_SincCampo.ParamByName('id').value:=ZQ_SincTablaLocalID.Value;
  ZQ_SincCampo.open;
end;

procedure TFPrincipal.descargaNovedades;
begin
if (dm.ZC_Remoto.Connected and dm.ZC_Local.Connected) then
  try
   begin

     SincronizacionLocal.Close;
     SincronizacionLocal.Open;
     // Me dá el último lote subido desde el Cliente
     SincronizacionLocal.Last;
     ultLoteL:=SincronizacionLocalULTIMO_LOTE_SINC.AsInteger;
     ultFecha:=SincronizacionLocalFECHA.AsDateTime;
     SincronizacionLocal.Close;

     //######################### SECCION DESCARGA DE NOVEDADES #####################################
     // Busco el lote que le sigue a la sincronización que no sea de mi sucursal y fecha mayor/igual al ultimo procesado
     //
     ultLoteR:=0;
     ultSuc:=0;
     ZQ_SincroTabla.close;
     ZQ_SincroTabla.ParamByName('suc').AsInteger:=idSucursal;
     ZQ_SincroTabla.ParamByName('fecha').AsDate:=ultFecha;
     ZQ_SincroTabla.Open;

     while not ZQ_SincroTabla.Eof do
        begin
             if not(estaEnBDLocal()) then
              begin
                memo1.Lines.Add('Tabla:'+ZQ_SincroTablaTABLE_NAME.AsString+' ID:'+ZQ_SincroTablaID.AsString);

                ZQ_SincroCampo.close;
                ZQ_SincroCampo.ParamByName('id').AsInteger:=ZQ_SincroTablaID.AsInteger;
                ZQ_SincroCampo.open;

                Local.SQL.Clear;
                Local.SQL.Add(
                        'select * from '+ZQ_SincroTablaTABLE_NAME.AsString+
                        ' where '+ZQ_SincroTablaPrimaryKEY_FIELD.AsString+'='+ZQ_SincroTablaPrimaryKEY_VALUE.AsString);
                Local.Open;

                if (ZQ_SincroTablaOPERATION.AsString='I') then
                    Local.Append
                else
                  if (ZQ_SincroTablaOPERATION.AsString='U') then
                      Local.Edit;

                while not ZQ_SincroCampo.Eof do
                  begin
                    Local.FieldByName(ZQ_SincroCampoFIELD_NAME.AsString).value:=ZQ_SincroCampoNEW_VALUE.value;
                    ZQ_SincroCampo.Next;
                  end;


                if ZQ_SincroTablaOPERATION.AsString='D' then
                begin
                  if Local.RecordCount=1 then
                    Local.Delete;
                end;
                // Verifico si va cambiando el lote/sucursal, y lo voy guardando para saber cual procesé y cual no
                if ((ultLoteR<>ZQ_SincroTablaLOTE_SINC.AsInteger)and(ultSuc<>ZQ_SincroTablaSUCURSAL.AsInteger)) then
                begin
                  SincronizacionLocal.Open;
                  SincronizacionLocal.Append;
                  SincronizacionLocalULTIMO_LOTE_SINC.AsInteger:=ZQ_SincroTablaLOTE_SINC.AsInteger;
                  SincronizacionLocalSUCURSAL.AsInteger:=ZQ_SincroTablaSUCURSAL.AsInteger;
                  SincronizacionLocal.Post;
                end;
                ultLoteR:=ZQ_SincroTablaLOTE_SINC.AsInteger;
                ultSuc:=ZQ_SincroTablaSUCURSAL.AsInteger;
                Local.ApplyUpdates;
              end;
          ZQ_SincroTabla.Next;
        end;
        ZQ_SincroTabla.ApplyUpdates;
        SincronizacionLocal.ApplyUpdates;

        DM.ZC_Remoto.Commit;
        DM.ZC_Local.Commit;

        Local.Close;
        Remoto.Close;

        // Creo el archivo LOG para futuros chequeos...
        guardarArchivoLog();
   end
  except
     on E: Exception do
      begin

        DM.ZC_Remoto.Disconnect;
        DM.ZC_Local.Disconnect;

        memo1.Lines.Add(E.Message);
        memo1.Lines.Add('ERROR Sincronización!!...');
      end;
  end;

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
        IdFTP1.Disconnect;
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
  descargaNovedades();
end;

procedure TFPrincipal.subirNovedades;
begin
 if (dm.ZC_Remoto.Connected and dm.ZC_Local.Connected) then
  begin
      try
      begin
      // Genero el lote de sincronizacion y guardo los cambios
      ZSP_GenerarLoteSinc.Active:=True;
      loteGenerado:=ZSP_GenerarLoteSincLOTESINC.AsInteger;
      ZSP_GenerarLoteSinc.Active:=False;
      DM.ZC_Local.Commit;

      if loteGenerado>0 then
       begin
        //subo los datos al server (el lote nuevo generado)
        ZQ_SincTablaLocal.Close;
        ZQ_SincTablaLocal.ParamByName('lote').AsInteger:=loteGenerado;
        ZQ_SincTablaLocal.ParamByName('suc').AsInteger:=idSucursal;
        ZQ_SincTablaLocal.Open;

        ZQ_SincroTabla.Close;
        ZQ_SincroTabla.Open;
        ZQ_SincroTablaPrimary.Close;
        ZQ_SincroTablaPrimary.Open;
        ZQ_SincroCampo.Close;
        ZQ_SincroCampo.Open;

        // Un garrón pero dpes hay que ver si se puede mejorar, quizas con el comparador de DATOS
        while not(ZQ_SincTablaLocal.Eof) do
         begin
          ZQ_SincroTabla.Append;
          ZQ_SincroTablaID.Value:=ZQ_SincTablaLocalID.Value;
          ZQ_SincroTablaTABLE_NAME.Value:=ZQ_SincTablaLocalTABLE_NAME.Value;
          ZQ_SincroTablaOPERATION.Value:=ZQ_SincTablaLocalOPERATION.Value;
          ZQ_SincroTablaDATE_TIME.Value:=ZQ_SincTablaLocalDATE_TIME.Value;
          ZQ_SincroTablaUSER_NAME.Value:=ZQ_SincTablaLocalUSER_NAME.Value;
          ZQ_SincroTablaLOTE_SINC.Value:=ZQ_SincTablaLocalLOTE_SINC.Value;
          ZQ_SincroTablaSUCURSAL.Value:=ZQ_SincTablaLocalSUCURSAL.Value;

            //Guardo las demas tablas hijas
            ZQ_SincPTLocal.First;
            while not(ZQ_SincPTLocal.Eof)
            do
              begin
                  ZQ_SincroTablaPrimary.Append;
                  ZQ_SincroTablaPrimaryKEY_FIELD.Value:=ZQ_SincPTLocalKEY_FIELD.Value;
                  ZQ_SincroTablaPrimaryKEY_VALUE.Value:=ZQ_SincPTLocalKEY_VALUE.Value;
                  ZQ_SincroTablaPrimaryLOG_TABLES_ID.Value:=ZQ_SincPTLocalLOG_TABLES_ID.Value;
                  ZQ_SincroTablaPrimary.Post;

                  ZQ_SincPTLocal.Next;
              end;
            ZQ_SincCampo.First;
            while not(ZQ_SincCampo.Eof)
            do
              begin
                  ZQ_SincroCampo.Append;
                  ZQ_SincroCampoLOG_TABLES_ID.Value:=ZQ_SincCampoLOG_TABLES_ID.Value;
                  ZQ_SincroCampoFIELD_NAME.Value:=ZQ_SincCampoFIELD_NAME.Value;
                  ZQ_SincroCampoOLD_VALUE.Value:=ZQ_SincCampoOLD_VALUE.Value;
                  ZQ_SincroCampoNEW_VALUE.Value:=ZQ_SincCampoNEW_VALUE.Value;
                  ZQ_SincroCampo.Post;

                  ZQ_SincCampo.Next;
              end;

          ZQ_SincroTabla.Post;
          ZQ_SincTablaLocal.Next;
        end;

        ZQ_SincroTabla.ApplyUpdates;
        ZQ_SincroTablaPrimary.ApplyUpdates;
        ZQ_SincroCampo.ApplyUpdates;

        // Marco como que lo subí al server (por si necesito saber lo que subí)
        SincronizacionLocal.Close;
        SincronizacionLocal.Open;
        SincronizacionLocal.Append;
        SincronizacionLocalULTIMO_LOTE_SINC.AsInteger:=loteGenerado;
        SincronizacionLocalSUCURSAL.AsInteger:=idSucursal;
        SincronizacionLocal.ApplyUpdates;

        DM.ZC_Remoto.Commit;
        DM.ZC_Local.Commit;

        Local.Close;
        Remoto.Close;

        // Creo el archivo LOG para futuros chequeos...
        guardarArchivoLog();
      end;
      end;
      except
        on E: Exception do
        begin
        DM.ZC_Remoto.Disconnect;
        DM.ZC_Local.Disconnect;
        memo1.Lines.Add(E.Message);
        memo1.Lines.Add('ERROR Sincronización!!...');
      end;
      end;

  end;

end;

procedure TFPrincipal.btnSubirClick(Sender: TObject);
begin
  subirNovedades();
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   dm.ZC_Remoto.Disconnect;
   dm.ZC_Local.Disconnect;
end;

function TFPrincipal.bajarXML(archivo: String): Boolean;
Var
F: File of byte;
begin
IdFTP1.Username := 'grupogua';
IdFTP1.Password := 'grupo78gua';
IdFTP1.Host := 'grupoguadalupe.com.ar';

Try
IdFTP1.Connect ;
Except
Showmessage ('El Archivo no fue Recibido');
End;

If IdFTP1.Connected then
    Begin
      Try
        begin
        IdFTP1.ChangeDir( '/tmp/' );
        archivo:=edArchivo.Text;
        //ClientDataSet2.SaveToFile(narchivo,dfXMLUTF8);
        ProgressBar1.Max := IdFTP1.Size( ExtractFileName( archivo ) ) div 1024;
         if FileExists( archivo ) then
            DeleteFile( archivo );
        IdFTP1.Get(ExtractFileName( archivo ),archivo,False,False );
        IdFTP1.EndWork(wmRead);
        IdFTP1.Disconnect;
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
IdFTP1.Username := 'grupogua';
IdFTP1.Password := 'grupo78gua';
IdFTP1.Host := 'grupoguadalupe.com.ar';

Try
IdFTP1.Connect ;
Except
Showmessage ('El Archivo no fue Enviado');
End;

If IdFTP1.Connected then
    Begin
      Try
        begin
        IdFTP1.ChangeDir( '/tmp/' );
        ClientDataSet2.SaveToFile(archivo,dfXMLUTF8);
        AssignFile( F, archivo );
        Reset( F );
        ProgressBar1.Max := FileSize( F ) div 1024;
        CloseFile( F );
        IdFTP1.Put( archivo, ExtractFileName( archivo ), False );
        IdFTP1.EndWork(wmRead);
        IdFTP1.Disconnect;
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



