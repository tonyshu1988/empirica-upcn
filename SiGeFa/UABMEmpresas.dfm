object FABMEmpresas: TFABMEmpresas
  Left = 240
  Top = 120
  Width = 895
  Height = 559
  Caption = 'FABMEmpresas'
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
    Width = 879
    Height = 469
    Align = alClient
    TabOrder = 0
    object PageControlEdicion: TPageControl
      Left = 1
      Top = 187
      Width = 877
      Height = 281
      ActivePage = TabEmpresa
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabEmpresa: TTabSheet
        Caption = 'Empresa'
        ImageIndex = 35
        object Label10: TLabel
          Left = 33
          Top = 147
          Width = 89
          Height = 13
          Caption = 'Observaciones:'
        end
        object DBMemoEmpresa: TDBMemo
          Left = 32
          Top = 162
          Width = 825
          Height = 73
          Hint = 'Seleccione un Telefono/Mail y haga click derecho'
          DataField = 'DESCRIPCION'
          DataSource = DS_Empresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          PopupMenu = PopupMenuSkypeMail
          TabOrder = 1
        end
        object PanelEdicion: TPanel
          Left = 0
          Top = 4
          Width = 877
          Height = 144
          BevelOuter = bvNone
          Caption = 'PanelEdicion'
          Enabled = False
          TabOrder = 0
          object Label5: TLabel
            Left = 5
            Top = 12
            Width = 104
            Height = 13
            Caption = 'Nombre Empresa:'
          end
          object Label2: TLabel
            Left = 52
            Top = 96
            Width = 57
            Height = 13
            Caption = 'Provincia:'
          end
          object Label11: TLabel
            Left = 581
            Top = 12
            Width = 55
            Height = 13
            Caption = 'Cuit/Cuil:'
          end
          object Label15: TLabel
            Left = 14
            Top = 40
            Width = 95
            Height = 13
            Caption = 'Nro Tel/Cel/Fax:'
          end
          object Label1: TLabel
            Left = 582
            Top = 68
            Width = 54
            Height = 13
            Caption = 'Tipo IVA:'
          end
          object Label3: TLabel
            Left = 553
            Top = 40
            Width = 83
            Height = 13
            Caption = 'Tipo Empresa:'
          end
          object Label4: TLabel
            Left = 51
            Top = 68
            Width = 58
            Height = 13
            Caption = 'Direcci'#243'n:'
          end
          object Label6: TLabel
            Left = 331
            Top = 96
            Width = 58
            Height = 13
            Caption = 'Localidad:'
          end
          object Label7: TLabel
            Left = 690
            Top = 96
            Width = 66
            Height = 13
            Caption = 'Cod.Postal:'
          end
          object Label8: TLabel
            Left = 73
            Top = 124
            Width = 36
            Height = 13
            Caption = 'Email:'
          end
          object Label9: TLabel
            Left = 415
            Top = 124
            Width = 55
            Height = 13
            Caption = 'Pag.Web:'
          end
          object dbNombre: TDBEdit
            Left = 110
            Top = 8
            Width = 433
            Height = 22
            CharCase = ecUpperCase
            DataField = 'NOMBRE'
            DataSource = DS_Empresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object DBEditTelefono: TDBEdit
            Left = 110
            Top = 36
            Width = 433
            Height = 22
            CharCase = ecUpperCase
            DataField = 'TELEFONO'
            DataSource = DS_Empresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object DBCBoxProvincia: TDBLookupComboBox
            Left = 110
            Top = 92
            Width = 215
            Height = 22
            DataField = 'ID_PROVINCIA'
            DataSource = DS_Empresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            KeyField = 'ID_PROVINCIA'
            ListField = 'NOMBRE_PROVINCIA'
            ListSource = DS_Provincia
            ParentFont = False
            TabOrder = 6
          end
          object DBEditCuitCuil: TDBEdit
            Left = 640
            Top = 8
            Width = 212
            Height = 22
            CharCase = ecUpperCase
            DataField = 'CUIT_CUIL'
            DataSource = DS_Empresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object DBCBoxTipoIva: TDBLookupComboBox
            Left = 640
            Top = 64
            Width = 215
            Height = 22
            DataField = 'ID_TIPO_IVA'
            DataSource = DS_Empresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            KeyField = 'ID_TIPO_IVA'
            ListField = 'NOMBRE_TIPO_IVA'
            ListSource = DS_TipoIVA
            ParentFont = False
            TabOrder = 5
          end
          object DBCBoxTipoEmpresa: TDBLookupComboBox
            Left = 640
            Top = 36
            Width = 215
            Height = 22
            DataField = 'ID_TIPO_EMPRESA'
            DataSource = DS_Empresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            KeyField = 'ID_TIPO_EMPRESA'
            ListField = 'DESCRIPCION'
            ListSource = DS_TipoEmpresa
            ParentFont = False
            TabOrder = 3
          end
          object DBEditDireccion: TDBEdit
            Left = 110
            Top = 64
            Width = 432
            Height = 22
            CharCase = ecUpperCase
            DataField = 'DIRECCION'
            DataSource = DS_Empresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object DBEditLocalidad: TDBEdit
            Left = 395
            Top = 92
            Width = 288
            Height = 22
            CharCase = ecUpperCase
            DataField = 'LOCALIDAD'
            DataSource = DS_Empresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
          end
          object DBEditCodPostal: TDBEdit
            Left = 762
            Top = 92
            Width = 95
            Height = 22
            CharCase = ecUpperCase
            DataField = 'CODIGO_POSTAL'
            DataSource = DS_Empresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
          end
          object DBEditEmail: TDBEdit
            Left = 110
            Top = 120
            Width = 301
            Height = 22
            DataField = 'EMAIL'
            DataSource = DS_Empresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
          end
          object DBEditWeb: TDBEdit
            Left = 472
            Top = 120
            Width = 385
            Height = 22
            DataField = 'PAGINA_WEB'
            DataSource = DS_Empresa
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
          end
        end
      end
      object TabContactos: TTabSheet
        Caption = 'Contactos'
        ImageIndex = 18
        object DBGridContactos: TDBGrid
          Left = 0
          Top = 0
          Width = 869
          Height = 134
          Hint = 'Haga click derecho para agregar o quitar un Contacto'
          Align = alClient
          Color = 14606012
          DataSource = DS_PersonaRelacionContacto
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'nombre'
              Title.Alignment = taCenter
              Title.Caption = 'Nombre y Apellido'
              Width = 278
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'telefono'
              Title.Alignment = taCenter
              Title.Caption = 'Tel'#233'fono'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'email'
              Title.Alignment = taCenter
              Title.Caption = 'Email'
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'direccion'
              Title.Alignment = taCenter
              Title.Caption = 'Direcci'#243'n'
              Width = 81
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'localidad'
              Title.Alignment = taCenter
              Title.Caption = 'Localidad'
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_postal'
              Title.Alignment = taCenter
              Title.Caption = 'Cod.Postal'
              Width = 57
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 0
          Top = 134
          Width = 869
          Height = 19
          Align = alBottom
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          object Label12: TLabel
            Left = 3
            Top = 3
            Width = 106
            Height = 13
            Caption = 'Datos Adicionales:'
          end
        end
        object DBMemoContactos: TDBMemo
          Left = 0
          Top = 153
          Width = 869
          Height = 100
          Align = alBottom
          Color = clWhite
          DataField = 'descripcion'
          DataSource = DS_PersonaRelacionContacto
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          PopupMenu = PopupMenuSkypeMail
          TabOrder = 2
        end
      end
      object TabViajantes: TTabSheet
        Caption = 'Viajantes'
        ImageIndex = 20
        object DBGridViajantes: TDBGrid
          Left = 0
          Top = 0
          Width = 869
          Height = 134
          Hint = 'Presione sobre el titulo de la columna para modificar el orden'
          Align = alClient
          Color = 14606012
          DataSource = DS_PersonaRelacionViajante
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'nombre'
              Title.Alignment = taCenter
              Title.Caption = 'Nombre y Apellido'
              Width = 249
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'telefono'
              Title.Alignment = taCenter
              Title.Caption = 'Tel'#233'fono'
              Width = 161
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'email'
              Title.Alignment = taCenter
              Title.Caption = 'Email'
              Width = 179
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'direccion'
              Title.Alignment = taCenter
              Title.Caption = 'Direcci'#243'n'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'localidad'
              Title.Alignment = taCenter
              Title.Caption = 'Localidad'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cod_postal'
              Title.Alignment = taCenter
              Title.Caption = 'Cod.Postal'
              Width = 57
              Visible = True
            end>
        end
        object DBMemoViajantes: TDBMemo
          Left = 0
          Top = 153
          Width = 869
          Height = 100
          Align = alBottom
          Color = clWhite
          DataField = 'descripcion'
          DataSource = DS_PersonaRelacionViajante
          PopupMenu = PopupMenuSkypeMail
          TabOrder = 1
        end
        object Panel2: TPanel
          Left = 0
          Top = 134
          Width = 869
          Height = 19
          Align = alBottom
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          object Label13: TLabel
            Left = 3
            Top = 3
            Width = 106
            Height = 13
            Caption = 'Datos Adicionales:'
          end
        end
      end
      object TabMarcas: TTabSheet
        Caption = 'Marcas'
        ImageIndex = 4
        object GrillaMarcas: TDBGrid
          Left = 0
          Top = 0
          Width = 869
          Height = 134
          Hint = 'Presione sobre el titulo de la columna para modificar el orden'
          Align = alClient
          Color = 14606012
          DataSource = DS_EmpresaMarca
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = '_codMarca'
              Title.Caption = 'C'#243'digo'
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_marca'
              Title.Caption = 'Nombre'
              Visible = True
            end>
        end
        object DBMemo1: TDBMemo
          Left = 0
          Top = 153
          Width = 869
          Height = 100
          Align = alBottom
          Color = clWhite
          DataField = 'DESCRIPCION'
          DataSource = DS_EmpresaMarca
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          PopupMenu = PopupMenuSkypeMail
          TabOrder = 1
        end
        object Panel3: TPanel
          Left = 0
          Top = 134
          Width = 869
          Height = 19
          Align = alBottom
          ParentShowHint = False
          ShowHint = False
          TabOrder = 2
          object Label14: TLabel
            Left = 3
            Top = 3
            Width = 106
            Height = 13
            Caption = 'Datos Adicionales:'
          end
        end
      end
      object TabDescripcion: TTabSheet
        BorderWidth = 10
        Caption = 'Descripci'#243'n'
        ImageIndex = 3
        object DBMemoDescripcion: TDBMemo
          Left = 0
          Top = 0
          Width = 849
          Height = 233
          Align = alClient
          DataField = 'DESCRIPCION_PRIVADA'
          DataSource = DS_Empresa
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          PopupMenu = PopupMenuSkypeMail
          TabOrder = 0
        end
      end
    end
    object DBGridEmpresas: TDBGrid
      Left = 1
      Top = 20
      Width = 877
      Height = 167
      Hint = 'Presione sobre el titulo de la columna para modificar el orden'
      Align = alClient
      Color = 14606012
      DataSource = DS_Empresa
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridEmpresasDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre Empresa'
          Width = 226
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONO'
          Title.Alignment = taCenter
          Title.Caption = 'Tel'#233'fono'
          Width = 258
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIRECCION'
          Title.Alignment = taCenter
          Title.Caption = 'Direcci'#243'n'
          Width = 199
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Title.Alignment = taCenter
          Title.Caption = 'Email'
          Width = 197
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUIT_CUIL'
          Title.Alignment = taCenter
          Title.Caption = 'Cuit/Cuil'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGINA_WEB'
          Title.Alignment = taCenter
          Title.Caption = 'Pag.Web'
          Width = 176
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'provincia'
          Title.Alignment = taCenter
          Title.Caption = 'Provincia'
          Width = 145
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCALIDAD'
          Title.Alignment = taCenter
          Title.Caption = 'Localidad'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_POSTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Cod.Postal'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipo_empresa'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Empresa'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipo_IVA'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo I.V.A'
          Width = 50
          Visible = True
        end>
    end
    object PBusqueda: TPanel
      Left = 1
      Top = 1
      Width = 877
      Height = 19
      Align = alTop
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      object lblResultadoBusqueda: TLabel
        Left = 1
        Top = 1
        Width = 144
        Height = 17
        Align = alLeft
        Caption = 'lblResultadoBusqueda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object StaticTxtBaja: TStaticText
        Left = 767
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
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Backgrounds.Bar.Data = {
      7A220000424D7A22000000000000360000002800000039000000330000000100
      1800000000004422000000000000000000000000000000000000FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5
      FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6
      A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FA
      B6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A5FAB6A500}
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
            Item = btnNuevo
            Visible = True
          end
          item
            Item = btnModificar
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnBaja
            Visible = True
          end
          item
            Item = btnReactivar
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
            BeginGroup = True
            Item = btnSkype
            Visible = True
          end
          item
            Item = btnEnviarMail
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnImprimir
            Visible = True
          end
          item
            BeginGroup = True
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
        BackgroundBitmap.Data = {
          7A220000424D7A22000000000000360000002800000039000000330000000100
          1800000000004422000000000000000000000000000000000000999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999009C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C
          9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C
          9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B
          9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C
          9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C
          9C9B9C9C9B9C9C9B9C9C9B9C9C9B9C9C9B009999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999009999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999990099999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999990099999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9900999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999900999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999900999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999009999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999009999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999009999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999990099999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999990099999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9900999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999900999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999900999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999999999999999999999999999999999999999999999999999999999
          9999999999009696969696969696969696969696969696969696969696969696
          9696969696969696969696969696969696969696969696969696969696969696
          9696969696969696969696969696969696969696969696969696969696969696
          9696969696969696969696969696969696969696969696969696969696969696
          9696969696969696969696969696969696969696969696969696969696969696
          9696969696969696969696969696969696009293929293929293929293929293
          9292939292939292939292939292939292939292939292939292939292939292
          9392929392929392929392929392929392929392929392929392929392929392
          9293929293929293929293929293929293929293929293929293929293929293
          9292939292939292939292939292939292939292939292939292939292939292
          9392929392929392929392929392929392929392929392929392929392008E8F
          8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E
          8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F
          8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F
          8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E
          8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F8E8F8F
          8E8F8F8E8F8F8E8F8F008A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A
          8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B
          8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C
          8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A
          8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B
          8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B8A8C8B0086898786898786898786
          8987868987868987868987868987868987868987868987868987868987868987
          8689878689878689878689878689878689878689878689878689878689878689
          8786898786898786898786898786898786898786898786898786898786898786
          8987868987868987868987868987868987868987868987868987868987868987
          8689878689878689878689878689878689878689878689878689878689878689
          8700838583838583838583838583838583838583838583838583838583838583
          8385838385838385838385838385838385838385838385838385838385838385
          8383858383858383858383858383858383858383858383858383858383858383
          8583838583838583838583838583838583838583838583838583838583838583
          8385838385838385838385838385838385838385838385838385838385838385
          83838583838583838583838583007F82807F82807F82807F82807F82807F8280
          7F82807F82807F82807F82807F82807F82807F82807F82807F82807F82807F82
          807F82807F82807F82807F82807F82807F82807F82807F82807F82807F82807F
          82807F82807F82807F82807F82807F82807F82807F82807F82807F82807F8280
          7F82807F82807F82807F82807F82807F82807F82807F82807F82807F82807F82
          807F82807F82807F82807F82807F82807F82807F82807F8280007B7E7C7B7E7C
          7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E
          7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B
          7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C
          7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E
          7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B7E7C7B
          7E7C7B7E7C00797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D
          7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A79
          7D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A
          797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D
          7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A797D7A79
          7D7A797D7A797D7A797D7A797D7A797D7A007579767579767579767579767579
          7675797675797675797675797675797675797675797675797675797675797675
          7976757976757976757976757976757976757976757976757976757976757976
          7579767579767579767579767579767579767579767579767579767579767579
          7675797675797675797675797675797675797675797675797675797675797675
          7976757976757976757976757976757976757976757976757976757976007176
          7371767371767371767371767371767371767371767371767371767371767371
          7673717673717673717673717673717673717673717673717673717673717673
          7176737176737176737176737176737176737176737176737176737176737176
          7371767371767371767371767371767371767371767371767371767371767371
          7673717673717673717673717673717673717673717673717673717673717673
          717673717673717673006D726F6D726F6D726F6D726F6D726F6D726F6D726F6D
          726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F
          6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D72
          6F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D
          726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F6D726F
          6D726F6D726F6D726F6D726F6D726F6D726F6D726F006A6F6B6A6F6B6A6F6B6A
          6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B
          6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F
          6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A
          6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B
          6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F6B6A6F
          6B00666C67666C67666C67666C67666C67666C67666C67666C67666C67666C67
          666C67666C67666C67666C67666C67666C67666C67666C67666C67666C67666C
          67666C67666C67666C67666C67666C67666C67666C67666C67666C67666C6766
          6C67666C67666C67666C67666C67666C67666C67666C67666C67666C67666C67
          666C67666C67666C67666C67666C67666C67666C67666C67666C67666C67666C
          67666C67666C67666C67666C6700626864626864626864626864626864626864
          6268646268646268646268646268646268646268646268646268646268646268
          6462686462686462686462686462686462686462686462686462686462686462
          6864626864626864626864626864626864626864626864626864626864626864
          6268646268646268646268646268646268646268646268646268646268646268
          64626864626864626864626864626864626864626864626864005E65605E6560
          5E65605E65605E65605E65605E65605E65605E65605E65605E65605E65605E65
          605E65605E65605E65605E65605E65605E65605E65605E65605E65605E65605E
          65605E65605E65605E65605E65605E65605E65605E65605E65605E65605E6560
          5E65605E65605E65605E65605E65605E65605E65605E65605E65605E65605E65
          605E65605E65605E65605E65605E65605E65605E65605E65605E65605E65605E
          65605E6560005A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A61
          5C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A
          615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C
          5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A61
          5C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A615C5A
          615C5A615C5A615C5A615C5A615C5A615C00565E59565E59565E59565E59565E
          59565E59565E59565E59565E59565E59565E59565E59565E59565E59565E5956
          5E59565E59565E59565E59565E59565E59565E59565E59565E59565E59565E59
          565E59565E59565E59565E59565E59565E59565E59565E59565E59565E59565E
          59565E59565E59565E59565E59565E59565E59565E59565E59565E59565E5956
          5E59565E59565E59565E59565E59565E59565E59565E59565E59565E5900525B
          55525B55525B55525B55525B55525B55525B55525B55525B55525B55525B5552
          5B55525B55525B55525B55525B55525B55525B55525B55525B55525B55525B55
          525B55525B55525B55525B55525B55525B55525B55525B55525B55525B55525B
          55525B55525B55525B55525B55525B55525B55525B55525B55525B55525B5552
          5B55525B55525B55525B55525B55525B55525B55525B55525B55525B55525B55
          525B55525B55525B55004F57514F57514F57514F57514F57514F57514F57514F
          57514F57514F57514F57514F57514F57514F57514F57514F57514F57514F5751
          4F57514F57514F57514F57514F57514F57514F57514F57514F57514F57514F57
          514F57514F57514F57514F57514F57514F57514F57514F57514F57514F57514F
          57514F57514F57514F57514F57514F57514F57514F57514F57514F57514F5751
          4F57514F57514F57514F57514F57514F57514F5751004B544D4B544D4B544D4B
          544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D
          4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B54
          4D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B
          544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D
          4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B544D4B54
          4D0047504A47504A47504A47504A47504A47504A47504A47504A47504A47504A
          47504A47504A47504A47504A47504A47504A47504A47504A47504A47504A4750
          4A47504A47504A47504A47504A47504A47504A47504A47504A47504A47504A47
          504A47504A47504A47504A47504A47504A47504A47504A47504A47504A47504A
          47504A47504A47504A47504A47504A47504A47504A47504A47504A47504A4750
          4A47504A47504A47504A47504A00434D46434D46434D46434D46434D46434D46
          434D46434D46434D46434D46434D46434D46434D46434D46434D46434D46434D
          46434D46434D46434D46434D46434D46434D46434D46434D46434D46434D4643
          4D46434D46434D46434D46434D46434D46434D46434D46434D46434D46434D46
          434D46434D46434D46434D46434D46434D46434D46434D46434D46434D46434D
          46434D46434D46434D46434D46434D46434D46434D46434D4600434C46434C46
          434C46434C46434C46434C46434C46434C46434C46434C46434C46434C46434C
          46434C46434C46434C46434C46434C46434C46434C46434C46434C46434C4643
          4C46434C46434C46434C46434C46434C46434C46434C46434C46434C46434C46
          434C46434C46434C46434C46434C46434C46434C46434C46434C46434C46434C
          46434C46434C46434C46434C46434C46434C46434C46434C46434C46434C4643
          4C46434C4600444C47444C47444C47444C47444C47444C47444C47444C47444C
          47444C47444C47444C47444C47444C47444C47444C47444C47444C47444C4744
          4C47444C47444C47444C47444C47444C47444C47444C47444C47444C47444C47
          444C47444C47444C47444C47444C47444C47444C47444C47444C47444C47444C
          47444C47444C47444C47444C47444C47444C47444C47444C47444C47444C4744
          4C47444C47444C47444C47444C47444C4700454C47454C47454C47454C47454C
          47454C47454C47454C47454C47454C47454C47454C47454C47454C47454C4745
          4C47454C47454C47454C47454C47454C47454C47454C47454C47454C47454C47
          454C47454C47454C47454C47454C47454C47454C47454C47454C47454C47454C
          47454C47454C47454C47454C47454C47454C47454C47454C47454C47454C4745
          4C47454C47454C47454C47454C47454C47454C47454C47454C47454C4700464C
          48464C48464C48464C48464C48464C48464C48464C48464C48464C48464C4846
          4C48464C48464C48464C48464C48464C48464C48464C48464C48464C48464C48
          464C48464C48464C48464C48464C48464C48464C48464C48464C48464C48464C
          48464C48464C48464C48464C48464C48464C48464C48464C48464C48464C4846
          4C48464C48464C48464C48464C48464C48464C48464C48464C48464C48464C48
          464C48464C48464C4800474C48474C48474C48474C48474C48474C48474C4847
          4C48474C48474C48474C48474C48474C48474C48474C48474C48474C48474C48
          474C48474C48474C48474C48474C48474C48474C48474C48474C48474C48474C
          48474C48474C48474C48474C48474C48474C48474C48474C48474C48474C4847
          4C48474C48474C48474C48474C48474C48474C48474C48474C48474C48474C48
          474C48474C48474C48474C48474C48474C48474C4800474C49474C49474C4947
          4C49474C49474C49474C49474C49474C49474C49474C49474C49474C49474C49
          474C49474C49474C49474C49474C49474C49474C49474C49474C49474C49474C
          49474C49474C49474C49474C49474C49474C49474C49474C49474C49474C4947
          4C49474C49474C49474C49474C49474C49474C49474C49474C49474C49474C49
          474C49474C49474C49474C49474C49474C49474C49474C49474C49474C49474C
          4900484C49484C49484C49484C49484C49484C49484C49484C49484C49484C49
          484C49484C49484C49484C49484C49484C49484C49484C49484C49484C49484C
          49484C49484C49484C49484C49484C49484C49484C49484C49484C49484C4948
          4C49484C49484C49484C49484C49484C49484C49484C49484C49484C49484C49
          484C49484C49484C49484C49484C49484C49484C49484C49484C49484C49484C
          49484C49484C49484C49484C4900494C4A494C4A494C4A494C4A494C4A494C4A
          494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C
          4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A49
          4C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A
          494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C
          4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A494C4A004A4C4A4A4C4A
          4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C
          4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A
          4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A
          4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C
          4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A4C4A4A
          4C4A4A4C4A004B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C
          4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B
          4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B
          4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C
          4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B
          4C4B4B4C4B4B4C4B4B4C4B4B4C4B4B4C4B004C4C4C4C4C4C4C4C4C4C4C4C4C4C
          4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C
          4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C
          4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C
          4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C
          4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C00}
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
    Left = 748
    Top = 192
    DockControlHeights = (
      0
      0
      0
      52)
    object btnNuevo: TdxBarLargeButton
      Caption = 'F2 - Nuevo'
      Category = 0
      Hint = 'Inserta un nuevo registro'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btnNuevoClick
      AutoGrayScale = False
    end
    object btnModificar: TdxBarLargeButton
      Caption = 'F3 - Modificar'
      Category = 0
      Hint = 'Modifica el registro actual'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btnModificarClick
      AutoGrayScale = False
    end
    object btnBaja: TdxBarLargeButton
      Caption = 'F4 - Baja'
      Category = 0
      Hint = 'F4 - Baja'
      Visible = ivAlways
      ImageIndex = 25
      OnClick = btnBajaClick
      AutoGrayScale = False
    end
    object btnBuscar: TdxBarLargeButton
      Caption = 'F1 - Buscar'
      Category = 0
      Hint = 'F1 - Buscar'
      Visible = ivAlways
      ImageIndex = 29
      OnClick = btnBuscarClick
      AutoGrayScale = False
    end
    object btnGuardar: TdxBarLargeButton
      Caption = 'F11 - Guardar'
      Category = 0
      Enabled = False
      Hint = 'Guarda los cambios'
      Visible = ivAlways
      ImageIndex = 3
      OnClick = btnGuardarClick
      AutoGrayScale = False
    end
    object btnCancelar: TdxBarLargeButton
      Caption = 'F12 - Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancela los cambios'
      Visible = ivAlways
      ImageIndex = 4
      OnClick = btnCancelarClick
      AutoGrayScale = False
    end
    object btnImprimir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Imprimir'
      Category = 0
      Visible = ivAlways
      ImageIndex = 28
      AutoGrayScale = False
    end
    object btnReactivar: TdxBarLargeButton
      Caption = 'F5 - Reactivar'
      Category = 0
      Hint = 'F5 - Reactivar'
      Visible = ivAlways
      ImageIndex = 24
      OnClick = btnReactivarClick
      AutoGrayScale = False
    end
    object btnSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir sin seleccionar'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = btnSalirClick
      AutoGrayScale = False
    end
    object btverbajados: TdxBarLargeButton
      Caption = 'Ver Baja/Activos'
      Category = 0
      Hint = 'Permite ver los bienes que estan dados de baja/activos'
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 37
      AutoGrayScale = False
    end
    object BtBusquedaNueva: TdxBarLargeButton
      Caption = 'Nueva Busqueda'
      Category = 0
      Hint = 'Nueva Busqueda'
      Visible = ivAlways
      ImageIndex = 14
      AutoGrayScale = False
    end
    object btnSiguiente: TdxBarLargeButton
      Caption = 'Siguiente'
      Category = 0
      Enabled = False
      Hint = 'Siguiente'
      Visible = ivAlways
      ImageIndex = 43
      AutoGrayScale = False
    end
    object btnAnterior: TdxBarLargeButton
      Caption = 'Anterior'
      Category = 0
      Enabled = False
      Hint = 'Anterior'
      Visible = ivAlways
      ImageIndex = 42
      AutoGrayScale = False
    end
    object btnSkype: TdxBarLargeButton
      Caption = 'Skype'
      Category = 0
      Hint = 'Skype'
      Visible = ivAlways
      ImageIndex = 73
      OnClick = btnSkypeClick
      AutoGrayScale = False
    end
    object bt: TdxBarLargeButton
      Caption = 'sk'
      Category = 0
      Hint = 'sk'
      Visible = ivAlways
    end
    object btnEnviarMail: TdxBarLargeButton
      Caption = 'Enviar Mail'
      Category = 0
      Hint = 'Enviar Mail'
      Visible = ivAlways
      ImageIndex = 77
      OnClick = btnEnviarMailClick
      AutoGrayScale = False
    end
    object GrupoVisualizando: TdxBarGroup
      Items = (
        'btnNuevo'
        'btnModificar'
        'btnBuscar'
        'btnImprimir'
        'btnBaja'
        'btnReactivar'
        'btverbajados'
        'btnSiguiente'
        'btnAnterior')
    end
    object GrupoEditando: TdxBarGroup
      Enabled = False
      Items = (
        'btnGuardar'
        'btnCancelar')
    end
  end
  object ZQ_Empresa: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_EmpresaAfterScroll
    SQL.Strings = (
      'select *'
      'from empresa e'
      'order by e.nombre')
    Params = <>
    Left = 256
    Top = 120
    object ZQ_EmpresaCUIT_CUIL: TStringField
      FieldName = 'CUIT_CUIL'
      Size = 30
    end
    object ZQ_EmpresaID_PROVINCIA: TIntegerField
      FieldName = 'ID_PROVINCIA'
    end
    object ZQ_EmpresaID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_EmpresaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_EmpresaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 200
    end
    object ZQ_EmpresaLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 200
    end
    object ZQ_EmpresaCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
    end
    object ZQ_EmpresaTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 100
    end
    object ZQ_EmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object ZQ_EmpresaPAGINA_WEB: TStringField
      FieldName = 'PAGINA_WEB'
      Size = 200
    end
    object ZQ_EmpresaBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_EmpresaAUD_USUARIO: TStringField
      FieldName = 'AUD_USUARIO'
      Size = 10
    end
    object ZQ_EmpresaAUD_FECHA: TDateTimeField
      FieldName = 'AUD_FECHA'
    end
    object ZQ_EmpresaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
    object ZQ_Empresaprovincia: TStringField
      FieldKind = fkLookup
      FieldName = 'provincia'
      LookupDataSet = ZQ_Provincia
      LookupKeyFields = 'ID_PROVINCIA'
      LookupResultField = 'NOMBRE_PROVINCIA'
      KeyFields = 'ID_PROVINCIA'
      Size = 50
      Lookup = True
    end
    object ZQ_Empresatipo_empresa: TStringField
      FieldKind = fkLookup
      FieldName = 'tipo_empresa'
      LookupDataSet = ZQ_TipoEmpresa
      LookupKeyFields = 'ID_TIPO_EMPRESA'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'ID_TIPO_EMPRESA'
      Size = 100
      Lookup = True
    end
    object ZQ_Empresatipo_IVA: TStringField
      FieldKind = fkLookup
      FieldName = 'tipo_IVA'
      LookupDataSet = ZQ_TipoIVA
      LookupKeyFields = 'ID_TIPO_IVA'
      LookupResultField = 'NOMBRE_TIPO_IVA'
      KeyFields = 'ID_TIPO_IVA'
      Size = 50
      Lookup = True
    end
    object ZQ_EmpresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object ZQ_EmpresaID_TIPO_EMPRESA: TIntegerField
      FieldName = 'ID_TIPO_EMPRESA'
    end
    object ZQ_EmpresaDESCRIPCION_PRIVADA: TStringField
      FieldName = 'DESCRIPCION_PRIVADA'
      Size = 1000
    end
  end
  object DS_Empresa: TDataSource
    DataSet = ZQ_Empresa
    Left = 192
    Top = 256
  end
  object ZQ_Provincia: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from provincia p')
    Params = <>
    Left = 424
    Top = 112
    object ZQ_ProvinciaID_PROVINCIA: TIntegerField
      FieldName = 'ID_PROVINCIA'
      Required = True
    end
    object ZQ_ProvinciaNOMBRE_PROVINCIA: TStringField
      FieldName = 'NOMBRE_PROVINCIA'
      Size = 50
    end
  end
  object DS_Provincia: TDataSource
    DataSet = ZQ_Provincia
    Left = 424
    Top = 176
  end
  object ZQ_TipoEmpresa: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_empresa te'
      'where te.baja <> '#39'S'#39)
    Params = <>
    Left = 488
    Top = 112
    object ZQ_TipoEmpresaID_TIPO_EMPRESA: TIntegerField
      FieldName = 'ID_TIPO_EMPRESA'
      Required = True
    end
    object ZQ_TipoEmpresaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
  end
  object DS_TipoEmpresa: TDataSource
    DataSet = ZQ_TipoEmpresa
    Left = 488
    Top = 176
  end
  object ZQ_TipoIVA: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_iva ti')
    Params = <>
    Left = 552
    Top = 112
    object ZQ_TipoIVAID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
      Required = True
    end
    object ZQ_TipoIVANOMBRE_TIPO_IVA: TStringField
      FieldName = 'NOMBRE_TIPO_IVA'
      Size = 50
    end
    object ZQ_TipoIVAABREVIATURA: TStringField
      FieldName = 'ABREVIATURA'
      Size = 10
    end
    object ZQ_TipoIVADISCRIMINAR: TStringField
      FieldName = 'DISCRIMINAR'
      Size = 1
    end
    object ZQ_TipoIVALETRA: TStringField
      FieldName = 'LETRA'
      Size = 1
    end
    object ZQ_TipoIVAFISCAL: TStringField
      FieldName = 'FISCAL'
      Size = 1
    end
  end
  object DS_TipoIVA: TDataSource
    DataSet = ZQ_TipoIVA
    Left = 552
    Top = 176
  end
  object EKBusquedaAvanzadaEmpresas: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Nombre Empresa:'
        Campo = 'nombre'
        Tabla = 'e'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Direcci'#243'n:'
        Campo = 'direccion'
        Tabla = 'e'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Cuit/Cuil:'
        Campo = 'cuit_cuil'
        Tabla = 'e'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Tel'#233'fono:'
        Campo = 'telefono'
        Tabla = 'e'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Email:'
        Campo = 'email'
        Tabla = 'e'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Baja:'
        Campo = 'baja'
        Tabla = 'e'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboValores.Strings = (
          'Si'
          'No')
        TipoComboEditable = False
        TipoComboValoresReales.Strings = (
          'S'
          'N')
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_Empresa
    SQL.Strings = (
      'select *'
      'from empresa e'
      'order by e.nombre')
    SQL_Select.Strings = (
      'select *')
    SQL_From.Strings = (
      'from empresa e')
    SQL_Orden.Strings = (
      'order by e.nombre')
    UsarWhereOriginal = EK_Sin_Where
    InfoRegistros = lblResultadoBusqueda
    PantallaReducida = True
    Left = 128
    Top = 120
  end
  object EKOrdenarGrilla1: TEKOrdenarGrilla
    Grilla = DBGridEmpresas
    FuenteNormal = []
    Ordenar = True
    MoverColumna = True
    Left = 328
    Top = 72
  end
  object PopupMenuContactos: TPopupMenu
    MenuAnimation = [maLeftToRight]
    Left = 277
    Top = 378
    object AgregarContacto1: TMenuItem
      Caption = 'Agregar Contacto'
      Hint = 'Agregar un contacto al listado de contactos'
      OnClick = AgregarContacto1Click
    end
    object QuitarContacto1: TMenuItem
      Caption = 'Quitar Contacto'
      Hint = 'Quita un contacto del listado'
      OnClick = QuitarContacto1Click
    end
  end
  object ZQ_PersonaRelacionContacto: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from persona_relacion pr'
      'where pr.id_relacion = 4 and pr.id_empresa = :id_empresa')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        ParamType = ptUnknown
      end>
    Left = 405
    Top = 378
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        ParamType = ptUnknown
      end>
    object ZQ_PersonaRelacionContactoID_PERSONA_RELACION: TIntegerField
      FieldName = 'ID_PERSONA_RELACION'
    end
    object ZQ_PersonaRelacionContactoID_PERSONA: TIntegerField
      FieldName = 'ID_PERSONA'
    end
    object ZQ_PersonaRelacionContactoID_RELACION: TIntegerField
      FieldName = 'ID_RELACION'
    end
    object ZQ_PersonaRelacionContactoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object ZQ_PersonaRelacionContactoID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_PersonaRelacionContactonombre: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_PERSONA'
      Size = 100
      Lookup = True
    end
    object ZQ_PersonaRelacionContactodireccion: TStringField
      FieldKind = fkLookup
      FieldName = 'direccion'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'DIRECCION'
      KeyFields = 'ID_PERSONA'
      Size = 100
      Lookup = True
    end
    object ZQ_PersonaRelacionContactotelefono: TStringField
      FieldKind = fkLookup
      FieldName = 'telefono'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'TELEFONO'
      KeyFields = 'ID_PERSONA'
      Size = 100
      Lookup = True
    end
    object ZQ_PersonaRelacionContactoemail: TStringField
      FieldKind = fkLookup
      FieldName = 'email'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'EMAIL'
      KeyFields = 'ID_PERSONA'
      Size = 100
      Lookup = True
    end
    object ZQ_PersonaRelacionContactodescripcion: TStringField
      DisplayWidth = 500
      FieldKind = fkLookup
      FieldName = 'descripcion'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'ID_PERSONA'
      Size = 500
      Lookup = True
    end
    object ZQ_PersonaRelacionContactolocalidad: TStringField
      FieldKind = fkLookup
      FieldName = 'localidad'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'LOCALIDAD'
      KeyFields = 'ID_PERSONA'
      Size = 100
      Lookup = True
    end
    object ZQ_PersonaRelacionContactocod_postal: TStringField
      FieldKind = fkLookup
      FieldName = 'cod_postal'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'CODIGO_POSTAL'
      KeyFields = 'ID_PERSONA'
      Size = 100
      Lookup = True
    end
  end
  object ZQ_Personas: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from Persona')
    Params = <>
    Left = 253
    Top = 282
    object ZQ_PersonasID_PERSONA: TIntegerField
      FieldName = 'ID_PERSONA'
      Required = True
    end
    object ZQ_PersonasID_PROVINCIA: TIntegerField
      FieldName = 'ID_PROVINCIA'
    end
    object ZQ_PersonasID_TIPO_DOC: TIntegerField
      FieldName = 'ID_TIPO_DOC'
    end
    object ZQ_PersonasID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_PersonasNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_PersonasDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 200
    end
    object ZQ_PersonasLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 200
    end
    object ZQ_PersonasCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
    end
    object ZQ_PersonasTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 100
    end
    object ZQ_PersonasEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object ZQ_PersonasFECHA_NACIMIENTO: TDateField
      FieldName = 'FECHA_NACIMIENTO'
    end
    object ZQ_PersonasNUMERO_DOC: TStringField
      FieldName = 'NUMERO_DOC'
      Size = 50
    end
    object ZQ_PersonasSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object ZQ_PersonasBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_PersonasAUD_USUARIO: TStringField
      FieldName = 'AUD_USUARIO'
      Size = 10
    end
    object ZQ_PersonasAUD_FECHA: TDateTimeField
      FieldName = 'AUD_FECHA'
    end
    object ZQ_PersonasDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
    object ZQ_PersonasCUIT_CUIL: TStringField
      FieldName = 'CUIT_CUIL'
      Size = 30
    end
  end
  object DS_PersonaRelacionContacto: TDataSource
    DataSet = ZQ_PersonaRelacionContacto
    Left = 405
    Top = 426
  end
  object DS_PersonaRelacionViajante: TDataSource
    DataSet = ZQ_PersonaRelacionViajante
    Left = 629
    Top = 426
  end
  object PopupMenuViajantes: TPopupMenu
    Left = 757
    Top = 378
    object AgregarViajante1: TMenuItem
      Caption = 'Agregar Viajante'
      OnClick = AgregarViajante1Click
    end
    object QuitarViajante1: TMenuItem
      Caption = 'Quitar Viajante'
      OnClick = QuitarViajante1Click
    end
  end
  object ZQ_PersonaRelacionViajante: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from persona_relacion pr'
      'where pr.id_relacion = 3 and pr.id_empresa = :id_empresa')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        ParamType = ptUnknown
      end>
    Left = 629
    Top = 378
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        ParamType = ptUnknown
      end>
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_PERSONA'
      Size = 100
      Lookup = True
    end
    object StringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'direccion'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'DIRECCION'
      KeyFields = 'ID_PERSONA'
      Size = 100
      Lookup = True
    end
    object StringField6: TStringField
      DisplayWidth = 500
      FieldKind = fkLookup
      FieldName = 'descripcion'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'ID_PERSONA'
      Size = 500
      Lookup = True
    end
    object StringField7: TStringField
      FieldKind = fkLookup
      FieldName = 'localidad'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'LOCALIDAD'
      KeyFields = 'ID_PERSONA'
      Size = 100
      Lookup = True
    end
    object StringField8: TStringField
      FieldKind = fkLookup
      FieldName = 'cod_postal'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'CODIGO_POSTAL'
      KeyFields = 'ID_PERSONA'
      Size = 100
      Lookup = True
    end
    object ZQ_PersonaRelacionViajanteID_PERSONA_RELACION: TIntegerField
      FieldName = 'ID_PERSONA_RELACION'
    end
    object ZQ_PersonaRelacionViajanteID_PERSONA: TIntegerField
      FieldName = 'ID_PERSONA'
      Required = True
    end
    object ZQ_PersonaRelacionViajanteID_RELACION: TIntegerField
      FieldName = 'ID_RELACION'
      Required = True
    end
    object ZQ_PersonaRelacionViajanteID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object ZQ_PersonaRelacionViajanteID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_PersonaRelacionViajantetelefono: TStringField
      FieldKind = fkLookup
      FieldName = 'telefono'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'TELEFONO'
      KeyFields = 'ID_PERSONA'
      Size = 100
      Lookup = True
    end
    object ZQ_PersonaRelacionViajanteemail: TStringField
      FieldKind = fkLookup
      FieldName = 'email'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'EMAIL'
      KeyFields = 'ID_PERSONA'
      Size = 100
      Lookup = True
    end
  end
  object ZPID_Empresa: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_EMPRESA_ID'
    Left = 656
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    object ZPID_EmpresaID: TIntegerField
      FieldName = 'ID'
    end
  end
  object PopupMenuSkypeMail: TPopupMenu
    Left = 197
    Top = 419
    object llamar1: TMenuItem
      Caption = 'Llamar por Skype'
      OnClick = llamar1Click
    end
    object EnviarunMail1: TMenuItem
      Caption = 'Enviar un Mail'
      OnClick = EnviarunMail1Click
    end
  end
  object ATeclasRapidas: TActionManager
    Left = 128
    Top = 178
    StyleName = 'XP Style'
    object ABuscar: TAction
      Caption = 'ABuscar'
      ShortCut = 112
      OnExecute = ABuscarExecute
    end
    object ANuevo: TAction
      Caption = 'ANuevo'
      ShortCut = 113
      OnExecute = ANuevoExecute
    end
    object AModificar: TAction
      Caption = 'AModificar'
      ShortCut = 114
      OnExecute = AModificarExecute
    end
    object AEliminar: TAction
      Caption = 'AEliminar'
      ShortCut = 115
    end
    object ABaja: TAction
      Caption = 'ABaja'
      ShortCut = 116
      OnExecute = ABajaExecute
    end
    object AReactivar: TAction
      Caption = 'AReactivar'
      ShortCut = 117
      OnExecute = AReactivarExecute
    end
    object AGuardar: TAction
      Caption = 'AGuardar'
      ShortCut = 122
      OnExecute = AGuardarExecute
    end
    object ACancelar: TAction
      Caption = 'ACancelar'
      ShortCut = 123
      OnExecute = ACancelarExecute
    end
  end
  object PopupMenuMarcas: TPopupMenu
    MenuAnimation = [maLeftToRight]
    Left = 341
    Top = 266
    object MenuItem1: TMenuItem
      Caption = 'Agregar Marca'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Quitar Marca'
      OnClick = MenuItem2Click
    end
  end
  object ZQ_EmpresaMarca: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from empresa_marca'
      'where id_empresa=:id_empresa')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        ParamType = ptUnknown
      end>
    Left = 613
    Top = 282
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        ParamType = ptUnknown
      end>
    object ZQ_EmpresaMarcaID: TIntegerField
      FieldName = 'ID'
    end
    object ZQ_EmpresaMarcaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object ZQ_EmpresaMarcaID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object ZQ_EmpresaMarca_marca: TStringField
      FieldKind = fkLookup
      FieldName = '_marca'
      LookupDataSet = ZQ_Marcas
      LookupKeyFields = 'ID_MARCA'
      LookupResultField = 'NOMBRE_MARCA'
      KeyFields = 'ID_MARCA'
      Size = 50
      Lookup = True
    end
    object ZQ_EmpresaMarca_codMarca: TStringField
      FieldKind = fkLookup
      FieldName = '_codMarca'
      LookupDataSet = ZQ_Marcas
      LookupKeyFields = 'ID_MARCA'
      LookupResultField = 'CODIGO_MARCA'
      KeyFields = 'ID_MARCA'
      Size = 10
      Lookup = True
    end
    object ZQ_EmpresaMarcaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
  end
  object ZQ_Marcas: TZQuery
    Connection = DM.Conexion
    Active = True
    SQL.Strings = (
      'select *'
      'from Marca')
    Params = <>
    Left = 125
    Top = 274
    object ZQ_MarcasID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
      Required = True
    end
    object ZQ_MarcasNOMBRE_MARCA: TStringField
      FieldName = 'NOMBRE_MARCA'
      Size = 50
    end
    object ZQ_MarcasBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_MarcasCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
    end
  end
  object DS_EmpresaMarca: TDataSource
    DataSet = ZQ_EmpresaMarca
    Left = 448
    Top = 240
  end
  object EKListadoMarca: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      
        'select m.id_marca, lpad(m.codigo_marca,4,'#39'0'#39')||'#39' - '#39'||m.nombre_m' +
        'arca as busqueda'
      'from marca m'
      'where m.baja = '#39'N'#39
      'order by m.codigo_marca, m.nombre_marca')
    CampoBuscar = 'busqueda'
    CampoClave = 'ID_MARCA'
    BuscarEnQuery = ZQ_Marcas
    TituloVentana = 'Buscar Marca'
    Left = 565
    Top = 232
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ZQ_EmpresaMarca
    Left = 757
    Top = 284
  end
end
