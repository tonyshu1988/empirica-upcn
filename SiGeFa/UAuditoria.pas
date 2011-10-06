unit UAuditoria;
                     
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, Mask, ExtCtrls, dxBar,
  dxBarExtItems, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  EKLlenarCombo, DBClient, ComCtrls, ZSqlUpdate, StrUtils, EKOrdenarGrilla;

type
  TFAuditoria = class(TForm)
    PanelFondo: TPanel;
    dxBarABM: TdxBarManager;
    btnRefrescar: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoVisualizando: TdxBarGroup;
    GrupoEditando: TdxBarGroup;
    PanelGrilla: TPanel;
    DBGridAudGeneral: TDBGrid;
    DBGridAudDetallada: TDBGrid;
    ZQ_AudGeneral: TZQuery;
    ZQ_AudDetallada: TZQuery;
    DS_AudGeneral: TDataSource;
    DS_AudDetallada: TDataSource;
    ZQ_AudGeneralID: TLargeintField;
    ZQ_AudGeneralTABLE_NAME: TStringField;
    ZQ_AudGeneralOPERATION: TStringField;
    ZQ_AudGeneralDATE_TIME: TDateTimeField;
    ZQ_AudGeneralUSER_NAME: TStringField;
    ZQ_AudDetalladaCAMPO: TStringField;
    ZQ_AudDetalladaVALOR_VIEJO: TStringField;
    ZQ_AudDetalladaVALOR_NUEVO: TStringField;
    ZQ_AudGeneralLOG_TABLES_ID: TFloatField;
    ZQ_AudGeneralKEY_FIELD: TStringField;
    ZQ_AudGeneralKEY_VALUE: TStringField;
    Panel1: TPanel;
    DBGridDatosTabla: TDBGrid;
    ZQ_DatosTabla: TZQuery;
    DS_DatosTabla: TDataSource;
    ZQ_User: TZQuery;
    ZQ_UserUSUARIO: TStringField;
    ZQ_UserNOMBRE: TStringField;
    ZQ_UserDB_USR: TStringField;
    ZQ_AudGeneralNombre_Usuario: TStringField;
    ZQ_AudGeneralUsuario: TStringField;
    DS_User: TDataSource;
    ZQ_AudDetalladaVALOR_REF_VIEJO: TStringField;
    ZQ_AudDetalladaVALOR_REF_NUEVO: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label2: TLabel;
    cBoxAccion: TComboBox;
    Label3: TLabel;
    cBoxUsuarios: TComboBox;
    btnTodosUsuarios: TButton;
    ZQ_ComboUsuario: TZQuery;
    DBGridTabla: TDBGrid;
    ZQ_tabla: TZQuery;
    ZQ_tablaTABLE_NAME: TStringField;
    DS_tabla: TDataSource;
    CD_Tablas: TClientDataSet;
    CD_Tablas_Tabla: TStringField;
    btnEliminarAuditoria: TdxBarLargeButton;
    ZQ_EliminarAuditoria: TZQuery;
    btnActivarFecha: TButton;
    EKLlenarCombo1: TEKLlenarCombo;
    DBGridDatosProducto: TDBGrid;
    ZQ_DatosStock: TZQuery;
    DS_DatosProducto: TDataSource;
    ZQ_DatosStockCOD_CABECERA: TStringField;
    ZQ_DatosStockNOMBRE: TStringField;
    ZQ_DatosStockMEDIDA: TStringField;
    ZQ_DatosStockNOMBRE_MARCA: TStringField;
    ZQ_DatosStockCOLOR: TStringField;
    ZQ_DatosStockCOD_PRODUCTO: TStringField;
    ZQ_DatosStockCODIGO_BARRA: TStringField;
    ZQ_DatosStockARTICULO: TStringField;
    ZQ_DatosProducto: TZQuery;
    ZQ_DatosProductoCOD_CABECERA: TStringField;
    ZQ_DatosProductoNOMBRE: TStringField;
    ZQ_DatosProductoMEDIDA: TStringField;
    ZQ_DatosProductoNOMBRE_MARCA: TStringField;
    ZQ_DatosProductoCOLOR: TStringField;
    ZQ_DatosProductoCOD_PRODUCTO: TStringField;
    ZQ_DatosProductoCODIGO_BARRA: TStringField;
    ZQ_DatosProductoARTICULO: TStringField;
    ZQ_DatosProductoID_PRODUCTO: TIntegerField;
    ZQ_DatosStockID_PRODUCTO: TIntegerField;
    EKOrdenarGrilla1: TEKOrdenarGrilla;
    procedure FormCreate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure ZQ_AudGeneralAfterScroll(DataSet: TDataSet);
    procedure DBGridAudGeneralDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cBoxAccionChange(Sender: TObject);
    procedure buscarAudotoria();
    procedure DateTimePicker1Change(Sender: TObject);
    procedure btnTodosUsuariosClick(Sender: TObject);
    procedure ISLlenarCombo1Cambio(valor: String);
    procedure CD_TablasAfterScroll(DataSet: TDataSet);
    procedure llenarGrillaTablas();
    procedure DBGridTablaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridDatosTablaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridAudDetalladaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnRefrescarClick(Sender: TObject);
    procedure btnEliminarAuditoriaClick(Sender: TObject);
    procedure btnActivarFechaClick(Sender: TObject);
    procedure buscarProducto();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAuditoria: TFAuditoria;

