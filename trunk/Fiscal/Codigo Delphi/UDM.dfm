object DM: TDM
  OldCreateOrder = False
  Left = 407
  Top = 248
  Height = 419
  Width = 499
  object ZQ_UpdateFactura: TZQuery
    Connection = conexion
    SQL.Strings = (
      'update comprobante c'
      
        'set c.numero_cpb=:numcpb,c.punto_venta=:pventa,c.fecha_impresa=:' +
        'fimpresa'
      
        'where (c.id_comprobante=:idcpb)and(c.punto_venta is null)and(c.n' +
        'umero_cpb is null)'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'numcpb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pventa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fimpresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcpb'
        ParamType = ptUnknown
      end>
    Left = 120
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'numcpb'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pventa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fimpresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcpb'
        ParamType = ptUnknown
      end>
  end
  object ZQ_Factura: TZQuery
    Connection = conexion
    SQL.Strings = (
      
        'select cpb.id_cliente, cli.nombre, tdoc.nombre_tipo_doc, cli.num' +
        'ero_doc,'
      '       cli.cuit_cuil, cli.direccion, cli.localidad,'
      
        '       cpb.id_tipo_iva, iva.nombre_tipo_iva, iva.letra as tipo_f' +
        'actura,'
      '       iva.fiscal as letra_fiscal, cli.id_tipo_doc'
      'from comprobante cpb'
      'left join persona cli on (cpb.id_cliente = cli.id_persona)'
      'left join tipo_iva iva on (cpb.id_tipo_iva = iva.id_tipo_iva)'
      
        'left join tipo_documento tdoc on (cli.id_tipo_doc = tdoc.id_tipo' +
        '_doc)'
      'where cpb.id_comprobante = :id_Comprobante')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_Comprobante'
        ParamType = ptUnknown
      end>
    Left = 224
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_Comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_FacturaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object ZQ_FacturaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_FacturaNOMBRE_TIPO_DOC: TStringField
      FieldName = 'NOMBRE_TIPO_DOC'
    end
    object ZQ_FacturaNUMERO_DOC: TStringField
      FieldName = 'NUMERO_DOC'
      Size = 50
    end
    object ZQ_FacturaCUIT_CUIL: TStringField
      FieldName = 'CUIT_CUIL'
      Size = 30
    end
    object ZQ_FacturaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 200
    end
    object ZQ_FacturaLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 200
    end
    object ZQ_FacturaID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_FacturaNOMBRE_TIPO_IVA: TStringField
      FieldName = 'NOMBRE_TIPO_IVA'
      Size = 50
    end
    object ZQ_FacturaTIPO_FACTURA: TStringField
      FieldName = 'TIPO_FACTURA'
      Size = 1
    end
    object ZQ_FacturaLETRA_FISCAL: TStringField
      FieldName = 'LETRA_FISCAL'
      Size = 1
    end
    object ZQ_FacturaID_TIPO_DOC: TIntegerField
      FieldName = 'ID_TIPO_DOC'
    end
  end
  object conexion: TZConnection
    Protocol = 'firebird-1.5'
    HostName = '127.0.0.1'
    Database = 'C:\SISTEMAS\SiGeFa\Bases\SiGeFa.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    AutoCommit = False
    Left = 32
    Top = 24
  end
  object EKModelo: TEKModeloTransaccion
    Coneccion = conexion
    Left = 32
    Top = 80
  end
  object ZQ_Items: TZQuery
    Connection = conexion
    SQL.Strings = (
      
        'select cd.id_producto, cd.cantidad, cd.importe_if, cd.importe_if' +
        '_siniva,'
      
        '       cd.impuesto_interno, pro.codigo_barra, cab.nombre as nomb' +
        're_producto,'
      
        '       col.nombre as nombre_color, mar.nombre_marca, med.medida ' +
        'as nombre_medida,'
      '       cd.porc_iva'
      'from comprobante_detalle cd'
      'left join producto pro on (cd.id_producto = pro.id_producto)'
      
        'left join producto_cabecera cab on (pro.id_prod_cabecera = cab.i' +
        'd_prod_cabecera)'
      'left join marca mar on (cab.id_marca = mar.id_marca)'
      'left join color col on (cab.color = col.id_color)'
      'left join medida med on (pro.id_medida = med.id_medida)'
      'where cd.id_comprobante = :id_Comprobante'
      'order by cd.id_comprobante_detalle')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_Comprobante'
        ParamType = ptUnknown
      end>
    Left = 224
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_Comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_ItemsID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
    end
    object ZQ_ItemsCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object ZQ_ItemsIMPORTE_IF: TFloatField
      FieldName = 'IMPORTE_IF'
    end
    object ZQ_ItemsIMPORTE_IF_SINIVA: TFloatField
      FieldName = 'IMPORTE_IF_SINIVA'
    end
    object ZQ_ItemsIMPUESTO_INTERNO: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
    end
    object ZQ_ItemsCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 40
    end
    object ZQ_ItemsNOMBRE_PRODUCTO: TStringField
      FieldName = 'NOMBRE_PRODUCTO'
      Size = 100
    end
    object ZQ_ItemsNOMBRE_COLOR: TStringField
      FieldName = 'NOMBRE_COLOR'
      Size = 30
    end
    object ZQ_ItemsNOMBRE_MARCA: TStringField
      FieldName = 'NOMBRE_MARCA'
      Size = 50
    end
    object ZQ_ItemsNOMBRE_MEDIDA: TStringField
      FieldName = 'NOMBRE_MEDIDA'
      Size = 30
    end
    object ZQ_ItemsPORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
  end
  object ZQ_Config: TZQuery
    Connection = conexion
    SQL.Strings = (
      'select c.clave, c.fecha, c.numero, c.texto'
      'from configuracion_variables  c')
    Params = <>
    Left = 120
    Top = 80
    object ZQ_ConfigCLAVE: TStringField
      FieldName = 'CLAVE'
      Size = 50
    end
    object ZQ_ConfigFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZQ_ConfigNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object ZQ_ConfigTEXTO: TStringField
      FieldName = 'TEXTO'
      Size = 100
    end
  end
  object ZQ_Config_Fiscal: TZQuery
    Connection = conexion
    SQL.Strings = (
      'select c.*'
      'from configuracion_fiscal  c'
      'where c.id = :id_fiscal')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_fiscal'
        ParamType = ptUnknown
      end>
    Left = 120
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_fiscal'
        ParamType = ptUnknown
      end>
    object ZQ_Config_FiscalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ZQ_Config_FiscalMARCA: TStringField
      FieldName = 'MARCA'
    end
    object ZQ_Config_FiscalMODELO: TStringField
      FieldName = 'MODELO'
      Size = 50
    end
    object ZQ_Config_FiscalPUERTO: TStringField
      FieldName = 'PUERTO'
      Size = 10
    end
    object ZQ_Config_FiscalVELOCIDAD: TStringField
      FieldName = 'VELOCIDAD'
      Size = 10
    end
    object ZQ_Config_FiscalPREDETERMINADA: TStringField
      FieldName = 'PREDETERMINADA'
      Size = 1
    end
  end
  object ZQ_FormaPago: TZQuery
    Connection = conexion
    SQL.Strings = (
      'select CASE'
      '        WHEN (tf.descripcion like '#39'%EFECTIVO%'#39') THEN '#39'EFECTIVO'#39
      '        ELSE (tf.descripcion)'
      
        '       END as forma_pago_nombre, sum(fp.importe_real) as forma_p' +
        'ago_importe'
      'from comprobante_forma_pago fp'
      
        'left join tipo_formapago tf on (fp.id_tipo_formapag = tf.id_tipo' +
        '_formapago)'
      'where fp.id_comprobante = :id_Comprobante'
      '  and tf."IF" = '#39'S'#39
      'group by 1')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_Comprobante'
        ParamType = ptUnknown
      end>
    Left = 224
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_Comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_FormaPagoFORMA_PAGO_NOMBRE: TStringField
      FieldName = 'FORMA_PAGO_NOMBRE'
      Size = 50
    end
    object ZQ_FormaPagoFORMA_PAGO_IMPORTE: TFloatField
      FieldName = 'FORMA_PAGO_IMPORTE'
    end
  end
  object EKIni: TEKIni
    Archivo = 'config.ini'
    Left = 32
    Top = 136
  end
  object ZQ_FacturaOS: TZQuery
    Connection = conexion
    SQL.Strings = (
      
        'select c.id_comprobante, c.id_obra_social, os.nombre, os.cuit_cu' +
        'il, os.localidad,'
      '       os.direccion, os.id_tipo_iva, iva.letra as tipo_factura'
      'from comprobante c'
      'left join optica_os os on c.id_obra_social = os.id_os'
      'left join tipo_iva iva on os.id_tipo_iva = iva.id_tipo_iva'
      'where c.id_tipo_cpb = 40'
      '  and c.id_comprobante = :id_comprobante')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 328
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_FacturaOSID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object ZQ_FacturaOSID_OBRA_SOCIAL: TIntegerField
      FieldName = 'ID_OBRA_SOCIAL'
    end
    object ZQ_FacturaOSNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_FacturaOSCUIT_CUIL: TStringField
      FieldName = 'CUIT_CUIL'
      Size = 30
    end
    object ZQ_FacturaOSLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 200
    end
    object ZQ_FacturaOSDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 100
    end
    object ZQ_FacturaOSID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_FacturaOSTIPO_FACTURA: TStringField
      FieldName = 'TIPO_FACTURA'
      Size = 1
    end
  end
  object ZQ_ItemsOS: TZQuery
    Connection = conexion
    SQL.Strings = (
      
        'select cd.id_comprobante_detalle, cd.detalle, cd.cantidad, cd.im' +
        'porte_venta,'
      '       cd.porc_iva'
      'from comprobante_detalle cd'
      'where cd.id_comprobante = :id_comprobante')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 328
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_ItemsOSID_COMPROBANTE_DETALLE: TIntegerField
      FieldName = 'ID_COMPROBANTE_DETALLE'
      Required = True
    end
    object ZQ_ItemsOSDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 200
    end
    object ZQ_ItemsOSCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object ZQ_ItemsOSIMPORTE_VENTA: TFloatField
      FieldName = 'IMPORTE_VENTA'
    end
    object ZQ_ItemsOSPORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
  end
end
