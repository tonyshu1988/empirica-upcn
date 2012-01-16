unit UConsulta_Precios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, dxBar, dxBarExtItems, StdCtrls, DBCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, strutils, Mask;

type
  TFConsulta_Precios = class(TForm)
    PContenedor: TPanel;
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
    btnExcel: TdxBarLargeButton;
    GrupoEditando: TdxBarGroup;
    GrupoGuardarCancelar: TdxBarGroup;
    PCodBarraPrecio: TPanel;
    GB_Datos_Producto: TGroupBox;
    edImagen: TDBImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GB_Cod_Barra: TGroupBox;
    codbarras: TEdit;
    Label1: TLabel;
    ZQ_Productos: TZQuery;
    ZQ_ProductosNOMBRE_PRODUCTO: TStringField;
    ZQ_ProductosMEDIDA: TStringField;
    ZQ_ProductosARTICULO: TStringField;
    ZQ_ProductosTIPO_ARTICULO: TStringField;
    ZQ_ProductosNOMBRE_MARCA: TStringField;
    ZQ_ProductosDESCRIPCION: TStringField;
    ZQ_ProductosCOD_CORTO: TStringField;
    ZQ_ProductosCODIGO_BARRA: TStringField;
    ZQ_ProductosID_PRODUCTO: TIntegerField;
    ZQ_ProductosIMAGEN: TBlobField;
    ZQ_ProductosDETALLE_PROD: TStringField;
    ZQ_ProductosSTOCK_ACTUAL: TFloatField;
    ZQ_ProductosID_STOCK_PRODUCTO: TIntegerField;
    ZQ_ProductosID_MEDIDA: TIntegerField;
    ZQ_ProductosID_PROD_CABECERA: TIntegerField;
    ZQ_ProductosSTOCK_MAX: TFloatField;
    ZQ_ProductosSTOCK_MIN: TFloatField;
    ZQ_ProductosLLEVAR_STOCK: TStringField;
    ZQ_ProductosPRECIO_COSTO_CIMPUESTOS: TFloatField;
    ZQ_ProductosIMPUESTO_ADICIONAL1: TFloatField;
    ZQ_ProductosIMPUESTO_ADICIONAL2: TFloatField;
    ZQ_ProductosBAJA: TStringField;
    ZQ_ProductosID_PRECIO: TIntegerField;
    ZQ_ProductosID_SUCURSAL: TIntegerField;
    ZQ_ProductosPRECIO_COSTO: TFloatField;
    ZQ_ProductosPRECIO_VENTA: TFloatField;
    ZQ_ProductosCOEF_GANANCIA: TFloatField;
    ZQ_ProductosCOEF_DESCUENTO: TFloatField;
    ZQ_ProductosIMPUESTO_INTERNO: TFloatField;
    ZQ_ProductosIMPUESTO_IVA: TFloatField;
    ZQ_ProductosPRECIO1: TFloatField;
    ZQ_ProductosPRECIO2: TFloatField;
    ZQ_ProductosPRECIO3: TFloatField;
    ZQ_ProductosPRECIO4: TFloatField;
    ZQ_ProductosPRECIO5: TFloatField;
    DS_Productos: TDataSource;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo1: TDBMemo;
    GB_Datos_Empresa: TGroupBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBImage1: TDBImage;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure codbarrasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure IdentificarCodigo;
    procedure LeerCodigo(id, cod: String);
    function completarCodBar(cod: String): String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsulta_Precios: TFConsulta_Precios;
  IdProd:String;

implementation

uses UDM;

{$R *.dfm}

procedure TFConsulta_Precios.codbarrasKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
var
IdProd : integer;
begin

  if key = 13 then
  begin
    IdentificarCodigo;
    codbarras.Text:= '';
    Application.ProcessMessages;
    codbarras.SetFocus;
  end
  else
    if key = 27 then
    begin
      //VerLectorCB(false);
      //btnCancelarProd.Click;
    end;
    
end;

