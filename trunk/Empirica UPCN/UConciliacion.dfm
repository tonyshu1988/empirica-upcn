object FConciliacion: TFConciliacion
  Left = 308
  Top = 169
  Width = 1142
  Height = 656
  Caption = 'Conciliaci'#243'n Bancaria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PContenedor: TPanel
    Left = 0
    Top = 0
    Width = 1126
    Height = 570
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 0
    object DBGridListaErogacion: TDBGrid
      Left = 3
      Top = 58
      Width = 1120
      Height = 509
      Align = alClient
      Color = 16772842
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
          Title.Caption = 'Emisi'#243'n'
          Width = 80
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
          FieldName = 'FECHA_MDC'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha Medio Pago'
          Width = 101
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
          FieldName = 'FECHA_FACTURA_RECIBO'
          Title.Alignment = taCenter
          Title.Caption = 'Nro. Factura'
          Width = 81
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
      Width = 1120
      Height = 55
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        1120
        55)
      object Shape1: TShape
        Left = 3
        Top = 4
        Width = 1115
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = clGray
        Pen.Color = clGray
        Shape = stRoundRect
      end
      object Shape2: TShape
        Left = 3
        Top = 3
        Width = 1115
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Brush.Color = clTeal
        Shape = stRoundRect
      end
      object Label2: TLabel
        Left = 0
        Top = 7
        Width = 1118
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
        Width = 1118
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
        Width = 37
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
        Width = 34
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
        Width = 31
        Height = 13
        Caption = 'Hasta:'
      end
      object StaticText1: TStaticText
        Left = 1046
        Top = 39
        Width = 71
        Height = 17
        Anchors = [akRight]
        Caption = 'Conciliado'
        Color = 10354687
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
    Top = 344
    DockControlHeights = (
      0
      0
      0
      52)
    object btnListadoErogaciones: TdxBarLargeButton
      Caption = 'Listado Erogaciones'
      Category = 0
      Hint = 'Saldo actual de todas las Cuentas Bancarias'
      Visible = ivAlways
      ImageIndex = 55
      ShortCut = 120
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
  object ZQ_Cuentas: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select c.*, c.nombre_cuenta||'#39' - '#39'|| coalesce ('#39'N'#176': '#39' || c.nro_c' +
        'uenta_bancaria, '#39'N'#176': S/N'#39') Busqueda'
      'from ie_cuentas c'
      'order by c.nombre_cuenta')
    Params = <>
    Left = 418
    Top = 288
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
  object DS_Cuentas: TDataSource
    DataSet = ZQ_Cuentas
    Left = 418
    Top = 336
  end
end