const
  Transaccion_Audit = 'AUDITORIA';

implementation

uses UPrincipal, UDM;

{$R *.dfm}


procedure TFAuditoria.FormCreate(Sender: TObject);
begin
//  ZQ_User.Connection:= dm.Conexion_User;
//  ZQ_ComboUsuario.Connection:= dm.Conexion_User;

  TStringGrid(DBGridTabla).Scrollbars:=ssVertical;
  TStringGrid(DBGridDatosTabla).Scrollbars:=ssVertical;
  TStringGrid(DBGridDatosProducto).Scrollbars:=ssVertical;
  DateTimePicker1.Date:= dm.ekModelo.Fecha();
//  ZQ_User.Close;
//  ZQ_User.Open;
//  EKLlenarCombo1.CargarCombo;

  CD_Tablas.Active := false;
  CD_Tablas.CreateDataSet;
  llenarGrillaTablas();
end;


procedure TFAuditoria.llenarGrillaTablas();
begin
  CD_Tablas.EmptyDataSet;  
  CD_Tablas.Append;
  CD_Tablas_Tabla.AsString:= 'TODAS LAS TABLAS';
  ZQ_tabla.Close;
  ZQ_tabla.Open;
  ZQ_tabla.First;
  while not ZQ_tabla.Eof do
  begin
    CD_Tablas.Append;
    CD_Tablas_Tabla.AsString:= ZQ_tablaTABLE_NAME.AsString;
    ZQ_tabla.Next;
  end;
  CD_Tablas.First;

  buscarAudotoria();
end;


procedure TFAuditoria.btnSalirClick(Sender: TObject);
begin
  close;
end;


procedure TFAuditoria.buscarProducto();
begin
  DBGridDatosProducto.Height:= 1;
  if (ZQ_AudGeneralTABLE_NAME.AsString  = 'STOCK_PRODUCTO') then
  begin
    DBGridDatosProducto.Height:= 40;
    ZQ_DatosStock.Close;
    ZQ_DatosStock.ParamByName('id_stock').AsInteger:= ZQ_AudGeneralKEY_VALUE.AsInteger;
    ZQ_DatosStock.Open;
    DS_DatosProducto.DataSet:= ZQ_DatosStock;
  end
  else
    if (ZQ_AudGeneralTABLE_NAME.AsString  = 'PRODUCTO') then
    begin
      DBGridDatosProducto.Height:= 40;
      ZQ_DatosProducto.Close;
      ZQ_DatosProducto.ParamByName('id_producto').AsInteger:= ZQ_AudGeneralKEY_VALUE.AsInteger;
      ZQ_DatosProducto.Open;
      DS_DatosProducto.DataSet:= ZQ_DatosProducto;
    end;
end;


procedure TFAuditoria.ZQ_AudGeneralAfterScroll(DataSet: TDataSet);
var
  sql: string;
begin
  if ZQ_AudGeneral.IsEmpty then
  begin
    exit;
  end;

  ZQ_AudDetallada.Close;
  ZQ_AudDetallada.ParamByName('id_tabla').AsInteger:= ZQ_AudGeneralID.AsInteger;
  ZQ_AudDetallada.open;

  sql:= 'select * from '+ZQ_AudGeneralTABLE_NAME.AsString+' where '+ZQ_AudGeneralKEY_FIELD.AsString+' = '+ZQ_AudGeneralKEY_VALUE.AsString;
  ZQ_DatosTabla.Close;
  ZQ_DatosTabla.SQL.Text:= sql;
  ZQ_DatosTabla.Open;

  buscarProducto();
end;


