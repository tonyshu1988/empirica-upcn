unit UUtilidades;

interface

uses SysUtils, Math, ZDataset, DateUtils, Messages, Variants, Classes, Dialogs,
     StdCtrls, DB, strutils, Jpeg, Graphics, DBGrids;

function SonTodasLetras(cad: string): Boolean;
function sonTodosNumeros(cad: string): Boolean;
function EsCUITValido(Num: string): boolean;
function contiene(AString, Pattern: string): boolean;
function rellenar(texto: string; caracter: Char; cantidad: integer): string;
function Redondear(Valor: Real; Redondeo: Integer): Real;
function EsEmailValido(const Value: string): boolean;
function EsEmailValido2(email: string): boolean;
function GetIndexField(grilla: TDBGrid; NombreCampo: string): Integer;
function GetIndexTitle(grilla: TDBGrid; NombreTitulo: string): Integer;
procedure Split(const Delimiter: Char; Input: string; const Strings: TStrings);
procedure configurarString(Query: TZQuery; clave: string; campo: string; busqueda: string; var variable: string);
procedure configurarBoolean(Query: TZQuery; clave: string; campo: string; busqueda: string; valorCompara: string; var variable: Boolean);
procedure configurarInteger(Query: TZQuery; clave: string; campo: string; busqueda: string; var variable: Integer);
procedure configurarReal(Query: TZQuery; clave: string; campo: string; busqueda: string; var variable: double);
procedure configurarDate(Query: TZQuery; clave: string; campo: string; busqueda: string; var variable: TDateTime);
procedure configurarColor(Query: TZQuery; clave: string; campo: string; busqueda: string; var variable: TColor);
function DecodificadorErrorFiscal(Codigo: integer; TipoError: string): string;
function DejarSoloNumeros(Cadena: string): string;

implementation

const
  TablaMul: array[1..10] of Integer = (5, 4, 3, 2, 7, 6, 5, 4, 3, 2); {Tabla Arbitraria}

//Delvuelve una cadena rellena de tantos caracteres como indique cantidad a la izquierda

function rellenar(texto: string; caracter: Char; cantidad: integer): string;
var
  longitud, i: integer;
  dev, con: string;
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
    dev:= texto;

  result:= dev;
end;

function DejarSoloNumeros(Cadena: string): string;
var
  i, cant, aux: integer;
  cad, numero: string;
begin
  cad:= Cadena;
  aux:= 0;

  if cad <> '' then
  begin
    i:= 1;
    cant:= length(cad);
    while length(cad) >= aux do
    begin
      if (cad[i] in ['0'..'9']) then
        numero:= numero + Copy(cad, i, 1);

      i:= i + 1;
      aux:= aux + 1;
    end;
  end;

  Result:= numero;
end;


function DecodificadorErrorFiscal(Codigo: integer; TipoError: string): string;
var
  decimal, quociente, resto: integer;
  binario, strresto, strquociente, bit, TipoCodigo, Error: string;
  aux: integer;
