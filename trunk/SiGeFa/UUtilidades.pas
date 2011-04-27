unit UUtilidades;

interface

uses
  Math;


function SonTodasLetras(cad:string):Boolean;
function sonTodosNumeros(cad:string):Boolean;
function EsCUITValido(Num:String):boolean;
function contiene(AString, Pattern: string): boolean;
function rellenar(texto: string; caracter: Char; cantidad: integer):String;
function Redondear(Valor: Real; Redondeo: Integer): Real;
function EsEmailValido(const Value: String): boolean;
function EsEmailValido2(email: string): boolean;

implementation

uses SysUtils, Graphics, Jpeg;

const
    TablaMul:Array[1..10] of Integer=(5,4,3,2,7,6,5,4,3,2); {Tabla Arbitraria}


function EsEmailValido(const Value: String): boolean;

  function CheckAllowed(const s: String): boolean;
  var
    i: Integer;
  begin
    Result:= False;
    for i:= 1 to Length(s) do // illegal char in s -> no valid address
      if not (s[i] in ['a'..'z','A'..'Z','0'..'9','_','-','.']) then
        Exit;

    Result:= true;
  end;

var
  i,len: Integer;
  namePart, serverPart: String;
begin
  Result:= False;
  i:= Pos('@', Value);

  if (i=0) or (Pos('..',Value) > 0) then
    exit;

  namePart:= Copy(Value, 1, i - 1);
  serverPart:= Copy(Value, i+1, Length(Value));
  len:=Length(serverPart);
  if (len<4) or (Pos('.',serverPart)=0) or (serverPart[1]='.') or (serverPart[len]='.') or (serverPart[len-1]='.') then
    exit;

  Result:= CheckAllowed(namePart) and CheckAllowed(serverPart);
end;


function EsEmailValido2(email: string): boolean;
   // Devuelve True si la dirección de email es válida
   const
     // Caracteres válidos en un "átomo"
     atom_chars = [#33..#255] - ['(', ')', '<', '>', '@', ',', ';', 
     ':', '\', '/', '"', '.', '[', ']', #127];
     // Caracteres válidos en una "cadena-entrecomillada"
     quoted_string_chars = [#0..#255] - ['"', #13, '\'];
     // Caracteres válidos en un subdominio
     letters = ['A'..'Z', 'a'..'z'];
     letters_digits = ['0'..'9', 'A'..'Z', 'a'..'z'];
     subdomain_chars = ['-', '0'..'9', 'A'..'Z', 'a'..'z'];
   type
     States = (STATE_BEGIN, STATE_ATOM, STATE_QTEXT,
     STATE_QCHAR, STATE_QUOTE, STATE_LOCAL_PERIOD,
     STATE_EXPECTING_SUBDOMAIN, STATE_SUBDOMAIN, STATE_HYPHEN);
   var
     State: States;
     i, n, subdomains: integer;
     c: char;
begin 
  State := STATE_BEGIN;
  n := Length(email); 
  i := 1;
  subdomains := 1; 
  while (i <= n) do 
    begin
      c := email[i];
      case State of 
         STATE_BEGIN: 
                  if c in atom_chars then
                  State := STATE_ATOM 
                  else if c = '"' then 
                  State := STATE_QTEXT
                  else break;
         STATE_ATOM:
                  if c = '@' then
                  State := STATE_EXPECTING_SUBDOMAIN
                  else if c = '.' then 
                  State := STATE_LOCAL_PERIOD
                  else if not (c in atom_chars) then 
                  break; 
         STATE_QTEXT:
                  if c = '\' then
                  State := STATE_QCHAR 
                  else if c = '"' then
                  State := STATE_QUOTE 
                  else if not (c in quoted_string_chars) then 
                  break; 
         STATE_QCHAR:   
                  State := STATE_QTEXT; 
         STATE_QUOTE:
                  if c = '@' then 
                  State := STATE_EXPECTING_SUBDOMAIN
                  else if c = '.' then
                  State := STATE_LOCAL_PERIOD 
                  else break; 
         STATE_LOCAL_PERIOD:
                  if c in atom_chars then
                  State := STATE_ATOM 
                  else if c = '"' then 
                  State := STATE_QTEXT
                              else break; 
         STATE_EXPECTING_SUBDOMAIN: 
                  if c in letters then
                  State := STATE_SUBDOMAIN 
                  else break;
         STATE_SUBDOMAIN:
                  if c = '.' then
                  begin 
                      inc(subdomains);
                      State := STATE_EXPECTING_SUBDOMAIN
                  end
                  else if c = '-' then 
                  State := STATE_HYPHEN
                  else if not (c in letters_digits) then 
                  break;
         STATE_HYPHEN:
                  if c in letters_digits then
                  State := STATE_SUBDOMAIN
                  else if c <> '-' then break;
      end;
      inc(i);
    end;
  if i <= n then
  Result := False
  else
  Result := (State = STATE_SUBDOMAIN) and (subdomains >= 2);
end;


procedure SetJPGCompression (compresion: integer; const archivoEntrada: string; const archivoSalida: string);
var
  auxJPG : TJPegImage;
  auxBMP : TBitMap;
begin
  //Force Compression to range 1..100
  if compresion < 1 then compresion:= 1;
  if compresion > 100 then compresion:= 100;

  //Create Jpeg and Bmp work classes
  auxJPG:= TJPegImage.Create;
  auxBMP:= TBitMap.Create;

  try
    auxJPG.LoadFromFile(archivoEntrada);
    auxBMP.Assign(auxJPG);

    //Do the Compression and Save New File
    auxJPG.CompressionQuality:= compresion;
    auxJPG.Compress;
    auxJPG.SaveToFile(archivoSalida);
  finally
    //Clean Up
    auxJPG.Free;
    auxBMP.Free;
  end;
end;


function BMPtoJPG(var archivoBMP, archivoJPG: string):boolean;
var Bitmap: TBitmap;
    JpegImg: TJpegImage;
begin
  Result:=False;
  Bitmap := TBitmap.Create;
  try
   Bitmap.LoadFromFile(archivoBMP) ;
   JpegImg := TJpegImage.Create;
   try
    JpegImg.Assign(Bitmap) ;
    JpegImg.SaveToFile(archivoJPG) ;
    Result:=True;
   finally
    JpegImg.Free
   end;
  finally
   Bitmap.Free
  end;
end;

function Redondear(Valor: Real; Redondeo: Integer): Real;
begin
  Redondear := Trunc(Valor * Power(10, Redondeo)) / Power(10,Redondeo);
end;


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
