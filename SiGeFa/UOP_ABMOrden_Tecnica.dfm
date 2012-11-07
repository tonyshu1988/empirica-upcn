object FOP_ABM_OrdenTecnica: TFOP_ABM_OrdenTecnica
  Left = 259
  Top = 119
  Width = 1024
  Height = 700
  Caption = 'ABM Orden T'#233'cnica'
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
    Left = 114
    Top = 0
    Width = 902
    Height = 621
    Align = alClient
    Caption = 'PanelContenedorDerecha'
    TabOrder = 0
    object PanelProductosYFPago: TPanel
      Left = 1
      Top = 194
      Width = 900
      Height = 426
      Align = alClient
      Caption = 'PanelProductosYFPago'
      TabOrder = 0
      object PanelListadoProducto: TPanel
        Left = 1
        Top = 1
        Width = 898
        Height = 251
        Align = alClient
        Caption = 'PanelListadoProducto'
        TabOrder = 0
        object Panel6: TPanel
          Left = 1
          Top = 206
          Width = 896
          Height = 44
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 0
          object lblCantProductos: TLabel
            Left = 1
            Top = 28
            Width = 894
            Height = 15
            Align = alBottom
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
            Top = 5
            Width = 127
            Height = 23
            Caption = 'Quitar Prod./Serv.'
            TabOrder = 0
          end
          object Button1: TButton
            Left = 808
            Top = 4
            Width = 83
            Height = 23
            Caption = 'Quitar OS'
            TabOrder = 1
          end
        end
        object POs: TPanel
          Left = 584
          Top = 1
          Width = 313
          Height = 205
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            Left = 0
            Top = 0
            Width = 313
            Height = 13
            Align = alTop
            Alignment = taCenter
            Caption = 'Obras Sociales'
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
          object DBGrid1: TDBGrid
            Left = 0
            Top = 13
            Width = 313
            Height = 139
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
                FieldName = 'DETALLE'
                Title.Caption = 'O.S.'
                Width = 192
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'IMPORTE_FINAL'
                Title.Caption = 'Importe'
                Width = 100
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 0
            Top = 152
            Width = 313
            Height = 53
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object Label33: TLabel
              Left = 0
              Top = 0
              Width = 313
              Height = 13
              Align = alTop
              Alignment = taCenter
              Caption = 'Laboratorio'
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
          end
        end
        object PProductos: TPanel
          Left = 1
          Top = 1
          Width = 583
          Height = 205
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object Label11: TLabel
            Left = 0
            Top = 0
            Width = 583
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
          object Splitter1: TSplitter
            Left = 580
            Top = 13
            Height = 192
            Align = alRight
          end
          object DBGridListadoProductos: TDBGrid
            Left = 0
            Top = 13
            Width = 580
            Height = 192
            Align = alClient
            Color = 15527129
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
                ReadOnly = True
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
                Width = 307
                Visible = True
              end
              item
                Color = 16772332
                Expanded = False
                FieldName = 'IMPORTE_UNITARIO'
                ReadOnly = True
                Title.Caption = 'Importe Unit.'
                Width = 66
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
      end
      object PPieBoleta: TPanel
        Left = 1
        Top = 384
        Width = 898
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object lblTotAPagar: TLabel
          Left = 152
          Top = 0
          Width = 746
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
      object PanelFormaPago: TPanel
        Left = 1
        Top = 252
        Width = 898
        Height = 132
        Align = alBottom
        Caption = 'PVarios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object PObservaciones: TPanel
          Left = 1
          Top = 1
          Width = 896
          Height = 130
          Align = alClient
          TabOrder = 1
          object Label2: TLabel
            Left = 1
            Top = 1
            Width = 894
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Observaciones'
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
          object dbObsOrden: TDBRichEdit
            Left = 1
            Top = 17
            Width = 894
            Height = 112
            Align = alClient
            Color = clCream
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
        object PReceta: TPanel
          Left = 1
          Top = 1
          Width = 896
          Height = 130
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label3: TLabel
            Left = 107
            Top = 55
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'Esf.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 165
            Top = 55
            Width = 20
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cil.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 221
            Top = 55
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'Eje'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 35
            Top = 74
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ojo Der.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 37
            Top = 97
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ojo Izq.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 1
            Top = 1
            Width = 894
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Codificaci'#243'n RP'
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
          object Label19: TLabel
            Left = 152
            Top = 31
            Width = 39
            Height = 16
            Caption = 'Lejos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object Label20: TLabel
            Left = 395
            Top = 55
            Width = 24
            Height = 13
            Alignment = taRightJustify
            Caption = 'Esf.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 453
            Top = 55
            Width = 20
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cil.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 509
            Top = 55
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = 'Eje'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 323
            Top = 74
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ojo Der.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label31: TLabel
            Left = 325
            Top = 97
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ojo Izq.'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 440
            Top = 31
            Width = 39
            Height = 16
            Caption = 'Lejos'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Layout = tlCenter
          end
          object DBEdit6: TDBEdit
            Left = 92
            Top = 70
            Width = 54
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = 15527129
            DataField = 'NOMBRE_MARCA'
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit7: TDBEdit
            Left = 92
            Top = 93
            Width = 54
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = 15527129
            DataField = 'NOMBRE_MARCA'
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit8: TDBEdit
            Left = 148
            Top = 70
            Width = 54
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = 15527129
            DataField = 'NOMBRE_MARCA'
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit18: TDBEdit
            Left = 148
            Top = 93
            Width = 54
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = 15527129
            DataField = 'NOMBRE_MARCA'
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit19: TDBEdit
            Left = 204
            Top = 70
            Width = 54
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = 15527129
            DataField = 'NOMBRE_MARCA'
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit20: TDBEdit
            Left = 204
            Top = 93
            Width = 54
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = 15527129
            DataField = 'NOMBRE_MARCA'
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit21: TDBEdit
            Left = 380
            Top = 70
            Width = 54
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = 15527129
            DataField = 'NOMBRE_MARCA'
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit22: TDBEdit
            Left = 380
            Top = 93
            Width = 54
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = 15527129
            DataField = 'NOMBRE_MARCA'
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit23: TDBEdit
            Left = 436
            Top = 70
            Width = 54
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = 15527129
            DataField = 'NOMBRE_MARCA'
            ReadOnly = True
            TabOrder = 8
          end
          object DBEdit24: TDBEdit
            Left = 436
            Top = 93
            Width = 54
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = 15527129
            DataField = 'NOMBRE_MARCA'
            ReadOnly = True
            TabOrder = 9
          end
          object DBEdit25: TDBEdit
            Left = 492
            Top = 70
            Width = 54
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = 15527129
            DataField = 'NOMBRE_MARCA'
            ReadOnly = True
            TabOrder = 10
          end
          object DBEdit26: TDBEdit
            Left = 492
            Top = 93
            Width = 54
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = 15527129
            DataField = 'NOMBRE_MARCA'
            ReadOnly = True
            TabOrder = 11
          end
        end
        object PFormaPago: TPanel
          Left = 1
          Top = 1
          Width = 896
          Height = 130
          Align = alClient
          TabOrder = 0
          object Label36: TLabel
            Left = 1
            Top = 1
            Width = 894
            Height = 16
            Align = alTop
            Alignment = taCenter
            AutoSize = False
            Caption = 'Entregas [F7]'
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
          object PieGrilla: TPanel
            Left = 1
            Top = 97
            Width = 894
            Height = 32
            Align = alBottom
            BevelOuter = bvLowered
            TabOrder = 0
            object lblMaxVenta: TLabel
              Left = 1
              Top = 1
              Width = 892
              Height = 20
              Align = alTop
              Alignment = taCenter
              Caption = 'ORDEN CON SALDO PENDIENTE!!'
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
              Caption = 'Quitar Entrega'
              TabOrder = 0
            end
          end
          object DBGridFormaPago: TDBGrid
            Left = 1
            Top = 17
            Width = 894
            Height = 80
            Align = alClient
            Color = 15527129
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
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
      end
    end
    object PanelDetalles: TPanel
      Left = 1
      Top = 31
      Width = 900
      Height = 163
      Align = alTop
      TabOrder = 1
      object PanelDetalleCliente: TPanel
        Left = 1
        Top = 94
        Width = 898
        Height = 68
        Align = alBottom
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
          Width = 896
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
          Left = 422
          Top = 20
          Width = 36
          Height = 13
          Alignment = taRightJustify
          Caption = 'Edad:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 510
          Top = 20
          Width = 89
          Height = 13
          Caption = 'Tel'#233'fono/Cel:'
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
        object Label_DetalleCliente: TLabel
          Left = 393
          Top = 44
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Caption = 'Direcci'#243'n:'
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
          Left = 600
          Top = 16
          Width = 161
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'pers_desc'
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit14: TDBEdit
          Left = 462
          Top = 16
          Width = 43
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'pers_iva'
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit_DetalleCliente: TDBEdit
          Left = 462
          Top = 40
          Width = 302
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'pers_direccion'
          ReadOnly = True
          TabOrder = 3
        end
      end
      object PDetalleOrden: TPanel
        Left = 1
        Top = 1
        Width = 559
        Height = 93
        Align = alClient
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label22: TLabel
          Left = 10
          Top = 21
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nro Factura:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 45
          Top = 44
          Width = 43
          Height = 13
          Alignment = taRightJustify
          Caption = 'Marca:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 245
          Top = 68
          Width = 71
          Height = 13
          Caption = 'Prometido:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 267
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
        object Label7: TLabel
          Left = 1
          Top = 1
          Width = 557
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Detalles Orden T'#233'cnica'
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
        object Label26: TLabel
          Left = 264
          Top = 44
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Medida:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 316
          Top = 64
          Width = 85
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'DETALLE_PROD'
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 92
          Top = 17
          Width = 141
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'COD_CORTO'
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit3: TDBEdit
          Left = 92
          Top = 40
          Width = 163
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'NOMBRE_MARCA'
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 406
          Top = 64
          Width = 91
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'ARTICULO'
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit17: TDBEdit
          Left = 318
          Top = 40
          Width = 129
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'MEDIDA'
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 316
          Top = 17
          Width = 125
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'COD_CORTO'
          ReadOnly = True
          TabOrder = 5
        end
        object dbAvisar: TDBCheckBox
          Left = 96
          Top = 66
          Width = 73
          Height = 17
          Caption = 'Avisar'
          TabOrder = 6
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object Panel2: TPanel
        Left = 560
        Top = 1
        Width = 339
        Height = 93
        Align = alRight
        BevelOuter = bvLowered
        Caption = 'Panel2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label10: TLabel
          Left = 1
          Top = 1
          Width = 337
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'Detalles M'#233'dico'
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
        object Label14: TLabel
          Left = 13
          Top = 21
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Matr'#237'cula:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 12
          Top = 68
          Width = 65
          Height = 13
          Caption = 'Direcci'#243'n:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 22
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
        object DBEdit13: TDBEdit
          Left = 86
          Top = 64
          Width = 227
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'pers_nombre'
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit15: TDBEdit
          Left = 86
          Top = 17
          Width = 227
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'pers_codigo'
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit16: TDBEdit
          Left = 86
          Top = 40
          Width = 227
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          Color = 15527129
          DataField = 'pers_cuit'
          ReadOnly = True
          TabOrder = 2
        end
      end
    end
    object PanelStatusBar: TPanel
      Left = 1
      Top = 1
      Width = 900
      Height = 30
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 2
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
            Item = BtLeerCB
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnFormaPago
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
            Item = bt_BuscarCliente
            Visible = True
          end
          item
            Item = BtVendedor
            Visible = True
          end
          item
            BeginGroup = True
            Item = btIVA
            Visible = True
          end
          item
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsOffice11
    UseF10ForMenu = False
    UseSystemFont = False
    Left = 904
    Top = 344
    DockControlHeights = (
      114
      0
      0
      52)
    object btBuscProd: TdxBarLargeButton
      Caption = 'F1 Productos'
      Category = 0
      Hint = 'F1 Productos'
      Visible = ivAlways
      ImageIndex = 7
      ShortCut = 112
      AutoGrayScale = False
    end
    object BtBuscarProducto: TdxBarLargeButton
      Caption = 'F2 B'#250'squeda'
      Category = 0
      Hint = 'F2 B'#250'squeda'
      Visible = ivAlways
      ImageIndex = 29
      ShortCut = 113
      AutoGrayScale = False
    end
    object bt_BuscarCliente: TdxBarLargeButton
      Caption = 'F3 Clientes'
      Category = 0
      Hint = 'F3 Clientes'
      Visible = ivAlways
      ImageIndex = 56
      AutoGrayScale = False
    end
    object btIVA: TdxBarLargeButton
      Caption = 'F4 Codificaci'#243'n RP'
      Category = 0
      Hint = 'F4 Codificaci'#243'n RP'
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 17
      AutoGrayScale = False
    end
    object BtVendedor: TdxBarLargeButton
      Caption = 'F5 Vendedor'
      Category = 0
      Hint = 'F5 Vendedor'
      Visible = ivAlways
      ImageIndex = 3
      ShortCut = 116
      AutoGrayScale = False
    end
    object BtLeerCB: TdxBarLargeButton
      Caption = 'F6 Leer C'#243'digo Producto'
      Category = 0
      Hint = 'F6 Leer C'#243'digo Producto'
      Visible = ivAlways
      ImageIndex = 85
      AutoGrayScale = False
    end
    object btnFormaPago: TdxBarLargeButton
      Caption = 'F7 Entrega'
      Category = 0
      Hint = 'F7 Entrega'
      Visible = ivAlways
      ImageIndex = 30
      AutoGrayScale = False
    end
    object btPreventa: TdxBarLargeButton
      Caption = 'F8 Observaciones'
      Category = 0
      Hint = 'F8 Observaciones'
      Visible = ivAlways
      ButtonStyle = bsChecked
      ImageIndex = 79
      AutoGrayScale = False
    end
    object btnVentaRapida: TdxBarLargeButton
      Caption = 'F9 Venta '#193'gil'
      Category = 0
      Hint = 'F9 Venta '#193'gil'
      Visible = ivAlways
      ImageIndex = 81
      ShortCut = 120
      AutoGrayScale = False
    end
    object BtAceptarPago: TdxBarLargeButton
      Caption = 'F10 Guardar Orden'
      Category = 0
      Hint = 'F10 Guardar Orden'
      Visible = ivAlways
      ImageIndex = 5
      AutoGrayScale = False
    end
    object BtCancelarPago: TdxBarLargeButton
      Caption = 'F11 Cancelar'
      Category = 0
      Visible = ivAlways
      ImageIndex = 9
      AutoGrayScale = False
    end
    object btsalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'F12 Salir'
      Category = 0
      Hint = 'F12 Salir'
      Visible = ivAlways
      ImageIndex = 6
      AutoGrayScale = False
    end
    object btCierreZ: TdxBarLargeButton
      Caption = 'Cierre Z'
      Category = 0
      Hint = 'Cierre Z'
      Visible = ivAlways
      ImageIndex = 83
      AutoGrayScale = False
    end
    object BtCierreX: TdxBarLargeButton
      Caption = 'Cierre X'
      Category = 0
      Hint = 'Cierre X'
      Visible = ivAlways
      ImageIndex = 84
      AutoGrayScale = False
    end
    object btnAuditoriaFiscal: TdxBarLargeButton
      Caption = 'Auditoria Z'
      Category = 0
      Hint = 'Auditoria Z'
      Visible = ivAlways
      ImageIndex = 63
      AutoGrayScale = False
    end
    object bt_Cargar_Orden: TdxBarLargeButton
      Caption = 'Cargar Orden'
      Category = 0
      Hint = 'Cargar Orden'
      Visible = ivAlways
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Items = (
        'BtAceptarPago'
        'BtCancelarPago')
    end
    object grupoVertical: TdxBarGroup
      Items = (
        'BtBuscarProducto'
        'btBuscProd'
        'BtVendedor'
        'btIVA'
        'bt_BuscarCliente'
        'BtLeerCB'
        'btsalir'
        'btPreventa'
        'btCierreZ'
        'BtCierreX'
        'btnFormaPago'
        'btnVentaRapida'
        'btnAuditoriaFiscal')
    end
  end
end