begin
  decimal:= Codigo;
  TipoCodigo:= TipoError; //'PrinterCode'// DriverCode

  quociente:= decimal;
  while (quociente >= 2) do
  begin
    resto:= quociente mod 2;
    str(resto, strquociente);
    binario:= strquociente + binario;
    quociente:= quociente div 2;
  end;

  str(quociente, strquociente);
  binario:= rellenar((strquociente + binario), '0', 16);
  error:= TipoError+': '+IntToStr(decimal);
  error:= error+#13+'----------------------------------------------------------';
  error:= error+#13+'Valor BINARIO: '+binario;
  error:= error+#13+'----------------------------------------------------------';

  aux:= Length(binario);
  while aux >= 0 do
  begin
    aux:= aux - 1;
    bit:= RightStr(binario, 1);
    binario:= LeftStr(binario, aux);

    if (bit = '1') then
    begin
      codigo:= (aux - 16) * -1;
      if TipoCodigo = 'PrinterCode' then
      begin
        case codigo of
           1: error:= error+#13+'Bit  1: Sin Uso.';
           2: error:= error+#13+'Bit  2: Sin Uso.';
           3: error:= error+#13+'Bit  3: Error/falla de impresora.';
           4: error:= error+#13+'Bit  4: Impresora fuera de línea.';
           5: error:= error+#13+'Bit  5: Poco papel para la cinta de auditoria.';
           6: error:= error+#13+'Bit  6: Poco papel para comprobantes o Tiques.';
           7: error:= error+#13+'Bit  7: Buffer de impresora lleno.';
           8: error:= error+#13+'Bit  8: Buffer de impresora vacío.';
           9: error:= error+#13+'Bit  9: Toma de hojas sueltas frontal preparada.';
          10: error:= error+#13+'Bit 10: Hoja suelta frontal preparada.';
          11: error:= error+#13+'Bit 11: Toma de hojas para validación preparada.';
          12: error:= error+#13+'Bit 12: Papel para validación presente.';
          13: error:= error+#13+'Bit 13: Gaveta de dinero 1 o 2 abierto.';
          14: error:= error+#13+'Bit 14: Sin uso.';
          15: error:= error+#13+'Bit 15: Impresora sin papel.';
          16: error:= error+#13+'Bit 16: OR lógico de los bits 1 al 7 y 15.';
        end;
      end
      else
      begin
        case codigo of
           1: error:= error+#13+'Bit  1: Error de comprobación de Memoria Fiscal.';
           2: error:= error+#13+'Bit  2: Error de comprobación de la Memoria de Trabajo.';
           3: error:= error+#13+'Bit  3: Poca batería.';
           4: error:= error+#13+'Bit  4: Comando no reconocido.';
           5: error:= error+#13+'Bit  5: Campo de datos inválido.';
           6: error:= error+#13+'Bit  6: Comando no válido para estado fiscal.';
           7: error:= error+#13+'Bit  7: Desbordamiento de Totales.';
           8: error:= error+#13+'Bit  8: Memoria Fiscal llena.';
           9: error:= error+#13+'Bit  9: Memoria Fiscal casi llena.';
          10: error:= error+#13+'Bit 10: Impresor Fiscal Certificado.';
          11: error:= error+#13+'Bit 11: Impresor Fiscal Fiscalizado.';
          12: error:= error+#13+'Bit 12: Hacer cierre Jornada Fiscal o Número máximo de ítems.';
          13: error:= error+#13+'Bit 13: Documento Fiscal abierto.';
          14: error:= error+#13+'Bit 14: Documento Fiscal abierto o Documento No Fiscal abierto.';
          15: error:= error+#13+'Bit 15: Sin Uso.';
          16: error:= error+#13+'Bit 16: OR lógico de los bits 1 - 9.';
        end;
      end;
    end;
  end;

  Result:= Error;
end;

procedure Split(const Delimiter: Char; Input: string; const Strings: TStrings);
begin
  Assert(Assigned(Strings));
  Strings.Clear;
  Strings.Delimiter:= Delimiter;
  Strings.DelimitedText:= Input;
end;

function EsEmailValido(const Value: string): boolean;

  function CheckAllowed(const s: string): boolean;
  var
    i: Integer;
  begin
    Result:= False;
    for i:= 1 to Length(s) do // illegal char in s -> no valid address
      if not (s[i] in ['a'..'z', 'A'..'Z', '0'..'9', '_', '-', '.']) then
        Exit;

    Result:= true;
  end;

var
  i, len: Integer;
  namePart, serverPart: string;
begin
  Result:= False;
  i:= Pos('@', Value);

  if (i = 0) or (Pos('..', Value) > 0) then
    exit;

  namePart:= Copy(Value, 1, i - 1);
  serverPart:= Copy(Value, i + 1, Length(Value));
  len:= Length(serverPart);
  if (len < 4) or (Pos('.', serverPart) = 0) or (serverPart[1] = '.') or (serverPart[len] = '.') or (serverPart[len - 1] = '.') then
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
  State:= STATE_BEGIN;
  n:= Length(email);
  i:= 1;
  subdomains:= 1;
  while (i <= n) do
  begin
    c:= email[i];
    case State of
      STATE_BEGIN:
        if c in atom_chars then
          State:= STATE_ATOM
        else if c = '"' then
          State:= STATE_QTEXT
        else break;
      STATE_ATOM:
        if c = '@' then
          State:= STATE_EXPECTING_SUBDOMAIN
        else if c = '.' then
          State:= STATE_LOCAL_PERIOD
        else if not (c in atom_chars) then
          break;
      STATE_QTEXT:
        if c = '\' then
          State:= STATE_QCHAR
        else if c = '"' then
          State:= STATE_QUOTE
        else if not (c in quoted_string_chars) then
          break;
      STATE_QCHAR:
        State:= STATE_QTEXT;
      STATE_QUOTE:
        if c = '@' then
          State:= STATE_EXPECTING_SUBDOMAIN
        else if c = '.' then
          State:= STATE_LOCAL_PERIOD
        else break;
      STATE_LOCAL_PERIOD:
        if c in atom_chars then
          State:= STATE_ATOM
        else if c = '"' then
          State:= STATE_QTEXT
        else break;
      STATE_EXPECTING_SUBDOMAIN:
        if c in letters then
          State:= STATE_SUBDOMAIN
        else break;
      STATE_SUBDOMAIN:
        if c = '.' then
        begin
          inc(subdomains);
          State:= STATE_EXPECTING_SUBDOMAIN
        end
        else if c = '-' then
          State:= STATE_HYPHEN
        else if not (c in letters_digits) then
          break;
      STATE_HYPHEN:
        if c in letters_digits then
          State:= STATE_SUBDOMAIN
        else if c <> '-' then break;
    end;
    inc(i);
  end;
  if i <= n then
    Result:= False
  else
    Result:= (State = STATE_SUBDOMAIN) and (subdomains >= 2);
