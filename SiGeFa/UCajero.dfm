object FCajero: TFCajero
  Left = 241
  Top = 147
  Width = 1024
  Height = 692
  Caption = 'Cajero SiGeFa'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PConfirmarVenta: TPanel
    Left = 88
    Top = 0
    Width = 920
    Height = 602
    Align = alClient
    TabOrder = 5
    Visible = False
  end
  object PanelContenedor: TPanel
    Left = 88
    Top = 0
    Width = 920
    Height = 602
    Align = alClient
    TabOrder = 0
    object PanelDetalleProducto: TPanel
      Left = 1
      Top = 31
      Width = 307
      Height = 570
      Align = alLeft
      BevelInner = bvSpace
      TabOrder = 0
      object grupoDetalle: TGroupBox
        Left = 2
        Top = 312
        Width = 303
        Height = 256
        Align = alBottom
        Caption = ' Detalle del Producto seleccionado '
        TabOrder = 0
        object Label2: TLabel
          Left = 5
          Top = 55
          Width = 46
          Height = 13
          Caption = 'Medida'
          FocusControl = DBEdit1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 5
          Top = 164
          Width = 51
          Height = 13
          Caption = 'Art'#237'culo'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 5
          Top = 126
          Width = 83
          Height = 13
          Caption = 'Tipo Art'#237'culo'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 5
          Top = 90
          Width = 39
          Height = 13
          Caption = 'Marca'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 5
          Top = 17
          Width = 51
          Height = 13
          Caption = 'Nombre'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 197
          Top = 55
          Width = 83
          Height = 13
          Caption = 'C'#243'digo Corto'
          FocusControl = DBEdit6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 197
          Top = 90
          Width = 97
          Height = 13
          Caption = 'Precio Unitario'
          FocusControl = DBEdit7
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 197
          Top = 126
          Width = 81
          Height = 13
          Caption = 'Stock Actual'
          FocusControl = DBEdit8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label27: TLabel
          Left = 5
          Top = 202
          Width = 76
          Height = 13
          Caption = 'Descripci'#243'n'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 5
          Top = 68
          Width = 191
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16767959
          DataField = 'MEDIDA'
          DataSource = DS_Productos
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 5
          Top = 177
          Width = 293
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16767959
          DataField = 'ARTICULO'
          DataSource = DS_Productos
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit3: TDBEdit
          Left = 5
          Top = 140
          Width = 191
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16767959
          DataField = 'TIPO_ARTICULO'
          DataSource = DS_Productos
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit4: TDBEdit
          Left = 5
          Top = 104
          Width = 191
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16767959
          DataField = 'NOMBRE_MARCA'
          DataSource = DS_Productos
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 5
          Top = 31
          Width = 293
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16767959
          DataField = 'NOMBRE_PRODUCTO'
          DataSource = DS_Productos
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 197
          Top = 68
          Width = 100
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16767959
          DataField = 'COD_CORTO'
          DataSource = DS_Productos
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit7: TDBEdit
          Left = 197
          Top = 104
          Width = 100
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16767959
          DataField = 'PRECIO_VENTA'
          DataSource = DS_Productos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit8: TDBEdit
          Left = 197
          Top = 140
          Width = 100
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16767959
          DataField = 'STOCK_ACTUAL'
          DataSource = DS_Productos
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBMemo1: TDBMemo
          Left = 5
          Top = 216
          Width = 293
          Height = 33
          Color = 16767959
          DataField = 'DESCRIPCION'
          DataSource = DS_Productos
          TabOrder = 8
        end
      end
      object Panel1: TPanel
        Left = 2
        Top = 135
        Width = 303
        Height = 174
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 1
        object edImagen: TDBImage
          Left = 0
          Top = 0
          Width = 303
          Height = 174
          Align = alClient
          Color = 14737632
          DataField = 'IMAGEN'
          DataSource = DS_Productos
          QuickDraw = False
          TabOrder = 0
          Visible = False
        end
        object DBImage1: TDBImage
          Left = 0
          Top = 0
          Width = 303
          Height = 174
          Align = alClient
          Color = 14737632
          DataField = 'LOGO'
          DataSource = DS_Sucursal
          Stretch = True
          TabOrder = 1
        end
      end
      object Panel2: TPanel
        Left = 2
        Top = 2
        Width = 303
        Height = 133
        Align = alTop
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        object Label1: TLabel
          Left = 3
          Top = 65
          Width = 58
          Height = 16
          Caption = 'Cantidad'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 209
          Top = 65
          Width = 86
          Height = 16
          Caption = 'Importe Final'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 78
          Top = 65
          Width = 70
          Height = 16
          Caption = 'Descuento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 136
          Top = 85
          Width = 17
          Height = 16
          Caption = '%'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 197
          Top = 85
          Width = 9
          Height = 16
          Caption = '$'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSinStock: TLabel
          Left = 40
          Top = 109
          Width = 223
          Height = 20
          Caption = 'STOCK NO DISPONIBLE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object edCantidad: TEKEdit
          Tag = 99
          Left = 3
          Top = 81
          Width = 57
          Height = 24
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16119285
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = edCantidadExit
          DataType = ftInteger
        end
        object edImporte: TEKEdit
          Tag = 99
          Left = 209
          Top = 81
          Width = 90
          Height = 24
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16119285
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnExit = edImporteExit
          DataType = ftFloat
        end
        object edDesc: TEKEdit
          Tag = 99
          Left = 78
          Top = 81
          Width = 54
          Height = 24
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16119285
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = edCantidadExit
          DataType = ftFloat
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 303
          Height = 65
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object LeerCodBar: TLabel
            Left = 55
            Top = 13
            Width = 192
            Height = 16
            Alignment = taCenter
            Caption = 'LEER CODIGO BARRAS [F6]'
            Color = clNavy
            Font.Charset = ANSI_CHARSET
            Font.Color = 16729670
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            Layout = tlCenter
            Visible = False
          end
          object barcode2: TImage
            Left = 268
            Top = 5
            Width = 32
            Height = 32
            AutoSize = True
            Center = True
            Picture.Data = {
              0A544A504547496D61676557040000FFD8FFE000104A46494600010101006000
              600000FFDB0043000503040404030504040405050506070C08070707070F0B0B
              090C110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F131722
              24221E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E
              1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
              1E1E1E1E1E1E1E1E1E1E1E1E1EFFC00011080020002003012200021101031101
              FFC4001F0000010501010101010100000000000000000102030405060708090A
              0BFFC400B5100002010303020403050504040000017D01020300041105122131
              410613516107227114328191A1082342B1C11552D1F02433627282090A161718
              191A25262728292A3435363738393A434445464748494A535455565758595A63
              6465666768696A737475767778797A838485868788898A92939495969798999A
              A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
              D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
              01010101010101010000000000000102030405060708090A0BFFC400B5110002
              0102040403040705040400010277000102031104052131061241510761711322
              328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
              292A35363738393A434445464748494A535455565758595A636465666768696A
              737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
              A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
              E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00D9D3
              FC59E2A6F037C3EB86F12EB4D35DFC40F0BDA5CC86FA5DD3413689652CB139DD
              964791DDD94F0CCC4904926BACFD967C43AFEB3F187E36D8EAFAE6A7A8DA69BE
              2010D8417576F2C76A9F68BC1B22562422E114617030A3D0579CE9BFF24FBE1A
              FF00D949F08FFE982C2BB3FD907FE4B7FC7DFF00B1907FE94DF50069FEC59E21
              D7F5FF000BC536BDAE6A7AACA7C3F69317BDBB799B79D4F5842F9727E629144A
              4F5C4683A28C727FF09678ABFE865D6BFE4DFF00FB5BFE3FA5FF008FEFF9FAFB
              DFEBBFE9A7DEF7AD9FD83BFE45187FEC5BB3FF00D3B6B75C67FF00436D001A6F
              FC93EF86BFF6527C23FF00A60B0AECFF00641FF92DFF001F7FEC641FFA537D59
              9E0AFF0084DF4FD05741BAF036A7786CEC7C3D71A746FE198DA4B5B85B6D2EDA
              5B88A69A348D6EE3596E76B4AF2ED36FF388238089F6BE1D49F1174A5D6F517F
              0D4DA75DEB363A6DCDF5DDB786E286E378834E7D4273B2152F70A6F2FA444717
              06492375544F25A39C020FD83BFE45187FEC5BB3FF00D3B6B75C67FF00436D7A
              6DF2F8B3C2F65AB45F0FF45BDB6F27449574D8E0F0D456EB2D9A69D2DC4374C1
              604C5E9D4A578FECBF2E16476FB30DC64AE7FC41A778A2EA1D72CA5D07538226
              F8777FA6E8DF62F0D2A3DEA07BF5B782664B326166B74B494C025B70B2B2A887
              2E51003FFFD9}
            Proportional = True
          end
          object barcode1: TImage
            Left = 2
            Top = 5
            Width = 32
            Height = 32
            AutoSize = True
            Center = True
            Picture.Data = {
              0A544A504547496D61676557040000FFD8FFE000104A46494600010101006000
              600000FFDB0043000503040404030504040405050506070C08070707070F0B0B
              090C110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F131722
              24221E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E
              1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
              1E1E1E1E1E1E1E1E1E1E1E1E1EFFC00011080020002003012200021101031101
              FFC4001F0000010501010101010100000000000000000102030405060708090A
              0BFFC400B5100002010303020403050504040000017D01020300041105122131
              410613516107227114328191A1082342B1C11552D1F02433627282090A161718
              191A25262728292A3435363738393A434445464748494A535455565758595A63
              6465666768696A737475767778797A838485868788898A92939495969798999A
              A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
              D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
              01010101010101010000000000000102030405060708090A0BFFC400B5110002
              0102040403040705040400010277000102031104052131061241510761711322
              328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
              292A35363738393A434445464748494A535455565758595A636465666768696A
              737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
              A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
              E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00D9D3
              FC59E2A6F037C3EB86F12EB4D35DFC40F0BDA5CC86FA5DD3413689652CB139DD
              964791DDD94F0CCC4904926BACFD967C43AFEB3F187E36D8EAFAE6A7A8DA69BE
              2010D8417576F2C76A9F68BC1B22562422E114617030A3D0579CE9BFF24FBE1A
              FF00D949F08FFE982C2BB3FD907FE4B7FC7DFF00B1907FE94DF50069FEC59E21
              D7F5FF000BC536BDAE6A7AACA7C3F69317BDBB799B79D4F5842F9727E629144A
              4F5C4683A28C727FF09678ABFE865D6BFE4DFF00FB5BFE3FA5FF008FEFF9FAFB
              DFEBBFE9A7DEF7AD9FD83BFE45187FEC5BB3FF00D3B6B75C67FF00436D001A6F
              FC93EF86BFF6527C23FF00A60B0AECFF00641FF92DFF001F7FEC641FFA537D59
              9E0AFF0084DF4FD05741BAF036A7786CEC7C3D71A746FE198DA4B5B85B6D2EDA
              5B88A69A348D6EE3596E76B4AF2ED36FF388238089F6BE1D49F1174A5D6F517F
              0D4DA75DEB363A6DCDF5DDB786E286E378834E7D4273B2152F70A6F2FA444717
              06492375544F25A39C020FD83BFE45187FEC5BB3FF00D3B6B75C67FF00436D7A
              6DF2F8B3C2F65AB45F0FF45BDB6F27449574D8E0F0D456EB2D9A69D2DC4374C1
              604C5E9D4A578FECBF2E16476FB30DC64AE7FC41A778A2EA1D72CA5D07538226
              F8777FA6E8DF62F0D2A3DEA07BF5B782664B326166B74B494C025B70B2B2A887
              2E51003FFFD9}
            Proportional = True
          end
          object codBarras: TEdit
            Left = 2
            Top = 41
            Width = 298
            Height = 21
            Hint = 'Opciones de B'#250'squeda: '#39'I'#39'+IdProd // C+C'#243'dProd // C'#243'dBarrasProd'
            BevelInner = bvNone
            BevelOuter = bvNone
            CharCase = ecUpperCase
            Color = 16119285
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnEnter = codBarrasEnter
            OnExit = codBarrasExit
            OnKeyDown = codBarrasKeyDown
          end
        end
      end
    end
    object PanelContenedorDerecha: TPanel
      Left = 308
      Top = 31
      Width = 611
      Height = 570
      Align = alClient
      Caption = 'PanelContenedorDerecha'
      TabOrder = 1
      object PanelFormaPago: TPanel
        Left = 1
        Top = 351
        Width = 609
        Height = 218
        Align = alBottom
        Caption = 'PanelFormaPago'
        TabOrder = 0
        object DBGridFormaPago: TDBGrid
          Left = 1
          Top = 1
          Width = 607
          Height = 140
          Align = alClient
          Color = 16762303
          DataSource = DSFpago
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnColExit = DBGridFormaPagoColExit
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
            end>
        end
        object PieGrillaFormaPago: TPanel
          Left = 1
          Top = 141
          Width = 607
          Height = 76
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 1
          DesignSize = (
            607
            76)
          object lblMaxVenta: TLabel
            Left = 144
            Top = 7
            Width = 267
            Height = 20
            Caption = 'MONTO M'#193'XIMO SUPERADO'
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
          object Label15: TLabel
            Left = 397
            Top = 9
            Width = 81
            Height = 16
            Anchors = [akTop, akRight]
            Caption = 'Total Pago:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblTotAPagar: TLabel
            Left = 1
            Top = 32
            Width = 605
            Height = 43
            Align = alBottom
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Total a Pagar: $ 0.00 '
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
          object btnBorrarPago: TButton
            Left = 4
            Top = 7
            Width = 91
            Height = 20
            Caption = 'Quitar Pago'
            TabOrder = 0
            OnClick = btnBorrarPagoClick
          end
          object ImporteFPago: TEdit
            Left = 480
            Top = 8
            Width = 129
            Height = 19
            Anchors = [akTop, akRight]
            AutoSize = False
            BevelInner = bvNone
            BevelOuter = bvNone
            BiDiMode = bdRightToLeft
            BorderStyle = bsNone
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
        end
      end
      object PanelListadoProducto: TPanel
        Left = 1
        Top = 123
        Width = 609
        Height = 228
        Align = alClient
        Caption = 'PanelListadoProducto'
        TabOrder = 1
        object Label9: TLabel
          Left = 160
          Top = 32
          Width = 50
          Height = 13
          Caption = 'DETALLE'
        end
        object DBGridListadoProductos: TDBGrid
          Left = 1
          Top = 1
          Width = 607
          Height = 172
          Align = alClient
          Color = 16762303
          DataSource = DS_DetalleFactura
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopUpProductos
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
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
              Title.Caption = 'Producto'
              Width = 275
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = 'IMPORTE_UNITARIO'
              Title.Caption = 'Importe Unit.'
              Width = 82
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
              Color = clWhite
              Expanded = False
              FieldName = 'IMPORTE_FINAL'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              Title.Caption = 'Importe'
              Width = 80
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = 'PORC_DESCUENTO'
              Title.Caption = 'Desc.'
              Width = 38
              Visible = True
            end
            item
              Color = 16772332
              Expanded = False
              FieldName = 'IMPORTE_IVA'
              Title.Caption = 'IVA'
              Width = 77
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
        object PieGrilla: TPanel
          Left = 1
          Top = 173
          Width = 607
          Height = 54
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 1
          DesignSize = (
            607
            54)
          object Label10: TLabel
            Left = 1
            Top = 37
            Width = 605
            Height = 16
            Align = alBottom
            Alignment = taCenter
            AutoSize = False
            Caption = 'Formas de Pago  [F7]'
            Color = 12648448
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Layout = tlCenter
          end
          object lblCantProductos: TLabel
            Left = 1
            Top = 22
            Width = 605
            Height = 15
            Align = alBottom
            Alignment = taRightJustify
            AutoSize = False
            Layout = tlCenter
          end
          object Label19: TLabel
            Left = 349
            Top = 6
            Width = 118
            Height = 16
            Anchors = [akTop, akRight]
            Caption = 'Total Productos:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object btQuitarProducto: TButton
            Left = 4
            Top = 4
            Width = 108
            Height = 20
            Caption = 'Quitar Producto'
            TabOrder = 0
            OnClick = btQuitarProductoClick
          end
          object Importe: TEdit
            Left = 472
            Top = 5
            Width = 137
            Height = 19
            Anchors = [akTop, akRight]
            AutoSize = False
            BevelInner = bvNone
            BevelOuter = bvNone
            BiDiMode = bdRightToLeft
            BorderStyle = bsNone
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
        end
      end
      object PanelCabeceraFactura: TPanel
        Left = 1
        Top = 1
        Width = 609
        Height = 122
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 2
        object Label11: TLabel
          Left = 1
          Top = 107
          Width = 607
          Height = 14
          Align = alBottom
          Alignment = taCenter
          Caption = 'Listado de Productos a Cobrar  [F6]'
          Color = 12648448
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object Label12: TLabel
          Left = 1
          Top = 1
          Width = 607
          Height = 14
          Align = alTop
          Alignment = taCenter
          Caption = 'Detalles Cliente  [F3]'
          Color = 12648448
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
        end
        object Label13: TLabel
          Left = 18
          Top = 21
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 1
          Top = 62
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Direcci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 383
          Top = 66
          Width = 69
          Height = 13
          Caption = 'CUIT/CUIL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 39
          Top = 85
          Width = 23
          Height = 13
          Caption = 'IVA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 383
          Top = 24
          Width = 57
          Height = 13
          Caption = 'Tel'#233'fono'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 256
          Top = 85
          Width = 68
          Height = 13
          Caption = 'Descuento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 11
          Top = 41
          Width = 51
          Height = 13
          Caption = 'Nombre'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit9: TDBEdit
          Left = 66
          Top = 39
          Width = 314
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16771302
          DataField = 'pers_nombre'
          DataSource = DS_Comprobante
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit10: TDBEdit
          Left = 66
          Top = 18
          Width = 314
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16771302
          DataField = 'pers_codigo'
          DataSource = DS_Comprobante
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit11: TDBEdit
          Left = 383
          Top = 82
          Width = 186
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16771302
          DataField = 'pers_cuit'
          DataSource = DS_Comprobante
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit12: TDBEdit
          Left = 328
          Top = 82
          Width = 52
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16771302
          DataField = 'pers_desc'
          DataSource = DS_Comprobante
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit13: TDBEdit
          Left = 66
          Top = 60
          Width = 314
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16771302
          DataField = 'pers_direccion'
          DataSource = DS_Comprobante
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit14: TDBEdit
          Left = 66
          Top = 82
          Width = 185
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16771302
          DataField = 'pers_iva'
          DataSource = DS_Comprobante
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit15: TDBEdit
          Left = 383
          Top = 39
          Width = 186
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 16771302
          DataField = 'pers_tel'
          DataSource = DS_Comprobante
          ReadOnly = True
          TabOrder = 6
        end
      end
    end
    object PanelStatusBar: TPanel
      Left = 1
      Top = 1
      Width = 918
      Height = 30
      Align = alTop
      TabOrder = 2
      object DBText7: TDBText
        Left = 1
        Top = 1
        Width = 481
        Height = 28
        Align = alLeft
        Color = 16729670
        DataField = 'nVendedor'
        DataSource = DS_Comprobante
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
        Left = 539
        Top = 1
        Width = 378
        Height = 28
        Align = alRight
        Alignment = taRightJustify
        Color = 16729670
        DataField = 'tipoIVA'
        DataSource = DS_Comprobante
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
    end
  end
  object ZQ_Productos: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_ProductosAfterScroll
    SQL.Strings = (
      
        'select pc.nombre as nombre_producto, m.medida, a.descripcion as ' +
        'articulo, ta.descripcion as tipo_articulo, ma.nombre_marca,p.id_' +
        'producto, p.descripcion, p.precio_costo, p.precio_venta, p.coef_' +
        'ganancia, p.coef_descuento, p.impuesto_interno, p.impuesto_iva, ' +
        'p.cod_corto, p.codigo_barra,pc.imagen'
      
        ',pc.nombre||'#39'  -  M: '#39'||coalesce(m.medida,'#39#39')||'#39'  -  CB:'#39'||coale' +
        'sce(p.codigo_barra,'#39#39') DETALLE_PROD, sp.stock_actual'
      'from producto p'
      'join stock_producto sp on (sp.id_producto=p.id_producto)'
      
        'join posicion_sucursal ps on (ps.id_posicion_sucursal=sp.id_posi' +
        'cion_sucursal)'
      'left join medida m on (p.id_medida = m.id_medida)'
      
        'left join producto_cabecera pc on (p.id_prod_cabecera = pc.id_pr' +
        'od_cabecera)'
      'left join articulo a on (pc.id_articulo = a.id_articulo)'
      
        'left join tipo_articulo ta on (a.id_tipo_articulo = ta.id_tipo_a' +
        'rticulo)'
      'left join marca ma on (pc.id_marca = ma.id_marca)'
      'where (pc.baja <> '#39'S'#39')and(ps.punto_salida='#39'S'#39')'
      'and(p.cod_corto=:prod)'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'prod'
        ParamType = ptUnknown
      end>
    Left = 352
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prod'
        ParamType = ptUnknown
      end>
    object ZQ_ProductosNOMBRE_PRODUCTO: TStringField
      FieldName = 'NOMBRE_PRODUCTO'
      Size = 100
    end
    object ZQ_ProductosMEDIDA: TStringField
      FieldName = 'MEDIDA'
      Size = 30
    end
    object ZQ_ProductosARTICULO: TStringField
      FieldName = 'ARTICULO'
      Size = 200
    end
    object ZQ_ProductosTIPO_ARTICULO: TStringField
      FieldName = 'TIPO_ARTICULO'
      Size = 200
    end
    object ZQ_ProductosNOMBRE_MARCA: TStringField
      FieldName = 'NOMBRE_MARCA'
      Size = 50
    end
    object ZQ_ProductosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
    object ZQ_ProductosPRECIO_COSTO: TFloatField
      FieldName = 'PRECIO_COSTO'
      currency = True
    end
    object ZQ_ProductosPRECIO_VENTA: TFloatField
      FieldName = 'PRECIO_VENTA'
      currency = True
    end
    object ZQ_ProductosCOEF_GANANCIA: TFloatField
      FieldName = 'COEF_GANANCIA'
    end
    object ZQ_ProductosCOEF_DESCUENTO: TFloatField
      FieldName = 'COEF_DESCUENTO'
    end
    object ZQ_ProductosIMPUESTO_INTERNO: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
    end
    object ZQ_ProductosIMPUESTO_IVA: TFloatField
      FieldName = 'IMPUESTO_IVA'
    end
    object ZQ_ProductosCOD_CORTO: TStringField
      FieldName = 'COD_CORTO'
    end
    object ZQ_ProductosCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 40
    end
    object ZQ_ProductosID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
      Required = True
    end
    object ZQ_ProductosIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object ZQ_ProductosDETALLE_PROD: TStringField
      FieldName = 'DETALLE_PROD'
      ReadOnly = True
      Size = 186
    end
    object ZQ_ProductosSTOCK_ACTUAL: TFloatField
      FieldName = 'STOCK_ACTUAL'
    end
  end
  object DS_Productos: TDataSource
    DataSet = ZQ_Productos
    Left = 176
    Top = 96
  end
  object ZQ_ComprobanteDetalle: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from comprobante_detalle')
    Params = <>
    Left = 553
    Top = 201
    object ZQ_ComprobanteDetalleID_COMPROBANTE_DETALLE: TIntegerField
      FieldName = 'ID_COMPROBANTE_DETALLE'
    end
    object ZQ_ComprobanteDetalleID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_ComprobanteDetalleID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
    end
    object ZQ_ComprobanteDetalleDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 200
    end
    object ZQ_ComprobanteDetalleCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object ZQ_ComprobanteDetalleIMPORTE_FINAL: TFloatField
      FieldName = 'IMPORTE_FINAL'
    end
    object ZQ_ComprobanteDetallePORC_DESCUENTO: TFloatField
      FieldName = 'PORC_DESCUENTO'
    end
    object ZQ_ComprobanteDetalleBASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
    end
    object ZQ_ComprobanteDetalleIMPORTE_UNITARIO: TFloatField
      FieldName = 'IMPORTE_UNITARIO'
    end
    object ZQ_ComprobanteDetalleIMPUESTO_INTERNO: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
    end
    object ZQ_ComprobanteDetallePORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
    object ZQ_ComprobanteDetalleCANTIDAD_RECIBIDA: TFloatField
      FieldName = 'CANTIDAD_RECIBIDA'
    end
    object ZQ_ComprobanteDetalleCANTIDAD_ALMACENADA: TFloatField
      FieldName = 'CANTIDAD_ALMACENADA'
    end
    object ZQ_ComprobanteDetalleID_STOCK_PRODUCTO: TIntegerField
      FieldName = 'ID_STOCK_PRODUCTO'
    end
    object ZQ_ComprobanteDetalleIMPORTE_VENTA: TFloatField
      FieldName = 'IMPORTE_VENTA'
    end
    object ZQ_ComprobanteDetalleIMPORTE_IVA: TFloatField
      FieldName = 'IMPORTE_IVA'
    end
  end
  object DS_ComprobanteDetalle: TDataSource
    DataSet = ZQ_ComprobanteDetalle
    Left = 553
    Top = 249
  end
  object ZQ_Comprobante_FormaPago: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from comprobante_forma_pago')
    Params = <>
    Left = 593
    Top = 337
    object ZQ_Comprobante_FormaPagoID_COMPROB_FP: TIntegerField
      FieldName = 'ID_COMPROB_FP'
    end
    object ZQ_Comprobante_FormaPagoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_Comprobante_FormaPagoID_TIPO_FORMAPAG: TIntegerField
      FieldName = 'ID_TIPO_FORMAPAG'
    end
    object ZQ_Comprobante_FormaPagoMDCP_FECHA: TDateField
      FieldName = 'MDCP_FECHA'
    end
    object ZQ_Comprobante_FormaPagoMDCP_BANCO: TStringField
      FieldName = 'MDCP_BANCO'
      Size = 50
    end
    object ZQ_Comprobante_FormaPagoMDCP_CHEQUE: TStringField
      FieldName = 'MDCP_CHEQUE'
      Size = 50
    end
    object ZQ_Comprobante_FormaPagoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object ZQ_Comprobante_FormaPagoCONCILIADO: TDateField
      FieldName = 'CONCILIADO'
    end
    object ZQ_Comprobante_FormaPagoCUENTA_INGRESO: TIntegerField
      FieldName = 'CUENTA_INGRESO'
    end
    object ZQ_Comprobante_FormaPagoCUENTA_EGRESO: TIntegerField
      FieldName = 'CUENTA_EGRESO'
    end
    object ZQ_Comprobante_FormaPagoFECHA_FP: TDateTimeField
      FieldName = 'FECHA_FP'
    end
    object ZQ_Comprobante_FormaPagoIMPORTE_REAL: TFloatField
      FieldName = 'IMPORTE_REAL'
    end
  end
  object DS_Comprobante_FormaPago: TDataSource
    DataSet = ZQ_Comprobante_FormaPago
    Left = 713
    Top = 321
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
            Item = BtAgregarPago
            Visible = True
          end
          item
            BeginGroup = True
            Item = BtAceptarPago
            Visible = True
          end
          item
            Item = BtCancelarPago
            Visible = True
          end
          item
            BeginGroup = True
            Item = btsalir
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
      end
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'vertical'
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
            Item = btBuscProd
            Visible = True
          end
          item
            Item = BtBuscarProducto
            Visible = True
          end
          item
            BeginGroup = True
            Item = bt_BuscarCliente
            Visible = True
          end
          item
            Item = btIVA
            Visible = True
          end
          item
            Item = BtVendedor
            Visible = True
          end
          item
            BeginGroup = True
            Item = btPreventa
            Visible = True
          end>
        Name = 'vertical'
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
    Left = 592
    Top = 432
    DockControlHeights = (
      88
      0
      0
      52)
    object BtBuscarProducto: TdxBarLargeButton
      Caption = 'F2 B'#250'squeda'
      Category = 0
      Hint = 'F2 B'#250'squeda'
      Visible = ivAlways
      ImageIndex = 29
      ShortCut = 113
      OnClick = BtBuscarProductoClick
      AutoGrayScale = False
    end
    object BtModificar: TdxBarLargeButton
      Caption = 'Cancelar'
      Category = 0
      Hint = 'Modifica el registro actual'
      Visible = ivAlways
      ImageIndex = 4
      ShortCut = 114
      AutoGrayScale = False
    end
    object btBuscProd: TdxBarLargeButton
      Caption = 'F1 Productos'
      Category = 0
      Hint = 'F1 Productos'
      Visible = ivAlways
      ImageIndex = 7
      ShortCut = 112
      OnClick = ABuscarExecute
      AutoGrayScale = False
    end
    object BtAgregarPago: TdxBarLargeButton
      Caption = 'F9 Agregar Producto'
      Category = 0
      Hint = 'F9 Agregar Producto'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = BtAgregarPagoClick
      AutoGrayScale = False
    end
    object BtAceptarPago: TdxBarLargeButton
      Caption = 'F10 Aceptar pagos'
      Category = 0
      Enabled = False
      Hint = 'Guarda e Imprime la liquidaci'#243'n'
      Visible = ivAlways
      ImageIndex = 5
      OnClick = BtAceptarPagoClick
      AutoGrayScale = False
    end
    object BtCancelarPago: TdxBarLargeButton
      Caption = 'F11 Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancela la liquidaci'#243'n'
      Visible = ivAlways
      ImageIndex = 9
      OnClick = BtCancelarPagoClick
      AutoGrayScale = False
    end
    object BtVendedor: TdxBarLargeButton
      Caption = 'F5 Vendedor'
      Category = 0
      Hint = 'F5 Vendedor'
      Visible = ivAlways
      ImageIndex = 3
      ShortCut = 116
      OnClick = btVendedorClick
      AutoGrayScale = False
    end
    object Bt_Cierre_Z: TdxBarLargeButton
      Align = iaRight
      Caption = '(Ctrl+Z) Cierre Z'
      Category = 0
      Hint = 'Aplica el cierre Z de la impresora Fiscal'
      Visible = ivAlways
      ImageIndex = 70
      AutoGrayScale = False
    end
    object btPreventa: TdxBarLargeButton
      Caption = 'F8 Preventa'
      Category = 0
      Hint = 'F8 Preventa'
      Visible = ivAlways
      ImageIndex = 79
      OnClick = btPreventaClick
      AutoGrayScale = False
    end
    object btsalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'F12 Salir'
      Category = 0
      Hint = 'F12 Salir'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = btsalirClick
      AutoGrayScale = False
    end
    object bt_accion: TdxBarControlContainerItem
      Caption = 'Acci'#243'n: '
      Category = 0
      Hint = 'Acci'#243'n: '
      Visible = ivAlways
    end
    object bt_motivo_baja: TdxBarControlContainerItem
      Caption = 'Motivo: '
      Category = 0
      Hint = 'Motivo de la Baja '
      Visible = ivNever
    end
    object bt_VerDetalle: TdxBarLargeButton
      Caption = 'Ver Detalle'
      Category = 0
      Enabled = False
      Hint = 'Ver Detalle'
      Visible = ivAlways
      ImageIndex = 13
      AutoGrayScale = False
    end
    object bt_BuscarCliente: TdxBarLargeButton
      Caption = 'F3 Clientes'
      Category = 0
      Hint = 'F3 Clientes'
      Visible = ivAlways
      ImageIndex = 56
      OnClick = bt_BuscarClienteClick
      AutoGrayScale = False
    end
    object Bt_Detalle: TdxBarLargeButton
      Caption = 'Detalle'
      Category = 0
      Enabled = False
      Hint = 'Detalle'
      Visible = ivAlways
      ImageIndex = 31
      AutoGrayScale = False
    end
    object Bt_Imprimir_Arqueo: TdxBarLargeButton
      Caption = 'Imprimir Arqueo'
      Category = 0
      Hint = 'Imprimir Arqueo'
      Visible = ivAlways
      ImageIndex = 20
      AutoGrayScale = False
    end
    object Bt_Imprimir_convenio: TdxBarLargeButton
      Caption = 'Imprimir Convenio'
      Category = 0
      Enabled = False
      Hint = 'Imprimir Convenio'
      Visible = ivAlways
      ImageIndex = 20
      AutoGrayScale = False
    end
    object BtLeerCodigo: TdxBarLargeButton
      Caption = 'F8 Leer C'#243'digo'
      Category = 0
      Hint = 'Leer Codigo'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = BtLeerCodigoClick
      AutoGrayScale = False
    end
    object btIVA: TdxBarLargeButton
      Caption = 'F4 Tipo IVA'
      Category = 0
      Hint = 'F4 Tipo IVA'
      Visible = ivAlways
      ImageIndex = 17
      OnClick = btIVAClick
      AutoGrayScale = False
    end
    object btLiquidar: TdxBarLargeButton
      Caption = 'Buscar Cuota'
      Category = 0
      Enabled = False
      Hint = 'Buscar Cuota'
      Visible = ivAlways
      ImageIndex = 62
      AutoGrayScale = False
    end
    object Bt_imprimir_listadoFP: TdxBarLargeButton
      Caption = 'Imprimir Listado FP'
      Category = 0
      Enabled = False
      Hint = 'Imprimir Listado FP'
      Visible = ivNever
      ImageIndex = 20
      AutoGrayScale = False
    end
    object bt_cierre_X: TdxBarLargeButton
      Caption = '(Ctrl+X) Cierre X'
      Category = 0
      Hint = '(Ctrl+X) Cierre X'
      Visible = ivAlways
      ImageIndex = 57
      AutoGrayScale = False
    end
    object GrupoBuscarCliente: TdxBarGroup
      Items = (
        'BtBuscarProducto')
    end
    object GrupoLeerCodigo: TdxBarGroup
      Items = (
        'BtLeerCodigo'
        'BtAgregarPago')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Items = (
        'BtAceptarPago'
        'BtCancelarPago')
    end
  end
  object ZQ_Comprobante: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from comprobante')
    Params = <>
    Left = 122
    Top = 50
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
    object ZQ_ComprobanteIMPORTE_TOTAL: TFloatField
      FieldName = 'IMPORTE_TOTAL'
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
    object ZQ_Comprobantepers_nombre: TStringField
      FieldKind = fkLookup
      FieldName = 'pers_nombre'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object ZQ_Comprobantepers_direccion: TStringField
      FieldKind = fkLookup
      FieldName = 'pers_direccion'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'DIRECCION'
      KeyFields = 'ID_CLIENTE'
      Size = 50
      Lookup = True
    end
    object ZQ_Comprobantepers_cuit: TStringField
      FieldKind = fkLookup
      FieldName = 'pers_cuit'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'CUIT_CUIL'
      KeyFields = 'ID_CLIENTE'
      Lookup = True
    end
    object ZQ_Comprobantepers_codigo: TStringField
      FieldKind = fkLookup
      FieldName = 'pers_codigo'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'CODIGO_CORTO'
      KeyFields = 'ID_CLIENTE'
      Lookup = True
    end
    object ZQ_ComprobantePUNTO_VENTA: TIntegerField
      FieldName = 'PUNTO_VENTA'
    end
    object ZQ_ComprobanteNUMERO_CPB: TIntegerField
      FieldName = 'NUMERO_CPB'
    end
    object ZQ_ComprobanteFECHA_ANULADO: TDateField
      FieldName = 'FECHA_ANULADO'
    end
    object ZQ_ComprobanteID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_TIPO_MOVIMIENTO'
    end
    object ZQ_ComprobanteIMPORTE_VENTA: TFloatField
      FieldName = 'IMPORTE_VENTA'
    end
  end
  object DS_Comprobante: TDataSource
    DataSet = CD_Comprobante
    Left = 256
    Top = 152
  end
  object CD_DetalleFactura: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 362
    Top = 163
    object CD_DetalleFacturaID_COMPROBANTE_DETALLE: TIntegerField
      FieldName = 'ID_COMPROBANTE_DETALLE'
    end
    object CD_DetalleFacturaproducto: TStringField
      FieldKind = fkLookup
      FieldName = 'producto'
      LookupDataSet = ZQ_DetalleProd
      LookupKeyFields = 'ID_PRODUCTO'
      LookupResultField = 'DETALLE_PROD'
      KeyFields = 'ID_PRODUCTO'
      Size = 200
      Lookup = True
    end
    object CD_DetalleFacturaID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object CD_DetalleFacturaID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
    end
    object CD_DetalleFacturaDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 200
    end
    object CD_DetalleFacturaCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object CD_DetalleFacturaIMPORTE_FINAL: TFloatField
      FieldName = 'IMPORTE_FINAL'
      DisplayFormat = '$ ##,###,##0.00'
    end
    object CD_DetalleFacturaPORC_DESCUENTO: TFloatField
      FieldName = 'PORC_DESCUENTO'
    end
    object CD_DetalleFacturaBASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
      DisplayFormat = '$ ##,###,##0.00'
      EditFormat = '$ ##,###,##0.00'
    end
    object CD_DetalleFacturaIMPORTE_UNITARIO: TFloatField
      FieldName = 'IMPORTE_UNITARIO'
      DisplayFormat = '$ ##,###,##0.00'
      EditFormat = '$ ##,###,##0.00'
    end
    object CD_DetalleFacturaIMPUESTO_INTERNO: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
    end
    object CD_DetalleFacturaPORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
    object CD_DetalleFacturaIMPORTE_VENTA: TFloatField
      FieldName = 'IMPORTE_VENTA'
      DisplayFormat = '$ ##,###,##0.00'
    end
    object CD_DetalleFacturaIMPORTE_IVA: TFloatField
      FieldName = 'IMPORTE_IVA'
      DisplayFormat = '$ ##,###,##0.00'
    end
  end
  object DS_DetalleFactura: TDataSource
    DataSet = CD_DetalleFactura
    Left = 464
    Top = 168
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ZQ_Comprobante
    Left = 186
    Top = 139
  end
  object EKListadoProducto: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select sp.id_producto,'
      '       '#39'C'#243'digo: '#39'||pr.cod_corto||'
      '       COALESCE ('#39' | Producto: '#39' || pc.nombre,'#39#39')||'
      '       COALESCE ('#39' | Stock: '#39' || sp.stock_actual,'#39#39')||'
      '       COALESCE ('#39' | Sucursal: '#39' || su.nombre,'#39#39')||'
      '        COALESCE ('#39' | Secci'#243'n: '#39' || ps.seccion,'#39#39')||'
      '        COALESCE ('#39' | Sector: '#39' || ps.sector,'#39#39')||'
      '        COALESCE ('#39' | Fila: '#39' || ps.fila,'#39#39')||'
      '        COALESCE ('#39' | Columna: '#39' || ps.columna,'#39#39')'
      '         AS posicSucursal'
      'from stock_producto sp'
      'left join producto pr on (sp.id_producto =  pr.id_producto)'
      
        'left join producto_cabecera pc on (pr.id_prod_cabecera =  pc.id_' +
        'prod_cabecera)'
      
        'left join posicion_sucursal ps on (ps.id_posicion_sucursal = sp.' +
        'id_posicion_sucursal)'
      'left join sucursal su on (ps.id_sucursal = su.id_sucursal)'
      'where (ps.punto_salida='#39'S'#39')'
      'order by 2')
    CampoBuscar = 'posicSucursal'
    CampoClave = 'id_producto'
    BuscarEnQuery = ZQ_Productos
    TituloVentana = 'Buscar Producto'
    Left = 280
    Top = 96
  end
  object ATeclasRapidas: TActionManager
    Left = 800
    Top = 178
    StyleName = 'XP Style'
    object ABuscar: TAction
      Caption = 'ABuscar'
      ShortCut = 112
      OnExecute = ABuscarExecute
    end
    object ANuevo: TAction
      Caption = 'ABuscarProd'
      ShortCut = 113
      OnExecute = ANuevoExecute
    end
    object ATipoIVA: TAction
      Caption = 'ATipoIVA'
      ShortCut = 115
      OnExecute = ATipoIVAExecute
    end
    object ACliente: TAction
      Caption = 'ACliente'
      ShortCut = 114
      OnExecute = AClienteExecute
    end
    object APago: TAction
      Caption = 'APago'
      ShortCut = 120
      OnExecute = APagoExecute
    end
    object ASalir: TAction
      Caption = 'ASalir'
      ShortCut = 123
      OnExecute = ASalirExecute
    end
    object AGuardar: TAction
      Caption = 'AAceptar'
      ShortCut = 121
      OnExecute = AGuardarExecute
    end
    object ACancelar: TAction
      Caption = 'ACancelar'
      ShortCut = 122
      OnExecute = ACancelarExecute
    end
    object AVendedor: TAction
      Caption = 'AVendedor'
      ShortCut = 116
      OnExecute = AVendedorExecute
    end
    object ANuevoProd: TAction
      Caption = 'ANuevoProd'
      ShortCut = 117
      OnExecute = ANuevoProdExecute
    end
    object ANuevaFormaPago: TAction
      Caption = 'ANuevaFormaPago'
      ShortCut = 118
      OnExecute = ANuevaFormaPagoExecute
    end
    object APreventa: TAction
      Caption = 'Preventa'
      ShortCut = 119
      OnExecute = APreventaExecute
    end
  end
  object CD_Fpago: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 653
    Top = 488
    object CD_FpagoID_COMPROB_FP: TIntegerField
      FieldName = 'ID_COMPROB_FP'
    end
    object CD_FpagoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object CD_FpagoID_TIPO_FORMAPAG: TIntegerField
      DisplayWidth = 50
      FieldName = 'ID_TIPO_FORMAPAG'
    end
    object CD_FpagomedioPago: TStringField
      FieldKind = fkLookup
      FieldName = 'medioPago'
      LookupDataSet = ZQ_FormasPago
      LookupKeyFields = 'ID_TIPO_FORMAPAGO'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'ID_TIPO_FORMAPAG'
      Size = 50
      Lookup = True
    end
    object CD_FpagoMDCP_FECHA: TDateField
      FieldName = 'MDCP_FECHA'
      EditMask = '!99/99/0000;1;_'
    end
    object CD_FpagoMDCP_BANCO: TStringField
      FieldName = 'MDCP_BANCO'
      Size = 50
    end
    object CD_FpagoMDCP_CHEQUE: TStringField
      FieldName = 'MDCP_CHEQUE'
      Size = 50
    end
    object CD_FpagoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      DisplayFormat = '$ ##,###,##0.00'
      EditFormat = '##,###,##0.00'
    end
    object CD_FpagoCONCILIADO: TDateField
      FieldName = 'CONCILIADO'
    end
    object CD_FpagoCUENTA_INGRESO: TIntegerField
      FieldName = 'CUENTA_INGRESO'
    end
    object CD_FpagoCUENTA_EGRESO: TIntegerField
      FieldName = 'CUENTA_EGRESO'
    end
    object CD_Fpago_ctaIngreso: TStringField
      FieldKind = fkLookup
      FieldName = '_ctaIngreso'
      LookupDataSet = ZQ_ListadoCuenta
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'NOMBRE_CUENTA'
      KeyFields = 'CUENTA_INGRESO'
      Size = 100
      Lookup = True
    end
    object CD_Fpago_esCtaCorr: TStringField
      FieldName = '_esCtaCorr'
      Size = 1
    end
    object CD_Fpago_desc_rec: TFloatField
      FieldKind = fkLookup
      FieldName = '_desc_rec'
      LookupDataSet = ZQ_FormasPago
      LookupKeyFields = 'ID_TIPO_FORMAPAGO'
      LookupResultField = 'DESC_REC'
      KeyFields = 'ID_TIPO_FORMAPAG'
      Lookup = True
    end
    object CD_Fpago_importeVenta: TFloatField
      FieldName = '_importeVenta'
      DisplayFormat = '$ ##,###,##0.00'
      EditFormat = '##,###,##0.00'
    end
  end
  object DSFpago: TDataSource
    DataSet = CD_Fpago
    Left = 461
    Top = 402
  end
  object ZQ_FormasPago: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_formapago')
    Params = <>
    Left = 709
    Top = 210
    object ZQ_FormasPagoID_TIPO_FORMAPAGO: TIntegerField
      FieldName = 'ID_TIPO_FORMAPAGO'
      Required = True
    end
    object ZQ_FormasPagoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object ZQ_FormasPagoBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_FormasPagoIF: TStringField
      FieldName = 'IF'
      Size = 1
    end
    object ZQ_FormasPagoDESC_REC: TFloatField
      FieldName = 'DESC_REC'
    end
    object ZQ_FormasPagoCOD_CORTO: TIntegerField
      FieldName = 'COD_CORTO'
    end
  end
  object ZQ_Personas: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select p.*,prov.nombre_provincia as prov,td.nombre_tipo_doc as t' +
        'doc,ti.nombre_tipo_iva as tiva,(p.descuento_especial*100) as por' +
        'cDesc'
      'from Persona p'
      'left join provincia prov on (p.id_provincia=prov.id_provincia)'
      'left join tipo_documento td on (td.id_tipo_doc=p.id_tipo_doc)'
      'left join tipo_iva ti on (ti.id_tipo_iva=p.id_tipo_iva)')
    Params = <>
    Left = 293
    Top = 202
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
    object ZQ_PersonasDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
    object ZQ_PersonasCUIT_CUIL: TStringField
      FieldName = 'CUIT_CUIL'
      Size = 30
    end
    object ZQ_PersonasDESCUENTO_ESPECIAL: TFloatField
      FieldName = 'DESCUENTO_ESPECIAL'
    end
    object ZQ_PersonasCODIGO_CORTO: TIntegerField
      FieldName = 'CODIGO_CORTO'
    end
    object ZQ_PersonasPROV: TStringField
      FieldName = 'PROV'
      Size = 50
    end
    object ZQ_PersonasTDOC: TStringField
      FieldName = 'TDOC'
    end
    object ZQ_PersonasTIVA: TStringField
      FieldName = 'TIVA'
      Size = 50
    end
    object ZQ_PersonasPORCDESC: TFloatField
      FieldName = 'PORCDESC'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQ_Personas
    Left = 480
    Top = 312
  end
  object DS_Personas: TDataSource
    DataSet = ZQ_Personas
    Left = 224
    Top = 64
  end
  object CD_Comprobante: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 210
    Top = 296
    object CD_ComprobanteID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object CD_ComprobanteID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object CD_ComprobanteID_PROVEEDOR: TIntegerField
      FieldName = 'ID_PROVEEDOR'
    end
    object CD_ComprobanteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object CD_ComprobanteID_TIPO_CPB: TIntegerField
      FieldName = 'ID_TIPO_CPB'
    end
    object CD_ComprobanteID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object CD_ComprobanteID_COMP_ESTADO: TIntegerField
      FieldName = 'ID_COMP_ESTADO'
    end
    object CD_ComprobanteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 50
    end
    object CD_ComprobanteFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object CD_ComprobanteOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
      Size = 500
    end
    object CD_ComprobanteBASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
    end
    object CD_ComprobanteSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object CD_ComprobanteIMPORTE_TOTAL: TFloatField
      FieldName = 'IMPORTE_TOTAL'
    end
    object CD_ComprobantePORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
    object CD_ComprobanteIMPORTE_IVA: TFloatField
      FieldName = 'IMPORTE_IVA'
    end
    object CD_ComprobantePORC_DESCUENTO: TFloatField
      FieldName = 'PORC_DESCUENTO'
    end
    object CD_ComprobanteIMPORTE_DESCUENTO: TFloatField
      FieldName = 'IMPORTE_DESCUENTO'
    end
    object CD_ComprobanteENCABEZADO: TStringField
      FieldName = 'ENCABEZADO'
      Size = 500
    end
    object CD_ComprobantePIE: TStringField
      FieldName = 'PIE'
      Size = 500
    end
    object CD_ComprobanteFECHA_COBRADA: TDateField
      FieldName = 'FECHA_COBRADA'
    end
    object CD_ComprobanteFECHA_ENVIADA: TDateField
      FieldName = 'FECHA_ENVIADA'
    end
    object CD_ComprobanteFECHA_IMPRESA: TDateField
      FieldName = 'FECHA_IMPRESA'
    end
    object CD_ComprobanteFECHA_VENCIMIENTO: TDateField
      FieldName = 'FECHA_VENCIMIENTO'
    end
    object CD_Comprobantepers_nombre: TStringField
      FieldKind = fkLookup
      FieldName = 'pers_nombre'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object CD_Comprobantepers_cuit: TStringField
      FieldKind = fkLookup
      FieldName = 'pers_cuit'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'CUIT_CUIL'
      KeyFields = 'ID_CLIENTE'
      Lookup = True
    end
    object CD_Comprobantepers_codigo: TStringField
      FieldKind = fkLookup
      FieldName = 'pers_codigo'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'CODIGO_CORTO'
      KeyFields = 'ID_CLIENTE'
      Lookup = True
    end
    object CD_Comprobantepers_iva: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'pers_iva'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'TIVA'
      KeyFields = 'ID_CLIENTE'
      Size = 30
      Lookup = True
    end
    object CD_Comprobantepers_tel: TStringField
      FieldKind = fkLookup
      FieldName = 'pers_tel'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'TELEFONO'
      KeyFields = 'ID_CLIENTE'
      Size = 30
      Lookup = True
    end
    object CD_Comprobantepers_direccion: TStringField
      FieldKind = fkLookup
      FieldName = 'pers_direccion'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'DIRECCION'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object CD_ComprobanteID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object CD_ComprobantetipoIVA: TStringField
      FieldKind = fkLookup
      FieldName = 'tipoIVA'
      LookupDataSet = ZQ_TipoIVA
      LookupKeyFields = 'ID_TIPO_IVA'
      LookupResultField = 'NOMBRE_TIPO_IVA'
      KeyFields = 'ID_TIPO_IVA'
      Size = 50
      Lookup = True
    end
    object CD_Comprobantepers_desc: TStringField
      FieldKind = fkLookup
      FieldName = 'pers_desc'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'PORCDESC'
      KeyFields = 'ID_CLIENTE'
      Size = 10
      Lookup = True
    end
    object CD_ComprobantenVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'nVendedor'
      LookupDataSet = ZQ_Personas
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_VENDEDOR'
      Size = 100
      Lookup = True
    end
    object CD_ComprobantePUNTO_VENTA: TIntegerField
      FieldName = 'PUNTO_VENTA'
    end
    object CD_ComprobanteNUMERO_CPB: TIntegerField
      FieldName = 'NUMERO_CPB'
    end
    object CD_ComprobanteFECHA_ANULADO: TDateField
      FieldName = 'FECHA_ANULADO'
    end
    object CD_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_TIPO_MOVIMIENTO'
    end
    object CD_ComprobanteIMPORTE_VENTA: TFloatField
      FieldName = 'IMPORTE_VENTA'
    end
  end
  object ZQ_TipoIVA: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_IVA')
    Params = <>
    Left = 141
    Top = 322
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
  object EKListadoIVA: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select ID_TIPO_IVA,nombre_TIPO_IVA'
      'from tipo_IVA')
    CampoBuscar = 'NOMBRE_TIPO_IVA'
    CampoClave = 'ID_TIPO_IVA'
    TituloVentana = 'Tipo IVA'
    Left = 264
    Top = 272
  end
  object EKDbSuma1: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'importe_final'
      end
      item
        Operacion = goSum
        NombreCampo = 'importe_iva'
      end>
    DataSet = CD_DetalleFactura
    SumListChanged = EKDbSuma1SumListChanged
    Left = 652
    Top = 166
  end
  object EKDbSuma2: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'importe'
      end>
    DataSet = CD_Fpago
    SumListChanged = EKDbSuma2SumListChanged
    Left = 516
    Top = 450
  end
  object EKListadoClientes: TEKListadoSQL
    Modelo = DM.EKModelo
    CampoBuscar = 'busqueda'
    CampoClave = 'id_persona'
    BuscarEnQuery = ZQ_Personas
    TituloVentana = 'Seleccionar Cliente'
    Left = 493
    Top = 80
  end
  object ZSP_Comprobante: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_COMPROBANTE_ID'
    Left = 177
    Top = 233
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    object ZSP_ComprobanteID: TIntegerField
      FieldName = 'ID'
    end
    object ZSP_ComprobanteCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 30
    end
  end
  object EKListadoVendedores: TEKListadoSQL
    Modelo = DM.EKModelo
    CampoBuscar = 'busqueda'
    CampoClave = 'id_persona'
    BuscarEnQuery = ZQ_Personas
    TituloVentana = 'Seleccionar Vendedor'
    Left = 301
    Top = 8
  end
  object EK_ListadoMedCobroPago: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'SELECT tf.id_tipo_formapago,tf.descripcion||'#39' '#39'||'
      '       COALESCE ('#39'| C'#243'digo: '#39' || tf.cod_corto,'#39#39')||'#39' '#39'||'
      
        '       COALESCE ('#39'| Desc/Rec: '#39' || (tf.desc_rec*100)||'#39'% '#39','#39#39') A' +
        'S descr'
      'FROM TIPO_FORMAPAGO tf'
      'where tf.baja<>'#39'S'#39)
    CampoBuscar = 'descr'
    CampoClave = 'id_tipo_formapago'
    TituloVentana = 'Forma de Pago'
    Left = 392
    Top = 329
  end
  object ZQ_DetalleProd: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select pc.nombre as nombre_producto, m.medida, a.descripcion as ' +
        'articulo, ta.descripcion as tipo_articulo, ma.nombre_marca,p.id_' +
        'producto, p.descripcion, p.precio_costo, p.precio_venta, p.coef_' +
        'ganancia, p.coef_descuento, p.impuesto_interno, p.impuesto_iva, ' +
        'p.cod_corto, p.codigo_barra,pc.imagen'
      
        ',pc.nombre||'#39'  -  M: '#39'||coalesce(m.medida,'#39#39')||'#39'  -  CB:'#39'||coale' +
        'sce(p.codigo_barra,'#39#39') DETALLE_PROD'
      'from producto p'
      'left join medida m on (p.id_medida = m.id_medida)'
      
        'left join producto_cabecera pc on (p.id_prod_cabecera = pc.id_pr' +
        'od_cabecera)'
      'left join articulo a on (pc.id_articulo = a.id_articulo)'
      
        'left join tipo_articulo ta on (a.id_tipo_articulo = ta.id_tipo_a' +
        'rticulo)'
      'left join marca ma on (pc.id_marca = ma.id_marca)'
      'where pc.baja <> '#39'S'#39
      ''
      '')
    Params = <>
    Left = 560
    Top = 72
    object StringField1: TStringField
      FieldName = 'NOMBRE_PRODUCTO'
      Size = 100
    end
    object StringField2: TStringField
      FieldName = 'MEDIDA'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'ARTICULO'
      Size = 200
    end
    object StringField4: TStringField
      FieldName = 'TIPO_ARTICULO'
      Size = 200
    end
    object StringField5: TStringField
      FieldName = 'NOMBRE_MARCA'
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
    object FloatField1: TFloatField
      FieldName = 'PRECIO_COSTO'
      currency = True
    end
    object FloatField2: TFloatField
      FieldName = 'PRECIO_VENTA'
      currency = True
    end
    object FloatField3: TFloatField
      FieldName = 'COEF_GANANCIA'
    end
    object FloatField4: TFloatField
      FieldName = 'COEF_DESCUENTO'
    end
    object FloatField5: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
    end
    object FloatField6: TFloatField
      FieldName = 'IMPUESTO_IVA'
    end
    object StringField7: TStringField
      FieldName = 'COD_CORTO'
    end
    object StringField8: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 40
    end
    object IntegerField1: TIntegerField
      FieldName = 'ID_PRODUCTO'
      Required = True
    end
    object BlobField1: TBlobField
      FieldName = 'IMAGEN'
    end
    object StringField9: TStringField
      FieldName = 'DETALLE_PROD'
      ReadOnly = True
      Size = 186
    end
  end
  object EKListadoCuenta: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select cta.*, tipo.descripcion,'
      
        '       coalesce(cta.codigo||'#39' - '#39', '#39#39')||cta.nombre_cuenta||coale' +
        'sce('#39' - N'#176': '#39'||cta.nro_cta_bancaria, '#39' - N'#176': S/N'#39') as Busqueda'
      'from cuenta cta'
      
        'left join tipo_formapago tipo on (cta.medio_defecto = tipo.id_ti' +
        'po_formapago)'
      'where cta.baja = '#39'N'#39)
    CampoBuscar = 'busqueda'
    CampoClave = 'id_cuenta'
    TituloVentana = 'Buscar Cuenta'
    Left = 429
    Top = 473
  end
  object ZQ_ListadoCuenta: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select cta.*'
      'from cuenta cta'
      'where baja='#39'N'#39)
    Params = <>
    Left = 653
    Top = 305
    object ZQ_ListadoCuentaID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
    end
    object ZQ_ListadoCuentaMEDIO_DEFECTO: TIntegerField
      FieldName = 'MEDIO_DEFECTO'
    end
    object ZQ_ListadoCuentaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object ZQ_ListadoCuentaNOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 50
    end
    object ZQ_ListadoCuentaNRO_CTA_BANCARIA: TStringField
      FieldName = 'NRO_CTA_BANCARIA'
      Size = 10
    end
    object ZQ_ListadoCuentaBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ListadoCuentaA_CTA_CORRIENTE: TStringField
      FieldName = 'A_CTA_CORRIENTE'
      Size = 1
    end
    object ZQ_ListadoCuentaID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
  end
  object DS_Sucursal: TDataSource
    Left = 115
    Top = 153
  end
  object RelojStock: TTimer
    Enabled = False
    OnTimer = RelojStockTimer
    Left = 868
    Top = 454
  end
  object RelojMaximoV: TTimer
    Enabled = False
    OnTimer = RelojMaximoVTimer
    Left = 868
    Top = 518
  end
  object EKDbSuma3: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = '_importeVenta'
      end>
    DataSet = CD_Fpago
    SumListChanged = EKDbSuma2SumListChanged
    Left = 868
    Top = 282
  end
  object PopUpProductos: TPopupMenu
    Images = FPrincipal.Iconos_Menu_16
    MenuAnimation = [maLeftToRight]
    Left = 792
    Top = 248
    object AgregaProd: TMenuItem
      Caption = 'Agregar Producto'
      ImageIndex = 11
      ShortCut = 117
      OnClick = ANuevoProdExecute
    end
    object QuitarProd: TMenuItem
      Caption = 'Quitar Producto'
      ImageIndex = 12
      OnClick = btQuitarProductoClick
    end
  end
end
