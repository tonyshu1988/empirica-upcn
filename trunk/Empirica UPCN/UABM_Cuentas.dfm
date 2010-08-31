object FABM_Cuentas: TFABM_Cuentas
  Left = 337
  Top = 184
  Width = 870
  Height = 500
  Caption = 'ABM Cuentas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pContenedor: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 421
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 0
    object pDatos: TPanel
      Left = 2
      Top = 329
      Width = 858
      Height = 90
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      Visible = False
      object Label1: TLabel
        Left = 7
        Top = 21
        Width = 95
        Height = 13
        Caption = 'Nombre Cuenta:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 475
        Top = 21
        Width = 124
        Height = 13
        Caption = 'Nro Cuenta Bancaria:'
        Transparent = True
      end
      object Label3: TLabel
        Left = 14
        Top = 62
        Width = 88
        Height = 13
        Caption = 'Medio de Pago:'
        Transparent = True
      end
      object Label4: TLabel
        Left = 419
        Top = 62
        Width = 113
        Height = 13
        Caption = 'Ultimo Nro Cheque:'
        Transparent = True
      end
      object Label5: TLabel
        Left = 672
        Top = 62
        Width = 85
        Height = 13
        Caption = 'Auto Numerar:'
        Transparent = True
      end
      object dbEditNombreCuenta: TDBEdit
        Left = 105
        Top = 15
        Width = 355
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMBRE_CUENTA'
        DataSource = DS_Cuentas
        TabOrder = 0
      end
      object dbEditNroCuenta: TDBEdit
        Left = 602
        Top = 14
        Width = 251
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NRO_CUENTA_BANCARIA'
        DataSource = DS_Cuentas
        TabOrder = 1
      end
      object dbEditUltimoNro: TDBEdit
        Left = 535
        Top = 55
        Width = 114
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ULTIMO_NRO'
        DataSource = DS_Cuentas
        TabOrder = 3
      end
      object dbLookupCBoxMedio: TDBLookupComboBox
        Left = 105
        Top = 56
        Width = 289
        Height = 21
        DataField = 'MEDIO_POR_DEFECTO'
        DataSource = DS_Cuentas
        KeyField = 'ID_MEDIO'
        ListField = 'NOMBRE_MEDIO_COBRO_PAGO'
        ListSource = DS_Medios
        TabOrder = 2
      end
      object dbRGroupAutonumerar: TDBRadioGroup
        Left = 760
        Top = 48
        Width = 93
        Height = 33
        Columns = 2
        DataField = 'AUTONUMERAR'
        DataSource = DS_Cuentas
        Items.Strings = (
          'SI'
          'NO')
        TabOrder = 4
        Values.Strings = (
          'S'
          'N')
      end
    end
    object dbGridCuentas: TDBGrid
      Left = 2
      Top = 2
      Width = 858
      Height = 327
      Align = alClient
      Color = 16772842
      DataSource = DS_Cuentas
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMBRE_CUENTA'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre Cuenta'
          Width = 346
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_CUENTA_BANCARIA'
          Title.Alignment = taCenter
          Title.Caption = 'Nro. Cuenta'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'medioPago'
          Title.Alignment = taCenter
          Title.Caption = 'Medio Pago'
          Width = 234
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ULTIMO_NRO'
          Title.Alignment = taCenter
          Title.Caption = 'Ultimo Nro. Cheque'
          Width = 136
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AUTONUMERAR'
          Title.Alignment = taCenter
          Title.Caption = 'Autonumerar'
          Width = 92
          Visible = True
        end>
    end
  end
  object dxBarABM: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
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
            Item = btnVerDetalle
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnNuevo
            Visible = True
          end
          item
            Item = btnModificar
            Visible = True
          end
          item
            Item = btnEliminar
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnGuardar
            Visible = True
          end
          item
            Item = btnCancelar
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
    Left = 208
    Top = 200
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
      OnClick = btnNuevoClick
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
      OnClick = btnModificarClick
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
      OnClick = btnEliminarClick
      AutoGrayScale = False
      HotImageIndex = 2
    end
    object btnGuardar: TdxBarLargeButton
      Caption = 'Guardar'
      Category = 0
      Enabled = False
      Hint = 'Guarda los cambios'
      Visible = ivAlways
      ImageIndex = 3
      ShortCut = 121
      OnClick = btnGuardarClick
      AutoGrayScale = False
      HotImageIndex = 3
    end
    object btnCancelar: TdxBarLargeButton
      Caption = 'Cancelar'
      Category = 0
      Enabled = False
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
      OnClick = btnSalirClick
      AutoGrayScale = False
      HotImageIndex = 6
    end
    object btnVerDetalle: TdxBarLargeButton
      Caption = 'Ver Detalle'
      Category = 0
      Hint = 'Ver Detalle'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = btnVerDetalleClick
      AutoGrayScale = False
    end
    object GrupoVisualizando: TdxBarGroup
      Items = (
        'btnNuevo'
        'btnModificar'
        'btnEliminar'
        'btnSalir'
        'btnVerDetalle')
    end
    object GrupoEditando: TdxBarGroup
      Enabled = False
      Items = (
        'btnGuardar'
        'btnCancelar')
    end
  end
  object ZQ_Cuentas: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'SELECT *'
      'FROM IE_CUENTAS')
    Params = <>
    Left = 208
    Top = 80
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
    object ZQ_CuentasmedioCobro: TStringField
      FieldKind = fkLookup
      FieldName = 'medioPago'
      LookupDataSet = ZQ_Medios
      LookupKeyFields = 'ID_MEDIO'
      LookupResultField = 'NOMBRE_MEDIO_COBRO_PAGO'
      KeyFields = 'MEDIO_POR_DEFECTO'
      Size = 30
      Lookup = True
    end
  end
  object DS_Cuentas: TDataSource
    DataSet = ZQ_Cuentas
    Left = 208
    Top = 136
  end
  object DS_Medios: TDataSource
    DataSet = ZQ_Medios
    Left = 304
    Top = 136
  end
  object ZQ_Medios: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from IE_MEDIOS_COBRO_PAGO')
    Params = <>
    Left = 304
    Top = 80
    object ZQ_MediosID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
      Required = True
    end
    object ZQ_MediosNOMBRE_MEDIO_COBRO_PAGO: TStringField
      FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
      Size = 30
    end
  end
end
