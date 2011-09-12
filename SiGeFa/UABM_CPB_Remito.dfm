object FABM_CPB_Remito: TFABM_CPB_Remito
  Left = 336
  Top = 167
  Width = 892
  Height = 586
  Caption = 'ABM Remito'
  Color = clBtnFace
  Constraints.MinHeight = 586
  Constraints.MinWidth = 870
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFondo: TPanel
    Left = 0
    Top = 19
    Width = 884
    Height = 488
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PanelEditar: TPanel
      Left = 0
      Top = 0
      Width = 884
      Height = 488
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object PanelEditar_DatosGral: TPanel
        Left = 5
        Top = 5
        Width = 874
        Height = 177
        Align = alTop
        TabOrder = 0
        DesignSize = (
          874
          177)
        object DBTxtCPB_PuntoVenta: TDBText
          Left = 709
          Top = 33
          Width = 44
          Height = 18
          Alignment = taRightJustify
          Anchors = [akRight]
          DataField = 'PUNTO_VENTA'
          DataSource = DS_Comprobante
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object DBTxtCPB_Numero: TDBText
          Left = 766
          Top = 33
          Width = 88
          Height = 18
          Alignment = taRightJustify
          Anchors = [akRight]
          DataField = 'NUMERO_CPB'
          DataSource = DS_Comprobante
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
        object btnBuscarEmpresa: TSpeedButton
          Left = 7
          Top = 11
          Width = 50
          Height = 50
          Hint = 'Buscar una empresa para asociar al comprobante'
          GroupIndex = 2
          OnClick = btnBuscarEmpresaClick
        end
        object btnBuscarPersona: TSpeedButton
          Left = 7
          Top = 62
          Width = 50
          Height = 50
          Hint = 'Buscar una persona para asociar al comprobante'
          GroupIndex = 2
          OnClick = btnBuscarPersonaClick
        end
        object Label12: TLabel
          Left = 709
          Top = 12
          Width = 145
          Height = 15
          Alignment = taCenter
          Anchors = [akRight]
          AutoSize = False
          Caption = 'NUMERO'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object LblCPB_PuntoVenta: TLabel
          Left = 709
          Top = 33
          Width = 44
          Height = 18
          Alignment = taRightJustify
          Anchors = [akRight]
          Caption = '9999'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Visible = False
        end
        object LblCPB_Numero: TLabel
          Left = 766
          Top = 33
          Width = 88
          Height = 18
          Anchors = [akRight]
          Caption = '99999999'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Visible = False
        end
        object Label26: TLabel
          Left = 755
          Top = 33
          Width = 8
          Height = 18
          Alignment = taCenter
          Anchors = [akRight]
          Caption = '-'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object PanelEditar_DatosGralProveedor: TPanel
          Left = 66
          Top = 7
          Width = 633
          Height = 74
          Anchors = [akLeft]
          BevelOuter = bvNone
          Color = clInactiveCaption
          TabOrder = 1
          object Label13: TLabel
            Left = 13
            Top = 58
            Width = 62
            Height = 13
            Caption = 'Tipo Emp.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 438
            Top = 40
            Width = 57
            Height = 13
            Caption = 'Provincia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 142
            Top = 40
            Width = 58
            Height = 13
            Caption = 'Localidad:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 5
            Top = 40
            Width = 70
            Height = 13
            Caption = 'C'#243'd. Postal:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 17
            Top = 22
            Width = 58
            Height = 13
            Caption = 'Direcci'#243'n:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 150
            Top = 5
            Width = 50
            Height = 13
            Caption = 'Nombre:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 30
            Top = 5
            Width = 45
            Height = 13
            Caption = 'C'#243'digo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 458
            Top = 58
            Width = 55
            Height = 13
            Caption = 'Cuit/Cuil:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 242
            Top = 58
            Width = 26
            Height = 13
            Caption = 'IVA:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBText6: TDBText
            Left = 76
            Top = 22
            Width = 545
            Height = 13
            DataField = 'DIRECCION'
            DataSource = DS_Proveedor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText17: TDBText
            Left = 201
            Top = 5
            Width = 420
            Height = 13
            DataField = 'NOMBRE'
            DataSource = DS_Proveedor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText18: TDBText
            Left = 76
            Top = 5
            Width = 65
            Height = 13
            DataField = 'CODIGO_CORTO'
            DataSource = DS_Proveedor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText19: TDBText
            Left = 515
            Top = 58
            Width = 114
            Height = 13
            DataField = 'CUIT_CUIL'
            DataSource = DS_Proveedor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText20: TDBText
            Left = 269
            Top = 58
            Width = 181
            Height = 13
            DataField = 'NOMBRE_TIPO_IVA'
            DataSource = DS_Proveedor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText22: TDBText
            Left = 77
            Top = 58
            Width = 161
            Height = 13
            DataField = 'TIPO_EMPRESA'
            DataSource = DS_Proveedor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText23: TDBText
            Left = 496
            Top = 40
            Width = 133
            Height = 13
            DataField = 'NOMBRE_PROVINCIA'
            DataSource = DS_Proveedor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText24: TDBText
            Left = 202
            Top = 40
            Width = 232
            Height = 13
            DataField = 'LOCALIDAD'
            DataSource = DS_Proveedor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText25: TDBText
            Left = 77
            Top = 40
            Width = 57
            Height = 13
            DataField = 'CODIGO_POSTAL'
            DataSource = DS_Proveedor
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object PanelEditar_DatosGralCliente: TPanel
          Left = 66
          Top = 7
          Width = 633
          Height = 74
          Anchors = [akLeft]
          BevelOuter = bvNone
          Color = clScrollBar
          TabOrder = 0
          object DBText7: TDBText
            Left = 76
            Top = 5
            Width = 65
            Height = 13
            DataField = 'CODIGO_CORTO'
            DataSource = DS_Cliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 30
            Top = 5
            Width = 45
            Height = 13
            Caption = 'C'#243'digo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 150
            Top = 5
            Width = 50
            Height = 13
            Caption = 'Nombre:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 201
            Top = 5
            Width = 420
            Height = 13
            DataField = 'NOMBRE'
            DataSource = DS_Cliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 17
            Top = 22
            Width = 58
            Height = 13
            Caption = 'Direcci'#243'n:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBText9: TDBText
            Left = 76
            Top = 22
            Width = 545
            Height = 13
            DataField = 'DIRECCION'
            DataSource = DS_Cliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 5
            Top = 40
            Width = 70
            Height = 13
            Caption = 'C'#243'd. Postal:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBText10: TDBText
            Left = 77
            Top = 40
            Width = 57
            Height = 13
            DataField = 'CODIGO_POSTAL'
            DataSource = DS_Cliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 142
            Top = 40
            Width = 58
            Height = 13
            Caption = 'Localidad:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBText11: TDBText
            Left = 202
            Top = 40
            Width = 232
            Height = 13
            DataField = 'LOCALIDAD'
            DataSource = DS_Cliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 438
            Top = 40
            Width = 57
            Height = 13
            Caption = 'Provincia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBText12: TDBText
            Left = 496
            Top = 40
            Width = 133
            Height = 13
            DataField = 'NOMBRE_PROVINCIA'
            DataSource = DS_Cliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 16
            Top = 58
            Width = 59
            Height = 13
            Caption = 'Tipo Doc.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBText13: TDBText
            Left = 77
            Top = 58
            Width = 80
            Height = 13
            DataField = 'NOMBRE_TIPO_DOC'
            DataSource = DS_Cliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 161
            Top = 58
            Width = 50
            Height = 13
            Caption = 'N'#250'mero:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBText14: TDBText
            Left = 213
            Top = 58
            Width = 70
            Height = 13
            DataField = 'NUMERO_DOC'
            DataSource = DS_Cliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 289
            Top = 58
            Width = 26
            Height = 13
            Caption = 'IVA:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBText15: TDBText
            Left = 316
            Top = 58
            Width = 147
            Height = 13
            DataField = 'NOMBRE_TIPO_IVA'
            DataSource = DS_Cliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 469
            Top = 58
            Width = 55
            Height = 13
            Caption = 'Cuit/Cuil:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object DBText16: TDBText
            Left = 526
            Top = 58
            Width = 104
            Height = 13
            DataField = 'CUIT_CUIL'
            DataSource = DS_Cliente
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object DBMemoCPB_Observacion: TDBMemo
          Left = 66
          Top = 126
          Width = 633
          Height = 46
          DataField = 'OBSERVACION'
          DataSource = DS_Comprobante
          ScrollBars = ssVertical
          TabOrder = 3
        end
        object PanelFechas: TPanel
          Left = 64
          Top = 82
          Width = 637
          Height = 42
          BevelOuter = bvNone
          TabOrder = 2
          object PanelFechaEnviado: TPanel
            Left = 127
            Top = 0
            Width = 127
            Height = 42
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object lblTituloFecha_Enviado: TLabel
              Left = 11
              Top = 1
              Width = 45
              Height = 13
              Caption = 'Enviado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object EKDBDateEnviado: TEKDBDateTimePicker
              Left = 11
              Top = 14
              Width = 105
              Height = 21
              Date = 40717.702273252320000000
              Time = 40717.702273252320000000
              TabOrder = 0
              DataField = 'FECHA_ENVIADA'
              DataSource = DS_Comprobante
            end
          end
          object PanelFechaEmision: TPanel
            Left = 0
            Top = 0
            Width = 127
            Height = 42
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object lblTituloFecha_Emision: TLabel
              Left = 12
              Top = 1
              Width = 44
              Height = 13
              Caption = 'Emisi'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object EKDBDateEmision: TEKDBDateTimePicker
              Left = 11
              Top = 14
              Width = 105
              Height = 21
              Date = 40717.702273252320000000
              Time = 40717.702273252320000000
              TabOrder = 0
              DataField = 'FECHA'
              DataSource = DS_Comprobante
            end
          end
        end
      end
      object PanelEditar_Producto: TPanel
        Left = 5
        Top = 182
        Width = 874
        Height = 301
        Align = alClient
        TabOrder = 1
        object PanelEditar_ProductoInfo: TPanel
          Left = 1
          Top = 259
          Width = 872
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            872
            41)
          object Label30: TLabel
            Left = 593
            Top = 3
            Width = 111
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Cantidad Productos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 729
            Top = 3
            Width = 58
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Total Final'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object btnEliminarProducto: TButton
            Left = 164
            Top = 1
            Width = 145
            Height = 18
            Caption = 'Quitar (Ctrl+Delete)'
            TabOrder = 0
            OnClick = btnEliminarProductoClick
          end
          object editTotalProductos: TEdit
            Left = 592
            Top = 17
            Width = 129
            Height = 19
            Anchors = [akTop, akRight]
            AutoSize = False
            BevelInner = bvNone
            BevelOuter = bvNone
            BiDiMode = bdRightToLeft
            Color = 12189695
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object editTotalFinal: TEdit
            Left = 728
            Top = 17
            Width = 129
            Height = 19
            Anchors = [akTop, akRight]
            AutoSize = False
            BevelInner = bvNone
            BevelOuter = bvNone
            BiDiMode = bdRightToLeft
            Color = 12189695
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
        end
        object DBGridEditar_Producto: TDBGrid
          Left = 164
          Top = 1
          Width = 709
          Height = 258
          Align = alClient
          Color = 14606012
          DataSource = DS_CpbProducto
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = Popup_Producto
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridEditar_ProductoDrawColumnCell
          OnKeyDown = DBGridEditar_ProductoKeyDown
          OnKeyUp = DBGridEditar_ProductoKeyUp
          Columns = <
            item
              Expanded = False
              FieldName = '_CodBarra'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. Barra'
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_Nombre'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Nombre'
              Width = 192
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_Medida'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Medida'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_Color'
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = 'Color'
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DETALLE'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Width = 309
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Alignment = taCenter
              Title.Caption = 'Cantidad'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE_UNITARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Precio Unitario'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE_FINAL'
              Title.Alignment = taCenter
              Title.Caption = 'Precio Final'
              Width = 100
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 163
          Height = 258
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel1'
          TabOrder = 2
          DesignSize = (
            163
            258)
          object DBTxtCodBarra: TDBText
            Left = 3
            Top = 120
            Width = 153
            Height = 13
            DataField = '_CodBarra'
            DataSource = DS_CpbProducto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBTxtNombre: TDBText
            Left = 3
            Top = 150
            Width = 153
            Height = 13
            DataField = '_Nombre'
            DataSource = DS_CpbProducto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBTxtMedida: TDBText
            Left = 3
            Top = 165
            Width = 153
            Height = 13
            DataField = '_Medida'
            DataSource = DS_CpbProducto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBTxtColor: TDBText
            Left = 3
            Top = 180
            Width = 153
            Height = 13
            DataField = '_Color'
            DataSource = DS_CpbProducto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBTxtMarca: TDBText
            Left = 3
            Top = 135
            Width = 153
            Height = 13
            DataField = '_Marca'
            DataSource = DS_CpbProducto
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ImagenProducto: TDBImage
            Left = 3
            Top = 4
            Width = 156
            Height = 112
            Anchors = [akTop]
            DataField = 'IMAGEN'
            DataSource = DS_Imagen
            Stretch = True
            TabOrder = 0
            TabStop = False
          end
          object ImagenSucursal: TDBImage
            Left = 3
            Top = 4
            Width = 156
            Height = 112
            Anchors = [akTop]
            DataField = 'LOGO'
            Stretch = True
            TabOrder = 1
            TabStop = False
          end
        end
      end
    end
    object PanelVer: TPanel
      Left = 0
      Top = 0
      Width = 884
      Height = 488
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 348
        Top = 5
        Width = 6
        Height = 478
        Align = alRight
      end
      object PanelListaCpb: TPanel
        Left = 5
        Top = 5
        Width = 343
        Height = 478
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBGridListaCpb: TDBGrid
          Left = 0
          Top = 0
          Width = 343
          Height = 478
          Align = alClient
          Color = 14606012
          DataSource = DS_VerCpb
          DefaultDrawing = False
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridListaCpbDrawColumnCell
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha'
              Width = 87
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PUNTO_VENTA'
              Title.Alignment = taCenter
              Title.Caption = 'PV'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'NUMERO_CPB'
              Title.Alignment = taCenter
              Title.Caption = 'N'#250'mero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUCURSAL'
              Title.Alignment = taCenter
              Title.Caption = 'Sucursal'
              Width = 133
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROVEEDOR'
              Title.Alignment = taCenter
              Title.Caption = 'Proveedor'
              Width = 127
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLIENTE'
              Title.Alignment = taCenter
              Title.Caption = 'Cliente'
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FECHA_ENVIADA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha Envio'
              Visible = True
            end>
        end
      end
      object PanelCpbActual: TPanel
        Left = 354
        Top = 5
        Width = 525
        Height = 478
        Align = alRight
        BevelOuter = bvNone
        Constraints.MinWidth = 525
        TabOrder = 1
        object PanelCpbActual_Producto: TPanel
          Left = 0
          Top = 0
          Width = 525
          Height = 316
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object DBGridCpbActual_Producto: TDBGrid
            Left = 0
            Top = 0
            Width = 525
            Height = 178
            Align = alClient
            Color = 14606012
            DataSource = DS_VerCpb_Producto
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = PopupGridProducto
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridCpbActual_ProductoDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'CODIGO_BARRA'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'd. Barra'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRODUCTO'
                Title.Alignment = taCenter
                Title.Caption = 'Producto'
                Width = 217
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MEDIDA'
                Title.Alignment = taCenter
                Title.Caption = 'Medida'
                Width = 51
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CANTIDAD'
                Title.Alignment = taCenter
                Title.Caption = 'Cantidad'
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IMPORTE_FINAL'
                Title.Alignment = taCenter
                Title.Caption = 'Importe Final'
                Width = 95
                Visible = True
              end>
          end
          object PanelCpbActual_ProductoDetalle: TPanel
            Left = 0
            Top = 178
            Width = 525
            Height = 138
            Align = alBottom
            BevelOuter = bvNone
            BorderWidth = 2
            TabOrder = 1
            object GroupBox2: TGroupBox
              Left = 2
              Top = 2
              Width = 521
              Height = 134
              Align = alClient
              Caption = '  Detalle Producto  '
              TabOrder = 0
              object DBMemoCpbActual_Producto: TDBMemo
                Left = 57
                Top = 86
                Width = 462
                Height = 46
                Align = alClient
                DataField = 'DETALLE'
                DataSource = DS_VerCpb_Producto
                TabOrder = 0
              end
              object Panel2: TPanel
                Left = 2
                Top = 86
                Width = 55
                Height = 46
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
                object DBImage1: TDBImage
                  Left = 0
                  Top = 0
                  Width = 55
                  Height = 46
                  Align = alClient
                  DataField = 'IMAGEN'
                  DataSource = DS_VerCpb_Producto
                  Stretch = True
                  TabOrder = 0
                end
              end
              object Panel3: TPanel
                Left = 2
                Top = 15
                Width = 517
                Height = 71
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 2
                object Panel4: TPanel
                  Left = 0
                  Top = 0
                  Width = 517
                  Height = 71
                  Align = alClient
                  BevelOuter = bvNone
                  Color = clScrollBar
                  TabOrder = 0
                  object DBText21: TDBText
                    Left = 76
                    Top = 5
                    Width = 105
                    Height = 13
                    DataField = 'CODIGO_BARRA'
                    DataSource = DS_VerCpb_Producto
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label32: TLabel
                    Left = 7
                    Top = 5
                    Width = 68
                    Height = 13
                    Caption = 'C'#243'd. Barra:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label33: TLabel
                    Left = 182
                    Top = 5
                    Width = 50
                    Height = 13
                    Caption = 'Nombre:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object DBText26: TDBText
                    Left = 233
                    Top = 5
                    Width = 281
                    Height = 13
                    DataField = 'PRODUCTO'
                    DataSource = DS_VerCpb_Producto
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label34: TLabel
                    Left = 30
                    Top = 22
                    Width = 45
                    Height = 13
                    Caption = 'Medida:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object DBText27: TDBText
                    Left = 76
                    Top = 22
                    Width = 173
                    Height = 13
                    DataField = 'MEDIDA'
                    DataSource = DS_VerCpb_Producto
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label35: TLabel
                    Left = 270
                    Top = 22
                    Width = 36
                    Height = 13
                    Caption = 'Color:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object DBText28: TDBText
                    Left = 307
                    Top = 22
                    Width = 208
                    Height = 13
                    DataField = 'COLOR'
                    DataSource = DS_VerCpb_Producto
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label36: TLabel
                    Left = 21
                    Top = 39
                    Width = 54
                    Height = 13
                    Caption = 'Tipo Art.:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object DBText29: TDBText
                    Left = 76
                    Top = 39
                    Width = 173
                    Height = 13
                    DataField = 'TIPO_ARTICULO'
                    DataSource = DS_VerCpb_Producto
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label37: TLabel
                    Left = 258
                    Top = 39
                    Width = 48
                    Height = 13
                    Caption = 'Art'#237'culo:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object DBText30: TDBText
                    Left = 307
                    Top = 39
                    Width = 208
                    Height = 13
                    DataField = 'ARTICULO'
                    DataSource = DS_VerCpb_Producto
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label38: TLabel
                    Left = 36
                    Top = 55
                    Width = 39
                    Height = 13
                    Caption = 'Marca:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object DBText31: TDBText
                    Left = 77
                    Top = 55
                    Width = 220
                    Height = 13
                    DataField = 'MARCA'
                    DataSource = DS_VerCpb_Producto
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                end
              end
            end
          end
        end
        object PanelCpbActual_Info: TPanel
          Left = 0
          Top = 316
          Width = 525
          Height = 162
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 1
          object GroupBoxCpbActual_Info: TGroupBox
            Left = 2
            Top = 2
            Width = 521
            Height = 158
            Align = alClient
            Caption = '  Datos Comprobante  '
            TabOrder = 0
            DesignSize = (
              521
              158)
            object DBTxtMonto: TDBText
              Left = 332
              Top = 130
              Width = 177
              Height = 25
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              DataField = 'IMPORTE_TOTAL'
              DataSource = DS_VerCpb
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 463
              Top = 118
              Width = 46
              Height = 13
              Alignment = taRightJustify
              Caption = 'Importe'
            end
            object lblDatos_Proveedor: TLabel
              Left = 8
              Top = 19
              Width = 64
              Height = 13
              Caption = 'Proveedor:'
            end
            object DBTxtDatos_Proveedor: TDBText
              Left = 78
              Top = 19
              Width = 427
              Height = 13
              Color = 14342874
              DataField = 'PROVEEDOR'
              DataSource = DS_VerCpb
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object lblDatos_Cliente: TLabel
              Left = 27
              Top = 19
              Width = 45
              Height = 13
              Caption = 'Cliente:'
            end
            object DBTxtDatos_Cliente: TDBText
              Left = 78
              Top = 19
              Width = 427
              Height = 13
              Color = 14342874
              DataField = 'CLIENTE'
              DataSource = DS_VerCpb
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label19: TLabel
              Left = 18
              Top = 36
              Width = 54
              Height = 13
              Caption = 'F. Carga:'
            end
            object DBText33: TDBText
              Left = 78
              Top = 36
              Width = 80
              Height = 13
              Color = 14342874
              DataField = 'FECHA'
              DataSource = DS_VerCpb
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label31: TLabel
              Left = 191
              Top = 36
              Width = 50
              Height = 13
              Alignment = taRightJustify
              Caption = 'F. Envio:'
            end
            object DBText34: TDBText
              Left = 244
              Top = 36
              Width = 80
              Height = 13
              Color = 14342874
              DataField = 'FECHA_ENVIADA'
              DataSource = DS_VerCpb
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object DBMemoCpbActual_Info: TDBMemo
              Left = 8
              Top = 61
              Width = 505
              Height = 55
              Anchors = [akLeft, akTop, akRight]
              DataField = 'OBSERVACION'
              DataSource = DS_VerCpb
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  object PanelInfo: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 19
    Align = alTop
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    object lblTipoComprobante: TLabel
      Left = 1
      Top = 1
      Width = 874
      Height = 17
      Align = alCustom
      Alignment = taCenter
      Anchors = [akLeft, akRight]
      AutoSize = False
      Caption = 'REMITO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCantidadRegistros: TLabel
      Left = 1
      Top = 1
      Width = 134
      Height = 17
      Align = alLeft
      Caption = 'lblCantidadRegistros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object StaticTxtBaja: TStaticText
      Left = 774
      Top = 1
      Width = 109
      Height = 17
      Align = alRight
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'ANULADO'
      Color = 6974207
      ParentColor = False
      TabOrder = 0
    end
    object StaticTxtConfirmado: TStaticText
      Left = 665
      Top = 1
      Width = 109
      Height = 17
      Align = alRight
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'CONFIRMADO'
      Color = 10025203
      ParentColor = False
      TabOrder = 1
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
            Item = btnConfirmar
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnBaja
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
            Item = btnImprimir
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnEnviarMail
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
    Left = 796
    Top = 370
    DockControlHeights = (
      0
      0
      0
      52)
    object btnBuscar: TdxBarLargeButton
      Caption = 'F1 - Buscar'
      Category = 0
      Hint = 'F1 - Buscar'
      Visible = ivAlways
      ImageIndex = 29
      OnClick = btnBuscarClick
      AutoGrayScale = False
    end
    object btnEnviarMail: TdxBarLargeButton
      Align = iaRight
      Caption = 'Mail'
      Category = 0
      Hint = 
        'Enviar mail al cliente/proveedor con el comprobante adjunto en P' +
        'DF'
      Visible = ivAlways
      ImageIndex = 76
      OnClick = btnEnviarMailClick
    end
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
      Caption = 'F5 - Anular'
      Category = 0
      Hint = 'Da de baja un registro'
      Visible = ivAlways
      ImageIndex = 25
      OnClick = btnBajaClick
      AutoGrayScale = False
    end
    object btnReactivar: TdxBarLargeButton
      Caption = 'F5 - Reactivar'
      Category = 0
      Hint = 'Reactiva un registro'
      Visible = ivAlways
      ImageIndex = 24
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
      Caption = 'Comprobante'
      Category = 0
      Hint = 'Imprimir el comprobante seleccionado'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = btnImprimirClick
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
    object btnConfirmar: TdxBarLargeButton
      Caption = 'F4 - Confirmar'
      Category = 0
      Hint = 'Confirmar el comprobante seleccionado'
      Visible = ivAlways
      ImageIndex = 5
      OnClick = btnConfirmarClick
      AutoGrayScale = False
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'btnNuevo'
        'btnModificar'
        'btnBuscar'
        'btnEnviarMail'
        'btnBaja'
        'btnSalir'
        'btnReactivar'
        'btnImprimir'
        'btnConfirmar')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'btnGuardar'
        'btnCancelar')
    end
  end
  object ATeclasRapidas: TActionManager
    Left = 796
    Top = 420
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
    object AConfirmar: TAction
      Caption = 'AConfirmar'
      ShortCut = 115
      OnExecute = AConfirmarExecute
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
  object ImageListEntidad: TImageList
    Height = 48
    Width = 48
    Left = 707
    Top = 370
    Bitmap = {
      494C010102000400040030003000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C00000003000000001001000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000744A8E2553420000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      944A8E210A0DC900EA04E9048D21000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000944A8E21EA08
      C9000B096E1912329642F12D0B0DEA08323E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000954A8E250A0DE9040B098E19
      122E9642D84EF852F856D84E543A6E19EA046D1D000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000954EAE250A0DE9040B09AF1D33329642B74A
      B74A964A954674429546964A964A753ED1290B0D0A0D123A0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B2D29252925
      2925292529252925292529252925ED4570567056AC3929252925292529252925
      29252925292529252925CE390000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000954E8E250A0DE9042C11D025553AB74AB74A964A753E333A
      1136F0353342944EF85A333E333A743E743E13326E19EA044C15D75A00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000630C000000000000
      00000000000000000000210421044B62327F327F0C5200000000000000000000
      0000000000000000000000000821000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B652CF290B0DEA042C11F1299542D84ED84EB74A9546533E1136D031CF31
      F0395446D656B6565B6B195F744A123A333A743E3236D1292B0DEA0811360000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000002104000021040000
      00002104000021044208630C2104CE72337F527FF07221080000000021040000
      0000210400002104000000002925000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000F75A323A
      8F212C114D151232B64A195B195BF852B64A7442333A123A113E113AF035CF31
      F0395446B552954E3A671963F85A964E123A1136533E543A11368E1DE9044C15
      D656000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000E71C000000002104
      00002104630C84108410A5148310107B337F527F337FC41C0000000000002104
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000195F95463332F129122E
      743E19575B675B5F195BB74E9546533E743E123AAF2DCF31744A113EF039CF31
      CF318E298E25AF29F02DB64EF75AB652944E333E1136123A533E3236D1292C11
      E904F02D00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000021042104
      630C84108410C618C618E71CE424527F527F737F527FCA412104210421042104
      21042104210421042104C6180000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000D84E964A9642F8525B637C6B
      7C67395FB752744A323A954AB74E95461136F02D8E214B19CF31323E6D1D6D1D
      F131954AF856F95A954AAF25F02D7446744A5342113AF0351232333A333A1232
      8E21EA082B0DB552000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008410630C8410
      A514C618E71CE71C292529254635337F737F527F737FAF664208841084108410
      841084108410A514841000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039675B679D6FDE77BE739C6BF856
      5446323E954EF85EF85AB752F8529546333AF0318E212B192B197446B64EF85A
      395F5B67F85AD75A5A67F856323E4D158E25F039F035AE318E2DD0311136333A
      1136D0292C11EA04CF2D00000000000000000000000000000000544A534A544A
      544A744E744E96529652B656B656D65AD75AD75AD75AD75AD75A744EC618C618
      E71C082108214A294A2929250A52337F737F737F337F327784100821E71C0821
      E71C0821E71CC618CE3900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000005A6B9C6FBE77BE737C6BF756
      7B6FBD779C737B6F5B67B752D84E9546323A1136744AB64E195F5A675B5FF756
      33428D296C252B1DD035F85A3A67F85AF1312B116C216C254B1D0A194C21CF29
      1136123A12328E1DEA080B0D944E00000000000000000000D95A9752B752D856
      D95A1A5F1B633B635C677C6B7D6F9D739E739E739D739E739E739D737C6B534A
      8D3129254A296B2D8D31E720CF6E737F737F737F737F737F26294A294A294A29
      29256B2D00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000005A677B6F9D6F9C6F
      DE7BBE779D6F5B63F856B64A954E195F5B5F5A6B5B673963954E123A8D2D6C25
      4C250A196D254C2133423342744A19635B5FD756AF250B110A150A192B1D4C25
      8E21CF2912321136AF294C15EA04CF2D0000000000001A63D95A974EB752D856
      D95A1A5F1A5F3B635B677C6B7D6F7D6F9E739E73BE739E739E739D6F7D6F7C6B
      186372528A39252D8939262D737F737F737F737F757F747FEB4908216B2D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000039637C6F
      BE73395F195BF95A395F5A675B673967F75A744A113AF035AE2D2B214B21C810
      0A19C7108D296D25744A54463342AE31B6523A673A67964E6E19E90C2B1DAF2D
      D0358E29AF29F02DF12DF02D6D1D4C190000000000000000D95A974E9752D856
      D856D95A1A5F1B631B635C677C6B7D6F9D739E739E73BE73BE739E739D6F7C6B
      7156423D423D6241624183493177337F317B327B757F757F8C62863D0E460000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      B752195B7C6F9D737B6FB7525342F139113ED0358D2D4C256C29C7102B210919
      6C294C25AE2D8E29954E744AF039AE2D323E3342D7563A675B6795464C152B15
      D035323EAF29F02DCF2911363242F7560000000000000000D95A974E974EB752
      D856D95A1A5F1A5F1B635C675C677C6B7D6F7D6F9D739D739D739D739D73386B
      B25E63416241624162418349CE6EEF7210771177EF720F73295A82498249A545
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009C73FF7FF85E113ED035AE318D294C256C294B21AE316C298D2D2B1D
      4B21E814AE2DCF31F756744A323EAE2D113EF139AE31F035D75A5B6B5B5F333A
      0A0D4C211136744AF85E0000000000000000000000000000D95A9752974EB752
      D856D856F95A1A5F1A5F1B635C677C6B7C6B7D6F7D6F9D6F9D6F9D73B25E6341
      62416241624162416245A4491177337F337F527FF0726C62A549433D62418249
      C449000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B6FD656AE316C298D2DAE2DCF35F0398D29D0352B1D4B21E814
      6C254C21CF31CF31F85A744A5342CF3133423242AE2D09196C25334218637B6F
      333E54460000000000000000000000000000000000000000D95A9752764E974E
      B752D856D856F95E1A5F1A631B635C675C677C6B7C6B7C6F7D6F7C6F0C520A52
      63416241624182458349CF6E557F337F337F327F327F337F1277C45182456245
      C24D2C4E00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000B552113ECF35113ACF358D2DAE2D2B218D2D8D2DAE318D29
      8D290A19F035123A1863954E744AD035113E3242113E4C2509192B1DF039F85E
      000000000000000000000000000000000000000000000000F95A9752764E974E
      9752B752D856D856F95E1A5F1A631B635B675C677C6B7C6B5A6B935AEC4DEB49
      EA4D824582458245AE6A757F337F337F527F327F527F337F337FCE6EC24DC24D
      C24DE75100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000B552113E8D2DAE318D2DAE31F039CF35CF358D2D8E2DE814
      6C252B1DF035113E5A67954E954E123A32425346F1396C258D294C25F0390000
      000000000000000000000000000000000000000000000000F85EB752764E764E
      774EB752B752D856D956F95E1A5F1B633B635B675B677C6B5B673A671967925A
      8745423D824582453377557F527F527F527F337F557F337F337F1077E351C24D
      C251E65100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000B552113ECF31113E113ECF35F0396C29AE2D4C25F039AE2D
      CF316C25F03953427B6FB652B652323E113E744A744A6C294B218D29113E0000
      0000000000000000000000000000000000000000000000000000D8565546764E
      764E974EB752B856D856D956F95E1A5F1A5F1B635B675B675B675A6B7C6B7C6B
      3A67C64982498249767F337F527F527F337F747F757F967F757F327BE355C151
      E159085200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000B552744AD035CF31AE31AE2DCF35CF35113ECF31F1392B21
      6D290A19123A54469C6FB652F8565446323E54465346F039AE2D8E2133420000
      00000000000000000000000000000000000000000000000000001A63974E5546
      764E764E774E9752B852D856D956F95E1A5F1A5F1B631B635B675C675B675A6B
      7C6B2B56C24DE555977F337F737F737F747F757F967F987FB97F977F255EE255
      015A8B5E00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000B552323EAE31113A113E113E113ECF31CF354B21F039AE31
      F039CF313342744A7C6B3336964A744A113E954E954EF0358D29D03553460000
      000000000000000000000000000000000000000000000000000000005B679752
      5546764E764E774E9752B752D856F95AF95E1A5F1A5F1A633B635B675B675C67
      7C6B6F5AC2514962977F337F737F747F757F967F987FB87FBA7FBB7F6862E155
      015E905A00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000B656744A113E113ECF31CF31CF35CF31323E323E3342D035
      CF310A193342954E5A67122E132E743E323E3242944E744AD031AE29744A0000
      0000000000000000000000000000000000000000000000000000000000000000
      00003B63D95A974E774EB752B856F95ABE737D6F1A5F7C6BDE7B5B675B677C6B
      7C6FD362C2518A66967F737F337F757F967F987FB87FBA7FBB7FDC7F6862E155
      015A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000D656323EAE31113A113A5342744A113E323E8D2DD0358E2D
      3342CF315446B652395F3332753E964A744AB64E95525342F02D113E944E0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B631A5FDE7BDE7BDE7B7C6BDE7BDE7BFF7F7C6B3A67
      5A6B0000C25145620F77AC6EAB6A0F73977FB87FBA7FBB7FDC7FDC7F255E015A
      025A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000D656954E5342744A323EF035F035AE31113E113A744A3242
      954EAE2D744AF756395F4D153436D8525342333EF756D7561136D03195520000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000557B53771173F16E5377767B557B00000000
      00000000E351E255C251C151255E245E967FB97FBB7FDC7FDD7F7677025A015A
      485A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000D75A744ACF31F035CF35323E744A744A944E323E744A6D29
      5446F039744AF85A9D73D84EF95AF85AD752954E964E964E74429546B6560000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000317BEF76117B127BF076F076337F00000000
      00000000E651C151C151C151C151E155AB6ABB7FBB7FDD7FFD7FAA6A015A015E
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000F85E954E323E964E944E53465342CF353242113A944E5342
      744A744AB652195F9D73185F9D73195F954A7442195FF85A333E123AF7560000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000004F52117B557F327F327F337F557F107700000000
      000000006A5EC151E155E155E155E155025A5377DD7FDD7F0F73015E015E215E
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000F85EF85A32423242F035113A32425346955274469552323E
      53425446F85E1963BD77195FBD773A67D752533ED752F85AF856964EF85A0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007056337B557F337F327F327F327F527F557F11730000
      000000000000E155E155E155E159015AE1554462767BAA6E215E015E215EAB66
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000001863D75A123A744A53467446944E3342744A3342B652D756
      F75A95523A675B67BD771963BD775B67D7529546F856F856964A7442F85E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000757F757F337F337F327F327F327F527F527F557FD462
      000000000000255AE155015AE159015A015A015A2162215E215E215E22620000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000019633A67944E5346F035113A744A964EF75AF85A195F964E
      F75AF0353A675B6B5B5F1963BD775B6BF85A743EB64AF95A195F954619630000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000767F337F337F337F337F337F557F527F527F337F136F
      0000000000000000015A015A015A015A015E015E215E215E215E216200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000019633A67944E964E954AD756D756B652D756744AD75A9552
      3963F85A3A677C6F9C6F7B6F9D739C6F1A5FF95A1A5F195FF85695463A670000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000D462767F337F337F747F747F757F747F967F747F737F547B
      00000000000000000000025A015A215E015E215E215E21624362000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000039679C733A67F75A7442323E323E964ED75A185F3A673963
      3A67F75A39639D73BD739D739D739D73F95A7542B74E5B677C67F8565B670000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000006F5A767F557F747F757F757F767F967F977F977F967F1277
      000000000000000000000000EE6A876644624462886600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000039679D73F85AF85674469552D756185F3A67D756195FD756
      3963195F7C6F9D73DE77DE77BE77BD777C6F395FF95A3A5B1A5F3A5F5B6B0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000006D5E967F757F767F767F977F977F977F987FB87FB87F337B
      8445000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000003A67BE777C6F5B6B195F964E5346323EF85A185F3A673A63
      7B6B39639D73DE77DF7BDE7BDE7BDE7B3A5FF8563A5F9D739C6B1A5F9C6F0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A7412956977F967F977F977F987F987FB97FB97FB97F787BF172
      A349A54500000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000005A6BDE7B7C6F5B5F9552954A954A964E185F3A677B6BF95A
      7B6B39639D73DE7BFF7FFF7FFF7FFF7F9C6B195BF8525B639D6F9D739C730000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008349A34D977F977F987FB87FB87FB97FB97F34772A5684458349
      8445A34900000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000005A6BFF7F9D737C6F3A67F75A964E323E7446F95A9C6F9C6F
      BD77DE77BE77DE7BFF7FFF7FFF7FFF7F9C6B5B637C679C6B9C6B7C6B9D730000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008249C24D1173B97FB97FB97FBA7F987B6D5E634163416245A549
      E751085200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007B6FFF7FFF7F9D731A5FF75AB64AD75639637C6FBD779C6F
      3A63B74E543ED129F95ABE77FF7FFF7FBE733A5F3A5B5B67BE73BE77BD730000
      0000000000000000000000000000000000000000000000000000000000000000
      000000004F52C24DC251AB66BA7FBA7FBA7F7677E951624162418245A449E651
      2956075600000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007B6FFF7FFF7FDE77BD73BE77BE777B6BF85695423336F229
      D125F229F2294D114C11B021B64A9D6FFF7FFF7FBE739C6B9D6F9D6FBD770000
      0000000000000000000000000000000000000000000000000000000000000000
      000000006F5AC151E255265AB97FBA7F136FC649624182458249A349E64D2756
      6A5E265A00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000007B6FFF7FFF7F7C6FF95A743ED129AF1DAF1DD025F2293332
      553A763E9646753ED129AF1DB021122E96427C67DF7BFF7FFF7FDF7BBD770000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E155015A025A53778E628445824582458249C24DE5510756295A
      6B62485A00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000F756B7529542333A122EB021F229543AB646D84EF956F956
      F852B74EB646763E543A1332D025D025132E763ED84E7C67DF7BFF7FBE770000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006762015A215EC44D8349824582498249C24DE3510656485A8A62
      8A62F16E00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B64EF852D84E195B5B635B675B675B633A5B1957F852
      D84EB646763E533E132EF12DB0218F214D158E193436F9567C67BE739C730000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000E555C24D824582458249C24DC24DE3510556465E69628B66
      6762000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000195F39637C677C6B7C673A5F3A5B1957F852B74E
      B646553A543A132EF12DB0218F214D110B0DEA04C9000B09F129395F5A6B0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000006D5E83498249C24DC24DE255E2550356465E68628B668866
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000003963F856F852195B1957D84ED74EB646
      753E543A1332F229AF256E1D4D150B0DEA080B096D1DF031954A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000656C24DC24DE255E2550356255E67626862AA6A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F8569546964A9642753E
      34361332D129AF256E1D8E21CF297442F75A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000AE660356E155015A025A4562CC6A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000095463236
      1232113A7442D752000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000300000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00000000
      0000000000000000FFFFFFC7FFFFFFFFFFFFFFFF000000000000000000000000
      FFFFFE03FFFFFFFFFFFFFFFF000000000000000000000000FFFFF000FFFFFFFF
      FFFFFFFF000000000000000000000000FFFF80007FFFFFFFFFFFFFFF00000000
      0000000000000000FFFC00001FFFFFFFF0000007000000000000000000000000
      FFE0000007FFFFFFE0000003000000000000000000000000FF00000003FFFFFF
      E0000003000000000000000000000000F800000000FFFFFFE000000700000000
      0000000000000000C0000000007FFFFFF0000007000000000000000000000000
      80000000001FFFFFF000000F00000000000000000000000000000000000FF000
      0000000F000000000000000000000000800000000003E0000000007F00000000
      0000000000000000E00000000001C000000003FF000000000000000000000000
      F80000000001E000000003FF000000000000000000000000FE0000000001E000
      000001FF000000000000000000000000FF800000000FE000000000FF00000000
      0000000000000000FFC00000007FE0000000007F000000000000000000000000
      FFE0000001FFE0000000007F000000000000000000000000FFE0000003FFE000
      0000007F000000000000000000000000FFE0000003FFF0000000007F00000000
      0000000000000000FFE0000003FFF0000000007F000000000000000000000000
      FFE0000003FFF8000000007F000000000000000000000000FFE0000003FFFF00
      000000FF000000000000000000000000FFE0000003FFFFF0008000FF00000000
      0000000000000000FFE0000003FFFFFC078000FF000000000000000000000000
      FFE0000003FFFFFC078001FF000000000000000000000000FFE0000003FFFFF8
      078001FF000000000000000000000000FFE0000003FFFFF003C001FF00000000
      0000000000000000FFE0000003FFFFF001C003FF000000000000000000000000
      FFE0000003FFFFF001E007FF000000000000000000000000FFE0000003FFFFE0
      01F00FFF000000000000000000000000FFE0000003FFFFE001F83FFF00000000
      0000000000000000FFE0000003FFFFE000FFFFFF000000000000000000000000
      FFE0000003FFFFC0007FFFFF000000000000000000000000FFE0000003FFFFC0
      007FFFFF000000000000000000000000FFE0000003FFFFC0007FFFFF00000000
      0000000000000000FFE0000003FFFF80007FFFFF000000000000000000000000
      FFE0000003FFFF80007FFFFF000000000000000000000000FFE0000003FFFFC0
      007FFFFF000000000000000000000000FFE0000003FFFFC0007FFFFF00000000
      0000000000000000FFF0000003FFFFE000FFFFFF000000000000000000000000
      FFF8000003FFFFE001FFFFFF000000000000000000000000FFFE00000FFFFFF0
      03FFFFFF000000000000000000000000FFFFC000FFFFFFF80FFFFFFF00000000
      0000000000000000FFFFF81FFFFFFFFFFFFFFFFF000000000000000000000000
      FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFF
      FFFFFFFF00000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ZQ_VerCpb: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_VerCpbAfterScroll
    SQL.Strings = (
      'select  cpb.*, suc.nombre as sucursal, pro.nombre as proveedor,'
      '        pro.cuit_cuil as cuit_proveedor, cli.nombre as cliente,'
      
        '        cli.numero_doc as cliente_documento, cli.cuit_cuil as cl' +
        'iente_cuil,'
      '        est.descripcion as estado'
      'from comprobante cpb'
      'left join sucursal suc on (cpb.id_sucursal = suc.id_sucursal)'
      'left join empresa pro on (cpb.id_proveedor = pro.id_empresa)'
      'left join persona cli on (cpb.id_cliente = cli.id_persona)'
      
        'left join comprobante_estado est on (cpb.id_comp_estado = est.id' +
        '_comp_estado)'
      'where (cpb.id_tipo_cpb = 20)'
      'order by cpb.fecha desc'
      '')
    Params = <>
    Left = 34
    Top = 52
    object ZQ_VerCpbID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_VerCpbID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_VerCpbID_PROVEEDOR: TIntegerField
      FieldName = 'ID_PROVEEDOR'
    end
    object ZQ_VerCpbID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object ZQ_VerCpbID_TIPO_CPB: TIntegerField
      FieldName = 'ID_TIPO_CPB'
    end
    object ZQ_VerCpbID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object ZQ_VerCpbID_COMP_ESTADO: TIntegerField
      FieldName = 'ID_COMP_ESTADO'
    end
    object ZQ_VerCpbOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
      Size = 500
    end
    object ZQ_VerCpbIMPORTE_TOTAL: TFloatField
      FieldName = 'IMPORTE_TOTAL'
      currency = True
    end
    object ZQ_VerCpbENCABEZADO: TStringField
      FieldName = 'ENCABEZADO'
      Size = 500
    end
    object ZQ_VerCpbPIE: TStringField
      FieldName = 'PIE'
      Size = 500
    end
    object ZQ_VerCpbFECHA: TDateTimeField
      FieldName = 'FECHA'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object ZQ_VerCpbFECHA_ENVIADA: TDateField
      FieldName = 'FECHA_ENVIADA'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object ZQ_VerCpbFECHA_ANULADO: TDateField
      FieldName = 'FECHA_ANULADO'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object ZQ_VerCpbSUCURSAL: TStringField
      FieldName = 'SUCURSAL'
      Size = 200
    end
    object ZQ_VerCpbPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 200
    end
    object ZQ_VerCpbCUIT_PROVEEDOR: TStringField
      FieldName = 'CUIT_PROVEEDOR'
      Size = 30
    end
    object ZQ_VerCpbCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 200
    end
    object ZQ_VerCpbCLIENTE_DOCUMENTO: TStringField
      FieldName = 'CLIENTE_DOCUMENTO'
      Size = 50
    end
    object ZQ_VerCpbCLIENTE_CUIL: TStringField
      FieldName = 'CLIENTE_CUIL'
      Size = 30
    end
    object ZQ_VerCpbESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 50
    end
    object ZQ_VerCpbPUNTO_VENTA: TIntegerField
      FieldName = 'PUNTO_VENTA'
      DisplayFormat = '0000'
    end
    object ZQ_VerCpbNUMERO_CPB: TIntegerField
      FieldName = 'NUMERO_CPB'
      DisplayFormat = '00000000'
    end
  end
  object ZQ_VerCpb_Producto: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select cpbd.*, cab.cod_corto as cod_cabecera, cab.nombre as prod' +
        'ucto, cab.imagen,'
      
        '       med.medida, color.nombre as color, marca.nombre_marca as ' +
        'marca,'
      
        '       art.descripcion as articulo, tart.descripcion as tipo_art' +
        'iculo,'
      '       pro.cod_corto as cod_producto, pro.codigo_barra,'
      
        '       pro.precio_costo, pro.precio_venta, pro.coef_ganancia, pr' +
        'o.coef_descuento,'
      '       pro.impuesto_interno, pro.impuesto_iva'
      'from comprobante_detalle cpbd'
      'left join producto pro on (cpbd.id_producto = pro.id_producto)'
      
        'left join producto_cabecera cab on (pro.id_prod_cabecera = cab.i' +
        'd_prod_cabecera)'
      'left join marca on (cab.id_marca = marca.id_marca)'
      'left join color on (cab.color = color.id_color)'
      'left join articulo art on (cab.id_articulo = art.id_articulo)'
      
        'left join tipo_articulo tart on (art.id_tipo_articulo = tart.id_' +
        'tipo_articulo)'
      'left join medida med on (pro.id_medida = med.id_medida)'
      'where cpbd.id_comprobante = :id_comprobante')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 770
    Top = 217
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_VerCpb_ProductoID_COMPROBANTE_DETALLE: TIntegerField
      FieldName = 'ID_COMPROBANTE_DETALLE'
    end
    object ZQ_VerCpb_ProductoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_VerCpb_ProductoID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
    end
    object ZQ_VerCpb_ProductoDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 200
    end
    object ZQ_VerCpb_ProductoCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object ZQ_VerCpb_ProductoIMPORTE_FINAL: TFloatField
      FieldName = 'IMPORTE_FINAL'
      currency = True
    end
    object ZQ_VerCpb_ProductoPORC_DESCUENTO: TFloatField
      FieldName = 'PORC_DESCUENTO'
    end
    object ZQ_VerCpb_ProductoBASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
      currency = True
    end
    object ZQ_VerCpb_ProductoIMPORTE_UNITARIO: TFloatField
      FieldName = 'IMPORTE_UNITARIO'
      currency = True
    end
    object ZQ_VerCpb_ProductoPORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
    object ZQ_VerCpb_ProductoCOD_CABECERA: TStringField
      FieldName = 'COD_CABECERA'
    end
    object ZQ_VerCpb_ProductoPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Size = 100
    end
    object ZQ_VerCpb_ProductoIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object ZQ_VerCpb_ProductoMEDIDA: TStringField
      FieldName = 'MEDIDA'
      Size = 30
    end
    object ZQ_VerCpb_ProductoCOLOR: TStringField
      FieldName = 'COLOR'
      Size = 30
    end
    object ZQ_VerCpb_ProductoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object ZQ_VerCpb_ProductoARTICULO: TStringField
      FieldName = 'ARTICULO'
      Size = 200
    end
    object ZQ_VerCpb_ProductoTIPO_ARTICULO: TStringField
      FieldName = 'TIPO_ARTICULO'
      Size = 200
    end
    object ZQ_VerCpb_ProductoCOD_PRODUCTO: TStringField
      FieldName = 'COD_PRODUCTO'
    end
    object ZQ_VerCpb_ProductoCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 40
    end
    object ZQ_VerCpb_ProductoPRECIO_COSTO: TFloatField
      FieldName = 'PRECIO_COSTO'
    end
    object ZQ_VerCpb_ProductoPRECIO_VENTA: TFloatField
      FieldName = 'PRECIO_VENTA'
    end
    object ZQ_VerCpb_ProductoCOEF_GANANCIA: TFloatField
      FieldName = 'COEF_GANANCIA'
    end
    object ZQ_VerCpb_ProductoCOEF_DESCUENTO: TFloatField
      FieldName = 'COEF_DESCUENTO'
    end
    object ZQ_VerCpb_ProductoIMPUESTO_IVA: TFloatField
      FieldName = 'IMPUESTO_IVA'
    end
    object ZQ_VerCpb_ProductoIMPUESTO_INTERNO: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
    end
    object ZQ_VerCpb_ProductoCANTIDAD_RECIBIDA: TFloatField
      FieldName = 'CANTIDAD_RECIBIDA'
    end
    object ZQ_VerCpb_ProductoCANTIDAD_ALMACENADA: TFloatField
      FieldName = 'CANTIDAD_ALMACENADA'
    end
    object ZQ_VerCpb_ProductoID_STOCK_PRODUCTO: TIntegerField
      FieldName = 'ID_STOCK_PRODUCTO'
    end
    object ZQ_VerCpb_ProductoIMPORTE_VENTA: TFloatField
      FieldName = 'IMPORTE_VENTA'
    end
  end
  object DS_VerCpb: TDataSource
    DataSet = ZQ_VerCpb
    Left = 34
    Top = 100
  end
  object DS_VerCpb_Producto: TDataSource
    DataSet = ZQ_VerCpb_Producto
    Left = 770
    Top = 265
  end
  object EKOrd_VerCpb: TEKOrdenarGrilla
    Grilla = DBGridListaCpb
    Filtros = <
      item
        TituloColumna = 'Fecha'
        Visible = True
      end
      item
        TituloColumna = 'PV'
        Visible = True
      end
      item
        TituloColumna = 'N'#250'mero'
        Visible = True
      end
      item
        TituloColumna = 'Sucursal'
        Visible = True
      end
      item
        TituloColumna = 'Proveedor'
        Visible = True
      end
      item
        TituloColumna = 'Cliente'
        Visible = True
      end
      item
        TituloColumna = 'Importe'
        Visible = True
      end
      item
        TituloColumna = 'Fecha Envio'
        Visible = True
      end>
    NombreGuardar = 'ABM_RM_VerCpb'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 34
    Top = 160
  end
  object EKOrd_VerCpb_Producto: TEKOrdenarGrilla
    Grilla = DBGridCpbActual_Producto
    Filtros = <
      item
        TituloColumna = 'C'#243'd. Barra'
        Visible = True
      end
      item
        TituloColumna = 'Producto'
        Visible = True
      end
      item
        TituloColumna = 'Medida'
        Visible = True
      end
      item
        TituloColumna = 'Cantidad'
        Visible = True
      end
      item
        TituloColumna = 'Importe Final'
        Visible = True
      end>
    NombreGuardar = 'ABM_RM_VerProductos'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    PopUpGrilla = PopupGridProducto
    Left = 770
    Top = 314
  end
  object EKListadoEntidad: TEKListadoSQL
    Modelo = DM.EKModelo
    CampoBuscar = 'busqueda'
    CampoClave = 'id'
    TituloVentana = 'Buscar'
    Left = 469
    Top = 32
  end
  object ZQ_Proveedor: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select emp.id_empresa as id, emp.*, pro.nombre_provincia, iva.no' +
        'mbre_tipo_iva,'
      
        '       iva.abreviatura as cod_iva, tipo.descripcion as tipo_Empr' +
        'esa'
      'from empresa emp'
      
        'left join tipo_empresa tipo on (emp.id_tipo_empresa = tipo.id_ti' +
        'po_empresa)'
      'left join tipo_iva iva on (emp.id_tipo_iva = iva.id_tipo_iva)'
      'left join provincia pro on (emp.id_provincia = pro.id_provincia)'
      'where emp.id_empresa = :id_empresa')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        ParamType = ptUnknown
      end>
    Left = 117
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_empresa'
        ParamType = ptUnknown
      end>
    object ZQ_ProveedorID: TIntegerField
      FieldName = 'ID'
    end
    object ZQ_ProveedorID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object ZQ_ProveedorID_PROVINCIA: TIntegerField
      FieldName = 'ID_PROVINCIA'
    end
    object ZQ_ProveedorID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_ProveedorID_TIPO_EMPRESA: TIntegerField
      FieldName = 'ID_TIPO_EMPRESA'
    end
    object ZQ_ProveedorCUIT_CUIL: TStringField
      FieldName = 'CUIT_CUIL'
      Size = 30
    end
    object ZQ_ProveedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_ProveedorDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 200
    end
    object ZQ_ProveedorLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 200
    end
    object ZQ_ProveedorCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
    end
    object ZQ_ProveedorTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 100
    end
    object ZQ_ProveedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object ZQ_ProveedorPAGINA_WEB: TStringField
      FieldName = 'PAGINA_WEB'
      Size = 200
    end
    object ZQ_ProveedorBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ProveedorDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
    object ZQ_ProveedorDESCRIPCION_PRIVADA: TStringField
      FieldName = 'DESCRIPCION_PRIVADA'
      Size = 1000
    end
    object ZQ_ProveedorNOMBRE_PROVINCIA: TStringField
      FieldName = 'NOMBRE_PROVINCIA'
      Size = 50
    end
    object ZQ_ProveedorNOMBRE_TIPO_IVA: TStringField
      FieldName = 'NOMBRE_TIPO_IVA'
      Size = 50
    end
    object ZQ_ProveedorCOD_IVA: TStringField
      FieldName = 'COD_IVA'
      Size = 10
    end
    object ZQ_ProveedorTIPO_EMPRESA: TStringField
      FieldName = 'TIPO_EMPRESA'
      Size = 100
    end
    object ZQ_ProveedorCODIGO_CORTO: TIntegerField
      FieldName = 'CODIGO_CORTO'
    end
  end
  object ZQ_Cliente: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select cli.id_persona as id, cli.*, pro.nombre_provincia, iva.no' +
        'mbre_tipo_iva,'
      '       iva.abreviatura as cod_iva, doc.nombre_tipo_doc'
      'from persona cli'
      
        'left join tipo_documento doc on (cli.id_tipo_doc = doc.id_tipo_d' +
        'oc)'
      'left join tipo_iva iva on (cli.id_tipo_iva = iva.id_tipo_iva)'
      'left join provincia pro on (cli.id_provincia = pro.id_provincia)'
      'where cli.id_persona = :id_persona')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_persona'
        ParamType = ptUnknown
      end>
    Left = 613
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_persona'
        ParamType = ptUnknown
      end>
    object ZQ_ClienteID: TIntegerField
      FieldName = 'ID'
    end
    object ZQ_ClienteID_PERSONA: TIntegerField
      FieldName = 'ID_PERSONA'
    end
    object ZQ_ClienteID_PROVINCIA: TIntegerField
      FieldName = 'ID_PROVINCIA'
    end
    object ZQ_ClienteID_TIPO_DOC: TIntegerField
      FieldName = 'ID_TIPO_DOC'
    end
    object ZQ_ClienteID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_ClienteNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_ClienteDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 200
    end
    object ZQ_ClienteLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 200
    end
    object ZQ_ClienteCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
    end
    object ZQ_ClienteTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 100
    end
    object ZQ_ClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object ZQ_ClienteFECHA_NACIMIENTO: TDateField
      FieldName = 'FECHA_NACIMIENTO'
    end
    object ZQ_ClienteNUMERO_DOC: TStringField
      FieldName = 'NUMERO_DOC'
      Size = 50
    end
    object ZQ_ClienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object ZQ_ClienteBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ClienteDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
    object ZQ_ClienteCUIT_CUIL: TStringField
      FieldName = 'CUIT_CUIL'
      Size = 30
    end
    object ZQ_ClienteDESCUENTO_ESPECIAL: TFloatField
      FieldName = 'DESCUENTO_ESPECIAL'
    end
    object ZQ_ClienteNOMBRE_PROVINCIA: TStringField
      FieldName = 'NOMBRE_PROVINCIA'
      Size = 50
    end
    object ZQ_ClienteNOMBRE_TIPO_IVA: TStringField
      FieldName = 'NOMBRE_TIPO_IVA'
      Size = 50
    end
    object ZQ_ClienteCOD_IVA: TStringField
      FieldName = 'COD_IVA'
      Size = 10
    end
    object ZQ_ClienteNOMBRE_TIPO_DOC: TStringField
      FieldName = 'NOMBRE_TIPO_DOC'
    end
    object ZQ_ClienteCODIGO_CORTO: TIntegerField
      FieldName = 'CODIGO_CORTO'
    end
  end
  object DS_Proveedor: TDataSource
    DataSet = ZQ_Proveedor
    Left = 197
    Top = 56
  end
  object DS_Cliente: TDataSource
    DataSet = ZQ_Cliente
    Left = 677
    Top = 32
  end
  object ZQ_Comprobante: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select cpb.*'
      'from comprobante cpb'
      'where cpb.id_comprobante = :id_comprobante')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 112
    Top = 217
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_ComprobanteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_ComprobanteID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_ComprobanteID_PROVEEDOR: TIntegerField
      FieldName = 'ID_PROVEEDOR'
    end
    object ZQ_ComprobanteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object ZQ_ComprobanteID_TIPO_CPB: TIntegerField
      FieldName = 'ID_TIPO_CPB'
    end
    object ZQ_ComprobanteID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object ZQ_ComprobanteID_COMP_ESTADO: TIntegerField
      FieldName = 'ID_COMP_ESTADO'
    end
    object ZQ_ComprobanteID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_TIPO_MOVIMIENTO'
    end
    object ZQ_ComprobanteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 50
    end
    object ZQ_ComprobanteFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object ZQ_ComprobanteOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
      Size = 500
    end
    object ZQ_ComprobanteBASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
    end
    object ZQ_ComprobanteSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object ZQ_ComprobantePORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
    object ZQ_ComprobanteIMPORTE_IVA: TFloatField
      FieldName = 'IMPORTE_IVA'
    end
    object ZQ_ComprobantePORC_DESCUENTO: TFloatField
      FieldName = 'PORC_DESCUENTO'
    end
    object ZQ_ComprobanteIMPORTE_DESCUENTO: TFloatField
      FieldName = 'IMPORTE_DESCUENTO'
    end
    object ZQ_ComprobanteIMPORTE_TOTAL: TFloatField
      FieldName = 'IMPORTE_TOTAL'
    end
    object ZQ_ComprobanteIMPORTE_VENTA: TFloatField
      FieldName = 'IMPORTE_VENTA'
    end
    object ZQ_ComprobanteENCABEZADO: TStringField
      FieldName = 'ENCABEZADO'
      Size = 500
    end
    object ZQ_ComprobantePIE: TStringField
      FieldName = 'PIE'
      Size = 500
    end
    object ZQ_ComprobanteFECHA_COBRADA: TDateField
      FieldName = 'FECHA_COBRADA'
    end
    object ZQ_ComprobanteFECHA_ENVIADA: TDateField
      FieldName = 'FECHA_ENVIADA'
    end
    object ZQ_ComprobanteFECHA_IMPRESA: TDateField
      FieldName = 'FECHA_IMPRESA'
    end
    object ZQ_ComprobanteFECHA_VENCIMIENTO: TDateField
      FieldName = 'FECHA_VENCIMIENTO'
    end
    object ZQ_ComprobantePUNTO_VENTA: TIntegerField
      FieldName = 'PUNTO_VENTA'
      DisplayFormat = '0000'
    end
    object ZQ_ComprobanteNUMERO_CPB: TIntegerField
      FieldName = 'NUMERO_CPB'
      DisplayFormat = '00000000'
    end
    object ZQ_ComprobanteFECHA_ANULADO: TDateField
      FieldName = 'FECHA_ANULADO'
    end
  end
  object DS_Comprobante: TDataSource
    DataSet = ZQ_Comprobante
    Left = 109
    Top = 265
  end
  object ZQ_NumeroCpb: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select t.*'
      'from tipo_comprobante t'
      'where t.id_tipo_cpb = :id_tipo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_tipo'
        ParamType = ptUnknown
      end>
    Left = 381
    Top = 33
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_tipo'
        ParamType = ptUnknown
      end>
    object ZQ_NumeroCpbULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
    end
    object ZQ_NumeroCpbID_TIPO_CPB: TIntegerField
      FieldName = 'ID_TIPO_CPB'
    end
    object ZQ_NumeroCpbNOMBRE_TIPO_CPB: TStringField
      FieldName = 'NOMBRE_TIPO_CPB'
      Size = 50
    end
    object ZQ_NumeroCpbSIGNO_COBRO_PAGO: TIntegerField
      FieldName = 'SIGNO_COBRO_PAGO'
    end
    object ZQ_NumeroCpbSIGNO_STOCK: TIntegerField
      FieldName = 'SIGNO_STOCK'
    end
    object ZQ_NumeroCpbSIGNO_CTA_CTE: TIntegerField
      FieldName = 'SIGNO_CTA_CTE'
    end
    object ZQ_NumeroCpbBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
  end
  object ZQ_CpbProducto: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_CpbProductoAfterScroll
    SQL.Strings = (
      'select pr.*'
      'from comprobante_detalle pr'
      'where pr.id_comprobante = :id_comprobante')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 201
    Top = 217
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_CpbProductoID_COMPROBANTE_DETALLE: TIntegerField
      FieldName = 'ID_COMPROBANTE_DETALLE'
    end
    object ZQ_CpbProductoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_CpbProductoID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
    end
    object ZQ_CpbProducto_CodBarra: TStringField
      FieldKind = fkLookup
      FieldName = '_CodBarra'
      LookupDataSet = CD_Producto
      LookupKeyFields = 'idProducto'
      LookupResultField = 'codigoBarra'
      KeyFields = 'ID_PRODUCTO'
      Size = 40
      Lookup = True
    end
    object ZQ_CpbProducto_Nombre: TStringField
      FieldKind = fkLookup
      FieldName = '_Nombre'
      LookupDataSet = CD_Producto
      LookupKeyFields = 'idProducto'
      LookupResultField = 'producto'
      KeyFields = 'ID_PRODUCTO'
      Size = 100
      Lookup = True
    end
    object ZQ_CpbProducto_Medida: TStringField
      FieldKind = fkLookup
      FieldName = '_Medida'
      LookupDataSet = CD_Producto
      LookupKeyFields = 'idProducto'
      LookupResultField = 'medida'
      KeyFields = 'ID_PRODUCTO'
      Size = 30
      Lookup = True
    end
    object ZQ_CpbProducto_Color: TStringField
      FieldKind = fkLookup
      FieldName = '_Color'
      LookupDataSet = CD_Producto
      LookupKeyFields = 'idProducto'
      LookupResultField = 'color'
      KeyFields = 'ID_PRODUCTO'
      Size = 30
      Lookup = True
    end
    object ZQ_CpbProducto_Marca: TStringField
      FieldKind = fkLookup
      FieldName = '_Marca'
      LookupDataSet = CD_Producto
      LookupKeyFields = 'idProducto'
      LookupResultField = 'marca'
      KeyFields = 'ID_PRODUCTO'
      Size = 50
      Lookup = True
    end
    object ZQ_CpbProducto_TipoArticulo: TStringField
      FieldKind = fkLookup
      FieldName = '_TipoArticulo'
      LookupDataSet = CD_Producto
      LookupKeyFields = 'idProducto'
      LookupResultField = 'tipoArticulo'
      KeyFields = 'ID_PRODUCTO'
      Size = 200
      Lookup = True
    end
    object ZQ_CpbProducto_Articulo: TStringField
      FieldKind = fkLookup
      FieldName = '_Articulo'
      LookupDataSet = CD_Producto
      LookupKeyFields = 'idProducto'
      LookupResultField = 'articulo'
      KeyFields = 'ID_PRODUCTO'
      Size = 200
      Lookup = True
    end
    object ZQ_CpbProductoDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 200
    end
    object ZQ_CpbProductoCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
      OnChange = calcularImporteProducto
    end
    object ZQ_CpbProductoIMPORTE_UNITARIO: TFloatField
      FieldName = 'IMPORTE_UNITARIO'
      OnChange = calcularImporteProducto
    end
    object ZQ_CpbProductoIMPORTE_FINAL: TFloatField
      FieldName = 'IMPORTE_FINAL'
    end
    object ZQ_CpbProductoID_STOCK_PRODUCTO: TIntegerField
      FieldName = 'ID_STOCK_PRODUCTO'
    end
  end
  object DS_CpbProducto: TDataSource
    DataSet = ZQ_CpbProducto
    Left = 201
    Top = 265
  end
  object ZP_CpbID: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_COMPROBANTE_ID'
    Left = 30
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    object ZP_CpbIDID: TIntegerField
      FieldName = 'ID'
    end
  end
  object DS_Producto: TDataSource
    DataSet = CD_Producto
    Left = 280
    Top = 265
  end
  object CD_Producto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 216
    object CD_Producto_idProducto: TIntegerField
      FieldName = 'idProducto'
    end
    object CD_Producto_producto: TStringField
      FieldName = 'producto'
      Size = 100
    end
    object CD_Producto_medida: TStringField
      FieldName = 'medida'
      Size = 30
    end
    object CD_Producto_marca: TStringField
      FieldName = 'marca'
      Size = 50
    end
    object CD_Producto_tipoArticulo: TStringField
      FieldName = 'tipoArticulo'
      Size = 200
    end
    object CD_Producto_articulo: TStringField
      FieldName = 'articulo'
      Size = 200
    end
    object CD_Producto_codigoBarra: TStringField
      FieldName = 'codigoBarra'
      Size = 40
    end
    object CD_Producto_codProducto: TStringField
      FieldName = 'codProducto'
    end
    object CD_Producto_codCabecera: TStringField
      FieldName = 'codCabecera'
    end
    object CD_Producto_precioVenta: TFloatField
      FieldName = 'precioVenta'
    end
    object CD_Producto_color: TStringField
      FieldName = 'color'
      Size = 30
    end
  end
  object Popup_Producto: TPopupMenu
    Images = FPrincipal.Iconos_Menu_16
    Left = 360
    Top = 215
    object PopItemProducto_Agregar: TMenuItem
      Caption = 'Agregar Producto (F1)'
      ImageIndex = 14
      OnClick = PopItemProducto_AgregarClick
    end
    object PopItemProducto_Quitar: TMenuItem
      Caption = 'Quitar Producto'
      ImageIndex = 15
      OnClick = PopItemProducto_QuitarClick
    end
  end
  object ZQ_Imagen: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select Pc.imagen'
      'from PRODUCTO_CABECERA Pc'
      
        'left join producto pr on (pc.id_prod_cabecera = pr.id_prod_cabec' +
        'era)'
      'where pr.id_producto = :id_producto')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_producto'
        ParamType = ptUnknown
      end>
    Left = 445
    Top = 215
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_producto'
        ParamType = ptUnknown
      end>
    object ZQ_ImagenIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
  end
  object DS_Imagen: TDataSource
    DataSet = ZQ_Imagen
    Left = 445
    Top = 265
  end
  object PopupGridProducto: TPopupMenu
    Images = FPrincipal.Iconos_Menu_16
    Left = 656
    Top = 263
    object PopUpItem_ProductoOcultarDetalle: TMenuItem
      Caption = 'Ocultar Detalle'
      OnClick = PopUpItem_ProductoOcultarDetalleClick
    end
  end
  object ZQ_BuscarMail: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select e.email'
      'from empresa e')
    Params = <>
    Left = 445
    Top = 321
    object ZQ_BuscarMailEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
  end
  object EKSuma_Productos: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'cantidad'
      end
      item
        Operacion = goSum
        NombreCampo = 'IMPORTE_FINAL'
      end>
    DataSet = ZQ_CpbProducto
    SumListChanged = EKSuma_ProductosSumListChanged
    Left = 549
    Top = 216
  end
  object EKOrd_EditarProducto: TEKOrdenarGrilla
    Grilla = DBGridEditar_Producto
    Filtros = <
      item
        TituloColumna = 'C'#243'd. Barra'
        Visible = True
      end
      item
        TituloColumna = 'Nombre'
        Visible = True
      end
      item
        TituloColumna = 'Medida'
        Visible = True
      end
      item
        TituloColumna = 'Color'
        Visible = True
      end
      item
        TituloColumna = 'Detalle'
        Visible = True
      end
      item
        TituloColumna = 'Cantidad'
        Visible = True
      end
      item
        TituloColumna = 'Precio Unitario'
        Visible = True
      end
      item
        TituloColumna = 'Precio Final'
        Visible = True
      end>
    NombreGuardar = 'ABM_RM_EditarProductos'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = False
    PopUpGrilla = Popup_Producto
    Left = 653
    Top = 217
  end
  object DS_ImagenSuc: TDataSource
    DataSet = DM.ZQ_Sucursal
    Left = 30
    Top = 266
  end
  object EKBuscar: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Fecha'
        Campo = 'FECHA'
        Tabla = 'comprobante '
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Fecha Envio'
        Campo = 'FECHA_ENVIADA'
        Tabla = 'comprobante '
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'PV'
        Campo = 'PUNTO_VENTA'
        Tabla = 'comprobante '
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'N'#250'mero'
        Campo = 'NUMERO_CPB'
        Tabla = 'comprobante '
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Sucursal'
        Campo = 'nombre'
        Tabla = 'sucursal'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Cliente'
        Campo = 'nombre'
        Tabla = 'persona'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Proveedor'
        Campo = 'nombre'
        Tabla = 'empresa'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Importe Final'
        Campo = 'IMPORTE_TOTAL'
        Tabla = 'comprobante '
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_VerCpb
    SQL.Strings = (
      'select  cpb.*, suc.nombre as sucursal, pro.nombre as proveedor,'
      '        pro.cuit_cuil as cuit_proveedor, cli.nombre as cliente,'
      
        '        cli.numero_doc as cliente_documento, cli.cuit_cuil as cl' +
        'iente_cuil,'
      '        est.descripcion as estado'
      'from comprobante cpb'
      'left join sucursal suc on (cpb.id_sucursal = suc.id_sucursal)'
      'left join empresa pro on (cpb.id_proveedor = pro.id_empresa)'
      'left join persona cli on (cpb.id_cliente = cli.id_persona)'
      
        'left join comprobante_estado est on (cpb.id_comp_estado = est.id' +
        '_comp_estado)'
      'where (cpb.id_tipo_cpb = 20)'
      'order by cpb.fecha desc')
    SQL_Select.Strings = (
      'select  cpb.*, suc.nombre as sucursal, pro.nombre as proveedor,'
      '        pro.cuit_cuil as cuit_proveedor, cli.nombre as cliente,'
      
        '        cli.numero_doc as cliente_documento, cli.cuit_cuil as cl' +
        'iente_cuil,'
      '        est.descripcion as estado')
    SQL_From.Strings = (
      'from comprobante cpb'
      'left join sucursal suc on (cpb.id_sucursal = suc.id_sucursal)'
      'left join empresa pro on (cpb.id_proveedor = pro.id_empresa)'
      'left join persona cli on (cpb.id_cliente = cli.id_persona)'
      
        'left join comprobante_estado est on (cpb.id_comp_estado = est.id' +
        '_comp_estado)')
    SQL_Where.Strings = (
      'where (cpb.id_tipo_cpb = 20)')
    SQL_Orden.Strings = (
      'order by cpb.fecha desc')
    UsarWhereOriginal = EK_Con_Where
    Left = 29
    Top = 320
  end
end
