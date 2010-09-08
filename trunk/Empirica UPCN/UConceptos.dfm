object FConceptos: TFConceptos
  Left = 342
  Top = 199
  Width = 870
  Height = 500
  Caption = 'ABM Conceptos'
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 414
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 4
    object Grilla: TDBGrid
      Left = 1
      Top = 20
      Width = 852
      Height = 323
      Align = alClient
      Color = 16764097
      DataSource = DS_IE_Conceptos
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = GrillaDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_CONCEPTO'
          Title.Caption = 'Id'
          Width = 31
          Visible = True
        end
        item
          Color = 16767698
          Expanded = False
          FieldName = 'COD_CORTO'
          Title.Caption = 'C'#243'digo'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_CONCEPTO'
          Title.Caption = 'Nombre'
          Width = 463
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Alignment = taCenter
          Title.Caption = 'Importe'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAJA'
          Title.Caption = 'Baja'
          Width = 40
          Visible = True
        end>
    end
    object PBusqueda: TPanel
      Left = 1
      Top = 1
      Width = 852
      Height = 19
      Align = alTop
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
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
        Left = 742
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
    object pDatos: TPanel
      Left = 1
      Top = 343
      Width = 852
      Height = 70
      Align = alBottom
      BevelOuter = bvNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      object Label1: TLabel
        Left = 279
        Top = 13
        Width = 108
        Height = 13
        Caption = 'Nombre Concepto:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 14
        Top = 13
        Width = 90
        Height = 13
        Caption = 'C'#243'd. Concepto:'
        Transparent = True
      end
      object Label3: TLabel
        Left = 53
        Top = 45
        Width = 51
        Height = 13
        Caption = 'Importe:'
        Transparent = True
      end
      object dbNombreConcepto: TDBEdit
        Left = 392
        Top = 9
        Width = 361
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMBRE_CONCEPTO'
        DataSource = DS_IE_Conceptos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object dbCodigoConcepto: TDBEdit
        Left = 112
        Top = 9
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'COD_CORTO'
        DataSource = DS_IE_Conceptos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object dbImporte: TDBEdit
        Left = 112
        Top = 41
        Width = 153
        Height = 21
        CharCase = ecUpperCase
        DataField = 'IMPORTE'
        DataSource = DS_IE_Conceptos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object ZQ_IE_Conceptos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from IE_conceptos'
      'order by ie_conceptos.id_concepto,ie_conceptos.cod_corto')
    Params = <>
    Left = 256
    Top = 72
    object ZQ_IE_ConceptosID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
    end
    object ZQ_IE_ConceptosCOD_CORTO: TStringField
      FieldName = 'COD_CORTO'
      Size = 6
    end
    object ZQ_IE_ConceptosNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 240
    end
    object ZQ_IE_ConceptosBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_IE_ConceptosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
  end
  object DS_IE_Conceptos: TDataSource
    DataSet = ZQ_IE_Conceptos
    Left = 376
    Top = 72
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
    Left = 504
    Top = 176
    DockControlHeights = (
      0
      0
      0
      52)
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
      ImageIndex = 25
      ShortCut = 115
      OnClick = btBajaClick
      AutoGrayScale = False
    end
    object btBuscar: TdxBarLargeButton
      Caption = 'Buscar'
      Category = 0
      Hint = 'Buscar'
      Visible = ivAlways
      ImageIndex = 29
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
      ImageIndex = 24
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
      ImageIndex = 6
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
  object EKBusquedaAvanzada1: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'C'#243'digo Concepto'
        Campo = 'cod_corto'
        Tabla = 'ie_conceptos'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Nombre Concepto'
        Campo = 'nombre_concepto'
        Tabla = 'ie_conceptos'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Importe'
        Campo = 'importe'
        Tabla = 'ie_conceptos'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Baja'
        Campo = 'baja'
        Tabla = 'ie_conceptos'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboValores.Strings = (
          'S'
          'N')
        TipoComboEditable = False
        TipoComboValoresReales.Strings = (
          'S'
          'N')
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_IE_Conceptos
    SQL.Strings = (
      'select *'
      'from IE_conceptos'
      'order by ie_conceptos.id_concepto,ie_conceptos.cod_corto')
    SQL_Select.Strings = (
      'select *')
    SQL_From.Strings = (
      'from IE_conceptos')
    SQL_Orden.Strings = (
      'order by ie_conceptos.id_concepto,ie_conceptos.cod_corto')
    UsarWhereOriginal = EK_Con_Where
    Left = 168
    Top = 96
  end
end