end;


procedure SetJPGCompression(compresion: integer; const archivoEntrada: string; const archivoSalida: string);
var
  auxJPG: TJPegImage;
  auxBMP: TBitMap;
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


function BMPtoJPG(var archivoBMP, archivoJPG: string): boolean;
var Bitmap: TBitmap;
  JpegImg: TJpegImage;
begin
  Result:= False;
  Bitmap:= TBitmap.Create;
  try
    Bitmap.LoadFromFile(archivoBMP);
    JpegImg:= TJpegImage.Create;
    try
      JpegImg.Assign(Bitmap);
      JpegImg.SaveToFile(archivoJPG);
      Result:= True;
    finally
      JpegImg.Free
    end;
  finally
    Bitmap.Free
  end;
end;

function Redondear(Valor: Real; Redondeo: Integer): Real;
begin
  Redondear:= Trunc(Valor * Power(10, Redondeo)) / Power(10, Redondeo);
end;


function SonTodasLetras(cad: string): Boolean;
var i, cant: integer;
begin
  result:= False;
  if cad <> '' then
  begin
    i:= 1;
    cant:= length(cad);
    while ((cad[i] in ['A'..'Z']) or (cad[i] in [' '])) do
    begin
      i:= i + 1;
    end;
    if (cant = (i - 1)) then
      Result:= true;
  end
end;


function sonTodosNumeros(cad: string): Boolean;
var i, cant: integer;
begin
  result:= False;
  if cad <> '' then
  begin
    i:= 1;
    cant:= length(cad);
    while (cad[i] in ['0'..'9']) do
    begin
      i:= i + 1;
    end;
    if (cant = (i - 1)) then
      Result:= true;
  end
end;


function EsCUITValido(Num: string): boolean;
type
  ArrayDe11 = array[1..11] of Integer;
var
  R: ArrayDe11; {Resultados de Multiplicar por la Tabla Arbitraria}
  CUIT: ArrayDe11; {Para convertir cada digito}
  I: Integer; {Indice}
  Sumatoria, {Sumatoria de los Digitos menos el último}
    Dividendo, {Resultado de la División}
    Producto,
    Diferencia,
    DigitoVerif: Integer; {Digito Verificador Calculado}
begin
  result:= false; { Asumir Invalido }
  if Length(Num) = 11 then
  begin
    try
      for i:= 1 to 11 do CUIT[i]:= StrToInt(Num[i]); { Convertir cada caracter a Número}
    except
      Exit; { Si hay error de conversión es CUIT invalido}
    end; { try }
  end else Exit; { if } { Si no tiene 11 caracteres es CUIT invalido }

  for i:= 1 to 10 do // Multiplicar cada digito por la
    R[i]:= CUIT[i] * TablaMul[i]; // Tabla Arbitraria menos el último

  Sumatoria:= 0;
  for i:= 1 to 10 do
    Sumatoria:= Sumatoria + R[i]; // Calcular la sumatoria de los resultados

  Dividendo:= Sumatoria div 11; //  Dividir por 11  (división entera)
  Producto:= Dividendo * 11; // El resultado multiplica por 11
  Diferencia:= Sumatoria - Producto; // Obtener la diferencia
  if Diferencia > 0 then // Si la dif. es mayor a cero
    DigitoVerif:= 11 - Diferencia // El digito verificador es 11 menos la diferencia
  else DigitoVerif:= Diferencia; // sino es Cero.

  if DigitoVerif = CUIT[11] then result:= true; // si el Digito Verificador es igual
