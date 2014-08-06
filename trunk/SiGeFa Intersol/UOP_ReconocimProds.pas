unit UOP_ReconocimProds;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, QRCtrls, QuickRpt, dxBar,
  dxBarExtItems, cxClasses, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Menus, ISListadoSQL, ISLlenarCombo,UBuscarProducto,
  ISBusquedaAvanzada, ISAlmacenSQL, ZSqlUpdate, ISVistaPreviaQR,
  ISOrdenarGrilla, ActnList, XPStyleActnCtrls, ActnMan;

type
  TFOP_ReconocimientoProds = class(TForm)
    dxBarABM: TdxBarManager;
    dxBarABMBar1: TdxBar;
    btnActualizar: TdxBarLargeButton;
    btnBuscarProds: TdxBarLargeButton;
    btnNuevo: TdxBarLargeButton;
    btnModificar: TdxBarLargeButton;
    btnBaja: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelFondo: TPanel;
    RepProds: TQuickRep;
    QRBand9: TQRBand;
    QRDBLogo: TQRDBImage;
    QRLabel17: TQRLabel;
    RepProds_Subtitulo: TQRLabel;
    RepProds_Titulo: TQRLabel;
    QRBand10: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand11: TQRBand;
    QRlblPieDePagina: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand12: TQRBand;
    QRExpr18: TQRExpr;
    TitleBand2: TQRBand;
    qrPlan: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    QRLabel30: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    PanelGrilla: TPanel;
    PBusqueda: TPanel;
    grillaProductos: TDBGrid;
    PopupProductos: TPopupMenu;
    PopItemProducto_Agregar: TMenuItem;
    PopItemProducto_Quitar: TMenuItem;
    ZQ_Productos: TZQuery;
    ZQ_Planes: TZQuery;
    DS_Planes: TDataSource;
    ZQ_PlanProducto: TZQuery;
    DS_PlanProducto: TDataSource;
    ZQ_PlanProductoID_PRODUCTOS_RECONOCIDOS: TIntegerField;
    ZQ_PlanProductoMONTO_RECONOCIDO: TFloatField;
    ZQ_PlanProductoID_PRODUCTO: TIntegerField;
    ZQ_PlanProductoID_OS: TIntegerField;
    ISListadoProducto: TISListadoSQL;
    ZQ_PlanProducto_nombreProd: TStringField;
    ZQ_PlanProducto_pventa: TFloatField;
    ZQ_ProductosID_PRODUCTO: TIntegerField;
    ZQ_ProductosPOSICSUCURSAL: TStringField;
    ZQ_ProductosPRECIO_VENTA: TFloatField;
    Label1: TLabel;
    ISLlenarCombo1: TISLlenarCombo;
    cmbPlan: TComboBox;
    ZQ_PlanesID_OS: TIntegerField;
    ZQ_PlanesCODIGO: TStringField;
    ZQ_PlanesNOMBREPLAN: TStringField;
    ZQ_PlanesNOMBREOSS: TStringField;
    ZQ_PlanesDETALLE: TStringField;
    lblCantidadRegistros: TLabel;
    ISBusquedaAvanzada1: TISBusquedaAvanzada;
    ISBuscarProducto: TISBusquedaAvanzada;
    ISConsultas: TISAlmacenSQL;
    ZU_PlanProducto: TZUpdateSQL;
    ISVistaPreviaQR1: TISVistaPreviaQR;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    ATeclasRapidas: TActionManager;
    ABuscar: TAction;
    ANuevo: TAction;
    ATipoIVA: TAction;
    ACliente: TAction;
    ASalir: TAction;
    AGuardar: TAction;
    ACancelar: TAction;
    AVendedor: TAction;
    ANuevoProd: TAction;
    ANuevaFormaPago: TAction;
    APreventa: TAction;
    AVentaRapida: TAction;
    ISOrdenarGrilla1: TISOrdenarGrilla;
    procedure FormCreate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure PopItemProducto_AgregarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure ZQ_PlanProductoBeforePost(DataSet: TDataSet);
    procedure ISLlenarCombo1Cambio(valor: String);
    procedure btnActualizarClick(Sender: TObject);
    procedure aplicarActualizacion(importe,coef,porc:Double);
    procedure btnBuscarProdsClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    vsel: TFBuscarProducto;
    procedure onSelProducto;
    procedure onSelTodosProducto;

  public
    { Public declarations }
  end;

var
  FOP_ReconocimientoProds: TFOP_ReconocimientoProds;

