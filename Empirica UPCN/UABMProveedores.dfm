object FABMProveedores: TFABMProveedores
  Left = 241
  Top = 111
  Width = 870
  Height = 500
  Caption = 'ABM Proveedores'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
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
  object PanelContenedor: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 428
    Align = alClient
    Caption = 'PanelContenedor'
    TabOrder = 4
    object Panel_edicion: TPanel
      Left = 1
      Top = 290
      Width = 860
      Height = 137
      Align = alBottom
      Enabled = False
      TabOrder = 0
      object Label1: TLabel
        Left = 15
        Top = 21
        Width = 105
        Height = 13
        Caption = 'Nombre y Apellido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 6
        Top = 49
        Width = 114
        Height = 13
        Caption = 'Nombre de Fantasia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label16: TLabel
        Left = 65
        Top = 79
        Width = 55
        Height = 13
        Caption = 'Tel'#233'fonos'
        Transparent = True
      end
      object Label5: TLabel
        Left = 67
        Top = 109
        Width = 53
        Height = 13
        Caption = 'Direccion'
        Transparent = True
      end
      object Label3: TLabel
        Left = 466
        Top = 22
        Width = 34
        Height = 13
        Caption = 'E-Mail'
        Transparent = True
      end
      object Label6: TLabel
        Left = 407
        Top = 49
        Width = 93
        Height = 13
        Caption = 'Tipo Documento'
        Transparent = True
      end
      object Label7: TLabel
        Left = 480
        Top = 79
        Width = 20
        Height = 13
        Caption = 'Nro'
        Transparent = True
      end
      object DBENombreApellido: TDBEdit
        Left = 125
        Top = 18
        Width = 261
        Height = 21
        CharCase = ecUpperCase
        DataField = 'APELLIDO_Y_NOMBRE'
        DataSource = DS_IE_Proveedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBENombreFantasia: TDBEdit
        Left = 125
        Top = 46
        Width = 261
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMBRE_FANTASIA'
        DataSource = DS_IE_Proveedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBETelefono: TDBEdit
        Left = 125
        Top = 76
        Width = 261
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TELEFONOS'
        DataSource = DS_IE_Proveedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBEDireccion: TDBEdit
        Left = 125
        Top = 106
        Width = 261
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DIRECCION'
        DataSource = DS_IE_Proveedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBENroDocumento: TDBEdit
        Left = 505
        Top = 76
        Width = 273
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NRO_DOCUMENTO'
        DataSource = DS_IE_Proveedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object DBEEmail: TDBEdit
        Left = 505
        Top = 18
        Width = 273
        Height = 21
        DataField = 'EMAIL'
        DataSource = DS_IE_Proveedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 505
        Top = 45
        Width = 159
        Height = 21
        DataField = 'ID_TIPO_DOCUMENTO'
        DataSource = DS_IE_Proveedores
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_TIPO_DOCUMENTO'
        ListField = 'DECRIPCION'
        ListSource = DS_TipoDocumento
        ParentFont = False
        TabOrder = 5
      end
    end
    object DBGridProveedores: TDBGrid
      Left = 1
      Top = 20
      Width = 860
      Height = 270
      Align = alClient
      Color = 16772842
      DataSource = DS_IE_Proveedores
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridProveedoresDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'APELLIDO_Y_NOMBRE'
          Title.Caption = 'Apellido y Nombre'
          Width = 274
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_FANTASIA'
          Title.Caption = 'Nombre de Fantasia'
          Width = 282
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIRECCION'
          Title.Caption = 'Direccion'
          Width = 198
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONOS'
          Title.Caption = 'Telefono'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Title.Caption = 'Email'
          Visible = True
        end>
    end
    object PBusqueda: TPanel
      Left = 1
      Top = 1
      Width = 860
      Height = 19
      Align = alTop
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      object Label4: TLabel
        Left = 1
        Top = 1
        Width = 132
        Height = 17
        Align = alLeft
        Caption = '                                 '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object StaticText3: TStaticText
        Left = 750
        Top = 1
        Width = 109
        Height = 17
        Align = alRight
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Dado de Baja'
        Color = 6974207
        ParentColor = False
        TabOrder = 0
      end
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
            Item = btBuscar
            Visible = True
          end
          item
            BeginGroup = True
            Item = BtNuevo
            Visible = True
          end
          item
            Item = BtModificar
            Visible = True
          end
          item
            BeginGroup = True
            Item = btBaja
            Visible = True
          end
          item
            Item = btReactivar
            Visible = True
          end
          item
            BeginGroup = True
            Item = BtGuardar
            Visible = True
          end
          item
            Item = BtCancelar
            Visible = True
          end
          item
            Item = bt_salir
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
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    MenusShowRecentItemsFirst = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsOffice11
    UseF10ForMenu = False
    UseSystemFont = False
    Left = 704
    Top = 176
    DockControlHeights = (
      0
      0
      0
      40)
    object BtNuevo: TdxBarLargeButton
      Caption = 'Nuevo'
      Category = 0
      Hint = 'Inserta un nuevo registro'
      Visible = ivAlways
      ImageIndex = 0
      ShortCut = 113
      OnClick = BtNuevoClick
      AutoGrayScale = False
    end
    object BtModificar: TdxBarLargeButton
      Caption = 'Modificar'
      Category = 0
      Hint = 'Modifica el registro actual'
      Visible = ivAlways
      ImageIndex = 1
      ShortCut = 114
      OnClick = BtModificarClick
      AutoGrayScale = False
    end
    object btBaja: TdxBarLargeButton
      Caption = 'Baja'
      Category = 0
      Hint = 'Da de baja un registro'
      Visible = ivAlways
      ImageIndex = 2
      ShortCut = 115
      OnClick = btBajaClick
      AutoGrayScale = False
    end
    object btBuscar: TdxBarLargeButton
      Caption = 'Buscar'
      Category = 0
      Hint = 'Buscar'
      Visible = ivAlways
      ImageIndex = 16
      OnClick = btBuscarClick
      AutoGrayScale = False
    end
    object BtGuardar: TdxBarLargeButton
      Caption = 'Guardar'
      Category = 0
      Enabled = False
      Hint = 'Guarda los cambios'
      Visible = ivAlways
      ImageIndex = 3
      ShortCut = 121
      OnClick = BtGuardarClick
      AutoGrayScale = False
    end
    object BtCancelar: TdxBarLargeButton
      Caption = 'Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancela los cambios'
      Visible = ivAlways
      ImageIndex = 4
      ShortCut = 120
      OnClick = BtCancelarClick
      AutoGrayScale = False
    end
    object btReactivar: TdxBarLargeButton
      Caption = 'Reactivar'
      Category = 0
      Hint = 'Reactiva un registro'
      Visible = ivAlways
      ImageIndex = 3
      ShortCut = 116
      OnClick = btReactivarClick
      AutoGrayScale = False
    end
    object Bt_Seleccionar: TdxBarLargeButton
      Align = iaRight
      Caption = 'Seleccionar'
      Category = 0
      Hint = 'Selecciona la calle Visualizada'
      Visible = ivAlways
      ImageIndex = 12
      ShortCut = 122
      AutoGrayScale = False
    end
    object btBajar: TdxBarLargeButton
      Caption = 'Bajar'
      Category = 0
      Hint = 'Da de Baja o Reactiva el Inmueble'
      Visible = ivAlways
      ImageIndex = 9
      AutoGrayScale = False
    end
    object bt_salir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir sin seleccionar'
      Visible = ivAlways
      ImageIndex = 13
      ShortCut = 123
      OnClick = bt_salirClick
      AutoGrayScale = False
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'BtNuevo'
        'BtModificar'
        'btBuscar'
        'Bt_Seleccionar'
        'btBaja'
        'btBajar'
        'bt_salir'
        'btReactivar')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'BtGuardar'
        'BtCancelar')
    end
  end
  object ZQ_IE_Proveedores: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select p.*'
      'from ie_proveedores p '
      'where p.baja <> '#39'N'#39)
    Params = <>
    Left = 432
    Top = 72
    object ZQ_IE_ProveedoresNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
    end
    object ZQ_IE_ProveedoresAPELLIDO_Y_NOMBRE: TStringField
      FieldName = 'APELLIDO_Y_NOMBRE'
      Size = 60
    end
    object ZQ_IE_ProveedoresNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 60
    end
    object ZQ_IE_ProveedoresDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 150
    end
    object ZQ_IE_ProveedoresNRO_DOCUMENTO: TStringField
      FieldName = 'NRO_DOCUMENTO'
      Size = 30
    end
    object ZQ_IE_ProveedoresTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Size = 30
    end
    object ZQ_IE_ProveedoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object ZQ_IE_ProveedoresBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_IE_ProveedoresID_TIPO_DOCUMENTO: TIntegerField
      FieldName = 'ID_TIPO_DOCUMENTO'
    end
  end
  object DS_IE_Proveedores: TDataSource
    DataSet = ZQ_IE_Proveedores
    Left = 432
    Top = 120
  end
  object ZQ_TipoDocumento: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_documento')
    Params = <>
    Left = 568
    Top = 72
    object ZQ_TipoDocumentoID_TIPO_DOCUMENTO: TIntegerField
      FieldName = 'ID_TIPO_DOCUMENTO'
      Required = True
    end
    object ZQ_TipoDocumentoDECRIPCION: TStringField
      FieldName = 'DECRIPCION'
      Size = 30
    end
  end
  object DS_TipoDocumento: TDataSource
    DataSet = ZQ_TipoDocumento
    Left = 568
    Top = 120
  end
  object EKBusquedaAvanzada1: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Nombre y Apellido'
        Campo = 'apellido_y_nombre'
        Tabla = 'p'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Nombre Fantasia'
        Campo = 'nombre_fantasia'
        Tabla = 'p'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Direccion'
        Campo = 'direccion'
        Tabla = 'p'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Nro Doc'
        Campo = 'nro_documento'
        Tabla = 'p'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Baja'
        Campo = 'baja'
        Tabla = 'p'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboValores.Strings = (
          'SI'
          'NO')
        TipoComboEditable = False
        TipoComboValoresReales.Strings = (
          'S'
          'N')
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_IE_Proveedores
    SQL.Strings = (
      'select p.*'
      'from ie_proveedores p ')
    SQL_Select.Strings = (
      'select p.*')
    SQL_From.Strings = (
      'from ie_proveedores p ')
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 72
    Top = 96
  end
end