end; //  al último digito del CUITel CUIT es Válido.


//Funcion para comparar cadenas de textos
//Ejemplo de USO: contiene(STRING_DONDE_BUSCAR, 'Texto a buscar'); se puede usa * y ?

function contiene(AString, Pattern: string): boolean;
var
  i, n, n1, n2: integer;
  p1, p2: pchar;
label
  match, nomatch;
begin
  AString:= UpperCase(AString);
  Pattern:= UpperCase(Pattern);
  n1:= Length(AString);
  n2:= Length(Pattern);
  if n1 < n2 then n:= n1 else n:= n2;
  p1:= pchar(AString);
  p2:= pchar(Pattern);
  for i:= 1 to n do begin
    if p2^ = '*' then goto match;
    if (p2^ <> '?') and (p2^ <> p1^) then goto nomatch;
    inc(p1); inc(p2);
  end;
  if n1 > n2 then begin
    nomatch:
    Result:= False;
    exit;
  end else if n1 < n2 then begin
    for i:= n1 + 1 to n2 do begin
      if not (p2^ in ['*', '?']) then goto nomatch;
      inc(p2);
    end;
  end;
  match:
  Result:= True;
end;

//devuelve el indice en la grilla de la columna pasada como parametro

function GetIndexField(grilla: TDBGrid; NombreCampo: string): Integer;
var
  i: Integer;
begin
  Result:= -1;

  for i:= 0 to grilla.Columns.Count - 1 do
    if NombreCampo = grilla.Columns[i].FieldName then
    begin
      Result:= i;
      Exit;
    end;
end;


//devuelve el indice en la grilla de la columna pasada como parametro

function GetIndexTitle(grilla: TDBGrid; NombreTitulo: string): Integer;
var
  i: Integer;
begin
  Result:= -1;

  for i:= 0 to grilla.Columns.Count - 1 do
    if NombreTitulo = grilla.Columns[i].Title.Caption then
    begin
      Result:= i;
      Exit;
    end;
end;


procedure configurarString(Query: TZQuery; clave: string; campo: string; busqueda: string; var variable: string);
begin
  busqueda:= UpperCase(busqueda);
  clave:= UpperCase(clave);
  if Query.Locate(clave, VarArrayOf([busqueda]), [loCaseInsensitive]) then
    variable:= Query.fieldbyname(campo).AsString;
end;


procedure configurarBoolean(Query: TZQuery; clave: string; campo: string; busqueda: string; valorCompara: string; var variable: Boolean);
begin
  busqueda:= UpperCase(busqueda);
  clave:= UpperCase(clave);
  valorCompara:= UpperCase(valorCompara);
  if Query.Locate(clave, VarArrayOf([busqueda]), [loCaseInsensitive]) then //si existe la clave
    if upperCase(Query.fieldbyname(campo).AsString) = valorCompara then //si el campo es 'SI' la vairable es True
      variable:= True
    else //si el campo es distinto de 'SI' variable es False
      variable:= False;
end;


procedure configurarInteger(Query: TZQuery; clave: string; campo: string; busqueda: string; var variable: Integer);
begin
  busqueda:= UpperCase(busqueda);
  clave:= UpperCase(clave);
  if Query.Locate(clave, VarArrayOf([busqueda]), [loCaseInsensitive]) then
    variable:= Query.fieldbyname(campo).AsInteger
end;


procedure configurarReal(Query: TZQuery; clave: string; campo: string; busqueda: string; var variable: double);
begin
  busqueda:= UpperCase(busqueda);
  clave:= UpperCase(clave);
  if Query.Locate(clave, VarArrayOf([busqueda]), [loCaseInsensitive]) then
    variable:= Query.fieldbyname(campo).AsFloat;
end;


procedure configurarDate(Query: TZQuery; clave: string; campo: string; busqueda: string; var variable: TDateTime);
begin
  busqueda:= UpperCase(busqueda);
  clave:= UpperCase(clave);
  if Query.Locate(clave, VarArrayOf([busqueda]), [loCaseInsensitive]) then
    variable:= Query.fieldbyname(campo).AsDateTime;
end;


procedure configurarColor(Query: TZQuery; clave: string; campo: string; busqueda: string; var variable: TColor);
begin
  busqueda:= UpperCase(busqueda);
  clave:= UpperCase(clave);
  if Query.Locate(clave, VarArrayOf([busqueda]), [loCaseInsensitive]) then
    variable:= StringToColor(Query.fieldbyname(campo).AsString);
end;

end.