procedure TFAuditoria.DBGridAudGeneralDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    begin
       if (ZQ_AudGeneralOPERATION.AsString = 'I' ) then //INSERTAR
          begin
           DBGridAudGeneral.Canvas.Brush.Color :=$0080FF80;
           DBGridAudGeneral.Canvas.Font.Color := clBlack;
           if (gdFocused in State) or (gdSelected in State) then
             begin
             DBGridAudGeneral.Canvas.Brush.Color:= clLime;
             DBGridAudGeneral.Canvas.Font.Style := DBGridAudGeneral.Canvas.Font.Style + [fsBold];
             end
          end;
       if (ZQ_AudGeneralOPERATION.AsString = 'U' ) then //MODIFICAR
          begin
           DBGridAudGeneral.Canvas.Brush.Color :=$0080FFFF;
           DBGridAudGeneral.Canvas.Font.Color := clBlack;
           if (gdFocused in State) or (gdSelected in State) then
             begin
             DBGridAudGeneral.Canvas.Brush.Color:= clYellow;
             DBGridAudGeneral.Canvas.Font.Style := DBGridAudGeneral.Canvas.Font.Style + [fsBold];
             end
          end;
       if (ZQ_AudGeneralOPERATION.AsString = 'D' ) then //BORRAR
          begin
           DBGridAudGeneral.Canvas.Brush.Color :=$008080FF;
           DBGridAudGeneral.Canvas.Font.Color := clBlack;
           if (gdFocused in State) or (gdSelected in State) then
             begin
             DBGridAudGeneral.Canvas.Brush.Color:= clRed;
             DBGridAudGeneral.Canvas.Font.Style := DBGridAudGeneral.Canvas.Font.Style + [fsBold];
             end
          end;
       DBGridAudGeneral.DefaultDrawColumnCell(rect,datacol,column,state);
    end;
end;


procedure TFAuditoria.cBoxAccionChange(Sender: TObject);
begin
  buscarAudotoria();
end;


procedure TFAuditoria.DateTimePicker1Change(Sender: TObject);
begin
  buscarAudotoria();
end;


procedure TFAuditoria.buscarAudotoria();
begin
  ZQ_DatosTabla.Close;
  ZQ_AudDetallada.Close;

  ZQ_AudGeneral.Close;

  //FECHA
  if DateTimePicker1.Enabled then //si la fecha esta habilitada
  begin
    ZQ_AudGeneral.ParamByName('fecha').AsDate:= DateTimePicker1.Date;
    ZQ_AudGeneral.ParamByName('todas_fecha').Clear;
  end
  else
  begin
    ZQ_AudGeneral.ParamByName('fecha').clear;
    ZQ_AudGeneral.ParamByName('todas_fecha').AsString:= 'SI';
  end;

  //ACCION
  case cBoxAccion.ItemIndex of
   0: begin
        ZQ_AudGeneral.ParamByName('accion').AsString:= 'T';
      end;
   1: begin
        ZQ_AudGeneral.ParamByName('accion').AsString:= 'I';
      end;
   2: begin
        ZQ_AudGeneral.ParamByName('accion').AsString:= 'U';
      end;
   3: begin
        ZQ_AudGeneral.ParamByName('accion').AsString:= 'D';
      end;
  end;

  //USUARIO
  if cBoxUsuarios.Text = '' then
  begin
    ZQ_AudGeneral.ParamByName('todos_usuario').AsString:= 'SI';
    ZQ_AudGeneral.ParamByName('usuario').Clear;
  end
  else
  begin
//    ZQ_AudGeneral.ParamByName('todos_usuario').Clear;
//    ZQ_AudGeneral.ParamByName('usuario').AsString:= UpperCase(ISLlenarCombo1.SelectClave);
  end;

  //TABLA
  if CD_Tablas_Tabla.AsString = 'TODAS LAS TABLAS' then
  begin
    ZQ_AudGeneral.ParamByName('todas_tablas').AsString:= 'SI';
    ZQ_AudGeneral.ParamByName('tabla').Clear;
  end
  else
  begin
    ZQ_AudGeneral.ParamByName('todas_tablas').Clear;
    ZQ_AudGeneral.ParamByName('tabla').AsString:= UpperCase(CD_Tablas_Tabla.AsString);
  end;

  ZQ_AudGeneral.Open;
end;


procedure TFAuditoria.btnTodosUsuariosClick(Sender: TObject);
begin
  try
    cBoxUsuarios.ItemIndex:= -1;
  finally
    begin
      buscarAudotoria;
    end
  end;
end;


procedure TFAuditoria.ISLlenarCombo1Cambio(valor: String);
begin
  buscarAudotoria();
end;


procedure TFAuditoria.CD_TablasAfterScroll(DataSet: TDataSet);
begin
  if ((CD_Tablas.IsEmpty) or (CD_Tablas.State = dsInsert)) then
    exit;

  buscarProducto;
  buscarAudotoria;
end;


