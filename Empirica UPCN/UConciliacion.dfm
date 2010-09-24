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
      Height = 478
      Align = alClient
      Color = 16772842
      DataSource = DS_Conciliacion
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
          FieldName = 'FECHA_PD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MEDIO'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_MEDIO'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIPCION'
          Width = 212
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HABER'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_MOV'
          Width = 157
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_MOVIMIENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORDEN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MOVIMIENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_PAGO_REC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEBE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONCILIADO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_CONCEPTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OTROS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_FAC_REC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_ORDEN'
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
      object Label3: TLabel
        Left = 4
        Top = 35
        Width = 46
        Height = 13
        Caption = 'Cuenta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblNombreCuenta: TLabel
        Left = 51
        Top = 35
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
        Top = 35
        Width = 38
        Height = 13
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblFecha: TLabel
        Left = 424
        Top = 35
        Width = 112
        Height = 13
        AutoSize = False
        Caption = 'fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 1
        Top = 7
        Width = 1118
        Height = 18
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'CONCILIACION BANCARIA'
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
        Caption = 'CONCILIACION BANCARIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInfoBk
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 660
        Top = 35
        Width = 141
        Height = 13
        Caption = 'Saldo s/ Libro de Banco:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblSaldo: TLabel
        Left = 808
        Top = 35
        Width = 112
        Height = 13
        AutoSize = False
        Caption = 'fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
    end
    object Panel1: TPanel
      Left = 3
      Top = 536
      Width = 1120
      Height = 31
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object Label6: TLabel
        Left = 28
        Top = 7
        Width = 83
        Height = 16
        Caption = 'Total Haber:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblTotalHaber: TLabel
        Left = 117
        Top = 7
        Width = 201
        Height = 13
        AutoSize = False
        Caption = '$ 0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 676
        Top = 7
        Width = 216
        Height = 16
        Caption = 'Saldo s/ Conciliaci'#243'n a la Fecha:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object lblSaldoConciliacion: TLabel
        Left = 899
        Top = 7
        Width = 132
        Height = 13
        AutoSize = False
        Caption = '$ 0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
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
            Item = btnBuscar
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
    object btnBuscar: TdxBarLargeButton
      Caption = 'Buscar'
      Category = 0
      Visible = ivAlways
      ImageIndex = 29
      ShortCut = 120
      OnClick = btnBuscarClick
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
        'btnBuscar')
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
    Left = 474
    Top = 296
  end
  object ZSP_LibroBanco: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_PAGO_REC'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'DEBE'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'HABER'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'DESCRIPCION'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CONCILIADO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NOMBRE_CONCEPTO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'TIPO_MOV'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA_PD'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'OTROS'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_FAC_REC'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'E_ID_CUENTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_ORDENAMIENTO'
        ParamType = ptInput
      end>
    StoredProcName = 'IE_VER_LIBRO_BANCO'
    Left = 232
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_PAGO_REC'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'DEBE'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'HABER'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'DESCRIPCION'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CONCILIADO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NOMBRE_CONCEPTO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'TIPO_MOV'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA_PD'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'OTROS'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_FAC_REC'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'E_ID_CUENTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_ORDENAMIENTO'
        ParamType = ptInput
      end>
    object ZSP_LibroBancoID_MOVIMIENTO: TIntegerField
      FieldName = 'ID_MOVIMIENTO'
    end
    object ZSP_LibroBancoORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object ZSP_LibroBancoFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZSP_LibroBancoMOVIMIENTO: TStringField
      FieldName = 'MOVIMIENTO'
      Size = 15
    end
    object ZSP_LibroBancoNRO_PAGO_REC: TIntegerField
      FieldName = 'NRO_PAGO_REC'
    end
    object ZSP_LibroBancoMEDIO: TStringField
      FieldName = 'MEDIO'
      Size = 50
    end
    object ZSP_LibroBancoNRO_MEDIO: TStringField
      FieldName = 'NRO_MEDIO'
      Size = 60
    end
    object ZSP_LibroBancoDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object ZSP_LibroBancoHABER: TFloatField
      FieldName = 'HABER'
    end
    object ZSP_LibroBancoSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object ZSP_LibroBancoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object ZSP_LibroBancoCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object ZSP_LibroBancoNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 100
    end
    object ZSP_LibroBancoTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 100
    end
    object ZSP_LibroBancoFECHA_PD: TDateField
      FieldName = 'FECHA_PD'
    end
    object ZSP_LibroBancoOTROS: TStringField
      FieldName = 'OTROS'
      Size = 40
    end
    object ZSP_LibroBancoNRO_FAC_REC: TStringField
      FieldName = 'NRO_FAC_REC'
      Size = 30
    end
    object ZSP_LibroBancoNRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
  end
  object BuscarParametros: TEKBusquedaAvanzada
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
        Titulo = 'Fecha'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 120
    Top = 232
  end
  object DS_LibroBanco: TDataSource
    DataSet = ZSP_LibroBanco
    Left = 320
    Top = 208
  end
  object ZSP_Conciliacion: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_PAGO_REC'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'DEBE'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'HABER'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'DESCRIPCION'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CONCILIADO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NOMBRE_CONCEPTO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'TIPO_MOV'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA_PD'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'OTROS'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_FAC_REC'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'E_FECHA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_ID_CUENTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_ORDENAMIENTO'
        ParamType = ptInput
      end>
    StoredProcName = 'IE_CONCILIACION_FECHA'
    Left = 264
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_PAGO_REC'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_MEDIO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'DEBE'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'HABER'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'DESCRIPCION'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CONCILIADO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NOMBRE_CONCEPTO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'TIPO_MOV'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA_PD'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'OTROS'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_FAC_REC'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_ORDEN'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'E_FECHA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_ID_CUENTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'E_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'E_ORDENAMIENTO'
        ParamType = ptInput
      end>
    object ZSP_ConciliacionID_MOVIMIENTO: TIntegerField
      FieldName = 'ID_MOVIMIENTO'
    end
    object ZSP_ConciliacionORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object ZSP_ConciliacionFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZSP_ConciliacionMOVIMIENTO: TStringField
      FieldName = 'MOVIMIENTO'
      Size = 15
    end
    object ZSP_ConciliacionNRO_PAGO_REC: TIntegerField
      FieldName = 'NRO_PAGO_REC'
    end
    object ZSP_ConciliacionMEDIO: TStringField
      FieldName = 'MEDIO'
      Size = 50
    end
    object ZSP_ConciliacionNRO_MEDIO: TStringField
      FieldName = 'NRO_MEDIO'
      Size = 60
    end
    object ZSP_ConciliacionDEBE: TFloatField
      FieldName = 'DEBE'
    end
    object ZSP_ConciliacionHABER: TFloatField
      FieldName = 'HABER'
    end
    object ZSP_ConciliacionSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object ZSP_ConciliacionDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object ZSP_ConciliacionCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object ZSP_ConciliacionNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 100
    end
    object ZSP_ConciliacionTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 100
    end
    object ZSP_ConciliacionFECHA_PD: TDateField
      FieldName = 'FECHA_PD'
    end
    object ZSP_ConciliacionOTROS: TStringField
      FieldName = 'OTROS'
      Size = 40
    end
    object ZSP_ConciliacionNRO_FAC_REC: TStringField
      FieldName = 'NRO_FAC_REC'
      Size = 30
    end
    object ZSP_ConciliacionNRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
  end
  object DS_Conciliacion: TDataSource
    DataSet = ZSP_Conciliacion
    Left = 288
    Top = 328
  end
  object EKDbSuma1: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'haber'
      end>
    DataSet = ZSP_Conciliacion
    Left = 552
    Top = 192
  end
end
