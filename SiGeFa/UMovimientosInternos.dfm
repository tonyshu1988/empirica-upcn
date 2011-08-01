object FMovimientosInternos: TFMovimientosInternos
  Left = 294
  Top = 190
  Width = 1056
  Height = 559
  Caption = 'Movimientos Internos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
  object TQuickRep
    Tag = 99
    Left = 28
    Top = -654
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
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
      object QRDBLogo: TQRDBImage
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
        Left = 316
        Top = 47
        Width = 85
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          836.083333333333300000
          124.354166666666700000
          224.895833333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'CUENTAS'
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
      object RepCuentas_Subtitulo: TQRLabel
        Left = 284
        Top = 26
        Width = 150
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          751.416666666666700000
          68.791666666666670000
          396.875000000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'RepCuentas_Subtitulo'
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
      object RepCuentas_Titulo: TQRLabel
        Left = 275
        Top = 2
        Width = 168
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          727.604166666666700000
          5.291666666666667000
          444.500000000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'RepCuentas_Titulo'
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
        Width = 65
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
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'CODIGO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRDBText1: TQRDBText
        Left = 76
        Top = 0
        Width = 309
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          201.083333333333300000
          0.000000000000000000
          817.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'NOMBRE_CUENTA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRDBText2: TQRDBText
        Left = 684
        Top = 0
        Width = 30
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1809.750000000000000000
          0.000000000000000000
          79.375000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'BAJA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 391
        Top = 0
        Width = 141
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1034.520833333333000000
          0.000000000000000000
          373.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = 'NRO_CTA_BANCARIA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRDBText4: TQRDBText
        Left = 538
        Top = 0
        Width = 141
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1423.458333333333000000
          0.000000000000000000
          373.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataField = '_medio'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
    end
    object QRBand11: TQRBand
      Tag = 99
      Left = 38
      Top = 195
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
      object QRlblPieDePagina: TQRLabel
        Left = 4
        Top = 3
        Width = 81
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
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRlblPieDePagina'
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
        58.208333333333330000
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
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      object QRLabel30: TQRLabel
        Left = 76
        Top = 2
        Width = 143
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          201.083333333333300000
          5.291666666666667000
          378.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
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
      object QRLabel1: TQRLabel
        Left = 684
        Top = 2
        Width = 30
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1809.750000000000000000
          5.291666666666667000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Baja'
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
        Left = 391
        Top = 2
        Width = 143
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1034.520833333333000000
          5.291666666666667000
          378.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Nro. Cta. Bancaria'
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
        Left = 538
        Top = 2
        Width = 143
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1423.458333333333000000
          5.291666666666667000
          378.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Medio Cobro/Pago'
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
  object PanelFondo: TPanel
    Left = 0
    Top = 0
    Width = 1040
    Height = 469
    Align = alClient
    BorderWidth = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object PanelCalendario: TPanel
      Tag = 99
      Left = 6
      Top = 6
      Width = 1028
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Color = clTeal
      TabOrder = 0
      DesignSize = (
        1028
        25)
      object PanelManejoCalendario: TPanel
        Tag = 99
        Left = 326
        Top = -1
        Width = 377
        Height = 29
        Anchors = []
        BevelOuter = bvNone
        Caption = 'SEPTIEMBRE 2011'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          377
          29)
        object SpeedBtn_AnioAnterior: TSpeedButton
          Left = 2
          Top = 2
          Width = 30
          Height = 23
          Anchors = []
          Caption = '<<'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedBtn_AnioAnteriorClick
        end
        object SpeedBtn_MesAnterior: TSpeedButton
          Left = 34
          Top = 2
          Width = 30
          Height = 23
          Anchors = []
          Caption = '<'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedBtn_MesAnteriorClick
        end
        object SpeedBtn_MesSiguiente: TSpeedButton
          Left = 312
          Top = 2
          Width = 30
          Height = 23
          Anchors = []
          Caption = '>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedBtn_MesSiguienteClick
        end
        object SpeedBtn_AnioSiguiente: TSpeedButton
          Left = 344
          Top = 2
          Width = 30
          Height = 23
          Anchors = []
          Caption = '>>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedBtn_AnioSiguienteClick
        end
        object SpeedBtn_Hoy: TSpeedButton
          Left = 66
          Top = 2
          Width = 30
          Height = 23
          Anchors = []
          Caption = 'Hoy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedBtn_HoyClick
        end
      end
    end
    object PanelMes: TPanel
      Left = 682
      Top = 31
      Width = 352
      Height = 432
      Align = alClient
      TabOrder = 1
      object PanelMes_Info: TPanel
        Left = 1
        Top = 1
        Width = 350
        Height = 20
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object lblBalanceMensual: TLabel
          Left = 0
          Top = 0
          Width = 350
          Height = 20
          Align = alClient
          Alignment = taCenter
          Caption = 'BALANCE DIARIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
      end
      object DBGrid_Mes: TDBGrid
        Left = 1
        Top = 21
        Width = 350
        Height = 323
        Align = alClient
        Color = 14606012
        DataSource = DS_Balance
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid_MesDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INGRESO'
            Title.Alignment = taCenter
            Title.Caption = 'Total Ingresos'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EGRESO'
            Title.Alignment = taCenter
            Title.Caption = 'Total Egresos'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDODIARIO'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo Dia'
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo Total'
            Width = 114
            Visible = True
          end>
      end
      object PanelMes_Resumen: TPanel
        Left = 1
        Top = 344
        Width = 350
        Height = 87
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        DesignSize = (
          350
          87)
        object Label11: TLabel
          Left = 110
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
          Left = 118
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
          Left = 94
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
          Left = 99
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
          Left = 72
          Top = 60
          Width = 276
          Height = 1
          Anchors = [akTop, akRight]
          Pen.Color = clGray
        end
        object lblTotalIngresos: TLabel
          Left = 195
          Top = 24
          Width = 140
          Height = 16
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          AutoSize = False
          Caption = 'lblTotalIngresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTotalEgresos: TLabel
          Left = 195
          Top = 42
          Width = 140
          Height = 16
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          AutoSize = False
          Caption = 'lblTotalEgresos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSaldoFinal: TLabel
          Left = 195
          Top = 62
          Width = 140
          Height = 16
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          AutoSize = False
          Caption = 'lblSaldoFinal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblSaldoInicial: TLabel
          Left = 195
          Top = 7
          Width = 140
          Height = 16
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          AutoSize = False
          Caption = 'lblSaldoInicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object PanelDia: TPanel
      Left = 6
      Top = 31
      Width = 676
      Height = 432
      Align = alLeft
      Caption = 'PanelDia'
      TabOrder = 2
      object PanelDia_Lista: TPanel
        Left = 1
        Top = 181
        Width = 674
        Height = 250
        Align = alClient
        TabOrder = 0
        object PanelDia_InfoLista: TPanel
          Left = 1
          Top = 1
          Width = 672
          Height = 14
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lblFechaHoy: TLabel
            Left = 0
            Top = 0
            Width = 672
            Height = 14
            Align = alClient
            Alignment = taCenter
            Caption = 'DIA DE HOY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
        object DBGrid_Dia: TDBGrid
          Left = 1
          Top = 15
          Width = 672
          Height = 234
          Align = alClient
          Color = 14606012
          DataSource = DS_MovHoy
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid_DiaDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMERO_CPB'
              Title.Alignment = taCenter
              Title.Caption = 'Numero'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_movimiento'
              Title.Alignment = taCenter
              Title.Caption = 'Movimiento'
              Width = 196
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVACION'
              Title.Alignment = taCenter
              Title.Caption = 'Detalle'
              Width = 278
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE_TOTAL'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Width = 121
              Visible = True
            end>
        end
      end
      object PanelDia_Movimiento: TPanel
        Left = 1
        Top = 1
        Width = 674
        Height = 180
        Align = alTop
        TabOrder = 1
        object PanelDia_InfoMovimiento: TPanel
          Left = 1
          Top = 1
          Width = 672
          Height = 14
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label2: TLabel
            Left = 0
            Top = 0
            Width = 672
            Height = 14
            Align = alClient
            Alignment = taCenter
            Caption = 'ALTA MOVIMIENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
        object GroupBox1: TGroupBox
          Left = 1
          Top = 15
          Width = 672
          Height = 164
          Align = alClient
          TabOrder = 0
          DesignSize = (
            672
            164)
          object Label3: TLabel
            Left = 44
            Top = 15
            Width = 38
            Height = 13
            Caption = 'Fecha:'
          end
          object Label4: TLabel
            Left = 12
            Top = 38
            Width = 70
            Height = 13
            Caption = 'Movimiento:'
          end
          object Label5: TLabel
            Left = 293
            Top = 38
            Width = 45
            Height = 13
            Caption = 'Detalle:'
          end
          object Label6: TLabel
            Left = 309
            Top = 15
            Width = 29
            Height = 13
            Caption = 'Tipo:'
          end
          object PanelDia_Cuentas: TPanel
            Left = 9
            Top = 62
            Width = 654
            Height = 91
            Align = alCustom
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelOuter = bvNone
            BorderWidth = 2
            TabOrder = 5
            object DBGridFormaPago: TDBGrid
              Left = 2
              Top = 2
              Width = 650
              Height = 74
              Align = alClient
              Color = 14606012
              DataSource = DS_CpbFormaPago
              Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = []
              OnExit = DBGridFormaPagoExit
              OnKeyUp = DBGridFormaPagoKeyUp
              Columns = <
                item
                  Expanded = False
                  FieldName = '_CuentaIngreso_Codigo'
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = '_CuentaIngreso_Nombre'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cuenta'
                  Width = 250
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = '_CuentaEgreso_Codigo'
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'digo'
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = '_CuentaEgreso_Nombre'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cuenta'
                  Width = 250
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = '_TipoFormaPago'
                  Title.Alignment = taCenter
                  Title.Caption = 'Forma Pago'
                  Width = 166
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IMPORTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Importe'
                  Width = 100
                  Visible = True
                end>
            end
            object Panel1: TPanel
              Left = 2
              Top = 76
              Width = 650
              Height = 13
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 1
              object lblTotalFormaPago: TLabel
                Left = 610
                Top = 0
                Width = 40
                Height = 13
                Align = alRight
                Alignment = taRightJustify
                Caption = '$ 0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object Label8: TLabel
                Left = 0
                Top = 0
                Width = 169
                Height = 13
                Align = alLeft
                Caption = 'Ctrl+Del para borrar linea'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label7: TLabel
                Left = 169
                Top = 0
                Width = 441
                Height = 13
                Align = alClient
                Alignment = taRightJustify
                Caption = 'Importe Total '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ParentFont = False
              end
            end
          end
          object EKDBDateTimePicker1: TEKDBDateTimePicker
            Left = 83
            Top = 11
            Width = 206
            Height = 21
            Date = 40735.843744895840000000
            Time = 40735.843744895840000000
            TabOrder = 0
            DataField = 'FECHA'
            DataSource = DS_Comprobante
          end
          object DBEdit1: TDBEdit
            Left = 339
            Top = 34
            Width = 321
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            DataField = 'OBSERVACION'
            DataSource = DS_Comprobante
            TabOrder = 4
          end
          object RadioButtonEgreso: TRadioButton
            Left = 430
            Top = 13
            Width = 70
            Height = 17
            Caption = 'Egreso'
            TabOrder = 2
            OnClick = RadioButtonEgresoClick
          end
          object RadioButtonIngreso: TRadioButton
            Left = 348
            Top = 13
            Width = 70
            Height = 17
            Caption = 'Ingreso'
            Checked = True
            TabOrder = 1
            TabStop = True
            OnClick = RadioButtonIngresoClick
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 83
            Top = 34
            Width = 206
            Height = 21
            DataField = 'ID_TIPO_MOVIMIENTO'
            DataSource = DS_Comprobante
            KeyField = 'ID_TIPO_MOVIMIENTO'
            ListField = 'NOMBRE_MOVIMIENTO'
            ListSource = DS_TipoMovimiento
            TabOrder = 3
          end
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
            Item = btnEliminar
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
    Left = 720
    Top = 261
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
    object btnEliminar: TdxBarLargeButton
      Caption = 'F4 - Eliminar'
      Category = 0
      Hint = 'Eliminar un registro'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btnEliminarClick
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
    object GrupoEditando: TdxBarGroup
      Items = (
        'btnNuevo'
        'btnModificar'
        'btnBuscar'
        'btnEliminar'
        'btnSalir'
        'btnImprimir')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'btnGuardar'
        'btnCancelar')
    end
  end
  object ATeclasRapidas: TActionManager
    Left = 720
    Top = 210
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
  object EKVistaPrevia: TEKVistaPreviaQR
    ShowModal = False
    Left = 720
    Top = 162
  end
  object ZQ_TipoMovimiento: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_movimiento t'
      'where t.baja = '#39'N'#39
      'order by t.nombre_movimiento')
    Params = <>
    Left = 371
    Top = 209
    object ZQ_TipoMovimientoID_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_TIPO_MOVIMIENTO'
      Required = True
    end
    object ZQ_TipoMovimientoNOMBRE_MOVIMIENTO: TStringField
      FieldName = 'NOMBRE_MOVIMIENTO'
      Size = 200
    end
    object ZQ_TipoMovimientoBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
  end
  object DS_TipoMovimiento: TDataSource
    DataSet = ZQ_TipoMovimiento
    Left = 371
    Top = 257
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
    Left = 221
    Top = 209
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
      OnChange = ZQ_ComprobanteID_TIPO_CPBChange
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
    object ZQ_ComprobanteID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_ComprobanteID_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_TIPO_MOVIMIENTO'
    end
  end
  object DS_Comprobante: TDataSource
    DataSet = ZQ_Comprobante
    Left = 221
    Top = 257
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
    Left = 461
    Top = 209
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
  object ZP_CpbID: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_COMPROBANTE_ID'
    Left = 143
    Top = 209
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
  object ZQ_MovHoy: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_MovHoyAfterScroll
    SQL.Strings = (
      'select c.*'
      'from comprobante c'
      'where ((c.id_tipo_cpb = 16) or (c.id_tipo_cpb = 17))'
      '  and cast(c.fecha as date)= :fecha'
      'order by c.fecha desc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end>
    Left = 73
    Top = 209
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end>
    object ZQ_MovHoyID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_MovHoyID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_MovHoyID_PROVEEDOR: TIntegerField
      FieldName = 'ID_PROVEEDOR'
    end
    object ZQ_MovHoyID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object ZQ_MovHoyID_TIPO_CPB: TIntegerField
      FieldName = 'ID_TIPO_CPB'
    end
    object ZQ_MovHoyID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object ZQ_MovHoyID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_MovHoyID_TIPO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_TIPO_MOVIMIENTO'
    end
    object ZQ_MovHoyFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object ZQ_MovHoyOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
      Size = 500
    end
    object ZQ_MovHoyIMPORTE_TOTAL: TFloatField
      FieldName = 'IMPORTE_TOTAL'
      currency = True
    end
    object ZQ_MovHoyPUNTO_VENTA: TIntegerField
      FieldName = 'PUNTO_VENTA'
    end
    object ZQ_MovHoyNUMERO_CPB: TIntegerField
      FieldName = 'NUMERO_CPB'
    end
    object ZQ_MovHoy_movimiento: TStringField
      FieldKind = fkLookup
      FieldName = '_movimiento'
      LookupDataSet = ZQ_TipoMovimiento
      LookupKeyFields = 'ID_TIPO_MOVIMIENTO'
      LookupResultField = 'NOMBRE_MOVIMIENTO'
      KeyFields = 'ID_TIPO_MOVIMIENTO'
      Size = 200
      Lookup = True
    end
  end
  object DS_MovHoy: TDataSource
    DataSet = ZQ_MovHoy
    Left = 73
    Top = 265
  end
  object ZS_Balance: TZStoredProc
    Connection = DM.Conexion
    AfterScroll = ZS_BalanceAfterScroll
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
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANIO'
        ParamType = ptInput
      end>
    StoredProcName = 'BALANCE_MENSUAL_DETALLE'
    Left = 826
    Top = 99
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
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANIO'
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
    Left = 826
    Top = 151
  end
  object ZQ_ListadoMedio: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select tipo.*'
      'from tipo_formapago tipo'
      'where tipo.id_tipo_formapago = :id_tipo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_tipo'
        ParamType = ptUnknown
      end>
    Left = 597
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_tipo'
        ParamType = ptUnknown
      end>
    object ZQ_ListadoMedioID_TIPO_FORMAPAGO: TIntegerField
      FieldName = 'ID_TIPO_FORMAPAGO'
    end
    object ZQ_ListadoMedioDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object ZQ_ListadoMedioBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
  end
  object EKListadoMedio: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select tipo.*'
      'from tipo_formapago tipo'
      'where tipo.baja = '#39'N'#39)
    CampoBuscar = 'descripcion'
    CampoClave = 'id_tipo_formapago'
    TituloVentana = 'Buscar Medio'
    Left = 597
    Top = 321
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
    Left = 509
    Top = 321
  end
  object ZQ_ListadoCuenta: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select cta.*'
      'from cuenta cta'
      'where cta.id_cuenta = :id_cuenta')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_cuenta'
        ParamType = ptUnknown
      end>
    Left = 509
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_cuenta'
        ParamType = ptUnknown
      end>
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
  end
  object DS_TipoFPago: TDataSource
    DataSet = ZQ_TipoFPago
    Left = 421
    Top = 369
  end
  object ZQ_TipoFPago: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select fp.*'
      'from tipo_formapago fp'
      'where fp.baja = '#39'N'#39)
    Params = <>
    Left = 421
    Top = 321
    object ZQ_TipoFPagoID_TIPO_FORMAPAGO: TIntegerField
      FieldName = 'ID_TIPO_FORMAPAGO'
    end
    object ZQ_TipoFPagoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object ZQ_TipoFPagoBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
  end
  object ZQ_Cuenta: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select cta.*, tipo.descripcion,'
      
        '       cta.nombre_cuenta||'#39' - '#39'||coalesce('#39'N'#176': '#39'||cta.nro_cta_ba' +
        'ncaria, '#39'N'#176': S/N'#39') as Busqueda'
      'from cuenta cta'
      
        'left join tipo_formapago tipo on (cta.medio_defecto = tipo.id_ti' +
        'po_formapago)'
      'where cta.baja = '#39'N'#39)
    Params = <>
    Left = 349
    Top = 321
    object ZQ_CuentaID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
    end
    object ZQ_CuentaMEDIO_DEFECTO: TIntegerField
      FieldName = 'MEDIO_DEFECTO'
    end
    object ZQ_CuentaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object ZQ_CuentaNOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 50
    end
    object ZQ_CuentaNRO_CTA_BANCARIA: TStringField
      FieldName = 'NRO_CTA_BANCARIA'
      Size = 10
    end
    object ZQ_CuentaBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_CuentaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 50
    end
    object ZQ_CuentaBUSQUEDA: TStringField
      FieldName = 'BUSQUEDA'
      ReadOnly = True
      Size = 67
    end
  end
  object DS_Cuenta: TDataSource
    DataSet = ZQ_Cuenta
    Left = 349
    Top = 369
  end
  object DS_CpbFormaPago: TDataSource
    DataSet = ZQ_CpbFormaPago
    Left = 221
    Top = 369
  end
  object ZQ_CpbFormaPago: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select fp.*'
      'from comprobante_forma_pago fp'
      'where fp.id_comprobante = :id_comprobante')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 221
    Top = 321
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_CpbFormaPagoID_COMPROB_FP: TIntegerField
      FieldName = 'ID_COMPROB_FP'
    end
    object ZQ_CpbFormaPagoID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_CpbFormaPagoID_TIPO_FORMAPAG: TIntegerField
      FieldName = 'ID_TIPO_FORMAPAG'
    end
    object ZQ_CpbFormaPagoMDCP_FECHA: TDateField
      FieldName = 'MDCP_FECHA'
      EditMask = '##/##/####;1;_'
    end
    object ZQ_CpbFormaPagoMDCP_BANCO: TStringField
      FieldName = 'MDCP_BANCO'
      Size = 50
    end
    object ZQ_CpbFormaPagoMDCP_CHEQUE: TStringField
      FieldName = 'MDCP_CHEQUE'
      Size = 50
    end
    object ZQ_CpbFormaPagoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object ZQ_CpbFormaPagoCONCILIADO: TDateField
      FieldName = 'CONCILIADO'
    end
    object ZQ_CpbFormaPagoCUENTA_INGRESO: TIntegerField
      FieldName = 'CUENTA_INGRESO'
    end
    object ZQ_CpbFormaPagoCUENTA_EGRESO: TIntegerField
      FieldName = 'CUENTA_EGRESO'
    end
    object ZQ_CpbFormaPago_CuentaIngreso_Nombre: TStringField
      FieldKind = fkLookup
      FieldName = '_CuentaIngreso_Nombre'
      LookupDataSet = ZQ_Cuenta
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'NOMBRE_CUENTA'
      KeyFields = 'CUENTA_INGRESO'
      Size = 50
      Lookup = True
    end
    object ZQ_CpbFormaPago_CuentaIngreso_Codigo: TStringField
      FieldKind = fkLookup
      FieldName = '_CuentaIngreso_Codigo'
      LookupDataSet = ZQ_Cuenta
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'CODIGO'
      KeyFields = 'CUENTA_INGRESO'
      Size = 10
      Lookup = True
    end
    object ZQ_CpbFormaPago_CuentaEgreso_Nombre: TStringField
      FieldKind = fkLookup
      FieldName = '_CuentaEgreso_Nombre'
      LookupDataSet = ZQ_Cuenta
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'NOMBRE_CUENTA'
      KeyFields = 'CUENTA_EGRESO'
      Size = 50
      Lookup = True
    end
    object ZQ_CpbFormaPago_CuentaEgreso_Codigo: TStringField
      FieldKind = fkLookup
      FieldName = '_CuentaEgreso_Codigo'
      LookupDataSet = ZQ_Cuenta
      LookupKeyFields = 'ID_CUENTA'
      LookupResultField = 'CODIGO'
      KeyFields = 'CUENTA_EGRESO'
      Size = 10
      Lookup = True
    end
    object ZQ_CpbFormaPago_TipoFormaPago: TStringField
      FieldKind = fkLookup
      FieldName = '_TipoFormaPago'
      LookupDataSet = ZQ_TipoFPago
      LookupKeyFields = 'ID_TIPO_FORMAPAGO'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'ID_TIPO_FORMAPAG'
      Size = 50
      Lookup = True
    end
  end
  object EKSuma_FPago: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'IMPORTE'
      end>
    DataSet = ZQ_CpbFormaPago
    SumListChanged = EKSuma_FPagoSumListChanged
    Left = 117
    Top = 321
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
    Left = 826
    Top = 215
  end
  object ZS_CalcSaldos: TZStoredProc
    Connection = DM.Conexion
    AfterScroll = ZS_BalanceAfterScroll
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
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANIO'
        ParamType = ptInput
      end>
    StoredProcName = 'BALANCE_MENSUAL_DETALLE'
    Left = 930
    Top = 99
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
        DataType = ftInteger
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANIO'
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
end
