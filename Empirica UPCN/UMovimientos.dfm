object FMovimientos: TFMovimientos
  Left = 120
  Top = 112
  Width = 1143
  Height = 758
  Caption = 'Movimientos'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PContenedor: TPanel
    Left = 0
    Top = 0
    Width = 989
    Height = 668
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      989
      668)
    object QR_OrdenPago: TQuickRep
      Tag = 99
      Left = 113
      Top = 7
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
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrintIfEmpty = True
      ReportTitle = 'Orden de Pago'
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      object QRBand13: TQRBand
        Tag = 99
        Left = 38
        Top = 150
        Width = 718
        Height = 122
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          322.791666666666700000
          1899.708333333333000000)
        BandType = rbDetail
        object QRDBText30: TQRDBText
          Left = 97
          Top = 41
          Width = 361
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            256.645833333333300000
            108.479166666666700000
            955.145833333333200000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedores
          DataField = 'NOMBRE_FANTASIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel17: TQRLabel
          Left = 9
          Top = 41
          Width = 85
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            23.812500000000000000
            108.479166666666700000
            224.895833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Destinatario:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel10: TQRLabel
          Left = 29
          Top = 59
          Width = 65
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            76.729166666666670000
            156.104166666666700000
            171.979166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
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
          FontSize = 8
        end
        object QRDBText41: TQRDBText
          Left = 97
          Top = 59
          Width = 362
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            256.645833333333300000
            156.104166666666700000
            957.791666666666800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedores
          DataField = 'DIRECCION'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText46: TQRDBText
          Left = 177
          Top = 77
          Width = 247
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            468.312500000000000000
            203.729166666666700000
            653.520833333333200000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedores
          DataField = 'NRO_DOCUMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText63: TQRDBText
          Left = 97
          Top = 77
          Width = 72
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            256.645833333333300000
            203.729166666666700000
            190.500000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedores
          DataField = 'TIPO_DOCUMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel12: TQRLabel
          Left = 16
          Top = 77
          Width = 78
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            42.333333333333330000
            203.729166666666700000
            206.375000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Documento:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel1: TQRLabel
          Left = 44
          Top = 22
          Width = 50
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            116.416666666666700000
            58.208333333333330000
            132.291666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cuenta:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText1: TQRDBText
          Left = 97
          Top = 22
          Width = 304
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            256.645833333333300000
            58.208333333333320000
            804.333333333333200000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuentas
          DataField = 'NOMBRE_CUENTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRShape1: TQRShape
          Left = 0
          Top = 36
          Width = 718
          Height = 5
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            13.229166666666670000
            0.000000000000000000
            95.250000000000000000
            1899.708333333333000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRDBText3: TQRDBText
          Left = 520
          Top = 22
          Width = 193
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1375.833333333333000000
            58.208333333333320000
            510.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuentas
          DataField = 'NRO_CUENTA_BANCARIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel2: TQRLabel
          Left = 405
          Top = 22
          Width = 110
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1071.562500000000000000
            58.208333333333320000
            291.041666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'N'#250'mero Cuenta:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRShape3: TQRShape
          Left = 0
          Top = 92
          Width = 718
          Height = 5
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            13.229166666666670000
            0.000000000000000000
            243.794642857142900000
            1899.330357142857000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRDBText15: TQRDBText
          Left = 97
          Top = 101
          Width = 572
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            256.645833333333300000
            267.229166666666700000
            1513.416666666667000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Conceptos
          DataField = 'NOMBRE_CONCEPTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel3: TQRLabel
          Left = 29
          Top = 101
          Width = 65
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            76.729166666666670000
            267.229166666666700000
            171.979166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Concepto:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel6: TQRLabel
          Left = 327
          Top = 3
          Width = 82
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            865.187500000000000000
            7.937500000000000000
            216.958333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Factura Nro:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText2: TQRDBText
          Left = 412
          Top = 3
          Width = 99
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1090.083333333333000000
            7.937500000000000000
            261.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'NRO_FACTURA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel7: TQRLabel
          Left = 526
          Top = 3
          Width = 75
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1391.708333333333000000
            7.937500000000000000
            198.437500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Recibo Nro:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText4: TQRDBText
          Left = 604
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
            1598.083333333333000000
            7.937500000000000000
            291.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'NRO_RECIBO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRShape15: TQRShape
          Left = 0
          Top = 17
          Width = 718
          Height = 5
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            13.229166666666670000
            0.000000000000000000
            44.979166666666670000
            1899.708333333333000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRShape16: TQRShape
          Left = 525
          Top = 39
          Width = 1
          Height = 56
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            147.174479166666700000
            1389.062500000000000000
            102.526041666666700000
            1.653645833333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object qrtImporteTotal: TQRLabel
          Left = 530
          Top = 57
          Width = 183
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.955729166666670000
            1402.291666666667000000
            150.481770833333300000
            484.518229166666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'QrtImporteFPago'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object QRBand14: TQRBand
        Tag = 99
        Left = 38
        Top = 38
        Width = 718
        Height = 112
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          296.333333333333300000
          1899.708333333333000000)
        BandType = rbPageHeader
        object QRDBText65: TQRDBText
          Left = 512
          Top = 94
          Width = 196
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1354.666666666667000000
            248.708333333333300000
            518.583333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'FECHA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRShape2: TQRShape
          Left = 406
          Top = 0
          Width = 9
          Height = 111
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            293.687500000000000000
            1074.208333333333000000
            0.000000000000000000
            23.812500000000000000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRLabel94: TQRLabel
          Left = 421
          Top = 3
          Width = 50
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1113.895833333333000000
            7.937500000000000000
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
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRLabel95: TQRLabel
          Left = 421
          Top = 94
          Width = 86
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1113.895833333333000000
            248.708333333333300000
            227.541666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Fecha Emisi'#243'n::'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBText66: TQRDBText
          Left = 424
          Top = 22
          Width = 281
          Height = 67
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            177.270833333333300000
            1121.833333333333000000
            58.208333333333320000
            743.479166666666800000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'NRO_ORDEN_STRING'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -48
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 36
        end
        object QRLabel102: TQRLabel
          Left = 82
          Top = 24
          Width = 249
          Height = 36
          Frame.Color = clGray
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            95.250000000000000000
            216.958333333333300000
            63.500000000000000000
            658.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'ORDEN DE'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -29
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 22
        end
        object QRLabel106: TQRLabel
          Left = 82
          Top = 56
          Width = 249
          Height = 36
          Frame.Color = clGray
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            95.250000000000000000
            216.958333333333300000
            148.166666666666700000
            658.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'PAGO'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -29
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 22
        end
        object QRLabelImpresion: TQRLabel
          Left = 576
          Top = 3
          Width = 132
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1524.000000000000000000
            7.937500000000000000
            349.250000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo De Impresion'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
      object QRSubDetail14: TQRSubDetail
        Tag = 99
        Left = 38
        Top = 272
        Width = 718
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          47.625000000000000000
          1899.708333333333000000)
        Master = QR_OrdenPago
        PrintBefore = False
        PrintIfEmpty = True
        object QRLabel107: TQRLabel
          Left = 3
          Top = 2
          Width = 112
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            7.937500000000000000
            5.291666666666667000
            296.333333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Forma de Pago'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
      end
      object QRChildBand8: TQRChildBand
        Tag = 99
        Left = 38
        Top = 290
        Width = 718
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clSilver
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          39.687500000000000000
          1899.708333333333000000)
        ParentBand = QRSubDetail14
        object QRLabel110: TQRLabel
          Left = 92
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
            243.416666666666700000
            2.645833333333333000
            103.187500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
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
          FontSize = 8
        end
        object QRLabel111: TQRLabel
          Left = 377
          Top = 1
          Width = 130
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            997.479166666666700000
            2.645833333333333000
            343.958333333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nro Cheque/Transf.'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel112: TQRLabel
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
          FontSize = 8
        end
        object QRLabel113: TQRLabel
          Left = 6
          Top = 1
          Width = 68
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            15.875000000000000000
            2.645833333333333000
            179.916666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'F. Emisi'#243'n'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel116: TQRLabel
          Left = 266
          Top = 1
          Width = 95
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            703.791666666666800000
            2.645833333333333000
            251.354166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Fecha PD'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
      end
      object QRSubDetail17: TQRSubDetail
        Tag = 99
        Left = 38
        Top = 305
        Width = 718
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          47.625000000000000000
          1899.708333333333000000)
        Master = QR_OrdenPago
        DataSet = ZQ_Cuenta_Movimiento
        PrintBefore = False
        PrintIfEmpty = True
        object QRDBTextMedio: TQRDBText
          Left = 93
          Top = 2
          Width = 168
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            246.062500000000000000
            5.291666666666667000
            444.500000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuenta_Movimiento
          DataField = 'medio_de_pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBTextImporte: TQRDBText
          Left = 592
          Top = 2
          Width = 121
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            1566.333333333333000000
            5.291666666666667000
            320.145833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuenta_Movimiento
          DataField = 'IMPORTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBTextFechaE: TQRDBText
          Left = 2
          Top = 2
          Width = 87
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
            230.187500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuenta_Movimiento
          DataField = 'FECHA_MDC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBTextNroCheque: TQRDBText
          Left = 376
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
            994.833333333333200000
            5.291666666666667000
            304.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuenta_Movimiento
          DataField = 'NRO_CHEQUE_TRANSF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBTextFechaCMD: TQRDBText
          Left = 266
          Top = 2
          Width = 95
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            703.791666666666800000
            5.291666666666667000
            251.354166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuenta_Movimiento
          DataField = 'FECHA_MDC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
      end
      object QRSubDetail18: TQRSubDetail
        Tag = 99
        Left = 38
        Top = 323
        Width = 718
        Height = 217
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          574.145833333333300000
          1899.708333333333000000)
        Master = QR_OrdenPago
        PrintBefore = False
        PrintIfEmpty = True
        object QrtImporteFPago: TQRLabel
          Left = 432
          Top = 3
          Width = 281
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1143.000000000000000000
            7.937500000000000000
            743.479166666666800000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'QrtImporteFPago'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel43: TQRLabel
          Left = 14
          Top = 7
          Width = 101
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            37.041666666666670000
            18.520833333333330000
            267.229166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Observaciones:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText64: TQRDBText
          Left = 14
          Top = 23
          Width = 579
          Height = 72
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            190.500000000000000000
            37.041666666666670000
            60.854166666666680000
            1531.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'DESCRIPCION'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLblAutorizo: TQRLabel
          Left = 382
          Top = 148
          Width = 250
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Frame.Style = psDot
          Size.Values = (
            37.041666666666670000
            1010.708333333333000000
            391.583333333333300000
            661.458333333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Autorizado por:'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLblConfecciona: TQRLabel
          Left = 86
          Top = 148
          Width = 250
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Frame.Style = psDot
          Size.Values = (
            37.041666666666670000
            227.541666666666700000
            391.583333333333300000
            661.458333333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Confeccion'#243':'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
      end
      object QRBand15: TQRBand
        Tag = 99
        Left = 38
        Top = 540
        Width = 718
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        Enabled = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          42.333333333333330000
          1899.708333333333000000)
        BandType = rbPageFooter
        object QRLabel123: TQRLabel
          Left = 4
          Top = 2
          Width = 85
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            10.583333333333330000
            5.291666666666667000
            224.895833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Empirica / UPCN -'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRlblFechaHoy: TQRLabel
          Left = 91
          Top = 2
          Width = 70
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            240.770833333333300000
            5.291666666666667000
            185.208333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'QRlblFechaHoy'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
      end
    end
    object PanelImpresion: TPanel
      Left = 283
      Top = 234
      Width = 494
      Height = 281
      Anchors = []
      BevelInner = bvRaised
      BevelOuter = bvNone
      BevelWidth = 3
      BorderWidth = 3
      TabOrder = 3
      Visible = False
      DesignSize = (
        494
        281)
      object Label19: TLabel
        Left = 8
        Top = 63
        Width = 70
        Height = 13
        Caption = 'Nro Orden:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 8
        Top = 84
        Width = 80
        Height = 13
        Caption = 'Descripci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 8
        Top = 39
        Width = 73
        Height = 13
        Caption = 'Impresora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 8
        Top = 215
        Width = 59
        Height = 13
        Caption = 'Autoriza:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object nro_comprobante: TDBEdit
        Left = 86
        Top = 59
        Width = 121
        Height = 21
        Color = 16777088
        DataField = 'NRO_ORDEN_STRING'
        DataSource = DS_Movimientos
        Enabled = False
        TabOrder = 1
      end
      object DBMemo3: TDBMemo
        Left = 8
        Top = 101
        Width = 465
        Height = 105
        Anchors = [akLeft, akTop, akRight]
        DataField = 'DESCRIPCION'
        DataSource = DS_Movimientos
        TabOrder = 5
        WantTabs = True
      end
      object cBoxImpresoras: TComboBox
        Left = 86
        Top = 32
        Width = 393
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
      end
      object ori: TCheckBox
        Left = 220
        Top = 61
        Width = 51
        Height = 17
        Caption = 'Orig.'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object dup: TCheckBox
        Left = 276
        Top = 61
        Width = 57
        Height = 17
        Caption = 'Dup.'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object tri: TCheckBox
        Left = 332
        Top = 61
        Width = 57
        Height = 17
        Caption = 'Trip.'
        TabOrder = 4
      end
      object btnImprimirAceptar: TButton
        Left = 167
        Top = 240
        Width = 75
        Height = 25
        Caption = 'Aceptar'
        TabOrder = 6
        OnClick = btnImprimirAceptarClick
      end
      object btnImprimirCancelar: TButton
        Left = 263
        Top = 240
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 7
        OnClick = btnImprimirCancelarClick
      end
      object CBoxAutoriza: TComboBox
        Left = 72
        Top = 211
        Width = 405
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 8
      end
      object Panel4: TPanel
        Tag = 99
        Left = 6
        Top = 6
        Width = 482
        Height = 23
        Align = alTop
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BorderStyle = bsSingle
        Caption = 'Imprimir Orden de Pago'
        Color = 16571333
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
    end
    object RepLibroB: TQuickRep
      Tag = 99
      Left = 20
      Top = 48
      Width = 1123
      Height = 794
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = LIBRO_BANCO
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
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrintIfEmpty = True
      ReportTitle = 'Reporte de Libro Banco'
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      object QRBand5: TQRBand
        Tag = 99
        Left = 38
        Top = 38
        Width = 1047
        Height = 103
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          272.520833333333300000
          2770.187500000000000000)
        BandType = rbPageHeader
        object QRLabel41: TQRLabel
          Left = 7
          Top = 87
          Width = 61
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            18.520833333333330000
            230.187500000000000000
            161.395833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'F. Desde:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRDBImage1: TQRDBImage
          Left = 257
          Top = 14
          Width = 64
          Height = 64
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            169.333333333333300000
            679.979166666666800000
            37.041666666666670000
            169.333333333333300000)
          DataField = 'GRAFICO'
        end
        object QRLabel11: TQRLabel
          Left = 460
          Top = 60
          Width = 126
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1217.083333333333000000
            158.750000000000000000
            333.375000000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'LIBRO BANCO'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object RepLibroB_Reporte_Titulo_2: TQRLabel
          Left = 426
          Top = 36
          Width = 195
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            1127.125000000000000000
            95.250000000000000000
            515.937500000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepLibroB_Reporte_Titulo_2'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 9
        end
        object RepLibroB_Reporte_Titulo_1: TQRLabel
          Left = 395
          Top = 12
          Width = 257
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            1045.104166666667000000
            31.750000000000000000
            679.979166666666700000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepLibroB_Reporte_Titulo_1'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 12
        end
        object QRLabel8: TQRLabel
          Left = 179
          Top = 87
          Width = 58
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            473.604166666666700000
            230.187500000000000000
            153.458333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'F. Hasta:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel9: TQRLabel
          Left = 348
          Top = 87
          Width = 45
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            920.750000000000000000
            230.187500000000000000
            119.062500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Orden:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel13: TQRLabel
          Left = 515
          Top = 87
          Width = 51
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1362.604166666667000000
            230.187500000000000000
            134.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Cuenta:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object lblLibBco_FDesde: TQRLabel
          Left = 72
          Top = 87
          Width = 97
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            190.500000000000000000
            230.187500000000000000
            256.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'lblLibBco_FDesde'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object lblLibBco_FHasta: TQRLabel
          Left = 241
          Top = 87
          Width = 96
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            637.645833333333300000
            230.187500000000000000
            254.000000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'lblLibBco_FHasta'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object lblLibBco_Oden: TQRLabel
          Left = 397
          Top = 87
          Width = 86
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1050.395833333333000000
            230.187500000000000000
            227.541666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'lblLibBco_Oden'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object lblLibBco_Cuenta: TQRLabel
          Left = 570
          Top = 87
          Width = 96
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1508.125000000000000000
            230.187500000000000000
            254.000000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'lblLibBco_Cuenta'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
      end
      object QRBand6: TQRBand
        Tag = 99
        Left = 38
        Top = 157
        Width = 1047
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ForceNewColumn = False
        ForceNewPage = False
        ParentFont = False
        Size.Values = (
          37.041666666666670000
          2770.187500000000000000)
        BandType = rbDetail
        object QRDBText5: TQRDBText
          Left = 2
          Top = 0
          Width = 68
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            5.291666666666667000
            0.000000000000000000
            179.916666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'FECHA'
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRDBText8: TQRDBText
          Left = 182
          Top = 0
          Width = 79
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            481.541666666666700000
            0.000000000000000000
            209.020833333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'NRO_ORDEN_STRING'
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRDBText12: TQRDBText
          Left = 951
          Top = 0
          Width = 95
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2516.187500000000000000
            0.000000000000000000
            251.354166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'SALDO'
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRDBText13: TQRDBText
          Left = 755
          Top = 0
          Width = 95
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1997.604166666667000000
            0.000000000000000000
            251.354166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'DEBE'
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRDBText14: TQRDBText
          Left = 431
          Top = 0
          Width = 101
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1140.354166666667000000
            0.000000000000000000
            267.229166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'NRO_MEDIO'
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRDBText6: TQRDBText
          Left = 73
          Top = 0
          Width = 68
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            193.145833333333300000
            0.000000000000000000
            179.916666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'FECHA_PD'
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRDBText16: TQRDBText
          Left = 264
          Top = 0
          Width = 164
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            698.500000000000000000
            0.000000000000000000
            433.916666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'MEDIO'
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRDBText17: TQRDBText
          Left = 853
          Top = 0
          Width = 95
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2256.895833333333000000
            0.000000000000000000
            251.354166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'HABER'
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRDBTxtConciliado: TQRDBText
          Left = 143
          Top = 0
          Width = 36
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            378.354166666666700000
            0.000000000000000000
            95.250000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'CONCILIADO'
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRShape11: TQRShape
          Left = 71
          Top = 0
          Width = 1
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            187.854166666666700000
            0.000000000000000000
            2.645833333333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape5: TQRShape
          Left = 142
          Top = 0
          Width = 1
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            375.708333333333300000
            0.000000000000000000
            2.645833333333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape7: TQRShape
          Left = 429
          Top = 0
          Width = 1
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1135.062500000000000000
            0.000000000000000000
            2.645833333333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape8: TQRShape
          Left = 262
          Top = 0
          Width = 1
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            693.208333333333200000
            0.000000000000000000
            2.645833333333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape9: TQRShape
          Left = 180
          Top = 0
          Width = 1
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            476.250000000000000000
            0.000000000000000000
            2.645833333333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape10: TQRShape
          Left = 533
          Top = 0
          Width = 1
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1410.229166666667000000
            0.000000000000000000
            2.645833333333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape12: TQRShape
          Left = 753
          Top = 0
          Width = 1
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1992.312500000000000000
            0.000000000000000000
            2.645833333333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape13: TQRShape
          Left = 851
          Top = 0
          Width = 1
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2251.604166666667000000
            0.000000000000000000
            2.645833333333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape14: TQRShape
          Left = 949
          Top = 0
          Width = 1
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2510.895833333333000000
            0.000000000000000000
            2.645833333333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRDBText7: TQRDBText
          Left = 535
          Top = 0
          Width = 218
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1415.520833333333000000
            0.000000000000000000
            576.791666666666800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'PROVEEDOR'
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
      end
      object QRChildBand2: TQRChildBand
        Tag = 99
        Left = 38
        Top = 141
        Width = 1047
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clSilver
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          42.333333333333330000
          2770.187500000000000000)
        ParentBand = QRBand5
        object QRLabel18: TQRLabel
          Left = 2
          Top = 1
          Width = 68
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
            179.916666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Fecha'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel19: TQRLabel
          Left = 73
          Top = 1
          Width = 68
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            193.145833333333300000
            2.645833333333333000
            179.916666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Fecha PD'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel20: TQRLabel
          Left = 182
          Top = 1
          Width = 79
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            481.541666666666700000
            2.645833333333333000
            209.020833333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Nro Orden'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel21: TQRLabel
          Left = 816
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
            2159.000000000000000000
            2.645833333333333000
            89.958333333333320000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Debe'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel22: TQRLabel
          Left = 1008
          Top = 1
          Width = 37
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2667.000000000000000000
            2.645833333333333000
            97.895833333333320000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Saldo'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel23: TQRLabel
          Left = 431
          Top = 1
          Width = 101
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1140.354166666667000000
            2.645833333333333000
            267.229166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Nro Cheq/Tran'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel26: TQRLabel
          Left = 264
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
            698.500000000000000000
            2.645833333333333000
            103.187500000000000000)
          Alignment = taLeftJustify
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
          FontSize = 8
        end
        object QRLabel14: TQRLabel
          Left = 908
          Top = 1
          Width = 40
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2402.416666666667000000
            2.645833333333333000
            105.833333333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Haber'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel16: TQRLabel
          Left = 535
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
            1415.520833333333000000
            2.645833333333333000
            219.604166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Proveedor'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel15: TQRLabel
          Left = 143
          Top = 1
          Width = 36
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            378.354166666666700000
            2.645833333333333000
            95.250000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Conc.'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
      end
      object QRBand7: TQRBand
        Tag = 99
        Left = 38
        Top = 193
        Width = 1047
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          39.687500000000000000
          2770.187500000000000000)
        BandType = rbPageFooter
        object QRLabel35: TQRLabel
          Left = 4
          Top = 1
          Width = 53
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            10.583333333333330000
            2.645833333333333000
            140.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Empirica -'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRlblFechaHoyLibroBanco: TQRLabel
          Left = 57
          Top = 1
          Width = 120
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            150.812500000000000000
            2.645833333333333000
            317.500000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'QRlblFechaHoyLibroBanco'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRLabel24: TQRLabel
          Left = 965
          Top = 1
          Width = 39
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            2553.229166666667000000
            2.645833333333333000
            103.187500000000000000)
          Alignment = taRightJustify
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
          FontSize = 7
        end
        object QRSysData2: TQRSysData
          Left = 1006
          Top = 1
          Width = 41
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            2661.708333333333000000
            2.645833333333333000
            108.479166666666700000)
          Alignment = taRightJustify
          AlignToBand = True
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
          FontSize = 7
        end
      end
      object QRBand8: TQRBand
        Tag = 99
        Left = 38
        Top = 171
        Width = 1047
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          58.208333333333330000
          2770.187500000000000000)
        BandType = rbSummary
        object QRExpr15: TQRExpr
          Left = 6
          Top = 4
          Width = 192
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            15.875000000000000000
            10.583333333333330000
            508.000000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = #39'Cantidad de Registros: '#39'+COUNT'
          FontSize = 8
        end
      end
    end
    object PParametrosLibroBanco: TPanel
      Left = 0
      Top = 0
      Width = 989
      Height = 26
      Align = alTop
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 1
      object Label8: TLabel
        Left = 8
        Top = 8
        Width = 46
        Height = 13
        Caption = 'Cuenta:'
      end
      object Label9: TLabel
        Left = 491
        Top = 8
        Width = 78
        Height = 13
        Caption = 'Fecha Desde:'
      end
      object Label11: TLabel
        Left = 673
        Top = 8
        Width = 74
        Height = 13
        Caption = 'Fecha Hasta:'
      end
      object Label10: TLabel
        Left = 300
        Top = 7
        Width = 75
        Height = 13
        Caption = 'Ordenar por:'
      end
      object DTPFechaDesde: TDateTimePicker
        Left = 571
        Top = 4
        Width = 97
        Height = 21
        Date = 40429.660294768520000000
        Time = 40429.660294768520000000
        TabOrder = 0
      end
      object DTPFechaHasta: TDateTimePicker
        Left = 753
        Top = 4
        Width = 97
        Height = 21
        Date = 40429.660352638890000000
        Time = 40429.660352638890000000
        TabOrder = 1
      end
      object btaplicar: TButton
        Left = 856
        Top = 4
        Width = 93
        Height = 20
        Caption = 'Aplicar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btaplicarClick
      end
      object DBLCuenta: TComboBox
        Left = 60
        Top = 4
        Width = 235
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
      end
      object ComboOrden: TComboBox
        Left = 376
        Top = 4
        Width = 110
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 4
        Text = 'Fecha Emision'
        Items.Strings = (
          'Fecha Emision'
          'Fecha PD')
      end
      object Panel1: TPanel
        Left = 903
        Top = 0
        Width = 86
        Height = 26
        Align = alRight
        TabOrder = 5
        object StaticText1: TStaticText
          Left = 7
          Top = 4
          Width = 71
          Height = 17
          Align = alCustom
          Alignment = taCenter
          Anchors = [akTop, akRight]
          BorderStyle = sbsSunken
          Caption = 'Conciliado'
          Color = 10354687
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object PFiltrosColumnas: TPanel
      Tag = 99
      Left = 0
      Top = 614
      Width = 989
      Height = 54
      Align = alBottom
      BevelInner = bvLowered
      Color = 11004820
      TabOrder = 2
      Visible = False
      object BtAplicarFiltrosColumnas: TButton
        Left = 716
        Top = 14
        Width = 85
        Height = 26
        Caption = 'Aplicar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BtAplicarFiltrosColumnasClick
      end
      object CBFechaEmi: TCheckBox
        Tag = 99
        Left = 8
        Top = 8
        Width = 103
        Height = 17
        Caption = 'Fecha Emision'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CBFechaPD: TCheckBox
        Tag = 99
        Left = 112
        Top = 8
        Width = 78
        Height = 17
        Caption = 'Fecha PD'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object CBNroMov: TCheckBox
        Tag = 99
        Left = 193
        Top = 8
        Width = 111
        Height = 17
        Caption = 'Nro. Movimiento'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object CBMedio: TCheckBox
        Tag = 99
        Left = 311
        Top = 8
        Width = 62
        Height = 17
        Caption = 'Medio'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object CBNroMedio: TCheckBox
        Tag = 99
        Left = 375
        Top = 8
        Width = 81
        Height = 17
        Caption = 'Nro. Medio'
        Checked = True
        State = cbChecked
        TabOrder = 5
      end
      object CBProveedor: TCheckBox
        Tag = 99
        Left = 8
        Top = 32
        Width = 102
        Height = 17
        Caption = 'Proveedores'
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
      object CBConcepto: TCheckBox
        Tag = 99
        Left = 112
        Top = 32
        Width = 81
        Height = 17
        Caption = 'Concepto'
        Checked = True
        State = cbChecked
        TabOrder = 7
      end
      object CBNroOrden: TCheckBox
        Tag = 99
        Left = 460
        Top = 8
        Width = 81
        Height = 17
        Caption = 'Nro. Orden'
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
      object CBRecibo: TCheckBox
        Tag = 99
        Left = 193
        Top = 32
        Width = 80
        Height = 17
        Caption = 'Nro Recibo'
        Checked = True
        State = cbChecked
        TabOrder = 9
      end
      object CBNroFactura: TCheckBox
        Tag = 99
        Left = 311
        Top = 32
        Width = 88
        Height = 17
        Caption = 'Nro Factura'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
      object CBFechaConciliado: TCheckBox
        Tag = 99
        Left = 460
        Top = 32
        Width = 117
        Height = 17
        Caption = 'Fecha Conciliado'
        Checked = True
        State = cbChecked
        TabOrder = 11
      end
      object verAnulados: TCheckBox
        Tag = 99
        Left = 596
        Top = 19
        Width = 117
        Height = 17
        Caption = 'Ver Anulados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
    end
    object PIngresos: TPanel
      Left = 0
      Top = 498
      Width = 989
      Height = 116
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 5
      Visible = False
      object Label16: TLabel
        Left = 229
        Top = 36
        Width = 38
        Height = 13
        Caption = 'Medio:'
      end
      object Label18: TLabel
        Left = 10
        Top = 36
        Width = 86
        Height = 13
        Caption = 'Fecha Emisi'#243'n:'
      end
      object Label23: TLabel
        Left = 555
        Top = 36
        Width = 109
        Height = 13
        Caption = 'Nro Cheque/Transf'
      end
      object Label24: TLabel
        Left = 555
        Top = 73
        Width = 46
        Height = 13
        Caption = 'Importe'
      end
      object Label1: TLabel
        Left = 10
        Top = 75
        Width = 64
        Height = 13
        Caption = 'Proveedor:'
      end
      object Label3: TLabel
        Left = 300
        Top = 73
        Width = 54
        Height = 13
        Caption = 'Concepto'
      end
      object Label4: TLabel
        Left = 119
        Top = 36
        Width = 58
        Height = 13
        Caption = 'Fecha PD:'
      end
      object Label26: TLabel
        Left = 748
        Top = 36
        Width = 67
        Height = 13
        Caption = 'Nro Recibo:'
      end
      object DBEditIngreso_NroCheque: TDBEdit
        Left = 555
        Top = 50
        Width = 182
        Height = 21
        DataField = 'NRO_CHEQUE_TRANSF'
        DataSource = DS_Cuenta_Movimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBEditIngreso_Importe: TDBEdit
        Left = 555
        Top = 89
        Width = 182
        Height = 21
        DataField = 'IMPORTE'
        DataSource = DS_Cuenta_Movimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object DBLookupCBoxIngreso_Medio: TDBLookupComboBox
        Left = 299
        Top = 50
        Width = 246
        Height = 21
        DataField = 'ID_MEDIO'
        DataSource = DS_Cuenta_Movimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_MEDIO'
        ListField = 'NOMBRE_MEDIO_COBRO_PAGO'
        ListSource = DS_Medios_Cobro_Pago
        ParentFont = False
        TabOrder = 3
        OnExit = DBLookupCBoxIngreso_MedioExit
        OnKeyUp = DBLookupCBoxIngreso_MedioKeyUp
      end
      object DBLookupCBoxIngreso_Proveedor: TDBLookupComboBox
        Left = 10
        Top = 89
        Width = 287
        Height = 21
        DataField = 'NRO_PROVEEDOR'
        DataSource = DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'NRO_PROVEEDOR'
        ListField = 'APELLIDO_Y_NOMBRE'
        ListSource = DS_Proveedores
        ParentFont = False
        TabOrder = 6
        OnKeyUp = DBLookupCBoxIngreso_ProveedorKeyUp
      end
      object DBLookupCBoxIngreso_Concepto: TDBLookupComboBox
        Left = 299
        Top = 89
        Width = 246
        Height = 21
        DataField = 'ID_CONCEPTO'
        DataSource = DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_CONCEPTO'
        ListField = 'NOMBRE_CONCEPTO'
        ListSource = DS_Conceptos
        ParentFont = False
        TabOrder = 7
        OnKeyUp = DBLookupCBoxIngreso_ConceptoKeyUp
      end
      object EKDBDateIngreso_FechaEmision: TEKDBDateTimePicker
        Left = 10
        Top = 50
        Width = 104
        Height = 21
        Date = 40470.714505208350000000
        Time = 40470.714505208350000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DataField = 'FECHA'
        DataSource = DS_Movimientos
      end
      object EKDBDateIngreso_FechaPD: TEKDBDateTimePicker
        Left = 119
        Top = 50
        Width = 104
        Height = 21
        Date = 40470.714505208350000000
        Time = 40470.714505208350000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        DataField = 'FECHA_MDC'
        DataSource = DS_Cuenta_Movimiento
      end
      object DBLookupCBoxIngreso_Codigo: TDBLookupComboBox
        Left = 229
        Top = 50
        Width = 67
        Height = 21
        DataField = 'ID_MEDIO'
        DataSource = DS_Cuenta_Movimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_MEDIO'
        ListField = 'CODIGO_CORTO'
        ListSource = DS_Medios_Cobro_Pago
        ParentFont = False
        TabOrder = 2
        OnExit = DBLookupCBoxIngreso_CodigoExit
        OnKeyUp = DBLookupCBoxEgreso_MedioKeyUp
      end
      object Panel2: TPanel
        Tag = 99
        Left = 0
        Top = 0
        Width = 989
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BorderStyle = bsSingle
        Caption = ' INGRESOS'
        Color = 16571333
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -21
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object DBEditNroRecibo: TDBEdit
        Left = 746
        Top = 50
        Width = 241
        Height = 21
        DataField = 'NRO_RECIBO'
        DataSource = DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
    end
    object DBGridLibroBanco: TDBGrid
      Left = 0
      Top = 26
      Width = 989
      Height = 356
      Align = alClient
      Color = 16772842
      DataSource = DS_LIBRO_BANCO
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      PopupMenu = MenuGrilla
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridLibroBancoDrawColumnCell
      OnDblClick = DBGridLibroBancoDblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha Emisi'#243'n'
          Width = 98
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA_PD'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha PD'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_PAGO_REC'
          Title.Alignment = taCenter
          Title.Caption = 'Nro Movimiento'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_ORDEN_STRING'
          Title.Alignment = taCenter
          Title.Caption = 'Nro Orden'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MEDIO'
          Title.Alignment = taCenter
          Title.Caption = 'Medio'
          Width = 109
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'NRO_MEDIO'
          Title.Alignment = taCenter
          Title.Caption = 'Nro Cheque/Transf'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROVEEDOR'
          Title.Alignment = taCenter
          Title.Caption = 'Proveedor'
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CTA_MOV_ANULADO'
          Title.Alignment = taCenter
          Title.Caption = 'Anulado'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_CONCEPTO'
          Title.Alignment = taCenter
          Title.Caption = 'Concepto'
          Width = 200
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'NRO_FACTURA'
          Title.Alignment = taCenter
          Title.Caption = 'Nro Factura'
          Width = 80
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'NRO_RECIBO'
          Title.Alignment = taCenter
          Title.Caption = 'Nro Recibo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEBE'
          Title.Alignment = taCenter
          Title.Caption = 'Debe'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HABER'
          Title.Alignment = taCenter
          Title.Caption = 'Haber'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CONCILIADO'
          Title.Alignment = taCenter
          Title.Caption = 'Conciliado'
          Width = 72
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA_CONCILIADO'
          Title.Alignment = taCenter
          Title.Caption = 'F. Conciliado'
          Width = 107
          Visible = True
        end>
    end
    object PEgresos: TPanel
      Left = 0
      Top = 382
      Width = 989
      Height = 116
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 7
      Visible = False
      object Label2: TLabel
        Left = 235
        Top = 33
        Width = 38
        Height = 13
        Caption = 'Medio:'
      end
      object Label5: TLabel
        Left = 13
        Top = 33
        Width = 86
        Height = 13
        Caption = 'Fecha Emisi'#243'n:'
      end
      object Label6: TLabel
        Left = 556
        Top = 33
        Width = 114
        Height = 13
        Caption = 'Nro Cheque/Transf:'
      end
      object Label7: TLabel
        Left = 556
        Top = 74
        Width = 51
        Height = 13
        Caption = 'Importe:'
      end
      object Label13: TLabel
        Left = 10
        Top = 74
        Width = 64
        Height = 13
        Caption = 'Proveedor:'
      end
      object Label17: TLabel
        Left = 301
        Top = 74
        Width = 59
        Height = 13
        Caption = 'Concepto:'
      end
      object Label22: TLabel
        Left = 123
        Top = 33
        Width = 58
        Height = 13
        Caption = 'Fecha PD:'
      end
      object DBEditEgreso_NroCheque: TDBEdit
        Left = 556
        Top = 49
        Width = 182
        Height = 21
        DataField = 'NRO_CHEQUE_TRANSF'
        DataSource = DS_Cuenta_Movimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBEditEgreso_Importe: TDBEdit
        Left = 556
        Top = 89
        Width = 182
        Height = 21
        DataField = 'IMPORTE'
        DataSource = DS_Cuenta_Movimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object DBLookupCBoxEgreso_Medio: TDBLookupComboBox
        Left = 301
        Top = 49
        Width = 248
        Height = 21
        DataField = 'ID_MEDIO'
        DataSource = DS_Cuenta_Movimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_MEDIO'
        ListField = 'NOMBRE_MEDIO_COBRO_PAGO'
        ListSource = DS_Medios_Cobro_Pago
        ParentFont = False
        TabOrder = 3
        OnExit = DBLookupCBoxEgreso_MedioExit
        OnKeyUp = DBLookupCBoxEgreso_MedioKeyUp
      end
      object DBLookupCBoxEgreso_Proveedor: TDBLookupComboBox
        Left = 10
        Top = 89
        Width = 287
        Height = 21
        DataField = 'NRO_PROVEEDOR'
        DataSource = DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'NRO_PROVEEDOR'
        ListField = 'APELLIDO_Y_NOMBRE'
        ListSource = DS_Proveedores
        ParentFont = False
        TabOrder = 5
        OnKeyUp = DBLookupCBoxEgreso_ProveedorKeyUp
      end
      object DBLookupCBoxEgreso_Concepto: TDBLookupComboBox
        Left = 301
        Top = 89
        Width = 248
        Height = 21
        DataField = 'ID_CONCEPTO'
        DataSource = DS_Movimientos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_CONCEPTO'
        ListField = 'NOMBRE_CONCEPTO'
        ListSource = DS_Conceptos
        ParentFont = False
        TabOrder = 6
        OnKeyUp = DBLookupCBoxEgreso_ConceptoKeyUp
      end
      object EKDBDateEgreso_FechaEmision: TEKDBDateTimePicker
        Left = 13
        Top = 49
        Width = 104
        Height = 21
        Date = 40470.714505208350000000
        Time = 40470.714505208350000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DataField = 'FECHA'
        DataSource = DS_Movimientos
      end
      object EKDBDateEgreso_FechaPD: TEKDBDateTimePicker
        Left = 123
        Top = 49
        Width = 103
        Height = 21
        Date = 40470.714505208350000000
        Time = 40470.714505208350000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        DataField = 'FECHA_MDC'
        DataSource = DS_Cuenta_Movimiento
      end
      object DBLookupCBoxEgreso_Codigo: TDBLookupComboBox
        Left = 235
        Top = 49
        Width = 67
        Height = 21
        DataField = 'ID_MEDIO'
        DataSource = DS_Cuenta_Movimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_MEDIO'
        ListField = 'CODIGO_CORTO'
        ListSource = DS_Medios_Cobro_Pago
        ParentFont = False
        TabOrder = 2
        OnExit = DBLookupCBoxEgreso_CodigoExit
        OnKeyUp = DBLookupCBoxEgreso_MedioKeyUp
      end
      object Panel3: TPanel
        Tag = 99
        Left = 0
        Top = 0
        Width = 989
        Height = 32
        Align = alTop
        Alignment = taLeftJustify
        BevelInner = bvLowered
        BorderStyle = bsSingle
        Caption = ' EGRESOS'
        Color = 16571333
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
    end
    object QR_SolicitudCompra: TQuickRep
      Tag = 99
      Left = 137
      Top = -67
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
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrintIfEmpty = True
      ReportTitle = 'Reporte Solicitud Compra/Pago'
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      object QRBand1: TQRBand
        Tag = 99
        Left = 38
        Top = 150
        Width = 718
        Height = 122
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          322.791666666666700000
          1899.708333333333000000)
        BandType = rbDetail
        object QRDBText9: TQRDBText
          Left = 97
          Top = 41
          Width = 361
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            256.645833333333300000
            108.479166666666700000
            955.145833333333200000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedores
          DataField = 'APELLIDO_Y_NOMBRE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel4: TQRLabel
          Left = 9
          Top = 41
          Width = 85
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            23.812500000000000000
            108.479166666666700000
            224.895833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Destinatario:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel5: TQRLabel
          Left = 29
          Top = 59
          Width = 65
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            76.729166666666670000
            156.104166666666700000
            171.979166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
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
          FontSize = 8
        end
        object QRDBText10: TQRDBText
          Left = 97
          Top = 59
          Width = 362
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            256.645833333333300000
            156.104166666666700000
            957.791666666666800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedores
          DataField = 'DIRECCION'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText11: TQRDBText
          Left = 177
          Top = 77
          Width = 247
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            468.312500000000000000
            203.729166666666700000
            653.520833333333200000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedores
          DataField = 'NRO_DOCUMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText18: TQRDBText
          Left = 97
          Top = 77
          Width = 72
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            256.645833333333300000
            203.729166666666700000
            190.500000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedores
          DataField = 'TIPO_DOCUMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel25: TQRLabel
          Left = 16
          Top = 77
          Width = 78
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            42.333333333333330000
            203.729166666666700000
            206.375000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Documento:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel27: TQRLabel
          Left = 44
          Top = 22
          Width = 50
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            116.416666666666700000
            58.208333333333330000
            132.291666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cuenta:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText19: TQRDBText
          Left = 97
          Top = 22
          Width = 304
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            256.645833333333300000
            58.208333333333320000
            804.333333333333200000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuentas
          DataField = 'NOMBRE_CUENTA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRShape4: TQRShape
          Left = 0
          Top = 36
          Width = 718
          Height = 5
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            13.229166666666670000
            0.000000000000000000
            95.250000000000000000
            1899.708333333333000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRDBText20: TQRDBText
          Left = 520
          Top = 22
          Width = 193
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1375.833333333333000000
            58.208333333333320000
            510.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuentas
          DataField = 'NRO_CUENTA_BANCARIA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel28: TQRLabel
          Left = 405
          Top = 22
          Width = 110
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1071.562500000000000000
            58.208333333333320000
            291.041666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'N'#250'mero Cuenta:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRShape6: TQRShape
          Left = 0
          Top = 92
          Width = 718
          Height = 5
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            13.229166666666670000
            0.000000000000000000
            243.794642857142900000
            1899.330357142857000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRDBText21: TQRDBText
          Left = 97
          Top = 101
          Width = 572
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            256.645833333333300000
            267.229166666666700000
            1513.416666666667000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Conceptos
          DataField = 'NOMBRE_CONCEPTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel29: TQRLabel
          Left = 29
          Top = 101
          Width = 65
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            76.729166666666670000
            267.229166666666700000
            171.979166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Concepto:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRLabel31: TQRLabel
          Left = 478
          Top = 3
          Width = 119
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1264.708333333333000000
            7.937500000000000000
            314.854166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Fecha de Emisi'#243'n:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRDBText23: TQRDBText
          Left = 602
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
            1592.791666666667000000
            7.937500000000000000
            291.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'FECHA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
        object QRShape17: TQRShape
          Left = 0
          Top = 17
          Width = 718
          Height = 5
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            13.229166666666670000
            0.000000000000000000
            44.979166666666670000
            1899.708333333333000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRShape18: TQRShape
          Left = 525
          Top = 39
          Width = 1
          Height = 56
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            147.174479166666700000
            1389.062500000000000000
            102.526041666666700000
            1.653645833333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object qrtSolImporteTotal: TQRLabel
          Left = 530
          Top = 65
          Width = 183
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            47.625000000000000000
            1402.291666666667000000
            171.979166666666700000
            484.187500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'QrtImporteFPago'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel30: TQRLabel
          Left = 554
          Top = 47
          Width = 134
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1465.791666666667000000
            124.354166666666700000
            354.541666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Importe Total Orden'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
      end
      object QRBand2: TQRBand
        Tag = 99
        Left = 38
        Top = 38
        Width = 718
        Height = 112
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          296.333333333333300000
          1899.708333333333000000)
        BandType = rbPageHeader
        object QRLabel36: TQRLabel
          Left = 17
          Top = 39
          Width = 685
          Height = 36
          Frame.Color = clGray
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            95.250000000000000000
            44.979166666666670000
            103.187500000000000000
            1812.395833333333000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'SOLICITUD DE COMPRA / SOLICITUD DE PAGO'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -25
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 19
        end
      end
      object QRSubDetail1: TQRSubDetail
        Tag = 99
        Left = 38
        Top = 272
        Width = 718
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          58.208333333333330000
          1899.708333333333000000)
        Master = QR_SolicitudCompra
        PrintBefore = False
        PrintIfEmpty = True
        object QRLabel39: TQRLabel
          Left = 3
          Top = 5
          Width = 222
          Height = 15
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            39.687500000000000000
            7.937500000000000000
            13.229166666666670000
            587.375000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = ' Detalle Condiciones de Pago:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 9
        end
      end
      object QRChildBand1: TQRChildBand
        Tag = 99
        Left = 38
        Top = 294
        Width = 718
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clSilver
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          39.687500000000000000
          1899.708333333333000000)
        ParentBand = QRSubDetail1
        object QRLabel40: TQRLabel
          Left = 68
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
            179.916666666666700000
            2.645833333333333000
            103.187500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
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
          FontSize = 8
        end
        object QRLabel42: TQRLabel
          Left = 377
          Top = 1
          Width = 130
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            997.479166666666700000
            2.645833333333333000
            343.958333333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nro Cheque/Transf.'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel46: TQRLabel
          Left = 266
          Top = 1
          Width = 95
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            703.791666666666800000
            2.645833333333333000
            251.354166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Fecha PD'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
      end
      object QRSubDetail2: TQRSubDetail
        Tag = 99
        Left = 38
        Top = 309
        Width = 718
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          47.625000000000000000
          1899.708333333333000000)
        Master = QR_SolicitudCompra
        DataSet = ZQ_Cuenta_Movimiento
        PrintBefore = False
        PrintIfEmpty = True
        object QRDBText26: TQRDBText
          Left = 69
          Top = 2
          Width = 196
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            182.562500000000000000
            5.291666666666667000
            518.583333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuenta_Movimiento
          DataField = 'medio_de_pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBText29: TQRDBText
          Left = 376
          Top = 2
          Width = 217
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            994.833333333333300000
            5.291666666666667000
            574.145833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuenta_Movimiento
          DataField = 'NRO_CHEQUE_TRANSF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
        object QRDBText31: TQRDBText
          Left = 266
          Top = 2
          Width = 95
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            703.791666666666800000
            5.291666666666667000
            251.354166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Cuenta_Movimiento
          DataField = 'FECHA_MDC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 7
        end
      end
      object QRSubDetail3: TQRSubDetail
        Tag = 99
        Left = 38
        Top = 327
        Width = 718
        Height = 208
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          550.333333333333300000
          1899.708333333333000000)
        Master = QR_SolicitudCompra
        PrintBefore = False
        PrintIfEmpty = True
        object QRLabel49: TQRLabel
          Left = 234
          Top = 148
          Width = 250
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Frame.Style = psDot
          Size.Values = (
            37.041666666666670000
            619.125000000000000000
            391.583333333333300000
            661.458333333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Firma y sello de la Secretar'#237'a responsable'
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 8
        end
      end
      object QRBand3: TQRBand
        Tag = 99
        Left = 38
        Top = 535
        Width = 718
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          42.333333333333330000
          1899.708333333333000000)
        BandType = rbPageFooter
        object qrDatosNombreyFecha: TQRSysData
          Left = 0
          Top = 1
          Width = 57
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            0.000000000000000000
            2.645833333333333000
            150.812500000000000000)
          Alignment = taLeftJustify
          AlignToBand = True
          AutoSize = True
          Color = clWhite
          Data = qrsDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsItalic]
          ParentFont = False
          Transparent = True
          FontSize = 7
        end
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
            Item = BtEditarMovimiento
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnAltaOrdenPago
            Visible = True
          end
          item
            Item = BtIngresos
            Visible = True
          end
          item
            Item = BtEgresos
            Visible = True
          end
          item
            BeginGroup = True
            Item = BtAnularOrden
            Visible = True
          end
          item
            Item = BtAnularMov
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnConciliar
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
            BeginGroup = True
            Item = btSalir
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
      end
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'barraVertical'
        DockedDockingStyle = dsRight
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsRight
        FloatLeft = 604
        FloatTop = 358
        FloatClientWidth = 50
        FloatClientHeight = 106
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemLinks = <
          item
            Item = btImprimirLB
            Visible = True
          end
          item
            Item = btnImprimirSolicitud
            Visible = True
          end
          item
            Item = btnImprimirOrden
            Visible = True
          end
          item
            Item = BtExportarExel
            Visible = True
          end
          item
            Item = btVerificarnroCheque
            Visible = True
          end
          item
            Item = btnFiltrar
            Visible = True
          end
          item
            Item = BtVerDetalle
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnEliminarMov
            Visible = True
          end>
        MultiLine = True
        Name = 'barraVertical'
        OneOnRow = True
        RotateWhenVertical = False
        Row = 0
        UseOwnFont = True
        UseRecentItems = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
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
    Left = 792
    Top = 232
    DockControlHeights = (
      0
      138
      0
      52)
    object BtIngresos: TdxBarLargeButton
      Caption = 'Crear Ingreso'
      Category = 0
      Hint = 'Inserta un nuevo movimiento de ingreso'
      Visible = ivAlways
      ImageIndex = 60
      OnClick = BtIngresosClick
      AutoGrayScale = False
    end
    object BtEgresos: TdxBarLargeButton
      Caption = 'Crear Egreso'
      Category = 0
      Hint = 'Inserta un nuevo movimiento de egreso'
      Visible = ivAlways
      ImageIndex = 61
      OnClick = BtEgresosClick
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
      OnClick = BtCancelarClick
      AutoGrayScale = False
    end
    object btImprimirLB: TdxBarLargeButton
      Caption = 'Libro Banco'
      Category = 0
      Hint = 'Imprimir Libro Banco'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = btImprimirLBClick
    end
    object btSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir del Libro Banco'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = btSalirClick
      AutoGrayScale = False
    end
    object BtEditarMovimiento: TdxBarLargeButton
      Caption = 'Editar'
      Category = 0
      Hint = 'Editar el movimiento o orden de pago seleccionada'
      Visible = ivAlways
      ImageIndex = 35
      OnClick = BtEditarMovimientoClick
      AutoGrayScale = False
    end
    object btnFiltrar: TdxBarLargeButton
      Caption = 'Filtrar'
      Category = 0
      Hint = 'Filtrar las columnas'
      Visible = ivAlways
      ImageIndex = 7
      OnClick = btnFiltrarClick
      AutoGrayScale = False
    end
    object BtVerDetalle: TdxBarLargeButton
      Caption = 'Ver Detalle'
      Category = 0
      Hint = 'Ver Detalle del movimiento o orden de pago seleccionada'
      Visible = ivAlways
      ImageIndex = 69
      OnClick = BtVerDetalleClick
      AutoGrayScale = False
    end
    object BtAnularOrden: TdxBarLargeButton
      Caption = 'Anular Orden'
      Category = 0
      Hint = 'Anula la orden de pago seleccionada'
      Visible = ivAlways
      ImageIndex = 9
      OnClick = BtAnularOrdenClick
      AutoGrayScale = False
    end
    object BtAnularMov: TdxBarLargeButton
      Caption = 'Anular Mov.'
      Category = 0
      Hint = 'Anular el movimiento seleccionado'
      Visible = ivAlways
      ImageIndex = 68
      OnClick = BtAnularMovClick
      AutoGrayScale = False
    end
    object BtExportarExel: TdxBarLargeButton
      Caption = 'Exportar Exel'
      Category = 0
      Hint = 'Exportar Exel'
      Visible = ivAlways
      ImageIndex = 66
      OnClick = BtExportarExelClick
      AutoGrayScale = False
    end
    object btnImprimirOrden: TdxBarLargeButton
      Caption = 'Orden Pago'
      Category = 0
      Hint = 'Imprimir Orden de Pago'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = btnImprimirOrdenClick
    end
    object btnAltaOrdenPago: TdxBarLargeButton
      Caption = 'Crear Orden Pago'
      Category = 0
      Hint = 'Ingresar una nueva Orden de Pago'
      Visible = ivAlways
      ImageIndex = 40
      OnClick = btnAltaOrdenPagoClick
      AutoGrayScale = False
    end
    object btVerificarnroCheque: TdxBarLargeButton
      Caption = 'Revisar Cheques'
      Category = 0
      Hint = 
        'Recorre todos los cheques cargados buscando cuando se produce un' +
        ' salto de n'#250'mero'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = btVerificarnroChequeClick
      AutoGrayScale = False
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'Impresi'#243'n'
      Category = 0
      Hint = 'Impresi'#243'n'
      Visible = ivAlways
      BorderStyle = sbsRaised
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarFontNameCombo1: TdxBarFontNameCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888444488844444488887488888744
        7888888448888744888888874888844788888888444444488888888874884478
        8888888884484488888888888744478888888888884448888888888888747888
        8888888888848888888888888888888888888888888888888888}
      Width = 160
      DropDownCount = 12
    end
    object btnConciliar: TdxBarLargeButton
      Caption = 'Conciliar/Desconciliar'
      Category = 0
      Hint = 'Conciliar/Desconciliar'
      Visible = ivAlways
      ImageIndex = 67
      ShortCut = 16465
      OnClick = AConciliarExecute
      AutoGrayScale = False
    end
    object btnEliminarMov: TdxBarLargeButton
      Caption = 'Eliminar Mov.'
      Category = 0
      Hint = 'Eliminar Mov.'
      Visible = ivAlways
      ImageIndex = 4
      OnClick = btnEliminarMovClick
      AutoGrayScale = False
    end
    object btnImprimirSolicitud: TdxBarLargeButton
      Caption = 'Solicitud Compra/Pago'
      Category = 0
      Hint = 'Solicitud Compra/Pago'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = btnImprimirSolicitudClick
      AutoGrayScale = False
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'BtIngresos'
        'BtEgresos'
        'btBuscar'
        'btImprimirLB'
        'btSalir'
        'BtEditarMovimiento'
        'btnFiltrar'
        'BtVerDetalle'
        'BtAnularOrden'
        'BtAnularMov'
        'BtExportarExel'
        'btnImprimirOrden'
        'btnAltaOrdenPago'
        'btVerificarnroCheque'
        'btnConciliar'
        'btnEliminarMov'
        'btnImprimirSolicitud')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'BtGuardar'
        'BtCancelar')
    end
  end
  object ZQ_Cuenta_Movimiento: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_cuentas_movimientos cm'
      'where (cm.nro_movimiento = :NroMov) or (cm.id = :IDCtaMov)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'NroMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCtaMov'
        ParamType = ptUnknown
      end>
    Left = 456
    Top = 105
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NroMov'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IDCtaMov'
        ParamType = ptUnknown
      end>
    object ZQ_Cuenta_MovimientoID: TIntegerField
      FieldName = 'ID'
    end
    object ZQ_Cuenta_MovimientoNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
    end
    object ZQ_Cuenta_MovimientoID_CUENTA_INGRESO: TIntegerField
      FieldName = 'ID_CUENTA_INGRESO'
    end
    object ZQ_Cuenta_MovimientoID_CUENTA_EGRESO: TIntegerField
      FieldName = 'ID_CUENTA_EGRESO'
    end
    object ZQ_Cuenta_MovimientoID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
    end
    object ZQ_Cuenta_MovimientoFECHA_MDC: TDateField
      FieldName = 'FECHA_MDC'
      EditMask = '##/##/####'
    end
    object ZQ_Cuenta_MovimientoBANCO_MDC: TStringField
      FieldName = 'BANCO_MDC'
      Size = 50
    end
    object ZQ_Cuenta_MovimientoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object ZQ_Cuenta_MovimientoCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object ZQ_Cuenta_Movimientonombre_cuenta_egreso: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre_cuenta_egreso'
      LookupDataSet = ZQ_Cuentas
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'NOMBRE_CUENTA'
      KeyFields = 'ID_CUENTA_EGRESO'
      Size = 50
      Lookup = True
    end
    object ZQ_Cuenta_Movimientonombre_cuenta_ingreso: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre_cuenta_ingreso'
      LookupDataSet = ZQ_Cuentas
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'NOMBRE_CUENTA'
      KeyFields = 'ID_CUENTA_INGRESO'
      Size = 50
      Lookup = True
    end
    object ZQ_Cuenta_Movimientomedio_de_pago: TStringField
      FieldKind = fkLookup
      FieldName = 'medio_de_pago'
      LookupDataSet = ZQ_Medios_Cobro_Pago
      LookupKeyFields = 'ID_MEDIO'
      LookupResultField = 'NOMBRE_MEDIO_COBRO_PAGO'
      KeyFields = 'ID_MEDIO'
      Size = 50
      Lookup = True
    end
    object ZQ_Cuenta_MovimientoFECHA_CONCILIADO: TDateField
      FieldName = 'FECHA_CONCILIADO'
    end
    object ZQ_Cuenta_MovimientoANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF: TIntegerField
      FieldName = 'NRO_CHEQUE_TRANSF'
    end
    object ZQ_Cuenta_MovimientocodMedioPago: TStringField
      FieldKind = fkLookup
      FieldName = 'codMedioPago'
      LookupDataSet = ZQ_Medios_Cobro_Pago
      LookupKeyFields = 'ID_MEDIO'
      LookupResultField = 'CODIGO_CORTO'
      KeyFields = 'ID_MEDIO'
      Lookup = True
    end
  end
  object DS_Cuenta_Movimiento: TDataSource
    DataSet = ZQ_Cuenta_Movimiento
    Left = 456
    Top = 161
  end
  object ZQ_Cuentas: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_CuentasAfterScroll
    SQL.Strings = (
      
        'select c.*, c.nombre_cuenta||'#39' - '#39'|| coalesce ('#39'N'#176': '#39' || c.nro_c' +
        'uenta_bancaria, '#39'N'#176': S/N'#39') Busqueda'
      'from ie_cuentas c')
    Params = <>
    Left = 592
    Top = 169
    object ZQ_CuentasID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
      Required = True
    end
    object ZQ_CuentasNOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 100
    end
    object ZQ_CuentasMEDIO_DE_PAGO: TStringField
      FieldName = 'MEDIO_DE_PAGO'
      Size = 50
    end
    object ZQ_CuentasNRO_CUENTA_BANCARIA: TStringField
      FieldName = 'NRO_CUENTA_BANCARIA'
      Size = 100
    end
    object ZQ_CuentasULTIMO_NRO: TIntegerField
      FieldName = 'ULTIMO_NRO'
    end
    object ZQ_CuentasAUTONUMERAR: TStringField
      FieldName = 'AUTONUMERAR'
      Size = 1
    end
    object ZQ_CuentasMEDIO_POR_DEFECTO: TIntegerField
      FieldName = 'MEDIO_POR_DEFECTO'
    end
    object ZQ_CuentasBUSQUEDA: TStringField
      FieldName = 'BUSQUEDA'
      ReadOnly = True
      Size = 207
    end
  end
  object ZQ_Medios_Cobro_Pago: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_medios_cobro_pago mcp')
    Params = <>
    Left = 184
    Top = 105
    object ZQ_Medios_Cobro_PagoID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
      Required = True
    end
    object ZQ_Medios_Cobro_PagoNOMBRE_MEDIO_COBRO_PAGO: TStringField
      FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
      Size = 30
    end
    object ZQ_Medios_Cobro_PagoCODIGO_CORTO: TStringField
      FieldName = 'CODIGO_CORTO'
      Size = 4
    end
  end
  object ZQ_Proveedores: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_proveedores p'
      'where'
      '(p.baja<>'#39'S'#39') and (p.id_cuenta=:idCta)'
      'order by apellido_y_nombre')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idCta'
        ParamType = ptUnknown
      end>
    Left = 593
    Top = 49
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idCta'
        ParamType = ptUnknown
      end>
    object ZQ_ProveedoresNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
      Required = True
    end
    object ZQ_ProveedoresAPELLIDO_Y_NOMBRE: TStringField
      FieldName = 'APELLIDO_Y_NOMBRE'
      Size = 60
    end
    object ZQ_ProveedoresNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 60
    end
    object ZQ_ProveedoresDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 150
    end
    object ZQ_ProveedoresTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 10
    end
    object ZQ_ProveedoresNRO_DOCUMENTO: TStringField
      FieldName = 'NRO_DOCUMENTO'
      Size = 30
    end
    object ZQ_ProveedoresTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Size = 30
    end
    object ZQ_ProveedoresEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object ZQ_ProveedoresBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ProveedoresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 1000
    end
    object ZQ_ProveedoresEDITABLE: TStringField
      FieldName = 'EDITABLE'
      Size = 1
    end
    object ZQ_ProveedoresID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
    end
  end
  object ZQ_Conceptos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_conceptos c'
      'where c.id_concepto > 0'
      'and c.baja<>'#39'S'#39
      'order by c.nombre_concepto')
    Params = <>
    Left = 457
    Top = 209
    object ZQ_ConceptosID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
      Required = True
    end
    object ZQ_ConceptosCOD_CORTO: TStringField
      FieldName = 'COD_CORTO'
      Size = 6
    end
    object ZQ_ConceptosNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 240
    end
    object ZQ_ConceptosBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ConceptosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
  object ZQ_Movimientos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select m.*'
      'from ie_movimientos m'
      'where m.nro_movimiento = :NroMov')
    Params = <
      item
        DataType = ftUnknown
        Name = 'NroMov'
        ParamType = ptUnknown
      end>
    Left = 305
    Top = 49
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NroMov'
        ParamType = ptUnknown
      end>
    object ZQ_MovimientosNRO_MOVIMIENTO: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
      Required = True
    end
    object ZQ_MovimientosNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
    end
    object ZQ_MovimientosID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
      Required = True
    end
    object ZQ_MovimientosID_OBJETO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_OBJETO_MOVIMIENTO'
    end
    object ZQ_MovimientosPAGO_DEL_EJERCICIO: TStringField
      FieldName = 'PAGO_DEL_EJERCICIO'
      Size = 1
    end
    object ZQ_MovimientosFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZQ_MovimientosIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object ZQ_MovimientosIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object ZQ_MovimientosNRO_COMPROMISO: TIntegerField
      FieldName = 'NRO_COMPROMISO'
    end
    object ZQ_MovimientosNRO_PARTE: TIntegerField
      FieldName = 'NRO_PARTE'
    end
    object ZQ_MovimientosANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object ZQ_MovimientosFECHA_ANULADO: TDateField
      FieldName = 'FECHA_ANULADO'
    end
    object ZQ_MovimientosPARTE_ANULADO: TIntegerField
      FieldName = 'PARTE_ANULADO'
    end
    object ZQ_MovimientosDETALLE_ANULADO: TStringField
      FieldName = 'DETALLE_ANULADO'
      Size = 200
    end
    object ZQ_MovimientosNRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
    object ZQ_MovimientosNRO_FACTURA: TStringField
      FieldName = 'NRO_FACTURA'
      Size = 50
    end
    object ZQ_MovimientosNRO_RECIBO: TStringField
      FieldName = 'NRO_RECIBO'
      Size = 50
    end
    object ZQ_MovimientosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 200
    end
    object ZQ_MovimientosNRO_ORDEN_STRING: TStringField
      FieldName = 'NRO_ORDEN_STRING'
    end
  end
  object DS_Proveedores: TDataSource
    DataSet = ZQ_Proveedores
    Left = 593
    Top = 105
  end
  object DS_Conceptos: TDataSource
    DataSet = ZQ_Conceptos
    Left = 457
    Top = 265
  end
  object DS_Cuentas: TDataSource
    DataSet = ZQ_Cuentas
    Left = 593
    Top = 225
  end
  object DS_Movimientos: TDataSource
    DataSet = ZQ_Movimientos
    Left = 304
    Top = 105
  end
  object EK_ListadoCuentas: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select ie_cuentas.id_cuenta, ie_cuentas.nombre_cuenta'
      'from ie_cuentas'
      'order by ie_cuentas.nombre_cuenta')
    CampoBuscar = 'NOMBRE_CUENTA'
    CampoClave = 'ID_CUENTA'
    Left = 184
    Top = 265
  end
  object EK_ListadoMedCobroPago: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'SELECT *'
      'FROM IE_MEDIOS_COBRO_PAGO')
    CampoBuscar = 'NOMBRE_MEDIO_COBRO_PAGO'
    CampoClave = 'ID_MEDIO'
    Left = 304
    Top = 153
  end
  object Nro_Moviemiento: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_IE_MOVIMIENTOS_ID'
    Left = 456
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    object Nro_MoviemientoID: TIntegerField
      FieldName = 'ID'
    end
  end
  object DS_LIBRO_BANCO: TDataSource
    DataSet = LIBRO_BANCO
    Left = 56
    Top = 208
  end
  object LIBRO_BANCO: TZQuery
    Connection = DM.Conexion
    AfterScroll = LIBRO_BANCOAfterScroll
    SQL.Strings = (
      'select ie.*'
      'from ie_ver_libro_banco(:cuenta,:hasta,:desde,:ordenamiento) ie')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cuenta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ordenamiento'
        ParamType = ptUnknown
      end>
    Left = 56
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cuenta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ordenamiento'
        ParamType = ptUnknown
      end>
    object LIBRO_BANCOID_MOVIMIENTO: TIntegerField
      FieldName = 'ID_MOVIMIENTO'
    end
    object LIBRO_BANCOORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object LIBRO_BANCOFECHA: TDateField
      FieldName = 'FECHA'
    end
    object LIBRO_BANCOMOVIMIENTO: TStringField
      FieldName = 'MOVIMIENTO'
      Size = 15
    end
    object LIBRO_BANCONRO_PAGO_REC: TIntegerField
      FieldName = 'NRO_PAGO_REC'
    end
    object LIBRO_BANCOMEDIO: TStringField
      FieldName = 'MEDIO'
      Size = 50
    end
    object LIBRO_BANCONRO_MEDIO: TStringField
      FieldName = 'NRO_MEDIO'
      Size = 60
    end
    object LIBRO_BANCODEBE: TFloatField
      FieldName = 'DEBE'
      currency = True
    end
    object LIBRO_BANCOHABER: TFloatField
      FieldName = 'HABER'
      currency = True
    end
    object LIBRO_BANCOSALDO: TFloatField
      FieldName = 'SALDO'
      currency = True
    end
    object LIBRO_BANCOCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object LIBRO_BANCONOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 100
    end
    object LIBRO_BANCOFECHA_PD: TDateField
      FieldName = 'FECHA_PD'
    end
    object LIBRO_BANCOOTROS: TStringField
      FieldName = 'OTROS'
      Size = 40
    end
    object LIBRO_BANCONRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
    object LIBRO_BANCOFECHA_CONCILIADO: TDateField
      FieldName = 'FECHA_CONCILIADO'
    end
    object LIBRO_BANCOID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
    end
    object LIBRO_BANCOMOV_ANULADO: TStringField
      FieldName = 'MOV_ANULADO'
      Size = 1
    end
    object LIBRO_BANCOCTA_MOV_ANULADO: TStringField
      FieldName = 'CTA_MOV_ANULADO'
      Size = 1
    end
    object LIBRO_BANCONRO_FACTURA: TStringField
      FieldName = 'NRO_FACTURA'
      Size = 50
    end
    object LIBRO_BANCONRO_RECIBO: TStringField
      FieldName = 'NRO_RECIBO'
      Size = 50
    end
    object LIBRO_BANCOPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object LIBRO_BANCONRO_ORDEN_STRING: TStringField
      FieldName = 'NRO_ORDEN_STRING'
      Size = 11
    end
  end
  object EKBusquedaAvanzada1: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Fecha Emision'
        Campo = 'fecha'
        Tabla = 'ie'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndice = 6
        TipoCampoIndiceVer = 'Desde - Hasta'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Fecha PD'
        Campo = 'fecha_pd'
        Tabla = 'ie'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndice = 6
        TipoCampoIndiceVer = 'Desde - Hasta'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Nro Movimiento'
        Campo = 'nro_pago_rec'
        Tabla = 'ie'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Medio'
        Campo = 'medio'
        Tabla = 'ie'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_Medios_Cobro_Pago
        TipoCombollenarCampo = 'NOMBRE_MEDIO_COBRO_PAGO'
        TipoCombollenarCampoReal = 'NOMBRE_MEDIO_COBRO_PAGO'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Nro Medio'
        Campo = 'nro_medio'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Proveedor'
        Campo = 'Proveedor'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Concepto'
        Campo = 'nombre_concepto'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Conciliado'
        Campo = 'conciliado'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = LIBRO_BANCO
    SQL.Strings = (
      'select ie.*'
      'from ie_ver_libro_banco(:cuenta,:hasta,:desde,:ordenamiento)ie')
    SQL_Select.Strings = (
      'select ie.*')
    SQL_From.Strings = (
      'from ie_ver_libro_banco(:cuenta,:hasta,:desde,:ordenamiento)ie')
    UsarWhereOriginal = EK_Con_Where
    Left = 56
    Top = 104
  end
  object EKLlenarCombo1: TEKLlenarCombo
    dataset = ZQ_Cuentas
    combo = DBLCuenta
    OnCambio = EKLlenarCombo1Cambio
    CampoClave = 'id_cuenta'
    CampoVer = 'Busqueda'
    Left = 57
    Top = 49
  end
  object EKListado_Proveedores: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select *'
      'from ie_proveedores'
      'where nro_proveedor > 0')
    CampoBuscar = 'APELLIDO_Y_NOMBRE'
    CampoClave = 'nro_proveedor'
    Left = 305
    Top = 209
  end
  object EKListado_Conceptos: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select *'
      'from ie_conceptos'
      'where id_concepto > 0')
    CampoBuscar = 'nombre_concepto'
    CampoClave = 'id_concepto'
    Left = 305
    Top = 265
  end
  object mxNativeExcel1: TmxNativeExcel
    ActiveFont = 0
    Borders = []
    Shading = False
    Version = '1.24'
    Left = 696
    Top = 168
  end
  object mxDBGridExport: TmxDBGridExport
    DateFormat = 'dd/MM/yyyy'
    TimeFormat = 'hh:mm AMPM'
    DateTimeFormat = 'hh:mm AMPM dd/MM/yyyy'
    ExportType = xtExcel
    ExportTypes = [xtHTML, xtExcel, xtWord, xtTXT]
    ExportStyle = xsView
    HTML.CustomColors.Background = clWhite
    HTML.CustomColors.DefaultLink = clRed
    HTML.CustomColors.DefaultFontFace = 'Arial,Helvetica'
    HTML.CustomColors.VisitedLink = clAqua
    HTML.CustomColors.ActiveLink = clBlue
    HTML.CustomColors.DefaultText = clBlack
    HTML.CustomColors.TableFontColor = clBlack
    HTML.CustomColors.TableFontFace = 'Arial,Helvetica'
    HTML.CustomColors.TableBackground = 16777167
    HTML.CustomColors.TableOddBackground = clWhite
    HTML.CustomColors.HeaderBackground = 3368601
    HTML.CustomColors.HeadersFontColor = clWhite
    HTML.Options = [hoShowGridLines, hoBoldHeaders, hoAutoLink, hoOddRowColoring, hoDisplayTitle]
    HTML.Template = ctStandard
    Messages.Caption = 'Exportar datos'
    Messages.CopiedToClipboard = 'Data was copied to clipboard!'
    Messages.CancelCaption = '&Cancelar'
    Messages.CreatedText = 'Exportando:'
    Messages.DocumentFilter.HTML = 'HTML Documents'
    Messages.DocumentFilter.Excel = 'Excel Files'
    Messages.DocumentFilter.Word = 'Word Documents'
    Messages.DocumentFilter.Text = 'Text Files'
    Messages.DocumentFilter.Comma = 'CSV (Comma delimited)'
    Messages.DocumentFilter.Tab = 'Text (Tab delimited)'
    Messages.DocumentFilter.RTF = 'Rich Text Format'
    Messages.DocumentFilter.DIF = 'Data Interchange Format'
    Messages.DocumentFilter.SYLK = 'SYLK Files'
    Messages.ExportCaption = '&Aceptar'
    Messages.ExportToFile = '&Guardar'
    Messages.FalseText = 'False'
    Messages.Height = 80
    Messages.SaveTitle = 'Guardar'
    Messages.SelectFormat = 'Opciones'
    Messages.Text = 'Proceseando...'
    Messages.TrueText = 'True'
    Messages.Width = 300
    Messages.ViewOnly = '&Ver'
    TruncateSymbol = '...'
    RowNumberFormat = '%d'
    DOC_RTF.Template = rtStandard
    DOC_RTF.Options = [roShowGridLines, roOddRowColoring]
    DOC_RTF.CustomSettings.TableBackground = 16777167
    DOC_RTF.CustomSettings.TableOddBackground = clWhite
    DOC_RTF.CustomSettings.HeaderBackground = 3368601
    DOC_RTF.CustomSettings.DefaultFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.DefaultFont.Color = clWindowText
    DOC_RTF.CustomSettings.DefaultFont.Height = -11
    DOC_RTF.CustomSettings.DefaultFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.DefaultFont.Style = []
    DOC_RTF.CustomSettings.HeaderFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.HeaderFont.Color = clWindowText
    DOC_RTF.CustomSettings.HeaderFont.Height = -11
    DOC_RTF.CustomSettings.HeaderFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.HeaderFont.Style = [fsBold]
    DOC_RTF.CustomSettings.TableFont.Charset = DEFAULT_CHARSET
    DOC_RTF.CustomSettings.TableFont.Color = clWindowText
    DOC_RTF.CustomSettings.TableFont.Height = -11
    DOC_RTF.CustomSettings.TableFont.Name = 'MS Sans Serif'
    DOC_RTF.CustomSettings.TableFont.Style = []
    DOC_RTF.CellWidth = 1400
    DOC_RTF.TopMargin = 101
    DOC_RTF.BottomMargin = 101
    DOC_RTF.LeftMargin = 461
    DOC_RTF.RightMargin = 562
    EXCEL.Options = [reSetColumnWidths, reSetMargins, reUseBorders]
    EXCEL.ColumnWidth = 30
    EXCEL.Protected = False
    EXCEL.Footer = '&P'
    EXCEL.DefaultFont.Charset = DEFAULT_CHARSET
    EXCEL.DefaultFont.Color = clWindowText
    EXCEL.DefaultFont.Height = -11
    EXCEL.DefaultFont.Name = 'MS Sans Serif'
    EXCEL.DefaultFont.Style = []
    EXCEL.HeaderFont.Charset = DEFAULT_CHARSET
    EXCEL.HeaderFont.Color = clWindowText
    EXCEL.HeaderFont.Height = -12
    EXCEL.HeaderFont.Name = 'Verdana'
    EXCEL.HeaderFont.Style = [fsBold]
    EXCEL.TableFont.Charset = DEFAULT_CHARSET
    EXCEL.TableFont.Color = clWindowText
    EXCEL.TableFont.Height = -11
    EXCEL.TableFont.Name = 'MS Sans Serif'
    EXCEL.TableFont.Style = []
    EXCEL.TopMargin = 0.300000000000000000
    EXCEL.BottomMargin = 0.300000000000000000
    EXCEL.LeftMargin = 0.300000000000000000
    EXCEL.RightMargin = 0.300000000000000000
    Options = [xoClipboardMessage, xoFooterLine, xoHeaderLine, xoShowExportDate, xoShowHeader, xoShowProgress, xoUseAlignments]
    Version = '2.37'
    DBGrid = DBGridLibroBanco
    Left = 692
    Top = 106
  end
  object EKIni_Impresion: TEKIni
    Left = 586
    Top = 328
  end
  object EKVistaPreviaOrdenPago: TEKVistaPreviaQR
    Reporte = QR_OrdenPago
    ShowModal = False
    VerGuardar = False
    VerExpImagen = False
    VerExpExel = False
    Caption = 'Orden de Pago'
    Left = 178
    Top = 329
  end
  object ZQ_Autoriza: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from autoridad'
      'order by prioridad')
    Params = <>
    Left = 56
    Top = 257
    object ZQ_AutorizaID_AUTORIDAD: TIntegerField
      FieldName = 'ID_AUTORIDAD'
    end
    object ZQ_AutorizaNOMBE: TStringField
      FieldName = 'NOMBE'
      Size = 50
    end
    object ZQ_AutorizaPRIORIDAD: TIntegerField
      FieldName = 'PRIORIDAD'
    end
  end
  object DS_Autoriza: TDataSource
    DataSet = ZQ_Autoriza
    Left = 56
    Top = 331
  end
  object EKLlenarCBAutoriza: TEKLlenarCombo
    dataset = ZQ_Autoriza
    combo = CBoxAutoriza
    OnCambio = EKLlenarCombo1Cambio
    CampoClave = 'ID_AUTORIDAD'
    CampoVer = 'Nombe'
    Left = 185
    Top = 209
  end
  object EKOrdenarGrilla1: TEKOrdenarGrilla
    Grilla = DBGridLibroBanco
    FuenteNormal = []
    NombreGuardarConfig = 'UMovimientos'
    Ordenar = False
    Left = 184
    Top = 48
  end
  object EKIniGuardarFiltros: TEKIni
    Left = 456
    Top = 328
  end
  object DS_Medios_Cobro_Pago: TDataSource
    DataSet = ZQ_Medios_Cobro_Pago
    Left = 183
    Top = 154
  end
  object EKVistaPrevia_LibroBco: TEKVistaPreviaQR
    Reporte = RepLibroB
    ShowModal = False
    VerGuardar = False
    VerExpImagen = False
    VerExpExel = False
    Caption = 'Reporte de Libro Banco'
    Left = 317
    Top = 326
  end
  object EKDbSuma1: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'importe'
      end>
    DataSet = ZQ_Cuenta_Movimiento
    Left = 696
    Top = 40
  end
  object VerificarNroCheque: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'RESULTADO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_CHEQUE'
        ParamType = ptInput
      end>
    StoredProcName = 'VERIFICAR_NRO_CHEQUE'
    Left = 704
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RESULTADO'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NRO_CHEQUE'
        ParamType = ptInput
      end>
    object VerificarNroChequeRESULTADO: TIntegerField
      FieldName = 'RESULTADO'
    end
  end
  object ActionManager1: TActionManager
    Left = 704
    Top = 288
    StyleName = 'XP Style'
    object AConciliar: TAction
      Caption = 'AConciliar'
      ShortCut = 16465
      OnExecute = AConciliarExecute
    end
    object AOrdenPago: TAction
      Caption = 'AOrdenPago'
      ShortCut = 16463
      OnExecute = AOrdenPagoExecute
    end
    object AIngreso: TAction
      Caption = 'AIngreso'
      ShortCut = 16457
      OnExecute = AIngresoExecute
    end
    object AEgreso: TAction
      Caption = 'AEgreso'
      ShortCut = 16453
      OnExecute = AEgresoExecute
    end
    object AVerDetalle: TAction
      Caption = 'AVerDetalle'
      ShortCut = 16470
      OnExecute = AVerDetalleExecute
    end
    object AGuardar: TAction
      Caption = 'AGuardar'
      ShortCut = 16455
      OnExecute = AGuardarExecute
    end
    object ACancelar: TAction
      Caption = 'ACancelar'
      ShortCut = 16451
      OnExecute = ACancelarExecute
    end
  end
  object ZQ_OrdenDebitoBancario: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_cuentas_movimientos cm'
      
        'left join ie_movimientos mov on (cm.nro_movimiento = mov.nro_mov' +
        'imiento)'
      'where cm.id_medio = 5 and mov.fecha between :fdesde and :fhasta'
      '  and cm.importe <> 0')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fdesde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fhasta'
        ParamType = ptUnknown
      end>
    Left = 800
    Top = 39
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fdesde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fhasta'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
    end
    object IntegerField2: TIntegerField
      FieldName = 'NRO_MOVIMIENTO'
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_CUENTA_INGRESO'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_CUENTA_EGRESO'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_MEDIO'
    end
    object DateField1: TDateField
      FieldName = 'FECHA_MDC'
      EditMask = '##/##/####'
    end
    object StringField1: TStringField
      FieldName = 'BANCO_MDC'
      Size = 50
    end
    object FloatField1: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object StringField2: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object StringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre_cuenta_egreso'
      LookupDataSet = ZQ_Cuentas
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'NOMBRE_CUENTA'
      KeyFields = 'ID_CUENTA_EGRESO'
      Size = 50
      Lookup = True
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'nombre_cuenta_ingreso'
      LookupDataSet = ZQ_Cuentas
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'NOMBRE_CUENTA'
      KeyFields = 'ID_CUENTA_INGRESO'
      Size = 50
      Lookup = True
    end
    object StringField5: TStringField
      FieldKind = fkLookup
      FieldName = 'medio_de_pago'
      LookupDataSet = ZQ_Medios_Cobro_Pago
      LookupKeyFields = 'ID_MEDIO'
      LookupResultField = 'NOMBRE_MEDIO_COBRO_PAGO'
      KeyFields = 'ID_MEDIO'
      Size = 50
      Lookup = True
    end
    object DateField2: TDateField
      FieldName = 'FECHA_CONCILIADO'
    end
    object StringField6: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object IntegerField6: TIntegerField
      FieldName = 'NRO_CHEQUE_TRANSF'
    end
  end
  object DS_OrdenDebitoBancario: TDataSource
    DataSet = ZQ_OrdenDebitoBancario
    Left = 792
    Top = 103
  end
  object EKDbSumaOrdenDebito: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'importe'
      end>
    DataSet = ZQ_OrdenDebitoBancario
    Left = 696
    Top = 336
  end
  object MenuGrilla: TPopupMenu
    Images = FPrincipal.Iconos_Menu_16
    Left = 592
    Top = 280
    object Editar1: TMenuItem
      Caption = 'Editar'
      ImageIndex = 31
      OnClick = Editar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AnularOrden1: TMenuItem
      Caption = 'Anular Orden'
      ImageIndex = 0
      OnClick = AnularOrden1Click
    end
    object AnularMovimiento1: TMenuItem
      Caption = 'Anular Movimiento'
      ImageIndex = 12
      OnClick = AnularMovimiento1Click
    end
    object EliminarMovimiento1: TMenuItem
      Caption = 'Eliminar Movimiento'
      ImageIndex = 5
      OnClick = EliminarMovimiento1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ConciliarMovimiento1: TMenuItem
      Caption = 'Conciliar/Desconciliar'
      ImageIndex = 33
      OnClick = ConciliarMovimiento1Click
    end
  end
  object ZQ_ExisteCheque: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select m.nro_orden'
      'from ie_movimientos m'
      'where m.nro_orden_string=:nroOrd')
    Params = <
      item
        DataType = ftUnknown
        Name = 'nroOrd'
        ParamType = ptUnknown
      end>
    Left = 807
    Top = 285
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nroOrd'
        ParamType = ptUnknown
      end>
    object IntegerField7: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
  end
  object EKVistaPreviaSolicitud: TEKVistaPreviaQR
    Reporte = QR_SolicitudCompra
    ShowModal = False
    VerGuardar = False
    VerExpImagen = False
    VerExpExel = False
    Caption = 'Reporte Solicitud Compra/Pago'
    Left = 317
    Top = 382
  end
end
