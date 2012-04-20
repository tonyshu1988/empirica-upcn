object FABM_ProductoStock: TFABM_ProductoStock
  Left = 284
  Top = 162
  Width = 962
  Height = 602
  Caption = 'ABM Producto Stock'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  Visible = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFondo: TPanel
    Left = 0
    Top = 0
    Width = 954
    Height = 523
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 4
    object PanelAsociar: TPanel
      Left = 5
      Top = 5
      Width = 944
      Height = 513
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Splitter1: TSplitter
        Left = 423
        Top = 21
        Height = 492
      end
      object PanelAsociar_Producto: TPanel
        Left = 426
        Top = 21
        Width = 518
        Height = 492
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBGridProducto: TDBGrid
          Left = 0
          Top = 0
          Width = 518
          Height = 492
          Align = alClient
          Color = 13431031
          DataSource = DS_Producto
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = Popup_Producto
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridProductoDrawColumnCell
          Columns = <
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'codProducto'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. Producto'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'producto'
              Title.Alignment = taCenter
              Title.Caption = 'Producto'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'medida'
              Title.Alignment = taCenter
              Title.Caption = 'Medida'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'color'
              Title.Alignment = taCenter
              Title.Caption = 'Color'
              Width = 128
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'marca'
              Title.Alignment = taCenter
              Title.Caption = 'Marca'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tipoArticulo'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Art'#237'culo'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'articulo'
              Title.Alignment = taCenter
              Title.Caption = 'Art'#237'culo'
              Width = 100
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'codigoBarra'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. Barra'
              Width = 100
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'codCabecera'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. Cabecera'
              Width = 100
              Visible = True
            end>
        end
      end
      object PanelAsociar_Sucursal: TPanel
        Left = 0
        Top = 21
        Width = 423
        Height = 492
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object DBGridSucursal: TDBGrid
          Left = 0
          Top = 0
          Width = 423
          Height = 492
          Align = alClient
          Color = 14606012
          DataSource = DS_Sucursal
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = Popup_Sucursal
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridSucursalDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'nombre'
              Title.Alignment = taCenter
              Title.Caption = 'Sucursal'
              Width = 475
              Visible = True
            end>
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 944
        Height = 21
        Align = alTop
        BevelOuter = bvNone
        Caption = 
          'ASOCIAR LOS PRODUCTOS PERTENECIENTES A CADA UNA DE LAS SUCURSALE' +
          'S'
        TabOrder = 2
      end
    end
    object PanelCarga: TPanel
      Left = 5
      Top = 5
      Width = 944
      Height = 513
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object RepProductoStock: TQuickRep
        Tag = 99
        Left = 57
        Top = 207
        Width = 1123
        Height = 794
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = ZQ_Stock
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE')
        Functions.DATA = (
          '0'
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poLandscape
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2100.000000000000000000
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          100.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.OutputBin = Auto
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.UseStandardprinter = False
        PrinterSettings.UseCustomBinCode = False
        PrinterSettings.CustomBinCode = 0
        PrinterSettings.ExtendedDuplex = 0
        PrinterSettings.UseCustomPaperCode = False
        PrinterSettings.CustomPaperCode = 0
        PrinterSettings.PrintMetaFile = False
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        ReportTitle = '+'
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        object QRBand9: TQRBand
          Tag = 99
          Left = 38
          Top = 38
          Width = 1047
          Height = 72
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            190.500000000000000000
            2770.187500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRDBLogo: TQRDBImage
            Left = 210
            Top = 2
            Width = 64
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              555.625000000000000000
              5.291666666666667000
              169.333333333333300000)
            DataField = 'LOGO'
            Stretch = True
          end
          object QRLblTituloListado: TQRLabel
            Left = 466
            Top = 47
            Width = 115
            Height = 19
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              1232.958333333333000000
              124.354166666666700000
              304.270833333333300000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'PRODUCTOS'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 12
          end
          object RepProductoStock_Subtitulo: TQRLabel
            Left = 428
            Top = 26
            Width = 191
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1132.416666666667000000
              68.791666666666670000
              505.354166666666700000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'RepProductoStock_Subtitulo'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic, fsUnderline]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 9
          end
          object RepProductoStock_Titulo: TQRLabel
            Left = 411
            Top = 2
            Width = 224
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              1087.437500000000000000
              5.291666666666667000
              592.666666666666700000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'RepProductoStock_Titulo'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 12
          end
        end
        object QRBand10: TQRBand
          Tag = 99
          Left = 38
          Top = 159
          Width = 1047
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ForceNewColumn = False
          ForceNewPage = False
          ParentFont = False
          Size.Values = (
            34.395833333333340000
            2770.187500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText19: TQRDBText
            Left = 4
            Top = 1
            Width = 66
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              10.583333333333330000
              2.645833333333333000
              174.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Stock
            DataField = 'COD_CORTO_PRODUCTO'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText1: TQRDBText
            Left = 74
            Top = 1
            Width = 207
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              195.791666666666700000
              2.645833333333333000
              547.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Stock
            DataField = 'NOMBRE'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText3: TQRDBText
            Left = 287
            Top = 1
            Width = 58
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              759.354166666666800000
              2.645833333333333000
              153.458333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Stock
            DataField = 'MEDIDA'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText4: TQRDBText
            Left = 348
            Top = 1
            Width = 125
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              920.750000000000000000
              2.645833333333333000
              330.729166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Stock
            DataField = 'NOMBRE_MARCA'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText5: TQRDBText
            Left = 477
            Top = 1
            Width = 125
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              1262.062500000000000000
              2.645833333333333000
              330.729166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Stock
            DataField = 'TIPO_ARTICULO'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText6: TQRDBText
            Left = 606
            Top = 1
            Width = 125
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              1603.375000000000000000
              2.645833333333333000
              330.729166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Stock
            DataField = 'NOMBRE_ARTICULO'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText7: TQRDBText
            Left = 733
            Top = 1
            Width = 74
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              1939.395833333333000000
              2.645833333333333000
              195.791666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Stock
            DataField = 'COLOR'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText8: TQRDBText
            Left = 811
            Top = 1
            Width = 145
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              2145.770833333333000000
              2.645833333333333000
              383.645833333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Stock
            DataField = 'SUCURSAL'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText9: TQRDBText
            Left = 960
            Top = 1
            Width = 84
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              2540.000000000000000000
              2.645833333333333000
              222.250000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Stock
            DataField = 'STOCK_ACTUAL'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
        end
        object QRBand11: TQRBand
          Tag = 99
          Left = 38
          Top = 194
          Width = 1047
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            2770.187500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLabel43: TQRLabel
            Left = 957
            Top = 3
            Width = 39
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              2532.062500000000000000
              7.937500000000000000
              103.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'P'#225'gina:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRSysData1: TQRSysData
            Left = 999
            Top = 3
            Width = 45
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              2643.187500000000000000
              7.937500000000000000
              119.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            Data = qrsPageNumber
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            ExportAs = exptText
            FontSize = 7
          end
        end
        object QRBand12: TQRBand
          Tag = 99
          Left = 38
          Top = 172
          Width = 1047
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            58.208333333333340000
            2770.187500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRExpr18: TQRExpr
            Left = 4
            Top = 4
            Width = 195
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              10.583333333333330000
              10.583333333333330000
              515.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = #39'Cantidad de Productos: '#39'+COUNT'
            ExportAs = exptText
            FontSize = 8
          end
        end
        object TitleBand2: TQRBand
          Tag = 99
          Left = 38
          Top = 110
          Width = 1047
          Height = 31
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            82.020833333333340000
            2770.187500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabelCritBusqueda: TQRLabel
            Left = 5
            Top = 16
            Width = 692
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              13.229166666666670000
              42.333333333333330000
              1830.916666666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'QRLabelCritBusqueda'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRLabel48: TQRLabel
            Left = 5
            Top = 2
            Width = 126
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              13.229166666666670000
              5.291666666666667000
              333.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Criterios de Busqueda:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = False
            ExportAs = exptText
            FontSize = 7
          end
        end
        object ColumnHeaderBand2: TQRBand
          Tag = 99
          Left = 38
          Top = 141
          Width = 1047
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clSilver
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            2770.187500000000000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel29: TQRLabel
            Left = 4
            Top = 2
            Width = 65
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              10.583333333333330000
              5.291666666666667000
              171.979166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'C'#243'd.Prod.'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel30: TQRLabel
            Left = 74
            Top = 2
            Width = 59
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              195.791666666666700000
              5.291666666666667000
              156.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Producto'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel2: TQRLabel
            Left = 288
            Top = 2
            Width = 47
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              762.000000000000000000
              5.291666666666667000
              124.354166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Medida'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel3: TQRLabel
            Left = 349
            Top = 2
            Width = 40
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              923.395833333333300000
              5.291666666666667000
              105.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Marca'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel4: TQRLabel
            Left = 477
            Top = 2
            Width = 84
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1262.062500000000000000
              5.291666666666667000
              222.250000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tipo Articulo'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel5: TQRLabel
            Left = 606
            Top = 2
            Width = 52
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1603.375000000000000000
              5.291666666666667000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Articulo'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel6: TQRLabel
            Left = 733
            Top = 2
            Width = 35
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1939.395833333333000000
              5.291666666666667000
              92.604166666666670000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Color'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel1: TQRLabel
            Left = 811
            Top = 2
            Width = 57
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2145.770833333333000000
              5.291666666666667000
              150.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Sucursal'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel7: TQRLabel
            Left = 964
            Top = 2
            Width = 82
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2550.583333333333000000
              5.291666666666667000
              216.958333333333400000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Stock Actual'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
      end
      object DBGridStock: TDBGrid
        Left = 0
        Top = 0
        Width = 944
        Height = 488
        Align = alClient
        Color = 14606012
        DataSource = DS_Stock
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridStockDrawColumnCell
        OnKeyDown = DBGridStockKeyDown
        Columns = <
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'COD_CORTO_PRODUCTO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Corto'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Producto'
            Width = 211
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MEDIDA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE_MARCA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Marca'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_ARTICULO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Art'#237'culo'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMBRE_ARTICULO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Art'#237'culo'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COLOR'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Color'
            Visible = True
          end
          item
            Color = 15921894
            Expanded = False
            FieldName = 'STOCK_ACTUAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Actual'
            Width = 100
            Visible = True
          end
          item
            Color = 11140856
            Expanded = False
            FieldName = 'STOCK_MIN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Minimo'
            Width = 100
            Visible = True
          end
          item
            Color = 11796403
            Expanded = False
            FieldName = 'STOCK_MAX'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Maximo'
            Width = 100
            Visible = True
          end
          item
            Color = 5197823
            Expanded = False
            FieldName = 'STOCK_REPEDIDO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Pto Repedido'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'STOCK_MIN_ALARMA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            PickList.Strings = (
              'S'
              'N')
            Title.Alignment = taCenter
            Title.Caption = 'Alarma'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUCURSAL'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Sucursal'
            Width = 138
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SECCION'
            ReadOnly = True
            Title.Caption = 'Secci'#243'n'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SECTOR'
            ReadOnly = True
            Title.Caption = 'Sector'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FILA'
            ReadOnly = True
            Title.Caption = 'Fila'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COLUMNA'
            ReadOnly = True
            Title.Caption = 'Columna'
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'COD_CORTO_CABECERA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Cabecera'
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'CODIGO_BARRA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Barra'
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'BAJA'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Baja'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_STOCK_PRODUCTO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Id Stock Producto'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 488
        Width = 944
        Height = 25
        Align = alBottom
        TabOrder = 1
        object lblResumen: TLabel
          Left = 1
          Top = 1
          Width = 942
          Height = 14
          Align = alTop
          Alignment = taCenter
          Caption = 'lblResumen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
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
            Item = btnModificar
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnAsociar
            Visible = True
          end
          item
            Item = btnProcesar
            Visible = True
          end
          item
            Item = btnVolver
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
            Item = btnExcel
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
    Left = 56
    Top = 80
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
    object btnVolver: TdxBarLargeButton
      Align = iaRight
      Caption = 'F9 - Volver'
      Category = 0
      Enabled = False
      Hint = 'Cancelar la asociaci'#243'n y volver a la pantalla de stock'
      Visible = ivAlways
      ImageIndex = 67
      OnClick = btnVolverClick
      AutoGrayScale = False
    end
    object btnNuevo: TdxBarLargeButton
      Caption = 'Nuevo'
      Category = 0
      Hint = 'Inserta un nuevo registro'
      Visible = ivAlways
      ImageIndex = 0
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
    object btnProcesar: TdxBarLargeButton
      Caption = 'F8 - Procesar'
      Category = 0
      Enabled = False
      Hint = 
        'Asociar los Productos pertenecientes a cada una de las Sucursale' +
        's'
      Visible = ivAlways
      ImageIndex = 50
      OnClick = btnProcesarClick
      AutoGrayScale = False
    end
    object btnAsociar: TdxBarLargeButton
      Caption = 'F7 - Asociar'
      Category = 0
      Hint = 
        'Asociar los Productos pertenecientes a cada una de las Sucursale' +
        's'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = btnAsociarClick
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
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
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
    object btnExcel: TdxBarLargeButton
      Caption = 'Excel'
      Category = 0
      Hint = 'Exportar a Excel'
      Visible = ivAlways
      ImageIndex = 77
      OnClick = btnExcelClick
      AutoGrayScale = False
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'btnBuscar'
        'btnModificar'
        'btnAsociar'
        'btnImprimir'
        'btnSalir'
        'btnExcel')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'btnGuardar'
        'btnCancelar')
    end
  end
  object ZQ_Stock: TZQuery
    Connection = DM.Conexion
    UpdateObject = ZU_Stock
    AfterInsert = ZQ_StockAfterInsert
    SQL.Strings = (
      
        'select sp.id_stock_producto, sp.stock_actual, sp.stock_min, sp.s' +
        'tock_max,'
      '       sp.stock_repedido, sp.stock_min_alarma,'
      '       pc.nombre, pc.cod_corto as cod_corto_cabecera,'
      '       pr.cod_corto as cod_corto_producto, pr.codigo_barra,'
      '       md.medida, mc.nombre_marca, pc.baja,'
      
        '       ar.descripcion as nombre_articulo, ta.descripcion as tipo' +
        '_articulo,'
      
        '       su.nombre as sucursal,ps.seccion,ps.sector,ps.fila,ps.col' +
        'umna, '
      '       c.nombre as color, su.id_sucursal,'
      '       '#39'Sucursal: '#39'||su.nombre||'#39' '#39'||'
      '        COALESCE ('#39'| Secci'#243'n: '#39' || ps.seccion,'#39#39')||'#39' '#39'||'
      '        COALESCE ('#39'| Sector: '#39' || ps.sector,'#39#39')||'#39' '#39'||'
      '        COALESCE ('#39'| Fila: '#39' || ps.fila,'#39#39')||'#39' '#39'||'
      
        '        COALESCE ('#39'| Columna: '#39' || ps.columna,'#39#39') AS posicSucurs' +
        'al'
      'from stock_producto sp'
      'left join producto pr on (sp.id_producto =  pr.id_producto)'
      'left join medida md on (pr.id_medida = md.id_medida)'
      
        'left join producto_cabecera pc on (pr.id_prod_cabecera =  pc.id_' +
        'prod_cabecera)'
      'left join marca mc on (pc.id_marca = mc.id_marca)'
      'left join articulo ar on (pc.id_articulo = ar.id_articulo)'
      
        'left join tipo_articulo ta on (ar.id_tipo_articulo = ta.id_tipo_' +
        'articulo)'
      
        'left join posicion_sucursal ps on (ps.id_posicion_sucursal = sp.' +
        'id_posicion_sucursal)'
      'left join sucursal su on (ps.id_sucursal = su.id_sucursal)'
      'left join color c on (pc.color = c.id_color)'
      'where (pr.baja <> '#39'S'#39') and (pc.baja <> '#39'S'#39')'
      ''
      '')
    Params = <>
    Left = 152
    Top = 80
    object ZQ_StockID_STOCK_PRODUCTO: TIntegerField
      FieldName = 'ID_STOCK_PRODUCTO'
    end
    object ZQ_StockSTOCK_ACTUAL: TFloatField
      FieldName = 'STOCK_ACTUAL'
      OnChange = validarSucursal
    end
    object ZQ_StockSTOCK_MIN: TFloatField
      FieldName = 'STOCK_MIN'
      OnChange = validarSucursal
    end
    object ZQ_StockSTOCK_MAX: TFloatField
      FieldName = 'STOCK_MAX'
      OnChange = validarSucursal
    end
    object ZQ_StockSTOCK_REPEDIDO: TFloatField
      FieldName = 'STOCK_REPEDIDO'
      OnChange = validarSucursal
    end
    object ZQ_StockSTOCK_MIN_ALARMA: TStringField
      FieldName = 'STOCK_MIN_ALARMA'
      OnChange = validarSucursal
      Size = 1
    end
    object ZQ_StockNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object ZQ_StockCOD_CORTO_CABECERA: TStringField
      FieldName = 'COD_CORTO_CABECERA'
    end
    object ZQ_StockCOD_CORTO_PRODUCTO: TStringField
      FieldName = 'COD_CORTO_PRODUCTO'
    end
    object ZQ_StockCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 40
    end
    object ZQ_StockMEDIDA: TStringField
      FieldName = 'MEDIDA'
      Size = 30
    end
    object ZQ_StockNOMBRE_MARCA: TStringField
      FieldName = 'NOMBRE_MARCA'
      Size = 50
    end
    object ZQ_StockBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_StockNOMBRE_ARTICULO: TStringField
      FieldName = 'NOMBRE_ARTICULO'
      Size = 200
    end
    object ZQ_StockTIPO_ARTICULO: TStringField
      FieldName = 'TIPO_ARTICULO'
      Size = 200
    end
    object ZQ_StockSUCURSAL: TStringField
      FieldName = 'SUCURSAL'
      Size = 200
    end
    object ZQ_StockSECCION: TStringField
      FieldName = 'SECCION'
      Size = 50
    end
    object ZQ_StockSECTOR: TStringField
      FieldName = 'SECTOR'
      Size = 10
    end
    object ZQ_StockFILA: TStringField
      FieldName = 'FILA'
      Size = 10
    end
    object ZQ_StockCOLUMNA: TStringField
      FieldName = 'COLUMNA'
      Size = 10
    end
    object ZQ_StockPOSICSUCURSAL: TStringField
      FieldName = 'POSICSUCURSAL'
      Size = 334
    end
    object ZQ_StockCOLOR: TStringField
      FieldName = 'COLOR'
      Size = 30
    end
    object ZQ_StockID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
      Required = True
    end
  end
  object ZU_Stock: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM STOCK_PRODUCTO'
      'WHERE'
      '  STOCK_PRODUCTO.ID_STOCK_PRODUCTO = '
      ':OLD_ID_STOCK_PRODUCTO')
    InsertSQL.Strings = (
      'INSERT INTO STOCK_PRODUCTO'
      '  (STOCK_PRODUCTO.STOCK_ACTUAL, '
      'STOCK_PRODUCTO.STOCK_MIN, STOCK_PRODUCTO.STOCK_MAX, '
      '   STOCK_PRODUCTO.STOCK_REPEDIDO, '
      'STOCK_PRODUCTO.STOCK_MIN_ALARMA)'
      'VALUES'
      '  (:STOCK_ACTUAL, :STOCK_MIN, :STOCK_MAX, :STOCK_REPEDIDO, '
      ':STOCK_MIN_ALARMA)')
    ModifySQL.Strings = (
      'UPDATE STOCK_PRODUCTO SET'
      '  STOCK_PRODUCTO.STOCK_ACTUAL = :STOCK_ACTUAL,'
      '  STOCK_PRODUCTO.STOCK_MIN = :STOCK_MIN,'
      '  STOCK_PRODUCTO.STOCK_MAX = :STOCK_MAX,'
      '  STOCK_PRODUCTO.STOCK_REPEDIDO = :STOCK_REPEDIDO,'
      '  STOCK_PRODUCTO.STOCK_MIN_ALARMA = :STOCK_MIN_ALARMA'
      'WHERE'
      '  STOCK_PRODUCTO.ID_STOCK_PRODUCTO = '
      ':OLD_ID_STOCK_PRODUCTO')
    UseSequenceFieldForRefreshSQL = False
    Left = 152
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'STOCK_ACTUAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_MIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_MAX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_REPEDIDO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_MIN_ALARMA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID_STOCK_PRODUCTO'
        ParamType = ptUnknown
      end>
  end
  object DS_Stock: TDataSource
    DataSet = ZQ_Stock
    Left = 152
    Top = 192
  end
  object EKOrdenarGrillaStock: TEKOrdenarGrilla
    Grilla = DBGridStock
    Filtros = <
      item
        TituloColumna = 'C'#243'd. Corto'
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
        TituloColumna = 'Marca'
        Visible = True
      end
      item
        TituloColumna = 'Tipo Art'#237'culo'
        Visible = True
      end
      item
        TituloColumna = 'Art'#237'culo'
        Visible = True
      end
      item
        TituloColumna = 'Color'
        Visible = True
      end
      item
        TituloColumna = 'Actual'
        Visible = True
      end
      item
        TituloColumna = 'Minimo'
        Visible = True
      end
      item
        TituloColumna = 'Maximo'
        Visible = True
      end
      item
        TituloColumna = 'Pto Repedido'
        Visible = True
      end
      item
        TituloColumna = 'Alarma'
        Visible = True
      end
      item
        TituloColumna = 'Sucursal'
        Visible = True
      end
      item
        TituloColumna = 'Secci'#243'n'
        Visible = True
      end
      item
        TituloColumna = 'Sector'
        Visible = True
      end
      item
        TituloColumna = 'Fila'
        Visible = True
      end
      item
        TituloColumna = 'Columna'
        Visible = True
      end
      item
        TituloColumna = 'C'#243'd. Cabecera'
        Visible = True
      end
      item
        TituloColumna = 'C'#243'd. Barra'
        Visible = True
      end
      item
        TituloColumna = 'Baja'
        Visible = True
      end
      item
        TituloColumna = 'Id Stock Producto'
        Visible = False
      end>
    NombreGuardar = 'ABMProductoStock_Stock'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    PopUpGrilla = PopUpDesasociar
    Left = 56
    Top = 136
  end
  object EKBuscarStock: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'C'#243'd. Corto'
        Campo = 'cod_corto'
        Tabla = 'producto'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'C'#243'd. Barra'
        Campo = 'codigo_barra'
        Tabla = 'producto'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'C'#243'd. Cabecera'
        Campo = 'cod_corto'
        Tabla = 'producto_cabecera'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Nombre Producto'
        Campo = 'nombre'
        Tabla = 'producto_cabecera'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Medida'
        Campo = 'medida'
        Tabla = 'medida'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Marca'
        Campo = 'nombre_marca'
        Tabla = 'marca'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Tipo Art'#237'culo'
        Campo = 'descripcion'
        Tabla = 'tipo_articulo'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Art'#237'culo'
        Campo = 'descripcion'
        Tabla = 'articulo'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Color'
        Campo = 'nombre'
        Tabla = 'color'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Stock Actual'
        Campo = 'stock_actual'
        Tabla = 'stock_producto'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Stock Minimo'
        Campo = 'stock_min'
        Tabla = 'stock_producto'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Stock Maximo'
        Campo = 'stock_max'
        Tabla = 'stock_producto'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Llevar Stock'
        Campo = 'llevar_stock'
        Tabla = 'producto'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboValoresVer.Strings = (
          'SI'
          'NO')
        TipoComboValoresReales.Strings = (
          'S'
          'N')
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Sucursal'
        Campo = 'id_sucursal'
        Tabla = 'sucursal'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboSQL = ZQ_Sucursal
        TipoComboSQLCampoVer = 'nombre'
        TipoComboSQLCampoReal = 'id_sucursal'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Secci'#243'n'
        Campo = 'Seccion'
        Tabla = 'posicion_sucursal'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Sector'
        Campo = 'sector'
        Tabla = 'posicion_sucursal'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Fila'
        Campo = 'Fila'
        Tabla = 'posicion_sucursal'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Columna'
        Campo = 'columna'
        Tabla = 'posicion_sucursal'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Baja'
        Campo = 'baja'
        Tabla = 'producto_cabecera'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboValoresVer.Strings = (
          'NO'
          'SI')
        TipoComboValoresReales.Strings = (
          'N'
          'S')
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_Stock
    SQL.Strings = (
      
        'select sp.id_stock_producto, sp.stock_actual, sp.stock_min, sp.s' +
        'tock_max,'
      '       sp.stock_repedido, sp.stock_min_alarma,'
      '       pc.nombre, pc.cod_corto as cod_corto_cabecera,'
      '       pr.cod_corto as cod_corto_producto, pr.codigo_barra,'
      '       md.medida, mc.nombre_marca, pc.baja,'
      
        '       ar.descripcion as nombre_articulo, ta.descripcion as tipo' +
        '_articulo,'
      
        '       su.nombre as sucursal,ps.seccion,ps.sector,ps.fila,ps.col' +
        'umna,'
      '       c.nombre as color, su.id_sucursal,'
      '       '#39'Sucursal: '#39'||su.nombre||'#39' '#39'||'
      '        COALESCE ('#39'| Secci'#243'n: '#39' || ps.seccion,'#39#39')||'#39' '#39'||'
      '        COALESCE ('#39'| Sector: '#39' || ps.sector,'#39#39')||'#39' '#39'||'
      '        COALESCE ('#39'| Fila: '#39' || ps.fila,'#39#39')||'#39' '#39'||'
      
        '        COALESCE ('#39'| Columna: '#39' || ps.columna,'#39#39') AS posicSucurs' +
        'al'
      ''
      ''
      ''
      'from stock_producto sp'
      'left join producto pr on (sp.id_producto =  pr.id_producto)'
      'left join medida md on (pr.id_medida = md.id_medida)'
      
        'left join producto_cabecera pc on (pr.id_prod_cabecera =  pc.id_' +
        'prod_cabecera)'
      'left join marca mc on (pc.id_marca = mc.id_marca)'
      'left join articulo ar on (pc.id_articulo = ar.id_articulo)'
      
        'left join tipo_articulo ta on (ar.id_tipo_articulo = ta.id_tipo_' +
        'articulo)'
      
        'left join posicion_sucursal ps on (ps.id_posicion_sucursal = sp.' +
        'id_posicion_sucursal)'
      'left join sucursal su on (ps.id_sucursal = su.id_sucursal)'
      'left join color c on (pc.color = c.id_color)'
      ''
      ''
      'where (pr.baja <> '#39'S'#39') and (pc.baja <> '#39'S'#39')')
    SQL_Select.Strings = (
      
        'select sp.id_stock_producto, sp.stock_actual, sp.stock_min, sp.s' +
        'tock_max,'
      '       sp.stock_repedido, sp.stock_min_alarma,'
      '       pc.nombre, pc.cod_corto as cod_corto_cabecera,'
      '       pr.cod_corto as cod_corto_producto, pr.codigo_barra,'
      '       md.medida, mc.nombre_marca, pc.baja,'
      
        '       ar.descripcion as nombre_articulo, ta.descripcion as tipo' +
        '_articulo,'
      
        '       su.nombre as sucursal,ps.seccion,ps.sector,ps.fila,ps.col' +
        'umna,'
      '       c.nombre as color, su.id_sucursal,'
      '       '#39'Sucursal: '#39'||su.nombre||'#39' '#39'||'
      '        COALESCE ('#39'| Secci'#243'n: '#39' || ps.seccion,'#39#39')||'#39' '#39'||'
      '        COALESCE ('#39'| Sector: '#39' || ps.sector,'#39#39')||'#39' '#39'||'
      '        COALESCE ('#39'| Fila: '#39' || ps.fila,'#39#39')||'#39' '#39'||'
      
        '        COALESCE ('#39'| Columna: '#39' || ps.columna,'#39#39') AS posicSucurs' +
        'al'
      ''
      ''
      '')
    SQL_From.Strings = (
      'from stock_producto sp'
      'left join producto pr on (sp.id_producto =  pr.id_producto)'
      'left join medida md on (pr.id_medida = md.id_medida)'
      
        'left join producto_cabecera pc on (pr.id_prod_cabecera =  pc.id_' +
        'prod_cabecera)'
      'left join marca mc on (pc.id_marca = mc.id_marca)'
      'left join articulo ar on (pc.id_articulo = ar.id_articulo)'
      
        'left join tipo_articulo ta on (ar.id_tipo_articulo = ta.id_tipo_' +
        'articulo)'
      
        'left join posicion_sucursal ps on (ps.id_posicion_sucursal = sp.' +
        'id_posicion_sucursal)'
      'left join sucursal su on (ps.id_sucursal = su.id_sucursal)'
      'left join color c on (pc.color = c.id_color)'
      ''
      '')
    SQL_Where.Strings = (
      'where (pr.baja <> '#39'S'#39') and (pc.baja <> '#39'S'#39')')
    UsarWhereOriginal = EK_Con_Where
    Left = 56
    Top = 192
  end
  object Popup_Sucursal: TPopupMenu
    Images = FPrincipal.Iconos_Menu_16
    Left = 288
    Top = 77
    object PopItemSucursal_Agregar: TMenuItem
      Caption = 'Agregar Sucursal'
      ImageIndex = 14
      OnClick = PopItemSucursal_AgregarClick
    end
    object PopItemSucursal_Quitar: TMenuItem
      Caption = 'Quitar Sucursal'
      ImageIndex = 15
      OnClick = PopItemSucursal_QuitarClick
    end
  end
  object Popup_Producto: TPopupMenu
    Images = FPrincipal.Iconos_Menu_16
    Left = 392
    Top = 77
    object PopItemProducto_Agregar: TMenuItem
      Caption = 'Agregar Producto'
      ImageIndex = 14
      OnClick = PopItemProducto_AgregarClick
    end
    object PopItemProducto_Quitar: TMenuItem
      Caption = 'Quitar Producto'
      ImageIndex = 15
      OnClick = PopItemProducto_QuitarClick
    end
    object PopItemProducto_QuitarTodos: TMenuItem
      Caption = 'Quitar Todos'
      ImageIndex = 0
      OnClick = PopItemProducto_QuitarTodosClick
    end
  end
  object CD_Sucursal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 128
    object CD_Sucursal_idSucursal: TIntegerField
      FieldName = 'idSucursal'
    end
    object CD_Sucursal_nombre: TStringField
      FieldName = 'nombre'
      Size = 200
    end
  end
  object DS_Sucursal: TDataSource
    DataSet = CD_Sucursal
    Left = 288
    Top = 184
  end
  object EKListado_Sucursal: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'SELECT ps.id_posicion_sucursal, '#39'Sucursal: '#39'||s.nombre||'#39' '#39'||'
      'COALESCE ('#39'| Secci'#243'n: '#39' || ps.seccion,'#39#39')||'#39' '#39'||'
      'COALESCE ('#39'| Sector: '#39' || ps.sector,'#39#39')||'#39' '#39'||'
      'COALESCE ('#39'| Fila: '#39' || ps.fila,'#39#39')||'#39' '#39'||'
      'COALESCE ('#39'| Columna: '#39' || ps.columna,'#39#39') AS Busqueda'
      'FROM posicion_sucursal ps'
      'LEFT JOIN sucursal s ON (s.id_sucursal=ps.id_sucursal)'
      'WHERE s.id_sucursal <> 0'
      ''
      ''
      ''
      '')
    CampoBuscar = 'Busqueda'
    CampoClave = 'id_posicion_sucursal'
    TituloVentana = 'Buscar Sucursal'
    Left = 288
    Top = 240
  end
  object DS_Producto: TDataSource
    DataSet = CD_Producto
    Left = 392
    Top = 184
  end
  object CD_Producto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 128
    object CD_Producto_idProducto: TIntegerField
      FieldName = 'idProducto'
    end
    object CD_Producto_producto: TStringField
      FieldName = 'producto'
      Size = 30
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
    object CD_Producto_color: TStringField
      FieldName = 'color'
      Size = 30
    end
  end
  object vaciar_TempSucursal: TZSQLProcessor
    Params = <>
    Script.Strings = (
      'delete from TEMP_SUCURSAL;')
    Connection = DM.Conexion
    Delimiter = ';'
    Left = 288
    Top = 296
  end
  object vaciar_TempProducto: TZSQLProcessor
    Params = <>
    Script.Strings = (
      'delete from TEMP_PRODUCTO;')
    Connection = DM.Conexion
    Delimiter = ';'
    Left = 392
    Top = 240
  end
  object ZQ_TempSucursal: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select * from temp_sucursal')
    Params = <>
    Left = 285
    Top = 349
    object ZQ_TempSucursalID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
  end
  object ZQ_TempProducto: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select * from temp_producto')
    Params = <>
    Left = 395
    Top = 295
    object ZQ_TempProductoID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
    end
  end
  object ZQ_GenerarStock: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'execute procedure GENERAR_STOCK_INICIAL')
    Params = <>
    Left = 496
    Top = 77
  end
  object ATeclasRapidas: TActionManager
    Left = 56
    Top = 245
    StyleName = 'XP Style'
    object ABuscar: TAction
      Caption = 'ABuscar'
      ShortCut = 112
      OnExecute = ABuscarExecute
    end
    object ANuevo: TAction
      Caption = 'ANuevo'
      ShortCut = 113
    end
    object AModificar: TAction
      Caption = 'AModificar'
      ShortCut = 114
      OnExecute = AModificarExecute
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
    object AAsociar: TAction
      Caption = 'AAsociar'
      ShortCut = 118
      OnExecute = AAsociarExecute
    end
    object AProcesar: TAction
      Caption = 'AProcesar'
      ShortCut = 119
      OnExecute = AProcesarExecute
    end
    object AVolver: TAction
      Caption = 'AVolver'
      ShortCut = 120
      OnExecute = AVolverExecute
    end
  end
  object EKOrdenarGrillaProducto: TEKOrdenarGrilla
    Grilla = DBGridProducto
    Filtros = <
      item
        TituloColumna = 'C'#243'd. Producto'
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
        TituloColumna = 'Color'
        Visible = True
      end
      item
        TituloColumna = 'Marca'
        Visible = True
      end
      item
        TituloColumna = 'Tipo Art'#237'culo'
        Visible = True
      end
      item
        TituloColumna = 'Art'#237'culo'
        Visible = True
      end
      item
        TituloColumna = 'C'#243'd. Barra'
        Visible = True
      end
      item
        TituloColumna = 'C'#243'd. Cabecera'
        Visible = True
      end>
    NombreGuardar = 'ABMProductoStock_Producto'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    PopUpGrilla = Popup_Producto
    Left = 400
    Top = 344
  end
  object EKDbSuma1: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'STOCK_ACTUAL'
      end>
    DataSet = ZQ_Stock
    SumListChanged = EKDbSuma1SumListChanged
    Left = 149
    Top = 245
  end
  object PopUpDesasociar: TPopupMenu
    Images = FPrincipal.Iconos_Menu_16
    Left = 152
    Top = 301
    object PopUpStock_Desasociar: TMenuItem
      Caption = 'Desasociar Producto'
      ImageIndex = 15
      OnClick = PopUpStock_DesasociarClick
    end
    object PopUpStock_DesasociarTodos: TMenuItem
      Caption = 'Desasociar Todos'
      ImageIndex = 0
      OnClick = PopUpStock_DesasociarTodosClick
    end
  end
  object EKVistaPreviaQR1: TEKVistaPreviaQR
    Reporte = RepProductoStock
    ShowModal = False
    Left = 685
    Top = 37
  end
  object ZQ_Sucursal: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from Sucursal s'
      'where s.id_sucursal > 0'
      'order by s.nombre')
    Params = <>
    Left = 56
    Top = 304
    object ZQ_SucursalID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_SucursalNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_SucursalDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 200
    end
    object ZQ_SucursalLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 200
    end
    object ZQ_SucursalCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
    end
    object ZQ_SucursalTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 100
    end
    object ZQ_SucursalEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object ZQ_SucursalBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_SucursalLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object ZQ_SucursalREPORTE_TITULO: TStringField
      FieldName = 'REPORTE_TITULO'
      Size = 50
    end
    object ZQ_SucursalREPORTE_SUBTITULO: TStringField
      FieldName = 'REPORTE_SUBTITULO'
      Size = 50
    end
    object ZQ_SucursalCOMPROBANTE_TITULO: TStringField
      FieldName = 'COMPROBANTE_TITULO'
      Size = 50
    end
    object ZQ_SucursalCOMPROBANTE_RENGLON1: TStringField
      FieldName = 'COMPROBANTE_RENGLON1'
      Size = 50
    end
    object ZQ_SucursalCOMPROBANTE_RENGLON2: TStringField
      FieldName = 'COMPROBANTE_RENGLON2'
      Size = 50
    end
    object ZQ_SucursalCOMPROBANTE_RENGLON3: TStringField
      FieldName = 'COMPROBANTE_RENGLON3'
      Size = 50
    end
    object ZQ_SucursalCOMPROBANTE_RENGLON4: TStringField
      FieldName = 'COMPROBANTE_RENGLON4'
      Size = 50
    end
  end
end
