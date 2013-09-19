object FPrincipal: TFPrincipal
  Left = 395
  Top = 294
  Width = 611
  Height = 309
  Caption = 'Modulo Impresi'#243'n Fiscal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 603
    Height = 282
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 49
      Width = 71
      Height = 13
      Caption = 'Parametros:'
    end
    object lblErrorDriver: TLabel
      Left = 1
      Top = 263
      Width = 601
      Height = 18
      Align = alBottom
      Alignment = taCenter
      Caption = 'lblErrorDriver'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object lblFactura: TLabel
      Left = 256
      Top = 211
      Width = 61
      Height = 16
      Caption = 'Factura:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 601
      Height = 30
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 599
        Height = 28
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
      Top = 42
      Width = 509
      Height = 21
      TabOrder = 1
    end
    object btnCierreZ: TButton
      Left = 9
      Top = 108
      Width = 113
      Height = 25
      Caption = 'Cierre Z'
      TabOrder = 2
      OnClick = btnCierreZClick
    end
    object btnCierreX: TButton
      Left = 9
      Top = 140
      Width = 113
      Height = 25
      Caption = 'Cierre X'
      TabOrder = 3
      OnClick = btnCierreXClick
    end
    object btnAuditoria: TButton
      Left = 9
      Top = 172
      Width = 113
      Height = 25
      Caption = 'Auditoria'
      TabOrder = 4
      OnClick = btnAuditoriaClick
    end
    object editNumeroComprobante: TEdit
      Left = 128
      Top = 206
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object btnFactura: TButton
      Left = 9
      Top = 204
      Width = 113
      Height = 25
      Caption = 'Factura'
      TabOrder = 6
      OnClick = btnFacturaClick
    end
    object btnAbrirPuerto: TBitBtn
      Left = 9
      Top = 76
      Width = 113
      Height = 25
      Caption = 'Abrir Puerto'
      TabOrder = 7
      OnClick = btnAbrirPuertoClick
    end
    object btnCerrarPuerto: TBitBtn
      Left = 128
      Top = 76
      Width = 113
      Height = 25
      Caption = 'Cerrar Puerto'
      TabOrder = 8
      OnClick = btnCerrarPuertoClick
    end
    object DateTimeFechaDesde: TDateTimePicker
      Left = 128
      Top = 174
      Width = 121
      Height = 21
      Date = 41068.667614293980000000
      Time = 41068.667614293980000000
      TabOrder = 9
    end
    object DateTimeFechaHasta: TDateTimePicker
      Left = 251
      Top = 174
      Width = 121
      Height = 21
      Date = 41068.667614293980000000
      Time = 41068.667614293980000000
      TabOrder = 10
    end
    object ComboBoxTipoAuditoria: TComboBox
      Left = 375
      Top = 174
      Width = 214
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 11
      Text = 'T = Reporte total general'
      Items.Strings = (
        'T = Reporte total general'
        'D = Reporte detallado')
    end
    object btnCancelarFactura: TButton
      Left = 9
      Top = 236
      Width = 113
      Height = 25
      Caption = 'Cancelar Factura'
      TabOrder = 12
      Visible = False
      OnClick = btnCancelarFacturaClick
    end
    object Hasar: THASAR
      Left = 200
      Top = 120
      Width = 32
      Height = 32
      ControlData = {000300004F0300004F030000}
    end
    object gBoxImpresora: TGroupBox
      Left = 248
      Top = 72
      Width = 341
      Height = 83
      Caption = ' Impresora '
      TabOrder = 14
      object Label3: TLabel
        Left = 32
        Top = 16
        Width = 39
        Height = 13
        Alignment = taRightJustify
        Caption = 'Marca:'
      end
      object Label5: TLabel
        Left = 11
        Top = 60
        Width = 60
        Height = 13
        Alignment = taRightJustify
        Caption = 'Velocidad:'
      end
      object Label4: TLabel
        Left = 29
        Top = 38
        Width = 42
        Height = 13
        Alignment = taRightJustify
        Caption = 'Puerto:'
      end
      object Label6: TLabel
        Left = 183
        Top = 16
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Modelo:'
      end
      object cBoxImpresora_Marca: TComboBox
        Left = 74
        Top = 12
        Width = 104
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = 'EPSON'
        OnChange = cBoxImpresora_MarcaChange
        Items.Strings = (
          'EPSON'
          'HASAR')
      end
      object cBoxImpresora_Velocidad: TComboBox
        Left = 74
        Top = 56
        Width = 104
        Height = 21
        ItemHeight = 13
        ItemIndex = 2
        TabOrder = 1
        Text = '9600'
        OnChange = cBoxImpresora_VelocidadChange
        Items.Strings = (
          '2400'
          '4800'
          '9600'
          '19200')
      end
      object cBoxImpresora_Puerto: TComboBox
        Left = 74
        Top = 34
        Width = 104
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = '1'
        OnChange = cBoxImpresora_PuertoChange
        Items.Strings = (
          '1'
          '2')
      end
      object cBoxImpresora_Modelo: TComboBox
        Left = 231
        Top = 12
        Width = 104
        Height = 21
        ItemHeight = 13
        TabOrder = 3
        Text = 'TM-U220AF'
        OnChange = cBoxImpresora_ModeloChange
        Items.Strings = (
          'TM-U220AF'
          'P-330F'
          'P-715F')
      end
    end
  end
  object conexion: TZConnection
    Protocol = 'firebird-1.5'
    HostName = '127.0.0.1'
    Database = 'C:\SISTEMAS\SiGeFa\Bases\SiGeFa.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    AutoCommit = False
    Left = 536
    Top = 80
  end
  object EKIni: TEKIni
    Archivo = 'config.ini'
    Left = 536
    Top = 192
  end
  object EKModelo: TEKModeloTransaccion
    Coneccion = conexion
    Left = 536
    Top = 136
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
    Left = 456
    Top = 80
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
    Left = 456
    Top = 136
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
    Left = 456
    Top = 192
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
    Left = 368
    Top = 80
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
  object ZQ_Config: TZQuery
    Connection = conexion
    SQL.Strings = (
      'select c.clave, c.fecha, c.numero, c.texto'
      'from configuracion_variables  c')
    Params = <>
    Left = 368
    Top = 136
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
    Left = 368
    Top = 192
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
end
