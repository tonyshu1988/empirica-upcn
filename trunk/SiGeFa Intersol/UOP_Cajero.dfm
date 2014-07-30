object FOP_Cajero: TFOP_Cajero
  Left = 256
  Top = 39
  Width = 1024
  Height = 771
  Caption = 'Subsistema de Caja Obras Sociales - SiGeFa'
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
  PixelsPerInch = 96
  TextHeight = 13
  object PanelContenedorDerecha: TPanel
    Left = 88
    Top = 0
    Width = 928
    Height = 692
    Align = alClient
    Caption = 'PanelContenedorDerecha'
    TabOrder = 4
    object PanelStatusBar: TPanel
      Left = 1
      Top = 1
      Width = 926
      Height = 30
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 0
      object DBText7: TDBText
        Left = 1
        Top = 1
        Width = 344
        Height = 28
        Align = alLeft
        Color = 16729670
        DataField = 'nVendedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object DBText8: TDBText
        Left = 586
        Top = 1
        Width = 339
        Height = 28
        Align = alRight
        Alignment = taRightJustify
        Color = 16729670
        DataField = 'tipoIVA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object PanelCambiarFecha: TPanel
        Left = 345
        Top = 1
        Width = 241
        Height = 28
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DateTimePicker_FechaCarga: TDateTimePicker
          Left = 8
          Top = 4
          Width = 105
          Height = 21
          Date = 40821.813995381940000000
          Time = 40821.813995381940000000
          TabOrder = 0
          TabStop = False
        end
        object CheckBoxCambiarFecha: TCheckBox
          Left = 119
          Top = 6
          Width = 109
          Height = 17
          Caption = 'Cambiar Fecha'
          TabOrder = 1
        end
      end
    end
    object PProducto: TPanel
      Tag = 99
      Left = 1
      Top = 166
      Width = 926
      Height = 41
      Align = alTop
      Color = 12648448
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 511
        Top = 1
        Width = 125
        Height = 15
        Align = alLeft
        AutoSize = False
        Caption = 'Importe Unitario'
        Color = 12648448
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
      end
      object Label3: TLabel
        Left = 1
        Top = 1
        Width = 443
        Height = 15
        Align = alLeft
        AutoSize = False
        Caption = '  Detalle Producto/Servicio'
        Color = 12648448
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
      end
      object Label4: TLabel
        Left = 636
        Top = 1
        Width = 98
        Height = 15
        Align = alLeft
        AutoSize = False
        Caption = 'Descuento'
        Color = 12648448
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
      end
      object Label6: TLabel
        Left = 734
        Top = 1
        Width = 110
        Height = 15
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'Importe Total'
        Color = 12648448
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
      end
      object Label40: TLabel
        Left = 444
        Top = 1
        Width = 67
        Height = 15
        Align = alLeft
        AutoSize = False
        Caption = 'Cantidad'
        Color = 12648448
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
      end
      object PanelDetalleProducto: TPanel
        Tag = 99
        Left = 1
        Top = 16
        Width = 924
        Height = 24
        Align = alBottom
        BevelOuter = bvNone
        Color = 16772332
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        object Label5: TLabel
          Left = 699
          Top = 6
          Width = 14
          Height = 13
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnAceptarProd: TSpeedButton
          Tag = 99
          Left = 857
          Top = 2
          Width = 22
          Height = 20
          Hint = 'Guardar'
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFF8F8F8CFCFCFB2B2B2ADADADB0AFB0B2B2B2BBBBBBDCDCDCFBFB
            FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3979797747474949294B5
            B1B4BEBABDB4B1B37E7C7D7A7A7ABBBBBBFBFBFBFFFFFFFFFFFFFFFFFFFFFFFF
            EFEFEF929292949193E1D8DEEAE7E8D0DAD2C0CEC4C3C9C3C4BDC0B5ADB2B0AE
            AFD4D4D4FCFCFCFFFFFFFFFFFFF5F5F5A1A2A1C3BDC2EAECEA93D1A33EB16123
            AC5228B25933B05E4EAE6F82A88EBFBABDCBC7C9D7D8D7FEFEFEFFFFFFBDBDBD
            C7C1C6DBEDE03CBD6306A63D569F6F63AC811DBF6A17CE7118C86D15BC6354B2
            7DD4D5D4D3CFD1E8E9E8F6F6F6BFBBBEE2E9E32EBB5C00B33E7EB094E7D8E2EA
            D9E281B6A113C48015D68B16D48804C76C63C38FF0E8ECDBD9D9E3E2E3E5DDE2
            77CB9000AB3073AD8CF1E2ECECECECE8E8E8EBDDE277B69F08C4800CD3880BD0
            7D07BD62B3DAC2EFE7EBEDEBECE4E7E528AF515AB176F8E6F2F0EBEE5CCA9857
            CA9AEBE9EBF5E5EB71B89D01BB7009C47200BA5762BF88FAF1F7F6F2F5DBE4DD
            3DB25E69C283E4F4E97FCE9F00AD4F00B15A5FC194F1E9ECF0E3E963AF8B00A9
            5000AD4540AF68F2EEEFF9F7F9DBE2DC71C08546B7662FAB55009B34009C3A02
            A148009F456CBB8FF6EDF3E8DFE356A07400912841A560F1ECEFFCFBFCE3E3E2
            9AC7A476C08964B97A38A457109437008B2E008A2C00892A7DBB92FFF7FEEBE3
            E8328E4B60A36FF5EEF3FFFFFFE7E4E6C6D4C992C69D8EC69B8BC39876B88651
            A7662F954B1588340A82279CC7A6E5EFE6529860ACBDAEF7F3F6FFFFFFF4F3F4
            D5D4D5BFD6C2A2CCAB9ECAA79CC8A699C6A28EC29B7FB98C6AAE7965AC7377B2
            82A1BEA7EAE4E8FEFEFDFFFFFFFFFFFFE8E8E8D7D6D7D0DFD4B8D7BFADD2B4A7
            CFAFA1CCAA9BC8A599C6A29BC6A4BED0C2E8E5E8FAFAFAFFFFFFFFFFFFFFFFFF
            FFFFFFF0F0F0E9E7E9EAECEBDBEADED1E4D3CBE0CFCCE1CFD4E2D7E1E3E2EDEA
            ECFBFAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F6F7F5F2F4F5
            F2F4F6F3F5F5F3F5F0EDEFF7F5F6FFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object btnCancelarProd: TSpeedButton
          Tag = 99
          Left = 878
          Top = 2
          Width = 19
          Height = 20
          Hint = 'Cancelar'
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFEDEDEDCDC9CAB6AEAFACA6A4ADA7A4AEA8A5ACA7A4B0A9A8C1BABCE0DD
            DDFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F7C4C3C0989694807F8A73
            728A6F6F89797A8C8D8C8FB1AFAAE4E3E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            F9F9F9C0C0BC82829146487E2C2E7C26267D26257F28287D36377D636387A8A7
            A8E3E3E1FFFFFFFFFFFFFFFFFFFDFDFDC3C3BF6F708727277B1B1B8427279030
            30953131972E2D9520208A191A7C45467EA1A1A4ECEBEAFFFFFFFFFFFFE1E1DD
            85859229287F3A38938687AE55559D2828972C2B9B3130957B7BA96969A41F1E
            85525083BDBDBAFCFCFBFFFFFFB8B8B54C4C841A1A8F7372A9ECE9D7C3C1C451
            529E2C2B998987ABE7E3D5C5C1C537369A242384848495E9EBE5FAF9F693939B
            2E2F872829A14140A6A3A0B4CDC7BAACA9B1938FABC2BEB7C5C1BA7371AB2D2F
            A5242496575686D4D4CFEAEAE57D7D92252691302EAB2A27AA3D3BA99E99B3C1
            BBB4C0BBB4BAB6B56E6DAF2928A82D2DAC2527A1413F83C2C1BEE8E8E27F7F95
            3939A03D3CB63433B53233B0A19FC5D4D2CAD1CFC8CDCBCC6262BB2A29B03C3A
            B63D3CB14F4D8EBDBDBAF5F6F292929F5352A95959C75B5CC5ADADD2EEECE4DF
            DDDDCFCED7ECE9E4DCDAE0807FC95D5CC95D5EC1666696CBCAC6FFFFFFB1B2B2
            615FA15756C69998CFFFFFF0EEEDE89897CF706FCAC5C6DAFFFFF2DCDBE47170
            CD5D5DBB7B7C96E2E2DEFFFFFFDCDCD780819B5A5ABB8585D0CCCDDE9C9CD267
            67D26968D67877CFC1C3DBB4B4D77070CE6463A4A9A7A9FAFAF9FFFFFFFBFBFA
            BBBDB96F709B6565C47173D27373DA7778DE7979DE7777DE7676D87374D36566
            AE898895E3E3E0FFFFFFFFFFFFFFFFFFF4F4F3B6B6B478789A6969B87574D17C
            7CD87D7DDB7B7CD77272C7676AA4898B97D8D7D3FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF9F9F7CDCDC99A9AA47F7FA07978A57978A77978A286869AADADAEE5E5
            E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F4DAD9D2C3
            C1BABBBAB4CAC9C3E8E8E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object edProducto: TDBEdit
          Tag = 99
          Left = 8
          Top = 5
          Width = 425
          Height = 15
          TabStop = False
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16772332
          DataField = 'producto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 4
        end
        object edCantidad: TDBEdit
          Tag = 99
          Left = 443
          Top = 2
          Width = 56
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = clCream
          DataField = 'CANTIDAD'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object edDesc: TDBEdit
          Tag = 99
          Left = 635
          Top = 2
          Width = 63
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = clCream
          DataField = 'PORC_DESCUENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object edImporteFinal: TDBEdit
          Tag = 99
          Left = 743
          Top = 5
          Width = 105
          Height = 15
          AutoSize = False
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16772332
          DataField = 'IMPORTE_FINAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object edUnitario: TDBEdit
          Tag = 99
          Left = 510
          Top = 2
          Width = 105
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = clCream
          DataField = 'IMPORTE_UNITARIO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object PanelProductosYFPago: TPanel
      Left = 1
      Top = 207
      Width = 926
      Height = 484
      Align = alClient
      Caption = 'PanelProductosYFPago'
      TabOrder = 2
      object Label11: TLabel
        Left = 1
        Top = 1
        Width = 924
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Listado de Productos/Servicios a Cobrar'
        Color = 12648448
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
      end
      object PanelListadoProducto: TPanel
        Left = 1
        Top = 14
        Width = 924
        Height = 309
        Align = alClient
        Caption = 'PanelListadoProducto'
        TabOrder = 0
        object Label9: TLabel
          Left = 160
          Top = 17
          Width = 48
          Height = 13
          Caption = 'DETALLE'
        end
        object Panel6: TPanel
          Left = 1
          Top = 254
          Width = 922
          Height = 54
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 1
          object Label36: TLabel
            Left = 1
            Top = 37
            Width = 920
            Height = 16
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'Formas de Pago  [F7]'
            Color = 12648448
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object lblCantProductos: TLabel
            Left = 1
            Top = 1
            Width = 920
            Height = 15
            Align = alTop
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object lblMontoProds: TLabel
            Left = 1
            Top = 16
            Width = 920
            Height = 15
            Align = alTop
            Alignment = taRightJustify
            AutoSize = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object btQuitarProducto: TButton
            Left = 4
            Top = 10
            Width = 127
            Height = 23
            Caption = 'Quitar Prod./Serv.'
            TabOrder = 0
          end
        end
        object DBGridListadoProductos: TDBGrid
          Left = 1
          Top = 1
          Width = 922
          Height = 253
          Align = alClient
          Color = 15527129
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Color = 16772332
              Expanded = False
              FieldName = 'ID_PRODUCTO'
              Title.Caption = 'ID'
              Width = 46
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = 'producto'
              ReadOnly = True
              Title.Caption = 'Producto'
              Width = 370
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = 'IMPORTE_UNITARIO'
              ReadOnly = True
              Title.Caption = 'Importe Unit.'
              Width = 93
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = 'CANTIDAD'
              Title.Caption = 'Cant.'
              Width = 40
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = 'PORC_DESCUENTO'
              Title.Caption = '% Desc.'
              Width = 52
              Visible = True
            end
            item
              Color = clWhite
              Expanded = False
              FieldName = 'IMPORTE_FINAL'
              Title.Caption = 'Importe'
              Width = 100
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = 'DETALLE'
              Title.Caption = 'Detalle'
              Width = 469
              Visible = True
            end>
        end
      end
      object PanelFormaPago: TPanel
        Left = 1
        Top = 323
        Width = 924
        Height = 89
        Align = alBottom
        Caption = 'PanelFormaPago'
        TabOrder = 1
        object DBGridFormaPago: TDBGrid
          Left = 1
          Top = 1
          Width = 922
          Height = 87
          Align = alClient
          Color = 15527129
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Color = 16772332
              Expanded = False
              FieldName = 'CUENTA_INGRESO'
              Title.Caption = 'C'#243'd'
              Width = 30
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = '_ctaIngreso'
              Title.Caption = 'Cuenta'
              Width = 150
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = 'ID_TIPO_FORMAPAG'
              Title.Caption = 'MP'
              Width = 29
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = 'medioPago'
              Title.Caption = 'Medio Pago'
              Width = 226
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Caption = 'Importe'
              Width = 59
              Visible = True
            end
            item
              Color = clWhite
              Expanded = False
              FieldName = '_importeVenta'
              ReadOnly = True
              Title.Caption = 'Importe Venta'
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = 'MDCP_FECHA'
              Title.Caption = 'Fecha'
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = 'MDCP_BANCO'
              Title.Caption = 'Banco'
              Width = 103
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = 'MDCP_CHEQUE'
              Title.Caption = 'N'#250'mero'
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_esSenia'
              Title.Alignment = taCenter
              Title.Caption = 'Se'#241'a'
              Visible = True
            end>
        end
      end
      object PieGrilla: TPanel
        Left = 1
        Top = 412
        Width = 924
        Height = 71
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 2
        object lblMaxVenta: TLabel
          Left = 1
          Top = 1
          Width = 922
          Height = 20
          Align = alTop
          Alignment = taCenter
          Caption = 'MONTO M'#193'XIMO DE VENTA EXCEDIDO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          Visible = False
        end
        object btnQuitarPago: TButton
          Left = 4
          Top = 3
          Width = 136
          Height = 23
          Caption = 'Quitar Forma de Pago'
          TabOrder = 0
        end
        object Panel1: TPanel
          Left = 1
          Top = 29
          Width = 922
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object lblTotAPagar: TLabel
            Left = 152
            Top = 0
            Width = 770
            Height = 41
            Align = alClient
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total Venta: $ 0.00 '
            Color = 12648448
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -21
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
          object lblNroCPB: TLabel
            Left = 0
            Top = 0
            Width = 152
            Height = 41
            Align = alLeft
            AutoSize = False
            Caption = ' N'#186' CPB: 99999 '
            Color = 12648448
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -17
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            Layout = tlCenter
          end
        end
      end
    end
    object PanelDetalles: TPanel
      Left = 1
      Top = 31
      Width = 926
      Height = 135
      Align = alTop
      TabOrder = 3
      object PanelCabeceraFactura: TPanel
        Left = 547
        Top = 1
        Width = 378
        Height = 92
        Align = alClient
        BevelOuter = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label12: TLabel
          Left = 1
          Top = 1
          Width = 376
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Detalles Cliente  [F3]'
          Color = 12648448
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object Label13: TLabel
          Left = 21
          Top = 21
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 141
          Top = 21
          Width = 73
          Height = 13
          Caption = 'CUIT/CUIL:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 42
          Top = 67
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'IVA:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 269
          Top = 67
          Width = 35
          Height = 13
          Caption = 'Desc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 14
          Top = 44
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nombre:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 359
          Top = 67
          Width = 14
          Height = 13
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit9: TDBEdit
          Left = 70
          Top = 40
          Width = 302
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'pers_nombre'
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit10: TDBEdit
          Left = 70
          Top = 17
          Width = 71
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'pers_codigo'
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 220
          Top = 17
          Width = 152
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'pers_cuit'
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit12: TDBEdit
          Left = 308
          Top = 63
          Width = 52
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'pers_desc'
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit14: TDBEdit
          Left = 70
          Top = 63
          Width = 194
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'pers_iva'
          ReadOnly = True
          TabOrder = 3
        end
      end
      object PanelDetalleOrdenOptica: TPanel
        Left = 1
        Top = 93
        Width = 924
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object Label14: TLabel
          Left = 0
          Top = 0
          Width = 924
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Detalle Orden'
          Color = 12648448
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object Label66: TLabel
          Left = 29
          Top = 21
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = 'Orden Nro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label67: TLabel
          Left = 264
          Top = 21
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fecha:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label68: TLabel
          Left = 460
          Top = 21
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Entrega:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label69: TLabel
          Left = 620
          Top = 21
          Width = 106
          Height = 13
          Alignment = taRightJustify
          Caption = 'Reconocido OSs:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit13: TDBEdit
          Left = 100
          Top = 17
          Width = 143
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'CODIGO_CLI'
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit23: TDBEdit
          Left = 308
          Top = 17
          Width = 143
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'FECHA_ORDEN'
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit24: TDBEdit
          Left = 517
          Top = 17
          Width = 93
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'MONTO_ENTREGADO'
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit25: TDBEdit
          Left = 728
          Top = 17
          Width = 99
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'MONTO_RECONOCIDO'
          ReadOnly = True
          TabOrder = 3
        end
      end
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 546
        Height = 92
        Align = alLeft
        BevelOuter = bvLowered
        TabOrder = 0
        object Label22: TLabel
          Left = 126
          Top = 21
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 112
          Top = 44
          Width = 62
          Height = 13
          Caption = 'Producto:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 321
          Top = 21
          Width = 40
          Height = 13
          Alignment = taRightJustify
          Caption = 'Stock:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 119
          Top = 68
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Art'#237'culo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 1
          Top = 1
          Width = 544
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Detalles Producto/Servicio'
          Color = 12648448
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object DBImage1: TDBImage
          Left = 2
          Top = 17
          Width = 97
          Height = 69
          Color = 14737632
          DataField = 'LOGO'
          Stretch = True
          TabOrder = 5
        end
        object edImagen: TDBImage
          Left = 2
          Top = 17
          Width = 97
          Height = 69
          Color = 14737632
          DataField = 'IMAGEN'
          QuickDraw = False
          Stretch = True
          TabOrder = 6
          Visible = False
        end
        object DBEdit1: TDBEdit
          Left = 175
          Top = 40
          Width = 355
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'DETALLE_PROD'
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 175
          Top = 17
          Width = 143
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'COD_CORTO'
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 337
          Top = 64
          Width = 193
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'ARTICULO'
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 363
          Top = 17
          Width = 41
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'STOCK_ACTUAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit6: TDBEdit
          Left = 175
          Top = 64
          Width = 163
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'TIPO_ARTICULO'
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit26: TDBEdit
          Left = 403
          Top = 17
          Width = 127
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'SECCION'
          ReadOnly = True
          TabOrder = 7
        end
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
    CanCustomize = False
    Categories.Strings = (
      'Edicion')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    HideFloatingBarsWhenInactive = False
    ImageOptions.LargeImages = FPrincipal.Iconos_Barra_32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    MenusShowRecentItemsFirst = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsOffice11
    UseF10ForMenu = False
    UseSystemFont = False
    Left = 104
    Top = 8
    DockControlHeights = (
      88
      0
      0
      52)
    object dxBarABMBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      BorderStyle = bbsNone
      Caption = 'barra'
      CaptionButtons = <>
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
          Visible = True
          ItemName = 'btnLeerCB'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnFormaPago'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnVentaRapida'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'BtAceptarPago'
        end
        item
          Visible = True
          ItemName = 'BtCancelarPago'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btsalir'
        end>
      OldName = 'barra'
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
    end
    object dxBarABMBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      BorderStyle = bbsNone
      Caption = 'vertical'
      CaptionButtons = <>
      DockedDockingStyle = dsLeft
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsLeft
      FloatLeft = 404
      FloatTop = 231
      FloatClientWidth = 23
      FloatClientHeight = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnBuscarProductoListado'
        end
        item
          Visible = True
          ItemName = 'btnBuscarProductoAvanzada'
        end
        item
          Visible = True
          ItemName = 'btnBuscarCliente'
        end
        item
          Visible = True
          ItemName = 'btIVA'
        end
        item
          Visible = True
          ItemName = 'btnBuscarVendedor'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnCargarOrdenTecnica'
        end>
      OldName = 'vertical'
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = True
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
      BackgroundBitmap.Data = {
        82D10000424D82D100000000000036000000280000007E0000008D0000000100
        1800000000004CD10000000000000000000000000000000000004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        9998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C
        4A484C49484C49474C49474C49474C49474C48474C48464C48464C48454C4845
        4C47454C47444C47444C47444C47434C46434C46424C45434D46444D47464F49
        47514A49524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E
        5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66676D6868
        6E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A77787C79
        797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183818385838486848588868689
        87888B898A8C8B8B8D8C8D8E8E8E8F8F90919092939293949395959596969698
        9898999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999B9B9A9C9C9B9B9B9A999999999999989899
        00004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49
        484C49474C49474C49474C49474C48474C48464C48464C48454C48454C47454C
        47444C47444C47444C47434C46434C46424C45434D46444D47464F4947514A49
        524B4B534D4C554E4E56504F5751505953525B55535C56555D58575E5958605B
        5A615C5B625D5D645F5F6561606762626864636A65656B66676D68686E696A6F
        6B6B706C6C716E6E73706F7472717673737774747875767A77787C79797D7A7A
        7D7B7B7D7B7C7F7D7E807F7F8280818381838583848684858886868987888B89
        8A8C8B8B8D8C8D8E8E8E8F8F9091909293929394939595959696969898989999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C
        4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C4947
        4C49474C49474C49474C48474C48464C48464C48454C48454C47454C47444C47
        444C47444C47434C46434C46424C45434D46444D47464F4947514A49524B4B53
        4D4C554E4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B
        625D5D645F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C
        6C716E6E73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D
        7B7C7F7D7E807F7F8280818381838583848684858886868987888B898A8C8B8B
        8D8C8D8E8E8E8F8F909190929392939493959595969696989898999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B
        4B4C4B4B4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C
        49474C49474C48474C48464C48464C48454C48454C47454C47444C47444C4744
        4C47434C46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E
        4E56504F5751505953525B55535C56555D58575E5958605B5A615C5B625D5D64
        5F5F6561606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E
        73706F7472717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D
        7E807F7F8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E
        8E8E8F8F90919092939293949395959596969698989899999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999B9B9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B
        4C4B4A4C4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49
        474C48474C48464C48464C48454C48454C47454C47444C47444C47444C47434C
        46434C46424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F
        5751505953525B55535C56555D58575E5958605B5A615C5B625D5D645F5F6561
        606762626864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F74
        72717673737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F
        8280818381838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F
        9091909293929394939595959696969898989999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999B9B
        9A9C9C9B9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C
        4A4A4C4A494C4A494C4A494C4A484C49484C49474C49474C49474C49474C4847
        4C48464C48464C48454C48454C47454C47444C47444C47444C47434C46434C46
        424C45434D46444D47464F4947514A49524B4B534D4C554E4E56504F57515059
        53525B55535C56555D58575E5958605B5A615C5B625D5D645F5F656160676262
        6864636A65656B66676D68686E696A6F6B6B706C6C716E6E73706F7472717673
        737774747875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F82808183
        81838583848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F90919092
        9392939493959595969696989898999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        99999999999999999999999999999999999999999999999999999B9B9A9C9C9B
        9B9B9A99999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A
        494C4A494C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C
        48464C48454C48454C47454C47444C47444C47444C47434C46434C46424C4543
        4D46444D47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55
        535C56555D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A
        65656B66676D68686E696A6F6B6B706C6C716E6E73706F747271767373777474
        7875767A77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F8280818381838583
        848684858886868987888B898A8C8B8B8D8C8D8E8E8E8F8F9091909293929394
        9395959596969698989899999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        999999999999999999999999999999999999999999999B9B9A9C9C9B9B9B9A99
        999999999998989900004C4C4C4B4C4B4B4C4B4B4C4B4A4C4A4A4C4A494C4A49
        4C4A494C4A484C49484C49474C49474C49474C49474C48474C48464C48464C48
        454C48454C47454C47444C47444C47444C47434C46434C46424C45434D46444D
        47464F4947514A49524B4B534D4C554E4E56504F5751505953525B55535C5655
        5D58575E5958605B5A615C5B625D5D645F5F6561606762626864636A65656B66
        676D68686E696A6F6B6B706C6C716E6E73706F7472717673737774747875767A
        77787C79797D7A7A7D7B7B7D7B7C7F7D7E807F7F828081838183858384868485
        8886868987888B898A8C8B8B8D8C8D8E8E8E8F8F909190929392939493959595
        9696969898989999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999999999999999999999999999999
        9999999999999999999999999999999999999B9B9A9C9C9B9B9B9A9999999999
        999898990000}
    end
    object btnBuscarProductoListado: TdxBarLargeButton
      Caption = 'F1 Productos'
      Category = 0
      Hint = 'F1 Productos'
      Visible = ivAlways
      LargeImageIndex = 7
      ShortCut = 112
      AutoGrayScale = False
    end
    object btnBuscarProductoAvanzada: TdxBarLargeButton
      Caption = 'F2 B'#250'squeda'
      Category = 0
      Hint = 'F2 B'#250'squeda'
      Visible = ivAlways
      LargeImageIndex = 29
      ShortCut = 113
      AutoGrayScale = False
    end
    object btnBuscarCliente: TdxBarLargeButton
      Caption = 'F3 Clientes'
      Category = 0
      Hint = 'F3 Clientes'
      Visible = ivAlways
      LargeImageIndex = 56
      AutoGrayScale = False
    end
    object btIVA: TdxBarLargeButton
      Caption = 'F4 Tipo IVA'
      Category = 0
      Hint = 'F4 Tipo IVA'
      Visible = ivAlways
      LargeImageIndex = 17
      AutoGrayScale = False
    end
    object btnBuscarVendedor: TdxBarLargeButton
      Caption = 'F5 Vendedor'
      Category = 0
      Hint = 'F5 Vendedor'
      Visible = ivAlways
      LargeImageIndex = 87
      ShortCut = 116
      AutoGrayScale = False
    end
    object btnLeerCB: TdxBarLargeButton
      Caption = 'F6 Leer C'#243'digo Producto'
      Category = 0
      Hint = 'F6 Leer C'#243'digo Producto'
      Visible = ivAlways
      LargeImageIndex = 85
      AutoGrayScale = False
    end
    object btnFormaPago: TdxBarLargeButton
      Caption = 'F7 Forma de Pago'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 30
      AutoGrayScale = False
    end
    object btnPreventa: TdxBarLargeButton
      Caption = 'F8 Preventa'
      Category = 0
      Hint = 'F8 Preventa'
      Visible = ivAlways
      LargeImageIndex = 79
      AutoGrayScale = False
    end
    object btnVentaRapida: TdxBarLargeButton
      Caption = 'F9 Venta '#193'gil'
      Category = 0
      Hint = 'F9 Venta '#193'gil'
      Visible = ivAlways
      LargeImageIndex = 81
      ShortCut = 120
      AutoGrayScale = False
    end
    object BtAceptarPago: TdxBarLargeButton
      Caption = 'F10 Guardar Venta'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 5
      AutoGrayScale = False
    end
    object BtCancelarPago: TdxBarLargeButton
      Caption = 'F11 Cancelar'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 9
      AutoGrayScale = False
    end
    object btsalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'F12 Salir'
      Category = 0
      Hint = 'F12 Salir'
      Visible = ivAlways
      LargeImageIndex = 6
      AutoGrayScale = False
    end
    object btCierreZ: TdxBarLargeButton
      Caption = 'Cierre Z'
      Category = 0
      Hint = 'Cierre Z'
      Visible = ivAlways
      LargeImageIndex = 83
      AutoGrayScale = False
    end
    object BtCierreX: TdxBarLargeButton
      Caption = 'Cierre X'
      Category = 0
      Hint = 'Cierre X'
      Visible = ivAlways
      LargeImageIndex = 84
      AutoGrayScale = False
    end
    object btnAuditoriaFiscal: TdxBarLargeButton
      Caption = 'Auditoria Z'
      Category = 0
      Hint = 'Auditoria Z'
      Visible = ivAlways
      LargeImageIndex = 63
      AutoGrayScale = False
    end
    object btnCargarOrdenTecnica: TdxBarLargeButton
      Caption = 'Cargar Orden'
      Category = 0
      Hint = 'Cargar Orden'
      Visible = ivAlways
      LargeImageIndex = 90
      AutoGrayScale = False
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Items = (
        'BtAceptarPago'
        'BtCancelarPago')
    end
    object grupoVertical: TdxBarGroup
      Items = (
        'btnBuscarProductoAvanzada'
        'btnBuscarProductoListado'
        'btnBuscarVendedor'
        'btIVA'
        'btnBuscarCliente'
        'btnLeerCB'
        'btsalir'
        'btnPreventa'
        'btCierreZ'
        'BtCierreX'
        'btnFormaPago'
        'btnVentaRapida'
        'btnAuditoriaFiscal'
        'btnCargarOrdenTecnica')
    end
  end
end
