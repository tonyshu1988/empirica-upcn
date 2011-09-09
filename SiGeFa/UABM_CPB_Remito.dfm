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
    Width = 876
    Height = 477
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object PanelEditar: TPanel
      Left = 0
      Top = 0
      Width = 876
      Height = 477
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
        Width = 866
        Height = 177
        Align = alTop
        TabOrder = 0
        DesignSize = (
          866
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
        Width = 866
        Height = 290
        Align = alClient
        TabOrder = 1
        object PanelEditar_ProductoInfo: TPanel
          Left = 1
          Top = 248
          Width = 864
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            864
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
          Width = 701
          Height = 247
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
          Height = 247
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel1'
          TabOrder = 2
          DesignSize = (
            163
            247)
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
      Width = 876
      Height = 477
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
        Left = 340
        Top = 5
        Width = 6
        Height = 467
        Align = alRight
      end
      object PanelListaCpb: TPanel
        Left = 5
        Top = 5
        Width = 335
        Height = 467
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBGridListaCpb: TDBGrid
          Left = 0
          Top = 0
          Width = 335
          Height = 467
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
        Left = 346
        Top = 5
        Width = 525
        Height = 467
        Align = alRight
        BevelOuter = bvNone
        Constraints.MinWidth = 525
        TabOrder = 1
        object PanelCpbActual_Producto: TPanel
          Left = 0
          Top = 0
          Width = 525
          Height = 305
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object DBGridCpbActual_Producto: TDBGrid
            Left = 0
            Top = 0
            Width = 525
            Height = 167
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
            Top = 167
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
          Top = 305
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
    Width = 876
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
      Left = 766
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
      Left = 657
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
      0000000000003600000028000000C00000003000000001002000000000000090
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
      0000000000000000000000000000000000000000000000000000A59C94007363
      4A009C9484000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000A5A5940073634200524218004A3100005239
      08004A3908006B63420000000000000000000000000000000000000000000000
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
      0000A5A5940073634200523910004A3100005A421000735A310094846300B5A5
      84008C7B5A005A42180052391000948C7B000000000000000000000000000000
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
      00000000000000000000000000000000000000000000ADA5940073634A005242
      18004A3908005A4210007363310094845A00B5A58400C6B59C00C6BDA500C6BD
      AD00C6B59C00A5947300735A3100523908006B5A390000000000000000000000
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
      00000000000000000000ADA59C00736B4A00524218004A3908005A4210007B6B
      39009C8C6300B5A58400BDAD9400BDAD9400B5A59400ADA58C00A59C8400ADA5
      8C00B5A59400B5A59400AD9C7B008C7352005A42180052421800948473000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A5A5A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A004A4A4A004A4A4A006B7B8C00849CAD00849CAD00636B73004A4A4A004A4A
      4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A00737373000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000ADA5
      9C0073634A00524218004A390800634A210084734A00AD947300BDAD9400BDAD
      9400B5A59400AD9C7B009C8C73008C846B00847B6B009C8C8400A5A59C00C6BD
      B5009C8C7B009C8C7300A59C7B00A59C7B009C846300735A3100523908006352
      2900BDB5B5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800000000000000000000000000000000000000000000000000000000000000
      000008080800080808005A94C60094CEFF0094CEFF006384A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004242420000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000B5ADA5007B7352005A4218005239
      0800634A21008C7B5200ADA58400C6B59C00C6B59C00BDAD9400ADA58C009C94
      7B008C846B00847363007B736300847B7300A5948C00B5B5AD00B5ADAD00DED6
      D600CEC6BD00A59C9400948473009C8C7300A59C7B00948C6B008C7352005A4A
      1800523910008C846B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      0800000000000808080000000000000000000808080000000000080808001010
      1000181818000808080073B5E7009CCEFF0094D6FF0084BDE700080810000000
      0000000000000808080000000000000000000808080000000000080808000000
      0000000000004A4A4A0000000000000000000000000000000000000000000000
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
      000000000000BDBDB500948C73007B634200634A21006B52290094846300B5AD
      9400CEC6B500CEC6B500C6BDA500B5AD9400A59C84009C8C7300948473008C84
      7B008C847300847B6B007B736300847B7300A5948C00ADADA500ADA59C00D6CE
      CE00CEC6C600C6BDB500B5A59C00948473008C846B009C947B00A59473008C84
      6B00736339004A39080063522900B5B5AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      3900000000000000000008080800000000000808080018181800212121002121
      2100292929001821210084C6F7009CCEFF0094D6FF009CCEFF00213139000000
      0000000000000000000008080800000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000CEC6BD00ADA5
      8C009C8C63008C7B520094845A00A59C7B00CEC6AD00DED6CE00DED6BD00CEC6
      B500BDAD9C00ADA58C009C947B00A59C7B00948473007B6B5A007B736300A59C
      94008C847B00847B73007B7363007B7363007363520073634A007B6B5200847B
      5A00B5AD9C00BDBDB500B5ADA500A5A59C009C8C7B008C846B00948473009C94
      7B00948C6B008C735200634A21004A390800847B5A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000808080008080800181818002121210021212100313131003131
      31003939390021394A0094D6FF0094D6FF009CDEFF0094D6FF00527384000808
      0800080808000808080008080800080808000808080008080800080808000808
      0800313131000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000C6B59C00B5A59400B5A5
      8400C6BDA500DED6C600E7DED600E7DECE00CECEBD00BDADA500A59C9400948C
      7300ADA59400BDAD9C00ADA58C008C846B00847B5A00736342005A5231007B73
      6300948C7B006B5A39006B5A39008C7B6300ADA59400C6BDAD00CEBDB500ADA5
      94007B6B4A00847B5A00A59C8C00A59C94009C9484008C847300847B6B009484
      63009C8C73009C8C73009484630073634200523910005A4A1800ADADA5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000212121001818180021212100292929003131310039393900393939004A4A
      4A004A4A4A0031526B009CCEFF009CDEFF0094D6FF009CDEFF007BADCE001010
      1000212121002121210021212100212121002121210021212100292929002121
      2100000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000CECECE00DED6CE00EFE7DE00F7F7
      EF00F7EFE700E7E7D600C6BDAD00A5948C00948C7B00ADA59C00C6BDBD00C6BD
      B500BDADA500C6BDA500ADA58C009C8C7300847B6300736342005A4A31005A4A
      3100A59C8C00B5AD9C00C6BDB500CECEBD00DED6CE00C6BDB500BDB5B500D6D6
      CE00C6BDAD00948C7B006B52290073634A00847B7300847B6B00736B63007363
      5A00847363008C846B009C8C73008C846B0084735200634A2100523908007B73
      5A00000000000000000000000000000000000000000000000000000000000000
      0000A59494009C949400A5949400A5949400A59C9C00A59C9C00B5A5A500B5A5
      A500B5ADAD00B5ADAD00B5B5B500BDB5B500BDB5B500BDB5B500BDB5B500BDB5
      B500A59C9C003131310031313100393939004242420042424200525252005252
      52004A4A4A005284A5009CCEFF009CDEFF009CDEFF009CCEFF0094CEEF002121
      2100424242003939390042424200393939004242420039393900313131007373
      7300000000000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000D6D6D600E7E7DE00F7EF
      EF00F7EFE700E7DED600BDBDAD00DEDEDE00EFEFEF00E7E7E700DEDEDE00DED6
      CE00BDADA500C6B59C00ADA58C00948C73008C846B00A59C9400B5AD9C00CEC6
      BD00D6D6CE00DED6BD00BDBDAD009C8C84006B635200635A4A005A4A39008473
      6B00C6BDB500D6CECE00C6BDB5008C7B63005A4A2100635A4200635A4A005A52
      390052423100635242007B7352008C846B009484730094846300736339005239
      10005A421800A5A59C000000000000000000000000000000000000000000CEB5
      B500BDA5A500BDADA500C6B5AD00CEB5B500D6C6BD00DEC6C600DECEC600E7D6
      CE00E7DED600EFDEDE00EFE7E700F7E7E700F7E7E700EFE7E700F7E7E700F7E7
      E700EFE7E700E7DED6009C9494006B6363004A4A4A00525252005A5A5A006B63
      6300393942007BB5DE009CDEFF009CDEFF009CDEFF009CDEFF009CDEFF00314A
      52005252520052525200525252004A4A4A005A5A5A0000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000D6D6
      CE00DEDEDE00EFE7DE00E7E7DE00F7F7F700F7EFEF00EFE7DE00DED6C600C6BD
      AD00B5AD9400ADA59C00CEC6BD00DED6BD00D6D6D600DED6CE00CECEC600ADA5
      9C00948473006B635A00635A4A0063524A00524231006B5A4A00635242009C8C
      84009C8C8400A59C9400CEC6C600DED6BD00BDB5AD007B6B4A005A4221005242
      2900524231005A4A390063524A00736342007B735200948463008C846B007B6B
      520063522900523908007B735A00000000000000000000000000D6C6C600CEB5
      B500BDA59C00BDADA500C6B5AD00CEB5B500D6C6BD00D6C6BD00DECEC600DED6
      CE00E7DED600EFDEDE00EFDEDE00F7E7E700F7E7E700F7EFE700F7E7E700F7E7
      E700EFE7DE00EFDEDE00E7DED600C6C6C600949CA50052637300294A5A004A63
      7300314A5A009CDEFF009CDEFF009CDEFF009CDEFF00ADDEFF00A5DEFF005A7B
      9400424242005A5A5A0000000000000000000000000000000000000000000000
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
      000000000000CECEC600E7DEDE00F7EFE700CECEBD00CEC6B500CEBDB500CECE
      BD00D6D6CE00DED6CE00CECECE00BDBDB500A59C94008C847300847B6B00736B
      5A005A4A42005A5242004231210052423100393121006B6352006B5A4A00A59C
      9400A5948C009C8C8400736B6300B5ADA500D6CECE00D6CECE00B5A59C00735A
      31004A3918005A4A39007B6B5A0084736B00736352007B6B5200847B5A008C7B
      5A00847B5A006B5A39006352310000000000000000000000000000000000CEB5
      B500BDA59C00BDA5A500C6B5AD00C6B5AD00CEB5B500D6C6BD00DEC6C600DEC6
      C600E7D6CE00E7DED600EFDEDE00EFE7E700F7E7E700F7E7E700F7EFE700F7EF
      E700F7E7E700EFE7DE00E7DED6008C9CAD0010527B0010527B00105A8400105A
      8400186394008CCEEF009CCEFF008CCEF70094CEF700ADDEFF00ADDEFF0063A5
      C60031637B0073848C0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000BDADA500CEC6B500E7DEDE00EFE7E700DEDE
      DE00BDADA5009C9484008C7B73008C847B0084736B006B635A0063524A00635A
      5200393121005A4A42004A423100635A520063524A00736B5A0073635200ADA5
      9C00A59C9400847B7300736B5A00948C7B009C8C8400BDB5AD00D6CECE00DED6
      CE00ADA58C00635229005A4A290084736B00948C7B007B6B5200847B5A007B73
      52008C846B00948C8400BDBDAD0000000000000000000000000000000000CEB5
      B500BDA59C00BDA59C00BDADA500C6B5AD00CEB5B500D6C6BD00D6C6BD00DEC6
      C600E7D6CE00E7D6CE00E7DED600EFDEDE00EFDEDE00EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700C6CED60094ADBD00185A8400105A8400105A8400105A
      84001863940073B5DE007BBDE70084C6EF008CC6EF007BBDE7007BC6E7004A8C
      B5001063940010639400296B8C00000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000E7E7E700FFFFFF00C6BD
      BD008C847B0084736B00736B63006B63520063524A00635A52005A524200736B
      6300635A52006B635A005A4A39005A52420042392900736B5A007B736300BDBD
      AD00A59C9400948C7B00736B5A008C847B008C7B7300736B6300847B6B00BDB5
      B500DED6D600DED6BD009C8C730052421800635242008C846B00A59C9400C6BD
      BD0000000000000000000000000000000000000000000000000000000000CEB5
      B500BDA5A500BDA59C00BDADA500C6B5AD00C6B5AD00CEBDB500D6C6BD00D6C6
      BD00DEC6C600E7D6CE00E7DED600E7DED600EFDEDE00EFDEDE00EFE7DE00EFE7
      DE00EFE7E70094ADBD00185A8400105A8400105A8400105A8400105A8400105A
      8C00216B94008CC6EF009CCEFF009CCEFF0094D6FF0084BDE700639CC600296B
      940018527B00105A840010639400217394000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000DEDEDE00B5B5
      AD00736B6300635A52006B635A00736B5A007B736B00847B73006B6352008473
      6B005A4A39005A52420042392900635A4A00635242007B7363007B736300C6BD
      B500A59C94009C9484007B7363009C8C8400948C8400736B5A004A423100635A
      4A009C8C8400C6C6C600DEDEDE009C8C7B00A5948C0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEB5
      B500BDA5A500B59C9C00BDA59C00BDADA500C6B5AD00C6B5AD00CEBDBD00D6C6
      BD00D6C6C600DEC6C600E7D6CE00E7D6CE00E7DED600E7DED600E7DEDE00EFDE
      DE00E7DEDE006384A5005284A500185A8400105A8400105A840010638C001863
      94007BB5DE00ADD6FF009CCEFF009CCEFF0094CEFF0094CEFF009CCEFF0094C6
      EF002173A50010638C00105A8C0010739C00638C9C0000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000ADAD
      A5008C847B007B736B008C8473007B736B006B635A00736B5A005A4A42006B63
      5A006B635A00736B63006B6352006B63520052423100847B6B0094847300C6C6
      C600ADA59C00A59C940084736B008C847B00948C84008C847B0063524A004A42
      31005A4A3900847B7300C6BDBD00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CEBD
      B500BDA5A500B59C9C00BDA59C00BDA5A500BDADA500C6B5AD00C6B5AD00CEBD
      BD00D6C6BD00D6C6C600DEC6C600DED6CE00E7D6CE00E7DED600E7DED600D6D6
      D6009CA5B500637B9C005A7B9400527B9C0010638C0010638C0010638C0073AD
      D600ADDEFF009CCEFF009CCEFF0094D6FF0094CEFF0094D6FF009CCEFF009CCE
      FF0073B5DE0010739C0010739C0010739C00397BA50000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000ADAD
      A5008C847B006B635A00736B63006B635A00736B6300847B73007B736B007B73
      6B006B635A0073635A0042392900635A4A005A4A3900847B6B008C847B00D6D6
      CE00ADA59C00ADA59C0094847300948C84009C948C008C7B7300635A4A006B63
      520063524A00847B730000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6BD
      BD00BDADA500B59C9C00B59C9C00BD9C9C00BDADA500BDADA500C6B5AD00CEB5
      AD00CEBDBD00D6C6BD00DEC6C600DECEC600DED6CE00DED6CE00E7DED600DED6
      CE00D6CECE00CEC6CE0094A5B50039638C0010527B0010638C0010638C009CCE
      EF00ADD6FF0094D6FF0094D6FF0094D6FF009CCEFF00ADD6FF009CCEFF009CCE
      FF0084C6EF00187BA50010739C001073A500317BA50000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000ADAD
      A5008C847B007B7363008C847B008C847B007B736B00847B7300635A5200736B
      5A0063524A00847B7300736B5A007B736300635A4A00847B73009C948400DEDE
      DE00B5ADA500B5ADA500948C7B008C847B00A59C9400A59C9400635A52005A52
      42006B6352008C847B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6B5AD00AD948C00B59C9C00B59C9C00BDA59C00BDADA500C6ADAD00C6B5
      AD00CEB5AD00CEBDBD00D6C6BD00D6C6BD00DEC6C600DED6CE00DED6CE00DED6
      CE00D6D6D600E7DED600E7DED600D6CECE00317394001063940010639400B5DE
      FF009CCEFF0094D6FF0094D6FF009CCEFF00A5DEFF00ADDEFF00B5E7FF00ADDE
      FF0094CEF700187BAD000873A500087BB5004284A50000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000ADAD
      A500A59C940084736B007B736300736B6300736B5A007B736B007B736B008C84
      7B007B7363008C7B73005A4A42006B5A52005242310094847300A5948C00E7E7
      DE00B5ADA500C6BDAD00A5948C00948C7B00A5948C009C948C00847B7300736B
      5A00736342009C8C840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6C6C600BDA59C00AD948C00B59C9C00B59C9C00BD9C9C00BDA5A500C6AD
      A500C6B5AD00CEB5AD00CEBDBD00D6C6BD00D6C6BD00DEC6C600DEC6C600DED6
      CE00E7D6CE00DED6CE00D6D6D600E7DED6005A8CAD0010739C00297BAD00BDE7
      FF009CCEFF009CDEFF009CDEFF00A5DEFF00ADDEFF00B5E7FF00C6E7FF00CEEF
      FF00BDE7FF00298CBD00107BAD000884B5005AA5BD0000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000ADAD
      A500948C7B00736B63008C8473008C847B008C847B008C847B007B7363007B73
      6B005A524200847B7300736B6300847B73007B7363009C8C8400A59C9400E7DE
      D6009C8C6B00B5A59400A59C94008C847B00ADA59C00ADA59C00847B6B006B63
      520084736B009C948C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DED6CE00BDA5A500AD948C00B59C9C00B59C9C00BD9C9C00BDA5
      A500BDADA500C6B5AD00CEBDB500CEBDBD00D6C6BD00D6C6BD00D6C6C600DECE
      C600DED6CE00DED6CE00E7D6CE00E7DED6007B9CB5001073A5004A94C600BDE7
      FF009CCEFF009CDEFF00A5DEFF00ADDEFF00B5E7FF00C6E7FF00C6EFFF00D6EF
      FF00DEEFFF00429CC600087BAD000884BD0084A5B50000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000B5AD
      AD00A59C94008C847B008C847B007B7363007B7363007B736B007B736300948C
      7B00948C7B009C8C840084736B007B736300524231009C8C8400ADA59C00D6D6
      CE0094845A009C845A00A59C7B00948C7B00948C8400A5A59C00A59C94008473
      6300736B5200A59C940000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DECEC600CEB5B500BDA59C00BD9C
      9C00BDADA500C6ADAD00CEBDB500F7EFE700EFDEDE00D6C6BD00E7DED600F7F7
      F700DED6CE00DED6CE00E7DED600E7DEDE009CB5C6001073A50052A5CE00B5E7
      FF009CDEFF009CCEFF00ADDEFF00B5E7FF00C6E7FF00C6EFFF00D6EFFF00DEEF
      FF00E7F7FF00429CC600087BAD000884B5000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000B5B5
      AD00948C7B00736B63008C8473008C8473009C948400A59C94008C847B00948C
      7B006B635A0084736B0073635A009C8C84007B736300A5948C00B5ADA500CECE
      BD009C8C6300AD9C7B00B5A59400A59C9400B5AD9C00ADA5A5009C948400847B
      5A008C847B00A5A59C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEC6C600D6C6BD00F7F7F700F7F7F700F7F7F700E7DED600F7F7F700F7F7
      F700FFFFFF00E7DED600D6CECE00D6D6D600000000001073A5002994C6007BC6
      EF0063ADDE005AADD6007BC6E700BDE7FF00C6EFFF00D6EFFF00DEEFFF00E7F7
      FF00E7F7FF00298CBD000884B5001084B5000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000B5B5
      AD00ADA59C009C948400A59C9400948C7B00847B6B00847B6B00736B63008C84
      7B008C847300A59C9400948C8400ADA59C00736B5A00A59C9400BDBDAD00CECE
      BD006B522900A58C6B00C6B5A5009C9484009C8C7B00BDBDAD00BDB5AD008C84
      6B0084736300ADA5A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADD6F7009CD6EF008CC6E7008CBDDE009CD6EF00B5DE
      F700ADD6F70000000000000000000000000000000000187BA500107BAD001073
      A5000873A500298CBD00218CBD00B5E7FF00CEEFFF00DEEFFF00E7F7FF00EFF7
      FF00B5DEEF001084B5000884B5004294B5000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000BDB5
      B500A59C94007B736300847B6B007B736B00948C7B00A59C9400A59C9400A5A5
      9C00948C7B00A59C94006B5A5200A5948C00847B7300A59C9400C6BDB500EFE7
      E700C6B59C00CEBDB500C6BDB500BDB5A500ADA59C00B5A59C00B5A59C00A59C
      8400ADA58C00B5ADAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008CCEF7007BBDEF008CC6F70094C6F70084BDEF0084BD
      EF009CCEFF0000000000000000000000000000000000317BA5000873A5000873
      A5000873A5000873A500087BAD005AADD600DEEFFF00DEEFFF00EFF7FF00EFFF
      FF0052ADD6000884B5000884BD00000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000C6BD
      BD00ADA59C00948C7B00B5A59C00A5A59C009C948C009C9484007B736B00948C
      84008C847300A5A59C009C948400A59C9400A59C9400B5ADA500CEC6BD00EFE7
      E700C6C6BD00EFE7E700CEC6BD00ADA59400A59C8400CEC6BD00C6BDB5009C8C
      7B0094847300BDBDAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B94A5008CC6F700ADD6FF0094CEFF0094CEFF009CCEFF00ADD6
      FF0084C6EF0000000000000000000000000000000000529CBD000873A500087B
      AD00087BAD00087BAD00087BAD001084B5009CD6EF00EFF7FF00EFF7FF007BC6
      E7000884BD000884BD00088CBD00000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000C6BD
      BD00C6BDB500948C8400948C8400847B6B008C847300948C84009C948C00ADA5
      A500A59C8C00ADA5A500948C7B009C948400A5948C00C6BDBD00CEC6C600EFEF
      EF00CEC6BD00EFEFEF00D6CECE00BDB5A5009C947B00BDB5A500C6BDB500C6BD
      AD00B5A59C00C6BDB50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000849CAD009CCEF700ADD6FF009CCEFF0094CEFF0094CEFF0094CEFF0094D6
      FF00ADD6FF008CC6E70000000000000000000000000000000000087BAD00087B
      AD00087BAD00087BB5000884B500087BAD002194C600B5DEF70052ADDE00088C
      BD000884BD00088CBD005AADCE00000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600BDB5B50094847300A59C94009C948C00A59C8C00A5A59C009C8C8400A59C
      94009C8C8400B5ADA500BDB5AD00BDBDB500ADA5A500D6CECE00DED6CE00EFEF
      EF00CEC6C600EFEFEF00DED6CE00BDB5A500ADA58C00C6BDAD00C6BDAD00B5A5
      9400A59C8400C6BDBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ADDEFF00ADDEFF009CCEFF009CCEFF0094CEFF0094CEFF0094CEFF0094D6
      FF0094D6FF00ADD6FF00A5B5C600000000000000000000000000298CB500087B
      AD000884B500087BB5000884B5000884B5000884B500088CC600088CBD00088C
      BD00088CBD00108CC60000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000CEC6
      C600D6CECE00A5A59C009C948C00847B6B008C847300A59C9400B5A59C00BDBD
      B500C6BDB500CEC6BD00B5A59C00BDBDB500847B6B00D6CECE00DED6D600DED6
      BD00CEC6C600EFEFEF00DED6D600C6BDB500A59C7B00B5AD9400CEBDB500CEC6
      BD00ADA58C00CEC6C60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5DEFF009CCEFF009CCEFF009CCEFF009CCEFF009CCEFF00ADD6FF0094D6
      FF0094D6FF009CCEFF009CC6DE00000000000000000000000000000000000884
      B5000884B5000884B5000884B5000884BD000884BD00088CBD00088CBD00088C
      BD00088CC6000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000CEC6
      C600D6CECE00A5A59C00B5A59C00ADA59400BDB5AD00BDB5AD00B5ADA500BDB5
      AD00A59C9400BDB5B500ADA5A500CECEC600C6BDB500D6CECE00E7DEDE00E7E7
      DE00DEDEDE00EFE7E700E7E7DE00D6C6BD00CEBDB500D6C6BD00CEC6BD00C6BD
      AD00ADA58C00D6CECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A5B5
      C600B5DEFF009CCEFF009CCEFF00A5DEFF00A5DEFF00ADDEFF00A5DEFF00B5E7
      FF00A5DEFF009CDEFF00A5D6F700000000000000000000000000000000000000
      00001084B5000884B500088CBD000884BD00088CBD00088CBD00088CC6001894
      C600000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000CECE
      CE00E7E7E700D6CECE00BDBDB500A59C8400948C7B00948C7B00B5A59C00BDB5
      B500C6C6BD00D6CECE00CECEC600D6CECE00BDBDB500CECEC600EFE7E700EFEF
      E700EFE7E700EFE7E700EFE7E700CEBDB500AD9C8400BDAD9C00DED6CE00E7DE
      CE00C6BDAD00DED6CE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B9C
      B500B5DEFF00ADD6FF00A5DEFF00ADDEFF00ADDEFF00B5DEFF00B5E7FF00BDE7
      FF00BDE7FF00B5E7FF0094C6EF00000000000000000000000000000000000000
      00000000000073BDD60039A5CE002194C6002194C60042A5CE00000000000000
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
      000000000000000000000000000000000000000000000000000000000000CECE
      CE00EFE7E700C6BDB500C6BDAD00A59C8C00ADA5A500BDB5AD00C6C6BD00D6CE
      CE00BDB5AD00CEC6BD00BDB5AD00CECEC600CEC6BD00E7DEDE00EFE7E700F7F7
      EF00F7F7EF00F7EFEF00EFEFEF00E7DEDE00CECEBD00CEBDB500D6CEB500D6C6
      BD00D6CEBD00DED6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B9C
      BD00B5E7FF00ADDEFF00B5DEFF00B5DEFF00BDE7FF00BDE7FF00BDE7FF00C6E7
      FF00C6EFFF00C6EFFF009CCEF70021638C000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000D6CE
      CE00F7EFEF00E7DEDE00DED6D600CEC6BD00B5A59C009C948C00948C7B00C6BD
      B500C6C6BD00D6CECE00D6CEC600DEDED600CECEC600EFE7E700F7F7EF00FFF7
      F700F7F7F700F7F7F700F7F7F700D6CEBD00C6BDAD00D6CEBD00EFE7E700E7E7
      D600D6C6BD00E7E7DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000396B84004A8C
      AD00BDE7FF00B5E7FF00BDE7FF00BDE7FF00C6E7FF00C6E7FF00CEEFFF00CEEF
      FF00CEEFFF00C6DEF7008CBDE700186B9400296B8C0000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600F7F7F700E7DEDE00DED6BD00ADA5A500ADA59400ADA59400B5A59C00C6C6
      BD00D6CECE00DEDED600CEBDB500DEDED600CECEC600EFE7E700F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7D600CEC6B500C6BDA500DED6C600EFE7
      DE00EFE7E700E7E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000018639400186B
      9C00BDE7FF00BDE7FF00C6E7FF00C6EFFF00C6EFFF00CEEFFF00CEEFFF00A5CE
      EF00528CAD0021638C001863940021638C00186B940000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000D6D6
      D600FFFFFF00EFE7E700E7DEDE00D6CECE00BDBDB500B5A59C00948C7B00A59C
      8C00CEBDB500E7E7DE00E7E7DE00EFEFEF00F7F7EF00F7EFEF00F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E7E7D600DED6C600E7DECE00E7E7D600E7E7
      D600E7DED600EFE7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000106394001073
      9C008CC6E700CEEFFF00CEEFFF00CEEFFF00D6EFFF00C6E7F7006B9CBD00185A
      8400185A8400105A8C00296B9400397BA5004284A50000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000DEDE
      DE00FFFFFF00FFFFFF00EFE7E700D6C6BD00BDBDB500B5AD9400BDB5AD00CECE
      C600E7DEDE00EFEFEF00E7E7DE00D6CEC600BDAD9C00A5947B008C735200CEBD
      B500F7EFEF00FFFFFF00FFFFFF00F7EFE700D6CEBD00D6CEB500DED6CE00F7EF
      E700F7EFEF00EFEFE70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B94A50010739C001073
      A5005AADCE00D6EFFF00D6EFFF00D6EFFF00B5DEEF004A7BA500105A8400105A
      840010638C00216B9400317BA5004A8CAD003984AD0000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000DEDE
      DE00FFFFFF00FFFFFF00F7F7EF00EFEFE700F7EFEF00F7EFEF00DEDED600C6BD
      AD00ADA584009C8C6B00947B52008C734A00947B5200947B52006B5221006352
      2100846B4200B5AD9400EFE7DE00FFFFFF00FFFFFF00F7EFE700E7E7D600EFE7
      DE00EFE7DE00EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007B9CB5000873A500107B
      AD00318CB500CEEFFF00D6EFFF009CC6DE0031739400105A840010638C001063
      9400186B9400317B9C00398CAD00529CBD00318CB50000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000DEDE
      DE00FFFFFF00FFFFFF00E7DEDE00CEBDB500A59C7B008C7352007B6B39007B6B
      390084734A00947B52009C8C6300AD947300B59C7B00B5A58C00AD9C7B008C73
      52007B6B3900846B420094845A00B5A58400E7DECE00FFF7F700FFFFFF00FFFF
      FF00FFF7F700EFEFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000087BAD000884
      B5001084B5009CD6EF0073A5C60021638C0010638C0010638C00106394001073
      9C00297BA5003984AD004A8CB5005A9CC6004294B50000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000BDBD
      AD00BDADA500ADA584009C8C730094845A00846B4200947B5200A5947300B5AD
      8C00C6B59C00CEBDAD00CEBDAD00C6BDA500BDAD9C00B5AD8C00B59C7B00A594
      73009C84630084734A0084734A009C845A00B59C7B00C6B59C00E7DECE00FFF7
      F700FFFFFF00F7EFEF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000399CC6000884
      B500088CBD0021739C001863940010638C00106394001063940010739C00187B
      A5003184AD004294B50052A5C60052A5C6008CBDDE0000000000000000000000
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
      0000B5AD9C00C6BDA500C6B59C00CEC6B500DED6C600DED6CE00DED6CE00DED6
      C600D6CEB500CEC6AD00C6BDA500C6B59C00B5AD8C00B59C7B009C947B009C84
      5A008C7B5A00846B42007B6342006B52290073633100A58C6B00CEBDAD00E7DE
      CE00F7EFE700E7E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000297B
      AD0010739C0010638C0010638C001063940010739C0010739C00187BA5002984
      AD003194BD004A9CC6005AA5CE00399CC6000000000000000000000000000000
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
      000000000000CEC6BD00CECEC600E7DECE00E7DED600E7DECE00D6CEBD00D6CE
      B500CEC6AD00C6BDA500BDAD9C00B5AD8C00AD947300A59473009C845A008C7B
      5A00846B42007B6342006B5221005A421800523908004A3100005A4210008C7B
      5200CECEBD00D6D6D60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B9C
      BD00186394001063940010739C0010739C00107BAD00107BAD001884AD003194
      BD00429CC6005AA5CE0042A5CE00000000000000000000000000000000000000
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
      0000000000000000000000000000CECEC600C6BDAD00C6BDA500CEC6B500CEC6
      AD00C6B59C00BDB59C00B5AD8C00AD9C7B00A59473009C846300947B52007B6B
      4A00735A39006B5229005A421800523910005A4210006B5A3900847B6300ADA5
      9400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003184AD0010739C0010739C00107BAD00107BAD001884AD00298CBD00399C
      C600429CC60052ADD60000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000C6BDAD00ADA5
      8C00B5A59400B5A58400AD9C7B00A58C6B009C8463008C7352007B6B4A00735A
      3900736342007B735200A59C8400BDBDB5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073ADCE001884AD00087BAD000884B5001084B5002994C60063B5
      D600000000000000000000000000000000000000000000000000000000000000
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
      000000000000ADA58C00948C6B00948463008C847300A59C8400BDB5A5000000
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
        TituloColumna = 'Fecha Cobro'
        Visible = False
      end
      item
        TituloColumna = 'Fecha Envio'
        Visible = True
      end
      item
        TituloColumna = 'Fecha Impreso'
        Visible = False
      end
      item
        TituloColumna = 'Fecha Vencim.'
        Visible = False
      end
      item
        TituloColumna = 'Vendedor'
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
