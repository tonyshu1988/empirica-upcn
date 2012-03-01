SET SQL DIALECT 3;

SET AUTODDL ON;

SET TERM ^ ;

/* Create trigger... */
CREATE TRIGGER Z_SINC_ARTICULO_AD FOR ARTICULO
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'ARTICULO', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_ARTICULO', old.id_articulo);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_ARTICULO', old.id_articulo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_ARTICULO', old.id_tipo_articulo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DESCRIPCION', old.descripcion, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);


end
^

CREATE TRIGGER Z_SINC_ARTICULO_AI FOR ARTICULO
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'ARTICULO', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_ARTICULO', new.id_articulo);

  if (new.id_articulo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_ARTICULO', null, new.id_articulo);

  if (new.id_tipo_articulo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_ARTICULO', null, new.id_tipo_articulo);

  if (new.descripcion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DESCRIPCION', null, new.descripcion);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);


end
^

CREATE TRIGGER Z_SINC_ARTICULO_AU FOR ARTICULO
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'ARTICULO', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_ARTICULO', old.id_articulo);

  if ((old.id_articulo is null and new.id_articulo is not null) or
      (new.id_articulo is null and old.id_articulo is not null) or
      (new.id_articulo is not null and old.id_articulo is not null and new.id_articulo <> old.id_articulo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_ARTICULO', old.id_articulo, new.id_articulo);

  if ((old.id_tipo_articulo is null and new.id_tipo_articulo is not null) or
      (new.id_tipo_articulo is null and old.id_tipo_articulo is not null) or
      (new.id_tipo_articulo is not null and old.id_tipo_articulo is not null and new.id_tipo_articulo <> old.id_tipo_articulo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_ARTICULO', old.id_tipo_articulo, new.id_tipo_articulo);

  if ((old.descripcion is null and new.descripcion is not null) or
      (new.descripcion is null and old.descripcion is not null) or
      (new.descripcion is not null and old.descripcion is not null and new.descripcion <> old.descripcion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DESCRIPCION', old.descripcion, new.descripcion);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);


end
^

CREATE TRIGGER Z_SINC_CAJA_NRO_AD FOR CAJA_NRO
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'CAJA_NRO', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_CAJA', old.id_caja);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_CAJA', old.id_caja, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CAJA_NRO', old.caja_nro, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DESCRIPCION', old.descripcion, null);


end
^

CREATE TRIGGER Z_SINC_CAJA_NRO_AI FOR CAJA_NRO
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'CAJA_NRO', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_CAJA', new.id_caja);

  if (new.id_caja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_CAJA', null, new.id_caja);

  if (new.caja_nro is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CAJA_NRO', null, new.caja_nro);

  if (new.descripcion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DESCRIPCION', null, new.descripcion);


end
^

CREATE TRIGGER Z_SINC_CAJA_NRO_AU FOR CAJA_NRO
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'CAJA_NRO', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_CAJA', old.id_caja);

  if ((old.id_caja is null and new.id_caja is not null) or
      (new.id_caja is null and old.id_caja is not null) or
      (new.id_caja is not null and old.id_caja is not null and new.id_caja <> old.id_caja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_CAJA', old.id_caja, new.id_caja);

  if ((old.caja_nro is null and new.caja_nro is not null) or
      (new.caja_nro is null and old.caja_nro is not null) or
      (new.caja_nro is not null and old.caja_nro is not null and new.caja_nro <> old.caja_nro)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CAJA_NRO', old.caja_nro, new.caja_nro);

  if ((old.descripcion is null and new.descripcion is not null) or
      (new.descripcion is null and old.descripcion is not null) or
      (new.descripcion is not null and old.descripcion is not null and new.descripcion <> old.descripcion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DESCRIPCION', old.descripcion, new.descripcion);


end
^

CREATE TRIGGER Z_SINC_COLOR_AD FOR COLOR
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COLOR', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COLOR', old.id_color);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_COLOR', old.id_color, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODIGO_COLOR', old.codigo_color, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOMBRE', old.nombre, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'REFERENCIA', old.referencia, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);


end
^

CREATE TRIGGER Z_SINC_COLOR_AI FOR COLOR
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COLOR', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COLOR', new.id_color);

  if (new.id_color is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_COLOR', null, new.id_color);

  if (new.codigo_color is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODIGO_COLOR', null, new.codigo_color);

  if (new.nombre is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NOMBRE', null, new.nombre);

  if (new.referencia is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'REFERENCIA', null, new.referencia);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);


end
^

CREATE TRIGGER Z_SINC_COLOR_AU FOR COLOR
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COLOR', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COLOR', old.id_color);

  if ((old.id_color is null and new.id_color is not null) or
      (new.id_color is null and old.id_color is not null) or
      (new.id_color is not null and old.id_color is not null and new.id_color <> old.id_color)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_COLOR', old.id_color, new.id_color);

  if ((old.codigo_color is null and new.codigo_color is not null) or
      (new.codigo_color is null and old.codigo_color is not null) or
      (new.codigo_color is not null and old.codigo_color is not null and new.codigo_color <> old.codigo_color)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODIGO_COLOR', old.codigo_color, new.codigo_color);

  if ((old.nombre is null and new.nombre is not null) or
      (new.nombre is null and old.nombre is not null) or
      (new.nombre is not null and old.nombre is not null and new.nombre <> old.nombre)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOMBRE', old.nombre, new.nombre);

  if ((old.referencia is null and new.referencia is not null) or
      (new.referencia is null and old.referencia is not null) or
      (new.referencia is not null and old.referencia is not null and new.referencia <> old.referencia)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'REFERENCIA', old.referencia, new.referencia);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);


end
^

CREATE TRIGGER Z_SINC_CUENTA_AD FOR CUENTA
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'CUENTA', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_CUENTA', old.id_cuenta);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_CUENTA', old.id_cuenta, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'MEDIO_DEFECTO', old.medio_defecto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODIGO', old.codigo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOMBRE_CUENTA', old.nombre_cuenta, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NRO_CTA_BANCARIA', old.nro_cta_bancaria, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_SUCURSAL', old.id_sucursal, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'A_CTA_CORRIENTE', old.a_cta_corriente, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'A_NOTA_CREDITO', old.a_nota_credito, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'MODIFICABLE', old.modificable, null);


end
^

CREATE TRIGGER Z_SINC_CUENTA_AI FOR CUENTA
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'CUENTA', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_CUENTA', new.id_cuenta);

  if (new.id_cuenta is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_CUENTA', null, new.id_cuenta);

  if (new.medio_defecto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'MEDIO_DEFECTO', null, new.medio_defecto);

  if (new.codigo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODIGO', null, new.codigo);

  if (new.nombre_cuenta is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NOMBRE_CUENTA', null, new.nombre_cuenta);

  if (new.nro_cta_bancaria is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NRO_CTA_BANCARIA', null, new.nro_cta_bancaria);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);

  if (new.id_sucursal is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_SUCURSAL', null, new.id_sucursal);

  if (new.a_cta_corriente is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'A_CTA_CORRIENTE', null, new.a_cta_corriente);

  if (new.a_nota_credito is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'A_NOTA_CREDITO', null, new.a_nota_credito);

  if (new.modificable is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'MODIFICABLE', null, new.modificable);


end
^

CREATE TRIGGER Z_SINC_CUENTA_AU FOR CUENTA
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'CUENTA', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_CUENTA', old.id_cuenta);

  if ((old.id_cuenta is null and new.id_cuenta is not null) or
      (new.id_cuenta is null and old.id_cuenta is not null) or
      (new.id_cuenta is not null and old.id_cuenta is not null and new.id_cuenta <> old.id_cuenta)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_CUENTA', old.id_cuenta, new.id_cuenta);

  if ((old.medio_defecto is null and new.medio_defecto is not null) or
      (new.medio_defecto is null and old.medio_defecto is not null) or
      (new.medio_defecto is not null and old.medio_defecto is not null and new.medio_defecto <> old.medio_defecto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'MEDIO_DEFECTO', old.medio_defecto, new.medio_defecto);

  if ((old.codigo is null and new.codigo is not null) or
      (new.codigo is null and old.codigo is not null) or
      (new.codigo is not null and old.codigo is not null and new.codigo <> old.codigo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODIGO', old.codigo, new.codigo);

  if ((old.nombre_cuenta is null and new.nombre_cuenta is not null) or
      (new.nombre_cuenta is null and old.nombre_cuenta is not null) or
      (new.nombre_cuenta is not null and old.nombre_cuenta is not null and new.nombre_cuenta <> old.nombre_cuenta)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOMBRE_CUENTA', old.nombre_cuenta, new.nombre_cuenta);

  if ((old.nro_cta_bancaria is null and new.nro_cta_bancaria is not null) or
      (new.nro_cta_bancaria is null and old.nro_cta_bancaria is not null) or
      (new.nro_cta_bancaria is not null and old.nro_cta_bancaria is not null and new.nro_cta_bancaria <> old.nro_cta_bancaria)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NRO_CTA_BANCARIA', old.nro_cta_bancaria, new.nro_cta_bancaria);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);

  if ((old.id_sucursal is null and new.id_sucursal is not null) or
      (new.id_sucursal is null and old.id_sucursal is not null) or
      (new.id_sucursal is not null and old.id_sucursal is not null and new.id_sucursal <> old.id_sucursal)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_SUCURSAL', old.id_sucursal, new.id_sucursal);

  if ((old.a_cta_corriente is null and new.a_cta_corriente is not null) or
      (new.a_cta_corriente is null and old.a_cta_corriente is not null) or
      (new.a_cta_corriente is not null and old.a_cta_corriente is not null and new.a_cta_corriente <> old.a_cta_corriente)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'A_CTA_CORRIENTE', old.a_cta_corriente, new.a_cta_corriente);

  if ((old.a_nota_credito is null and new.a_nota_credito is not null) or
      (new.a_nota_credito is null and old.a_nota_credito is not null) or
      (new.a_nota_credito is not null and old.a_nota_credito is not null and new.a_nota_credito <> old.a_nota_credito)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'A_NOTA_CREDITO', old.a_nota_credito, new.a_nota_credito);

  if ((old.modificable is null and new.modificable is not null) or
      (new.modificable is null and old.modificable is not null) or
      (new.modificable is not null and old.modificable is not null and new.modificable <> old.modificable)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'MODIFICABLE', old.modificable, new.modificable);


end
^

CREATE TRIGGER Z_SINC_CUENTA_CORRIENTE_AD FOR CUENTA_CORRIENTE
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'CUENTA_CORRIENTE', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_CTA_CTE', old.id_cta_cte);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_CTA_CTE', old.id_cta_cte, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PERSONA', old.id_persona, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PROVEEDOR', old.id_proveedor, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'SALDO', old.saldo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'LIMITE_DEUDA', old.limite_deuda, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VENCIMIENTO_DIAS', old.vencimiento_dias, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FECHA_ALTA', old.fecha_alta, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FECHA_BAJA', old.fecha_baja, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);


end
^

CREATE TRIGGER Z_SINC_CUENTA_CORRIENTE_AI FOR CUENTA_CORRIENTE
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'CUENTA_CORRIENTE', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_CTA_CTE', new.id_cta_cte);

  if (new.id_cta_cte is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_CTA_CTE', null, new.id_cta_cte);

  if (new.id_persona is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PERSONA', null, new.id_persona);

  if (new.id_proveedor is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PROVEEDOR', null, new.id_proveedor);

  if (new.saldo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'SALDO', null, new.saldo);

  if (new.limite_deuda is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'LIMITE_DEUDA', null, new.limite_deuda);

  if (new.vencimiento_dias is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VENCIMIENTO_DIAS', null, new.vencimiento_dias);

  if (new.fecha_alta is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FECHA_ALTA', null, new.fecha_alta);

  if (new.fecha_baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FECHA_BAJA', null, new.fecha_baja);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);


end
^

CREATE TRIGGER Z_SINC_CUENTA_CORRIENTE_AU FOR CUENTA_CORRIENTE
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'CUENTA_CORRIENTE', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_CTA_CTE', old.id_cta_cte);

  if ((old.id_cta_cte is null and new.id_cta_cte is not null) or
      (new.id_cta_cte is null and old.id_cta_cte is not null) or
      (new.id_cta_cte is not null and old.id_cta_cte is not null and new.id_cta_cte <> old.id_cta_cte)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_CTA_CTE', old.id_cta_cte, new.id_cta_cte);

  if ((old.id_persona is null and new.id_persona is not null) or
      (new.id_persona is null and old.id_persona is not null) or
      (new.id_persona is not null and old.id_persona is not null and new.id_persona <> old.id_persona)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PERSONA', old.id_persona, new.id_persona);

  if ((old.id_proveedor is null and new.id_proveedor is not null) or
      (new.id_proveedor is null and old.id_proveedor is not null) or
      (new.id_proveedor is not null and old.id_proveedor is not null and new.id_proveedor <> old.id_proveedor)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PROVEEDOR', old.id_proveedor, new.id_proveedor);

  if ((old.saldo is null and new.saldo is not null) or
      (new.saldo is null and old.saldo is not null) or
      (new.saldo is not null and old.saldo is not null and new.saldo <> old.saldo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'SALDO', old.saldo, new.saldo);

  if ((old.limite_deuda is null and new.limite_deuda is not null) or
      (new.limite_deuda is null and old.limite_deuda is not null) or
      (new.limite_deuda is not null and old.limite_deuda is not null and new.limite_deuda <> old.limite_deuda)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'LIMITE_DEUDA', old.limite_deuda, new.limite_deuda);

  if ((old.vencimiento_dias is null and new.vencimiento_dias is not null) or
      (new.vencimiento_dias is null and old.vencimiento_dias is not null) or
      (new.vencimiento_dias is not null and old.vencimiento_dias is not null and new.vencimiento_dias <> old.vencimiento_dias)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VENCIMIENTO_DIAS', old.vencimiento_dias, new.vencimiento_dias);

  if ((old.fecha_alta is null and new.fecha_alta is not null) or
      (new.fecha_alta is null and old.fecha_alta is not null) or
      (new.fecha_alta is not null and old.fecha_alta is not null and new.fecha_alta <> old.fecha_alta)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FECHA_ALTA', old.fecha_alta, new.fecha_alta);

  if ((old.fecha_baja is null and new.fecha_baja is not null) or
      (new.fecha_baja is null and old.fecha_baja is not null) or
      (new.fecha_baja is not null and old.fecha_baja is not null and new.fecha_baja <> old.fecha_baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FECHA_BAJA', old.fecha_baja, new.fecha_baja);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);


end
^

CREATE TRIGGER Z_SINC_EMPRESA_AD FOR EMPRESA
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'EMPRESA', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_EMPRESA', old.id_empresa);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_EMPRESA', old.id_empresa, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PROVINCIA', old.id_provincia, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_IVA', old.id_tipo_iva, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_EMPRESA', old.id_tipo_empresa, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CUIT_CUIL', old.cuit_cuil, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOMBRE', old.nombre, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DIRECCION', old.direccion, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'LOCALIDAD', old.localidad, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODIGO_POSTAL', old.codigo_postal, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'TELEFONO', old.telefono, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'EMAIL', old.email, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PAGINA_WEB', old.pagina_web, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);

  insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'DESCRIPCION', old.descripcion, null);

  insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'DESCRIPCION_PRIVADA', old.descripcion_privada, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODIGO_CORTO', old.codigo_corto, null);


end
^

CREATE TRIGGER Z_SINC_EMPRESA_AI FOR EMPRESA
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'EMPRESA', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_EMPRESA', new.id_empresa);

  if (new.id_empresa is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_EMPRESA', null, new.id_empresa);

  if (new.id_provincia is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PROVINCIA', null, new.id_provincia);

  if (new.id_tipo_iva is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_IVA', null, new.id_tipo_iva);

  if (new.id_tipo_empresa is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_EMPRESA', null, new.id_tipo_empresa);

  if (new.cuit_cuil is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CUIT_CUIL', null, new.cuit_cuil);

  if (new.nombre is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NOMBRE', null, new.nombre);

  if (new.direccion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DIRECCION', null, new.direccion);

  if (new.localidad is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'LOCALIDAD', null, new.localidad);

  if (new.codigo_postal is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODIGO_POSTAL', null, new.codigo_postal);

  if (new.telefono is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'TELEFONO', null, new.telefono);

  if (new.email is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'EMAIL', null, new.email);

  if (new.pagina_web is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PAGINA_WEB', null, new.pagina_web);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);

  if (not (new.descripcion is null)) then
    insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
           values (:tid,'DESCRIPCION',null, new.descripcion);

  if (not (new.descripcion_privada is null)) then
    insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
           values (:tid,'DESCRIPCION_PRIVADA',null, new.descripcion_privada);

  if (new.codigo_corto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODIGO_CORTO', null, new.codigo_corto);


end
^

CREATE TRIGGER Z_SINC_EMPRESA_AU FOR EMPRESA
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'EMPRESA', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_EMPRESA', old.id_empresa);

  if ((old.id_empresa is null and new.id_empresa is not null) or
      (new.id_empresa is null and old.id_empresa is not null) or
      (new.id_empresa is not null and old.id_empresa is not null and new.id_empresa <> old.id_empresa)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_EMPRESA', old.id_empresa, new.id_empresa);

  if ((old.id_provincia is null and new.id_provincia is not null) or
      (new.id_provincia is null and old.id_provincia is not null) or
      (new.id_provincia is not null and old.id_provincia is not null and new.id_provincia <> old.id_provincia)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PROVINCIA', old.id_provincia, new.id_provincia);

  if ((old.id_tipo_iva is null and new.id_tipo_iva is not null) or
      (new.id_tipo_iva is null and old.id_tipo_iva is not null) or
      (new.id_tipo_iva is not null and old.id_tipo_iva is not null and new.id_tipo_iva <> old.id_tipo_iva)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_IVA', old.id_tipo_iva, new.id_tipo_iva);

  if ((old.id_tipo_empresa is null and new.id_tipo_empresa is not null) or
      (new.id_tipo_empresa is null and old.id_tipo_empresa is not null) or
      (new.id_tipo_empresa is not null and old.id_tipo_empresa is not null and new.id_tipo_empresa <> old.id_tipo_empresa)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_EMPRESA', old.id_tipo_empresa, new.id_tipo_empresa);

  if ((old.cuit_cuil is null and new.cuit_cuil is not null) or
      (new.cuit_cuil is null and old.cuit_cuil is not null) or
      (new.cuit_cuil is not null and old.cuit_cuil is not null and new.cuit_cuil <> old.cuit_cuil)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CUIT_CUIL', old.cuit_cuil, new.cuit_cuil);

  if ((old.nombre is null and new.nombre is not null) or
      (new.nombre is null and old.nombre is not null) or
      (new.nombre is not null and old.nombre is not null and new.nombre <> old.nombre)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOMBRE', old.nombre, new.nombre);

  if ((old.direccion is null and new.direccion is not null) or
      (new.direccion is null and old.direccion is not null) or
      (new.direccion is not null and old.direccion is not null and new.direccion <> old.direccion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DIRECCION', old.direccion, new.direccion);

  if ((old.localidad is null and new.localidad is not null) or
      (new.localidad is null and old.localidad is not null) or
      (new.localidad is not null and old.localidad is not null and new.localidad <> old.localidad)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'LOCALIDAD', old.localidad, new.localidad);

  if ((old.codigo_postal is null and new.codigo_postal is not null) or
      (new.codigo_postal is null and old.codigo_postal is not null) or
      (new.codigo_postal is not null and old.codigo_postal is not null and new.codigo_postal <> old.codigo_postal)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODIGO_POSTAL', old.codigo_postal, new.codigo_postal);

  if ((old.telefono is null and new.telefono is not null) or
      (new.telefono is null and old.telefono is not null) or
      (new.telefono is not null and old.telefono is not null and new.telefono <> old.telefono)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'TELEFONO', old.telefono, new.telefono);

  if ((old.email is null and new.email is not null) or
      (new.email is null and old.email is not null) or
      (new.email is not null and old.email is not null and new.email <> old.email)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'EMAIL', old.email, new.email);

  if ((old.pagina_web is null and new.pagina_web is not null) or
      (new.pagina_web is null and old.pagina_web is not null) or
      (new.pagina_web is not null and old.pagina_web is not null and new.pagina_web <> old.pagina_web)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PAGINA_WEB', old.pagina_web, new.pagina_web);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);

  if ((old.descripcion is null and new.descripcion is not null) or
      (new.descripcion is null and old.descripcion is not null) or
      (new.descripcion is not null and old.descripcion is not null and new.descripcion <> old.descripcion)) then
     insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
            values (:tid, 'DESCRIPCION', old.descripcion, new.descripcion);

  if ((old.descripcion_privada is null and new.descripcion_privada is not null) or
      (new.descripcion_privada is null and old.descripcion_privada is not null) or
      (new.descripcion_privada is not null and old.descripcion_privada is not null and new.descripcion_privada <> old.descripcion_privada)) then
     insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
            values (:tid, 'DESCRIPCION_PRIVADA', old.descripcion_privada, new.descripcion_privada);

  if ((old.codigo_corto is null and new.codigo_corto is not null) or
      (new.codigo_corto is null and old.codigo_corto is not null) or
      (new.codigo_corto is not null and old.codigo_corto is not null and new.codigo_corto <> old.codigo_corto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODIGO_CORTO', old.codigo_corto, new.codigo_corto);


end
^

CREATE TRIGGER Z_SINC_EMPRESA_MARCA_AD FOR EMPRESA_MARCA
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'EMPRESA_MARCA', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID', old.id);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID', old.id, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_EMPRESA', old.id_empresa, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_MARCA', old.id_marca, null);

  insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'DESCRIPCION', old.descripcion, null);


end
^

CREATE TRIGGER Z_SINC_EMPRESA_MARCA_AI FOR EMPRESA_MARCA
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'EMPRESA_MARCA', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID', new.id);

  if (new.id is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID', null, new.id);

  if (new.id_empresa is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_EMPRESA', null, new.id_empresa);

  if (new.id_marca is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_MARCA', null, new.id_marca);

  if (not (new.descripcion is null)) then
    insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
           values (:tid,'DESCRIPCION',null, new.descripcion);


end
^

CREATE TRIGGER Z_SINC_EMPRESA_MARCA_AU FOR EMPRESA_MARCA
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'EMPRESA_MARCA', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID', old.id);

  if ((old.id is null and new.id is not null) or
      (new.id is null and old.id is not null) or
      (new.id is not null and old.id is not null and new.id <> old.id)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID', old.id, new.id);

  if ((old.id_empresa is null and new.id_empresa is not null) or
      (new.id_empresa is null and old.id_empresa is not null) or
      (new.id_empresa is not null and old.id_empresa is not null and new.id_empresa <> old.id_empresa)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_EMPRESA', old.id_empresa, new.id_empresa);

  if ((old.id_marca is null and new.id_marca is not null) or
      (new.id_marca is null and old.id_marca is not null) or
      (new.id_marca is not null and old.id_marca is not null and new.id_marca <> old.id_marca)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_MARCA', old.id_marca, new.id_marca);

  if ((old.descripcion is null and new.descripcion is not null) or
      (new.descripcion is null and old.descripcion is not null) or
      (new.descripcion is not null and old.descripcion is not null and new.descripcion <> old.descripcion)) then
     insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
            values (:tid, 'DESCRIPCION', old.descripcion, new.descripcion);


end
^

CREATE TRIGGER Z_SINC_ENTIDAD_TELEFONOS_AD FOR ENTIDAD_TELEFONOS
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'ENTIDAD_TELEFONOS', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_ENTIDAD_TELEFONO', old.id_entidad_telefono);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_ENTIDAD_TELEFONO', old.id_entidad_telefono, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_ENTIDAD', old.id_entidad, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PERSONA', old.id_persona, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'TELEFONO', old.telefono, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'MAIL', old.mail, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DESCRIPCION', old.descripcion, null);


end
^

CREATE TRIGGER Z_SINC_ENTIDAD_TELEFONOS_AI FOR ENTIDAD_TELEFONOS
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'ENTIDAD_TELEFONOS', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_ENTIDAD_TELEFONO', new.id_entidad_telefono);

  if (new.id_entidad_telefono is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_ENTIDAD_TELEFONO', null, new.id_entidad_telefono);

  if (new.id_entidad is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_ENTIDAD', null, new.id_entidad);

  if (new.id_persona is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PERSONA', null, new.id_persona);

  if (new.telefono is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'TELEFONO', null, new.telefono);

  if (new.mail is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'MAIL', null, new.mail);

  if (new.descripcion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DESCRIPCION', null, new.descripcion);


end
^

CREATE TRIGGER Z_SINC_ENTIDAD_TELEFONOS_AU FOR ENTIDAD_TELEFONOS
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'ENTIDAD_TELEFONOS', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_ENTIDAD_TELEFONO', old.id_entidad_telefono);

  if ((old.id_entidad_telefono is null and new.id_entidad_telefono is not null) or
      (new.id_entidad_telefono is null and old.id_entidad_telefono is not null) or
      (new.id_entidad_telefono is not null and old.id_entidad_telefono is not null and new.id_entidad_telefono <> old.id_entidad_telefono)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_ENTIDAD_TELEFONO', old.id_entidad_telefono, new.id_entidad_telefono);

  if ((old.id_entidad is null and new.id_entidad is not null) or
      (new.id_entidad is null and old.id_entidad is not null) or
      (new.id_entidad is not null and old.id_entidad is not null and new.id_entidad <> old.id_entidad)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_ENTIDAD', old.id_entidad, new.id_entidad);

  if ((old.id_persona is null and new.id_persona is not null) or
      (new.id_persona is null and old.id_persona is not null) or
      (new.id_persona is not null and old.id_persona is not null and new.id_persona <> old.id_persona)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PERSONA', old.id_persona, new.id_persona);

  if ((old.telefono is null and new.telefono is not null) or
      (new.telefono is null and old.telefono is not null) or
      (new.telefono is not null and old.telefono is not null and new.telefono <> old.telefono)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'TELEFONO', old.telefono, new.telefono);

  if ((old.mail is null and new.mail is not null) or
      (new.mail is null and old.mail is not null) or
      (new.mail is not null and old.mail is not null and new.mail <> old.mail)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'MAIL', old.mail, new.mail);

  if ((old.descripcion is null and new.descripcion is not null) or
      (new.descripcion is null and old.descripcion is not null) or
      (new.descripcion is not null and old.descripcion is not null and new.descripcion <> old.descripcion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DESCRIPCION', old.descripcion, new.descripcion);


end
^

CREATE TRIGGER Z_SINC_MARCA_AD FOR MARCA
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'MARCA', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_MARCA', old.id_marca);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_MARCA', old.id_marca, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODIGO_MARCA', old.codigo_marca, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOMBRE_MARCA', old.nombre_marca, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);


end
^

CREATE TRIGGER Z_SINC_MARCA_AI FOR MARCA
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'MARCA', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_MARCA', new.id_marca);

  if (new.id_marca is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_MARCA', null, new.id_marca);

  if (new.codigo_marca is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODIGO_MARCA', null, new.codigo_marca);

  if (new.nombre_marca is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NOMBRE_MARCA', null, new.nombre_marca);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);


end
^

CREATE TRIGGER Z_SINC_MARCA_AU FOR MARCA
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'MARCA', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_MARCA', old.id_marca);

  if ((old.id_marca is null and new.id_marca is not null) or
      (new.id_marca is null and old.id_marca is not null) or
      (new.id_marca is not null and old.id_marca is not null and new.id_marca <> old.id_marca)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_MARCA', old.id_marca, new.id_marca);

  if ((old.codigo_marca is null and new.codigo_marca is not null) or
      (new.codigo_marca is null and old.codigo_marca is not null) or
      (new.codigo_marca is not null and old.codigo_marca is not null and new.codigo_marca <> old.codigo_marca)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODIGO_MARCA', old.codigo_marca, new.codigo_marca);

  if ((old.nombre_marca is null and new.nombre_marca is not null) or
      (new.nombre_marca is null and old.nombre_marca is not null) or
      (new.nombre_marca is not null and old.nombre_marca is not null and new.nombre_marca <> old.nombre_marca)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOMBRE_MARCA', old.nombre_marca, new.nombre_marca);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);


end
^

CREATE TRIGGER Z_SINC_MEDIDA_AD FOR MEDIDA
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'MEDIDA', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_MEDIDA', old.id_medida);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_MEDIDA', old.id_medida, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'MEDIDA', old.medida, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);


end
^

CREATE TRIGGER Z_SINC_MEDIDA_AI FOR MEDIDA
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'MEDIDA', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_MEDIDA', new.id_medida);

  if (new.id_medida is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_MEDIDA', null, new.id_medida);

  if (new.medida is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'MEDIDA', null, new.medida);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);


end
^

CREATE TRIGGER Z_SINC_MEDIDA_ARTICULO_AD FOR MEDIDA_ARTICULO
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'MEDIDA_ARTICULO', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_MEDIDA_ARTICULO', old.id_medida_articulo);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_MEDIDA_ARTICULO', old.id_medida_articulo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_ARTICULO', old.id_articulo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_MEDIDA', old.id_medida, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);


end
^

CREATE TRIGGER Z_SINC_MEDIDA_ARTICULO_AI FOR MEDIDA_ARTICULO
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'MEDIDA_ARTICULO', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_MEDIDA_ARTICULO', new.id_medida_articulo);

  if (new.id_medida_articulo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_MEDIDA_ARTICULO', null, new.id_medida_articulo);

  if (new.id_articulo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_ARTICULO', null, new.id_articulo);

  if (new.id_medida is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_MEDIDA', null, new.id_medida);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);


end
^

CREATE TRIGGER Z_SINC_MEDIDA_ARTICULO_AU FOR MEDIDA_ARTICULO
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'MEDIDA_ARTICULO', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_MEDIDA_ARTICULO', old.id_medida_articulo);

  if ((old.id_medida_articulo is null and new.id_medida_articulo is not null) or
      (new.id_medida_articulo is null and old.id_medida_articulo is not null) or
      (new.id_medida_articulo is not null and old.id_medida_articulo is not null and new.id_medida_articulo <> old.id_medida_articulo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_MEDIDA_ARTICULO', old.id_medida_articulo, new.id_medida_articulo);

  if ((old.id_articulo is null and new.id_articulo is not null) or
      (new.id_articulo is null and old.id_articulo is not null) or
      (new.id_articulo is not null and old.id_articulo is not null and new.id_articulo <> old.id_articulo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_ARTICULO', old.id_articulo, new.id_articulo);

  if ((old.id_medida is null and new.id_medida is not null) or
      (new.id_medida is null and old.id_medida is not null) or
      (new.id_medida is not null and old.id_medida is not null and new.id_medida <> old.id_medida)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_MEDIDA', old.id_medida, new.id_medida);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);


end
^

CREATE TRIGGER Z_SINC_MEDIDA_AU FOR MEDIDA
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'MEDIDA', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_MEDIDA', old.id_medida);

  if ((old.id_medida is null and new.id_medida is not null) or
      (new.id_medida is null and old.id_medida is not null) or
      (new.id_medida is not null and old.id_medida is not null and new.id_medida <> old.id_medida)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_MEDIDA', old.id_medida, new.id_medida);

  if ((old.medida is null and new.medida is not null) or
      (new.medida is null and old.medida is not null) or
      (new.medida is not null and old.medida is not null and new.medida <> old.medida)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'MEDIDA', old.medida, new.medida);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);


end
^

CREATE TRIGGER Z_SINC_PAGO_FACTURAS_AD FOR PAGO_FACTURAS
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PAGO_FACTURAS', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PAGO_FACTURAS', old.id_pago_facturas);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PAGO_FACTURAS', old.id_pago_facturas, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_COMPROBANTE', old.id_comprobante, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_FACTURA', old.id_factura, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_COMPROBANTE', old.id_tipo_comprobante, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPORTE', old.importe, null);


end
^

CREATE TRIGGER Z_SINC_PAGO_FACTURAS_AI FOR PAGO_FACTURAS
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PAGO_FACTURAS', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PAGO_FACTURAS', new.id_pago_facturas);

  if (new.id_pago_facturas is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PAGO_FACTURAS', null, new.id_pago_facturas);

  if (new.id_comprobante is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_COMPROBANTE', null, new.id_comprobante);

  if (new.id_factura is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_FACTURA', null, new.id_factura);

  if (new.id_tipo_comprobante is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_COMPROBANTE', null, new.id_tipo_comprobante);

  if (new.importe is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPORTE', null, new.importe);


end
^

CREATE TRIGGER Z_SINC_PAGO_FACTURAS_AU FOR PAGO_FACTURAS
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PAGO_FACTURAS', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PAGO_FACTURAS', old.id_pago_facturas);

  if ((old.id_pago_facturas is null and new.id_pago_facturas is not null) or
      (new.id_pago_facturas is null and old.id_pago_facturas is not null) or
      (new.id_pago_facturas is not null and old.id_pago_facturas is not null and new.id_pago_facturas <> old.id_pago_facturas)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PAGO_FACTURAS', old.id_pago_facturas, new.id_pago_facturas);

  if ((old.id_comprobante is null and new.id_comprobante is not null) or
      (new.id_comprobante is null and old.id_comprobante is not null) or
      (new.id_comprobante is not null and old.id_comprobante is not null and new.id_comprobante <> old.id_comprobante)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_COMPROBANTE', old.id_comprobante, new.id_comprobante);

  if ((old.id_factura is null and new.id_factura is not null) or
      (new.id_factura is null and old.id_factura is not null) or
      (new.id_factura is not null and old.id_factura is not null and new.id_factura <> old.id_factura)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_FACTURA', old.id_factura, new.id_factura);

  if ((old.id_tipo_comprobante is null and new.id_tipo_comprobante is not null) or
      (new.id_tipo_comprobante is null and old.id_tipo_comprobante is not null) or
      (new.id_tipo_comprobante is not null and old.id_tipo_comprobante is not null and new.id_tipo_comprobante <> old.id_tipo_comprobante)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_COMPROBANTE', old.id_tipo_comprobante, new.id_tipo_comprobante);

  if ((old.importe is null and new.importe is not null) or
      (new.importe is null and old.importe is not null) or
      (new.importe is not null and old.importe is not null and new.importe <> old.importe)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPORTE', old.importe, new.importe);


end
^

CREATE TRIGGER Z_SINC_PERSONA_AD FOR PERSONA
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PERSONA', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PERSONA', old.id_persona);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PERSONA', old.id_persona, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PROVINCIA', old.id_provincia, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_DOC', old.id_tipo_doc, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_IVA', old.id_tipo_iva, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOMBRE', old.nombre, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DIRECCION', old.direccion, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'LOCALIDAD', old.localidad, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODIGO_POSTAL', old.codigo_postal, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'TELEFONO', old.telefono, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'EMAIL', old.email, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FECHA_NACIMIENTO', old.fecha_nacimiento, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NUMERO_DOC', old.numero_doc, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'SEXO', old.sexo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);

  insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'DESCRIPCION', old.descripcion, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CUIT_CUIL', old.cuit_cuil, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DESCUENTO_ESPECIAL', old.descuento_especial, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODIGO_CORTO', old.codigo_corto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODIGO_BARRA', old.codigo_barra, null);


end
^

CREATE TRIGGER Z_SINC_PERSONA_AI FOR PERSONA
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PERSONA', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PERSONA', new.id_persona);

  if (new.id_persona is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PERSONA', null, new.id_persona);

  if (new.id_provincia is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PROVINCIA', null, new.id_provincia);

  if (new.id_tipo_doc is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_DOC', null, new.id_tipo_doc);

  if (new.id_tipo_iva is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_IVA', null, new.id_tipo_iva);

  if (new.nombre is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NOMBRE', null, new.nombre);

  if (new.direccion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DIRECCION', null, new.direccion);

  if (new.localidad is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'LOCALIDAD', null, new.localidad);

  if (new.codigo_postal is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODIGO_POSTAL', null, new.codigo_postal);

  if (new.telefono is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'TELEFONO', null, new.telefono);

  if (new.email is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'EMAIL', null, new.email);

  if (new.fecha_nacimiento is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FECHA_NACIMIENTO', null, new.fecha_nacimiento);

  if (new.numero_doc is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NUMERO_DOC', null, new.numero_doc);

  if (new.sexo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'SEXO', null, new.sexo);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);

  if (not (new.descripcion is null)) then
    insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
           values (:tid,'DESCRIPCION',null, new.descripcion);

  if (new.cuit_cuil is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CUIT_CUIL', null, new.cuit_cuil);

  if (new.descuento_especial is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DESCUENTO_ESPECIAL', null, new.descuento_especial);

  if (new.codigo_corto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODIGO_CORTO', null, new.codigo_corto);

  if (new.codigo_barra is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODIGO_BARRA', null, new.codigo_barra);


end
^

CREATE TRIGGER Z_SINC_PERSONA_AU FOR PERSONA
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PERSONA', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PERSONA', old.id_persona);

  if ((old.id_persona is null and new.id_persona is not null) or
      (new.id_persona is null and old.id_persona is not null) or
      (new.id_persona is not null and old.id_persona is not null and new.id_persona <> old.id_persona)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PERSONA', old.id_persona, new.id_persona);

  if ((old.id_provincia is null and new.id_provincia is not null) or
      (new.id_provincia is null and old.id_provincia is not null) or
      (new.id_provincia is not null and old.id_provincia is not null and new.id_provincia <> old.id_provincia)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PROVINCIA', old.id_provincia, new.id_provincia);

  if ((old.id_tipo_doc is null and new.id_tipo_doc is not null) or
      (new.id_tipo_doc is null and old.id_tipo_doc is not null) or
      (new.id_tipo_doc is not null and old.id_tipo_doc is not null and new.id_tipo_doc <> old.id_tipo_doc)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_DOC', old.id_tipo_doc, new.id_tipo_doc);

  if ((old.id_tipo_iva is null and new.id_tipo_iva is not null) or
      (new.id_tipo_iva is null and old.id_tipo_iva is not null) or
      (new.id_tipo_iva is not null and old.id_tipo_iva is not null and new.id_tipo_iva <> old.id_tipo_iva)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_IVA', old.id_tipo_iva, new.id_tipo_iva);

  if ((old.nombre is null and new.nombre is not null) or
      (new.nombre is null and old.nombre is not null) or
      (new.nombre is not null and old.nombre is not null and new.nombre <> old.nombre)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOMBRE', old.nombre, new.nombre);

  if ((old.direccion is null and new.direccion is not null) or
      (new.direccion is null and old.direccion is not null) or
      (new.direccion is not null and old.direccion is not null and new.direccion <> old.direccion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DIRECCION', old.direccion, new.direccion);

  if ((old.localidad is null and new.localidad is not null) or
      (new.localidad is null and old.localidad is not null) or
      (new.localidad is not null and old.localidad is not null and new.localidad <> old.localidad)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'LOCALIDAD', old.localidad, new.localidad);

  if ((old.codigo_postal is null and new.codigo_postal is not null) or
      (new.codigo_postal is null and old.codigo_postal is not null) or
      (new.codigo_postal is not null and old.codigo_postal is not null and new.codigo_postal <> old.codigo_postal)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODIGO_POSTAL', old.codigo_postal, new.codigo_postal);

  if ((old.telefono is null and new.telefono is not null) or
      (new.telefono is null and old.telefono is not null) or
      (new.telefono is not null and old.telefono is not null and new.telefono <> old.telefono)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'TELEFONO', old.telefono, new.telefono);

  if ((old.email is null and new.email is not null) or
      (new.email is null and old.email is not null) or
      (new.email is not null and old.email is not null and new.email <> old.email)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'EMAIL', old.email, new.email);

  if ((old.fecha_nacimiento is null and new.fecha_nacimiento is not null) or
      (new.fecha_nacimiento is null and old.fecha_nacimiento is not null) or
      (new.fecha_nacimiento is not null and old.fecha_nacimiento is not null and new.fecha_nacimiento <> old.fecha_nacimiento)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FECHA_NACIMIENTO', old.fecha_nacimiento, new.fecha_nacimiento);

  if ((old.numero_doc is null and new.numero_doc is not null) or
      (new.numero_doc is null and old.numero_doc is not null) or
      (new.numero_doc is not null and old.numero_doc is not null and new.numero_doc <> old.numero_doc)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NUMERO_DOC', old.numero_doc, new.numero_doc);

  if ((old.sexo is null and new.sexo is not null) or
      (new.sexo is null and old.sexo is not null) or
      (new.sexo is not null and old.sexo is not null and new.sexo <> old.sexo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'SEXO', old.sexo, new.sexo);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);

  if ((old.descripcion is null and new.descripcion is not null) or
      (new.descripcion is null and old.descripcion is not null) or
      (new.descripcion is not null and old.descripcion is not null and new.descripcion <> old.descripcion)) then
     insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
            values (:tid, 'DESCRIPCION', old.descripcion, new.descripcion);

  if ((old.cuit_cuil is null and new.cuit_cuil is not null) or
      (new.cuit_cuil is null and old.cuit_cuil is not null) or
      (new.cuit_cuil is not null and old.cuit_cuil is not null and new.cuit_cuil <> old.cuit_cuil)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CUIT_CUIL', old.cuit_cuil, new.cuit_cuil);

  if ((old.descuento_especial is null and new.descuento_especial is not null) or
      (new.descuento_especial is null and old.descuento_especial is not null) or
      (new.descuento_especial is not null and old.descuento_especial is not null and new.descuento_especial <> old.descuento_especial)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DESCUENTO_ESPECIAL', old.descuento_especial, new.descuento_especial);

  if ((old.codigo_corto is null and new.codigo_corto is not null) or
      (new.codigo_corto is null and old.codigo_corto is not null) or
      (new.codigo_corto is not null and old.codigo_corto is not null and new.codigo_corto <> old.codigo_corto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODIGO_CORTO', old.codigo_corto, new.codigo_corto);

  if ((old.codigo_barra is null and new.codigo_barra is not null) or
      (new.codigo_barra is null and old.codigo_barra is not null) or
      (new.codigo_barra is not null and old.codigo_barra is not null and new.codigo_barra <> old.codigo_barra)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODIGO_BARRA', old.codigo_barra, new.codigo_barra);


end
^

CREATE TRIGGER Z_SINC_PERSONA_PUNTOS_AD FOR PERSONA_PUNTOS
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PERSONA_PUNTOS', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PERSONA_PUNTO', old.id_persona_punto);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PERSONA_PUNTO', old.id_persona_punto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PERSONA', old.id_persona, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'MONTO', old.monto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PUNTOS_MAYOR_MONTO', old.puntos_mayor_monto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PUNTOS_MENOR_MONTO', old.puntos_menor_monto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PUNTOS_ACUMULADOS', old.puntos_acumulados, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);


end
^

CREATE TRIGGER Z_SINC_PERSONA_PUNTOS_AI FOR PERSONA_PUNTOS
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PERSONA_PUNTOS', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PERSONA_PUNTO', new.id_persona_punto);

  if (new.id_persona_punto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PERSONA_PUNTO', null, new.id_persona_punto);

  if (new.id_persona is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PERSONA', null, new.id_persona);

  if (new.monto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'MONTO', null, new.monto);

  if (new.puntos_mayor_monto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PUNTOS_MAYOR_MONTO', null, new.puntos_mayor_monto);

  if (new.puntos_menor_monto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PUNTOS_MENOR_MONTO', null, new.puntos_menor_monto);

  if (new.puntos_acumulados is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PUNTOS_ACUMULADOS', null, new.puntos_acumulados);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);


end
^

CREATE TRIGGER Z_SINC_PERSONA_PUNTOS_AU FOR PERSONA_PUNTOS
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PERSONA_PUNTOS', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PERSONA_PUNTO', old.id_persona_punto);

  if ((old.id_persona_punto is null and new.id_persona_punto is not null) or
      (new.id_persona_punto is null and old.id_persona_punto is not null) or
      (new.id_persona_punto is not null and old.id_persona_punto is not null and new.id_persona_punto <> old.id_persona_punto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PERSONA_PUNTO', old.id_persona_punto, new.id_persona_punto);

  if ((old.id_persona is null and new.id_persona is not null) or
      (new.id_persona is null and old.id_persona is not null) or
      (new.id_persona is not null and old.id_persona is not null and new.id_persona <> old.id_persona)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PERSONA', old.id_persona, new.id_persona);

  if ((old.monto is null and new.monto is not null) or
      (new.monto is null and old.monto is not null) or
      (new.monto is not null and old.monto is not null and new.monto <> old.monto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'MONTO', old.monto, new.monto);

  if ((old.puntos_mayor_monto is null and new.puntos_mayor_monto is not null) or
      (new.puntos_mayor_monto is null and old.puntos_mayor_monto is not null) or
      (new.puntos_mayor_monto is not null and old.puntos_mayor_monto is not null and new.puntos_mayor_monto <> old.puntos_mayor_monto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PUNTOS_MAYOR_MONTO', old.puntos_mayor_monto, new.puntos_mayor_monto);

  if ((old.puntos_menor_monto is null and new.puntos_menor_monto is not null) or
      (new.puntos_menor_monto is null and old.puntos_menor_monto is not null) or
      (new.puntos_menor_monto is not null and old.puntos_menor_monto is not null and new.puntos_menor_monto <> old.puntos_menor_monto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PUNTOS_MENOR_MONTO', old.puntos_menor_monto, new.puntos_menor_monto);

  if ((old.puntos_acumulados is null and new.puntos_acumulados is not null) or
      (new.puntos_acumulados is null and old.puntos_acumulados is not null) or
      (new.puntos_acumulados is not null and old.puntos_acumulados is not null and new.puntos_acumulados <> old.puntos_acumulados)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PUNTOS_ACUMULADOS', old.puntos_acumulados, new.puntos_acumulados);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);


end
^

CREATE TRIGGER Z_SINC_PERSONA_RELACION_AD FOR PERSONA_RELACION
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PERSONA_RELACION', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PERSONA_RELACION', old.id_persona_relacion);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PERSONA_RELACION', old.id_persona_relacion, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PERSONA', old.id_persona, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_RELACION', old.id_relacion, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_EMPRESA', old.id_empresa, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_SUCURSAL', old.id_sucursal, null);


end
^

CREATE TRIGGER Z_SINC_PERSONA_RELACION_AI FOR PERSONA_RELACION
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PERSONA_RELACION', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PERSONA_RELACION', new.id_persona_relacion);

  if (new.id_persona_relacion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PERSONA_RELACION', null, new.id_persona_relacion);

  if (new.id_persona is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PERSONA', null, new.id_persona);

  if (new.id_relacion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_RELACION', null, new.id_relacion);

  if (new.id_empresa is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_EMPRESA', null, new.id_empresa);

  if (new.id_sucursal is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_SUCURSAL', null, new.id_sucursal);


end
^

CREATE TRIGGER Z_SINC_PERSONA_RELACION_AU FOR PERSONA_RELACION
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PERSONA_RELACION', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PERSONA_RELACION', old.id_persona_relacion);

  if ((old.id_persona_relacion is null and new.id_persona_relacion is not null) or
      (new.id_persona_relacion is null and old.id_persona_relacion is not null) or
      (new.id_persona_relacion is not null and old.id_persona_relacion is not null and new.id_persona_relacion <> old.id_persona_relacion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PERSONA_RELACION', old.id_persona_relacion, new.id_persona_relacion);

  if ((old.id_persona is null and new.id_persona is not null) or
      (new.id_persona is null and old.id_persona is not null) or
      (new.id_persona is not null and old.id_persona is not null and new.id_persona <> old.id_persona)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PERSONA', old.id_persona, new.id_persona);

  if ((old.id_relacion is null and new.id_relacion is not null) or
      (new.id_relacion is null and old.id_relacion is not null) or
      (new.id_relacion is not null and old.id_relacion is not null and new.id_relacion <> old.id_relacion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_RELACION', old.id_relacion, new.id_relacion);

  if ((old.id_empresa is null and new.id_empresa is not null) or
      (new.id_empresa is null and old.id_empresa is not null) or
      (new.id_empresa is not null and old.id_empresa is not null and new.id_empresa <> old.id_empresa)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_EMPRESA', old.id_empresa, new.id_empresa);

  if ((old.id_sucursal is null and new.id_sucursal is not null) or
      (new.id_sucursal is null and old.id_sucursal is not null) or
      (new.id_sucursal is not null and old.id_sucursal is not null and new.id_sucursal <> old.id_sucursal)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_SUCURSAL', old.id_sucursal, new.id_sucursal);


end
^

CREATE TRIGGER Z_SINC_POSICION_SUCURSAL_AD FOR POSICION_SUCURSAL
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'POSICION_SUCURSAL', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_POSICION_SUCURSAL', old.id_posicion_sucursal);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_POSICION_SUCURSAL', old.id_posicion_sucursal, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_SUCURSAL', old.id_sucursal, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'SECCION', old.seccion, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'SECTOR', old.sector, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FILA', old.fila, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COLUMNA', old.columna, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PUNTO_SALIDA', old.punto_salida, null);


end
^

CREATE TRIGGER Z_SINC_POSICION_SUCURSAL_AI FOR POSICION_SUCURSAL
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'POSICION_SUCURSAL', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_POSICION_SUCURSAL', new.id_posicion_sucursal);

  if (new.id_posicion_sucursal is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_POSICION_SUCURSAL', null, new.id_posicion_sucursal);

  if (new.id_sucursal is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_SUCURSAL', null, new.id_sucursal);

  if (new.seccion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'SECCION', null, new.seccion);

  if (new.sector is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'SECTOR', null, new.sector);

  if (new.fila is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FILA', null, new.fila);

  if (new.columna is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COLUMNA', null, new.columna);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);

  if (new.punto_salida is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PUNTO_SALIDA', null, new.punto_salida);


end
^

CREATE TRIGGER Z_SINC_POSICION_SUCURSAL_AU FOR POSICION_SUCURSAL
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'POSICION_SUCURSAL', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_POSICION_SUCURSAL', old.id_posicion_sucursal);

  if ((old.id_posicion_sucursal is null and new.id_posicion_sucursal is not null) or
      (new.id_posicion_sucursal is null and old.id_posicion_sucursal is not null) or
      (new.id_posicion_sucursal is not null and old.id_posicion_sucursal is not null and new.id_posicion_sucursal <> old.id_posicion_sucursal)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_POSICION_SUCURSAL', old.id_posicion_sucursal, new.id_posicion_sucursal);

  if ((old.id_sucursal is null and new.id_sucursal is not null) or
      (new.id_sucursal is null and old.id_sucursal is not null) or
      (new.id_sucursal is not null and old.id_sucursal is not null and new.id_sucursal <> old.id_sucursal)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_SUCURSAL', old.id_sucursal, new.id_sucursal);

  if ((old.seccion is null and new.seccion is not null) or
      (new.seccion is null and old.seccion is not null) or
      (new.seccion is not null and old.seccion is not null and new.seccion <> old.seccion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'SECCION', old.seccion, new.seccion);

  if ((old.sector is null and new.sector is not null) or
      (new.sector is null and old.sector is not null) or
      (new.sector is not null and old.sector is not null and new.sector <> old.sector)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'SECTOR', old.sector, new.sector);

  if ((old.fila is null and new.fila is not null) or
      (new.fila is null and old.fila is not null) or
      (new.fila is not null and old.fila is not null and new.fila <> old.fila)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FILA', old.fila, new.fila);

  if ((old.columna is null and new.columna is not null) or
      (new.columna is null and old.columna is not null) or
      (new.columna is not null and old.columna is not null and new.columna <> old.columna)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COLUMNA', old.columna, new.columna);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);

  if ((old.punto_salida is null and new.punto_salida is not null) or
      (new.punto_salida is null and old.punto_salida is not null) or
      (new.punto_salida is not null and old.punto_salida is not null and new.punto_salida <> old.punto_salida)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PUNTO_SALIDA', old.punto_salida, new.punto_salida);


end
^

CREATE TRIGGER Z_SINC_PRECIO_AD FOR PRECIO
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PRECIO', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PRECIO', old.id_precio);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PRECIO', old.id_precio, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PRODUCTO', old.id_producto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_SUCURSAL', old.id_sucursal, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PRECIO_COSTO', old.precio_costo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PRECIO_VENTA', old.precio_venta, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COEF_GANANCIA', old.coef_ganancia, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COEF_DESCUENTO', old.coef_descuento, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPUESTO_INTERNO', old.impuesto_interno, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPUESTO_IVA', old.impuesto_iva, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PRECIO_COSTO_CIMPUESTOS', old.precio_costo_cimpuestos, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPUESTO_ADICIONAL1', old.impuesto_adicional1, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPUESTO_ADICIONAL2', old.impuesto_adicional2, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PRECIO1', old.precio1, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PRECIO2', old.precio2, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PRECIO3', old.precio3, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PRECIO4', old.precio4, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PRECIO5', old.precio5, null);


end
^

CREATE TRIGGER Z_SINC_PRECIO_AI FOR PRECIO
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PRECIO', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PRECIO', new.id_precio);

  if (new.id_precio is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PRECIO', null, new.id_precio);

  if (new.id_producto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PRODUCTO', null, new.id_producto);

  if (new.id_sucursal is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_SUCURSAL', null, new.id_sucursal);

  if (new.precio_costo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PRECIO_COSTO', null, new.precio_costo);

  if (new.precio_venta is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PRECIO_VENTA', null, new.precio_venta);

  if (new.coef_ganancia is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COEF_GANANCIA', null, new.coef_ganancia);

  if (new.coef_descuento is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COEF_DESCUENTO', null, new.coef_descuento);

  if (new.impuesto_interno is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPUESTO_INTERNO', null, new.impuesto_interno);

  if (new.impuesto_iva is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPUESTO_IVA', null, new.impuesto_iva);

  if (new.precio_costo_cimpuestos is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PRECIO_COSTO_CIMPUESTOS', null, new.precio_costo_cimpuestos);

  if (new.impuesto_adicional1 is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPUESTO_ADICIONAL1', null, new.impuesto_adicional1);

  if (new.impuesto_adicional2 is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPUESTO_ADICIONAL2', null, new.impuesto_adicional2);

  if (new.precio1 is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PRECIO1', null, new.precio1);

  if (new.precio2 is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PRECIO2', null, new.precio2);

  if (new.precio3 is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PRECIO3', null, new.precio3);

  if (new.precio4 is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PRECIO4', null, new.precio4);

  if (new.precio5 is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PRECIO5', null, new.precio5);


end
^

CREATE TRIGGER Z_SINC_PRECIO_AU FOR PRECIO
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PRECIO', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PRECIO', old.id_precio);

  if ((old.id_precio is null and new.id_precio is not null) or
      (new.id_precio is null and old.id_precio is not null) or
      (new.id_precio is not null and old.id_precio is not null and new.id_precio <> old.id_precio)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PRECIO', old.id_precio, new.id_precio);

  if ((old.id_producto is null and new.id_producto is not null) or
      (new.id_producto is null and old.id_producto is not null) or
      (new.id_producto is not null and old.id_producto is not null and new.id_producto <> old.id_producto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PRODUCTO', old.id_producto, new.id_producto);

  if ((old.id_sucursal is null and new.id_sucursal is not null) or
      (new.id_sucursal is null and old.id_sucursal is not null) or
      (new.id_sucursal is not null and old.id_sucursal is not null and new.id_sucursal <> old.id_sucursal)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_SUCURSAL', old.id_sucursal, new.id_sucursal);

  if ((old.precio_costo is null and new.precio_costo is not null) or
      (new.precio_costo is null and old.precio_costo is not null) or
      (new.precio_costo is not null and old.precio_costo is not null and new.precio_costo <> old.precio_costo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PRECIO_COSTO', old.precio_costo, new.precio_costo);

  if ((old.precio_venta is null and new.precio_venta is not null) or
      (new.precio_venta is null and old.precio_venta is not null) or
      (new.precio_venta is not null and old.precio_venta is not null and new.precio_venta <> old.precio_venta)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PRECIO_VENTA', old.precio_venta, new.precio_venta);

  if ((old.coef_ganancia is null and new.coef_ganancia is not null) or
      (new.coef_ganancia is null and old.coef_ganancia is not null) or
      (new.coef_ganancia is not null and old.coef_ganancia is not null and new.coef_ganancia <> old.coef_ganancia)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COEF_GANANCIA', old.coef_ganancia, new.coef_ganancia);

  if ((old.coef_descuento is null and new.coef_descuento is not null) or
      (new.coef_descuento is null and old.coef_descuento is not null) or
      (new.coef_descuento is not null and old.coef_descuento is not null and new.coef_descuento <> old.coef_descuento)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COEF_DESCUENTO', old.coef_descuento, new.coef_descuento);

  if ((old.impuesto_interno is null and new.impuesto_interno is not null) or
      (new.impuesto_interno is null and old.impuesto_interno is not null) or
      (new.impuesto_interno is not null and old.impuesto_interno is not null and new.impuesto_interno <> old.impuesto_interno)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPUESTO_INTERNO', old.impuesto_interno, new.impuesto_interno);

  if ((old.impuesto_iva is null and new.impuesto_iva is not null) or
      (new.impuesto_iva is null and old.impuesto_iva is not null) or
      (new.impuesto_iva is not null and old.impuesto_iva is not null and new.impuesto_iva <> old.impuesto_iva)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPUESTO_IVA', old.impuesto_iva, new.impuesto_iva);

  if ((old.precio_costo_cimpuestos is null and new.precio_costo_cimpuestos is not null) or
      (new.precio_costo_cimpuestos is null and old.precio_costo_cimpuestos is not null) or
      (new.precio_costo_cimpuestos is not null and old.precio_costo_cimpuestos is not null and new.precio_costo_cimpuestos <> old.precio_costo_cimpuestos)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PRECIO_COSTO_CIMPUESTOS', old.precio_costo_cimpuestos, new.precio_costo_cimpuestos);

  if ((old.impuesto_adicional1 is null and new.impuesto_adicional1 is not null) or
      (new.impuesto_adicional1 is null and old.impuesto_adicional1 is not null) or
      (new.impuesto_adicional1 is not null and old.impuesto_adicional1 is not null and new.impuesto_adicional1 <> old.impuesto_adicional1)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPUESTO_ADICIONAL1', old.impuesto_adicional1, new.impuesto_adicional1);

  if ((old.impuesto_adicional2 is null and new.impuesto_adicional2 is not null) or
      (new.impuesto_adicional2 is null and old.impuesto_adicional2 is not null) or
      (new.impuesto_adicional2 is not null and old.impuesto_adicional2 is not null and new.impuesto_adicional2 <> old.impuesto_adicional2)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPUESTO_ADICIONAL2', old.impuesto_adicional2, new.impuesto_adicional2);

  if ((old.precio1 is null and new.precio1 is not null) or
      (new.precio1 is null and old.precio1 is not null) or
      (new.precio1 is not null and old.precio1 is not null and new.precio1 <> old.precio1)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PRECIO1', old.precio1, new.precio1);

  if ((old.precio2 is null and new.precio2 is not null) or
      (new.precio2 is null and old.precio2 is not null) or
      (new.precio2 is not null and old.precio2 is not null and new.precio2 <> old.precio2)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PRECIO2', old.precio2, new.precio2);

  if ((old.precio3 is null and new.precio3 is not null) or
      (new.precio3 is null and old.precio3 is not null) or
      (new.precio3 is not null and old.precio3 is not null and new.precio3 <> old.precio3)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PRECIO3', old.precio3, new.precio3);

  if ((old.precio4 is null and new.precio4 is not null) or
      (new.precio4 is null and old.precio4 is not null) or
      (new.precio4 is not null and old.precio4 is not null and new.precio4 <> old.precio4)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PRECIO4', old.precio4, new.precio4);

  if ((old.precio5 is null and new.precio5 is not null) or
      (new.precio5 is null and old.precio5 is not null) or
      (new.precio5 is not null and old.precio5 is not null and new.precio5 <> old.precio5)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PRECIO5', old.precio5, new.precio5);


end
^

CREATE TRIGGER Z_SINC_PROVINCIA_AD FOR PROVINCIA
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PROVINCIA', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PROVINCIA', old.id_provincia);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PROVINCIA', old.id_provincia, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOMBRE_PROVINCIA', old.nombre_provincia, null);


end
^

CREATE TRIGGER Z_SINC_PROVINCIA_AI FOR PROVINCIA
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PROVINCIA', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PROVINCIA', new.id_provincia);

  if (new.id_provincia is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PROVINCIA', null, new.id_provincia);

  if (new.nombre_provincia is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NOMBRE_PROVINCIA', null, new.nombre_provincia);


end
^

CREATE TRIGGER Z_SINC_PROVINCIA_AU FOR PROVINCIA
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PROVINCIA', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PROVINCIA', old.id_provincia);

  if ((old.id_provincia is null and new.id_provincia is not null) or
      (new.id_provincia is null and old.id_provincia is not null) or
      (new.id_provincia is not null and old.id_provincia is not null and new.id_provincia <> old.id_provincia)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PROVINCIA', old.id_provincia, new.id_provincia);

  if ((old.nombre_provincia is null and new.nombre_provincia is not null) or
      (new.nombre_provincia is null and old.nombre_provincia is not null) or
      (new.nombre_provincia is not null and old.nombre_provincia is not null and new.nombre_provincia <> old.nombre_provincia)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOMBRE_PROVINCIA', old.nombre_provincia, new.nombre_provincia);


end
^

CREATE TRIGGER Z_SINC_SUCURSAL_AD FOR SUCURSAL
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'SUCURSAL', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_SUCURSAL', old.id_sucursal);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_SUCURSAL', old.id_sucursal, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOMBRE', old.nombre, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DIRECCION', old.direccion, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'LOCALIDAD', old.localidad, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODIGO_POSTAL', old.codigo_postal, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'TELEFONO', old.telefono, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'EMAIL', old.email, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);

  insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'LOGO', old.logo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'REPORTE_TITULO', old.reporte_titulo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'REPORTE_SUBTITULO', old.reporte_subtitulo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COMPROBANTE_TITULO', old.comprobante_titulo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COMPROBANTE_RENGLON1', old.comprobante_renglon1, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COMPROBANTE_RENGLON2', old.comprobante_renglon2, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COMPROBANTE_RENGLON3', old.comprobante_renglon3, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COMPROBANTE_RENGLON4', old.comprobante_renglon4, null);


end
^

CREATE TRIGGER Z_SINC_SUCURSAL_AI FOR SUCURSAL
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'SUCURSAL', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_SUCURSAL', new.id_sucursal);

  if (new.id_sucursal is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_SUCURSAL', null, new.id_sucursal);

  if (new.nombre is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NOMBRE', null, new.nombre);

  if (new.direccion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DIRECCION', null, new.direccion);

  if (new.localidad is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'LOCALIDAD', null, new.localidad);

  if (new.codigo_postal is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODIGO_POSTAL', null, new.codigo_postal);

  if (new.telefono is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'TELEFONO', null, new.telefono);

  if (new.email is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'EMAIL', null, new.email);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);

  if (not (new.logo is null)) then
    insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
           values (:tid,'LOGO',null, new.logo);

  if (new.reporte_titulo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'REPORTE_TITULO', null, new.reporte_titulo);

  if (new.reporte_subtitulo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'REPORTE_SUBTITULO', null, new.reporte_subtitulo);

  if (new.comprobante_titulo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COMPROBANTE_TITULO', null, new.comprobante_titulo);

  if (new.comprobante_renglon1 is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COMPROBANTE_RENGLON1', null, new.comprobante_renglon1);

  if (new.comprobante_renglon2 is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COMPROBANTE_RENGLON2', null, new.comprobante_renglon2);

  if (new.comprobante_renglon3 is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COMPROBANTE_RENGLON3', null, new.comprobante_renglon3);

  if (new.comprobante_renglon4 is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COMPROBANTE_RENGLON4', null, new.comprobante_renglon4);


end
^

CREATE TRIGGER Z_SINC_SUCURSAL_AU FOR SUCURSAL
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'SUCURSAL', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_SUCURSAL', old.id_sucursal);

  if ((old.id_sucursal is null and new.id_sucursal is not null) or
      (new.id_sucursal is null and old.id_sucursal is not null) or
      (new.id_sucursal is not null and old.id_sucursal is not null and new.id_sucursal <> old.id_sucursal)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_SUCURSAL', old.id_sucursal, new.id_sucursal);

  if ((old.nombre is null and new.nombre is not null) or
      (new.nombre is null and old.nombre is not null) or
      (new.nombre is not null and old.nombre is not null and new.nombre <> old.nombre)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOMBRE', old.nombre, new.nombre);

  if ((old.direccion is null and new.direccion is not null) or
      (new.direccion is null and old.direccion is not null) or
      (new.direccion is not null and old.direccion is not null and new.direccion <> old.direccion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DIRECCION', old.direccion, new.direccion);

  if ((old.localidad is null and new.localidad is not null) or
      (new.localidad is null and old.localidad is not null) or
      (new.localidad is not null and old.localidad is not null and new.localidad <> old.localidad)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'LOCALIDAD', old.localidad, new.localidad);

  if ((old.codigo_postal is null and new.codigo_postal is not null) or
      (new.codigo_postal is null and old.codigo_postal is not null) or
      (new.codigo_postal is not null and old.codigo_postal is not null and new.codigo_postal <> old.codigo_postal)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODIGO_POSTAL', old.codigo_postal, new.codigo_postal);

  if ((old.telefono is null and new.telefono is not null) or
      (new.telefono is null and old.telefono is not null) or
      (new.telefono is not null and old.telefono is not null and new.telefono <> old.telefono)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'TELEFONO', old.telefono, new.telefono);

  if ((old.email is null and new.email is not null) or
      (new.email is null and old.email is not null) or
      (new.email is not null and old.email is not null and new.email <> old.email)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'EMAIL', old.email, new.email);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);

  if ((old.logo is null and new.logo is not null) or
      (new.logo is null and old.logo is not null) or
      (new.logo is not null and old.logo is not null and new.logo <> old.logo)) then
     insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
            values (:tid, 'LOGO', old.logo, new.logo);

  if ((old.reporte_titulo is null and new.reporte_titulo is not null) or
      (new.reporte_titulo is null and old.reporte_titulo is not null) or
      (new.reporte_titulo is not null and old.reporte_titulo is not null and new.reporte_titulo <> old.reporte_titulo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'REPORTE_TITULO', old.reporte_titulo, new.reporte_titulo);

  if ((old.reporte_subtitulo is null and new.reporte_subtitulo is not null) or
      (new.reporte_subtitulo is null and old.reporte_subtitulo is not null) or
      (new.reporte_subtitulo is not null and old.reporte_subtitulo is not null and new.reporte_subtitulo <> old.reporte_subtitulo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'REPORTE_SUBTITULO', old.reporte_subtitulo, new.reporte_subtitulo);

  if ((old.comprobante_titulo is null and new.comprobante_titulo is not null) or
      (new.comprobante_titulo is null and old.comprobante_titulo is not null) or
      (new.comprobante_titulo is not null and old.comprobante_titulo is not null and new.comprobante_titulo <> old.comprobante_titulo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COMPROBANTE_TITULO', old.comprobante_titulo, new.comprobante_titulo);

  if ((old.comprobante_renglon1 is null and new.comprobante_renglon1 is not null) or
      (new.comprobante_renglon1 is null and old.comprobante_renglon1 is not null) or
      (new.comprobante_renglon1 is not null and old.comprobante_renglon1 is not null and new.comprobante_renglon1 <> old.comprobante_renglon1)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COMPROBANTE_RENGLON1', old.comprobante_renglon1, new.comprobante_renglon1);

  if ((old.comprobante_renglon2 is null and new.comprobante_renglon2 is not null) or
      (new.comprobante_renglon2 is null and old.comprobante_renglon2 is not null) or
      (new.comprobante_renglon2 is not null and old.comprobante_renglon2 is not null and new.comprobante_renglon2 <> old.comprobante_renglon2)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COMPROBANTE_RENGLON2', old.comprobante_renglon2, new.comprobante_renglon2);

  if ((old.comprobante_renglon3 is null and new.comprobante_renglon3 is not null) or
      (new.comprobante_renglon3 is null and old.comprobante_renglon3 is not null) or
      (new.comprobante_renglon3 is not null and old.comprobante_renglon3 is not null and new.comprobante_renglon3 <> old.comprobante_renglon3)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COMPROBANTE_RENGLON3', old.comprobante_renglon3, new.comprobante_renglon3);

  if ((old.comprobante_renglon4 is null and new.comprobante_renglon4 is not null) or
      (new.comprobante_renglon4 is null and old.comprobante_renglon4 is not null) or
      (new.comprobante_renglon4 is not null and old.comprobante_renglon4 is not null and new.comprobante_renglon4 <> old.comprobante_renglon4)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COMPROBANTE_RENGLON4', old.comprobante_renglon4, new.comprobante_renglon4);


end
^

CREATE TRIGGER Z_SINC_TIPO_ARTICULO_AD FOR TIPO_ARTICULO
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_ARTICULO', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_ARTICULO', old.id_tipo_articulo);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_ARTICULO', old.id_tipo_articulo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DESCRIPCION', old.descripcion, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);


end
^

CREATE TRIGGER Z_SINC_TIPO_ARTICULO_AI FOR TIPO_ARTICULO
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_ARTICULO', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_ARTICULO', new.id_tipo_articulo);

  if (new.id_tipo_articulo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_ARTICULO', null, new.id_tipo_articulo);

  if (new.descripcion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DESCRIPCION', null, new.descripcion);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);


end
^

CREATE TRIGGER Z_SINC_TIPO_ARTICULO_AU FOR TIPO_ARTICULO
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_ARTICULO', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_ARTICULO', old.id_tipo_articulo);

  if ((old.id_tipo_articulo is null and new.id_tipo_articulo is not null) or
      (new.id_tipo_articulo is null and old.id_tipo_articulo is not null) or
      (new.id_tipo_articulo is not null and old.id_tipo_articulo is not null and new.id_tipo_articulo <> old.id_tipo_articulo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_ARTICULO', old.id_tipo_articulo, new.id_tipo_articulo);

  if ((old.descripcion is null and new.descripcion is not null) or
      (new.descripcion is null and old.descripcion is not null) or
      (new.descripcion is not null and old.descripcion is not null and new.descripcion <> old.descripcion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DESCRIPCION', old.descripcion, new.descripcion);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);


end
^

CREATE TRIGGER Z_SINC_TIPO_COMPROBANTE_AD FOR TIPO_COMPROBANTE
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_COMPROBANTE', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_CPB', old.id_tipo_cpb);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_CPB', old.id_tipo_cpb, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOMBRE_TIPO_CPB', old.nombre_tipo_cpb, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'SIGNO_COBRO_PAGO', old.signo_cobro_pago, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'SIGNO_STOCK', old.signo_stock, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'SIGNO_CTA_CTE', old.signo_cta_cte, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ULTIMO_NUMERO', old.ultimo_numero, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);


end
^

CREATE TRIGGER Z_SINC_TIPO_COMPROBANTE_AI FOR TIPO_COMPROBANTE
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_COMPROBANTE', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_CPB', new.id_tipo_cpb);

  if (new.id_tipo_cpb is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_CPB', null, new.id_tipo_cpb);

  if (new.nombre_tipo_cpb is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NOMBRE_TIPO_CPB', null, new.nombre_tipo_cpb);

  if (new.signo_cobro_pago is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'SIGNO_COBRO_PAGO', null, new.signo_cobro_pago);

  if (new.signo_stock is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'SIGNO_STOCK', null, new.signo_stock);

  if (new.signo_cta_cte is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'SIGNO_CTA_CTE', null, new.signo_cta_cte);

  if (new.ultimo_numero is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ULTIMO_NUMERO', null, new.ultimo_numero);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);


end
^

CREATE TRIGGER Z_SINC_TIPO_COMPROBANTE_AU FOR TIPO_COMPROBANTE
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_COMPROBANTE', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_CPB', old.id_tipo_cpb);

  if ((old.id_tipo_cpb is null and new.id_tipo_cpb is not null) or
      (new.id_tipo_cpb is null and old.id_tipo_cpb is not null) or
      (new.id_tipo_cpb is not null and old.id_tipo_cpb is not null and new.id_tipo_cpb <> old.id_tipo_cpb)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_CPB', old.id_tipo_cpb, new.id_tipo_cpb);

  if ((old.nombre_tipo_cpb is null and new.nombre_tipo_cpb is not null) or
      (new.nombre_tipo_cpb is null and old.nombre_tipo_cpb is not null) or
      (new.nombre_tipo_cpb is not null and old.nombre_tipo_cpb is not null and new.nombre_tipo_cpb <> old.nombre_tipo_cpb)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOMBRE_TIPO_CPB', old.nombre_tipo_cpb, new.nombre_tipo_cpb);

  if ((old.signo_cobro_pago is null and new.signo_cobro_pago is not null) or
      (new.signo_cobro_pago is null and old.signo_cobro_pago is not null) or
      (new.signo_cobro_pago is not null and old.signo_cobro_pago is not null and new.signo_cobro_pago <> old.signo_cobro_pago)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'SIGNO_COBRO_PAGO', old.signo_cobro_pago, new.signo_cobro_pago);

  if ((old.signo_stock is null and new.signo_stock is not null) or
      (new.signo_stock is null and old.signo_stock is not null) or
      (new.signo_stock is not null and old.signo_stock is not null and new.signo_stock <> old.signo_stock)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'SIGNO_STOCK', old.signo_stock, new.signo_stock);

  if ((old.signo_cta_cte is null and new.signo_cta_cte is not null) or
      (new.signo_cta_cte is null and old.signo_cta_cte is not null) or
      (new.signo_cta_cte is not null and old.signo_cta_cte is not null and new.signo_cta_cte <> old.signo_cta_cte)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'SIGNO_CTA_CTE', old.signo_cta_cte, new.signo_cta_cte);

  if ((old.ultimo_numero is null and new.ultimo_numero is not null) or
      (new.ultimo_numero is null and old.ultimo_numero is not null) or
      (new.ultimo_numero is not null and old.ultimo_numero is not null and new.ultimo_numero <> old.ultimo_numero)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ULTIMO_NUMERO', old.ultimo_numero, new.ultimo_numero);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);


end
^

CREATE TRIGGER Z_SINC_TIPO_DOCUMENTO_AD FOR TIPO_DOCUMENTO
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_DOCUMENTO', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_DOC', old.id_tipo_doc);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_DOC', old.id_tipo_doc, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOMBRE_TIPO_DOC', old.nombre_tipo_doc, null);


end
^

CREATE TRIGGER Z_SINC_TIPO_DOCUMENTO_AI FOR TIPO_DOCUMENTO
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_DOCUMENTO', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_DOC', new.id_tipo_doc);

  if (new.id_tipo_doc is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_DOC', null, new.id_tipo_doc);

  if (new.nombre_tipo_doc is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NOMBRE_TIPO_DOC', null, new.nombre_tipo_doc);


end
^

CREATE TRIGGER Z_SINC_TIPO_DOCUMENTO_AU FOR TIPO_DOCUMENTO
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_DOCUMENTO', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_DOC', old.id_tipo_doc);

  if ((old.id_tipo_doc is null and new.id_tipo_doc is not null) or
      (new.id_tipo_doc is null and old.id_tipo_doc is not null) or
      (new.id_tipo_doc is not null and old.id_tipo_doc is not null and new.id_tipo_doc <> old.id_tipo_doc)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_DOC', old.id_tipo_doc, new.id_tipo_doc);

  if ((old.nombre_tipo_doc is null and new.nombre_tipo_doc is not null) or
      (new.nombre_tipo_doc is null and old.nombre_tipo_doc is not null) or
      (new.nombre_tipo_doc is not null and old.nombre_tipo_doc is not null and new.nombre_tipo_doc <> old.nombre_tipo_doc)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOMBRE_TIPO_DOC', old.nombre_tipo_doc, new.nombre_tipo_doc);


end
^

CREATE TRIGGER Z_SINC_TIPO_EMPRESA_AD FOR TIPO_EMPRESA
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_EMPRESA', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_EMPRESA', old.id_tipo_empresa);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_EMPRESA', old.id_tipo_empresa, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DESCRIPCION', old.descripcion, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);


end
^

CREATE TRIGGER Z_SINC_TIPO_EMPRESA_AI FOR TIPO_EMPRESA
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_EMPRESA', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_EMPRESA', new.id_tipo_empresa);

  if (new.id_tipo_empresa is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_EMPRESA', null, new.id_tipo_empresa);

  if (new.descripcion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DESCRIPCION', null, new.descripcion);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);


end
^

CREATE TRIGGER Z_SINC_TIPO_EMPRESA_AU FOR TIPO_EMPRESA
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_EMPRESA', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_EMPRESA', old.id_tipo_empresa);

  if ((old.id_tipo_empresa is null and new.id_tipo_empresa is not null) or
      (new.id_tipo_empresa is null and old.id_tipo_empresa is not null) or
      (new.id_tipo_empresa is not null and old.id_tipo_empresa is not null and new.id_tipo_empresa <> old.id_tipo_empresa)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_EMPRESA', old.id_tipo_empresa, new.id_tipo_empresa);

  if ((old.descripcion is null and new.descripcion is not null) or
      (new.descripcion is null and old.descripcion is not null) or
      (new.descripcion is not null and old.descripcion is not null and new.descripcion <> old.descripcion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DESCRIPCION', old.descripcion, new.descripcion);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);


end
^

CREATE TRIGGER Z_SINC_TIPO_FORMAPAGO_AD FOR TIPO_FORMAPAGO
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_FORMAPAGO', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_FORMAPAGO', old.id_tipo_formapago);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_FORMAPAGO', old.id_tipo_formapago, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DESCRIPCION', old.descripcion, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IF', old."IF", null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DESC_REC', old.desc_rec, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COD_CORTO', old.cod_corto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'GENERA_VUELTO', old.genera_vuelto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COLUMNA_PRECIO', old.columna_precio, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'MODIFICABLE', old.modificable, null);


end
^

CREATE TRIGGER Z_SINC_TIPO_FORMAPAGO_AI FOR TIPO_FORMAPAGO
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_FORMAPAGO', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_FORMAPAGO', new.id_tipo_formapago);

  if (new.id_tipo_formapago is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_FORMAPAGO', null, new.id_tipo_formapago);

  if (new.descripcion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DESCRIPCION', null, new.descripcion);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);

  if (new."IF" is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IF', null, new."IF");

  if (new.desc_rec is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DESC_REC', null, new.desc_rec);

  if (new.cod_corto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COD_CORTO', null, new.cod_corto);

  if (new.genera_vuelto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'GENERA_VUELTO', null, new.genera_vuelto);

  if (new.columna_precio is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COLUMNA_PRECIO', null, new.columna_precio);

  if (new.modificable is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'MODIFICABLE', null, new.modificable);


end
^

CREATE TRIGGER Z_SINC_TIPO_FORMAPAGO_AU FOR TIPO_FORMAPAGO
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_FORMAPAGO', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_FORMAPAGO', old.id_tipo_formapago);

  if ((old.id_tipo_formapago is null and new.id_tipo_formapago is not null) or
      (new.id_tipo_formapago is null and old.id_tipo_formapago is not null) or
      (new.id_tipo_formapago is not null and old.id_tipo_formapago is not null and new.id_tipo_formapago <> old.id_tipo_formapago)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_FORMAPAGO', old.id_tipo_formapago, new.id_tipo_formapago);

  if ((old.descripcion is null and new.descripcion is not null) or
      (new.descripcion is null and old.descripcion is not null) or
      (new.descripcion is not null and old.descripcion is not null and new.descripcion <> old.descripcion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DESCRIPCION', old.descripcion, new.descripcion);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);

  if ((old."IF" is null and new."IF" is not null) or
      (new."IF" is null and old."IF" is not null) or
      (new."IF" is not null and old."IF" is not null and new."IF" <> old."IF")) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IF', old."IF", new."IF");

  if ((old.desc_rec is null and new.desc_rec is not null) or
      (new.desc_rec is null and old.desc_rec is not null) or
      (new.desc_rec is not null and old.desc_rec is not null and new.desc_rec <> old.desc_rec)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DESC_REC', old.desc_rec, new.desc_rec);

  if ((old.cod_corto is null and new.cod_corto is not null) or
      (new.cod_corto is null and old.cod_corto is not null) or
      (new.cod_corto is not null and old.cod_corto is not null and new.cod_corto <> old.cod_corto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COD_CORTO', old.cod_corto, new.cod_corto);

  if ((old.genera_vuelto is null and new.genera_vuelto is not null) or
      (new.genera_vuelto is null and old.genera_vuelto is not null) or
      (new.genera_vuelto is not null and old.genera_vuelto is not null and new.genera_vuelto <> old.genera_vuelto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'GENERA_VUELTO', old.genera_vuelto, new.genera_vuelto);

  if ((old.columna_precio is null and new.columna_precio is not null) or
      (new.columna_precio is null and old.columna_precio is not null) or
      (new.columna_precio is not null and old.columna_precio is not null and new.columna_precio <> old.columna_precio)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COLUMNA_PRECIO', old.columna_precio, new.columna_precio);

  if ((old.modificable is null and new.modificable is not null) or
      (new.modificable is null and old.modificable is not null) or
      (new.modificable is not null and old.modificable is not null and new.modificable <> old.modificable)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'MODIFICABLE', old.modificable, new.modificable);


end
^

CREATE TRIGGER Z_SINC_TIPO_IVA_AD FOR TIPO_IVA
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_IVA', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_IVA', old.id_tipo_iva);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_IVA', old.id_tipo_iva, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOMBRE_TIPO_IVA', old.nombre_tipo_iva, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ABREVIATURA', old.abreviatura, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DISCRIMINAR', old.discriminar, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'LETRA', old.letra, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FISCAL', old.fiscal, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COEFICIENTE', old.coeficiente, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'VERIFICA_CUIT', old.verifica_cuit, null);


end
^

CREATE TRIGGER Z_SINC_TIPO_IVA_AI FOR TIPO_IVA
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_IVA', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_IVA', new.id_tipo_iva);

  if (new.id_tipo_iva is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_IVA', null, new.id_tipo_iva);

  if (new.nombre_tipo_iva is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NOMBRE_TIPO_IVA', null, new.nombre_tipo_iva);

  if (new.abreviatura is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ABREVIATURA', null, new.abreviatura);

  if (new.discriminar is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DISCRIMINAR', null, new.discriminar);

  if (new.letra is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'LETRA', null, new.letra);

  if (new.fiscal is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FISCAL', null, new.fiscal);

  if (new.coeficiente is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COEFICIENTE', null, new.coeficiente);

  if (new.verifica_cuit is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'VERIFICA_CUIT', null, new.verifica_cuit);


end
^

CREATE TRIGGER Z_SINC_TIPO_IVA_AU FOR TIPO_IVA
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_IVA', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_IVA', old.id_tipo_iva);

  if ((old.id_tipo_iva is null and new.id_tipo_iva is not null) or
      (new.id_tipo_iva is null and old.id_tipo_iva is not null) or
      (new.id_tipo_iva is not null and old.id_tipo_iva is not null and new.id_tipo_iva <> old.id_tipo_iva)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_IVA', old.id_tipo_iva, new.id_tipo_iva);

  if ((old.nombre_tipo_iva is null and new.nombre_tipo_iva is not null) or
      (new.nombre_tipo_iva is null and old.nombre_tipo_iva is not null) or
      (new.nombre_tipo_iva is not null and old.nombre_tipo_iva is not null and new.nombre_tipo_iva <> old.nombre_tipo_iva)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOMBRE_TIPO_IVA', old.nombre_tipo_iva, new.nombre_tipo_iva);

  if ((old.abreviatura is null and new.abreviatura is not null) or
      (new.abreviatura is null and old.abreviatura is not null) or
      (new.abreviatura is not null and old.abreviatura is not null and new.abreviatura <> old.abreviatura)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ABREVIATURA', old.abreviatura, new.abreviatura);

  if ((old.discriminar is null and new.discriminar is not null) or
      (new.discriminar is null and old.discriminar is not null) or
      (new.discriminar is not null and old.discriminar is not null and new.discriminar <> old.discriminar)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DISCRIMINAR', old.discriminar, new.discriminar);

  if ((old.letra is null and new.letra is not null) or
      (new.letra is null and old.letra is not null) or
      (new.letra is not null and old.letra is not null and new.letra <> old.letra)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'LETRA', old.letra, new.letra);

  if ((old.fiscal is null and new.fiscal is not null) or
      (new.fiscal is null and old.fiscal is not null) or
      (new.fiscal is not null and old.fiscal is not null and new.fiscal <> old.fiscal)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FISCAL', old.fiscal, new.fiscal);

  if ((old.coeficiente is null and new.coeficiente is not null) or
      (new.coeficiente is null and old.coeficiente is not null) or
      (new.coeficiente is not null and old.coeficiente is not null and new.coeficiente <> old.coeficiente)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COEFICIENTE', old.coeficiente, new.coeficiente);

  if ((old.verifica_cuit is null and new.verifica_cuit is not null) or
      (new.verifica_cuit is null and old.verifica_cuit is not null) or
      (new.verifica_cuit is not null and old.verifica_cuit is not null and new.verifica_cuit <> old.verifica_cuit)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'VERIFICA_CUIT', old.verifica_cuit, new.verifica_cuit);


end
^

CREATE TRIGGER Z_SINC_TIPO_MOVIMIENTO_AD FOR TIPO_MOVIMIENTO
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_MOVIMIENTO', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_MOVIMIENTO', old.id_tipo_movimiento);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_MOVIMIENTO', old.id_tipo_movimiento, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOMBRE_MOVIMIENTO', old.nombre_movimiento, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);


end
^

CREATE TRIGGER Z_SINC_TIPO_MOVIMIENTO_AI FOR TIPO_MOVIMIENTO
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_MOVIMIENTO', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_MOVIMIENTO', new.id_tipo_movimiento);

  if (new.id_tipo_movimiento is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_MOVIMIENTO', null, new.id_tipo_movimiento);

  if (new.nombre_movimiento is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NOMBRE_MOVIMIENTO', null, new.nombre_movimiento);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);


end
^

CREATE TRIGGER Z_SINC_TIPO_MOVIMIENTO_AU FOR TIPO_MOVIMIENTO
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_MOVIMIENTO', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_MOVIMIENTO', old.id_tipo_movimiento);

  if ((old.id_tipo_movimiento is null and new.id_tipo_movimiento is not null) or
      (new.id_tipo_movimiento is null and old.id_tipo_movimiento is not null) or
      (new.id_tipo_movimiento is not null and old.id_tipo_movimiento is not null and new.id_tipo_movimiento <> old.id_tipo_movimiento)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_MOVIMIENTO', old.id_tipo_movimiento, new.id_tipo_movimiento);

  if ((old.nombre_movimiento is null and new.nombre_movimiento is not null) or
      (new.nombre_movimiento is null and old.nombre_movimiento is not null) or
      (new.nombre_movimiento is not null and old.nombre_movimiento is not null and new.nombre_movimiento <> old.nombre_movimiento)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOMBRE_MOVIMIENTO', old.nombre_movimiento, new.nombre_movimiento);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);


end
^

CREATE TRIGGER Z_SINC_TIPO_RELACION_AD FOR TIPO_RELACION
ACTIVE AFTER DELETE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_RELACION', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_RELACION', old.id_tipo_relacion);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_RELACION', old.id_tipo_relacion, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DESCRIPCION', old.descripcion, null);


end
^

CREATE TRIGGER Z_SINC_TIPO_RELACION_AI FOR TIPO_RELACION
ACTIVE AFTER INSERT POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_RELACION', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_RELACION', new.id_tipo_relacion);

  if (new.id_tipo_relacion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_RELACION', null, new.id_tipo_relacion);

  if (new.descripcion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DESCRIPCION', null, new.descripcion);


end
^

CREATE TRIGGER Z_SINC_TIPO_RELACION_AU FOR TIPO_RELACION
ACTIVE AFTER UPDATE POSITION 32767 
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'TIPO_RELACION', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_TIPO_RELACION', old.id_tipo_relacion);

  if ((old.id_tipo_relacion is null and new.id_tipo_relacion is not null) or
      (new.id_tipo_relacion is null and old.id_tipo_relacion is not null) or
      (new.id_tipo_relacion is not null and old.id_tipo_relacion is not null and new.id_tipo_relacion <> old.id_tipo_relacion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_RELACION', old.id_tipo_relacion, new.id_tipo_relacion);

  if ((old.descripcion is null and new.descripcion is not null) or
      (new.descripcion is null and old.descripcion is not null) or
      (new.descripcion is not null and old.descripcion is not null and new.descripcion <> old.descripcion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DESCRIPCION', old.descripcion, new.descripcion);


end
^


/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_COMPROBANTE_AD FOR COMPROBANTE
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPROBANTE', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COMPROBANTE', old.id_comprobante);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_COMPROBANTE', old.id_comprobante, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_SUCURSAL', old.id_sucursal, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PROVEEDOR', old.id_proveedor, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_CLIENTE', old.id_cliente, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_CPB', old.id_tipo_cpb, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_VENDEDOR', old.id_vendedor, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_COMP_ESTADO', old.id_comp_estado, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODIGO', old.codigo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FECHA', old.fecha, null);

  insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'OBSERVACION', old.observacion, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BASE_IMPONIBLE', old.base_imponible, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'SALDO', old.saldo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPORTE_TOTAL', old.importe_total, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PORC_IVA', old.porc_iva, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPORTE_IVA', old.importe_iva, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PORC_DESCUENTO', old.porc_descuento, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPORTE_DESCUENTO', old.importe_descuento, null);

  insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'ENCABEZADO', old.encabezado, null);

  insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'PIE', old.pie, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FECHA_COBRADA', old.fecha_cobrada, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FECHA_ENVIADA', old.fecha_enviada, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FECHA_IMPRESA', old.fecha_impresa, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FECHA_VENCIMIENTO', old.fecha_vencimiento, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PUNTO_VENTA', old.punto_venta, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NUMERO_CPB', old.numero_cpb, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FECHA_ANULADO', old.fecha_anulado, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_IVA', old.id_tipo_iva, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_MOVIMIENTO', old.id_tipo_movimiento, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPORTE_VENTA', old.importe_venta, null);

  insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'IMAGEN', old.imagen, null);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_COMPROBANTE_AI FOR COMPROBANTE
ACTIVE AFTER INSERT POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPROBANTE', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COMPROBANTE', new.id_comprobante);

  if (new.id_comprobante is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_COMPROBANTE', null, new.id_comprobante);

  if (new.id_sucursal is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_SUCURSAL', null, new.id_sucursal);

  if (new.id_proveedor is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PROVEEDOR', null, new.id_proveedor);

  if (new.id_cliente is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_CLIENTE', null, new.id_cliente);

  if (new.id_tipo_cpb is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_CPB', null, new.id_tipo_cpb);

  if (new.id_vendedor is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_VENDEDOR', null, new.id_vendedor);

  if (new.id_comp_estado is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_COMP_ESTADO', null, new.id_comp_estado);

  if (new.codigo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODIGO', null, new.codigo);

  if (new.fecha is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FECHA', null, new.fecha);

  if (not (new.observacion is null)) then
    insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
           values (:tid,'OBSERVACION',null, new.observacion);

  if (new.base_imponible is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BASE_IMPONIBLE', null, new.base_imponible);

  if (new.saldo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'SALDO', null, new.saldo);

  if (new.importe_total is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPORTE_TOTAL', null, new.importe_total);

  if (new.porc_iva is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PORC_IVA', null, new.porc_iva);

  if (new.importe_iva is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPORTE_IVA', null, new.importe_iva);

  if (new.porc_descuento is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PORC_DESCUENTO', null, new.porc_descuento);

  if (new.importe_descuento is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPORTE_DESCUENTO', null, new.importe_descuento);

  if (not (new.encabezado is null)) then
    insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
           values (:tid,'ENCABEZADO',null, new.encabezado);

  if (not (new.pie is null)) then
    insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
           values (:tid,'PIE',null, new.pie);

  if (new.fecha_cobrada is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FECHA_COBRADA', null, new.fecha_cobrada);

  if (new.fecha_enviada is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FECHA_ENVIADA', null, new.fecha_enviada);

  if (new.fecha_impresa is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FECHA_IMPRESA', null, new.fecha_impresa);

  if (new.fecha_vencimiento is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FECHA_VENCIMIENTO', null, new.fecha_vencimiento);

  if (new.punto_venta is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PUNTO_VENTA', null, new.punto_venta);

  if (new.numero_cpb is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NUMERO_CPB', null, new.numero_cpb);

  if (new.fecha_anulado is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FECHA_ANULADO', null, new.fecha_anulado);

  if (new.id_tipo_iva is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_IVA', null, new.id_tipo_iva);

  if (new.id_tipo_movimiento is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_MOVIMIENTO', null, new.id_tipo_movimiento);

  if (new.importe_venta is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPORTE_VENTA', null, new.importe_venta);

  if (not (new.imagen is null)) then
    insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
           values (:tid,'IMAGEN',null, new.imagen);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_COMPROBANTE_AU FOR COMPROBANTE
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPROBANTE', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COMPROBANTE', old.id_comprobante);

  if ((old.id_comprobante is null and new.id_comprobante is not null) or
      (new.id_comprobante is null and old.id_comprobante is not null) or
      (new.id_comprobante is not null and old.id_comprobante is not null and new.id_comprobante <> old.id_comprobante)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_COMPROBANTE', old.id_comprobante, new.id_comprobante);

  if ((old.id_sucursal is null and new.id_sucursal is not null) or
      (new.id_sucursal is null and old.id_sucursal is not null) or
      (new.id_sucursal is not null and old.id_sucursal is not null and new.id_sucursal <> old.id_sucursal)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_SUCURSAL', old.id_sucursal, new.id_sucursal);

  if ((old.id_proveedor is null and new.id_proveedor is not null) or
      (new.id_proveedor is null and old.id_proveedor is not null) or
      (new.id_proveedor is not null and old.id_proveedor is not null and new.id_proveedor <> old.id_proveedor)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PROVEEDOR', old.id_proveedor, new.id_proveedor);

  if ((old.id_cliente is null and new.id_cliente is not null) or
      (new.id_cliente is null and old.id_cliente is not null) or
      (new.id_cliente is not null and old.id_cliente is not null and new.id_cliente <> old.id_cliente)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_CLIENTE', old.id_cliente, new.id_cliente);

  if ((old.id_tipo_cpb is null and new.id_tipo_cpb is not null) or
      (new.id_tipo_cpb is null and old.id_tipo_cpb is not null) or
      (new.id_tipo_cpb is not null and old.id_tipo_cpb is not null and new.id_tipo_cpb <> old.id_tipo_cpb)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_CPB', old.id_tipo_cpb, new.id_tipo_cpb);

  if ((old.id_vendedor is null and new.id_vendedor is not null) or
      (new.id_vendedor is null and old.id_vendedor is not null) or
      (new.id_vendedor is not null and old.id_vendedor is not null and new.id_vendedor <> old.id_vendedor)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_VENDEDOR', old.id_vendedor, new.id_vendedor);

  if ((old.id_comp_estado is null and new.id_comp_estado is not null) or
      (new.id_comp_estado is null and old.id_comp_estado is not null) or
      (new.id_comp_estado is not null and old.id_comp_estado is not null and new.id_comp_estado <> old.id_comp_estado)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_COMP_ESTADO', old.id_comp_estado, new.id_comp_estado);

  if ((old.codigo is null and new.codigo is not null) or
      (new.codigo is null and old.codigo is not null) or
      (new.codigo is not null and old.codigo is not null and new.codigo <> old.codigo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODIGO', old.codigo, new.codigo);

  if ((old.fecha is null and new.fecha is not null) or
      (new.fecha is null and old.fecha is not null) or
      (new.fecha is not null and old.fecha is not null and new.fecha <> old.fecha)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FECHA', old.fecha, new.fecha);

  if ((old.observacion is null and new.observacion is not null) or
      (new.observacion is null and old.observacion is not null) or
      (new.observacion is not null and old.observacion is not null and new.observacion <> old.observacion)) then
     insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
            values (:tid, 'OBSERVACION', old.observacion, new.observacion);

  if ((old.base_imponible is null and new.base_imponible is not null) or
      (new.base_imponible is null and old.base_imponible is not null) or
      (new.base_imponible is not null and old.base_imponible is not null and new.base_imponible <> old.base_imponible)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BASE_IMPONIBLE', old.base_imponible, new.base_imponible);

  if ((old.saldo is null and new.saldo is not null) or
      (new.saldo is null and old.saldo is not null) or
      (new.saldo is not null and old.saldo is not null and new.saldo <> old.saldo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'SALDO', old.saldo, new.saldo);

  if ((old.importe_total is null and new.importe_total is not null) or
      (new.importe_total is null and old.importe_total is not null) or
      (new.importe_total is not null and old.importe_total is not null and new.importe_total <> old.importe_total)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPORTE_TOTAL', old.importe_total, new.importe_total);

  if ((old.porc_iva is null and new.porc_iva is not null) or
      (new.porc_iva is null and old.porc_iva is not null) or
      (new.porc_iva is not null and old.porc_iva is not null and new.porc_iva <> old.porc_iva)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PORC_IVA', old.porc_iva, new.porc_iva);

  if ((old.importe_iva is null and new.importe_iva is not null) or
      (new.importe_iva is null and old.importe_iva is not null) or
      (new.importe_iva is not null and old.importe_iva is not null and new.importe_iva <> old.importe_iva)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPORTE_IVA', old.importe_iva, new.importe_iva);

  if ((old.porc_descuento is null and new.porc_descuento is not null) or
      (new.porc_descuento is null and old.porc_descuento is not null) or
      (new.porc_descuento is not null and old.porc_descuento is not null and new.porc_descuento <> old.porc_descuento)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PORC_DESCUENTO', old.porc_descuento, new.porc_descuento);

  if ((old.importe_descuento is null and new.importe_descuento is not null) or
      (new.importe_descuento is null and old.importe_descuento is not null) or
      (new.importe_descuento is not null and old.importe_descuento is not null and new.importe_descuento <> old.importe_descuento)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPORTE_DESCUENTO', old.importe_descuento, new.importe_descuento);

  if ((old.encabezado is null and new.encabezado is not null) or
      (new.encabezado is null and old.encabezado is not null) or
      (new.encabezado is not null and old.encabezado is not null and new.encabezado <> old.encabezado)) then
     insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
            values (:tid, 'ENCABEZADO', old.encabezado, new.encabezado);

  if ((old.pie is null and new.pie is not null) or
      (new.pie is null and old.pie is not null) or
      (new.pie is not null and old.pie is not null and new.pie <> old.pie)) then
     insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
            values (:tid, 'PIE', old.pie, new.pie);

  if ((old.fecha_cobrada is null and new.fecha_cobrada is not null) or
      (new.fecha_cobrada is null and old.fecha_cobrada is not null) or
      (new.fecha_cobrada is not null and old.fecha_cobrada is not null and new.fecha_cobrada <> old.fecha_cobrada)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FECHA_COBRADA', old.fecha_cobrada, new.fecha_cobrada);

  if ((old.fecha_enviada is null and new.fecha_enviada is not null) or
      (new.fecha_enviada is null and old.fecha_enviada is not null) or
      (new.fecha_enviada is not null and old.fecha_enviada is not null and new.fecha_enviada <> old.fecha_enviada)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FECHA_ENVIADA', old.fecha_enviada, new.fecha_enviada);

  if ((old.fecha_impresa is null and new.fecha_impresa is not null) or
      (new.fecha_impresa is null and old.fecha_impresa is not null) or
      (new.fecha_impresa is not null and old.fecha_impresa is not null and new.fecha_impresa <> old.fecha_impresa)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FECHA_IMPRESA', old.fecha_impresa, new.fecha_impresa);

  if ((old.fecha_vencimiento is null and new.fecha_vencimiento is not null) or
      (new.fecha_vencimiento is null and old.fecha_vencimiento is not null) or
      (new.fecha_vencimiento is not null and old.fecha_vencimiento is not null and new.fecha_vencimiento <> old.fecha_vencimiento)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FECHA_VENCIMIENTO', old.fecha_vencimiento, new.fecha_vencimiento);

  if ((old.punto_venta is null and new.punto_venta is not null) or
      (new.punto_venta is null and old.punto_venta is not null) or
      (new.punto_venta is not null and old.punto_venta is not null and new.punto_venta <> old.punto_venta)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PUNTO_VENTA', old.punto_venta, new.punto_venta);

  if ((old.numero_cpb is null and new.numero_cpb is not null) or
      (new.numero_cpb is null and old.numero_cpb is not null) or
      (new.numero_cpb is not null and old.numero_cpb is not null and new.numero_cpb <> old.numero_cpb)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NUMERO_CPB', old.numero_cpb, new.numero_cpb);

  if ((old.fecha_anulado is null and new.fecha_anulado is not null) or
      (new.fecha_anulado is null and old.fecha_anulado is not null) or
      (new.fecha_anulado is not null and old.fecha_anulado is not null and new.fecha_anulado <> old.fecha_anulado)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FECHA_ANULADO', old.fecha_anulado, new.fecha_anulado);

  if ((old.id_tipo_iva is null and new.id_tipo_iva is not null) or
      (new.id_tipo_iva is null and old.id_tipo_iva is not null) or
      (new.id_tipo_iva is not null and old.id_tipo_iva is not null and new.id_tipo_iva <> old.id_tipo_iva)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_IVA', old.id_tipo_iva, new.id_tipo_iva);

  if ((old.id_tipo_movimiento is null and new.id_tipo_movimiento is not null) or
      (new.id_tipo_movimiento is null and old.id_tipo_movimiento is not null) or
      (new.id_tipo_movimiento is not null and old.id_tipo_movimiento is not null and new.id_tipo_movimiento <> old.id_tipo_movimiento)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_MOVIMIENTO', old.id_tipo_movimiento, new.id_tipo_movimiento);

  if ((old.importe_venta is null and new.importe_venta is not null) or
      (new.importe_venta is null and old.importe_venta is not null) or
      (new.importe_venta is not null and old.importe_venta is not null and new.importe_venta <> old.importe_venta)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPORTE_VENTA', old.importe_venta, new.importe_venta);

  if ((old.imagen is null and new.imagen is not null) or
      (new.imagen is null and old.imagen is not null) or
      (new.imagen is not null and old.imagen is not null and new.imagen <> old.imagen)) then
     insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
            values (:tid, 'IMAGEN', old.imagen, new.imagen);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_COMPROBANTE_DETALLE_AD FOR COMPROBANTE_DETALLE
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPROBANTE_DETALLE', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COMPROBANTE_DETALLE', old.id_comprobante_detalle);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_COMPROBANTE_DETALLE', old.id_comprobante_detalle, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_COMPROBANTE', old.id_comprobante, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PRODUCTO', old.id_producto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DETALLE', old.detalle, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CANTIDAD', old.cantidad, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPORTE_FINAL', old.importe_final, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PORC_DESCUENTO', old.porc_descuento, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BASE_IMPONIBLE', old.base_imponible, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPORTE_UNITARIO', old.importe_unitario, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPUESTO_INTERNO', old.impuesto_interno, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'PORC_IVA', old.porc_iva, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CANTIDAD_RECIBIDA', old.cantidad_recibida, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CANTIDAD_ALMACENADA', old.cantidad_almacenada, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_STOCK_PRODUCTO', old.id_stock_producto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPORTE_VENTA', old.importe_venta, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPORTE_IVA', old.importe_iva, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPORTE_IF', old.importe_if, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPORTE_IF_SINIVA', old.importe_if_siniva, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPORTE_IVA_IF', old.importe_iva_if, null);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_COMPROBANTE_DETALLE_AI FOR COMPROBANTE_DETALLE
ACTIVE AFTER INSERT POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPROBANTE_DETALLE', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COMPROBANTE_DETALLE', new.id_comprobante_detalle);

  if (new.id_comprobante_detalle is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_COMPROBANTE_DETALLE', null, new.id_comprobante_detalle);

  if (new.id_comprobante is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_COMPROBANTE', null, new.id_comprobante);

  if (new.id_producto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PRODUCTO', null, new.id_producto);

  if (new.detalle is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DETALLE', null, new.detalle);

  if (new.cantidad is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CANTIDAD', null, new.cantidad);

  if (new.importe_final is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPORTE_FINAL', null, new.importe_final);

  if (new.porc_descuento is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PORC_DESCUENTO', null, new.porc_descuento);

  if (new.base_imponible is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BASE_IMPONIBLE', null, new.base_imponible);

  if (new.importe_unitario is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPORTE_UNITARIO', null, new.importe_unitario);

  if (new.impuesto_interno is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPUESTO_INTERNO', null, new.impuesto_interno);

  if (new.porc_iva is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'PORC_IVA', null, new.porc_iva);

  if (new.cantidad_recibida is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CANTIDAD_RECIBIDA', null, new.cantidad_recibida);

  if (new.cantidad_almacenada is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CANTIDAD_ALMACENADA', null, new.cantidad_almacenada);

  if (new.id_stock_producto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_STOCK_PRODUCTO', null, new.id_stock_producto);

  if (new.importe_venta is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPORTE_VENTA', null, new.importe_venta);

  if (new.importe_iva is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPORTE_IVA', null, new.importe_iva);

  if (new.importe_if is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPORTE_IF', null, new.importe_if);

  if (new.importe_if_siniva is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPORTE_IF_SINIVA', null, new.importe_if_siniva);

  if (new.importe_iva_if is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPORTE_IVA_IF', null, new.importe_iva_if);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_COMPROBANTE_DETALLE_AU FOR COMPROBANTE_DETALLE
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPROBANTE_DETALLE', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COMPROBANTE_DETALLE', old.id_comprobante_detalle);

  if ((old.id_comprobante_detalle is null and new.id_comprobante_detalle is not null) or
      (new.id_comprobante_detalle is null and old.id_comprobante_detalle is not null) or
      (new.id_comprobante_detalle is not null and old.id_comprobante_detalle is not null and new.id_comprobante_detalle <> old.id_comprobante_detalle)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_COMPROBANTE_DETALLE', old.id_comprobante_detalle, new.id_comprobante_detalle);

  if ((old.id_comprobante is null and new.id_comprobante is not null) or
      (new.id_comprobante is null and old.id_comprobante is not null) or
      (new.id_comprobante is not null and old.id_comprobante is not null and new.id_comprobante <> old.id_comprobante)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_COMPROBANTE', old.id_comprobante, new.id_comprobante);

  if ((old.id_producto is null and new.id_producto is not null) or
      (new.id_producto is null and old.id_producto is not null) or
      (new.id_producto is not null and old.id_producto is not null and new.id_producto <> old.id_producto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PRODUCTO', old.id_producto, new.id_producto);

  if ((old.detalle is null and new.detalle is not null) or
      (new.detalle is null and old.detalle is not null) or
      (new.detalle is not null and old.detalle is not null and new.detalle <> old.detalle)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DETALLE', old.detalle, new.detalle);

  if ((old.cantidad is null and new.cantidad is not null) or
      (new.cantidad is null and old.cantidad is not null) or
      (new.cantidad is not null and old.cantidad is not null and new.cantidad <> old.cantidad)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CANTIDAD', old.cantidad, new.cantidad);

  if ((old.importe_final is null and new.importe_final is not null) or
      (new.importe_final is null and old.importe_final is not null) or
      (new.importe_final is not null and old.importe_final is not null and new.importe_final <> old.importe_final)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPORTE_FINAL', old.importe_final, new.importe_final);

  if ((old.porc_descuento is null and new.porc_descuento is not null) or
      (new.porc_descuento is null and old.porc_descuento is not null) or
      (new.porc_descuento is not null and old.porc_descuento is not null and new.porc_descuento <> old.porc_descuento)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PORC_DESCUENTO', old.porc_descuento, new.porc_descuento);

  if ((old.base_imponible is null and new.base_imponible is not null) or
      (new.base_imponible is null and old.base_imponible is not null) or
      (new.base_imponible is not null and old.base_imponible is not null and new.base_imponible <> old.base_imponible)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BASE_IMPONIBLE', old.base_imponible, new.base_imponible);

  if ((old.importe_unitario is null and new.importe_unitario is not null) or
      (new.importe_unitario is null and old.importe_unitario is not null) or
      (new.importe_unitario is not null and old.importe_unitario is not null and new.importe_unitario <> old.importe_unitario)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPORTE_UNITARIO', old.importe_unitario, new.importe_unitario);

  if ((old.impuesto_interno is null and new.impuesto_interno is not null) or
      (new.impuesto_interno is null and old.impuesto_interno is not null) or
      (new.impuesto_interno is not null and old.impuesto_interno is not null and new.impuesto_interno <> old.impuesto_interno)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPUESTO_INTERNO', old.impuesto_interno, new.impuesto_interno);

  if ((old.porc_iva is null and new.porc_iva is not null) or
      (new.porc_iva is null and old.porc_iva is not null) or
      (new.porc_iva is not null and old.porc_iva is not null and new.porc_iva <> old.porc_iva)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'PORC_IVA', old.porc_iva, new.porc_iva);

  if ((old.cantidad_recibida is null and new.cantidad_recibida is not null) or
      (new.cantidad_recibida is null and old.cantidad_recibida is not null) or
      (new.cantidad_recibida is not null and old.cantidad_recibida is not null and new.cantidad_recibida <> old.cantidad_recibida)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CANTIDAD_RECIBIDA', old.cantidad_recibida, new.cantidad_recibida);

  if ((old.cantidad_almacenada is null and new.cantidad_almacenada is not null) or
      (new.cantidad_almacenada is null and old.cantidad_almacenada is not null) or
      (new.cantidad_almacenada is not null and old.cantidad_almacenada is not null and new.cantidad_almacenada <> old.cantidad_almacenada)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CANTIDAD_ALMACENADA', old.cantidad_almacenada, new.cantidad_almacenada);

  if ((old.id_stock_producto is null and new.id_stock_producto is not null) or
      (new.id_stock_producto is null and old.id_stock_producto is not null) or
      (new.id_stock_producto is not null and old.id_stock_producto is not null and new.id_stock_producto <> old.id_stock_producto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_STOCK_PRODUCTO', old.id_stock_producto, new.id_stock_producto);

  if ((old.importe_venta is null and new.importe_venta is not null) or
      (new.importe_venta is null and old.importe_venta is not null) or
      (new.importe_venta is not null and old.importe_venta is not null and new.importe_venta <> old.importe_venta)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPORTE_VENTA', old.importe_venta, new.importe_venta);

  if ((old.importe_iva is null and new.importe_iva is not null) or
      (new.importe_iva is null and old.importe_iva is not null) or
      (new.importe_iva is not null and old.importe_iva is not null and new.importe_iva <> old.importe_iva)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPORTE_IVA', old.importe_iva, new.importe_iva);

  if ((old.importe_if is null and new.importe_if is not null) or
      (new.importe_if is null and old.importe_if is not null) or
      (new.importe_if is not null and old.importe_if is not null and new.importe_if <> old.importe_if)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPORTE_IF', old.importe_if, new.importe_if);

  if ((old.importe_if_siniva is null and new.importe_if_siniva is not null) or
      (new.importe_if_siniva is null and old.importe_if_siniva is not null) or
      (new.importe_if_siniva is not null and old.importe_if_siniva is not null and new.importe_if_siniva <> old.importe_if_siniva)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPORTE_IF_SINIVA', old.importe_if_siniva, new.importe_if_siniva);

  if ((old.importe_iva_if is null and new.importe_iva_if is not null) or
      (new.importe_iva_if is null and old.importe_iva_if is not null) or
      (new.importe_iva_if is not null and old.importe_iva_if is not null and new.importe_iva_if <> old.importe_iva_if)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPORTE_IVA_IF', old.importe_iva_if, new.importe_iva_if);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_COMPROBANTE_ESTADO_AD FOR COMPROBANTE_ESTADO
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPROBANTE_ESTADO', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COMP_ESTADO', old.id_comp_estado);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_COMP_ESTADO', old.id_comp_estado, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'DESCRIPCION', old.descripcion, null);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_COMPROBANTE_ESTADO_AI FOR COMPROBANTE_ESTADO
ACTIVE AFTER INSERT POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPROBANTE_ESTADO', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COMP_ESTADO', new.id_comp_estado);

  if (new.id_comp_estado is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_COMP_ESTADO', null, new.id_comp_estado);

  if (new.descripcion is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'DESCRIPCION', null, new.descripcion);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_COMPROBANTE_ESTADO_AU FOR COMPROBANTE_ESTADO
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPROBANTE_ESTADO', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COMP_ESTADO', old.id_comp_estado);

  if ((old.id_comp_estado is null and new.id_comp_estado is not null) or
      (new.id_comp_estado is null and old.id_comp_estado is not null) or
      (new.id_comp_estado is not null and old.id_comp_estado is not null and new.id_comp_estado <> old.id_comp_estado)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_COMP_ESTADO', old.id_comp_estado, new.id_comp_estado);

  if ((old.descripcion is null and new.descripcion is not null) or
      (new.descripcion is null and old.descripcion is not null) or
      (new.descripcion is not null and old.descripcion is not null and new.descripcion <> old.descripcion)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'DESCRIPCION', old.descripcion, new.descripcion);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_COMP_FORMA_PAGO_AD FOR COMPROBANTE_FORMA_PAGO
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPROBANTE_FORMA_PAGO', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COMPROB_FP', old.id_comprob_fp);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_COMPROB_FP', old.id_comprob_fp, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_COMPROBANTE', old.id_comprobante, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_TIPO_FORMAPAG', old.id_tipo_formapag, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'MDCP_FECHA', old.mdcp_fecha, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'MDCP_BANCO', old.mdcp_banco, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'MDCP_CHEQUE', old.mdcp_cheque, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPORTE', old.importe, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CONCILIADO', old.conciliado, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CUENTA_INGRESO', old.cuenta_ingreso, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CUENTA_EGRESO', old.cuenta_egreso, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'FECHA_FP', old.fecha_fp, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'IMPORTE_REAL', old.importe_real, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_RECIBO_OP', old.id_recibo_op, null);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_COMP_FORMA_PAGO_AI FOR COMPROBANTE_FORMA_PAGO
ACTIVE AFTER INSERT POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPROBANTE_FORMA_PAGO', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COMPROB_FP', new.id_comprob_fp);

  if (new.id_comprob_fp is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_COMPROB_FP', null, new.id_comprob_fp);

  if (new.id_comprobante is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_COMPROBANTE', null, new.id_comprobante);

  if (new.id_tipo_formapag is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_TIPO_FORMAPAG', null, new.id_tipo_formapag);

  if (new.mdcp_fecha is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'MDCP_FECHA', null, new.mdcp_fecha);

  if (new.mdcp_banco is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'MDCP_BANCO', null, new.mdcp_banco);

  if (new.mdcp_cheque is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'MDCP_CHEQUE', null, new.mdcp_cheque);

  if (new.importe is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPORTE', null, new.importe);

  if (new.conciliado is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CONCILIADO', null, new.conciliado);

  if (new.cuenta_ingreso is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CUENTA_INGRESO', null, new.cuenta_ingreso);

  if (new.cuenta_egreso is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CUENTA_EGRESO', null, new.cuenta_egreso);

  if (new.fecha_fp is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'FECHA_FP', null, new.fecha_fp);

  if (new.importe_real is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'IMPORTE_REAL', null, new.importe_real);

  if (new.id_recibo_op is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_RECIBO_OP', null, new.id_recibo_op);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_COMP_FORMA_PAGO_AU FOR COMPROBANTE_FORMA_PAGO
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'COMPROBANTE_FORMA_PAGO', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_COMPROB_FP', old.id_comprob_fp);

  if ((old.id_comprob_fp is null and new.id_comprob_fp is not null) or
      (new.id_comprob_fp is null and old.id_comprob_fp is not null) or
      (new.id_comprob_fp is not null and old.id_comprob_fp is not null and new.id_comprob_fp <> old.id_comprob_fp)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_COMPROB_FP', old.id_comprob_fp, new.id_comprob_fp);

  if ((old.id_comprobante is null and new.id_comprobante is not null) or
      (new.id_comprobante is null and old.id_comprobante is not null) or
      (new.id_comprobante is not null and old.id_comprobante is not null and new.id_comprobante <> old.id_comprobante)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_COMPROBANTE', old.id_comprobante, new.id_comprobante);

  if ((old.id_tipo_formapag is null and new.id_tipo_formapag is not null) or
      (new.id_tipo_formapag is null and old.id_tipo_formapag is not null) or
      (new.id_tipo_formapag is not null and old.id_tipo_formapag is not null and new.id_tipo_formapag <> old.id_tipo_formapag)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_TIPO_FORMAPAG', old.id_tipo_formapag, new.id_tipo_formapag);

  if ((old.mdcp_fecha is null and new.mdcp_fecha is not null) or
      (new.mdcp_fecha is null and old.mdcp_fecha is not null) or
      (new.mdcp_fecha is not null and old.mdcp_fecha is not null and new.mdcp_fecha <> old.mdcp_fecha)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'MDCP_FECHA', old.mdcp_fecha, new.mdcp_fecha);

  if ((old.mdcp_banco is null and new.mdcp_banco is not null) or
      (new.mdcp_banco is null and old.mdcp_banco is not null) or
      (new.mdcp_banco is not null and old.mdcp_banco is not null and new.mdcp_banco <> old.mdcp_banco)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'MDCP_BANCO', old.mdcp_banco, new.mdcp_banco);

  if ((old.mdcp_cheque is null and new.mdcp_cheque is not null) or
      (new.mdcp_cheque is null and old.mdcp_cheque is not null) or
      (new.mdcp_cheque is not null and old.mdcp_cheque is not null and new.mdcp_cheque <> old.mdcp_cheque)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'MDCP_CHEQUE', old.mdcp_cheque, new.mdcp_cheque);

  if ((old.importe is null and new.importe is not null) or
      (new.importe is null and old.importe is not null) or
      (new.importe is not null and old.importe is not null and new.importe <> old.importe)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPORTE', old.importe, new.importe);

  if ((old.conciliado is null and new.conciliado is not null) or
      (new.conciliado is null and old.conciliado is not null) or
      (new.conciliado is not null and old.conciliado is not null and new.conciliado <> old.conciliado)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CONCILIADO', old.conciliado, new.conciliado);

  if ((old.cuenta_ingreso is null and new.cuenta_ingreso is not null) or
      (new.cuenta_ingreso is null and old.cuenta_ingreso is not null) or
      (new.cuenta_ingreso is not null and old.cuenta_ingreso is not null and new.cuenta_ingreso <> old.cuenta_ingreso)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CUENTA_INGRESO', old.cuenta_ingreso, new.cuenta_ingreso);

  if ((old.cuenta_egreso is null and new.cuenta_egreso is not null) or
      (new.cuenta_egreso is null and old.cuenta_egreso is not null) or
      (new.cuenta_egreso is not null and old.cuenta_egreso is not null and new.cuenta_egreso <> old.cuenta_egreso)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CUENTA_EGRESO', old.cuenta_egreso, new.cuenta_egreso);

  if ((old.fecha_fp is null and new.fecha_fp is not null) or
      (new.fecha_fp is null and old.fecha_fp is not null) or
      (new.fecha_fp is not null and old.fecha_fp is not null and new.fecha_fp <> old.fecha_fp)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'FECHA_FP', old.fecha_fp, new.fecha_fp);

  if ((old.importe_real is null and new.importe_real is not null) or
      (new.importe_real is null and old.importe_real is not null) or
      (new.importe_real is not null and old.importe_real is not null and new.importe_real <> old.importe_real)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'IMPORTE_REAL', old.importe_real, new.importe_real);

  if ((old.id_recibo_op is null and new.id_recibo_op is not null) or
      (new.id_recibo_op is null and old.id_recibo_op is not null) or
      (new.id_recibo_op is not null and old.id_recibo_op is not null and new.id_recibo_op <> old.id_recibo_op)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_RECIBO_OP', old.id_recibo_op, new.id_recibo_op);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_PRODUCTO_AD FOR PRODUCTO
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PRODUCTO', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PRODUCTO', old.id_producto);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PRODUCTO', old.id_producto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_MEDIDA', old.id_medida, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PROD_CABECERA', old.id_prod_cabecera, null);

  insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'DESCRIPCION', old.descripcion, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COD_CORTO', old.cod_corto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'CODIGO_BARRA', old.codigo_barra, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'STOCK_MAX', old.stock_max, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'STOCK_MIN', old.stock_min, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'LLEVAR_STOCK', old.llevar_stock, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_PRODUCTO_AI FOR PRODUCTO
ACTIVE AFTER INSERT POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PRODUCTO', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PRODUCTO', new.id_producto);

  if (new.id_producto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PRODUCTO', null, new.id_producto);

  if (new.id_medida is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_MEDIDA', null, new.id_medida);

  if (new.id_prod_cabecera is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PROD_CABECERA', null, new.id_prod_cabecera);

  if (not (new.descripcion is null)) then
    insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
           values (:tid,'DESCRIPCION',null, new.descripcion);

  if (new.cod_corto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COD_CORTO', null, new.cod_corto);

  if (new.codigo_barra is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'CODIGO_BARRA', null, new.codigo_barra);

  if (new.stock_max is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'STOCK_MAX', null, new.stock_max);

  if (new.stock_min is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'STOCK_MIN', null, new.stock_min);

  if (new.llevar_stock is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'LLEVAR_STOCK', null, new.llevar_stock);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_PRODUCTO_AU FOR PRODUCTO
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PRODUCTO', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PRODUCTO', old.id_producto);

  if ((old.id_producto is null and new.id_producto is not null) or
      (new.id_producto is null and old.id_producto is not null) or
      (new.id_producto is not null and old.id_producto is not null and new.id_producto <> old.id_producto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PRODUCTO', old.id_producto, new.id_producto);

  if ((old.id_medida is null and new.id_medida is not null) or
      (new.id_medida is null and old.id_medida is not null) or
      (new.id_medida is not null and old.id_medida is not null and new.id_medida <> old.id_medida)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_MEDIDA', old.id_medida, new.id_medida);

  if ((old.id_prod_cabecera is null and new.id_prod_cabecera is not null) or
      (new.id_prod_cabecera is null and old.id_prod_cabecera is not null) or
      (new.id_prod_cabecera is not null and old.id_prod_cabecera is not null and new.id_prod_cabecera <> old.id_prod_cabecera)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PROD_CABECERA', old.id_prod_cabecera, new.id_prod_cabecera);

  if ((old.descripcion is null and new.descripcion is not null) or
      (new.descripcion is null and old.descripcion is not null) or
      (new.descripcion is not null and old.descripcion is not null and new.descripcion <> old.descripcion)) then
     insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
            values (:tid, 'DESCRIPCION', old.descripcion, new.descripcion);

  if ((old.cod_corto is null and new.cod_corto is not null) or
      (new.cod_corto is null and old.cod_corto is not null) or
      (new.cod_corto is not null and old.cod_corto is not null and new.cod_corto <> old.cod_corto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COD_CORTO', old.cod_corto, new.cod_corto);

  if ((old.codigo_barra is null and new.codigo_barra is not null) or
      (new.codigo_barra is null and old.codigo_barra is not null) or
      (new.codigo_barra is not null and old.codigo_barra is not null and new.codigo_barra <> old.codigo_barra)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'CODIGO_BARRA', old.codigo_barra, new.codigo_barra);

  if ((old.stock_max is null and new.stock_max is not null) or
      (new.stock_max is null and old.stock_max is not null) or
      (new.stock_max is not null and old.stock_max is not null and new.stock_max <> old.stock_max)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'STOCK_MAX', old.stock_max, new.stock_max);

  if ((old.stock_min is null and new.stock_min is not null) or
      (new.stock_min is null and old.stock_min is not null) or
      (new.stock_min is not null and old.stock_min is not null and new.stock_min <> old.stock_min)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'STOCK_MIN', old.stock_min, new.stock_min);

  if ((old.llevar_stock is null and new.llevar_stock is not null) or
      (new.llevar_stock is null and old.llevar_stock is not null) or
      (new.llevar_stock is not null and old.llevar_stock is not null and new.llevar_stock <> old.llevar_stock)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'LLEVAR_STOCK', old.llevar_stock, new.llevar_stock);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_PRODUCTO_CABECERA_AD FOR PRODUCTO_CABECERA
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PRODUCTO_CABECERA', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PROD_CABECERA', old.id_prod_cabecera);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PROD_CABECERA', old.id_prod_cabecera, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_MARCA', old.id_marca, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_ARTICULO', old.id_articulo, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COLOR', old.color, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'COD_CORTO', old.cod_corto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'NOMBRE', old.nombre, null);

  insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'DESCRIPCION', old.descripcion, null);

  insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
         values (:tid, 'IMAGEN', old.imagen, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'BAJA', old.baja, null);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_PRODUCTO_CABECERA_AI FOR PRODUCTO_CABECERA
ACTIVE AFTER INSERT POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PRODUCTO_CABECERA', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PROD_CABECERA', new.id_prod_cabecera);

  if (new.id_prod_cabecera is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PROD_CABECERA', null, new.id_prod_cabecera);

  if (new.id_marca is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_MARCA', null, new.id_marca);

  if (new.id_articulo is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_ARTICULO', null, new.id_articulo);

  if (new.color is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COLOR', null, new.color);

  if (new.cod_corto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'COD_CORTO', null, new.cod_corto);

  if (new.nombre is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'NOMBRE', null, new.nombre);

  if (not (new.descripcion is null)) then
    insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
           values (:tid,'DESCRIPCION',null, new.descripcion);

  if (not (new.imagen is null)) then
    insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
           values (:tid,'IMAGEN',null, new.imagen);

  if (new.baja is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'BAJA', null, new.baja);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_PRODUCTO_CABECERA_AU FOR PRODUCTO_CABECERA
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'PRODUCTO_CABECERA', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_PROD_CABECERA', old.id_prod_cabecera);

  if ((old.id_prod_cabecera is null and new.id_prod_cabecera is not null) or
      (new.id_prod_cabecera is null and old.id_prod_cabecera is not null) or
      (new.id_prod_cabecera is not null and old.id_prod_cabecera is not null and new.id_prod_cabecera <> old.id_prod_cabecera)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PROD_CABECERA', old.id_prod_cabecera, new.id_prod_cabecera);

  if ((old.id_marca is null and new.id_marca is not null) or
      (new.id_marca is null and old.id_marca is not null) or
      (new.id_marca is not null and old.id_marca is not null and new.id_marca <> old.id_marca)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_MARCA', old.id_marca, new.id_marca);

  if ((old.id_articulo is null and new.id_articulo is not null) or
      (new.id_articulo is null and old.id_articulo is not null) or
      (new.id_articulo is not null and old.id_articulo is not null and new.id_articulo <> old.id_articulo)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_ARTICULO', old.id_articulo, new.id_articulo);

  if ((old.color is null and new.color is not null) or
      (new.color is null and old.color is not null) or
      (new.color is not null and old.color is not null and new.color <> old.color)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COLOR', old.color, new.color);

  if ((old.cod_corto is null and new.cod_corto is not null) or
      (new.cod_corto is null and old.cod_corto is not null) or
      (new.cod_corto is not null and old.cod_corto is not null and new.cod_corto <> old.cod_corto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'COD_CORTO', old.cod_corto, new.cod_corto);

  if ((old.nombre is null and new.nombre is not null) or
      (new.nombre is null and old.nombre is not null) or
      (new.nombre is not null and old.nombre is not null and new.nombre <> old.nombre)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'NOMBRE', old.nombre, new.nombre);

  if ((old.descripcion is null and new.descripcion is not null) or
      (new.descripcion is null and old.descripcion is not null) or
      (new.descripcion is not null and old.descripcion is not null and new.descripcion <> old.descripcion)) then
     insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
            values (:tid, 'DESCRIPCION', old.descripcion, new.descripcion);

  if ((old.imagen is null and new.imagen is not null) or
      (new.imagen is null and old.imagen is not null) or
      (new.imagen is not null and old.imagen is not null and new.imagen <> old.imagen)) then
     insert into Z_SINC_CAMPO_BLOB (log_tables_id, field_name, old_blob_value, new_blob_value)
            values (:tid, 'IMAGEN', old.imagen, new.imagen);

  if ((old.baja is null and new.baja is not null) or
      (new.baja is null and old.baja is not null) or
      (new.baja is not null and old.baja is not null and new.baja <> old.baja)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'BAJA', old.baja, new.baja);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_STOCK_PRODUCTO_AD FOR STOCK_PRODUCTO
ACTIVE AFTER DELETE POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'STOCK_PRODUCTO', 'D', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_STOCK_PRODUCTO', old.id_stock_producto);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_STOCK_PRODUCTO', old.id_stock_producto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_PRODUCTO', old.id_producto, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'ID_POSICION_SUCURSAL', old.id_posicion_sucursal, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'STOCK_ACTUAL', old.stock_actual, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'STOCK_MIN', old.stock_min, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'STOCK_MAX', old.stock_max, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'STOCK_REPEDIDO', old.stock_repedido, null);

  insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
         values (:tid, 'STOCK_MIN_ALARMA', old.stock_min_alarma, null);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_STOCK_PRODUCTO_AI FOR STOCK_PRODUCTO
ACTIVE AFTER INSERT POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'STOCK_PRODUCTO', 'I', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_STOCK_PRODUCTO', new.id_stock_producto);

  if (new.id_stock_producto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_STOCK_PRODUCTO', null, new.id_stock_producto);

  if (new.id_producto is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_PRODUCTO', null, new.id_producto);

  if (new.id_posicion_sucursal is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'ID_POSICION_SUCURSAL', null, new.id_posicion_sucursal);

  if (new.stock_actual is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'STOCK_ACTUAL', null, new.stock_actual);

  if (new.stock_min is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'STOCK_MIN', null, new.stock_min);

  if (new.stock_max is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'STOCK_MAX', null, new.stock_max);

  if (new.stock_repedido is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'STOCK_REPEDIDO', null, new.stock_repedido);

  if (new.stock_min_alarma is not null) then
    insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
           values (:tid, 'STOCK_MIN_ALARMA', null, new.stock_min_alarma);


end
^

/* Alter exist trigger... */
CREATE TRIGGER Z_SINC_STOCK_PRODUCTO_AU FOR STOCK_PRODUCTO
ACTIVE AFTER UPDATE POSITION 32767
as
declare variable tid integer; declare variable id_sucursal integer;
begin
  id_sucursal = null; select c.db_sucursal from configuracion c into :id_sucursal; if (id_sucursal is null) then exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE'; tid = id_sucursal||GEN_ID(z_sinc_tabla_gen,1);

  insert into Z_SINC_TABLA (id, table_name, operation, date_time, user_name)
         values (:tid, 'STOCK_PRODUCTO', 'U', 'NOW', user);

  insert into Z_SINC_CLAVE (log_tables_id, key_field, key_value)
         values (:tid, 'ID_STOCK_PRODUCTO', old.id_stock_producto);

  if ((old.id_stock_producto is null and new.id_stock_producto is not null) or
      (new.id_stock_producto is null and old.id_stock_producto is not null) or
      (new.id_stock_producto is not null and old.id_stock_producto is not null and new.id_stock_producto <> old.id_stock_producto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_STOCK_PRODUCTO', old.id_stock_producto, new.id_stock_producto);

  if ((old.id_producto is null and new.id_producto is not null) or
      (new.id_producto is null and old.id_producto is not null) or
      (new.id_producto is not null and old.id_producto is not null and new.id_producto <> old.id_producto)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_PRODUCTO', old.id_producto, new.id_producto);

  if ((old.id_posicion_sucursal is null and new.id_posicion_sucursal is not null) or
      (new.id_posicion_sucursal is null and old.id_posicion_sucursal is not null) or
      (new.id_posicion_sucursal is not null and old.id_posicion_sucursal is not null and new.id_posicion_sucursal <> old.id_posicion_sucursal)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'ID_POSICION_SUCURSAL', old.id_posicion_sucursal, new.id_posicion_sucursal);

  if ((old.stock_actual is null and new.stock_actual is not null) or
      (new.stock_actual is null and old.stock_actual is not null) or
      (new.stock_actual is not null and old.stock_actual is not null and new.stock_actual <> old.stock_actual)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'STOCK_ACTUAL', old.stock_actual, new.stock_actual);

  if ((old.stock_min is null and new.stock_min is not null) or
      (new.stock_min is null and old.stock_min is not null) or
      (new.stock_min is not null and old.stock_min is not null and new.stock_min <> old.stock_min)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'STOCK_MIN', old.stock_min, new.stock_min);

  if ((old.stock_max is null and new.stock_max is not null) or
      (new.stock_max is null and old.stock_max is not null) or
      (new.stock_max is not null and old.stock_max is not null and new.stock_max <> old.stock_max)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'STOCK_MAX', old.stock_max, new.stock_max);

  if ((old.stock_repedido is null and new.stock_repedido is not null) or
      (new.stock_repedido is null and old.stock_repedido is not null) or
      (new.stock_repedido is not null and old.stock_repedido is not null and new.stock_repedido <> old.stock_repedido)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'STOCK_REPEDIDO', old.stock_repedido, new.stock_repedido);

  if ((old.stock_min_alarma is null and new.stock_min_alarma is not null) or
      (new.stock_min_alarma is null and old.stock_min_alarma is not null) or
      (new.stock_min_alarma is not null and old.stock_min_alarma is not null and new.stock_min_alarma <> old.stock_min_alarma)) then
     insert into Z_SINC_CAMPO (log_tables_id, field_name, old_value, new_value)
            values (:tid, 'STOCK_MIN_ALARMA', old.stock_min_alarma, new.stock_min_alarma);


end
^

/* Drop generator... */
SET TERM ; ^
