object FEstadisticaMovInternos: TFEstadisticaMovInternos
  Left = 326
  Top = 160
  Width = 870
  Height = 546
  Caption = 'Estadistica Movimientos Internos'
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
  OnCanResize = FormCanResize
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TPageControl
    Left = 0
    Top = 0
    Width = 854
    Height = 456
    ActivePage = TabIngresos_Egresos
    Align = alClient
    TabOrder = 0
    object TabBalance: TTabSheet
      Caption = 'Balance (Datos)'
      ImageIndex = 3
      object RepBalance: TQuickRep
        Tag = 99
        Left = -20
        Top = -695
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = ZS_Balance
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
          Width = 718
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
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRRepBalanceDBLogo: TQRDBImage
            Left = 66
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
              174.625000000000000000
              5.291666666666667000
              169.333333333333300000)
            DataField = 'LOGO'
            Stretch = True
          end
          object QRLabel17: TQRLabel
            Left = 198
            Top = 47
            Width = 321
            Height = 19
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              523.875000000000000000
              124.354166666666700000
              849.312500000000000000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'BALANCE MOVIMIENTOS INTERNOS'
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
          object RepBalance_Subtitulo: TQRLabel
            Left = -66
            Top = 26
            Width = 148
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              754.062500000000000000
              68.791666666666670000
              391.583333333333300000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'RepBalance_Subtitulo'
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
          object RepBalance_Titulo: TQRLabel
            Left = -75
            Top = 2
            Width = 165
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              730.250000000000000000
              5.291666666666667000
              436.562500000000000000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'RepBalance_Titulo'
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
          Width = 718
          Height = 14
          Frame.Color = clSilver
          Frame.DrawTop = False
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
            37.041666666666670000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText19: TQRDBText
            Left = 5
            Top = 0
            Width = 92
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              0.000000000000000000
              243.416666666666700000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZS_Balance
            DataField = 'FECHA'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText1: TQRDBText
            Left = 102
            Top = 0
            Width = 150
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              269.875000000000000000
              0.000000000000000000
              396.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZS_Balance
            DataField = 'INGRESO'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText2: TQRDBText
            Left = 564
            Top = 0
            Width = 150
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1492.250000000000000000
              0.000000000000000000
              396.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZS_Balance
            DataField = 'SALDO'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText3: TQRDBText
            Left = 256
            Top = 0
            Width = 150
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              677.333333333333300000
              0.000000000000000000
              396.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZS_Balance
            DataField = 'EGRESO'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText4: TQRDBText
            Left = 410
            Top = 0
            Width = 150
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1084.791666666667000000
              0.000000000000000000
              396.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZS_Balance
            DataField = 'SALDODIARIO'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
        end
        object QRBand11: TQRBand
          Tag = 99
          Left = 38
          Top = 240
          Width = 718
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
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRlblRepBalance_PieDePagina: TQRLabel
            Left = 4
            Top = 3
            Width = 139
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
              367.770833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRlblRepBalance_PieDePagina'
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
          object QRLabel43: TQRLabel
            Left = 629
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
              1664.229166666667000000
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
            Left = 671
            Top = 3
            Width = 45
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1775.354166666667000000
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
          Top = 173
          Width = 718
          Height = 67
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
            177.270833333333300000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRExpr18: TQRExpr
            Left = 4
            Top = 4
            Width = 186
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
              492.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = #39'Cantidad de Cuentas: '#39'+COUNT'
            ExportAs = exptText
            FontSize = 8
          end
          object QRlblRepBalance_SaldoIni: TQRLabel
            Left = 376
            Top = 2
            Width = 338
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              994.833333333333200000
              5.291666666666667000
              894.291666666666800000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Saldo Total: XXXXX'
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
          object QRlblRepBalance_Ingresos: TQRLabel
            Left = 376
            Top = 18
            Width = 338
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              994.833333333333300000
              47.625000000000000000
              894.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Saldo Total: XXXXX'
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
          object QRlblRepBalance_Egresos: TQRLabel
            Left = 376
            Top = 34
            Width = 338
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              994.833333333333300000
              89.958333333333330000
              894.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Saldo Total: XXXXX'
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
          object QRlblRepBalance_SaldoFinal: TQRLabel
            Left = 488
            Top = 50
            Width = 226
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1291.166666666667000000
              132.291666666666700000
              597.958333333333300000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Saldo Total: XXXXX'
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
        object TitleBand2: TQRBand
          Tag = 99
          Left = 38
          Top = 110
          Width = 718
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
            82.020833333333330000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRlblRepBalance_CritBusqueda: TQRLabel
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
            AutoStretch = True
            Caption = 'QRlblRepBalance_CritBusqueda'
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
          Width = 718
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clSilver
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel29: TQRLabel
            Left = 5
            Top = 2
            Width = 92
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
              243.416666666666700000)
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
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel30: TQRLabel
            Left = 102
            Top = 2
            Width = 150
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              269.875000000000000000
              5.291666666666667000
              396.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Total Ingresos'
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
            Left = 564
            Top = 2
            Width = 150
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1492.250000000000000000
              5.291666666666667000
              396.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Saldo Total'
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
            Left = 256
            Top = 2
            Width = 150
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              677.333333333333300000
              5.291666666666667000
              396.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Total Egresos'
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
            Left = 410
            Top = 2
            Width = 150
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1084.791666666667000000
              5.291666666666667000
              396.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Saldo D'#237'a'
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
      object PanelMes: TPanel
        Left = 0
        Top = 0
        Width = 846
        Height = 428
        Align = alClient
        TabOrder = 0
        object DBGridBalance: TDBGrid
          Left = 1
          Top = 34
          Width = 844
          Height = 306
          Align = alClient
          Color = 14606012
          DataSource = DS_Balance
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha'
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INGRESO'
              Title.Alignment = taCenter
              Title.Caption = 'Total Ingresos'
              Width = 153
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EGRESO'
              Title.Alignment = taCenter
              Title.Caption = 'Total Egresos'
              Width = 137
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDODIARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo Dia'
              Width = 153
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDO'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo Total'
              Width = 143
              Visible = True
            end>
        end
        object PanelMes_Resumen: TPanel
          Left = 1
          Top = 340
          Width = 844
          Height = 87
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            844
            87)
          object Label11: TLabel
            Left = 614
            Top = 7
            Width = 85
            Height = 16
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = 'Saldo Inicial:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 622
            Top = 62
            Width = 77
            Height = 16
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = 'Saldo Final:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 598
            Top = 24
            Width = 101
            Height = 16
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = 'Total Ingresos:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 603
            Top = 42
            Width = 96
            Height = 16
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = 'Total Egresos:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Shape1: TShape
            Left = 576
            Top = 60
            Width = 276
            Height = 1
            Anchors = [akTop, akRight]
            Pen.Color = clGray
          end
          object lblBalanceTotalIngresos: TLabel
            Left = 699
            Top = 24
            Width = 140
            Height = 16
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            AutoSize = False
            Caption = '$ 0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblBalanceTotalEgresos: TLabel
            Left = 699
            Top = 42
            Width = 140
            Height = 16
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            AutoSize = False
            Caption = '$ 0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblBalanceSaldoFinal: TLabel
            Left = 699
            Top = 62
            Width = 140
            Height = 16
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            AutoSize = False
            Caption = '$ 0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblBalanceSaldoInicial: TLabel
            Left = 699
            Top = 7
            Width = 140
            Height = 16
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            AutoSize = False
            Caption = '$ 0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 844
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 4
          TabOrder = 2
          object lblBalanceSucursal: TLabel
            Left = 4
            Top = 17
            Width = 836
            Height = 13
            Align = alTop
            Caption = 'lblBalanceSucursal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object lblBalanceFecha: TLabel
            Left = 4
            Top = 4
            Width = 836
            Height = 13
            Align = alTop
            Caption = 'lblBalanceFecha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
      end
    end
    object TabBalanceGrafico: TTabSheet
      Caption = 'Balance (Grafico)'
      ImageIndex = 2
      object DBChartBalance: TDBChart
        Left = 0
        Top = 0
        Width = 846
        Height = 428
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        BackWall.Color = clSilver
        Gradient.EndColor = 14737632
        Gradient.StartColor = 4473924
        Gradient.Visible = True
        LeftWall.Brush.Color = clWhite
        Title.Brush.Color = clWhite
        Title.Brush.Style = bsClear
        Title.Color = clWhite
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Title.Text.Strings = (
          'Balance Movimientos Internos')
        BackColor = clSilver
        LeftAxis.Grid.Color = 13290186
        LeftAxis.MinorTickLength = 1
        LeftAxis.Ticks.Color = clSilver
        LeftAxis.TicksInner.Color = clSilver
        Legend.Alignment = laBottom
        Legend.Frame.Visible = False
        Legend.ResizeChart = False
        Legend.ShadowSize = 1
        Legend.TextStyle = ltsPlain
        Legend.TopPos = 11
        Legend.Visible = False
        View3D = False
        View3DOptions.Elevation = 315
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        View3DWalls = False
        Align = alClient
        BevelOuter = bvNone
        BevelWidth = 0
        TabOrder = 0
        OnMouseMove = DBChartEgresosMouseMove
        object Series4: TFastLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          DataSource = ZS_Balance
          SeriesColor = clRed
          ShowInLegend = False
          Title = 'Egresos linea'
          LinePen.Color = clRed
          LinePen.Width = 2
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'FECHA'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'EGRESO'
        end
        object Series2: TPointSeries
          Marks.Arrow.Visible = False
          Marks.ArrowLength = 6
          Marks.Font.Charset = DEFAULT_CHARSET
          Marks.Font.Color = clBlack
          Marks.Font.Height = -8
          Marks.Font.Name = 'Arial'
          Marks.Font.Style = []
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = ZS_Balance
          SeriesColor = clRed
          ShowInLegend = False
          Title = 'Egresos ptos'
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'FECHA'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'EGRESO'
        end
        object Series5: TFastLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = ZS_Balance
          SeriesColor = clLime
          ShowInLegend = False
          Title = 'Ingresos linea'
          LinePen.Color = clLime
          LinePen.Width = 2
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'FECHA'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'INGRESO'
        end
        object Series3: TPointSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = False
          DataSource = ZS_Balance
          SeriesColor = clLime
          ShowInLegend = False
          Title = 'Ingresos ptos'
          Pointer.Draw3D = False
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = True
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          XValues.ValueSource = 'FECHA'
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'INGRESO'
        end
      end
    end
    object TabMovimientos: TTabSheet
      Caption = 'Listado Movimientos'
      object RepListado: TQuickRep
        Tag = 99
        Left = 52
        Top = -695
        Width = 794
        Height = 1123
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        DataSet = ZQ_Movimientos
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
        ReportTitle = '+'
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
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageHeader
          object QRRepListadoDBLogo: TQRDBImage
            Left = 66
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
              174.625000000000000000
              5.291666666666667000
              169.333333333333300000)
            DataField = 'LOGO'
            Stretch = True
          end
          object QRLabel4: TQRLabel
            Left = 249
            Top = 47
            Width = 219
            Height = 19
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              50.270833333333330000
              658.812500000000000000
              124.354166666666700000
              579.437500000000000000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'LISTADO MOVIMIENTOS'
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
          object RepListado_Subtitulo: TQRLabel
            Left = -64
            Top = 26
            Width = 143
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              759.354166666666700000
              68.791666666666670000
              378.354166666666700000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'RepListado_Subtitulo'
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
          object RepListado_Titulo: TQRLabel
            Left = -72
            Top = 2
            Width = 159
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666670000
              738.187500000000000000
              5.291666666666667000
              420.687500000000000000)
            Alignment = taCenter
            AlignToBand = True
            AutoSize = True
            AutoStretch = False
            Caption = 'RepListado_Titulo'
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
        object QRBand2: TQRBand
          Tag = 99
          Left = 38
          Top = 159
          Width = 718
          Height = 14
          Frame.Color = clSilver
          Frame.DrawTop = False
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
            37.041666666666670000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText5: TQRDBText
            Left = 5
            Top = 0
            Width = 132
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              13.229166666666670000
              0.000000000000000000
              349.250000000000000000)
            Alignment = taCenter
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Movimientos
            DataField = 'FECHA'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText6: TQRDBText
            Left = 142
            Top = 0
            Width = 259
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
              685.270833333333300000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Movimientos
            DataField = 'NOMBRE_MOVIMIENTO'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText7: TQRDBText
            Left = 564
            Top = 0
            Width = 150
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1492.250000000000000000
              0.000000000000000000
              396.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Movimientos
            DataField = 'EGRESOS'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
          object QRDBText8: TQRDBText
            Left = 408
            Top = 0
            Width = 150
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1079.500000000000000000
              0.000000000000000000
              396.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Color = clWhite
            DataSet = ZQ_Movimientos
            DataField = 'INGRESOS'
            Transparent = False
            WordWrap = True
            ExportAs = exptText
            FontSize = 7
          end
        end
        object QRBand3: TQRBand
          Tag = 99
          Left = 38
          Top = 212
          Width = 718
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
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRlblRepListado_PieDePagina: TQRLabel
            Left = 4
            Top = 3
            Width = 138
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
              365.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'QRlblRepListado_PieDePagina'
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
          object QRLabel5: TQRLabel
            Left = 629
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
              1664.229166666667000000
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
          object QRSysData2: TQRSysData
            Left = 671
            Top = 3
            Width = 45
            Height = 20
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              52.916666666666660000
              1775.354166666667000000
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
        object QRBand4: TQRBand
          Tag = 99
          Left = 38
          Top = 173
          Width = 718
          Height = 39
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
            103.187500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbSummary
          object QRExpr1: TQRExpr
            Left = 4
            Top = 4
            Width = 186
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
              492.125000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Color = clWhite
            ResetAfterPrint = False
            Transparent = False
            WordWrap = True
            Expression = #39'Cantidad de Cuentas: '#39'+COUNT'
            ExportAs = exptText
            FontSize = 8
          end
          object QRlblRepListado_Ingresos: TQRLabel
            Left = 376
            Top = 2
            Width = 338
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              994.833333333333200000
              5.291666666666667000
              894.291666666666800000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Saldo Total: XXXXX'
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
          object QRlblRepListado_Egresos: TQRLabel
            Left = 376
            Top = 18
            Width = 338
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              994.833333333333300000
              47.625000000000000000
              894.291666666666700000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Saldo Total: XXXXX'
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
        object QRBand5: TQRBand
          Tag = 99
          Left = 38
          Top = 110
          Width = 718
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
            82.020833333333330000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRlblRepListado_CritBusqueda: TQRLabel
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
            AutoStretch = True
            Caption = 'QRlblRepListado_CritBusqueda'
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
          object QRLabel6: TQRLabel
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
        object QRBand6: TQRBand
          Tag = 99
          Left = 38
          Top = 141
          Width = 718
          Height = 18
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          AlignToBottom = False
          Color = clSilver
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            47.625000000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbColumnHeader
          object QRLabel7: TQRLabel
            Left = 4
            Top = 2
            Width = 132
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
              349.250000000000000000)
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
            ExportAs = exptText
            FontSize = 8
          end
          object QRLabel8: TQRLabel
            Left = 142
            Top = 2
            Width = 108
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              375.708333333333300000
              5.291666666666667000
              285.750000000000000000)
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = True
            AutoStretch = False
            Caption = 'Tipo Movimiento'
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
          object QRLabel9: TQRLabel
            Left = 564
            Top = 2
            Width = 150
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1492.250000000000000000
              5.291666666666667000
              396.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Egresos'
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
            Left = 408
            Top = 2
            Width = 150
            Height = 14
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              37.041666666666670000
              1079.500000000000000000
              5.291666666666667000
              396.875000000000000000)
            Alignment = taRightJustify
            AlignToBand = False
            AutoSize = False
            AutoStretch = False
            Caption = 'Ingresos'
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
      object PanelMov_Datos: TPanel
        Left = 0
        Top = 0
        Width = 846
        Height = 428
        Align = alClient
        TabOrder = 0
        object lblMov_TotalEgresos: TLabel
          Left = 1
          Top = 399
          Width = 844
          Height = 14
          Align = alBottom
          Alignment = taRightJustify
          Caption = 'Total Egresos: $ 0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object lblMov_TotalIngresos: TLabel
          Left = 1
          Top = 413
          Width = 844
          Height = 14
          Align = alBottom
          Alignment = taRightJustify
          Caption = 'Total Ingresos: $ 0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object DBGridMovimientos: TDBGrid
          Left = 1
          Top = 34
          Width = 844
          Height = 365
          Align = alClient
          Color = 14606012
          DataSource = DS_Movimientos
          DefaultDrawing = False
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha'
              Width = 164
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE_MOVIMIENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Movimiento'
              Width = 308
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INGRESOS'
              Title.Alignment = taCenter
              Title.Caption = 'Ingresos'
              Width = 123
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EGRESOS'
              Title.Alignment = taCenter
              Title.Caption = 'Egresos'
              Width = 127
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 844
          Height = 33
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 4
          TabOrder = 1
          object lblMovSucursal: TLabel
            Left = 4
            Top = 17
            Width = 836
            Height = 13
            Align = alTop
            Caption = 'lblMovSucursal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object lblMovFecha: TLabel
            Left = 4
            Top = 4
            Width = 836
            Height = 13
            Align = alTop
            Caption = 'lblMovFecha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
      end
    end
    object TabIngresos_Egresos: TTabSheet
      Caption = 'Ingresos vs. Egresos'
      ImageIndex = 1
      object PanelIngresos: TPanel
        Left = 424
        Top = 33
        Width = 422
        Height = 395
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 422
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'INGRESOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTotalIngresos: TLabel
          Left = 0
          Top = 42
          Width = 422
          Height = 13
          Align = alBottom
          Alignment = taCenter
          Caption = 'Total: 0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object DBGridIngresos: TDBGrid
          Left = 0
          Top = 13
          Width = 422
          Height = 29
          Align = alClient
          Color = 14606012
          DataSource = DS_Ingresos
          DefaultDrawing = False
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'NOMBRE_MOVIMIENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Movimiento'
              Width = 276
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM'
              Title.Alignment = taCenter
              Title.Caption = 'Total Ingresos'
              Width = 135
              Visible = True
            end>
        end
        object DBChartIngresos: TDBChart
          Left = 0
          Top = 55
          Width = 422
          Height = 340
          AllowPanning = pmNone
          AllowZoom = False
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          BackWall.Color = clSilver
          BackWall.Pen.Visible = False
          Gradient.EndColor = clSilver
          Gradient.StartColor = clBlack
          Gradient.Visible = True
          LeftWall.Brush.Color = clWhite
          Title.Brush.Color = clWhite
          Title.Brush.Style = bsClear
          Title.Color = clWhite
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Title.Text.Strings = (
            'INGRESOS')
          AxisVisible = False
          BackColor = clSilver
          ClipPoints = False
          Frame.Visible = False
          LeftAxis.MinorTickLength = 1
          Legend.Alignment = laBottom
          Legend.Frame.Visible = False
          Legend.ResizeChart = False
          Legend.ShadowSize = 1
          Legend.TextStyle = ltsPlain
          Legend.Visible = False
          ScaleLastPage = False
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          View3DWalls = False
          Align = alBottom
          BevelOuter = bvNone
          BevelWidth = 0
          TabOrder = 1
          OnMouseMove = DBChartIngresosMouseMove
          object PieSeries1: TPieSeries
            Marks.Arrow.Visible = False
            Marks.ArrowLength = 8
            Marks.Frame.Visible = False
            Marks.Style = smsPercent
            Marks.Transparent = True
            Marks.Visible = False
            DataSource = ZQ_Ingresos
            SeriesColor = clRed
            Title = 'Ingresos'
            XLabelsSource = 'NOMBRE_MOVIMIENTO'
            Circled = True
            CircleBackColor = 33023
            OtherSlice.Text = 'Other'
            PieValues.DateTime = False
            PieValues.Name = 'Pie'
            PieValues.Multiplier = 1.000000000000000000
            PieValues.Order = loAscending
            PieValues.ValueSource = 'SUM'
            RotationAngle = 135
          end
        end
      end
      object PanelEgresos: TPanel
        Left = 0
        Top = 33
        Width = 420
        Height = 395
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 420
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'EGRESOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTotalEgresos: TLabel
          Left = 0
          Top = 42
          Width = 420
          Height = 13
          Align = alBottom
          Alignment = taCenter
          Caption = 'Total: 0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object DBGridEgresos: TDBGrid
          Left = 0
          Top = 13
          Width = 420
          Height = 29
          Align = alClient
          Color = 14606012
          DataSource = DS_Egresos
          DefaultDrawing = False
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'NOMBRE_MOVIMIENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Movimiento'
              Width = 266
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SUM'
              Title.Alignment = taCenter
              Title.Caption = 'Total Egresos'
              Width = 141
              Visible = True
            end>
        end
        object DBChartEgresos: TDBChart
          Left = 0
          Top = 55
          Width = 420
          Height = 340
          AllowPanning = pmNone
          AllowZoom = False
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          BackWall.Color = clSilver
          BackWall.Pen.Visible = False
          Gradient.EndColor = clSilver
          Gradient.StartColor = clBlack
          Gradient.Visible = True
          LeftWall.Brush.Color = clWhite
          Title.Brush.Color = clWhite
          Title.Brush.Style = bsClear
          Title.Color = clWhite
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Title.Text.Strings = (
            'EGRESOS')
          AxisVisible = False
          BackColor = clSilver
          ClipPoints = False
          Frame.Visible = False
          LeftAxis.MinorTickLength = 1
          Legend.Alignment = laBottom
          Legend.Frame.Visible = False
          Legend.ResizeChart = False
          Legend.ShadowSize = 1
          Legend.TextStyle = ltsPlain
          Legend.TopPos = 11
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          View3DWalls = False
          Align = alBottom
          BevelOuter = bvNone
          BevelWidth = 0
          TabOrder = 1
          OnMouseMove = DBChartEgresosMouseMove
          object Series1: TPieSeries
            Marks.Arrow.Visible = False
            Marks.ArrowLength = 8
            Marks.Frame.Visible = False
            Marks.Style = smsPercent
            Marks.Transparent = True
            Marks.Visible = False
            DataSource = ZQ_Egresos
            SeriesColor = clRed
            ShowInLegend = False
            XLabelsSource = 'NOMBRE_MOVIMIENTO'
            Circled = True
            OtherSlice.Text = 'Other'
            PieValues.DateTime = False
            PieValues.Name = 'Pie'
            PieValues.Multiplier = 1.000000000000000000
            PieValues.Order = loAscending
            PieValues.ValueSource = 'SUM'
            RotationAngle = 135
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 846
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 2
        object lblIngEgrSucursal: TLabel
          Left = 4
          Top = 17
          Width = 838
          Height = 13
          Align = alTop
          Caption = 'lblIngEgrSucursal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object lblIngEgrFecha: TLabel
          Left = 4
          Top = 4
          Width = 838
          Height = 13
          Align = alTop
          Caption = 'lblIngEgrFecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
      end
      object Panel3: TPanel
        Left = 420
        Top = 33
        Width = 4
        Height = 395
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 3
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
            Item = btnBuscar
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnImprimir
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
    Left = 792
    Top = 317
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
    object GrupoEditando: TdxBarGroup
      Items = (
        'btnBuscar'
        'btnSalir'
        'btnImprimir')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
    end
  end
  object ZQ_Movimientos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select c.fecha, c.id_comprobante, c.id_tipo_cpb, c.id_tipo_movim' +
        'iento,'
      '       c.id_sucursal, m.nombre_movimiento,'
      '        CASE'
      '            WHEN (c.id_tipo_cpb = 16) THEN c.importe_total'
      '            WHEN (c.id_tipo_cpb = 17) THEN 0'
      '        END as Ingresos,'
      '        CASE'
      '            WHEN (c.id_tipo_cpb = 16) THEN 0'
      '            WHEN (c.id_tipo_cpb = 17) THEN c.importe_total'
      '        END as Egresos'
      'from comprobante c'
      
        'left join tipo_movimiento m on (c.id_tipo_movimiento = m.id_tipo' +
        '_movimiento)'
      'where ((c.id_tipo_cpb = 16) or (c.id_tipo_cpb = 17))'
      
        '  and (cast (c.fecha as date) between :fecha_desde and :fecha_ha' +
        'sta)'
      
        '  and ((c.fecha_anulado is null) or (c.fecha_anulado > :fecha_ha' +
        'sta))'
      '  and ((c.id_sucursal = :id_sucursal) or (:id_sucursal = -1))'
      'order by c.fecha')
    Params = <
      item
        DataType = ftTime
        Name = 'fecha_desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftTime
        Name = 'fecha_hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    Left = 52
    Top = 66
    ParamData = <
      item
        DataType = ftTime
        Name = 'fecha_desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftTime
        Name = 'fecha_hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    object ZQ_MovimientosFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object ZQ_MovimientosID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
      Required = True
    end
    object ZQ_MovimientosID_TIPO_CPB: TIntegerField
      FieldName = 'ID_TIPO_CPB'
      Required = True
    end
    object ZQ_MovimientosID_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_TIPO_MOVIMIENTO'
    end
    object ZQ_MovimientosID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
      Required = True
    end
    object ZQ_MovimientosNOMBRE_MOVIMIENTO: TStringField
      FieldName = 'NOMBRE_MOVIMIENTO'
      Size = 200
    end
    object ZQ_MovimientosINGRESOS: TFloatField
      FieldName = 'INGRESOS'
      ReadOnly = True
      currency = True
    end
    object ZQ_MovimientosEGRESOS: TFloatField
      FieldName = 'EGRESOS'
      ReadOnly = True
      currency = True
    end
  end
  object DS_Movimientos: TDataSource
    DataSet = ZQ_Movimientos
    Left = 52
    Top = 114
  end
  object ZQ_Ingresos: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_IngresosAfterScroll
    SQL.Strings = (
      
        'select c.id_tipo_movimiento, m.nombre_movimiento, sum(c.importe_' +
        'total)'
      'from comprobante c'
      
        'left join tipo_movimiento m on (c.id_tipo_movimiento = m.id_tipo' +
        '_movimiento)'
      'where (c.id_tipo_cpb = 16)'
      
        '  and (cast (c.fecha as date) between :fecha_desde and :fecha_ha' +
        'sta)'
      
        '  and ((c.fecha_anulado is null) or (c.fecha_anulado > :fecha_ha' +
        'sta))'
      '  and ((c.id_sucursal = :id_sucursal) or (:id_sucursal = -1))'
      'group by c.id_tipo_movimiento, m.nombre_movimiento'
      'order by c.id_tipo_movimiento, m.nombre_movimiento')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fecha_desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    Left = 162
    Top = 66
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fecha_desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    object ZQ_IngresosID_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_TIPO_MOVIMIENTO'
    end
    object ZQ_IngresosNOMBRE_MOVIMIENTO: TStringField
      FieldName = 'NOMBRE_MOVIMIENTO'
      Size = 200
    end
    object ZQ_IngresosSUM: TFloatField
      FieldName = 'SUM'
      ReadOnly = True
      currency = True
    end
  end
  object ZQ_Egresos: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_EgresosAfterScroll
    SQL.Strings = (
      
        'select c.id_tipo_movimiento, m.nombre_movimiento, sum(c.importe_' +
        'total)'
      'from comprobante c'
      
        'left join tipo_movimiento m on (c.id_tipo_movimiento = m.id_tipo' +
        '_movimiento)'
      'where (c.id_tipo_cpb = 17)'
      
        '  and (cast (c.fecha as date) between :fecha_desde and :fecha_ha' +
        'sta)'
      
        '  and ((c.fecha_anulado is null) or (c.fecha_anulado > :fecha_ha' +
        'sta))'
      '  and ((c.id_sucursal = :id_sucursal) or (:id_sucursal = -1))'
      'group by c.id_tipo_movimiento, m.nombre_movimiento'
      'order by c.id_tipo_movimiento, m.nombre_movimiento')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fecha_desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    Left = 276
    Top = 66
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fecha_desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_hasta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    object ZQ_EgresosID_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_TIPO_MOVIMIENTO'
    end
    object ZQ_EgresosNOMBRE_MOVIMIENTO: TStringField
      FieldName = 'NOMBRE_MOVIMIENTO'
      Size = 200
    end
    object ZQ_EgresosSUM: TFloatField
      FieldName = 'SUM'
      ReadOnly = True
      currency = True
    end
  end
  object DS_Ingresos: TDataSource
    DataSet = ZQ_Ingresos
    Left = 162
    Top = 114
  end
  object DS_Egresos: TDataSource
    DataSet = ZQ_Egresos
    Left = 276
    Top = 114
  end
  object EKDbSuma_Ingresos: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'sum'
      end>
    DataSet = ZQ_Ingresos
    SumListChanged = EKDbSuma_IngresosSumListChanged
    Left = 163
    Top = 167
  end
  object EKDbSuma_Egresos: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'sum'
      end>
    DataSet = ZQ_Egresos
    SumListChanged = EKDbSuma_EgresosSumListChanged
    Left = 277
    Top = 167
  end
  object EKDbSuma_Mov: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'ingresos'
      end
      item
        Operacion = goSum
        NombreCampo = 'egresos'
      end>
    DataSet = ZQ_Movimientos
    SumListChanged = EKDbSuma_MovSumListChanged
    Left = 53
    Top = 167
  end
  object EKBuscar_Mov: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Fecha Desde'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
        VaciarValor = False
      end
      item
        Titulo = 'Fecha Hasta'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
        VaciarValor = False
      end
      item
        Titulo = 'Sucursal'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndice = 1
        TipoCampoIndiceVer = 'Igual'
        TipoComboSQL = ZQ_Sucursal
        TipoComboSQLCampoVer = 'nombre'
        TipoComboSQLCampoReal = 'id_sucursal'
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Movimiento'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Tipo'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndice = 1
        TipoCampoIndiceVer = 'Igual'
        TipoComboEditable = False
        TipoComboValoresVer.Strings = (
          'INGRESOS'
          'EGRESOS')
        TipoComboValoresReales.Strings = (
          '16'
          '17')
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Importe'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    UsarWhereOriginal = EK_Sin_Where
    PantallaReducida = True
    Left = 52
    Top = 216
  end
  object ZQ_Sucursal: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from Sucursal s'
      'order by s.nombre')
    Params = <>
    Left = 52
    Top = 272
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
  object ZS_Balance: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftDate
        Name = 'FECHA'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'INGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'EGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDODIARIO'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHA_HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL'
        ParamType = ptInput
      end>
    StoredProcName = 'BALANCE_MENSUAL_DETALLE'
    Left = 586
    Top = 67
    ParamData = <
      item
        DataType = ftDate
        Name = 'FECHA'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'INGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'EGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDODIARIO'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHA_HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL'
        ParamType = ptInput
      end>
    object ZS_BalanceFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZS_BalanceINGRESO: TFloatField
      FieldName = 'INGRESO'
      currency = True
    end
    object ZS_BalanceEGRESO: TFloatField
      FieldName = 'EGRESO'
      currency = True
    end
    object ZS_BalanceSALDO: TFloatField
      FieldName = 'SALDO'
      currency = True
    end
    object ZS_BalanceSALDODIARIO: TFloatField
      FieldName = 'SALDODIARIO'
      currency = True
    end
  end
  object DS_Balance: TDataSource
    DataSet = ZS_Balance
    Left = 586
    Top = 119
  end
  object EKSuma_Balance: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'INGRESO'
      end
      item
        Operacion = goSum
        NombreCampo = 'EGRESO'
      end>
    DataSet = ZS_Balance
    Left = 586
    Top = 183
  end
  object ZS_CalcSaldos: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftDate
        Name = 'FECHA'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'INGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'EGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDODIARIO'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHA_HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL'
        ParamType = ptInput
      end>
    StoredProcName = 'BALANCE_MENSUAL_DETALLE'
    Left = 674
    Top = 67
    ParamData = <
      item
        DataType = ftDate
        Name = 'FECHA'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'INGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'EGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDODIARIO'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHA_DESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHA_HASTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL'
        ParamType = ptInput
      end>
    object ZS_CalcSaldosFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZS_CalcSaldosINGRESO: TFloatField
      FieldName = 'INGRESO'
    end
    object ZS_CalcSaldosEGRESO: TFloatField
      FieldName = 'EGRESO'
    end
    object ZS_CalcSaldosSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object ZS_CalcSaldosSALDODIARIO: TFloatField
      FieldName = 'SALDODIARIO'
    end
  end
  object EKOrdenarGrillaBalance: TEKOrdenarGrilla
    Grilla = DBGridBalance
    Filtros = <
      item
        TituloColumna = 'Fecha'
        Visible = True
      end
      item
        TituloColumna = 'Total Ingresos'
        Visible = True
      end
      item
        TituloColumna = 'Total Egresos'
        Visible = True
      end
      item
        TituloColumna = 'Saldo Dia'
        Visible = True
      end
      item
        TituloColumna = 'Saldo Total'
        Visible = True
      end>
    NombreGuardar = 'EKOrdenarGrillaBalance'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = False
    Left = 52
    Top = 328
  end
  object EKBuscarBalance: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Fecha Desde'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
        VaciarValor = False
      end
      item
        Titulo = 'Fecha Hasta'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
        VaciarValor = False
      end
      item
        Titulo = 'Sucursal'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndice = 1
        TipoCampoIndiceVer = 'Igual'
        TipoComboSQL = ZQ_Sucursal
        TipoComboSQLCampoVer = 'nombre'
        TipoComboSQLCampoReal = 'id_sucursal'
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    UsarWhereOriginal = EK_Sin_Where
    PantallaReducida = True
    Left = 588
    Top = 240
  end
  object ATeclasRapidas: TActionManager
    Left = 216
    Top = 274
    StyleName = 'XP Style'
    object ABuscar: TAction
      Caption = 'ABuscar'
      ShortCut = 112
      OnExecute = ABuscarExecute
    end
  end
  object EKVistaBalance: TEKVistaPreviaQR
    Reporte = RepBalance
    ShowModal = False
    Left = 592
    Top = 289
  end
  object EKVistaListado: TEKVistaPreviaQR
    Reporte = RepListado
    ShowModal = False
    Left = 56
    Top = 377
  end
  object EKBuscaIngEgr: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Fecha Desde'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
        VaciarValor = False
      end
      item
        Titulo = 'Fecha Hasta'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
        VaciarValor = False
      end
      item
        Titulo = 'Sucursal'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndice = 1
        TipoCampoIndiceVer = 'Igual'
        TipoComboSQL = ZQ_Sucursal
        TipoComboSQLCampoVer = 'nombre'
        TipoComboSQLCampoReal = 'id_sucursal'
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    UsarWhereOriginal = EK_Sin_Where
    PantallaReducida = True
    Left = 212
    Top = 224
  end
end
