unit UABM_Precios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, EKBusquedaAvanzada,
  ZStoredProcedure, ZSqlUpdate;

type
  TFABM_Precios = class(TForm)
    dxBarABM: TdxBarManager;
    btnBuscar: TdxBarLargeButton;
    btnVerDetalle: TdxBarLargeButton;
    btnEditarGrilla: TdxBarLargeButton;
    btnProcesarImportes: TdxBarLargeButton;
    btnSeleccionar: TdxBarLargeButton;
    btnReactivar: TdxBarLargeButton;
    btnGuardar: TdxBarLargeButton;
    btnCancelar: TdxBarLargeButton;
    btnImprimir: TdxBarLargeButton;
    btnSalir: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PanelContenedor: TPanel;
    DBGridProductos: TDBGrid;
    ZQ_Productos: TZQuery;
    DS_Productos: TDataSource;
    ZQ_ProductosNOMBRE_PRODUCTO: TStringField;
    ZQ_ProductosMEDIDA: TStringField;
    ZQ_ProductosARTICULO: TStringField;
    ZQ_ProductosTIPO_ARTICULO: TStringField;
    ZQ_ProductosNOMBRE_MARCA: TStringField;
    ZQ_ProductosDESCRIPCION: TStringField;
    ZQ_ProductosPRECIO_COSTO: TFloatField;
    ZQ_ProductosPRECIO_VENTA: TFloatField;
    ZQ_ProductosCOEF_GANANCIA: TFloatField;
    ZQ_ProductosCOEF_DESCUENTO: TFloatField;
    ZQ_ProductosIMPUESTO_INTERNO: TFloatField;
    ZQ_ProductosIMPUESTO_IVA: TFloatField;
    ZQ_ProductosCOD_CORTO: TStringField;
    ZQ_ProductosCODIGO_BARRA: TStringField;
    EKBusquedaAvanzada1: TEKBusquedaAvanzada;
    ZSPActualizarImporte: TZStoredProc;
    ZQ_ProductosID_PRODUCTO: TIntegerField;
    ZUpdateSQL1: TZUpdateSQL;
    ZSPActualizarImporteSALIDA: TIntegerField;
    PanelEdicion: TPanel;
    EditCosto: TEdit;
    EditVenta: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RadioGroupTipoCalculo: TRadioGroup;
    LabelTipo2: TLabel;
    LabelTipo1: TLabel;
    procedure btnBuscarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnEditarGrillaClick(Sender: TObject);
    procedure btnProcesarImportesClick(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSeleccionarClick(Sender: TObject);
    procedure RadioGroupTipoCalculoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FABM_Precios: TFABM_Precios;
  EditandoGrilla : integer;

const
  Transaccion_ABMImportes = 'ABM IMPORTES';

implementation

uses UDM, UUtilidades;

{$R *.dfm}

procedure TFABM_Precios.btnBuscarClick(Sender: TObject);
begin
EKBusquedaAvanzada1.Buscar;
end;

procedure TFABM_Precios.btnSalirClick(Sender: TObject);
begin
close;
end;

procedure TFABM_Precios.btnEditarGrillaClick(Sender: TObject);
begin
  if ZQ_Productos.IsEmpty then
  exit;


  if EditandoGrilla <> 1 then
  begin
    DBGridProductos.Options := DBGridProductos.Options - [dgRowSelect];
    DBGridProductos.Options := DBGridProductos.Options + [dgEditing];
    EditandoGrilla :=1;
  end;


  if dm.EKModelo.iniciar_transaccion(Transaccion_ABMImportes, [ZQ_Productos]) then
  begin
    ZQ_Productos.Edit;
    DBGridProductos.SetFocus;
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
    RadioGroupTipoCalculo.Enabled := false;
    EditCosto.Enabled := false;
    EditVenta.Enabled := false;
  end;

end;

procedure TFABM_Precios.btnProcesarImportesClick(Sender: TObject);
var
i: integer;
begin
  if ZQ_Productos.IsEmpty then
  exit;

  try
    StrToFloat(EditCosto.Text);
    StrToFloat(EditVenta.Text);
  except
    Application.MessageBox('Se ingresaron datos no validos'+#13+'Verifique que no haya campos numéricos mal ingresados','Validar',MB_OK+MB_ICONINFORMATION);
    exit;
  end;


  if dm.EKModelo.iniciar_transaccion(Transaccion_ABMImportes, [ZQ_Productos]) then
  begin
    GrupoEditando.Enabled := false;
    GrupoGuardarCancelar.Enabled := true;
    RadioGroupTipoCalculo.Enabled := false;
    EditCosto.Enabled := false;
    EditVenta.Enabled := false;

    if DBGridProductos.SelectedRows.Count>0 then
    begin
      with DBGridProductos.DataSource.DataSet do
        for i:=0 to DBGridProductos.SelectedRows.Count-1 do
        begin
          GotoBookmark(pointer(DBGridProductos.SelectedRows.Items[i]));
          ZSPActualizarImporte.Close;
          ZSPActualizarImporte.ParamByName('ID_PRODUCTO').AsInteger := ZQ_ProductosID_PRODUCTO.AsInteger;
          ZSPActualizarImporte.ParamByName('COEF_AUMENTO_COSTO').AsFloat := StrToFloat(EditCosto.Text);
          ZSPActualizarImporte.ParamByName('COEF_AUMENTO_VENTA').AsFloat := StrToFloat(EditVenta.Text);
          if RadioGroupTipoCalculo.ItemIndex = 0 then
            ZSPActualizarImporte.ParamByName('TIPOCALCULO').AsInteger := 1
          else
            ZSPActualizarImporte.ParamByName('TIPOCALCULO').AsInteger := 0;
          ZSPActualizarImporte.Open;
        end;
    end
    else
    begin
      while not(ZQ_Productos.Eof) do
      begin
        ZSPActualizarImporte.Close;
        ZSPActualizarImporte.ParamByName('ID_PRODUCTO').AsInteger := ZQ_ProductosID_PRODUCTO.AsInteger;
        ZSPActualizarImporte.ParamByName('COEF_AUMENTO_COSTO').AsFloat := StrToFloat(EditCosto.Text);
        ZSPActualizarImporte.ParamByName('COEF_AUMENTO_VENTA').AsFloat := StrToFloat(EditVenta.Text);
        if RadioGroupTipoCalculo.ItemIndex = 0 then
          ZSPActualizarImporte.ParamByName('TIPOCALCULO').AsInteger := 1
        else
          ZSPActualizarImporte.ParamByName('TIPOCALCULO').AsInteger := 0;
        ZSPActualizarImporte.Open;

        ZQ_Productos.Next;
      end;
    end;

     ZQ_Productos.Refresh;
     DBGridProductos.SetFocus;
  end;
end;

procedure TFABM_Precios.btnGuardarClick(Sender: TObject);
begin
  if EditandoGrilla = 1 then
  begin
    DBGridProductos.Options := DBGridProductos.Options - [dgEditing];
    DBGridProductos.Options := DBGridProductos.Options + [dgRowSelect];
    EditandoGrilla:=0;
  end;

  if DM.EKModelo.finalizar_transaccion(Transaccion_ABMImportes) then
  begin
    DBGridProductos.Enabled := true;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    RadioGroupTipoCalculo.Enabled := true;
    EditCosto.Enabled := true;
    EditVenta.Enabled := true;
    EditCosto.Clear;
    EditVenta.Clear;
    ZQ_Productos.Refresh;
    DBGridProductos.Options:=DBGridProductos.Options - [dgMultiSelect];
    DBGridProductos.SetFocus;
  end;

end;

procedure TFABM_Precios.btnCancelarClick(Sender: TObject);
begin
  if dm.EKModelo.cancelar_transaccion(Transaccion_ABMImportes) then
  begin
    DBGridProductos.Enabled := true;
    GrupoEditando.Enabled := true;
    GrupoGuardarCancelar.Enabled := false;
    RadioGroupTipoCalculo.Enabled := true;
    EditCosto.Enabled := true;
    EditVenta.Enabled := true;
    EditCosto.Clear;
    EditVenta.Clear;
    ZQ_Productos.Refresh;
    DBGridProductos.SetFocus;
  end;
end;

procedure TFABM_Precios.btnSeleccionarClick(Sender: TObject);
begin
  if (dgMultiSelect	in DBGridProductos.Options) then
    DBGridProductos.Options:=DBGridProductos.Options - [dgMultiSelect]
  else
    DBGridProductos.Options:=DBGridProductos.Options + [dgMultiSelect];

  DBGridProductos.SetFocus;
end;

procedure TFABM_Precios.RadioGroupTipoCalculoClick(Sender: TObject);
begin
  if RadioGroupTipoCalculo.ItemIndex = 0 then
  begin
    LabelTipo1.Caption := '%';
    LabelTipo2.Caption := '%';
  end
  else
  begin
    LabelTipo1.Caption := '$';
    LabelTipo2.Caption := '$';
  end;

end;

end.
