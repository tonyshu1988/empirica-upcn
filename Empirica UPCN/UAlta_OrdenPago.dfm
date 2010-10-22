object FAlta_OrdenPago: TFAlta_OrdenPago
  Left = 296
  Top = 180
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
        Left = 1
        Top = 23
        Width = 765
        Height = 180
        Align = alCustom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = 16772842
        DataSource = DS_Cuenta_Movimiento
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
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
        DataSource = DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyUp = DBEditNroProveedorKeyUp
      end
      object DBLUpCBoxProveedor: TDBLookupComboBox
        Left = 147
        Top = 60
        Width = 464
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'NRO_PROVEEDOR'
        DataSource = DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'NRO_PROVEEDOR'
        ListField = 'APELLIDO_Y_NOMBRE'
        ListSource = DS_Proveedores
        ParentFont = False
        TabOrder = 2
        OnKeyUp = DBEditNroProveedorKeyUp
      end
      object DBMemoDescripcion: TDBMemo
        Left = 91
        Top = 171
        Width = 662
        Height = 49
        Color = 16772842
        DataField = 'DESCRIPCION'
        DataSource = DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object DBLUpCBoxConcepto: TDBLookupComboBox
        Left = 147
        Top = 88
        Width = 464
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DataField = 'ID_CONCEPTO'
        DataSource = DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_CONCEPTO'
        ListField = 'NOMBRE_CONCEPTO'
        ListSource = DS_Conceptos
        ParentFont = False
        TabOrder = 4
        OnKeyUp = DBEditNroConceptoKeyUp
      end
      object DBEditNroConcepto: TDBEdit
        Left = 91
        Top = 88
        Width = 49
        Height = 21
        DataField = 'ID_CONCEPTO'
        DataSource = DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
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
        ListSource = DS_Cuentas
        ParentFont = False
        TabOrder = 5
        OnEnter = DBLUpCBoxCuentaEnter
      end
      object DBEditNroFactura: TDBEdit
        Left = 92
        Top = 144
        Width = 290
        Height = 21
        DataField = 'NRO_FACTURA'
        DataSource = DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object DBEditNroRecibo: TDBEdit
        Left = 450
        Top = 144
        Width = 304
        Height = 21
        DataField = 'NRO_RECIBO'
        DataSource = DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
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
        TabOrder = 0
        OnChange = dbFechaEmisionChange
        DataField = 'FECHA'
        DataSource = DS_Movimientos
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
    Left = 712
    Top = 312
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
      Caption = 'Guardar'
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
    Left = 712
    Top = 257
    StyleName = 'XP Style'
    object ADeleteLinea: TAction
      Caption = 'DeleteLinea'
      ShortCut = 46
      OnExecute = ADeleteLineaExecute
    end
    object AVerDetalle: TAction
      Caption = 'AVerDetalle'
      ShortCut = 16470
      OnExecute = AVerDetalleExecute
    end
    object AGuardar: TAction
      Caption = 'AGuardar'
      ShortCut = 16455
      OnExecute = AGuardarExecute
    end
    object ACancelar: TAction
      Caption = 'ACancelar'
      ShortCut = 16451
      OnExecute = ACancelarExecute
    end
  end
  object EKListado_Proveedores: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select *'
      'from ie_proveedores'
      'where nro_proveedor > 0')
    CampoBuscar = 'APELLIDO_Y_NOMBRE'
    CampoClave = 'nro_proveedor'
    Left = 67
    Top = 393
  end
  object ZQ_Movimientos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select m.*, ('#39#39'||substr(extractyear(m.fecha),3,4)||'#39'-'#39'||lpad(m.n' +
        'ro_orden,4,'#39'0'#39')) as nro_orden_string'
      'from ie_movimientos m'
      'where m.nro_movimiento = :NroMov')
    Params = <
      item
        DataType = ftUnknown
        Name = 'NroMov'
        ParamType = ptUnknown
      end>
    Left = 185
    Top = 289
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NroMov'
        ParamType = ptUnknown
      end>
    object ZQ_MovimientosNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
      Required = True
    end
    object ZQ_MovimientosNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
    end
    object ZQ_MovimientosID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
      Required = True
    end
    object ZQ_MovimientosID_OBJETO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_OBJETO_MOVIMIENTO'
    end
    object ZQ_MovimientosPAGO_DEL_EJERCICIO: TStringField
      FieldName = 'PAGO_DEL_EJERCICIO'
      Size = 1
    end
    object ZQ_MovimientosFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZQ_MovimientosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object ZQ_MovimientosIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object ZQ_MovimientosNRO_COMPROMISO: TIntegerField
      FieldName = 'NRO_COMPROMISO'
    end
    object ZQ_MovimientosNRO_PARTE: TIntegerField
      FieldName = 'NRO_PARTE'
    end
    object ZQ_MovimientosANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object ZQ_MovimientosFECHA_ANULADO: TDateField
      FieldName = 'FECHA_ANULADO'
    end
    object ZQ_MovimientosPARTE_ANULADO: TIntegerField
      FieldName = 'PARTE_ANULADO'
    end
    object ZQ_MovimientosDETALLE_ANULADO: TStringField
      FieldName = 'DETALLE_ANULADO'
      Size = 200
    end
    object ZQ_MovimientosNRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
    object ZQ_MovimientosNRO_FACTURA: TStringField
      FieldName = 'NRO_FACTURA'
      Size = 50
    end
    object ZQ_MovimientosNRO_RECIBO: TStringField
      FieldName = 'NRO_RECIBO'
      Size = 50
    end
    object ZQ_MovimientosNRO_ORDEN_STRING: TStringField
      FieldName = 'NRO_ORDEN_STRING'
      ReadOnly = True
      Size = 336
    end
    object ZQ_MovimientosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 200
    end
  end
  object DS_Movimientos: TDataSource
    DataSet = ZQ_Movimientos
    Left = 184
    Top = 345
  end
  object EKListado_Conceptos: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select *'
      'from ie_conceptos'
      'where id_concepto > 0')
    CampoBuscar = 'nombre_concepto'
    CampoClave = 'id_concepto'
    Left = 185
    Top = 393
  end
  object ZQ_Cuenta_Movimiento: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_cuentas_movimientos cm'
      'where (cm.nro_movimiento = :NroMov) or (cm.id = :IDCtaMov)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'NroMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCtaMov'
        ParamType = ptUnknown
      end>
    Left = 304
    Top = 289
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NroMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCtaMov'
        ParamType = ptUnknown
      end>
    object ZQ_Cuenta_MovimientoID: TIntegerField
      FieldName = 'ID'
    end
    object ZQ_Cuenta_MovimientoNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
    end
    object ZQ_Cuenta_MovimientoID_CUENTA_INGRESO: TIntegerField
      FieldName = 'ID_CUENTA_INGRESO'
    end
    object ZQ_Cuenta_MovimientoID_CUENTA_EGRESO: TIntegerField
      FieldName = 'ID_CUENTA_EGRESO'
    end
    object ZQ_Cuenta_MovimientoID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
    end
    object ZQ_Cuenta_MovimientoFECHA_MDC: TDateField
      FieldName = 'FECHA_MDC'
      EditMask = '##/##/####'
    end
    object ZQ_Cuenta_MovimientoBANCO_MDC: TStringField
      FieldName = 'BANCO_MDC'
      Size = 50
    end
    object ZQ_Cuenta_MovimientoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object ZQ_Cuenta_MovimientoCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object ZQ_Cuenta_Movimientonombre_cuenta_egreso: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre_cuenta_egreso'
      LookupDataSet = ZQ_Cuentas
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'NOMBRE_CUENTA'
      KeyFields = 'ID_CUENTA_EGRESO'
      Size = 50
      Lookup = True
    end
    object ZQ_Cuenta_Movimientonombre_cuenta_ingreso: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre_cuenta_ingreso'
      LookupDataSet = ZQ_Cuentas
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'NOMBRE_CUENTA'
      KeyFields = 'ID_CUENTA_INGRESO'
      Size = 50
      Lookup = True
    end
    object ZQ_Cuenta_Movimientomedio_de_pago: TStringField
      FieldKind = fkLookup
      FieldName = 'medio_de_pago'
      LookupDataSet = ZQ_Medios_Cobro_Pago
      LookupKeyFields = 'ID_MEDIO'
      LookupResultField = 'NOMBRE_MEDIO_COBRO_PAGO'
      KeyFields = 'ID_MEDIO'
      Size = 50
      Lookup = True
    end
    object ZQ_Cuenta_MovimientoFECHA_CONCILIADO: TDateField
      FieldName = 'FECHA_CONCILIADO'
    end
    object ZQ_Cuenta_MovimientoANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF: TIntegerField
      FieldName = 'NRO_CHEQUE_TRANSF'
    end
  end
  object DS_Cuenta_Movimiento: TDataSource
    DataSet = ZQ_Cuenta_Movimiento
    Left = 304
    Top = 345
  end
  object ZQ_Cuentas: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select c.*, c.nombre_cuenta||'#39' - '#39'|| coalesce ('#39'N'#176': '#39' || c.nro_c' +
        'uenta_bancaria, '#39'N'#176': S/N'#39') Busqueda'
      'from ie_cuentas c')
    Params = <>
    Left = 416
    Top = 289
    object ZQ_CuentasID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Required = True
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
      Size = 207
    end
  end
  object DS_Cuentas: TDataSource
    DataSet = ZQ_Cuentas
    Left = 417
    Top = 345
  end
  object EK_ListadoMedCobroPago: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'SELECT *'
      'FROM IE_MEDIOS_COBRO_PAGO')
    CampoBuscar = 'NOMBRE_MEDIO_COBRO_PAGO'
    CampoClave = 'ID_MEDIO'
    Left = 304
    Top = 393
  end
  object ZQ_Medios_Cobro_Pago: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_medios_cobro_pago mcp')
    Params = <>
    Left = 72
    Top = 289
    object ZQ_Medios_Cobro_PagoID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
      Required = True
    end
    object ZQ_Medios_Cobro_PagoNOMBRE_MEDIO_COBRO_PAGO: TStringField
      FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
      Size = 30
    end
  end
  object DS_Medios_Cobro_Pago: TDataSource
    DataSet = ZQ_Medios_Cobro_Pago
    Left = 71
    Top = 338
  end
  object ZQ_Conceptos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_conceptos c'
      'where c.id_concepto > 0')
    Params = <>
    Left = 587
    Top = 289
    object ZQ_ConceptosID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
      Required = True
    end
    object ZQ_ConceptosCOD_CORTO: TStringField
      FieldName = 'COD_CORTO'
      Size = 6
    end
    object ZQ_ConceptosNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 240
    end
    object ZQ_ConceptosBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ConceptosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object ZQ_Proveedores: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_proveedores p'
      'where nro_proveedor > 0')
    Params = <>
    Left = 497
    Top = 289
    object ZQ_ProveedoresNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
      Required = True
    end
    object ZQ_ProveedoresAPELLIDO_Y_NOMBRE: TStringField
      FieldName = 'APELLIDO_Y_NOMBRE'
      Size = 60
    end
    object ZQ_ProveedoresNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 60
    end
    object ZQ_ProveedoresDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 150
    end
    object ZQ_ProveedoresTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 10
    end
    object ZQ_ProveedoresNRO_DOCUMENTO: TStringField
      FieldName = 'NRO_DOCUMENTO'
      Size = 30
    end
    object ZQ_ProveedoresTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Size = 30
    end
    object ZQ_ProveedoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object ZQ_ProveedoresBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
  end
  object DS_Proveedores: TDataSource
    DataSet = ZQ_Proveedores
    Left = 497
    Top = 345
  end
  object DS_Conceptos: TDataSource
    DataSet = ZQ_Conceptos
    Left = 587
    Top = 345
  end
  object ZQ_Ver_NroOrden: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select nro_orden_string, nro_orden_int'
      'from nro_orden_siguiente')
    Params = <>
    Left = 415
    Top = 397
    object ZQ_Ver_NroOrdenNRO_ORDEN_STRING: TStringField
      FieldName = 'NRO_ORDEN_STRING'
      Size = 11
    end
    object ZQ_Ver_NroOrdenNRO_ORDEN_INT: TIntegerField
      FieldName = 'NRO_ORDEN_INT'
    end
  end
  object nro_orden: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_IE_NRO_ORDEN_ID'
    Left = 592
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    object nro_ordenID: TIntegerField
      FieldName = 'ID'
    end
  end
  object Nro_Moviemiento: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_IE_MOVIMIENTOS_ID'
    Left = 512
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    object Nro_MoviemientoID: TIntegerField
      FieldName = 'ID'
    end
  end
  object EKDbSuma1: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'importe'
      end>
    DataSet = ZQ_Cuenta_Movimiento
    SumListChanged = EKDbSuma1SumListChanged
    Left = 640
    Top = 257
  end
end
