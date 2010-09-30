object FListadoErogaciones: TFListadoErogaciones
  Left = 310
  Top = 202
  Width = 870
  Height = 500
  Caption = 'Listado Erogaciones en Cumplimiento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PContenedor: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 410
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 4
    object DBGridListaErogacion: TDBGrid
      Left = 3
      Top = 58
      Width = 848
      Height = 331
      Align = alClient
      Color = 16772842
      DataSource = DS_Libro_erogaciones
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridListaErogacionDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'NRO_MOVIMIENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Nro. Mov.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_ORDEN'
          Title.Alignment = taCenter
          Title.Caption = 'Nro. Orden'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Caption = 'F. Emisi'#243'n'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_MDC'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha PD'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_CONCILIADO'
          Title.Alignment = taCenter
          Title.Caption = 'F. Conciliado'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_FANTASIA'
          Title.Alignment = taCenter
          Title.Caption = 'Proveedor'
          Width = 117
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
          Title.Alignment = taCenter
          Title.Caption = 'Medio Pago'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANCO_MDC'
          Title.Alignment = taCenter
          Title.Caption = 'Banco Medio Pago'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_CHEQUE_TRANSF'
          Title.Alignment = taCenter
          Title.Caption = 'Nro. Medio Pago'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_FACTURA_RECIBO'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha Factura'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OTROS'
          Title.Alignment = taCenter
          Title.Caption = 'Nro. Factura'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_CONCEPTO'
          Title.Alignment = taCenter
          Title.Caption = 'Concepto'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_OBJMOVIMIENTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Mov.'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_OBJMOVIMIENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre  Mov.'
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pagos_diferidos'
          Title.Alignment = taCenter
          Title.Caption = 'Pagos Diferidos'
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pagos_corrientes'
          Title.Alignment = taCenter
          Title.Caption = 'Pagos Corrientes'
          Width = 117
          Visible = True
        end>
    end
    object pDatos: TPanel
      Left = 3
      Top = 3
      Width = 848
      Height = 55
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        848
        55)
      object Shape1: TShape
        Left = 3
        Top = 4
        Width = 843
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = clGray
        Pen.Color = clGray
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 3
        Top = 3
        Width = 843
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = clTeal
        Shape = stRoundRect
      end
      object Label2: TLabel
        Left = 0
        Top = 7
        Width = 846
        Height = 18
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'LISTADO DE EROGACIONES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 0
        Top = 6
        Width = 846
        Height = 18
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'LISTADO DE EROGACIONES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInfoBk
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 4
        Top = 38
        Width = 46
        Height = 13
        Caption = 'Cuenta:'
      end
      object lblNombreCuenta: TLabel
        Left = 52
        Top = 38
        Width = 317
        Height = 13
        AutoSize = False
        Caption = 'lblNombreCuenta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 380
        Top = 38
        Width = 41
        Height = 13
        Caption = 'Desde:'
      end
      object lblFechaDesde: TLabel
        Left = 423
        Top = 38
        Width = 112
        Height = 13
        AutoSize = False
        Caption = 'lblFechaDesde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object lblFechaHasta: TLabel
        Left = 595
        Top = 38
        Width = 112
        Height = 13
        AutoSize = False
        Caption = 'lblFechaHasta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 556
        Top = 38
        Width = 37
        Height = 13
        Caption = 'Hasta:'
      end
      object StaticText1: TStaticText
        Left = 774
        Top = 39
        Width = 69
        Height = 17
        Anchors = [akRight]
        Caption = 'Pendiente'
        Color = 12371452
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object pResumen: TPanel
      Left = 3
      Top = 389
      Width = 848
      Height = 18
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object lblSaldo: TLabel
        Left = 785
        Top = 0
        Width = 63
        Height = 18
        Align = alRight
        Caption = 'lblSaldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object dxBarABM: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Backgrounds.Bar.Data = {
      66090000424D660900000000000036000000280000001C0000001C0000000100
      1800000000003009000000000000000000000000000000000000E0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0
      A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48D
      E0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A48DE0A4
      8DE0A48DE0A48DE0A48D}
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'barra'
        DockedDockingStyle = dsBottom
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsBottom
        FloatLeft = 276
        FloatTop = 216
        FloatClientWidth = 39
        FloatClientHeight = 38
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ItemLinks = <
          item
            Item = btnListadoErogaciones
            Visible = True
          end
          item
            BeginGroup = True
            Item = btImprimir
            Visible = True
          end
          item
            Item = btnSalir
            Visible = True
          end>
        Name = 'barra'
        OneOnRow = True
        Row = 0
        UseOwnFont = True
        UseRecentItems = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
    CanCustomize = False
    Categories.Strings = (
      'Edicion')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    HideFloatingBarsWhenInactive = False
    LargeImages = FPrincipal.Iconos_Barra_32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    MenusShowRecentItemsFirst = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsOffice11
    UseF10ForMenu = False
    UseSystemFont = False
    Left = 800
    Top = 312
    DockControlHeights = (
      0
      0
      0
      52)
    object btnListadoErogaciones: TdxBarLargeButton
      Caption = 'Ver Mes'
      Category = 0
      Hint = 'Saldo actual de todas las Cuentas Bancarias'
      Visible = ivAlways
      ImageIndex = 29
      ShortCut = 120
      OnClick = btnListadoErogacionesClick
      AutoGrayScale = False
    end
    object btnLibroBanco: TdxBarLargeButton
      Align = iaRight
      Caption = 'Libro Banco'
      Category = 0
      Hint = 'Libro Banco'
      Visible = ivAlways
      ImageIndex = 47
      AutoGrayScale = False
    end
    object btnSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = btnSalirClick
      AutoGrayScale = False
    end
    object btn2: TdxBarLargeButton
      Caption = 'btn2'
      Category = 0
      Hint = 'btn2'
      Visible = ivAlways
      ImageIndex = 7
      AutoGrayScale = False
    end
    object btImprimir: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      ImageIndex = 28
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'btImprimir'
        'btnLibroBanco'
        'btnSalir'
        'btn2')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'btnListadoErogaciones')
    end
  end
  object ZQ_Libro_erogaciones: TZQuery
    Connection = DM.Conexion
    OnCalcFields = ZQ_Libro_erogacionesCalcFields
    SQL.Strings = (
      
        'select ctamov.*, mov.*, cta.nombre_cuenta, cta.nro_cuenta_bancar' +
        'ia,'
      
        '       pro.nro_proveedor, pro.nombre_fantasia, mcob.nombre_medio' +
        '_cobro_pago,'
      '       cpto.cod_corto as cod_concepto, cpto.nombre_concepto,'
      
        '       tmov.codigo_corto as cod_tipomovimiento, tmov.descripcion' +
        ' as nombre_tipomov,'
      
        '       omov.codigo_corto as cod_objmovimiento, omov.descripcion ' +
        'as nombre_objmovimiento'
      'from ie_cuentas_movimientos ctamov'
      
        'left join ie_cuentas cta on (ctamov.id_cuenta_egreso = cta.id_cu' +
        'enta)'
      
        'left join ie_medios_cobro_pago mcob on (ctamov.id_medio = mcob.i' +
        'd_medio)'
      
        'left join ie_movimientos mov on (ctamov.nro_movimiento = mov.nro' +
        '_movimiento)'
      
        'left join ie_proveedores pro on (mov.nro_proveedor = pro.nro_pro' +
        'veedor)'
      
        'left join ie_conceptos cpto on (mov.id_concepto = cpto.id_concep' +
        'to)'
      
        'left join tipo_movimiento tmov on (mov.id_tipo_movimiento = tmov' +
        '.id_tipo_moviemiento)'
      
        'left join objeto_movimientos omov on (mov.id_objeto_movimiento =' +
        ' omov.id_objeto_movimiento)'
      'where ('
      
        '        (mov.fecha between :Fecha_Desde and :Fecha_Hasta) /*TODO' +
        'S LOS EMITIDOS EN EL MES*/'
      '         or'
      
        '        ((ctamov.conciliado = '#39'N'#39' or ctamov.fecha_conciliado >= ' +
        ':fecha_Hasta)  and (mov.fecha <= :fecha_Hasta))'
      '        or'
      
        '        (ctamov.fecha_conciliado between :Fecha_Desde and :Fecha' +
        '_Hasta)'
      '       )'
      '  and (ctamov.id_medio = 2)'
      '  and (ctamov.id_cuenta_egreso = :cuenta)'
      'order by mov.fecha')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Fecha_Desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha_Hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cuenta'
        ParamType = ptUnknown
      end>
    Left = 416
    Top = 123
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha_Desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Fecha_Hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cuenta'
        ParamType = ptUnknown
      end>
    object ZQ_Libro_erogacionespagos_diferidos: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pagos_diferidos'
      Calculated = True
    end
    object ZQ_Libro_erogacionespagos_corrientes: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pagos_corrientes'
      Calculated = True
    end
    object ZQ_Libro_erogacionesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ZQ_Libro_erogacionesNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
      Required = True
    end
    object ZQ_Libro_erogacionesID_CUENTA_INGRESO: TIntegerField
      FieldName = 'ID_CUENTA_INGRESO'
    end
    object ZQ_Libro_erogacionesID_CUENTA_EGRESO: TIntegerField
      FieldName = 'ID_CUENTA_EGRESO'
    end
    object ZQ_Libro_erogacionesID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
    end
    object ZQ_Libro_erogacionesFECHA_MDC: TDateField
      FieldName = 'FECHA_MDC'
    end
    object ZQ_Libro_erogacionesBANCO_MDC: TStringField
      FieldName = 'BANCO_MDC'
      Size = 50
    end
    object ZQ_Libro_erogacionesNRO_CHEQUE_TRANSF: TStringField
      FieldName = 'NRO_CHEQUE_TRANSF'
      Size = 30
    end
    object ZQ_Libro_erogacionesNRO_FACTURA_RECIBO: TStringField
      FieldName = 'NRO_FACTURA_RECIBO'
      Size = 30
    end
    object ZQ_Libro_erogacionesOTROS: TStringField
      FieldName = 'OTROS'
      Size = 40
    end
    object ZQ_Libro_erogacionesIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object ZQ_Libro_erogacionesCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object ZQ_Libro_erogacionesFECHA_CONCILIADO: TDateField
      FieldName = 'FECHA_CONCILIADO'
    end
    object ZQ_Libro_erogacionesNRO_MOVIMIENTO_1: TIntegerField
      FieldName = 'NRO_MOVIMIENTO_1'
      Required = True
    end
    object ZQ_Libro_erogacionesNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
    end
    object ZQ_Libro_erogacionesID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
    end
    object ZQ_Libro_erogacionesID_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_TIPO_MOVIMIENTO'
    end
    object ZQ_Libro_erogacionesID_OBJETO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_OBJETO_MOVIMIENTO'
    end
    object ZQ_Libro_erogacionesDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 200
    end
    object ZQ_Libro_erogacionesPAGO_DEL_EJERCICIO: TStringField
      FieldName = 'PAGO_DEL_EJERCICIO'
      Size = 1
    end
    object ZQ_Libro_erogacionesFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZQ_Libro_erogacionesIMPORTE_1: TFloatField
      FieldName = 'IMPORTE_1'
    end
    object ZQ_Libro_erogacionesIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object ZQ_Libro_erogacionesNRO_COMPROMISO: TIntegerField
      FieldName = 'NRO_COMPROMISO'
    end
    object ZQ_Libro_erogacionesNRO_PARTE: TIntegerField
      FieldName = 'NRO_PARTE'
    end
    object ZQ_Libro_erogacionesANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object ZQ_Libro_erogacionesFECHA_ANULADO: TDateField
      FieldName = 'FECHA_ANULADO'
    end
    object ZQ_Libro_erogacionesPARTE_ANULADO: TIntegerField
      FieldName = 'PARTE_ANULADO'
    end
    object ZQ_Libro_erogacionesDETALLE_ANULADO: TStringField
      FieldName = 'DETALLE_ANULADO'
      Size = 200
    end
    object ZQ_Libro_erogacionesNRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
    object ZQ_Libro_erogacionesNOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 100
    end
    object ZQ_Libro_erogacionesNRO_CUENTA_BANCARIA: TStringField
      FieldName = 'NRO_CUENTA_BANCARIA'
      Size = 100
    end
    object ZQ_Libro_erogacionesNRO_PROVEEDOR_1: TIntegerField
      FieldName = 'NRO_PROVEEDOR_1'
      Required = True
    end
    object ZQ_Libro_erogacionesNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 60
    end
    object ZQ_Libro_erogacionesNOMBRE_MEDIO_COBRO_PAGO: TStringField
      FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
      Size = 30
    end
    object ZQ_Libro_erogacionesCOD_CONCEPTO: TStringField
      FieldName = 'COD_CONCEPTO'
      Size = 6
    end
    object ZQ_Libro_erogacionesNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 240
    end
    object ZQ_Libro_erogacionesCOD_TIPOMOVIMIENTO: TStringField
      FieldName = 'COD_TIPOMOVIMIENTO'
      Size = 6
    end
    object ZQ_Libro_erogacionesNOMBRE_TIPOMOV: TStringField
      FieldName = 'NOMBRE_TIPOMOV'
      Size = 100
    end
    object ZQ_Libro_erogacionesCOD_OBJMOVIMIENTO: TStringField
      FieldName = 'COD_OBJMOVIMIENTO'
      Size = 6
    end
    object ZQ_Libro_erogacionesNOMBRE_OBJMOVIMIENTO: TStringField
      FieldName = 'NOMBRE_OBJMOVIMIENTO'
      Size = 100
    end
  end
  object DS_Libro_erogaciones: TDataSource
    DataSet = ZQ_Libro_erogaciones
    Left = 416
    Top = 176
  end
  object EKBAvanzadaListadoErog: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Cuenta Bancaria'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_Cuentas
        TipoCombollenarCampo = 'BUSQUEDA'
        TipoCombollenarCampoReal = 'ID_CUENTA'
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = 0
      end
      item
        Titulo = 'Mes'
        TipoCampo = EK_Numero
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = '='
        TipoComboValores.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
        TipoComboEditable = False
        CambiarCondicion = False
        TipoComboValoresReales.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
        ItemIndex = -1
      end
      item
        Titulo = 'A'#241'o'
        TipoCampo = EK_Numero
        Mascara = '####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_Libro_erogaciones
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 120
    Top = 232
  end
  object DS_Cuentas: TDataSource
    DataSet = ZQ_Cuentas
    Left = 418
    Top = 288
  end
  object ZQ_Cuentas: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select c.*, c.nombre_cuenta||'#39' - '#39'|| coalesce ('#39'N'#176': '#39' || c.nro_c' +
        'uenta_bancaria, '#39'N'#176': S/N'#39') Busqueda'
      'from ie_cuentas c'
      'order by c.nombre_cuenta')
    Params = <>
    Left = 418
    Top = 240
    object ZQ_CuentasID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
    end
    object ZQ_CuentasNOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 100
    end
    object ZQ_CuentasMEDIO_DE_PAGO: TStringField
      FieldName = 'MEDIO_DE_PAGO'
      Size = 50
    end
    object ZQ_CuentasNRO_CUENTA_BANCARIA: TStringField
      FieldName = 'NRO_CUENTA_BANCARIA'
      Size = 100
    end
    object ZQ_CuentasULTIMO_NRO: TIntegerField
      FieldName = 'ULTIMO_NRO'
    end
    object ZQ_CuentasAUTONUMERAR: TStringField
      FieldName = 'AUTONUMERAR'
      Size = 1
    end
    object ZQ_CuentasMEDIO_POR_DEFECTO: TIntegerField
      FieldName = 'MEDIO_POR_DEFECTO'
    end
    object ZQ_CuentasBUSQUEDA: TStringField
      FieldName = 'BUSQUEDA'
      ReadOnly = True
      Size = 245
    end
  end
  object EKDbSuma: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'pagos_corrientes'
      end
      item
        Operacion = goSum
        NombreCampo = 'pagos_diferidos'
      end>
    DataSet = ZQ_Libro_erogaciones
    SumListChanged = EKDbSumaSumListChanged
    Left = 544
    Top = 120
  end
end