const
  transaccion_coberturaPlan = 'COBERTURA_PLAN';
  transaccion_coberturaPlan2 = 'ACTUALIZACION_PLAN';

implementation

uses UDM;

{$R *.dfm}

procedure TFOP_ReconocimientoProds.FormCreate(Sender: TObject);
begin
   dm.ISModelo.abrir(ZQ_Planes);
   dm.ISModelo.abrir(ZQ_Productos);

   ISOrdenarGrilla1.QuitarPopUpGrilla;

   ISLlenarCombo1.CargarCombo;

   GrupoEditando.Enabled:=true;
   GrupoGuardarCancelar.Enabled:=false;
end;

procedure TFOP_ReconocimientoProds.btnSalirClick(Sender: TObject);
begin
Close;
end;

procedure TFOP_ReconocimientoProds.btnModificarClick(Sender: TObject);
begin
  if ZQ_Planes.IsEmpty then
    exit;

  if dm.ISModelo.iniciar_transaccion(transaccion_coberturaPlan, [ZQ_PlanProducto]) then
  begin
      ZQ_PlanProducto.Edit;
      cmbPlan.Enabled:=False;
      grillaProductos.Enabled:=true;
      ISOrdenarGrilla1.AgregarPopUpGrilla(PopupProductos);
      GrupoEditando.Enabled:=false;
      GrupoGuardarCancelar.Enabled:=true;

      grillaProductos.SetFocus;
  end;
end;

procedure TFOP_ReconocimientoProds.btnGuardarClick(Sender: TObject);
begin

  if dm.ISModelo.verificar_transaccion(transaccion_coberturaPlan) then
   begin

       if not dm.ISModelo.finalizar_transaccion(transaccion_coberturaPlan) then
              dm.ISModelo.cancelar_transaccion(transaccion_coberturaPlan);
       cmbPlan.Enabled:=True;
       ISOrdenarGrilla1.QuitarPopUpGrilla;
       GrupoEditando.Enabled:=true;
       GrupoGuardarCancelar.Enabled:=false;
   end;

end;

procedure TFOP_ReconocimientoProds.PopItemProducto_AgregarClick(
  Sender: TObject);
begin
//  if ISListadoProducto.Buscar then
//   if (ISListadoProducto.Resultado<>'') then
//    begin
//       ZQ_PlanProducto.Append;
//       ZQ_PlanProductoID_OS.AsInteger:=ZQ_PlanesID_OS.AsInteger;
//       ZQ_PlanProductoID_PRODUCTO.AsInteger:=StrToInt(ISListadoProducto.Resultado);
//       ZQ_PlanProductoMONTO_RECONOCIDO.AsFloat:=0;
//    end

if not Assigned(vsel) then
    vsel:= TFBuscarProducto.Create(nil);
  vsel.OnSeleccionar:= onSelProducto;
  vsel.OnSeleccionarTodos:= onSelTodosProducto;
  vsel.btnSeleccionarTodos.Visible:= ivAlways;
  vsel.SeleccionarYSalir:= false;
  vsel.ShowModal;

end;


procedure TFOP_ReconocimientoProds.onSelProducto;
begin
  if not vsel.ZQ_Producto.IsEmpty then
  begin

    ZQ_PlanProducto.Filter:= 'id_producto = ' + vsel.ZQ_ProductoID_PRODUCTO.AsString;
    ZQ_PlanProducto.Filtered:= true;

    if not ZQ_PlanProducto.IsEmpty then
    begin
      ZQ_PlanProducto.Filtered:= false;
      Application.MessageBox('El Producto seleccionado ya fue cargado', 'Carga Producto', MB_OK + MB_ICONINFORMATION);
      exit;
    end;

    ZQ_PlanProducto.Filtered:= false;
    ZQ_PlanProducto.Append;
    ZQ_PlanProductoID_PRODUCTO.AsInteger:= vsel.ZQ_ProductoID_PRODUCTO.AsInteger;
    ZQ_PlanProductoID_OS.AsInteger:= ZQ_PlanesID_OS.AsInteger;
    ZQ_PlanProductoMONTO_RECONOCIDO.AsFloat:=0;
    ZQ_PlanProducto.Post;

  end;

  if vsel.SeleccionarYSalir then
     vsel.Close;
end;


