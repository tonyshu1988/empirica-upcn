create procedure ACOMODAR_INDICES
as
declare variable MAX_ID integer;
declare variable ID_MEDIDA integer;
declare variable ID_SUCURSAL integer;
declare variable ID_ARTICULO integer;
begin
     
  id_sucursal = null;
  select c.db_sucursal
  from configuracion c
  into :id_sucursal;
  if (id_sucursal is null) then
     exception error 'LA BASE DE DATOS NO TIENE ASOCIADA UNA sucursal, VERIFIQUE';

--COLOR
  max_id = GEN_ID(gen_color_id, 0);    --obtengo el ultimo id generado
  update COLOR C
  set C.ID_COLOR = :id_sucursal||C.id_color --actualizo la PK actual con el numero de la suc adelante
  where c.id_color <> 0 --al PK 0 que es Sin Color no le hago nada
    and c.id_color <= :max_id; --solamente lo que son menores o igual al max_id calculado
                               --por si lo corro dos veces no siga concatenando el numero de la suc a la PK

--MARCA
  max_id = GEN_ID(gen_marca_id, 0);
  update marca m
  set m.id_marca = :id_sucursal||m.id_marca
  where m.id_marca <> 0
    and m.id_marca <= :max_id;

--MEDIDA
  max_id = GEN_ID(gen_medida_id, 0);
  update medida m
  set m.id_medida = :id_sucursal||m.id_medida
  where m.id_medida <> 0
    and m.id_medida <= :max_id;

--TIPO_ARTICULO
  max_id = GEN_ID(gen_tipo_articulo_id, 0);
  update tipo_articulo t
  set t.id_tipo_articulo = :id_sucursal||t.id_tipo_articulo
  where t.id_tipo_articulo <> 0
    and t.id_tipo_articulo <= :max_id;

--TIPO_COMPROBANTE
/*$$IBEC$$   max_id = GEN_ID(gen_tipo_comprobante_id, 0);
  update tipo_comprobante t
  set t.id_tipo_cpb = :id_sucursal||t.id_tipo_cpb
  where t.id_tipo_cpb <> 0
    and t.id_tipo_cpb <= :max_id; $$IBEC$$*/

--TIPO_DOCUMENTO
/*$$IBEC$$   max_id = GEN_ID(gen_tipo_documento_id, 0);
  update tipo_documento t
  set t.id_tipo_doc = :id_sucursal||t.id_tipo_doc
  where t.id_tipo_doc <> 0
    and t.id_tipo_doc <= :max_id; $$IBEC$$*/

--TIPO_EMPRESA
  max_id = GEN_ID(gen_tipo_empresa_id, 0);
  update tipo_empresa t
  set t.id_tipo_empresa = :id_sucursal||t.id_tipo_empresa
  where t.id_tipo_empresa <> 0
    and t.id_tipo_empresa <= :max_id;

--TIPO_FORMAPAGO
/*$$IBEC$$   max_id = GEN_ID(gen_tipo_formapago_id, 0);
  update tipo_formapago t
  set t.id_tipo_formapago = :id_sucursal||t.id_tipo_formapago
  where t.id_tipo_formapago <> 0
    and t.id_tipo_formapago <= :max_id; $$IBEC$$*/

--TIPO_IVA
/*$$IBEC$$   max_id = GEN_ID(gen_tipo_iva_id, 0);
  update tipo_iva t
  set t.id_tipo_iva = :id_sucursal||t.id_tipo_iva
  where t.id_tipo_iva <> 0
    and t.id_tipo_iva <= :max_id; $$IBEC$$*/

--TIPO_RELACION
/*$$IBEC$$   max_id = GEN_ID(gen_tipo_relacion_id, 0);
  update tipo_relacion t
  set t.id_tipo_relacion = :id_sucursal||t.id_tipo_relacion
  where t.id_tipo_relacion <> 0
    and t.id_tipo_relacion <= :max_id; $$IBEC$$*/

--ARTICULO
  max_id = GEN_ID(gen_articulo_id, 0);
  update ARTICULO A
  set A.id_articulo = :id_sucursal||a.id_articulo,
      A.ID_TIPO_ARTICULO = :id_sucursal||a.id_tipo_articulo
  where a.id_articulo <= :max_id;

--EMPRESA
  max_id = GEN_ID(gen_empresa_id, 0);
  update EMPRESA E
  set E.id_empresa = :id_sucursal||e.id_empresa,
      E.id_tipo_iva = :id_sucursal||e.id_tipo_iva,
      E.id_tipo_empresa = :id_sucursal||e.id_tipo_empresa
  where e.id_empresa <= :max_id;

--EMPRESA_MARCA
  max_id = GEN_ID(gen_empresa_marca_id, 0);
  update EMPRESA_MARCA e
  set e.id = :id_sucursal||e.id,
      e.id_empresa = :id_sucursal||e.id_empresa,
      e.id_marca = :id_sucursal||e.id_marca
  where e.id <= :max_id;

--MEDIDA_ARTICULO
  for select m.id_medida, m.id_articulo
  from medida_articulo m
  where m.id_medida_articulo is null
  into :id_medida, :id_articulo
  do
  begin
    max_id = :id_sucursal||GEN_ID(gen_medida_articulo_id, 1);

    update MEDIDA_ARTICULO M
       set M.id_medida_articulo = :max_id
    where m.id_articulo = :id_articulo
      and m.id_medida = :id_medida;
  end

  max_id = GEN_ID(gen_medida_articulo_id, 0);
  update MEDIDA_ARTICULO M
  set M.id_articulo = :id_sucursal||m.id_articulo,
      M.id_medida = :id_sucursal||m.id_medida
  where m.id_medida_articulo <= :id_sucursal||:max_id;

--PERSONA
  max_id = GEN_ID(gen_persona_id, 0);
  update PERSONA P
  set P.id_persona = :id_sucursal||p.id_persona,
      P.id_tipo_doc = :id_sucursal||p.id_tipo_doc,
      P.id_tipo_iva = :id_sucursal||p.id_tipo_iva
  where p.id_persona <= :max_id;

--PRODUCTO_CABECERA
  max_id = GEN_ID(gen_producto_cabecera_id, 0);
  update PRODUCTO_CABECERA P
  set P.id_prod_cabecera = :id_sucursal||p.id_prod_cabecera,
      P.id_articulo = :id_sucursal||p.id_articulo,
      P.id_marca = :id_sucursal||p.id_marca,
      P.color = :id_sucursal||p.color
  where p.id_prod_cabecera <= :max_id;

--PRODUCTO
  max_id = GEN_ID(gen_producto_id, 0);
  update PRODUCTO P
  set P.id_producto = :id_sucursal||p.id_producto,
      P.id_prod_cabecera = :id_sucursal||p.id_prod_cabecera,
      P.id_medida = :id_sucursal||p.id_medida
  where p.id_producto <= :max_id;

  suspend;
end