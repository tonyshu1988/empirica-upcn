unit UVerImagen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, dxBarExtItems, ExtCtrls, StdCtrls, Mask, DBCtrls,
  Buttons, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ComCtrls, ZStoredProcedure, ExtDlgs, ZSqlUpdate, DBClient, STRUTILS,
  EKOrdenarGrilla, EKDBDateTimePicker;

type
  TFVerImagen = class(TForm)
    edImagen: TDBImage;
    ZQ_Cpb_Imagen: TZQuery;
    ZQ_Prod_Imagen: TZQuery;
    DataSource: TDataSource;
    ZQ_Prod_ImagenIMAGEN: TBlobField;
    ZQ_Cpb_ImagenIMAGEN: TBlobField;
    procedure cargarImagenProducto(id_producto: integer);
    procedure cargarImagenComprobante(id_comprobante: integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVerImagen: TFVerImagen;

implementation

uses UDM, UUtilidades;

{$R *.dfm}

procedure TFVerImagen.cargarImagenProducto(id_producto: integer);
begin
  ZQ_Prod_Imagen.Close;
  ZQ_Prod_Imagen.ParamByName('id_producto').AsInteger:= id_producto;
  ZQ_Prod_Imagen.Open;

  DataSource.DataSet:= ZQ_Prod_Imagen;
end;


procedure TFVerImagen.cargarImagenComprobante(id_comprobante: integer);
begin
  ZQ_Cpb_Imagen.Close;
  ZQ_Cpb_Imagen.ParamByName('id_comprobante').AsInteger:= id_comprobante;
  ZQ_Cpb_Imagen.Open;

  DataSource.DataSet:= ZQ_Cpb_Imagen;
end;

end.