procedure TFConsulta_Precios.IdentificarCodigo();
var
  cod, num: string;
begin
     cod := codBarras.Text;
     try
      begin
//        if not(sonTodosNumeros(MidStr(cod,2,Length(cod)-1))) then
//        begin
//          Application.MessageBox('El código de ingresado es incorrecto', 'Código incorrecto');
//          LimpiarCodigo;
//          exit;
//        end;
        if UpperCase(MidStr(Cod, 1, 1)) = 'C' then
        begin
          LeerCodigo('C',Cod);
          exit;
        end;

        if UpperCase(MidStr(Cod, 1, 1)) = 'I' then
        begin
          LeerCodigo('I',Cod);
          exit;
        end;

        // POR CODIGO DE BARRAS PRODUCTO
        if (Length(cod) <= LONG_COD_BARRAS) then
        begin
          //LeerCodigo('B',completarCodBar(Cod));
          LeerCodigo('B',Cod);
          exit;
        end
        else
        if (Length(cod) > LONG_COD_BARRAS) then
        begin
          Application.MessageBox('Longitud de código incorrecta', 'Código incorrecto');
          //LimpiarCodigo;
          exit;
        end;

        raise Exception(self);
      end
     except
      begin
        Application.MessageBox('El código de ingresado es incorrecto', 'Código incorrecto');
        exit;
      end;
     end;
end;

procedure TFConsulta_Precios.LeerCodigo(id:string;cod:String);
var
  f1, f2, fecha: tdate;
  punit: double;
  diasm: integer;
begin

  try
      IdProd:= MidStr(cod, 2, Length(cod) - 1);
  except
    begin
      Application.MessageBox('El código de ingresado es incorrecto', 'Código incorrecto');
      //LimpiarCodigo;
      exit;
    end
  end;
  //Codigo Corto
     if id='C' then
      begin
        ZQ_Productos.Close;
        ZQ_Productos.sql[15]:=Format('and(p.cod_corto=%s)',[QuotedStr(IdProd)]);
        ZQ_Productos.Open;
      end;

     if id='I' then
      begin
        ZQ_Productos.Close;
        ZQ_Productos.sql[15]:=Format('and(p.id_producto=%s)',[IdProd]);
        ZQ_Productos.Open;
      end;

     //Codigo de Barras
     if id='B' then
       begin
        ZQ_Productos.Close;
        ZQ_Productos.sql[15]:=Format('and (p.codigo_barra =%s)',[QuotedStr(cod)]);
        ZQ_Productos.Open;
       end;

      if not(ZQ_Productos.IsEmpty) then
      begin
        if ZQ_ProductosSTOCK_ACTUAL.AsFloat <= 0 then
        begin
          Application.MessageBox('El Stock del Producto es Insuficiente.', 'Stock Producto');
          //LimpiarCodigo;
          exit;
        end;

        if ((id='B') or (id='C')) then
          if ZQ_Productos.RecordCount>1 then
          begin
            Application.MessageBox('El código ingresado corresponde a más de un producto'+char(13)+
                                    '(utilice la búsqueda avanzada para seleccionar el adecuado)', 'Producto Repetido');
            //LimpiarCodigo;
            exit;
          end;

        //agregar('',ZQ_ProductosID_PRODUCTO.AsInteger);
      end
      else
      begin
        Application.MessageBox('El producto no pudo ser encontrado.'+char(13)+
                                  '(utilice la búsqueda avanzada para seleccionar el adecuado)', 'Código incorrecto');
        exit;
      end;
end;

function TFConsulta_Precios.completarCodBar(cod: String): String;
begin
  Result:=StringOfChar('0', LONG_COD_BARRAS-Length(cod))+cod;
end;

procedure TFConsulta_Precios.FormActivate(Sender: TObject);
begin
codbarras.SetFocus;
end;

procedure TFConsulta_Precios.FormCreate(Sender: TObject);
begin
PCodBarraPrecio.BringToFront;
end;

end.
