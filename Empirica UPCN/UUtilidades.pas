unit UUtilidades;

interface
function SonTodasLetras(cad:string):Boolean;
function sonTodosNumeros(cad:string):Boolean;
function EsCUITValido(Num:String):boolean;
function contiene(AString, Pattern: string): boolean;
function rellenar(texto: string; caracter: Char; cantidad: integer):String;

implementation

uses SysUtils;

const
    TablaMul:Array[1..10] of Integer=(5,4,3,2,7,6,5,4,3,2); {Tabla Arbitraria}


function SonTodasLetras(cad:string):Boolean;
var i,cant:integer;
begin
    result := False;
    if cad<>'' then
      begin
        i:=1;
        cant:=length(cad);
        while ((cad[i] in ['A'..'Z']) or (cad[i] in [' '])) do
         begin
          i:=i+1;
         end;
        if (cant=(i-1)) then
            Result:=true;
      end
end;

function sonTodosNumeros(cad:string):Boolean;
var i,cant:integer;
begin
    result := False;
    if cad<>'' then
      begin
        i:=1;
        cant:=length(cad);
        while (cad[i] in ['0'..'9']) do
         begin
          i:=i+1;
         end;
        if (cant=(i-1)) then
            Result:=true;
      end
end;

function EsCUITValido(Num:String):boolean;
 type
   ArrayDe11=Array[1..11] of Integer;
 var
  R:ArrayDe11;           {Resultados de Multiplicar por la Tabla Arbitraria}
  CUIT:ArrayDe11;        {Para convertir cada digito}
  I:Integer;             {Indice}
  Sumatoria,             {Sumatoria de los Digitos menos el último}
  Dividendo,             {Resultado de la División}
  Producto,
  Diferencia,
  DigitoVerif:Integer;   {Digito Verificador Calculado}
 begin
 result:=false;          { Asumir Invalido }
 if Length(Num) = 11 then
   begin
     try
       for i:=1 to 11 do CUIT[i]:=StrToInt(Num[i]); { Convertir cada caracter a Número}
     except
       Exit;                                        { Si hay error de conversión es CUIT invalido}
     end; { try }
 end else Exit; { if }  { Si no tiene 11 caracteres es CUIT invalido }

 for i:=1 to 10 do             // Multiplicar cada digito por la
   R[i]:=CUIT[i]*TablaMul[i];   // Tabla Arbitraria menos el último

 Sumatoria:=0;
 for i:=1 to 10 do
   Sumatoria:=Sumatoria+R[i];   // Calcular la sumatoria de los resultados

 Dividendo:=Sumatoria div 11;     //  Dividir por 11  (división entera)
 Producto:=Dividendo * 11;          // El resultado multiplica por 11
 Diferencia:=Sumatoria - Producto;  // Obtener la diferencia
 if Diferencia > 0 then             // Si la dif. es mayor a cero
      DigitoVerif:=11 - Diferencia  // El digito verificador es 11 menos la diferencia
 else DigitoVerif:=Diferencia;       // sino es Cero.

 if DigitoVerif = CUIT[11] then result:=true;  // si el Digito Verificador es igual
 end;                                         //  al último digito del CUITel CUIT es Válido.


//Funcion para comparar cadenas de textos
//Ejemplo de USO: contiene(STRING_DONDE_BUSCAR, 'Texto a buscar'); se puede usa * y ?
function contiene(AString, Pattern: string): boolean;
var
  i, n, n1, n2: integer;
  p1, p2: pchar;
label
  match, nomatch;
begin
  AString := UpperCase(AString);
  Pattern := UpperCase(Pattern);
  n1 := Length(AString);
  n2 := Length(Pattern);
  if n1 < n2 then n := n1 else n := n2;
  p1 := pchar(AString);
  p2 := pchar(Pattern);
  for i := 1 to n do begin
    if p2^ = '*' then goto match;
    if (p2^ <> '?') and (p2^ <> p1^) then goto nomatch;
    inc(p1); inc(p2);
  end;
  if n1 > n2 then begin
nomatch:
    Result := False;
    exit;
  end else if n1 < n2 then begin
    for i := n1 + 1 to n2 do begin
      if not (p2^ in ['*','?']) then goto nomatch;
      inc(p2);
    end;
  end;
match:
  Result := True;
end;

//Delvuelve una cadena rellena de tantos caracteres como indique cantidad a la izquierda
function rellenar(texto: string; caracter: Char; cantidad: integer):string;
var
   longitud, i: integer;
   dev,con: string;
begin
   con:= '';
   longitud:= length(texto);
   if (cantidad > 0) and ((cantidad - longitud) > 0) then
   begin
        for i:= 1 to (cantidad - longitud) do
          con:= con + caracter;

        dev:= con + texto;
   end
   else
    dev:=texto;

   result:=dev;
end;

end.