procedure TFOP_ReconocimientoProds.onSelTodosProducto;
begin
  if not vsel.ZQ_Producto.IsEmpty then
  begin
    vsel.ZQ_Producto.First;
    while not vsel.ZQ_Producto.Eof do
    begin
      ZQ_PlanProducto.Filter:= 'id_producto = ' + vsel.ZQ_ProductoID_PRODUCTO.AsString;
      ZQ_PlanProducto.Filtered:= true;

      if not ZQ_PlanProducto.IsEmpty then
      begin
        ZQ_PlanProducto.Filtered:= false;
        Application.MessageBox('El Producto seleccionado ya fue cargado', 'Carga Producto', MB_OK + MB_ICONINFORMATION);
        exit;
      end;

      ZQ_PlanProducto.Filtered:= false;
      ZQ_PlanProducto.Append;
      ZQ_PlanProductoID_PRODUCTO.AsInteger:= vsel.ZQ_ProductoID_PRODUCTO.AsInteger;
      ZQ_PlanProductoID_OS.AsInteger:= ZQ_PlanesID_OS.AsInteger;
      ZQ_PlanProductoMONTO_RECONOCIDO.AsFloat:=0;
      ZQ_PlanProducto.Post;

      vsel.ZQ_Producto.Next;
    end;
  end;

  vsel.Close;
end;

procedure TFOP_ReconocimientoProds.btnCancelarClick(Sender: TObject);
begin
  if dm.ISModelo.verificar_transaccion(transaccion_coberturaPlan) then
   begin
       dm.ISModelo.cancelar_transaccion(transaccion_coberturaPlan);
       cmbPlan.Enabled:=true;
       ISOrdenarGrilla1.QuitarPopUpGrilla;
       GrupoEditando.Enabled:=true;
       GrupoGuardarCancelar.Enabled:=false;
   end;
end;

procedure TFOP_ReconocimientoProds.ZQ_PlanProductoBeforePost(
  DataSet: TDataSet);
begin
  if ZQ_PlanProductoID_PRODUCTO.IsNull then
   begin
    ZQ_PlanProducto.Delete;
    exit;
   end;
  if (ZQ_PlanProductoMONTO_RECONOCIDO.AsFloat>ZQ_PlanProducto_pventa.AsFloat ) then
   begin
   Application.MessageBox('El monto reconocido no debe ser superior al monto de Venta del producto!.', 'Atención', MB_OK + MB_ICONINFORMATION);
   ZQ_PlanProducto.CancelUpdates;
   exit;
   end;
end;

procedure TFOP_ReconocimientoProds.ISLlenarCombo1Cambio(valor: String);
begin
  if ZQ_Planes.IsEmpty then exit;

  ZQ_PlanProducto.Close;
  ZQ_PlanProducto.SQL.Text:=ISConsultas.verConsultaSQL(0);
  ZQ_PlanProducto.ParamByName('id').AsInteger:= ZQ_PlanesID_OS.AsInteger;
  dm.ISModelo.abrir(ZQ_PlanProducto);

  ISBuscarProducto.SQL_Where.Text:=Format('where (pr.baja<>''S'')and(pc.baja<>''S'')and(opr.id_os=%d)',[ZQ_PlanesID_OS.AsInteger]);

  dm.mostrarCantidadRegistro(ZQ_PlanProducto, lblCantidadRegistros);
end;

procedure TFOP_ReconocimientoProds.aplicarActualizacion(importe,coef,porc:Double);
begin
 if ZQ_PlanProducto.IsEmpty then exit;
 ZQ_PlanProducto.First;
 while not ZQ_PlanProducto.Eof do
  begin
     ZQ_PlanProducto.Edit;

     if (abs(importe)>0) then
         ZQ_PlanProductoMONTO_RECONOCIDO.AsFloat:=ZQ_PlanProductoMONTO_RECONOCIDO.AsFloat+importe
     else if (abs(coef)>0) then
         ZQ_PlanProductoMONTO_RECONOCIDO.AsFloat:=ZQ_PlanProductoMONTO_RECONOCIDO.AsFloat*(1+coef/100)
       else if (abs(porc)>0) then
         ZQ_PlanProductoMONTO_RECONOCIDO.AsFloat:=ZQ_PlanProducto_pventa.AsFloat*(porc/100);

     ZQ_PlanProducto.Post;

     ZQ_PlanProducto.Next;
  end;

end;

