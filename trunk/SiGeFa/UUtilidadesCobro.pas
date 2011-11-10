unit UUtilidadesCobro;

interface

uses SysUtils, Math, ZDataset, DateUtils, Messages, Variants, Classes, Dialogs,
     StdCtrls, DB, strutils, Jpeg, Graphics, DBGrids;


function ProductoYaCargado(id:Integer):Boolean ;

implementation

const
    TablaMul:Array[1..10] of Integer=(5,4,3,2,7,6,5,4,3,2); {Tabla Arbitraria}

function ProductoYaCargado(id:Integer):Boolean ;
begin
    Result:=False;
// Comentado deja cargar mas de un producto repetido...
//    CD_DetalleFactura.Filtered := false;
//    CD_DetalleFactura.Filter:= Format('id_producto = %d ',[id]);
//    CD_DetalleFactura.Filtered := true;
//    if not CD_DetalleFactura.IsEmpty then
//    begin
//      CD_DetalleFactura.Filtered := false;
//      Result:=True;
//      Application.MessageBox('El Producto seleccionado ya fue cargado','Carga Producto',MB_OK+MB_ICONINFORMATION);
//      exit;
//    end;
//    CD_DetalleFactura.Filtered := false;
end;

end.