procedure TFAuditoria.DBGridTablaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdFocused in State) or (gdSelected in State) then
  begin
    DBGridTabla.Canvas.Font.Color := clwhite;
    DBGridTabla.Canvas.Brush.Color:= $00FB952F;
    DBGridTabla.Canvas.Font.Style := DBGridTabla.Canvas.Font.Style + [fsBold];
  end;
  DBGridTabla.DefaultDrawColumnCell(rect,datacol,column,state);
end;


procedure TFAuditoria.DBGridDatosTablaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdFocused in State) or (gdSelected in State) then
  begin
    DBGridDatosTabla.Canvas.Font.Color := clwhite;
    DBGridDatosTabla.Canvas.Brush.Color:= $00FB952F;
    DBGridDatosTabla.Canvas.Font.Style := DBGridDatosTabla.Canvas.Font.Style + [fsBold];
  end;
  DBGridDatosTabla.DefaultDrawColumnCell(rect,datacol,column,state);
end;


procedure TFAuditoria.DBGridAudDetalladaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (gdFocused in State) or (gdSelected in State) then
  begin
    DBGridAudDetallada.Canvas.Font.Color := clwhite;
    DBGridAudDetallada.Canvas.Brush.Color:= $00FB952F;
    DBGridAudDetallada.Canvas.Font.Style := DBGridAudDetallada.Canvas.Font.Style + [fsBold];
  end;
  DBGridAudDetallada.DefaultDrawColumnCell(rect,datacol,column,state);
end;


procedure TFAuditoria.btnRefrescarClick(Sender: TObject);
begin
  llenarGrillaTablas;
end;


procedure TFAuditoria.btnEliminarAuditoriaClick(Sender: TObject);
begin
  if dm.ekModelo.iniciar_transaccion(Transaccion_Audit, []) then
  begin
    try
      ZQ_EliminarAuditoria.Close;

      //Parametro TABLAS
      if CD_Tablas_Tabla.AsString = 'TODAS LAS TABLAS' then
      begin
        ZQ_EliminarAuditoria.ParamByName('no_tabla').AsString:= 'S';
        ZQ_EliminarAuditoria.ParamByName('tabla').Clear;
      end
      else
      begin
        ZQ_EliminarAuditoria.ParamByName('no_tabla').Clear;
        ZQ_EliminarAuditoria.ParamByName('tabla').AsString:= CD_Tablas_Tabla.AsString;
      end;

      //Parametro USUARIO
      if cBoxUsuarios.Text = '' then
      begin
        ZQ_EliminarAuditoria.ParamByName('no_usuario').AsString:= 'S';
        ZQ_EliminarAuditoria.ParamByName('usuario').Clear;
      end
      else
      begin
//        ZQ_EliminarAuditoria.ParamByName('no_usuario').Clear;
//        ZQ_EliminarAuditoria.ParamByName('usuario').AsString:= UpperCase(ISLlenarCombo1.SelectClave);
      end;

      //Parametro OPERACION
      if cBoxAccion.Text = 'TODO' then
      begin
        ZQ_EliminarAuditoria.ParamByName('no_operacion').AsString:= 'S';
        ZQ_EliminarAuditoria.ParamByName('operacion').Clear;
      end
      else
      begin
        ZQ_EliminarAuditoria.ParamByName('no_operacion').Clear;
        ZQ_EliminarAuditoria.ParamByName('operacion').AsString:= UpperCase(LeftStr(cBoxAccion.Text, 1));
      end;

      //Parametro FECHA
      if DateTimePicker1.Enabled then //si la fecha esta habilitada
      begin
        ZQ_EliminarAuditoria.ParamByName('no_fecha').Clear;
        ZQ_EliminarAuditoria.ParamByName('fecha').AsDate:= DateTimePicker1.Date;
      end
      else
      begin
        ZQ_EliminarAuditoria.ParamByName('no_fecha').AsString:= 'S';
        ZQ_EliminarAuditoria.ParamByName('fecha').Clear;
      end;

      ZQ_EliminarAuditoria.ExecSQL;
    finally //si se produce una excepcion cierro la transaccion y pongo en false la variable triggerActivo
      if not dm.ekModelo.finalizar_transaccion(Transaccion_Audit) then
      begin
          dm.ekModelo.cancelar_transaccion(Transaccion_Audit);
          ShowMessage('No se pudo eliminar la Auditoria!');
      end
      else
          ShowMessage('Auditoria eliminada con exito!');
    end;
  end;

  btnRefrescar.Click;
end;


procedure TFAuditoria.btnActivarFechaClick(Sender: TObject);
begin
  DateTimePicker1.Enabled:= not DateTimePicker1.Enabled;
  if DateTimePicker1.Enabled then
    btnActivarFecha.Caption:= 'Desactivar Fecha'
  else
    btnActivarFecha.Caption:= 'Activar Fecha';

  buscarAudotoria;
end;

end.
