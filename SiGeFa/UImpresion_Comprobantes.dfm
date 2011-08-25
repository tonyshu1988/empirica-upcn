object FImpresion_Comprobantes: TFImpresion_Comprobantes
  Left = 259
  Top = 116
  Width = 993
  Height = 591
  Caption = 'FImpresion_Comprobantes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 977
    Height = 553
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'RECIBO'
      object RepRecibo: TQuickRep
        Tag = 99
        Left = 129
        Top = 8
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Font.Charset = DEFAULT_CHARSET
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
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
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
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        object QRBand10: TQRBand
          Tag = 99
          Left = 38
          Top = 38
          Width = 718
          Height = 98
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            259.291666666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object RepRecibo_RENGLON4: TQRLabel
            Left = 112
            Top = 71
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              187.854166666666700000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepRecibo_RENGLON4'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepRecibo_RENGLON3: TQRLabel
            Left = 112
            Top = 58
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              153.458333333333300000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepRecibo_RENGLON3'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepRecibo_RENGLON2: TQRLabel
            Left = 112
            Top = 45
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              119.062500000000000000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepRecibo_RENGLON2'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText62: TQRDBText
            Left = 477
            Top = 74
            Width = 236
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              1262.062500000000000000
              195.791666666666700000
              624.416666666666800000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'FECHA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object RepRecibo_TITULO: TQRLabel
            Left = 112
            Top = 9
            Width = 280
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              63.500000000000000000
              296.333333333333400000
              23.812500000000000000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepRecibo_TITULO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 14
          end
          object QRShape4: TQRShape
            Left = 406
            Top = 0
            Width = 9
            Height = 97
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              256.645833333333400000
              1074.208333333333000000
              0.000000000000000000
              23.812500000000000000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRLabel101: TQRLabel
            Left = 425
            Top = 4
            Width = 277
            Height = 52
            Frame.Color = clGray
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              137.583333333333300000
              1124.479166666667000000
              10.583333333333330000
              732.895833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RECIBO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -40
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 30
          end
          object QRLabel103: TQRLabel
            Left = 425
            Top = 58
            Width = 50
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              1124.479166666667000000
              153.458333333333300000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'N'#250'mero:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRLabel104: TQRLabel
            Left = 425
            Top = 74
            Width = 50
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              1124.479166666667000000
              195.791666666666700000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText68: TQRDBText
            Left = 477
            Top = 58
            Width = 27
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1262.062500000000000000
              153.458333333333300000
              71.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'PUNTO_VENTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object RepRecibo_RENGLON1: TQRLabel
            Left = 112
            Top = 32
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              84.666666666666680000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepRecibo_RENGLON1'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText1: TQRDBText
            Left = 510
            Top = 58
            Width = 59
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1349.375000000000000000
              153.458333333333300000
              156.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'NUMERO_CPB'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRLabel1: TQRLabel
            Left = 504
            Top = 57
            Width = 6
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1333.500000000000000000
              150.812500000000000000
              15.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '-'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBImage1: TQRDBImage
            Left = 24
            Top = 11
            Width = 64
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              63.500000000000000000
              29.104166666666670000
              169.333333333333300000)
            DataField = 'LOGO'
            Stretch = True
          end
        end
        object TitleBand1: TQRBand
          Left = 38
          Top = 136
          Width = 718
          Height = 92
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            243.416666666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel87: TQRLabel
            Left = 5
            Top = 77
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              203.729166666666700000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Tipo Iva:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel86: TQRLabel
            Left = 309
            Top = 77
            Width = 62
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              817.562500000000000000
              203.729166666666700000
              164.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cuit/Cuil:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel85: TQRLabel
            Left = 5
            Top = 60
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              158.750000000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'C'#243'digo Postal:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel79: TQRLabel
            Left = 5
            Top = 43
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              113.770833333333300000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Domicilio:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel7: TQRLabel
            Left = 505
            Top = 60
            Width = 66
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1336.145833333333000000
              158.750000000000000000
              174.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Provincia:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel6: TQRLabel
            Left = 195
            Top = 60
            Width = 67
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              515.937500000000000000
              158.750000000000000000
              177.270833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Localidad:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel16: TQRLabel
            Left = 5
            Top = 26
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              68.791666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Entidad:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText60: TQRDBText
            Left = 117
            Top = 77
            Width = 179
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              203.729166666666700000
              473.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'TIPO_IVA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText51: TQRDBText
            Left = 374
            Top = 77
            Width = 339
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              989.541666666666700000
              203.729166666666700000
              896.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'CUIT_CUIL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText49: TQRDBText
            Left = 117
            Top = 60
            Width = 60
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              158.750000000000000000
              158.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'CODIGO_POSTAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText40: TQRDBText
            Left = 117
            Top = 43
            Width = 337
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              113.770833333333300000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'DIRECCION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText28: TQRDBText
            Left = 117
            Top = 26
            Width = 591
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              68.791666666666670000
              1563.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'NOMBRE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText16: TQRDBText
            Left = 574
            Top = 37
            Width = 139
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1518.708333333333000000
              97.895833333333330000
              367.770833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'PROVINCIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText14: TQRDBText
            Left = 264
            Top = 60
            Width = 227
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              698.500000000000000000
              158.750000000000000000
              600.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'LOCALIDAD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel20: TQRLabel
            Left = 5
            Top = 2
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              5.291666666666667000
              291.041666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Recibi de:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object ChildBand1: TQRChildBand
          Left = 38
          Top = 228
          Width = 718
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            71.437500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = TitleBand1
          PrintOrder = cboAfterParent
          object QRLabel19: TQRLabel
            Left = 5
            Top = 8
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              21.166666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'El monto de:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLblRecibo_ImporteEnLetras: TQRLabel
            Left = 117
            Top = 8
            Width = 591
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              21.166666666666670000
              1563.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Caption = 'QRLblRecibo_ImporteEnLetras'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRBand9: TQRBand
          Left = 38
          Top = 255
          Width = 718
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            71.437500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRLabel32: TQRLabel
            Left = 5
            Top = 8
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              21.166666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'En concepto de:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText57: TQRDBText
            Left = 117
            Top = 8
            Width = 591
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              21.166666666666670000
              1563.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'OBSERVACION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object ChildBand2: TQRChildBand
          Left = 38
          Top = 282
          Width = 718
          Height = 33
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            87.312500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = QRBand9
          PrintOrder = cboAfterParent
          object QRLabel36: TQRLabel
            Left = 5
            Top = 16
            Width = 124
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              42.333333333333330000
              328.083333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Forma de Pago:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRSubDetail3: TQRSubDetail
          Left = 38
          Top = 332
          Width = 718
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Master = RepRecibo
          DataSet = ZQ_Fpago
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText72: TQRDBText
            Left = 2
            Top = 2
            Width = 295
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              5.291666666666667000
              5.291666666666667000
              780.520833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Fpago
            DataField = 'CTA_INGRESO'
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
          object QRDBText73: TQRDBText
            Left = 303
            Top = 2
            Width = 116
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              801.687500000000000000
              5.291666666666667000
              306.916666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Fpago
            DataField = 'NOMBRE_TIPO'
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
          object QRDBText81: TQRDBText
            Left = 424
            Top = 2
            Width = 83
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1121.833333333333000000
              5.291666666666667000
              219.604166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Fpago
            DataField = 'MDCP_FECHA'
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
          object QRDBText83: TQRDBText
            Left = 512
            Top = 2
            Width = 115
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1354.666666666667000000
              5.291666666666667000
              304.270833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Fpago
            DataField = 'MDCP_CHEQUE'
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
          object QRDBText84: TQRDBText
            Left = 630
            Top = 2
            Width = 83
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1666.875000000000000000
              5.291666666666667000
              219.604166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Fpago
            DataField = 'IMPORTE'
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
        end
        object QRBand18: TQRBand
          Left = 38
          Top = 350
          Width = 718
          Height = 150
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            396.875000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel34: TQRLabel
            Left = 78
            Top = 100
            Width = 250
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Style = psDash
            Size.Values = (
              37.041666666666670000
              206.375000000000000000
              264.583333333333300000
              661.458333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Firma'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel100: TQRLabel
            Left = 390
            Top = 100
            Width = 250
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Style = psDash
            Size.Values = (
              37.041666666666670000
              1031.875000000000000000
              264.583333333333300000
              661.458333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Aclaraci'#243'n'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRlblRecibo_ImporteTotal: TQRLabel
            Left = 408
            Top = 3
            Width = 304
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1079.500000000000000000
              7.937500000000000000
              804.333333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'QRlblRecibo_ImporteTotal'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRBand19: TQRBand
          Left = 38
          Top = 500
          Width = 718
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRlblRecibo_PiePagina: TQRLabel
            Left = 4
            Top = 3
            Width = 105
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              10.583333333333330000
              7.937500000000000000
              277.812500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRlblRecibo_PiePagina'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
        end
        object ChildBand4: TQRChildBand
          Left = 38
          Top = 315
          Width = 718
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clSilver
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            44.979166666666670000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = ChildBand2
          PrintOrder = cboAfterParent
          object QRLabel99: TQRLabel
            Left = 652
            Top = 1
            Width = 61
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1725.083333333333000000
              2.645833333333333000
              161.395833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Importe'
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
          object QRLabel98: TQRLabel
            Left = 512
            Top = 1
            Width = 115
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1354.666666666667000000
              2.645833333333333000
              304.270833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Nro. Medio'
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
          object QRLabel97: TQRLabel
            Left = 424
            Top = 1
            Width = 83
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1121.833333333333000000
              2.645833333333333000
              219.604166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha Medio'
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
          object QRLabel89: TQRLabel
            Left = 303
            Top = 1
            Width = 39
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              801.687500000000000000
              2.645833333333333000
              103.187500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Medio'
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
          object QRLabel33: TQRLabel
            Left = 2
            Top = 1
            Width = 87
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              5.291666666666667000
              2.645833333333333000
              230.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Cuenta'
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
    end
    object TabSheet5: TTabSheet
      Caption = 'ORDEN PAGO'
      ImageIndex = 4
      object RepOrdenPago: TQuickRep
        Tag = 99
        Left = 129
        Top = 8
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Font.Charset = DEFAULT_CHARSET
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
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
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
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        object QRBand16: TQRBand
          Tag = 99
          Left = 38
          Top = 38
          Width = 718
          Height = 98
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            259.291666666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object RepOrdenPago_RENGLON4: TQRLabel
            Left = 112
            Top = 71
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              187.854166666666700000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepOrdenPago_RENGLON4'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepOrdenPago_RENGLON3: TQRLabel
            Left = 112
            Top = 58
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              153.458333333333300000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepOrdenPago_RENGLON3'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepOrdenPago_RENGLON2: TQRLabel
            Left = 112
            Top = 45
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              119.062500000000000000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepOrdenPago_RENGLON2'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText41: TQRDBText
            Left = 477
            Top = 74
            Width = 236
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              1262.062500000000000000
              195.791666666666700000
              624.416666666666800000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'FECHA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object RepOrdenPago_TITULO: TQRLabel
            Left = 112
            Top = 9
            Width = 280
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              63.500000000000000000
              296.333333333333400000
              23.812500000000000000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepOrdenPago_TITULO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 14
          end
          object QRShape5: TQRShape
            Left = 406
            Top = 0
            Width = 9
            Height = 97
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              256.645833333333400000
              1074.208333333333000000
              0.000000000000000000
              23.812500000000000000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRLabel48: TQRLabel
            Left = 425
            Top = 58
            Width = 50
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              1124.479166666667000000
              153.458333333333300000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'N'#250'mero:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRLabel65: TQRLabel
            Left = 425
            Top = 74
            Width = 50
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333340000
              1124.479166666667000000
              195.791666666666700000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText42: TQRDBText
            Left = 477
            Top = 58
            Width = 27
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1262.062500000000000000
              153.458333333333300000
              71.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'PUNTO_VENTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object RepOrdenPago_RENGLON1: TQRLabel
            Left = 112
            Top = 32
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              84.666666666666680000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepOrdenPago_RENGLON1'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText53: TQRDBText
            Left = 510
            Top = 58
            Width = 59
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1349.375000000000000000
              153.458333333333300000
              156.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'NUMERO_CPB'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRLabel71: TQRLabel
            Left = 504
            Top = 57
            Width = 6
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1333.500000000000000000
              150.812500000000000000
              15.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '-'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBImage4: TQRDBImage
            Left = 24
            Top = 11
            Width = 64
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              63.500000000000000000
              29.104166666666670000
              169.333333333333300000)
            DataField = 'LOGO'
            Stretch = True
          end
          object QRLabel13: TQRLabel
            Left = 441
            Top = 4
            Width = 249
            Height = 29
            Frame.Color = clGray
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              76.729166666666680000
              1166.812500000000000000
              10.583333333333330000
              658.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'ORDEN DE'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -23
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 17
          end
          object QRLabel14: TQRLabel
            Left = 441
            Top = 28
            Width = 249
            Height = 29
            Frame.Color = clGray
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              76.729166666666680000
              1166.812500000000000000
              74.083333333333340000
              658.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'PAGO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -23
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 17
          end
        end
        object QRBand17: TQRBand
          Left = 38
          Top = 136
          Width = 718
          Height = 92
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            243.416666666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel77: TQRLabel
            Left = 5
            Top = 72
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              190.500000000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Tipo Iva:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel78: TQRLabel
            Left = 309
            Top = 72
            Width = 62
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              817.562500000000000000
              190.500000000000000000
              164.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cuit/Cuil:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel80: TQRLabel
            Left = 5
            Top = 55
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              145.520833333333300000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'C'#243'digo Postal:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel81: TQRLabel
            Left = 5
            Top = 38
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              100.541666666666700000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Domicilio:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel82: TQRLabel
            Left = 505
            Top = 32
            Width = 66
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1336.145833333333000000
              84.666666666666670000
              174.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Provincia:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel83: TQRLabel
            Left = 195
            Top = 55
            Width = 67
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              515.937500000000000000
              145.520833333333300000
              177.270833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Localidad:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel84: TQRLabel
            Left = 5
            Top = 21
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              55.562500000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Entidad:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText55: TQRDBText
            Left = 117
            Top = 72
            Width = 179
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              190.500000000000000000
              473.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'TIPO_IVA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText56: TQRDBText
            Left = 374
            Top = 72
            Width = 339
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              989.541666666666700000
              190.500000000000000000
              896.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'CUIT_CUIL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText64: TQRDBText
            Left = 117
            Top = 55
            Width = 60
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              145.520833333333300000
              158.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'CODIGO_POSTAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText65: TQRDBText
            Left = 117
            Top = 38
            Width = 337
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              100.541666666666700000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'DIRECCION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText66: TQRDBText
            Left = 117
            Top = 21
            Width = 591
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              55.562500000000000000
              1563.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'NOMBRE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText67: TQRDBText
            Left = 574
            Top = 32
            Width = 139
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1518.708333333333000000
              84.666666666666670000
              367.770833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'PROVINCIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText69: TQRDBText
            Left = 264
            Top = 55
            Width = 227
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              698.500000000000000000
              145.520833333333300000
              600.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'LOCALIDAD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel17: TQRLabel
            Left = 5
            Top = 2
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              5.291666666666667000
              291.041666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Sirvase pagar a:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRChildBand1: TQRChildBand
          Left = 38
          Top = 228
          Width = 718
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            71.437500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = QRBand17
          PrintOrder = cboAfterParent
          object QRLabel88: TQRLabel
            Left = 5
            Top = 8
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              21.166666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'El monto de:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRlblOrdenPago_ImporteEnLetras: TQRLabel
            Left = 117
            Top = 8
            Width = 595
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              21.166666666666670000
              1574.270833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Caption = 'QRlblOrdenPago_ImporteEnLetras'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRBand20: TQRBand
          Left = 38
          Top = 255
          Width = 718
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            71.437500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRLabel91: TQRLabel
            Left = 5
            Top = 8
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              21.166666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'En concepto de:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText70: TQRDBText
            Left = 117
            Top = 8
            Width = 595
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              21.166666666666670000
              1574.270833333333000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'OBSERVACION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRChildBand4: TQRChildBand
          Left = 38
          Top = 282
          Width = 718
          Height = 33
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            87.312500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = QRBand20
          PrintOrder = cboAfterParent
          object QRLabel92: TQRLabel
            Left = 5
            Top = 16
            Width = 124
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              42.333333333333330000
              328.083333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Forma de Pago:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRSubDetail1: TQRSubDetail
          Left = 38
          Top = 332
          Width = 718
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Master = RepOrdenPago
          DataSet = ZQ_Fpago
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText71: TQRDBText
            Left = 2
            Top = 2
            Width = 295
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              5.291666666666667000
              5.291666666666667000
              780.520833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Fpago
            DataField = 'CTA_EGRESO'
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
          object QRDBText74: TQRDBText
            Left = 303
            Top = 2
            Width = 116
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              801.687500000000000000
              5.291666666666667000
              306.916666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Fpago
            DataField = 'NOMBRE_TIPO'
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
          object QRDBText75: TQRDBText
            Left = 424
            Top = 2
            Width = 83
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1121.833333333333000000
              5.291666666666667000
              219.604166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Fpago
            DataField = 'MDCP_FECHA'
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
          object QRDBText76: TQRDBText
            Left = 512
            Top = 2
            Width = 115
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1354.666666666667000000
              5.291666666666667000
              304.270833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Fpago
            DataField = 'MDCP_CHEQUE'
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
          object QRDBText77: TQRDBText
            Left = 630
            Top = 2
            Width = 83
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1666.875000000000000000
              5.291666666666667000
              219.604166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Fpago
            DataField = 'IMPORTE'
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
        end
        object QRBand21: TQRBand
          Left = 38
          Top = 350
          Width = 718
          Height = 150
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            396.875000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel93: TQRLabel
            Left = 78
            Top = 100
            Width = 250
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Style = psDash
            Size.Values = (
              37.041666666666670000
              206.375000000000000000
              264.583333333333300000
              661.458333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Firma'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel94: TQRLabel
            Left = 390
            Top = 100
            Width = 250
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Style = psDash
            Size.Values = (
              37.041666666666670000
              1031.875000000000000000
              264.583333333333300000
              661.458333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Aclaraci'#243'n'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRlblOrdenPago_ImporteTotal: TQRLabel
            Left = 408
            Top = 3
            Width = 304
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1079.500000000000000000
              7.937500000000000000
              804.333333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'QRlblOrdenPago_ImporteTotal'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRBand22: TQRBand
          Left = 38
          Top = 500
          Width = 718
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRlblOrdenPago_PiePagina: TQRLabel
            Left = 4
            Top = 3
            Width = 124
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              10.583333333333330000
              7.937500000000000000
              328.083333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRlblOrdenPago_PiePagina'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
        end
        object QRChildBand5: TQRChildBand
          Left = 38
          Top = 315
          Width = 718
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clSilver
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            44.979166666666670000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = QRChildBand4
          PrintOrder = cboAfterParent
          object QRLabel105: TQRLabel
            Left = 652
            Top = 1
            Width = 61
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1725.083333333333000000
              2.645833333333333000
              161.395833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Importe'
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
          object QRLabel107: TQRLabel
            Left = 512
            Top = 1
            Width = 115
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1354.666666666667000000
              2.645833333333333000
              304.270833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Nro. Medio'
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
          object QRLabel108: TQRLabel
            Left = 424
            Top = 1
            Width = 83
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1121.833333333333000000
              2.645833333333333000
              219.604166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha Medio'
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
          object QRLabel109: TQRLabel
            Left = 303
            Top = 1
            Width = 39
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              801.687500000000000000
              2.645833333333333000
              103.187500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Medio'
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
          object QRLabel110: TQRLabel
            Left = 2
            Top = 1
            Width = 87
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              5.291666666666667000
              2.645833333333333000
              230.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Cuenta'
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
    end
    object TabSheet2: TTabSheet
      Caption = 'PRESUPUESTO'
      ImageIndex = 1
      object RepPresupuesto: TQuickRep
        Tag = 99
        Left = 129
        Top = 8
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Font.Charset = DEFAULT_CHARSET
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
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
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
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        object QRBand6: TQRBand
          Tag = 99
          Left = 38
          Top = 38
          Width = 718
          Height = 98
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            259.291666666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object RepPresupuesto_RENGLON4: TQRLabel
            Left = 112
            Top = 71
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              187.854166666666700000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepPresupuesto_RENGLON4'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepPresupuesto_RENGLON3: TQRLabel
            Left = 112
            Top = 58
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              153.458333333333300000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepPresupuesto_RENGLON3'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepPresupuesto_RENGLON2: TQRLabel
            Left = 112
            Top = 45
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              119.062500000000000000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepPresupuesto_RENGLON2'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepPresupuesto_TITULO: TQRLabel
            Left = 112
            Top = 9
            Width = 280
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              63.500000000000000000
              296.333333333333400000
              23.812500000000000000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepPresupuesto_TITULO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 14
          end
          object QRShape3: TQRShape
            Left = 406
            Top = 0
            Width = 9
            Height = 97
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              256.645833333333400000
              1074.208333333333000000
              0.000000000000000000
              23.812500000000000000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRLabel72: TQRLabel
            Left = 425
            Top = 9
            Width = 277
            Height = 41
            Frame.Color = clGray
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              108.479166666666700000
              1124.479166666667000000
              23.812500000000000000
              732.895833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'PRESUPUESTO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -33
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 25
          end
          object QRLabel73: TQRLabel
            Left = 425
            Top = 52
            Width = 50
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1124.479166666667000000
              137.583333333333300000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'N'#250'mero:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRLabel76: TQRLabel
            Left = 425
            Top = 68
            Width = 50
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1124.479166666667000000
              179.916666666666700000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object RepPresupuesto_RENGLON1: TQRLabel
            Left = 112
            Top = 32
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              84.666666666666680000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepPresupuesto_RENGLON1'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText2: TQRDBText
            Left = 477
            Top = 68
            Width = 236
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1262.062500000000000000
              179.916666666666700000
              624.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'FECHA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText3: TQRDBText
            Left = 477
            Top = 52
            Width = 27
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1262.062500000000000000
              137.583333333333300000
              71.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'PUNTO_VENTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText4: TQRDBText
            Left = 510
            Top = 52
            Width = 59
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1349.375000000000000000
              137.583333333333300000
              156.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'NUMERO_CPB'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRLabel2: TQRLabel
            Left = 504
            Top = 51
            Width = 6
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1333.500000000000000000
              134.937500000000000000
              15.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '-'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBLogo: TQRDBImage
            Left = 24
            Top = 11
            Width = 64
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              63.500000000000000000
              29.104166666666670000
              169.333333333333300000)
            DataField = 'LOGO'
            Stretch = True
          end
          object QRLabel66: TQRLabel
            Left = 455
            Top = 83
            Width = 234
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1203.854166666667000000
              219.604166666666700000
              619.125000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'DOCUMENTO NO VALIDO COMO FACTURA'
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
        end
        object TitleBand2: TQRBand
          Left = 38
          Top = 136
          Width = 718
          Height = 71
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            187.854166666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel35: TQRLabel
            Left = 5
            Top = 54
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              142.875000000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Tipo Iva:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel37: TQRLabel
            Left = 309
            Top = 54
            Width = 62
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              817.562500000000000000
              142.875000000000000000
              164.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cuit/Cuil:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel38: TQRLabel
            Left = 5
            Top = 37
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              97.895833333333330000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'C'#243'digo Postal:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel39: TQRLabel
            Left = 5
            Top = 20
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              52.916666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Domicilio:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel40: TQRLabel
            Left = 505
            Top = 37
            Width = 66
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1336.145833333333000000
              97.895833333333330000
              174.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Provincia:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel41: TQRLabel
            Left = 195
            Top = 37
            Width = 67
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              515.937500000000000000
              97.895833333333330000
              177.270833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Localidad:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel42: TQRLabel
            Left = 5
            Top = 3
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              7.937500000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Entidad:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText44: TQRDBText
            Left = 117
            Top = 54
            Width = 179
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              142.875000000000000000
              473.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'TIPO_IVA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText45: TQRDBText
            Left = 374
            Top = 54
            Width = 339
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              989.541666666666700000
              142.875000000000000000
              896.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'CUIT_CUIL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText46: TQRDBText
            Left = 117
            Top = 37
            Width = 60
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              97.895833333333330000
              158.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'CODIGO_POSTAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText58: TQRDBText
            Left = 117
            Top = 20
            Width = 337
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              52.916666666666670000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'DIRECCION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText59: TQRDBText
            Left = 117
            Top = 3
            Width = 591
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              7.937500000000000000
              1563.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'NOMBRE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText61: TQRDBText
            Left = 574
            Top = 37
            Width = 139
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1518.708333333333000000
              97.895833333333330000
              367.770833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'PROVINCIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText63: TQRDBText
            Left = 264
            Top = 37
            Width = 227
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              698.500000000000000000
              97.895833333333330000
              600.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'LOCALIDAD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRBand7: TQRBand
          Left = 38
          Top = 207
          Width = 718
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            71.437500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRLabel4: TQRLabel
            Left = 5
            Top = 8
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              21.166666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Observaci'#243'n:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText7: TQRDBText
            Left = 117
            Top = 8
            Width = 596
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              21.166666666666670000
              1576.916666666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'OBSERVACION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object ChildBand3: TQRChildBand
          Left = 38
          Top = 234
          Width = 718
          Height = 39
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            103.187500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = QRBand7
          PrintOrder = cboAfterParent
          object QRLabel52: TQRLabel
            Left = 5
            Top = 22
            Width = 60
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              58.208333333333330000
              158.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Detalle:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel54: TQRLabel
            Left = 5
            Top = 2
            Width = 128
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              5.291666666666667000
              338.666666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha Vencimiento:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText17: TQRDBText
            Left = 137
            Top = 2
            Width = 337
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              362.479166666666700000
              5.291666666666667000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'FECHA_VENCIMIENTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object ChildBand6: TQRChildBand
          Left = 38
          Top = 273
          Width = 718
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clSilver
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            42.333333333333330000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = ChildBand3
          PrintOrder = cboAfterParent
          object QRLabel55: TQRLabel
            Left = 3
            Top = 1
            Width = 59
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              7.937500000000000000
              2.645833333333333000
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
          object QRLabel57: TQRLabel
            Left = 480
            Top = 1
            Width = 34
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1270.000000000000000000
              2.645833333333333000
              89.958333333333330000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Cant.'
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
          object QRLabel59: TQRLabel
            Left = 595
            Top = 1
            Width = 45
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1574.270833333333000000
              2.645833333333333000
              119.062500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '% Dto.'
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
          object QRLabel62: TQRLabel
            Left = 518
            Top = 1
            Width = 72
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1370.541666666667000000
              2.645833333333333000
              190.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Imp. Unit.'
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
          object QRLabel64: TQRLabel
            Left = 643
            Top = 1
            Width = 72
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1701.270833333333000000
              2.645833333333333000
              190.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Importe'
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
          object QRLabel50: TQRLabel
            Left = 241
            Top = 1
            Width = 52
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              637.645833333333300000
              2.645833333333333000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Art'#237'culo'
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
          object QRLabel51: TQRLabel
            Left = 389
            Top = 1
            Width = 47
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1029.229166666667000000
              2.645833333333333000
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
        end
        object QRBand12: TQRBand
          Left = 38
          Top = 306
          Width = 718
          Height = 91
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            240.770833333333300000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel26: TQRLabel
            Left = 78
            Top = 62
            Width = 250
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Style = psDash
            Size.Values = (
              37.041666666666670000
              206.375000000000000000
              164.041666666666700000
              661.458333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Firma'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel49: TQRLabel
            Left = 390
            Top = 62
            Width = 250
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Style = psDash
            Size.Values = (
              37.041666666666670000
              1031.875000000000000000
              164.041666666666700000
              661.458333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Aclaraci'#243'n'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRlblPresupuesto_ImporteTotal: TQRLabel
            Left = 136
            Top = 3
            Width = 576
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              359.833333333333300000
              7.937500000000000000
              1524.000000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            Caption = 'QRlblPresupuesto_ImporteTotal'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRBand13: TQRBand
          Left = 38
          Top = 397
          Width = 718
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRlblPresupuesto_PiePagina: TQRLabel
            Left = 4
            Top = 3
            Width = 133
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              10.583333333333330000
              7.937500000000000000
              351.895833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRlblPresupuesto_PiePagina'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
        end
        object QRSubDetail4: TQRSubDetail
          Left = 38
          Top = 289
          Width = 718
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            44.979166666666670000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Master = RepPresupuesto
          DataSet = ZQ_Producto
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText11: TQRDBText
            Left = 480
            Top = 1
            Width = 34
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1270.000000000000000000
              2.645833333333333000
              89.958333333333330000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'CANTIDAD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText31: TQRDBText
            Left = 3
            Top = 1
            Width = 234
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              7.937500000000000000
              2.645833333333333000
              619.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'PRODUCTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText33: TQRDBText
            Left = 241
            Top = 1
            Width = 144
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              637.645833333333300000
              2.645833333333333000
              381.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'ARTICULO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText34: TQRDBText
            Left = 389
            Top = 1
            Width = 88
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1029.229166666667000000
              2.645833333333333000
              232.833333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'MEDIDA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText35: TQRDBText
            Left = 595
            Top = 1
            Width = 45
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1574.270833333333000000
              2.645833333333333000
              119.062500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'PORC_DESCUENTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText36: TQRDBText
            Left = 518
            Top = 1
            Width = 72
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1370.541666666667000000
              2.645833333333333000
              190.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'IMPORTE_UNITARIO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText37: TQRDBText
            Left = 643
            Top = 1
            Width = 72
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1701.270833333333000000
              2.645833333333333000
              190.500000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'IMPORTE_FINAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'REMITO'
      ImageIndex = 3
      object RepRemito: TQuickRep
        Tag = 99
        Left = 17
        Top = 8
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Font.Charset = DEFAULT_CHARSET
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
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
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
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        object QRBand11: TQRBand
          Tag = 99
          Left = 38
          Top = 38
          Width = 718
          Height = 98
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            259.291666666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel25: TQRLabel
            Left = 425
            Top = 9
            Width = 277
            Height = 41
            Frame.Color = clGray
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              108.479166666666700000
              1124.479166666667000000
              23.812500000000000000
              732.895833333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'REMITO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -33
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 25
          end
          object RepRemito_RENGLON4: TQRLabel
            Left = 112
            Top = 71
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              187.854166666666700000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepRemito_RENGLON4'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepRemito_RENGLON3: TQRLabel
            Left = 112
            Top = 58
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              153.458333333333300000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepRemito_RENGLON3'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepRemito_RENGLON2: TQRLabel
            Left = 112
            Top = 45
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              119.062500000000000000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepRemito_RENGLON2'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepRemito_TITULO: TQRLabel
            Left = 112
            Top = 9
            Width = 280
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              63.500000000000000000
              296.333333333333400000
              23.812500000000000000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepRemito_TITULO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 14
          end
          object QRShape1: TQRShape
            Left = 406
            Top = 0
            Width = 9
            Height = 97
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              256.645833333333400000
              1074.208333333333000000
              0.000000000000000000
              23.812500000000000000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRLabel74: TQRLabel
            Left = 425
            Top = 52
            Width = 50
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1124.479166666667000000
              137.583333333333300000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'N'#250'mero:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRLabel75: TQRLabel
            Left = 425
            Top = 68
            Width = 50
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1124.479166666667000000
              179.916666666666700000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object RepRemito_RENGLON1: TQRLabel
            Left = 112
            Top = 32
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              84.666666666666680000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepRemito_RENGLON1'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText10: TQRDBText
            Left = 477
            Top = 68
            Width = 236
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1262.062500000000000000
              179.916666666666700000
              624.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'FECHA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText12: TQRDBText
            Left = 477
            Top = 52
            Width = 27
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1262.062500000000000000
              137.583333333333300000
              71.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'PUNTO_VENTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText13: TQRDBText
            Left = 510
            Top = 52
            Width = 59
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1349.375000000000000000
              137.583333333333300000
              156.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'NUMERO_CPB'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRLabel5: TQRLabel
            Left = 504
            Top = 51
            Width = 6
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1333.500000000000000000
              134.937500000000000000
              15.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '-'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBImage3: TQRDBImage
            Left = 24
            Top = 11
            Width = 64
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              63.500000000000000000
              29.104166666666670000
              169.333333333333300000)
            DataField = 'LOGO'
            Stretch = True
          end
          object QRLabel90: TQRLabel
            Left = 455
            Top = 83
            Width = 234
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1203.854166666667000000
              219.604166666666700000
              619.125000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'DOCUMENTO NO VALIDO COMO FACTURA'
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
        end
        object TitleBand4: TQRBand
          Left = 38
          Top = 136
          Width = 718
          Height = 71
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            187.854166666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel53: TQRLabel
            Left = 5
            Top = 54
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              142.875000000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Tipo Iva:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel58: TQRLabel
            Left = 309
            Top = 54
            Width = 62
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              817.562500000000000000
              142.875000000000000000
              164.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cuit/Cuil:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel60: TQRLabel
            Left = 5
            Top = 37
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              97.895833333333330000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'C'#243'digo Postal:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel61: TQRLabel
            Left = 5
            Top = 20
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              52.916666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Domicilio:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel63: TQRLabel
            Left = 505
            Top = 37
            Width = 66
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1336.145833333333000000
              97.895833333333330000
              174.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Provincia:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel68: TQRLabel
            Left = 195
            Top = 37
            Width = 67
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              515.937500000000000000
              97.895833333333330000
              177.270833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Localidad:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel69: TQRLabel
            Left = 5
            Top = 3
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              7.937500000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Entidad:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText85: TQRDBText
            Left = 117
            Top = 54
            Width = 179
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              142.875000000000000000
              473.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'TIPO_IVA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText86: TQRDBText
            Left = 374
            Top = 54
            Width = 339
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              989.541666666666700000
              142.875000000000000000
              896.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'CUIT_CUIL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText87: TQRDBText
            Left = 117
            Top = 37
            Width = 60
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              97.895833333333330000
              158.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'CODIGO_POSTAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText88: TQRDBText
            Left = 117
            Top = 20
            Width = 337
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              52.916666666666670000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'DIRECCION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText89: TQRDBText
            Left = 117
            Top = 3
            Width = 591
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              7.937500000000000000
              1563.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'NOMBRE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText90: TQRDBText
            Left = 574
            Top = 37
            Width = 139
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1518.708333333333000000
              97.895833333333330000
              367.770833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'PROVINCIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText91: TQRDBText
            Left = 264
            Top = 37
            Width = 227
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              698.500000000000000000
              97.895833333333330000
              600.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'LOCALIDAD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRBand5: TQRBand
          Left = 38
          Top = 207
          Width = 718
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            71.437500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRLabel3: TQRLabel
            Left = 5
            Top = 8
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              21.166666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Observaci'#243'n:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText15: TQRDBText
            Left = 117
            Top = 8
            Width = 596
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              21.166666666666670000
              1576.916666666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'OBSERVACION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object ChildBand5: TQRChildBand
          Left = 38
          Top = 234
          Width = 718
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            100.541666666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = QRBand5
          PrintOrder = cboAfterParent
          object QRLabel67: TQRLabel
            Left = 5
            Top = 2
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              5.291666666666667000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha Envio:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText54: TQRDBText
            Left = 117
            Top = 2
            Width = 337
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              5.291666666666667000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'FECHA_ENVIADA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel70: TQRLabel
            Left = 5
            Top = 22
            Width = 314
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              58.208333333333330000
              830.791666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Remito a Ud(s) la(s) siguiente(s) mercaderia(s)'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object ChildBand7: TQRChildBand
          Left = 38
          Top = 272
          Width = 718
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clSilver
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            42.333333333333330000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = ChildBand5
          PrintOrder = cboAfterParent
          object QRLabel12: TQRLabel
            Left = 83
            Top = 1
            Width = 59
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              219.604166666666700000
              2.645833333333333000
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
          object QRLabel15: TQRLabel
            Left = 321
            Top = 1
            Width = 52
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              849.312500000000000000
              2.645833333333333000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Art'#237'culo'
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
          object QRLabel18: TQRLabel
            Left = 469
            Top = 1
            Width = 47
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1240.895833333333000000
              2.645833333333333000
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
          object QRLabel23: TQRLabel
            Left = 656
            Top = 1
            Width = 58
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1735.666666666667000000
              2.645833333333333000
              153.458333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cantidad'
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
          object QRLabel10: TQRLabel
            Left = 561
            Top = 1
            Width = 35
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1484.312500000000000000
              2.645833333333333000
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
          object QRLabel11: TQRLabel
            Left = 3
            Top = 1
            Width = 69
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              7.937500000000000000
              2.645833333333333000
              182.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'd. Barra'
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
        object QRBand14: TQRBand
          Left = 38
          Top = 305
          Width = 718
          Height = 91
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            240.770833333333300000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel8: TQRLabel
            Left = 143
            Top = 62
            Width = 200
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Style = psDash
            Size.Values = (
              37.041666666666670000
              378.354166666666700000
              164.041666666666700000
              529.166666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Firma'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel9: TQRLabel
            Left = 375
            Top = 62
            Width = 200
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Style = psDash
            Size.Values = (
              37.041666666666670000
              992.187500000000000000
              164.041666666666700000
              529.166666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Aclaraci'#243'n'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRlblRemito_CantidadTotal: TQRLabel
            Left = 410
            Top = 3
            Width = 304
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1084.791666666667000000
              7.937500000000000000
              804.333333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'QRlblRemito_CantidadTotal'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel56: TQRLabel
            Left = 19
            Top = 46
            Width = 111
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              50.270833333333330000
              121.708333333333300000
              293.687500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Recibi Conforme:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRBand15: TQRBand
          Left = 38
          Top = 396
          Width = 718
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRlblRemito_PiePagina: TQRLabel
            Left = 4
            Top = 3
            Width = 107
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              10.583333333333330000
              7.937500000000000000
              283.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRlblRemito_PiePagina'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
        end
        object QRSubDetail2: TQRSubDetail
          Left = 38
          Top = 288
          Width = 718
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            44.979166666666670000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Master = RepRemito
          DataSet = ZQ_Producto
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText43: TQRDBText
            Left = 83
            Top = 1
            Width = 234
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              219.604166666666700000
              2.645833333333333000
              619.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'PRODUCTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText47: TQRDBText
            Left = 321
            Top = 1
            Width = 144
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              849.312500000000000000
              2.645833333333333000
              381.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'ARTICULO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText48: TQRDBText
            Left = 469
            Top = 1
            Width = 88
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1240.895833333333000000
              2.645833333333333000
              232.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'MEDIDA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText32: TQRDBText
            Left = 656
            Top = 1
            Width = 58
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1735.666666666667000000
              2.645833333333333000
              153.458333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'CANTIDAD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText50: TQRDBText
            Left = 3
            Top = 1
            Width = 76
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              7.937500000000000000
              2.645833333333333000
              201.083333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'CODIGO_BARRA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText52: TQRDBText
            Left = 561
            Top = 1
            Width = 91
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1484.312500000000000000
              2.645833333333333000
              240.770833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'COLOR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'NOTA PEDIDO'
      ImageIndex = 2
      object RepNotaPedido: TQuickRep
        Tag = 99
        Left = 129
        Top = 8
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Font.Charset = DEFAULT_CHARSET
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
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
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
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        object QRBand1: TQRBand
          Tag = 99
          Left = 38
          Top = 38
          Width = 718
          Height = 98
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            259.291666666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRShape2: TQRShape
            Left = 406
            Top = 0
            Width = 9
            Height = 97
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              256.645833333333400000
              1074.208333333333000000
              0.000000000000000000
              23.812500000000000000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRLabel22: TQRLabel
            Left = 425
            Top = 57
            Width = 50
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1124.479166666667000000
              150.812500000000000000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'N'#250'mero:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRLabel24: TQRLabel
            Left = 425
            Top = 70
            Width = 50
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1124.479166666667000000
              185.208333333333300000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText5: TQRDBText
            Left = 477
            Top = 70
            Width = 236
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1262.062500000000000000
              185.208333333333300000
              624.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'FECHA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText6: TQRDBText
            Left = 477
            Top = 57
            Width = 27
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1262.062500000000000000
              150.812500000000000000
              71.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'PUNTO_VENTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText8: TQRDBText
            Left = 510
            Top = 57
            Width = 59
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1349.375000000000000000
              150.812500000000000000
              156.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'NUMERO_CPB'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRLabel27: TQRLabel
            Left = 504
            Top = 56
            Width = 6
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1333.500000000000000000
              148.166666666666700000
              15.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '-'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBImage2: TQRDBImage
            Left = 24
            Top = 11
            Width = 64
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              63.500000000000000000
              29.104166666666670000
              169.333333333333300000)
            DataField = 'LOGO'
            Stretch = True
          end
          object QRLabel21: TQRLabel
            Left = 441
            Top = 3
            Width = 249
            Height = 29
            Frame.Color = clGray
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              76.729166666666670000
              1166.812500000000000000
              7.937500000000000000
              658.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'NOTA DE'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -23
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 17
          end
          object QRLabel124: TQRLabel
            Left = 441
            Top = 27
            Width = 249
            Height = 29
            Frame.Color = clGray
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              76.729166666666670000
              1166.812500000000000000
              71.437500000000000000
              658.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'PEDIDO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -23
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 17
          end
          object RepNotaPedido_RENGLON4: TQRLabel
            Left = 112
            Top = 71
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              187.854166666666700000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepNotaPedido_RENGLON4'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepNotaPedido_RENGLON3: TQRLabel
            Left = 112
            Top = 58
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              153.458333333333300000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepNotaPedido_RENGLON3'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepNotaPedido_RENGLON2: TQRLabel
            Left = 112
            Top = 45
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              119.062500000000000000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepNotaPedido_RENGLON2'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepNotaPedido_TITULO: TQRLabel
            Left = 112
            Top = 9
            Width = 280
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              63.500000000000000000
              296.333333333333400000
              23.812500000000000000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepNotaPedido_TITULO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 14
          end
          object RepNotaPedido_RENGLON1: TQRLabel
            Left = 112
            Top = 32
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              84.666666666666680000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepNotaPedido_RENGLON1'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel202: TQRLabel
            Left = 455
            Top = 83
            Width = 234
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1203.854166666667000000
              219.604166666666700000
              619.125000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'DOCUMENTO NO VALIDO COMO FACTURA'
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
        end
        object QRBand2: TQRBand
          Tag = 99
          Left = 38
          Top = 136
          Width = 718
          Height = 71
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            187.854166666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel28: TQRLabel
            Left = 5
            Top = 54
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              142.875000000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Tipo Iva:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel29: TQRLabel
            Left = 309
            Top = 54
            Width = 62
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              817.562500000000000000
              142.875000000000000000
              164.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cuit/Cuil:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel30: TQRLabel
            Left = 5
            Top = 37
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              97.895833333333330000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'C'#243'digo Postal:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel31: TQRLabel
            Left = 5
            Top = 20
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              52.916666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Domicilio:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel43: TQRLabel
            Left = 505
            Top = 37
            Width = 66
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1336.145833333333000000
              97.895833333333330000
              174.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Provincia:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel44: TQRLabel
            Left = 195
            Top = 37
            Width = 67
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              515.937500000000000000
              97.895833333333330000
              177.270833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Localidad:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel45: TQRLabel
            Left = 5
            Top = 3
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              7.937500000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Entidad:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText9: TQRDBText
            Left = 117
            Top = 54
            Width = 179
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              142.875000000000000000
              473.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'TIPO_IVA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText18: TQRDBText
            Left = 374
            Top = 54
            Width = 339
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              989.541666666666700000
              142.875000000000000000
              896.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'CUIT_CUIL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText19: TQRDBText
            Left = 117
            Top = 37
            Width = 60
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              97.895833333333330000
              158.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'CODIGO_POSTAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText20: TQRDBText
            Left = 117
            Top = 20
            Width = 337
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              52.916666666666670000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'DIRECCION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText21: TQRDBText
            Left = 117
            Top = 3
            Width = 591
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              7.937500000000000000
              1563.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'NOMBRE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText22: TQRDBText
            Left = 574
            Top = 37
            Width = 139
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1518.708333333333000000
              97.895833333333330000
              367.770833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'PROVINCIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText23: TQRDBText
            Left = 264
            Top = 37
            Width = 227
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              698.500000000000000000
              97.895833333333330000
              600.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'LOCALIDAD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRBand3: TQRBand
          Tag = 99
          Left = 38
          Top = 207
          Width = 718
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            71.437500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRLabel46: TQRLabel
            Left = 5
            Top = 8
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              21.166666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Observaci'#243'n:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText24: TQRDBText
            Left = 117
            Top = 8
            Width = 596
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              21.166666666666670000
              1576.916666666667000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'OBSERVACION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRChildBand2: TQRChildBand
          Tag = 99
          Left = 38
          Top = 234
          Width = 718
          Height = 38
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            100.541666666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = QRBand3
          PrintOrder = cboAfterParent
          object QRLabel47: TQRLabel
            Left = 5
            Top = 2
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              5.291666666666667000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha Envio:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText25: TQRDBText
            Left = 117
            Top = 2
            Width = 337
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              5.291666666666667000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'FECHA_ENVIADA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRChildBand3: TQRChildBand
          Tag = 99
          Left = 38
          Top = 272
          Width = 718
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clSilver
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            42.333333333333330000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = QRChildBand2
          PrintOrder = cboAfterParent
          object QRLabel102: TQRLabel
            Left = 83
            Top = 1
            Width = 59
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              219.604166666666700000
              2.645833333333333000
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
          object QRLabel106: TQRLabel
            Left = 321
            Top = 1
            Width = 52
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              849.312500000000000000
              2.645833333333333000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Art'#237'culo'
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
          object QRLabel115: TQRLabel
            Left = 469
            Top = 1
            Width = 47
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1240.895833333333000000
              2.645833333333333000
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
          object QRLabel116: TQRLabel
            Left = 656
            Top = 1
            Width = 58
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1735.666666666667000000
              2.645833333333333000
              153.458333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cantidad'
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
          object QRLabel117: TQRLabel
            Left = 561
            Top = 1
            Width = 35
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1484.312500000000000000
              2.645833333333333000
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
          object QRLabel118: TQRLabel
            Left = 3
            Top = 1
            Width = 69
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              7.937500000000000000
              2.645833333333333000
              182.562500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'd. Barra'
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
        object QRBand4: TQRBand
          Tag = 99
          Left = 38
          Top = 305
          Width = 718
          Height = 91
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            240.770833333333300000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel119: TQRLabel
            Left = 143
            Top = 62
            Width = 200
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Style = psDash
            Size.Values = (
              37.041666666666670000
              378.354166666666700000
              164.041666666666700000
              529.166666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Firma'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel120: TQRLabel
            Left = 375
            Top = 62
            Width = 200
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Style = psDash
            Size.Values = (
              37.041666666666670000
              992.187500000000000000
              164.041666666666700000
              529.166666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Aclaraci'#243'n'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRlblNotaPedido_CantidadTotal: TQRLabel
            Left = 410
            Top = 3
            Width = 304
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1084.791666666667000000
              7.937500000000000000
              804.333333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'QRlblNotaPedido_CantidadTotal'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRBand8: TQRBand
          Tag = 99
          Left = 38
          Top = 396
          Width = 718
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRlblNotaPedido_PiePagina: TQRLabel
            Left = 4
            Top = 3
            Width = 126
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              10.583333333333330000
              7.937500000000000000
              333.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRlblNotaPedido_PiePagina'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
        end
        object QRSubDetail5: TQRSubDetail
          Tag = 99
          Left = 38
          Top = 288
          Width = 718
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            44.979166666666670000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Master = RepNotaPedido
          DataSet = ZQ_Producto
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText26: TQRDBText
            Left = 83
            Top = 1
            Width = 234
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              219.604166666666700000
              2.645833333333333000
              619.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'PRODUCTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText27: TQRDBText
            Left = 321
            Top = 1
            Width = 144
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              849.312500000000000000
              2.645833333333333000
              381.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'ARTICULO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText29: TQRDBText
            Left = 469
            Top = 1
            Width = 88
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1240.895833333333000000
              2.645833333333333000
              232.833333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'MEDIDA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText30: TQRDBText
            Left = 656
            Top = 1
            Width = 58
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1735.666666666667000000
              2.645833333333333000
              153.458333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'CANTIDAD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText38: TQRDBText
            Left = 3
            Top = 1
            Width = 76
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              7.937500000000000000
              2.645833333333333000
              201.083333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'CODIGO_BARRA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText39: TQRDBText
            Left = 561
            Top = 1
            Width = 91
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1484.312500000000000000
              2.645833333333333000
              240.770833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'COLOR'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'NOTA PEDIDO 2'
      ImageIndex = 6
      object QuickRep1: TQuickRep
        Tag = 99
        Left = -55
        Top = 42
        Width = 1123
        Height = 794
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Font.Charset = DEFAULT_CHARSET
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
          50.000000000000000000
          50.000000000000000000
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
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        object QRBand23: TQRBand
          Tag = 99
          Left = 19
          Top = 38
          Width = 1085
          Height = 98
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            259.291666666666700000
            2870.729166666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRLabel95: TQRLabel
            Left = 825
            Top = 58
            Width = 50
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2182.812500000000000000
              153.458333333333300000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'N'#250'mero:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRLabel96: TQRLabel
            Left = 825
            Top = 70
            Width = 50
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2182.812500000000000000
              185.208333333333300000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText78: TQRDBText
            Left = 877
            Top = 70
            Width = 202
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2320.395833333333000000
              185.208333333333300000
              534.458333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'FECHA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText79: TQRDBText
            Left = 877
            Top = 58
            Width = 27
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2320.395833333333000000
              153.458333333333300000
              71.437500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'PUNTO_VENTA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText80: TQRDBText
            Left = 910
            Top = 58
            Width = 59
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2407.708333333333000000
              153.458333333333300000
              156.104166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'NUMERO_CPB'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRLabel111: TQRLabel
            Left = 904
            Top = 57
            Width = 6
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2391.833333333333000000
              150.812500000000000000
              15.875000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = '-'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBImage5: TQRDBImage
            Left = 70
            Top = 11
            Width = 64
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              185.208333333333300000
              29.104166666666670000
              169.333333333333300000)
            DataField = 'LOGO'
            Stretch = True
          end
          object QRLabel112: TQRLabel
            Left = 825
            Top = 3
            Width = 249
            Height = 29
            Frame.Color = clGray
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              76.729166666666670000
              2182.812500000000000000
              7.937500000000000000
              658.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'NOTA DE'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -23
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 17
          end
          object QRLabel113: TQRLabel
            Left = 825
            Top = 27
            Width = 249
            Height = 29
            Frame.Color = clGray
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              76.729166666666670000
              2182.812500000000000000
              71.437500000000000000
              658.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'PEDIDO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -23
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 17
          end
          object QRLabel114: TQRLabel
            Left = 158
            Top = 71
            Width = 350
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              418.041666666666700000
              187.854166666666700000
              926.041666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepNotaPedido_RENGLON4'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel121: TQRLabel
            Left = 158
            Top = 58
            Width = 350
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              418.041666666666700000
              153.458333333333300000
              926.041666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepNotaPedido_RENGLON3'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel122: TQRLabel
            Left = 158
            Top = 45
            Width = 350
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              418.041666666666700000
              119.062500000000000000
              926.041666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepNotaPedido_RENGLON2'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel123: TQRLabel
            Left = 158
            Top = 9
            Width = 350
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              63.500000000000000000
              418.041666666666700000
              23.812500000000000000
              926.041666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepNotaPedido_TITULO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 14
          end
          object QRLabel125: TQRLabel
            Left = 158
            Top = 32
            Width = 350
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              418.041666666666700000
              84.666666666666670000
              926.041666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepNotaPedido_RENGLON1'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel203: TQRLabel
            Left = 835
            Top = 83
            Width = 234
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              2209.270833333333000000
              219.604166666666700000
              619.125000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'DOCUMENTO NO VALIDO COMO FACTURA'
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
        end
        object QRBand24: TQRBand
          Tag = 99
          Left = 19
          Top = 136
          Width = 1085
          Height = 71
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            187.854166666666700000
            2870.729166666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel126: TQRLabel
            Left = 5
            Top = 54
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              142.875000000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Tipo Iva:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel127: TQRLabel
            Left = 309
            Top = 54
            Width = 62
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              817.562500000000000000
              142.875000000000000000
              164.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cuit/Cuil:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel128: TQRLabel
            Left = 5
            Top = 37
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              97.895833333333330000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'C'#243'digo Postal:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel129: TQRLabel
            Left = 5
            Top = 20
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              52.916666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Domicilio:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel130: TQRLabel
            Left = 505
            Top = 37
            Width = 66
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1336.145833333333000000
              97.895833333333330000
              174.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Provincia:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel131: TQRLabel
            Left = 195
            Top = 37
            Width = 67
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              515.937500000000000000
              97.895833333333330000
              177.270833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Localidad:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel132: TQRLabel
            Left = 5
            Top = 3
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              7.937500000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Entidad:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText82: TQRDBText
            Left = 117
            Top = 54
            Width = 179
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              142.875000000000000000
              473.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'TIPO_IVA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText92: TQRDBText
            Left = 374
            Top = 54
            Width = 339
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              989.541666666666700000
              142.875000000000000000
              896.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'CUIT_CUIL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText93: TQRDBText
            Left = 117
            Top = 37
            Width = 60
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              97.895833333333330000
              158.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'CODIGO_POSTAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText94: TQRDBText
            Left = 117
            Top = 20
            Width = 337
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              52.916666666666670000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'DIRECCION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText95: TQRDBText
            Left = 117
            Top = 3
            Width = 591
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              7.937500000000000000
              1563.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'NOMBRE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText96: TQRDBText
            Left = 574
            Top = 37
            Width = 139
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1518.708333333333000000
              97.895833333333330000
              367.770833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'PROVINCIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText97: TQRDBText
            Left = 264
            Top = 37
            Width = 227
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              698.500000000000000000
              97.895833333333330000
              600.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'LOCALIDAD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRBand25: TQRBand
          Tag = 99
          Left = 19
          Top = 207
          Width = 1085
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            71.437500000000000000
            2870.729166666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRLabel133: TQRLabel
            Left = 5
            Top = 8
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              21.166666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Observaci'#243'n:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText98: TQRDBText
            Left = 117
            Top = 8
            Width = 960
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              21.166666666666670000
              2540.000000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'OBSERVACION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRChildBand6: TQRChildBand
          Tag = 99
          Left = 19
          Top = 234
          Width = 1085
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            2870.729166666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = QRBand25
          PrintOrder = cboAfterParent
          object QRLabel134: TQRLabel
            Left = 5
            Top = 2
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              5.291666666666667000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha Envio:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText99: TQRDBText
            Left = 117
            Top = 2
            Width = 337
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              5.291666666666667000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Comprobante
            DataField = 'FECHA_ENVIADA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRChildBand7: TQRChildBand
          Tag = 99
          Left = 19
          Top = 252
          Width = 1085
          Height = 35
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clSilver
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            92.604166666666670000
            2870.729166666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = QRChildBand6
          PrintOrder = cboAfterParent
          object QRLabel135: TQRLabel
            Left = 83
            Top = 19
            Width = 52
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              219.604166666666700000
              50.270833333333330000
              137.583333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Nombre'
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
          object QRLabel136: TQRLabel
            Left = 321
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              849.312500000000000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '14'
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
          object QRLabel138: TQRLabel
            Left = 1036
            Top = 19
            Width = 45
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2741.083333333333000000
              50.270833333333330000
              119.062500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Total'
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
          object QRLabel140: TQRLabel
            Left = 3
            Top = 19
            Width = 45
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              7.937500000000000000
              50.270833333333330000
              119.062500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'C'#243'digo'
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
          object QRLabel145: TQRLabel
            Left = 321
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              849.312500000000000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'XS'
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
          object QRLabel137: TQRLabel
            Left = 341
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              902.229166666666700000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '15'
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
          object QRLabel139: TQRLabel
            Left = 341
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              902.229166666666700000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'S'
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
          object QRLabel146: TQRLabel
            Left = 361
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              955.145833333333300000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '16'
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
          object QRLabel147: TQRLabel
            Left = 361
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              955.145833333333300000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'M'
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
          object QRLabel148: TQRLabel
            Left = 422
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1116.541666666667000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '0'
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
          object QRLabel149: TQRLabel
            Left = 402
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1063.625000000000000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'XL'
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
          object QRLabel150: TQRLabel
            Left = 382
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1010.708333333333000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'L'
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
          object QRLabel151: TQRLabel
            Left = 382
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1010.708333333333000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '17'
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
          object QRLabel152: TQRLabel
            Left = 402
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1063.625000000000000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '18'
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
          object QRLabel153: TQRLabel
            Left = 422
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1116.541666666667000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '19'
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
          object QRLabel154: TQRLabel
            Left = 544
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1439.333333333333000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '3'
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
          object QRLabel155: TQRLabel
            Left = 524
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1386.416666666667000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #189
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
          object QRLabel156: TQRLabel
            Left = 504
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1333.500000000000000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '2'
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
          object QRLabel157: TQRLabel
            Left = 504
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1333.500000000000000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '23'
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
          object QRLabel158: TQRLabel
            Left = 524
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1386.416666666667000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '24'
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
          object QRLabel159: TQRLabel
            Left = 544
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1439.333333333333000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '25'
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
          object QRLabel160: TQRLabel
            Left = 483
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1277.937500000000000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '22'
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
          object QRLabel161: TQRLabel
            Left = 483
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1277.937500000000000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #189
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
          object QRLabel162: TQRLabel
            Left = 463
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1225.020833333333000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '1'
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
          object QRLabel163: TQRLabel
            Left = 463
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1225.020833333333000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '21'
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
          object QRLabel164: TQRLabel
            Left = 443
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1172.104166666667000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '20'
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
          object QRLabel165: TQRLabel
            Left = 443
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1172.104166666667000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #189
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
          object QRLabel166: TQRLabel
            Left = 565
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1494.895833333333000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '26'
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
          object QRLabel167: TQRLabel
            Left = 565
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1494.895833333333000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #189
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
          object QRLabel168: TQRLabel
            Left = 585
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1547.812500000000000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '27'
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
          object QRLabel169: TQRLabel
            Left = 585
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1547.812500000000000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '4'
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
          object QRLabel170: TQRLabel
            Left = 605
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1600.729166666667000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '28'
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
          object QRLabel171: TQRLabel
            Left = 605
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1600.729166666667000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #189
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
          object QRLabel172: TQRLabel
            Left = 667
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1764.770833333333000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '6'
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
          object QRLabel173: TQRLabel
            Left = 646
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1709.208333333333000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #189
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
          object QRLabel174: TQRLabel
            Left = 626
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1656.291666666667000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '5'
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
          object QRLabel175: TQRLabel
            Left = 626
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1656.291666666667000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '29'
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
          object QRLabel176: TQRLabel
            Left = 646
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1709.208333333333000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '30'
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
          object QRLabel177: TQRLabel
            Left = 667
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1764.770833333333000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '31'
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
          object QRLabel178: TQRLabel
            Left = 789
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2087.562500000000000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '9'
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
          object QRLabel179: TQRLabel
            Left = 768
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2032.000000000000000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #189
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
          object QRLabel180: TQRLabel
            Left = 748
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1979.083333333333000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '8'
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
          object QRLabel181: TQRLabel
            Left = 748
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1979.083333333333000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '35'
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
          object QRLabel182: TQRLabel
            Left = 768
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2032.000000000000000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '36'
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
          object QRLabel183: TQRLabel
            Left = 789
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2087.562500000000000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '37'
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
          object QRLabel184: TQRLabel
            Left = 728
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1926.166666666667000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '34'
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
          object QRLabel185: TQRLabel
            Left = 728
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1926.166666666667000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #189
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
          object QRLabel186: TQRLabel
            Left = 707
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1870.604166666667000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '7'
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
          object QRLabel187: TQRLabel
            Left = 707
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1870.604166666667000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '33'
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
          object QRLabel188: TQRLabel
            Left = 687
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1817.687500000000000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '32'
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
          object QRLabel189: TQRLabel
            Left = 687
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1817.687500000000000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #189
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
          object QRLabel190: TQRLabel
            Left = 809
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2140.479166666667000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '38'
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
          object QRLabel191: TQRLabel
            Left = 809
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2140.479166666667000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #189
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
          object QRLabel192: TQRLabel
            Left = 829
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2193.395833333333000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '39'
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
          object QRLabel193: TQRLabel
            Left = 829
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2193.395833333333000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '10'
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
          object QRLabel194: TQRLabel
            Left = 850
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2248.958333333333000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '40'
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
          object QRLabel195: TQRLabel
            Left = 850
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2248.958333333333000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #189
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
          object QRLabel196: TQRLabel
            Left = 911
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2410.354166666667000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '12'
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
          object QRLabel197: TQRLabel
            Left = 890
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2354.791666666667000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #189
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
          object QRLabel198: TQRLabel
            Left = 870
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2301.875000000000000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '11'
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
          object QRLabel199: TQRLabel
            Left = 870
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2301.875000000000000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '41'
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
          object QRLabel200: TQRLabel
            Left = 890
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2354.791666666667000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '42'
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
          object QRLabel201: TQRLabel
            Left = 911
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2410.354166666667000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '43'
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
          object QRLabel208: TQRLabel
            Left = 972
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2571.750000000000000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '46'
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
          object QRLabel209: TQRLabel
            Left = 972
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2571.750000000000000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #189
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
          object QRLabel210: TQRLabel
            Left = 951
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2516.187500000000000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '13'
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
          object QRLabel211: TQRLabel
            Left = 951
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2516.187500000000000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '45'
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
          object QRLabel212: TQRLabel
            Left = 931
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2463.270833333333000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '44'
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
          object QRLabel213: TQRLabel
            Left = 931
            Top = 17
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2463.270833333333000000
              44.979166666666670000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = #189
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
          object QRLabel205: TQRLabel
            Left = 992
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2624.666666666667000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '47'
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
          object QRLabel206: TQRLabel
            Left = 1013
            Top = 1
            Width = 17
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2680.229166666667000000
              2.645833333333333000
              44.979166666666670000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = '48'
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
        object QRBand26: TQRBand
          Tag = 99
          Left = 19
          Top = 304
          Width = 1085
          Height = 91
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            240.770833333333300000
            2870.729166666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel141: TQRLabel
            Left = 326
            Top = 59
            Width = 200
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Style = psDash
            Size.Values = (
              37.041666666666670000
              862.541666666666700000
              156.104166666666700000
              529.166666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Firma'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel142: TQRLabel
            Left = 558
            Top = 59
            Width = 200
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Style = psDash
            Size.Values = (
              37.041666666666670000
              1476.375000000000000000
              156.104166666666700000
              529.166666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Aclaraci'#243'n'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel143: TQRLabel
            Left = 778
            Top = 3
            Width = 304
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2058.458333333333000000
              7.937500000000000000
              804.333333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'QRlblNotaPedido_CantidadTotal'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRBand27: TQRBand
          Tag = 99
          Left = 19
          Top = 395
          Width = 1085
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            2870.729166666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLabel144: TQRLabel
            Left = 4
            Top = 3
            Width = 126
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              10.583333333333330000
              7.937500000000000000
              333.375000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRlblNotaPedido_PiePagina'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
        end
        object QRSubDetail6: TQRSubDetail
          Tag = 99
          Left = 19
          Top = 287
          Width = 1085
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            44.979166666666670000
            2870.729166666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Master = QuickRep1
          DataSet = ZQ_Producto
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText100: TQRDBText
            Left = 83
            Top = 1
            Width = 234
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              219.604166666666700000
              2.645833333333333000
              619.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'PRODUCTO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText103: TQRDBText
            Left = 1036
            Top = 1
            Width = 45
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              2741.083333333333000000
              2.645833333333333000
              119.062500000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'CANTIDAD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText104: TQRDBText
            Left = 3
            Top = 1
            Width = 76
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              7.937500000000000000
              2.645833333333333000
              201.083333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Producto
            DataField = 'CODIGO_BARRA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'RECIBO CTA CTE'
      ImageIndex = 5
      object RepReciboCtaCte: TQuickRep
        Tag = 99
        Left = 113
        Top = 26
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Font.Charset = DEFAULT_CHARSET
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
        Page.Orientation = poPortrait
        Page.PaperSize = A4
        Page.Values = (
          100.000000000000000000
          2970.000000000000000000
          100.000000000000000000
          2100.000000000000000000
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
        SnapToGrid = True
        Units = MM
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        object QRBand28: TQRBand
          Tag = 99
          Left = 38
          Top = 38
          Width = 718
          Height = 98
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            259.291666666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object RepReciboCtaCte_RENGLON4: TQRLabel
            Left = 112
            Top = 71
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              187.854166666666700000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepReciboCtaCte_RENGLON4'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepReciboCtaCte_RENGLON3: TQRLabel
            Left = 112
            Top = 58
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              153.458333333333300000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepReciboCtaCte_RENGLON3'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object RepReciboCtaCte_RENGLON2: TQRLabel
            Left = 112
            Top = 45
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              119.062500000000000000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepReciboCtaCte_RENGLON2'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText101: TQRDBText
            Left = 477
            Top = 63
            Width = 236
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1262.062500000000000000
              166.687500000000000000
              624.416666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_FPagoCtaCte
            DataField = 'FECHA_FP'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object RepReciboCtaCte_TITULO: TQRLabel
            Left = 112
            Top = 9
            Width = 280
            Height = 24
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              63.500000000000000000
              296.333333333333400000
              23.812500000000000000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepReciboCtaCte_TITULO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 14
          end
          object QRShape6: TQRShape
            Left = 406
            Top = 0
            Width = 9
            Height = 97
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              256.645833333333400000
              1074.208333333333000000
              0.000000000000000000
              23.812500000000000000)
            Shape = qrsVertLine
            VertAdjust = 0
          end
          object QRLabel218: TQRLabel
            Left = 425
            Top = 63
            Width = 50
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1124.479166666667000000
              166.687500000000000000
              132.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object RepReciboCtaCte_RENGLON1: TQRLabel
            Left = 112
            Top = 32
            Width = 280
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              296.333333333333400000
              84.666666666666680000
              740.833333333333400000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RepReciboCtaCte_RENGLON1'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBImage6: TQRDBImage
            Left = 24
            Top = 11
            Width = 64
            Height = 64
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              169.333333333333300000
              63.500000000000000000
              29.104166666666670000
              169.333333333333300000)
            DataField = 'LOGO'
            Stretch = True
          end
          object QRLabel216: TQRLabel
            Left = 441
            Top = 4
            Width = 249
            Height = 29
            Frame.Color = clGray
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              76.729166666666680000
              1166.812500000000000000
              10.583333333333330000
              658.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'RECIBO DE PAGO'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -23
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 17
          end
          object QRLabel242: TQRLabel
            Left = 441
            Top = 28
            Width = 249
            Height = 29
            Frame.Color = clGray
            Frame.DrawTop = False
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              76.729166666666680000
              1166.812500000000000000
              74.083333333333340000
              658.812500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'CTA. CORRIENTE'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clGray
            Font.Height = -23
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 17
          end
          object QRLabel217: TQRLabel
            Left = 455
            Top = 83
            Width = 234
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1203.854166666667000000
              219.604166666666700000
              619.125000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'DOCUMENTO NO VALIDO COMO FACTURA'
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
        end
        object QRBand29: TQRBand
          Left = 38
          Top = 136
          Width = 718
          Height = 92
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            243.416666666666700000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel221: TQRLabel
            Left = 5
            Top = 77
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              203.729166666666700000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Tipo Iva:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel222: TQRLabel
            Left = 309
            Top = 77
            Width = 62
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              817.562500000000000000
              203.729166666666700000
              164.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Cuit/Cuil:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel223: TQRLabel
            Left = 5
            Top = 60
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              158.750000000000000000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'C'#243'digo Postal:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel224: TQRLabel
            Left = 5
            Top = 43
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              113.770833333333300000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Domicilio:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel225: TQRLabel
            Left = 505
            Top = 60
            Width = 66
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1336.145833333333000000
              158.750000000000000000
              174.625000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Provincia:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel226: TQRLabel
            Left = 195
            Top = 60
            Width = 67
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              515.937500000000000000
              158.750000000000000000
              177.270833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Localidad:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel227: TQRLabel
            Left = 5
            Top = 26
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              68.791666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Entidad:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText106: TQRDBText
            Left = 117
            Top = 77
            Width = 179
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              203.729166666666700000
              473.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'TIPO_IVA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText107: TQRDBText
            Left = 374
            Top = 77
            Width = 339
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              989.541666666666700000
              203.729166666666700000
              896.937500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'CUIT_CUIL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText108: TQRDBText
            Left = 117
            Top = 60
            Width = 60
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              158.750000000000000000
              158.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'CODIGO_POSTAL'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText109: TQRDBText
            Left = 117
            Top = 43
            Width = 337
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              113.770833333333300000
              891.645833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'DIRECCION'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText110: TQRDBText
            Left = 117
            Top = 26
            Width = 591
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              68.791666666666670000
              1563.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'NOMBRE'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText111: TQRDBText
            Left = 574
            Top = 37
            Width = 139
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1518.708333333333000000
              97.895833333333330000
              367.770833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'PROVINCIA'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRDBText112: TQRDBText
            Left = 264
            Top = 60
            Width = 227
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              698.500000000000000000
              158.750000000000000000
              600.604166666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Destino
            DataField = 'LOCALIDAD'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel228: TQRLabel
            Left = 5
            Top = 2
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              5.291666666666667000
              291.041666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Recibi de:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRChildBand8: TQRChildBand
          Left = 38
          Top = 228
          Width = 718
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            71.437500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = QRBand29
          PrintOrder = cboAfterParent
          object QRLabel229: TQRLabel
            Left = 5
            Top = 8
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              21.166666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'El monto de:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLblReciboCtaCte_ImporteEnLetras: TQRLabel
            Left = 117
            Top = 8
            Width = 591
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              21.166666666666670000
              1563.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Caption = 'QRLblReciboCtaCte_ImporteEnLetras'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRBand30: TQRBand
          Left = 38
          Top = 255
          Width = 718
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            71.437500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRLabel231: TQRLabel
            Left = 5
            Top = 8
            Width = 110
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              21.166666666666670000
              291.041666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'En concepto de:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLblReciboCtaCte_ConceptoPago: TQRLabel
            Left = 117
            Top = 8
            Width = 591
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              309.562500000000000000
              21.166666666666670000
              1563.687500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = True
            Caption = 'QRLblReciboCtaCte_ConceptoPago'
            Color = clWhite
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRChildBand9: TQRChildBand
          Left = 38
          Top = 282
          Width = 718
          Height = 33
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            87.312500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = QRBand30
          PrintOrder = cboAfterParent
          object QRLabel232: TQRLabel
            Left = 5
            Top = 16
            Width = 124
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              42.333333333333330000
              328.083333333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Forma de Pago:'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRSubDetail7: TQRSubDetail
          Left = 38
          Top = 332
          Width = 718
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Master = RepReciboCtaCte
          DataSet = ZQ_Fpago
          PrintBefore = False
          PrintIfEmpty = True
          object QRDBText114: TQRDBText
            Left = 2
            Top = 2
            Width = 295
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              5.291666666666667000
              5.291666666666667000
              780.520833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_FPagoCtaCte
            DataField = 'CTA_INGRESO'
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
          object QRDBText115: TQRDBText
            Left = 303
            Top = 2
            Width = 116
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              801.687500000000000000
              5.291666666666667000
              306.916666666666700000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_FPagoCtaCte
            DataField = 'NOMBRE_TIPO'
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
          object QRDBText116: TQRDBText
            Left = 424
            Top = 2
            Width = 83
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1121.833333333333000000
              5.291666666666667000
              219.604166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_FPagoCtaCte
            DataField = 'MDCP_FECHA'
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
          object QRDBText117: TQRDBText
            Left = 512
            Top = 2
            Width = 115
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1354.666666666667000000
              5.291666666666667000
              304.270833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_FPagoCtaCte
            DataField = 'MDCP_CHEQUE'
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
          object QRDBText118: TQRDBText
            Left = 630
            Top = 2
            Width = 83
            Height = 13
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              34.395833333333330000
              1666.875000000000000000
              5.291666666666667000
              219.604166666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_FPagoCtaCte
            DataField = 'IMPORTE'
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
        end
        object QRBand31: TQRBand
          Left = 38
          Top = 350
          Width = 718
          Height = 150
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            396.875000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRLabel233: TQRLabel
            Left = 78
            Top = 100
            Width = 250
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Style = psDash
            Size.Values = (
              37.041666666666670000
              206.375000000000000000
              264.583333333333300000
              661.458333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Firma'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel234: TQRLabel
            Left = 390
            Top = 100
            Width = 250
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Frame.Style = psDash
            Size.Values = (
              37.041666666666670000
              1031.875000000000000000
              264.583333333333300000
              661.458333333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Aclaraci'#243'n'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
          object QRlblReciboCtaCte_ImporteTotal: TQRLabel
            Left = 408
            Top = 3
            Width = 304
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1079.500000000000000000
              7.937500000000000000
              804.333333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'QRlblReciboCtaCte_ImporteTotal'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 8
          end
        end
        object QRBand32: TQRBand
          Left = 38
          Top = 500
          Width = 718
          Height = 24
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            63.500000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRlblReciboCtaCte_PiePagina: TQRLabel
            Left = 4
            Top = 3
            Width = 135
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              10.583333333333330000
              7.937500000000000000
              357.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRlblReciboCtaCte_PiePagina'
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsItalic]
            ParentFont = False
            Transparent = True
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
        end
        object QRChildBand10: TQRChildBand
          Left = 38
          Top = 315
          Width = 718
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = True
          Frame.DrawRight = True
          AlignToBottom = False
          Color = clSilver
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            44.979166666666670000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          ParentBand = QRChildBand9
          PrintOrder = cboAfterParent
          object QRLabel237: TQRLabel
            Left = 652
            Top = 1
            Width = 61
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1725.083333333333000000
              2.645833333333333000
              161.395833333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Importe'
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
          object QRLabel238: TQRLabel
            Left = 512
            Top = 1
            Width = 115
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1354.666666666667000000
              2.645833333333333000
              304.270833333333300000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Nro. Medio'
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
          object QRLabel239: TQRLabel
            Left = 424
            Top = 1
            Width = 83
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1121.833333333333000000
              2.645833333333333000
              219.604166666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Fecha Medio'
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
          object QRLabel240: TQRLabel
            Left = 303
            Top = 1
            Width = 39
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              801.687500000000000000
              2.645833333333333000
              103.187500000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Medio'
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
          object QRLabel241: TQRLabel
            Left = 2
            Top = 1
            Width = 87
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              5.291666666666667000
              2.645833333333333000
              230.187500000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Cuenta'
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
    end
  end
  object ZQ_Fpago: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select cpbf.*, tipo.descripcion as nombre_tipo,'
      
        '       egr.codigo as cta_egreso_codigo, egr.nombre_cuenta as cta' +
        '_egreso,'
      
        '       ing.codigo as cta_ingreso_codigo, ing.nombre_cuenta as ct' +
        'a_ingreso'
      'from comprobante_forma_pago cpbf'
      
        'left join tipo_formapago tipo on (cpbf.id_tipo_formapag = tipo.i' +
        'd_tipo_formapago)'
      'left join cuenta egr on (cpbf.cuenta_egreso  = egr.id_cuenta)'
      'left join cuenta ing on (cpbf.cuenta_ingreso = ing.id_cuenta)'
      'where cpbf.id_comprobante = :id_comprobante')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 41
    Top = 172
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_FpagoID_COMPROB_FP: TIntegerField
      FieldName = 'ID_COMPROB_FP'
    end
    object ZQ_FpagoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_FpagoID_TIPO_FORMAPAG: TIntegerField
      FieldName = 'ID_TIPO_FORMAPAG'
    end
    object ZQ_FpagoMDCP_FECHA: TDateField
      FieldName = 'MDCP_FECHA'
    end
    object ZQ_FpagoMDCP_BANCO: TStringField
      FieldName = 'MDCP_BANCO'
      Size = 50
    end
    object ZQ_FpagoMDCP_CHEQUE: TStringField
      FieldName = 'MDCP_CHEQUE'
      Size = 50
    end
    object ZQ_FpagoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object ZQ_FpagoCONCILIADO: TDateField
      FieldName = 'CONCILIADO'
    end
    object ZQ_FpagoCUENTA_INGRESO: TIntegerField
      FieldName = 'CUENTA_INGRESO'
    end
    object ZQ_FpagoCUENTA_EGRESO: TIntegerField
      FieldName = 'CUENTA_EGRESO'
    end
    object ZQ_FpagoCTA_EGRESO_CODIGO: TStringField
      FieldName = 'CTA_EGRESO_CODIGO'
      Size = 10
    end
    object ZQ_FpagoCTA_EGRESO: TStringField
      FieldName = 'CTA_EGRESO'
      Size = 50
    end
    object ZQ_FpagoCTA_INGRESO_CODIGO: TStringField
      FieldName = 'CTA_INGRESO_CODIGO'
      Size = 10
    end
    object ZQ_FpagoCTA_INGRESO: TStringField
      FieldName = 'CTA_INGRESO'
      Size = 50
    end
    object ZQ_FpagoNOMBRE_TIPO: TStringField
      FieldName = 'NOMBRE_TIPO'
      Size = 50
    end
  end
  object ZQ_Producto: TZQuery
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
    Left = 41
    Top = 115
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_ProductoID_COMPROBANTE_DETALLE: TIntegerField
      FieldName = 'ID_COMPROBANTE_DETALLE'
    end
    object ZQ_ProductoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_ProductoID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
    end
    object ZQ_ProductoDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 200
    end
    object ZQ_ProductoCANTIDAD: TFloatField
      FieldName = 'CANTIDAD'
    end
    object ZQ_ProductoIMPORTE_FINAL: TFloatField
      FieldName = 'IMPORTE_FINAL'
      currency = True
    end
    object ZQ_ProductoPORC_DESCUENTO: TFloatField
      FieldName = 'PORC_DESCUENTO'
    end
    object ZQ_ProductoBASE_IMPONIBLE: TFloatField
      FieldName = 'BASE_IMPONIBLE'
      currency = True
    end
    object ZQ_ProductoIMPORTE_UNITARIO: TFloatField
      FieldName = 'IMPORTE_UNITARIO'
      currency = True
    end
    object ZQ_ProductoIMPUESTO_INTERNO: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
    end
    object ZQ_ProductoPORC_IVA: TFloatField
      FieldName = 'PORC_IVA'
    end
    object ZQ_ProductoCOD_CABECERA: TStringField
      FieldName = 'COD_CABECERA'
    end
    object ZQ_ProductoPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Size = 100
    end
    object ZQ_ProductoIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object ZQ_ProductoMEDIDA: TStringField
      FieldName = 'MEDIDA'
      Size = 30
    end
    object ZQ_ProductoCOLOR: TStringField
      FieldName = 'COLOR'
      Size = 30
    end
    object ZQ_ProductoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object ZQ_ProductoARTICULO: TStringField
      FieldName = 'ARTICULO'
      Size = 200
    end
    object ZQ_ProductoTIPO_ARTICULO: TStringField
      FieldName = 'TIPO_ARTICULO'
      Size = 200
    end
    object ZQ_ProductoCOD_PRODUCTO: TStringField
      FieldName = 'COD_PRODUCTO'
    end
    object ZQ_ProductoCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 40
    end
    object ZQ_ProductoPRECIO_COSTO: TFloatField
      FieldName = 'PRECIO_COSTO'
    end
    object ZQ_ProductoPRECIO_VENTA: TFloatField
      FieldName = 'PRECIO_VENTA'
    end
    object ZQ_ProductoCOEF_GANANCIA: TFloatField
      FieldName = 'COEF_GANANCIA'
    end
    object ZQ_ProductoCOEF_DESCUENTO: TFloatField
      FieldName = 'COEF_DESCUENTO'
    end
    object ZQ_ProductoIMPUESTO_INTERNO_1: TFloatField
      FieldName = 'IMPUESTO_INTERNO_1'
    end
    object ZQ_ProductoIMPUESTO_IVA: TFloatField
      FieldName = 'IMPUESTO_IVA'
    end
  end
  object ZQ_Comprobante: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select  cpb.*, suc.nombre as sucursal, ven.nombre as vendedor,'
      '        tcpb.nombre_tipo_cpb, est.descripcion as estado'
      'from comprobante cpb'
      'left join sucursal suc on (cpb.id_sucursal = suc.id_sucursal)'
      'left join persona ven on (cpb.id_vendedor = ven.id_persona)'
      
        'left join tipo_comprobante tcpb on (cpb.id_tipo_cpb = tcpb.id_ti' +
        'po_cpb)'
      
        'left join comprobante_estado est on (cpb.id_comp_estado = est.id' +
        '_comp_estado)'
      'where cpb.id_comprobante = :id_comprobante')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 42
    Top = 62
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
    object ZQ_ComprobanteSUCURSAL: TStringField
      FieldName = 'SUCURSAL'
      Size = 200
    end
    object ZQ_ComprobanteVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 200
    end
    object ZQ_ComprobanteNOMBRE_TIPO_CPB: TStringField
      FieldName = 'NOMBRE_TIPO_CPB'
      Size = 50
    end
    object ZQ_ComprobanteESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 50
    end
  end
  object ZQ_Destino: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from VER_DESTINO_COMPROBANTE(:ID_PERSONA, :ID_EMPRESA)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_PERSONA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_EMPRESA'
        ParamType = ptUnknown
      end>
    Left = 41
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PERSONA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_EMPRESA'
        ParamType = ptUnknown
      end>
    object ZQ_DestinoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_DestinoDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 200
    end
    object ZQ_DestinoCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
    end
    object ZQ_DestinoLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 200
    end
    object ZQ_DestinoPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      Size = 50
    end
    object ZQ_DestinoTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
    end
    object ZQ_DestinoNUMERO_DOCUMENTO: TStringField
      FieldName = 'NUMERO_DOCUMENTO'
      Size = 50
    end
    object ZQ_DestinoTIPO_IVA: TStringField
      FieldName = 'TIPO_IVA'
      Size = 50
    end
    object ZQ_DestinoCUIT_CUIL: TStringField
      FieldName = 'CUIT_CUIL'
      Size = 30
    end
  end
  object EKDbSumaFpago: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'IMPORTE'
      end>
    DataSet = ZQ_Fpago
    Left = 43
    Top = 333
  end
  object EKNumeroALetras: TEKNumeroALetras
    Separador = ','
    Moneda = 'PESOS'
    Centavos = 'CENTAVOS'
    Left = 44
    Top = 384
  end
  object EKDbSumaProducto: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'CANTIDAD'
      end
      item
        Operacion = goSum
        NombreCampo = 'IMPORTE_FINAL'
      end>
    DataSet = ZQ_Producto
    Left = 44
    Top = 440
  end
  object EKVistaPrevia: TEKVistaPreviaQR
    ShowModal = False
    Left = 44
    Top = 280
  end
  object ZQ_FPagoCtaCte: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select cpbf.*, tipo.descripcion as nombre_tipo,'
      
        '       egr.codigo as cta_egreso_codigo, egr.nombre_cuenta as cta' +
        '_egreso,'
      
        '       ing.codigo as cta_ingreso_codigo, ing.nombre_cuenta as ct' +
        'a_ingreso'
      'from comprobante_forma_pago cpbf'
      
        'left join tipo_formapago tipo on (cpbf.id_tipo_formapag = tipo.i' +
        'd_tipo_formapago)'
      'left join cuenta egr on (cpbf.cuenta_egreso  = egr.id_cuenta)'
      'left join cuenta ing on (cpbf.cuenta_ingreso = ing.id_cuenta)'
      'where cpbf.id_comprob_fp = :id_forma_pago')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_forma_pago'
        ParamType = ptUnknown
      end>
    Left = 907
    Top = 29
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_forma_pago'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID_COMPROB_FP'
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_TIPO_FORMAPAG'
    end
    object DateField1: TDateField
      FieldName = 'MDCP_FECHA'
    end
    object StringField1: TStringField
      FieldName = 'MDCP_BANCO'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'MDCP_CHEQUE'
      Size = 50
    end
    object FloatField1: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object DateField2: TDateField
      FieldName = 'CONCILIADO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'CUENTA_INGRESO'
    end
    object IntegerField5: TIntegerField
      FieldName = 'CUENTA_EGRESO'
    end
    object StringField3: TStringField
      FieldName = 'CTA_EGRESO_CODIGO'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'CTA_EGRESO'
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'CTA_INGRESO_CODIGO'
      Size = 10
    end
    object StringField6: TStringField
      FieldName = 'CTA_INGRESO'
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'NOMBRE_TIPO'
      Size = 50
    end
    object ZQ_FPagoCtaCteFECHA_FP: TDateTimeField
      FieldName = 'FECHA_FP'
    end
  end
  object EKDbSumaFPagoCtaCte: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'IMPORTE'
      end>
    DataSet = ZQ_FPagoCtaCte
    Left = 907
    Top = 85
  end
end