procedure TFOP_ReconocimientoProds.btnActualizarClick(Sender: TObject);
var
porc,importe:Double;
begin
 if ZQ_PlanProducto.IsEmpty then exit;
 if MessageDlg('¿Esta seguro que desea agregar/actualizar los montos reconocidos del Plan seleccionado?', mtConfirmation, [mbYes, mbNo], 0,) = mrYes then
  try
    if ISBusquedaAvanzada1.BuscarSinEjecutar then
      begin
        if ((ISBusquedaAvanzada1.ParametrosSeleccionados1[0]<>'')and(ISBusquedaAvanzada1.ParametrosSeleccionados1[1]<>''))or
            ((ISBusquedaAvanzada1.ParametrosSeleccionados1[0]<>'')and(ISBusquedaAvanzada1.ParametrosSeleccionados1[2]<>''))or
             ((ISBusquedaAvanzada1.ParametrosSeleccionados1[2]<>'')and(ISBusquedaAvanzada1.ParametrosSeleccionados1[1]<>''))or
              ((ISBusquedaAvanzada1.ParametrosSeleccionados1[0]<>'')and(ISBusquedaAvanzada1.ParametrosSeleccionados1[1]<>'')and(ISBusquedaAvanzada1.ParametrosSeleccionados1[1]<>''))
         then
         begin
          Application.MessageBox('Debe ingresar sólo uno de los parámetros disponibles.', 'Atención', MB_OK + MB_ICONINFORMATION);
          exit;
         end;

        if ISBusquedaAvanzada1.ParametrosSeleccionados1[0]<>'' then
         begin
             importe:=StrToFloat(ISBusquedaAvanzada1.ParametrosSeleccionados1[0]);
             if dm.ISModelo.iniciar_transaccion(transaccion_coberturaPlan2,[ZQ_PlanProducto]) then
                aplicarActualizacion(importe,0,0);
         end
         else
           if ISBusquedaAvanzada1.ParametrosSeleccionados1[1]<>'' then
           begin
               if abs(StrToFloat(ISBusquedaAvanzada1.ParametrosSeleccionados1[1]))>100 then
                begin
                   Application.MessageBox('Debe ingresar un porcentaje no mayor a 100%.', 'Atención', MB_OK + MB_ICONINFORMATION);
                   exit;
                end;

               porc:=StrToFloat(ISBusquedaAvanzada1.ParametrosSeleccionados1[1]);
               if dm.ISModelo.iniciar_transaccion(transaccion_coberturaPlan2,[ZQ_PlanProducto]) then
                  aplicarActualizacion(0,porc,0);
           end
            else
             if ISBusquedaAvanzada1.ParametrosSeleccionados1[2]<>'' then
             begin
                 if abs(StrToFloat(ISBusquedaAvanzada1.ParametrosSeleccionados1[2]))>100 then
                  begin
                     Application.MessageBox('Debe ingresar un porcentaje no mayor a 100%.', 'Atención', MB_OK + MB_ICONINFORMATION);
                     exit;
                  end;

                 porc:=StrToFloat(ISBusquedaAvanzada1.ParametrosSeleccionados1[2]);
                 if dm.ISModelo.iniciar_transaccion(transaccion_coberturaPlan2,[ZQ_PlanProducto]) then
                    aplicarActualizacion(0,0,porc);
             end;

         if not dm.ISModelo.finalizar_transaccion(transaccion_coberturaPlan2) then
          begin
            dm.ISModelo.cancelar_transaccion(transaccion_coberturaPlan2);
            Application.MessageBox('No pudo actualizarse correctamente el Plan seleccionado.', 'Atención', MB_OK + MB_ICONINFORMATION);
            exit;
          end
      end;
  except
      begin
         Application.MessageBox('Verifique que los parámetros ingresados sean correctos.', 'Atención', MB_OK + MB_ICONINFORMATION);
         exit;
      end
  end;



end;

procedure TFOP_ReconocimientoProds.btnBuscarProdsClick(Sender: TObject);
begin
  if ZQ_Planes.IsEmpty then exit;

  ISBuscarProducto.Buscar;


end;

procedure TFOP_ReconocimientoProds.btnExcelClick(Sender: TObject);
begin
  if ZQ_PlanProducto.IsEmpty then exit;

  dm.ExcelExport.EXCEL.Header:=ZQ_PlanesDETALLE.AsString;
  DM.ExportarEXCEL(grillaProductos);
  dm.ExcelExport.EXCEL.Header:='';
end;

procedure TFOP_ReconocimientoProds.btnImprimirClick(Sender: TObject);
begin
 if ZQ_PlanProducto.IsEmpty then exit;

  DM.VariablesReportes(RepProds);
  QRlblPieDePagina.Caption := TextoPieDePagina + FormatDateTime('dddd dd "de" mmmm "de" yyyy ',dm.ISModelo.Fecha);
  qrPlan.Caption :='Plan: '+ZQ_PlanesDETALLE.AsString;
  ISVistaPreviaQR1.VistaPrevia;
end;

end.
