object FPrincipal: TFPrincipal
  Left = 415
  Top = 135
  Width = 611
  Height = 493
  Caption = 'FPrincipal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 603
    Height = 466
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 53
      Width = 71
      Height = 13
      Caption = 'Parametros:'
    end
    object lblError: TLabel
      Left = 192
      Top = 224
      Width = 40
      Height = 13
      Caption = 'ERROR'
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 601
      Height = 36
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 599
        Height = 34
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = 'MODULO FISCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object editParametros: TEdit
      Left = 80
      Top = 46
      Width = 505
      Height = 21
      TabOrder = 1
    end
    object DriverFiscal: TDriverFiscal
      Left = 4
      Top = 3
      Width = 34
      Height = 32
      TabOrder = 2
      ControlData = {00090000840300004F030000}
    end
    object btnCierreZ: TButton
      Left = 9
      Top = 77
      Width = 113
      Height = 25
      Caption = 'Cierre Z'
      TabOrder = 3
      OnClick = btnCierreZClick
    end
    object btnCierreX: TButton
      Left = 9
      Top = 109
      Width = 113
      Height = 25
      Caption = 'Cierre X'
      TabOrder = 4
      OnClick = btnCierreXClick
    end
    object btnAuditoria: TButton
      Left = 9
      Top = 141
      Width = 113
      Height = 25
      Caption = 'Auditoria'
      TabOrder = 5
      OnClick = btnAuditoriaClick
    end
    object editNumeroComprobante: TEdit
      Left = 128
      Top = 176
      Width = 97
      Height = 21
      TabOrder = 6
    end
    object btnFactura: TButton
      Left = 9
      Top = 173
      Width = 113
      Height = 25
      Caption = 'Factura'
      TabOrder = 7
      OnClick = btnFacturaClick
    end
  end
  object conexion: TZConnection
    Protocol = 'firebird-1.5'
    HostName = '127.0.0.1'
    Database = 'C:\SISTEMAS\SiGeFa\Bases\SIGEFA LOPEZ.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    AutoCommit = False
    Connected = True
    Left = 552
    Top = 304
  end
  object EKIni: TEKIni
    Archivo = 'config.ini'
    Left = 552
    Top = 408
  end
  object EKModelo: TEKModeloTransaccion
    Coneccion = conexion
    Left = 552
    Top = 352
  end
  object ZQ_Factura: TZQuery
    Connection = conexion
    SQL.Strings = (
      
        'select cpb.id_cliente, cli.nombre, tdoc.nombre_tipo_doc, cli.num' +
        'ero_doc,'
      '       cli.cuit_cuil, cli.direccion, cli.localidad,'
      
        '       cpb.id_tipo_iva, iva.nombre_tipo_iva, iva.letra as tipo_f' +
        'actura,'
      '       iva.fiscal as letra_fiscal'
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
    Left = 472
    Top = 304
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
  end
  object ZQ_Items: TZQuery
    Connection = conexion
    SQL.Strings = (
      
        'select cd.id_producto, cd.cantidad, cd.importe_if, cd.importe_if' +
        '_siniva,'
      
        '       cd.impuesto_interno, pro.codigo_barra, cab.nombre as nomb' +
        're_producto,'
      
        '       col.nombre as nombre_color, mar.nombre_marca, med.medida ' +
        'as nombre_medida'
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
    Left = 472
    Top = 360
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
  end
  object ZQ_FormaPago: TZQuery
    Connection = conexion
    SQL.Strings = (
      
        'select tf.descripcion as forma_pago_nombre, sum(fp.importe_real)' +
        ' as forma_pago_importe'
      'from comprobante_forma_pago fp'
      
        'left join tipo_formapago tf on (fp.id_tipo_formapag = tf.id_tipo' +
        '_formapago)'
      'where fp.id_comprobante = :id_Comprobante'
      '  and tf."IF" = '#39'S'#39
      'group by tf.descripcion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_Comprobante'
        ParamType = ptUnknown
      end>
    Left = 472
    Top = 416
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
end
