object FAlta_OrdenPago: TFAlta_OrdenPago
  Left = 303
  Top = 165
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Alta Orden de Pago'
  ClientHeight = 527
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PEgresos: TPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 475
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 0
    object LabelDetalle: TLabel
      Left = 770
      Top = 8
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = '                '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object panel_edicion_medio_de_pago: TPanel
      Left = 3
      Top = 229
      Width = 765
      Height = 243
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Shape5: TShape
        Left = 0
        Top = 0
        Width = 765
        Height = 20
        Align = alTop
        Brush.Color = 16762544
        Pen.Color = 16745557
        Shape = stRoundRect
      end
      object Label7: TLabel
        Left = 13
        Top = 3
        Width = 50
        Height = 13
        Caption = 'MEDIOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object DbGridMediosCobroPago: TDBGrid
        Left = 0
        Top = 24
        Width = 765
        Height = 180
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = 16772842
        DataSource = FMovimientos.DS_Cuenta_Movimiento
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnColEnter = DbGridMediosCobroPagoColEnter
        OnColExit = DbGridMediosCobroPagoColExit
        OnKeyUp = DbGridMediosCobroPagoKeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA_MDC'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha PD'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_MEDIO'
            Title.Alignment = taCenter
            Title.Caption = 'Cod.'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'medio_de_pago'
            Title.Alignment = taCenter
            Title.Caption = 'Medio'
            Width = 210
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NRO_CHEQUE_TRANSF'
            Title.Alignment = taCenter
            Title.Caption = 'Nro Chque\Transf'
            Width = 132
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPORTE'
            Title.Alignment = taCenter
            Title.Caption = 'Importe'
            Width = 92
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 205
        Width = 765
        Height = 38
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object txt_total_medio_pago: TLabel
          Left = 678
          Top = 0
          Width = 87
          Height = 38
          Align = alRight
          Alignment = taRightJustify
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btEliminarLinea: TButton
          Left = 2
          Top = 5
          Width = 153
          Height = 17
          Caption = 'Eliminar Linea (Del)'
          TabOrder = 0
          TabStop = False
          OnClick = btEliminarLineaClick
        end
      end
    end
    object gBoxDatos: TGroupBox
      Left = 3
      Top = 3
      Width = 765
      Height = 226
      Align = alTop
      Caption = ' Datos Orden de Pago  '
      TabOrder = 0
      DesignSize = (
        765
        226)
      object Label3: TLabel
        Left = 3
        Top = 37
        Width = 86
        Height = 13
        Caption = 'Fecha Emisi'#243'n:'
        Transparent = True
      end
      object Label4: TLabel
        Left = 25
        Top = 64
        Width = 64
        Height = 13
        Caption = 'Proveedor:'
        Transparent = True
      end
      object Label5: TLabel
        Left = 30
        Top = 92
        Width = 59
        Height = 13
        Caption = 'Concepto:'
        Transparent = True
      end
      object Label6: TLabel
        Left = 18
        Top = 172
        Width = 71
        Height = 13
        Caption = 'Descripci'#243'n:'
        Transparent = True
      end
      object Label1: TLabel
        Left = 43
        Top = 120
        Width = 46
        Height = 13
        Caption = 'Cuenta:'
        Transparent = True
      end
      object Label12: TLabel
        Left = 617
        Top = 64
        Width = 129
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '(F1 Buscar Proveedor)'
        Transparent = True
      end
      object Label13: TLabel
        Left = 617
        Top = 92
        Width = 124
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '(F1 Buscar Concepto)'
        Transparent = True
      end
      object Label25: TLabel
        Left = 18
        Top = 148
        Width = 71
        Height = 13
        Caption = 'Nro Factura:'
      end
      object lblNroOrden: TLabel
        Left = 291
        Top = 9
        Width = 464
        Height = 32
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = 'ORDEN DE PAGO Nro: 10-0001'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -27
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label26: TLabel
        Left = 386
        Top = 148
        Width = 67
        Height = 13
        Caption = 'Nro Recibo:'
      end
      object DBEditNroProveedor: TDBEdit
        Left = 91
        Top = 60
        Width = 49
        Height = 21
        DataField = 'NRO_PROVEEDOR'
        DataSource = FMovimientos.DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyUp = DBEditNroProveedorKeyUp
      end
      object DBLUpCBoxProveedor: TDBLookupComboBox
        Left = 147
        Top = 60
        Width = 464
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NRO_PROVEEDOR'
        DataSource = FMovimientos.DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'NRO_PROVEEDOR'
        ListField = 'APELLIDO_Y_NOMBRE'
        ListSource = FMovimientos.DS_Proveedores
        ParentFont = False
        TabOrder = 1
        OnKeyUp = DBEditNroProveedorKeyUp
      end
      object DBMemoDescripcion: TDBMemo
        Left = 91
        Top = 171
        Width = 662
        Height = 49
        Color = 16772842
        DataField = 'DESCRIPCION'
        DataSource = FMovimientos.DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object DBLUpCBoxConcepto: TDBLookupComboBox
        Left = 147
        Top = 88
        Width = 464
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'ID_CONCEPTO'
        DataSource = FMovimientos.DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_CONCEPTO'
        ListField = 'NOMBRE_CONCEPTO'
        ListSource = FMovimientos.DS_Conceptos
        ParentFont = False
        TabOrder = 3
        OnKeyUp = DBEditNroConceptoKeyUp
      end
      object DBEditNroConcepto: TDBEdit
        Left = 91
        Top = 88
        Width = 49
        Height = 21
        DataField = 'ID_CONCEPTO'
        DataSource = FMovimientos.DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnKeyUp = DBEditNroConceptoKeyUp
      end
      object DBLUpCBoxCuenta: TDBLookupComboBox
        Left = 91
        Top = 116
        Width = 357
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_CUENTA'
        ListField = 'BUSQUEDA'
        ListSource = FMovimientos.DS_Cuentas
        ParentFont = False
        TabOrder = 4
        OnEnter = DBLUpCBoxCuentaEnter
        OnExit = DBLUpCBoxCuentaExit
      end
      object DBEditNroFactura: TDBEdit
        Left = 91
        Top = 144
        Width = 290
        Height = 21
        DataField = 'NRO_FACTURA'
        DataSource = FMovimientos.DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object DBEditNroRecibo: TDBEdit
        Left = 450
        Top = 144
        Width = 304
        Height = 21
        DataField = 'NRO_RECIBO'
        DataSource = FMovimientos.DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object dbFechaEmision: TEKDBDateTimePicker
        Left = 91
        Top = 32
        Width = 165
        Height = 21
        Date = 40470.524141851850000000
        Time = 40470.524141851850000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        DataField = 'FECHA'
        DataSource = FMovimientos.DS_Movimientos
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
            Item = btnGuardar
            Visible = True
          end
          item
            Item = btnCancelar
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
    Images = FPrincipal.Iconos_Barra_32
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
    Left = 656
    Top = 320
    DockControlHeights = (
      0
      0
      0
      52)
    object btnNuevo: TdxBarLargeButton
      Caption = 'Nuevo'
      Category = 0
      Hint = 'Inserta un nuevo registro'
      Visible = ivAlways
      ImageIndex = 0
      ShortCut = 113
      AutoGrayScale = False
      HotImageIndex = 0
    end
    object btnModificar: TdxBarLargeButton
      Caption = 'Modificar'
      Category = 0
      Hint = 'Modifica el registro actual'
      Visible = ivAlways
      ImageIndex = 1
      ShortCut = 114
      AutoGrayScale = False
      HotImageIndex = 1
    end
    object btnEliminar: TdxBarLargeButton
      Caption = 'Eliminar'
      Category = 0
      Hint = 'Eliminar el registro actual'
      Visible = ivAlways
      ImageIndex = 2
      ShortCut = 115
      AutoGrayScale = False
      HotImageIndex = 2
    end
    object btnGuardar: TdxBarLargeButton
      Caption = 'Aceptar'
      Category = 0
      Hint = 'Guarda los cambios'
      Visible = ivAlways
      ImageIndex = 3
      ShortCut = 121
      OnClick = btnGuardarClick
      AutoGrayScale = False
      HotImageIndex = 3
    end
    object btnCancelar: TdxBarLargeButton
      Align = iaRight
      Caption = 'Cancelar'
      Category = 0
      Hint = 'Cancela los cambios'
      Visible = ivAlways
      ImageIndex = 4
      ShortCut = 120
      OnClick = btnCancelarClick
      AutoGrayScale = False
      HotImageIndex = 4
    end
    object btnSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir sin seleccionar'
      Visible = ivAlways
      ImageIndex = 6
      ShortCut = 123
      AutoGrayScale = False
      HotImageIndex = 6
    end
    object btnVerDetalle: TdxBarLargeButton
      Caption = 'Ver Detalle'
      Category = 0
      Hint = 'Ver Detalle'
      Visible = ivAlways
      ImageIndex = 69
      AutoGrayScale = False
    end
    object btnImprimir: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      ImageIndex = 28
    end
  end
  object ActionManager1: TActionManager
    Left = 640
    Top = 257
    StyleName = 'XP Style'
    object ADeleteLinea: TAction
      Caption = 'DeleteLinea'
      ShortCut = 46
      OnExecute = ADeleteLineaExecute
    end
  end
end
