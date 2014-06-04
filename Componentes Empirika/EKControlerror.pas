unit EKControlerror;

interface

uses
  Messages, SysUtils, strUtils, zdbcintfs, DB, ZConnection;

var
  error_clave, error_foranea, error_nulo: string;

procedure control_errores(E: Exception);
procedure control_errores_mensaje(titulo, error, detalle: string);

implementation

uses EKerror;


procedure control_errores_mensaje(titulo, error, detalle: string);
begin
  FEK_Error.Caption:= titulo;
  FEK_Error.text_error.Caption:= error;
  FEK_Error.error_c.Caption:= detalle;
  FEK_Error.Visible:= False;
  FEK_Error.ShowModal;
end;


procedure control_errores(E: Exception);
var
  d, h: integer;
  s: string;
begin
  FEK_Error.error_c.Caption:= e.Message;
  s:= 'Se produjo un Error inesperado, verifique que los datos estén cargados correctamente.'; //e.Message;

  // Si es un error generado por los Zeos
  if e.ClassName = 'EZSQLException' then
  begin
    d:= pos('exception', e.Message);
    h:= pos('Error Code', e.Message);

    // Si NO es una exeption (otro tipo de error)
    if d = 0 then
    begin
      if EZSQLException(e).ErrorCode = -902 then // Usuario
      begin
        if pos('user name', e.Message) > 0 then
          s:= 'El usuario y contraseña de "BASE DE DATOS" no son válidos' + #13 +
            'Puede que no tenga los permisos adecuados' + #13 + #13 + error_clave
        else
          s:= 'No se ha podido establecer la conexión con el servidor' + #13 +
            'Verifique el archivo de configuración' + #13 +
            'Verifique el correcto funcionamiento de la red'
                     //'' +#13+#13+error_clave;
      end;

      if EZSQLException(e).ErrorCode = -803 then // clave duplicada
        s:= 'Existe una duplicación en la carga de datos' + #13;
                     {'Verifique que ya no exista lo siguiente' +#13+#13+error_clave;}

      if EZSQLException(e).ErrorCode = -530 then //  clave foranea
        if not (error_foranea = '') then
          s:= 'Hay inconsistencia con la información cargada' + #13 +
            'verifique que existan los siguientes datos' + #13 + #13 + error_foranea
        else
          s:= 'No puede eliminar o insertar el registro porque' + #13 +
            'es un dato que depende de otra tabla';

      if EZSQLException(e).ErrorCode = -625 then //  valor nulo
        s:= 'Uno de los campos no cumple los requisitos necesarios' + #13 +
          'Verifique:' + #13 +
          'Que los campos en rojo no esten vacíos' + #13 +
          'Que se respete el formato indicado en los campos de carga' + #13 + #13 + error_nulo;

      //  - 297 valor nulo pero '' es un cheq de firebird
      if EZSQLException(e).ErrorCode = -297 then
        s:= 'Uno de los campos no cumple los requisitos necesarios' + #13 +
          'Verifique:' + #13 +
          'Que los campos en rojo no esten vacíos' + #13 +
          'Que se respete el formato indicado en los campos de carga' + #13 + #13 + error_nulo;

      if (EZSQLException(e).ErrorCode = -104) then
        s:= 'Hay un error en los parámetros de búsqueda ingresados' + #13 + error_clave;

      if (EZSQLException(e).ErrorCode = -204) then
        s:= 'Archivo desconocido o no tine permiso de acceso';
    end
    else
    begin
      //  Si es un exception (Mensaje de Error creado en la base de datos por los disparadores
      s:= midStr(e.Message, d + 11, h - d - 12);
      if pos('GENERICA', e.Message) > 0 then //  si falla el disparador por algun campo
        s:= 'Uno de los campos no cumple los requisitos necesarios' + #13 +
          'Verifique:' + #13 +
          'Que los campos en rojo no esten vacíos' + #13 +
          'Que se respete el formato indicado en los campos de carga' + #13 + #13 + error_nulo;
    end;

    FEK_Error.Caption:= 'ERROR EN BASE DE DATOS';
    FEK_Error.text_error.Caption:= s;
    FEK_Error.Visible:= False;
    FEK_Error.ShowModal;
  end
  else
    //si es un error de base de datos
    if e.ClassName = 'EDatabaseError' then
    begin
      s:= StringReplace(s, 'Field', 'El campo', [rfReplaceAll]);
      s:= StringReplace(s, 'must have a value', 'No puede estar vacio', [rfReplaceAll]);

      FEK_Error.Caption:= 'ERROR EN BASE DE DATOS';
      FEK_Error.text_error.Caption:= s;
      FEK_Error.Visible:= False;
      FEK_Error.ShowModal;
    end
    else // Otro tipo de Error
    begin
      if pos('is not a valid date', e.Message) > 0 then
        s:= 'El día mes y año no conforman una Fecha Válida'
      else if pos('is not a valid time', e.Message) > 0 then
        s:= 'La hora y los minutos no conforman una Hora Válida'
      else if pos('Invalid input value', e.Message) > 0 then
        s:= 'El campo ingresado no es correcto'
      else if pos('is not a valid floating', e.Message) > 0 then
        s:= 'Un campo numérico decimal no es válido o no fue ingresado'
      else if pos('is not a valid integer', e.Message) > 0 then
        s:= 'Un campo numérico entero no es válido o no fue ingresado';

      FEK_Error.Caption:= 'ERROR GENERAL';
      FEK_Error.text_error.Caption:= s;
      FEK_Error.Visible:= False;
      FEK_Error.ShowModal;
    end;

  error_clave:= '';
  error_foranea:= '';
  error_nulo:= '';
end;

end.

