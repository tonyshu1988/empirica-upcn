object FABMProductos: TFABMProductos
  Left = 175
  Top = 18
  AutoScroll = False
  Caption = 'ABM Productos'
  ClientHeight = 703
  ClientWidth = 981
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  DesignSize = (
    981
    703)
  PixelsPerInch = 96
  TextHeight = 13
  object panelImprimirListado: TPanel
    Left = 370
    Top = 413
    Width = 233
    Height = 100
    Anchors = []
    BorderWidth = 6
    TabOrder = 6
    Visible = False
    object Panel1: TPanel
      Left = 7
      Top = 69
      Width = 219
      Height = 24
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object btnImprimirListado_Aceptar: TButton
        Left = 0
        Top = 2
        Width = 75
        Height = 22
        Caption = 'Aceptar'
        TabOrder = 0
        OnClick = btnImprimirListado_AceptarClick
      end
      object btnImprimirListado_Salir: TButton
        Left = 142
        Top = 2
        Width = 75
        Height = 22
        Caption = 'Salir'
        TabOrder = 1
        OnClick = btnImprimirListado_SalirClick
      end
    end
    object RadioGroupImprimirListado: TRadioGroup
      Left = 7
      Top = 7
      Width = 219
      Height = 62
      Align = alClient
      Caption = ' Opciones Impresi'#243'n  '
      ItemIndex = 0
      Items.Strings = (
        'Imprimir con medidas'
        'Imprimir sin medidas')
      TabOrder = 1
    end
  end
  object RepProductoListado: TQuickRep
    Tag = 99
    Left = 14
    Top = 0
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = ZQ_ProductoCabecera
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
      object RepProductoListado_Subtitulo: TQRLabel
        Left = 422
        Top = 26
        Width = 203
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1116.541666666667000000
          68.791666666666670000
          537.104166666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'RepProductoListado_Subtitulo'
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
      object RepProductoListado_Titulo: TQRLabel
        Left = 404
        Top = 2
        Width = 239
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1068.916666666667000000
          5.291666666666667000
          632.354166666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'RepProductoListado_Titulo'
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
        34.395833333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText19: TQRDBText
        Left = 4
        Top = 1
        Width = 100
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
          264.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_ProductoCabecera
        DataField = 'COD_CORTO'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRDBText1: TQRDBText
        Left = 117
        Top = 1
        Width = 234
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          309.562500000000000000
          2.645833333333333000
          619.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_ProductoCabecera
        DataField = 'NOMBRE'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRDBText2: TQRDBText
        Left = 1014
        Top = 1
        Width = 30
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          2682.875000000000000000
          2.645833333333333000
          79.375000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_ProductoCabecera
        DataField = 'BAJA'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 357
        Top = 1
        Width = 170
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          944.562500000000000000
          2.645833333333333000
          449.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_ProductoCabecera
        DataField = '_marca'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRDBText4: TQRDBText
        Left = 532
        Top = 1
        Width = 219
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          1407.583333333333000000
          2.645833333333333000
          579.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_ProductoCabecera
        DataField = '_tipoArticulo'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 756
        Top = 1
        Width = 251
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          2000.250000000000000000
          2.645833333333333000
          664.104166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_ProductoCabecera
        DataField = '_color'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
    end
    object QRBand11: TQRBand
      Tag = 99
      Left = 38
      Top = 220
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
      object QRlblPieDePaginaListado: TQRLabel
        Left = 4
        Top = 3
        Width = 115
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
          304.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRlblPieDePaginaListado'
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
      Top = 198
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
        58.208333333333330000
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
        82.020833333333330000
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
        Width = 100
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
          264.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C'#243'd. Corto'
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
        Left = 117
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
          309.562500000000000000
          5.291666666666667000
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
      object QRLabel1: TQRLabel
        Left = 1014
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
          2682.875000000000000000
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
        Left = 357
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
          944.562500000000000000
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
      object QRLabel3: TQRLabel
        Left = 532
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
          1407.583333333333000000
          5.291666666666667000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tipo Art'#237'culo'
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
        Left = 756
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
          2000.250000000000000000
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
    end
    object BandaMedidasDatos: TQRSubDetail
      Tag = 99
      Left = 38
      Top = 184
      Width = 1047
      Height = 14
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
        37.041666666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Master = RepProductoListado
      DataSet = ZQ_DetalleProducto
      PrintBefore = False
      PrintIfEmpty = True
      object QRDBText21: TQRDBText
        Left = 132
        Top = 0
        Width = 91
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          349.250000000000000000
          0.000000000000000000
          240.770833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_DetalleProducto
        DataField = 'COD_CORTO'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText22: TQRDBText
        Left = 227
        Top = 0
        Width = 209
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          600.604166666666800000
          0.000000000000000000
          552.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_DetalleProducto
        DataField = '_medida'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText6: TQRDBText
        Left = 475
        Top = 0
        Width = 117
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          1256.770833333333000000
          0.000000000000000000
          309.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_DetalleProducto
        DataField = 'STOCK_MAX'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText7: TQRDBText
        Left = 596
        Top = 0
        Width = 117
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          1576.916666666667000000
          0.000000000000000000
          309.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_DetalleProducto
        DataField = 'STOCK_MIN'
        Font.Charset = ANSI_CHARSET
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
      object QRDBText8: TQRDBText
        Left = 440
        Top = 0
        Width = 30
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          1164.166666666667000000
          0.000000000000000000
          79.375000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_DetalleProducto
        DataField = 'LLEVAR_STOCK'
        Font.Charset = ANSI_CHARSET
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
      object QRFrameline4: TQRFrameline
        Left = 469
        Top = -5
        Width = 9
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          1240.895833333333000000
          -13.229166666666670000
          23.812500000000000000)
      end
      object QRFrameline3: TQRFrameline
        Left = 590
        Top = -5
        Width = 9
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          1561.041666666667000000
          -13.229166666666670000
          23.812500000000000000)
      end
      object QRFrameline2: TQRFrameline
        Left = 434
        Top = -5
        Width = 9
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          1148.291666666667000000
          -13.229166666666670000
          23.812500000000000000)
      end
      object QRFrameline1: TQRFrameline
        Left = 220
        Top = -5
        Width = 9
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          582.083333333333200000
          -13.229166666666670000
          23.812500000000000000)
      end
    end
    object BandaMedidasTitulo: TQRChildBand
      Tag = 99
      Left = 38
      Top = 172
      Width = 1047
      Height = 12
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
        31.750000000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRBand10
      PrintOrder = cboAfterParent
      object QRLabel5: TQRLabel
        Left = 132
        Top = 1
        Width = 91
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          349.250000000000000000
          2.645833333333333000
          240.770833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'C'#243'd. Corto'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 6
      end
      object QRLabel6: TQRLabel
        Left = 228
        Top = 1
        Width = 34
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          603.250000000000000000
          2.645833333333333000
          89.958333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Medida'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 6
      end
      object QRLabel7: TQRLabel
        Left = 418
        Top = 1
        Width = 73
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          1105.958333333333000000
          2.645833333333333000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'LLevar Stock'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 6
      end
      object QRLabel8: TQRLabel
        Left = 496
        Top = 1
        Width = 96
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          1312.333333333333000000
          2.645833333333333000
          254.000000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Stock Maximo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 6
      end
      object QRLabel9: TQRLabel
        Left = 596
        Top = 1
        Width = 117
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          1576.916666666667000000
          2.645833333333333000
          309.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Stock Minimo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 6
      end
      object QRShape1: TQRShape
        Left = 131
        Top = 11
        Width = 585
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          346.604166666666700000
          29.104166666666670000
          1547.812500000000000000)
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel10: TQRLabel
        Left = 38
        Top = 1
        Width = 91
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          100.541666666666700000
          2.645833333333333000
          240.770833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'MEDIDAS:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 6
      end
    end
  end
  object PContenedor: TPanel
    Left = 0
    Top = 0
    Width = 981
    Height = 651
    Align = alClient
    BevelOuter = bvNone
    Caption = 'PContenedor'
    UseDockManager = False
    TabOrder = 0
    object PCabeceraProducto: TPanel
      Left = 0
      Top = 0
      Width = 981
      Height = 381
      Align = alClient
      BevelOuter = bvNone
      Constraints.MinHeight = 315
      UseDockManager = False
      TabOrder = 0
      object PanelCabecera: TPanel
        Left = 0
        Top = 0
        Width = 981
        Height = 19
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object lblResultadoBusqueda: TLabel
          Left = 0
          Top = 0
          Width = 4
          Height = 19
          Align = alLeft
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Layout = tlCenter
        end
        object StaticTxtBaja: TStaticText
          Left = 872
          Top = 0
          Width = 109
          Height = 19
          Align = alRight
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Dado de Baja'
          Color = 6974207
          ParentColor = False
          TabOrder = 0
        end
      end
      object PProducto: TPanel
        Left = 0
        Top = 226
        Width = 981
        Height = 155
        Align = alBottom
        BevelOuter = bvNone
        UseDockManager = False
        TabOrder = 2
        Visible = False
        object Label1: TLabel
          Left = 166
          Top = 46
          Width = 138
          Height = 13
          Caption = 'Marca (F1 para buscar):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 254
          Top = 23
          Width = 50
          Height = 13
          Caption = 'Nombre:'
          FocusControl = edNombre
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 14
          Top = 100
          Width = 66
          Height = 13
          Caption = 'Descripci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 854
          Top = 18
          Width = 119
          Height = 13
          Caption = 'Imagen del Producto'
          FocusControl = edImagen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 40
          Top = 392
          Width = 81
          Height = 13
          Caption = 'ID_ARTICULO'
          FocusControl = DBEdit7
        end
        object Label18: TLabel
          Left = 118
          Top = 70
          Width = 186
          Height = 13
          Caption = 'Tipo y Art'#237'culo (F1 para buscar):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 14
          Top = 23
          Width = 104
          Height = 13
          Caption = 'C'#243'digo Cabecera:'
          FocusControl = edCodCorto
        end
        object Label6: TLabel
          Left = 169
          Top = 94
          Width = 135
          Height = 13
          Caption = 'Color (F1 para buscar):'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Shape1: TShape
          Left = 702
          Top = 90
          Width = 107
          Height = 21
          Shape = stRoundRect
        end
        object Label11: TLabel
          Left = 0
          Top = 0
          Width = 981
          Height = 14
          Align = alTop
          Alignment = taCenter
          Caption = 'Datos Producto Cabecera'
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
        object edImagen: TDBImage
          Left = 837
          Top = 33
          Width = 153
          Height = 112
          DataField = 'IMAGEN'
          DataSource = DS_ProductoCabecera
          Stretch = True
          TabOrder = 6
          OnDblClick = edImagenDblClick
        end
        object edNombre: TDBEdit
          Left = 312
          Top = 19
          Width = 513
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOMBRE'
          DataSource = DS_ProductoCabecera
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit7: TDBEdit
          Left = 40
          Top = 408
          Width = 134
          Height = 21
          DataField = 'ID_ARTICULO'
          DataSource = DS_ProductoCabecera
          TabOrder = 7
        end
        object edDescripcion: TDBMemo
          Left = 14
          Top = 114
          Width = 811
          Height = 33
          DataField = 'DESCRIPCION'
          DataSource = DS_ProductoCabecera
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object cmbArticulo: TDBLookupComboBox
          Left = 312
          Top = 66
          Width = 380
          Height = 21
          DataField = 'ID_ARTICULO'
          DataSource = DS_ProductoCabecera
          DropDownRows = 5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          KeyField = 'ID_ARTICULO'
          ListField = 'BUSQUEDA'
          ListSource = DS_Articulo
          ParentFont = False
          TabOrder = 3
          OnKeyUp = cmbArticuloKeyUp
        end
        object cmbMarca: TDBLookupComboBox
          Left = 312
          Top = 42
          Width = 380
          Height = 21
          DataField = 'ID_MARCA'
          DataSource = DS_ProductoCabecera
          DropDownRows = 5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          KeyField = 'ID_MARCA'
          ListField = 'BUSQUEDA'
          ListSource = DS_Marca
          ParentFont = False
          TabOrder = 2
          OnKeyUp = cmbMarcaKeyUp
        end
        object edCodCorto: TDBEdit
          Left = 14
          Top = 42
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COD_CORTO'
          DataSource = DS_ProductoCabecera
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = edCodCortoExit
        end
        object cmbColor: TDBLookupComboBox
          Left = 312
          Top = 90
          Width = 380
          Height = 21
          DataField = 'COLOR'
          DataSource = DS_ProductoCabecera
          DropDownRows = 5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          KeyField = 'ID_COLOR'
          ListField = 'RESUMEN'
          ListSource = DS_Color
          ParentFont = False
          TabOrder = 4
          OnKeyUp = cmbColorKeyUp
        end
      end
      object Grilla: TISDBGrid
        Left = 0
        Top = 19
        Width = 981
        Height = 207
        Align = alClient
        Color = 14606012
        DataSource = DS_ProductoCabecera
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = GrillaDrawColumnCell
        Cellstyle = csNone
        DefaultRowHeight = 50
        TitleHeight = 17
        Columns = <
          item
            Color = 15461334
            Expanded = False
            FieldName = 'COD_CORTO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo Cabecera'
            Width = 140
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOMBRE'
            Title.Alignment = taCenter
            Title.Caption = 'Nombre'
            Width = 285
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'IMAGEN'
            Title.Alignment = taCenter
            Title.Caption = 'Imagen'
            Width = 122
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = '_marca'
            Title.Alignment = taCenter
            Title.Caption = 'Marca'
            Width = 231
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = '_tipoArticulo'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Art'#237'culo'
            Width = 198
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = '_articulo'
            Title.Alignment = taCenter
            Title.Caption = 'Art'#237'culo'
            Width = 275
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = '_color'
            Title.Alignment = taCenter
            Title.Caption = 'Color'
            Width = 119
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DESCRIPCION'
            Title.Alignment = taCenter
            Title.Caption = 'Descripci'#243'n'
            Width = 381
            Visible = True
          end>
      end
    end
    object PanelDetalle: TPanel
      Left = 0
      Top = 381
      Width = 981
      Height = 270
      Align = alBottom
      TabOrder = 1
      object PDatosdetalle: TPanel
        Left = 1
        Top = 98
        Width = 979
        Height = 171
        Align = alBottom
        Caption = 'PDatosdetalle'
        TabOrder = 0
        Visible = False
        object PContenedorDetalle: TPanel
          Left = 1
          Top = 1
          Width = 878
          Height = 169
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object PMedidas: TPanel
            Left = 740
            Top = 0
            Width = 138
            Height = 169
            Align = alRight
            BevelOuter = bvNone
            BevelWidth = 3
            UseDockManager = False
            TabOrder = 0
            object Label5: TLabel
              Left = 0
              Top = 0
              Width = 138
              Height = 13
              Align = alTop
              Alignment = taCenter
              Caption = 'Medidas a Asignar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object grillaMedidas: TDBGrid
              Left = 0
              Top = 13
              Width = 138
              Height = 156
              Align = alClient
              Color = 14606012
              DataSource = DS_Medidas
              Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              PopupMenu = PopMenuMedidas
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Verdana'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'medida'
                  Width = 100
                  Visible = True
                end>
            end
          end
          object PContenedorDetallePrecios: TPanel
            Left = 0
            Top = 0
            Width = 740
            Height = 169
            Align = alClient
            BevelOuter = bvNone
            UseDockManager = False
            TabOrder = 1
            object tabs: TPageControl
              Left = 0
              Top = 0
              Width = 740
              Height = 169
              ActivePage = TabSheet1
              Align = alClient
              TabOrder = 0
              object TabSheet1: TTabSheet
                Caption = 'Datos Detalle Producto'
                object Label9: TLabel
                  Left = 0
                  Top = 0
                  Width = 732
                  Height = 14
                  Align = alTop
                  Alignment = taCenter
                  Caption = 'Datos Producto Detalle'
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
                object PDetalle_Prod: TPanel
                  Left = 0
                  Top = 14
                  Width = 732
                  Height = 127
                  Align = alClient
                  BevelOuter = bvNone
                  UseDockManager = False
                  TabOrder = 0
                  DesignSize = (
                    732
                    127)
                  object LabelCodCorto: TLabel
                    Left = 8
                    Top = 1
                    Width = 76
                    Height = 13
                    Caption = 'C'#243'digo Corto'
                    FocusControl = EDDCODCORTO
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label22: TLabel
                    Left = 392
                    Top = 1
                    Width = 66
                    Height = 13
                    Caption = 'Descripci'#243'n'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label30: TLabel
                    Left = 8
                    Top = 41
                    Width = 100
                    Height = 13
                    Caption = 'C'#243'digo de Barras'
                    FocusControl = EDDCODBARRAS
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label32: TLabel
                    Left = 137
                    Top = 1
                    Width = 76
                    Height = 13
                    Caption = 'Stock M'#237'nimo'
                    FocusControl = DBEdit11
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label31: TLabel
                    Left = 224
                    Top = 1
                    Width = 80
                    Height = 13
                    Caption = 'Stock M'#225'ximo'
                    FocusControl = DBEdit10
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object LStockActual: TLabel
                    Left = 313
                    Top = 41
                    Width = 71
                    Height = 13
                    Caption = 'Stock Actual'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    Visible = False
                  end
                  object EDDCODCORTO: TDBEdit
                    Left = 8
                    Top = 17
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'COD_CORTO'
                    DataSource = DS_DetalleProducto
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                  end
                  object EDDCODBARRAS: TDBEdit
                    Left = 8
                    Top = 57
                    Width = 297
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'CODIGO_BARRA'
                    DataSource = DS_DetalleProducto
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 5
                  end
                  object DBMemo1: TDBMemo
                    Left = 392
                    Top = 15
                    Width = 331
                    Height = 103
                    Anchors = [akLeft, akTop, akRight, akBottom]
                    DataField = 'DESCRIPCION'
                    DataSource = DS_DetalleProducto
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 6
                  end
                  object DBEdit11: TDBEdit
                    Left = 137
                    Top = 17
                    Width = 81
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'STOCK_MIN'
                    DataSource = DS_DetalleProducto
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 1
                  end
                  object DBEdit10: TDBEdit
                    Left = 224
                    Top = 17
                    Width = 81
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'STOCK_MAX'
                    DataSource = DS_DetalleProducto
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 2
                  end
                  object DBCheckBox1: TDBCheckBox
                    Left = 318
                    Top = 9
                    Width = 59
                    Height = 29
                    Caption = 'Llevar '#13#10'Stock'
                    DataField = 'LLEVAR_STOCK'
                    DataSource = DS_DetalleProducto
                    TabOrder = 3
                    ValueChecked = 'S'
                    ValueUnchecked = 'N'
                    WordWrap = True
                  end
                  object EditStockActual: TEdit
                    Left = 313
                    Top = 57
                    Width = 64
                    Height = 21
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 4
                    Visible = False
                    OnExit = EditStockActualExit
                  end
                end
              end
              object TabSheet2: TTabSheet
                Caption = 'Detalle Precios'
                ImageIndex = 1
                object PPrecios: TPanel
                  Left = 0
                  Top = 0
                  Width = 732
                  Height = 141
                  Align = alClient
                  BevelOuter = bvNone
                  UseDockManager = False
                  TabOrder = 0
                  object Label23: TLabel
                    Left = 8
                    Top = 18
                    Width = 102
                    Height = 13
                    Caption = 'Precio Costo Neto'
                    FocusControl = DBEditPrecioCostoNeto
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label25: TLabel
                    Left = 137
                    Top = 60
                    Width = 88
                    Height = 13
                    Caption = 'Coef. Ganancia'
                    FocusControl = DBEditCoefGanancia
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label27: TLabel
                    Left = 269
                    Top = 18
                    Width = 121
                    Height = 13
                    Caption = 'Impuesto Interno ($)'
                    FocusControl = DBEditImpuestoInterno
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label24: TLabel
                    Left = 405
                    Top = 60
                    Width = 72
                    Height = 13
                    Caption = 'Precio Venta'
                    FocusControl = DBEditPrecioVenta
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label26: TLabel
                    Left = 269
                    Top = 60
                    Width = 95
                    Height = 13
                    Caption = 'Coef. Descuento'
                    FocusControl = DBEditCoefDescuento
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object Label28: TLabel
                    Left = 137
                    Top = 18
                    Width = 115
                    Height = 13
                    Caption = 'Coef. IVA (Ej: 0.21)'
                    FocusControl = DBEditImpuestoIva
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object lblImpuesto_Adicional2: TLabel
                    Left = 535
                    Top = 18
                    Width = 118
                    Height = 13
                    Caption = 'impuesto Adicional 2'
                    FocusControl = DBEditImpuestoAdicional2
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    Visible = False
                  end
                  object lblImpuesto_Adicional1: TLabel
                    Left = 405
                    Top = 18
                    Width = 120
                    Height = 13
                    Caption = 'Impuesto Adicional 1'
                    FocusControl = DBEditImpuestoAdicional1
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    Visible = False
                  end
                  object Label10: TLabel
                    Left = 8
                    Top = 60
                    Width = 117
                    Height = 13
                    Caption = 'Precio Costo C/Imp.'
                    FocusControl = DBEditPrecioCostoCImpuestos
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                  end
                  object lbPrecio1: TLabel
                    Left = 535
                    Top = 60
                    Width = 42
                    Height = 13
                    Caption = 'Precio1'
                    FocusControl = DBEditPrecio1
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    Visible = False
                  end
                  object lbPrecio2: TLabel
                    Left = 8
                    Top = 96
                    Width = 42
                    Height = 13
                    Caption = 'Precio2'
                    FocusControl = DBEditPrecio2
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    Visible = False
                  end
                  object lbPrecio3: TLabel
                    Left = 137
                    Top = 96
                    Width = 42
                    Height = 13
                    Caption = 'Precio3'
                    FocusControl = DBEditPrecio3
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    Visible = False
                  end
                  object lbPrecio4: TLabel
                    Left = 269
                    Top = 96
                    Width = 42
                    Height = 13
                    Caption = 'Precio4'
                    FocusControl = DBEditPrecio4
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    Visible = False
                  end
                  object lbPrecio5: TLabel
                    Left = 405
                    Top = 96
                    Width = 42
                    Height = 13
                    Caption = 'Precio5'
                    FocusControl = DBEditPrecio5
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = []
                    ParentFont = False
                    Visible = False
                  end
                  object Label7: TLabel
                    Left = 0
                    Top = 0
                    Width = 100
                    Height = 14
                    Align = alTop
                    Alignment = taCenter
                    Caption = 'Detalle Precios'
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
                  object DBEditPrecioCostoNeto: TDBEdit
                    Left = 8
                    Top = 33
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'PRECIO_COSTO'
                    DataSource = DS_Precios
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                  end
                  object DBEditCoefGanancia: TDBEdit
                    Left = 137
                    Top = 73
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'COEF_GANANCIA'
                    DataSource = DS_Precios
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 6
                    OnEnter = DBEditCoefGananciaEnter
                  end
                  object DBEditImpuestoInterno: TDBEdit
                    Left = 269
                    Top = 33
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'IMPUESTO_INTERNO'
                    DataSource = DS_Precios
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 2
                  end
                  object DBEditPrecioVenta: TDBEdit
                    Left = 405
                    Top = 73
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'PRECIO_VENTA'
                    DataSource = DS_Precios
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 8
                    OnEnter = DBEditPrecioVentaEnter
                  end
                  object DBEditCoefDescuento: TDBEdit
                    Left = 269
                    Top = 73
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'COEF_DESCUENTO'
                    DataSource = DS_Precios
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 7
                  end
                  object DBEditImpuestoIva: TDBEdit
                    Left = 137
                    Top = 33
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'IMPUESTO_IVA'
                    DataSource = DS_Precios
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 1
                  end
                  object DBEditImpuestoAdicional2: TDBEdit
                    Left = 535
                    Top = 33
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'IMPUESTO_ADICIONAL2'
                    DataSource = DS_Precios
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 4
                    Visible = False
                  end
                  object DBEditImpuestoAdicional1: TDBEdit
                    Left = 405
                    Top = 33
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'IMPUESTO_ADICIONAL1'
                    DataSource = DS_Precios
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                    Visible = False
                  end
                  object DBEditPrecioCostoCImpuestos: TDBEdit
                    Left = 8
                    Top = 73
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'PRECIO_COSTO_CIMPUESTOS'
                    DataSource = DS_Precios
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 5
                  end
                  object DBEditPrecio1: TDBEdit
                    Left = 535
                    Top = 73
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'PRECIO1'
                    DataSource = DS_Precios
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 9
                    Visible = False
                  end
                  object DBEditPrecio2: TDBEdit
                    Left = 8
                    Top = 110
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'PRECIO2'
                    DataSource = DS_Precios
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 10
                    Visible = False
                  end
                  object DBEditPrecio3: TDBEdit
                    Left = 137
                    Top = 110
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'PRECIO3'
                    DataSource = DS_Precios
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 11
                    Visible = False
                  end
                  object DBEditPrecio4: TDBEdit
                    Left = 269
                    Top = 110
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'PRECIO4'
                    DataSource = DS_Precios
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 12
                    Visible = False
                  end
                  object DBEditPrecio5: TDBEdit
                    Left = 405
                    Top = 110
                    Width = 124
                    Height = 21
                    CharCase = ecUpperCase
                    DataField = 'PRECIO5'
                    DataSource = DS_Precios
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'Verdana'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 13
                    Visible = False
                  end
                end
              end
            end
          end
        end
        object Panel2: TPanel
          Left = 879
          Top = 1
          Width = 99
          Height = 169
          Align = alRight
          BevelOuter = bvNone
          UseDockManager = False
          TabOrder = 1
          object btnGrupoAceptar: TBitBtn
            Left = 12
            Top = 16
            Width = 75
            Height = 64
            Caption = 'Aceptar'
            TabOrder = 0
            OnClick = btnGrupoAceptarClick
            Layout = blGlyphTop
          end
          object btnGrupoCancelar: TBitBtn
            Left = 12
            Top = 91
            Width = 75
            Height = 64
            Caption = 'Cancelar'
            TabOrder = 1
            OnClick = btnGrupoCancelarClick
            Layout = blGlyphTop
          end
        end
      end
      object grillaDetalle: TDBGrid
        Left = 1
        Top = 1
        Width = 979
        Height = 97
        Align = alClient
        Color = 14606012
        DataSource = DS_DetalleProducto
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenuDetalleProd
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = grillaDetalleDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_PRODUCTO'
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Visible = True
          end
          item
            Color = 15132364
            Expanded = False
            FieldName = 'COD_CORTO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Corto'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_medida'
            Title.Alignment = taCenter
            Title.Caption = 'Medida'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRIPCION'
            Title.Alignment = taCenter
            Title.Caption = 'Descripci'#243'n'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO_BARRA'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Barras'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECIO_COSTO'
            Title.Alignment = taCenter
            Title.Caption = 'Precio Costo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPUESTO_INTERNO'
            Title.Alignment = taCenter
            Title.Caption = 'Impuesto Interno'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPUESTO_IVA'
            Title.Alignment = taCenter
            Title.Caption = 'Impuesto IVA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IMPUESTO_ADICIONAL1'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IMPUESTO_ADICIONAL2'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRECIO_COSTO_CIMPUESTOS'
            Title.Alignment = taCenter
            Title.Caption = 'Precio Costo c/Imp.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COEF_GANANCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Coef. Ganancia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COEF_DESCUENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Coef. Descuento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECIO_VENTA'
            Title.Alignment = taCenter
            Title.Caption = 'Precio Venta'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STOCK_MAX'
            Title.Alignment = taCenter
            Title.Caption = 'Stock M'#225'ximo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STOCK_MIN'
            Title.Alignment = taCenter
            Title.Caption = 'Stock M'#237'nimo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LLEVAR_STOCK'
            Title.Alignment = taCenter
            Title.Caption = 'Llevar Stock'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECIO1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRECIO2'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRECIO3'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRECIO4'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'PRECIO5'
            Visible = False
          end>
      end
    end
  end
  object ZQ_ProductoCabecera: TZQuery
    Connection = DM.Conexion
    SortedFields = 'ID_MARCA'
    AfterScroll = ZQ_ProductoCabeceraAfterScroll
    UpdateObject = ZUpdateSQL2
    SQL.Strings = (
      'select distinct pc.*'
      'from producto_cabecera pc'
      
        'left join producto p on (pc.id_prod_cabecera = p.id_prod_cabecer' +
        'a)')
    Params = <>
    IndexFieldNames = 'ID_MARCA Asc'
    Left = 192
    Top = 96
    object ZQ_ProductoCabeceraID_PROD_CABECERA: TIntegerField
      FieldName = 'ID_PROD_CABECERA'
    end
    object ZQ_ProductoCabeceraID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object ZQ_ProductoCabeceraNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object ZQ_ProductoCabeceraDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
    object ZQ_ProductoCabeceraIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object ZQ_ProductoCabeceraBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ProductoCabeceraID_ARTICULO: TIntegerField
      FieldName = 'ID_ARTICULO'
    end
    object ZQ_ProductoCabeceraCOD_CORTO: TStringField
      FieldName = 'COD_CORTO'
    end
    object ZQ_ProductoCabeceraCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
    object ZQ_ProductoCabecera_articulo: TStringField
      FieldKind = fkLookup
      FieldName = '_articulo'
      LookupDataSet = ZQ_Articulo
      LookupKeyFields = 'ID_ARTICULO'
      LookupResultField = 'DESCRIPCION'
      KeyFields = 'ID_ARTICULO'
      Size = 100
      Lookup = True
    end
    object ZQ_ProductoCabecera_marca: TStringField
      FieldKind = fkLookup
      FieldName = '_marca'
      LookupDataSet = ZQ_Marca
      LookupKeyFields = 'ID_MARCA'
      LookupResultField = 'NOMBRE_MARCA'
      KeyFields = 'ID_MARCA'
      Size = 100
      Lookup = True
    end
    object ZQ_ProductoCabecera_tipoArticulo: TStringField
      FieldKind = fkLookup
      FieldName = '_tipoArticulo'
      LookupDataSet = ZQ_Articulo
      LookupKeyFields = 'ID_ARTICULO'
      LookupResultField = 'TIPO_ARTICULO'
      KeyFields = 'ID_ARTICULO'
      Size = 200
      Lookup = True
    end
    object ZQ_ProductoCabecera_color: TStringField
      FieldKind = fkLookup
      FieldName = '_color'
      LookupDataSet = ZQ_Color
      LookupKeyFields = 'ID_COLOR'
      LookupResultField = 'NOMBRE'
      KeyFields = 'COLOR'
      Size = 30
      Lookup = True
    end
  end
  object DS_ProductoCabecera: TDataSource
    DataSet = ZQ_ProductoCabecera
    Left = 192
    Top = 152
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsOffice11
    UseF10ForMenu = False
    UseSystemFont = False
    Left = 100
    Top = 152
    DockControlHeights = (
      0
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
          ItemName = 'btnBuscar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnNuevo'
        end
        item
          Visible = True
          ItemName = 'btnModificar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnBaja'
        end
        item
          Visible = True
          ItemName = 'btnReactivar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnGuardar'
        end
        item
          Visible = True
          ItemName = 'btnCancelar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnImprimirListado'
        end
        item
          Visible = True
          ItemName = 'btnExcel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnSalir'
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
    object btnBuscar: TdxBarLargeButton
      Caption = 'F1 - Buscar'
      Category = 0
      Hint = 'F1 - Buscar'
      Visible = ivAlways
      LargeImageIndex = 29
      OnClick = btnBuscarClick
      AutoGrayScale = False
    end
    object btnNuevo: TdxBarLargeButton
      Caption = 'F2 - Nuevo'
      Category = 0
      Hint = 'Inserta un nuevo registro'
      Visible = ivAlways
      LargeImageIndex = 0
      OnClick = btnNuevoClick
      AutoGrayScale = False
    end
    object btnModificar: TdxBarLargeButton
      Caption = 'F3 - Modificar'
      Category = 0
      Hint = 'Modifica el registro actual'
      Visible = ivAlways
      LargeImageIndex = 1
      OnClick = btnModificarClick
      AutoGrayScale = False
    end
    object btnBaja: TdxBarLargeButton
      Caption = 'F5 - Baja'
      Category = 0
      Hint = 'F5 - Baja'
      Visible = ivAlways
      LargeImageIndex = 25
      OnClick = btnBajaClick
      AutoGrayScale = False
    end
    object btnReactivar: TdxBarLargeButton
      Caption = 'F6 - Reactivar'
      Category = 0
      Hint = 'F6 - Reactivar'
      Visible = ivAlways
      LargeImageIndex = 24
      OnClick = btnReactivarClick
      AutoGrayScale = False
    end
    object btnGuardar: TdxBarLargeButton
      Caption = 'F11 - Guardar'
      Category = 0
      Enabled = False
      Hint = 'Guarda los cambios'
      Visible = ivAlways
      LargeImageIndex = 3
      OnClick = btnGuardarClick
      AutoGrayScale = False
    end
    object btnCancelar: TdxBarLargeButton
      Caption = 'F12 - Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancela los cambios'
      Visible = ivAlways
      LargeImageIndex = 4
      OnClick = btnCancelarClick
      AutoGrayScale = False
    end
    object btnImprimirListado: TdxBarLargeButton
      Align = iaRight
      Caption = 'Listado'
      Category = 0
      Hint = 'Listado'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = btnImprimirListadoClick
      AutoGrayScale = False
    end
    object btnExcel: TdxBarLargeButton
      Caption = 'Excel'
      Category = 0
      Hint = 'Exportar a Excel'
      Visible = ivAlways
      LargeImageIndex = 77
      OnClick = btnExcelClick
      AutoGrayScale = False
    end
    object btBuscarEnGoogle: TdxBarLargeButton
      Caption = 'Google'
      Category = 0
      Hint = 'Buscar en Google'
      Visible = ivAlways
      LargeImageIndex = 80
      OnClick = btBuscarEnGoogleClick
      AutoGrayScale = False
    end
    object btnSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir sin seleccionar'
      Visible = ivAlways
      LargeImageIndex = 6
      ShortCut = 123
      OnClick = btnSalirClick
      AutoGrayScale = False
    end
    object GrupoVisualizando: TdxBarGroup
      Items = (
        'btnNuevo'
        'btnModificar'
        'btnBuscar'
        'btnImprimirListado'
        'btnBaja'
        'btnReactivar'
        'btBuscarEnGoogle'
        'btnExcel'
        'btnSalir')
    end
    object GrupoEditando: TdxBarGroup
      Enabled = False
      Items = (
        'btnGuardar'
        'btnCancelar')
    end
  end
  object ZQ_DetalleProducto: TZQuery
    Connection = DM.Conexion
    SortedFields = 'COD_CORTO'
    Filter = 'baja <> '#39'S'#39
    Filtered = True
    UpdateObject = ZUpdateSQL1
    SQL.Strings = (
      
        'select  P.ID_PRODUCTO, P.ID_MEDIDA, P.ID_PROD_CABECERA, P.DESCRI' +
        'PCION, P.COD_CORTO, P.CODIGO_BARRA, P.STOCK_MAX, P.STOCK_MIN, P.' +
        'LLEVAR_STOCK, P.BAJA,'
      '        PR.PRECIO_COSTO, PR.PRECIO_VENTA, PR.COEF_GANANCIA,'
      
        '        PR.COEF_DESCUENTO, PR.IMPUESTO_INTERNO, PR.IMPUESTO_IVA,' +
        ' PR.PRECIO_COSTO_CIMPUESTOS, PR.IMPUESTO_ADICIONAL1,'
      
        '        PR.IMPUESTO_ADICIONAL2, PR.PRECIO1, PR.PRECIO2, PR.PRECI' +
        'O3, PR.PRECIO4, PR.PRECIO5'
      'from producto p'
      
        'left join precio pr on (p.id_producto = pr.id_producto) and (pr.' +
        'id_sucursal = :sucursal)'
      'where (p.id_prod_cabecera=:prod)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sucursal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prod'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'COD_CORTO Asc'
    Left = 312
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sucursal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'prod'
        ParamType = ptUnknown
      end>
    object ZQ_DetalleProducto_medida: TStringField
      FieldKind = fkLookup
      FieldName = '_medida'
      LookupDataSet = ZQ_TodasMedidas
      LookupKeyFields = 'ID_MEDIDA'
      LookupResultField = 'MEDIDA'
      KeyFields = 'ID_MEDIDA'
      Lookup = True
    end
    object ZQ_DetalleProductoID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
    end
    object ZQ_DetalleProductoID_MEDIDA: TIntegerField
      FieldName = 'ID_MEDIDA'
    end
    object ZQ_DetalleProductoID_PROD_CABECERA: TIntegerField
      FieldName = 'ID_PROD_CABECERA'
    end
    object ZQ_DetalleProductoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
    object ZQ_DetalleProductoCOD_CORTO: TStringField
      FieldName = 'COD_CORTO'
    end
    object ZQ_DetalleProductoCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 40
    end
    object ZQ_DetalleProductoSTOCK_MAX: TFloatField
      FieldName = 'STOCK_MAX'
    end
    object ZQ_DetalleProductoSTOCK_MIN: TFloatField
      FieldName = 'STOCK_MIN'
    end
    object ZQ_DetalleProductoLLEVAR_STOCK: TStringField
      FieldName = 'LLEVAR_STOCK'
      Size = 1
    end
    object ZQ_DetalleProductoBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_DetalleProductoPRECIO_COSTO: TFloatField
      FieldName = 'PRECIO_COSTO'
      currency = True
    end
    object ZQ_DetalleProductoPRECIO_VENTA: TFloatField
      FieldName = 'PRECIO_VENTA'
      currency = True
    end
    object ZQ_DetalleProductoCOEF_GANANCIA: TFloatField
      FieldName = 'COEF_GANANCIA'
      DisplayFormat = '0.0000'
    end
    object ZQ_DetalleProductoCOEF_DESCUENTO: TFloatField
      FieldName = 'COEF_DESCUENTO'
      DisplayFormat = '0.0000'
    end
    object ZQ_DetalleProductoIMPUESTO_INTERNO: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
      currency = True
    end
    object ZQ_DetalleProductoIMPUESTO_IVA: TFloatField
      FieldName = 'IMPUESTO_IVA'
    end
    object ZQ_DetalleProductoPRECIO_COSTO_CIMPUESTOS: TFloatField
      FieldName = 'PRECIO_COSTO_CIMPUESTOS'
      currency = True
    end
    object ZQ_DetalleProductoIMPUESTO_ADICIONAL1: TFloatField
      FieldName = 'IMPUESTO_ADICIONAL1'
    end
    object ZQ_DetalleProductoIMPUESTO_ADICIONAL2: TFloatField
      FieldName = 'IMPUESTO_ADICIONAL2'
    end
    object ZQ_DetalleProductoPRECIO1: TFloatField
      FieldName = 'PRECIO1'
      currency = True
    end
    object ZQ_DetalleProductoPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
    object ZQ_DetalleProductoPRECIO3: TFloatField
      FieldName = 'PRECIO3'
      currency = True
    end
    object ZQ_DetalleProductoPRECIO4: TFloatField
      FieldName = 'PRECIO4'
      currency = True
    end
    object ZQ_DetalleProductoPRECIO5: TFloatField
      FieldName = 'PRECIO5'
      currency = True
    end
  end
  object DS_DetalleProducto: TDataSource
    DataSet = ZQ_DetalleProducto
    Left = 312
    Top = 152
  end
  object ZQ_Articulo: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_ArticuloAfterScroll
    SQL.Strings = (
      
        'select a.*, t.descripcion as tipo_articulo, t.descripcion||'#39' - '#39 +
        '||a.descripcion as busqueda'
      'from articulo a'
      
        'left join tipo_articulo t on (a.id_tipo_articulo = t.id_tipo_art' +
        'iculo)'
      'where a.baja = '#39'N'#39)
    Params = <>
    Left = 461
    Top = 96
    object ZQ_ArticuloID_ARTICULO: TIntegerField
      FieldName = 'ID_ARTICULO'
      Required = True
    end
    object ZQ_ArticuloDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 200
    end
    object ZQ_ArticuloID_TIPO_ARTICULO: TIntegerField
      FieldName = 'ID_TIPO_ARTICULO'
    end
    object ZQ_ArticuloBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ArticuloBUSQUEDA: TStringField
      FieldName = 'BUSQUEDA'
      ReadOnly = True
      Size = 403
    end
    object ZQ_ArticuloTIPO_ARTICULO: TStringField
      FieldName = 'TIPO_ARTICULO'
      Size = 200
    end
  end
  object DS_Articulo: TDataSource
    DataSet = ZQ_Articulo
    Left = 453
    Top = 152
  end
  object ZQ_Marca: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select m.*,  lpad(m.codigo_marca,4,'#39'0'#39')||'#39' - '#39'||m.nombre_marca a' +
        's busqueda'
      'from marca m'
      'where m.baja = '#39'N'#39
      'order by m.codigo_marca, m.nombre_marca')
    Params = <>
    Left = 541
    Top = 96
    object ZQ_MarcaID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
      Required = True
    end
    object ZQ_MarcaNOMBRE_MARCA: TStringField
      FieldName = 'NOMBRE_MARCA'
      Size = 50
    end
    object ZQ_MarcaBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_MarcaCODIGO_MARCA: TIntegerField
      FieldName = 'CODIGO_MARCA'
    end
    object ZQ_MarcaBUSQUEDA: TStringField
      FieldName = 'BUSQUEDA'
      ReadOnly = True
      Size = 64
    end
  end
  object DS_Marca: TDataSource
    DataSet = ZQ_Marca
    Left = 800
    Top = 152
  end
  object PopupMenuDetalleProd: TPopupMenu
    Images = FPrincipal.Iconos_Menu_16
    MenuAnimation = [maLeftToRight]
    Left = 648
    Top = 104
    object AgregaDetalle: TMenuItem
      Caption = 'Agrega Detalle'
      Enabled = False
      ImageIndex = 14
      OnClick = AgregaDetalleClick
    end
    object EditarDetalle: TMenuItem
      Caption = 'Editar Detalle'
      Enabled = False
      ImageIndex = 32
      OnClick = EditarDetalleClick
    end
    object QuitarDetalle: TMenuItem
      Caption = 'Quitar Detalle'
      Enabled = False
      ImageIndex = 15
      OnClick = QuitarDetalleClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object VerBajas1: TMenuItem
      Caption = 'Ver Bajas'
      Enabled = False
      ImageIndex = 7
      OnClick = VerBajas1Click
    end
    object BajaDetalle1: TMenuItem
      Caption = 'Baja Detalle'
      Enabled = False
      ImageIndex = 12
      OnClick = BajaDetalle1Click
    end
    object VerActivos1: TMenuItem
      Caption = 'Ver Activos'
      Enabled = False
      ImageIndex = 7
      Visible = False
      OnClick = VerActivos1Click
    end
    object ReactivarDetalle1: TMenuItem
      Caption = 'Reactivar Detalle'
      Enabled = False
      ImageIndex = 11
      Visible = False
      OnClick = ReactivarDetalle1Click
    end
  end
  object ZQ_MedidaArticulo: TZQuery
    Connection = DM.Conexion
    SortedFields = 'MEDIDA'
    SQL.Strings = (
      'select ma.id_articulo,ma.id_medida,m.medida, ma.baja'
      'from medida_articulo ma'
      'join medida m on (m.id_medida=ma.id_medida)'
      'where (ma.id_articulo=:artic) and (ma.baja <> '#39'S'#39')')
    Params = <
      item
        DataType = ftUnknown
        Name = 'artic'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'MEDIDA Asc'
    Left = 650
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'artic'
        ParamType = ptUnknown
      end>
    object ZQ_MedidaArticuloID_ARTICULO: TIntegerField
      FieldName = 'ID_ARTICULO'
      Required = True
    end
    object ZQ_MedidaArticuloID_MEDIDA: TIntegerField
      FieldName = 'ID_MEDIDA'
      Required = True
    end
    object ZQ_MedidaArticuloMEDIDA: TStringField
      FieldName = 'MEDIDA'
      Size = 30
    end
  end
  object DS_MedidaArticulo: TDataSource
    DataSet = ZQ_MedidaArticulo
    Left = 549
    Top = 152
  end
  object ZSP_GenerarIDProdDeralle: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_PRODUCTO_ID'
    Left = 672
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    object ZSP_GenerarIDProdDeralleID: TIntegerField
      FieldName = 'ID'
    end
  end
  object ZSP_GenerarIDProdCabecera: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_PRODUCTO_CABECERA_ID'
    Left = 824
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    object ZSP_GenerarIDProdCabeceraID: TIntegerField
      FieldName = 'ID'
    end
  end
  object buscarImagen: TOpenPictureDialog
    Filter = 
      'Bitmaps (*.bmp)  y  Jpg (*.jpg)|*.bmp; *.jpg|Jpg (*.jpg)|*.jpg|B' +
      'itmaps (*.bmp)|*.bmp'
    Left = 40
    Top = 48
  end
  object PopMenuMedidas: TPopupMenu
    Images = FPrincipal.Iconos_Menu_16
    MenuAnimation = [maLeftToRight]
    Left = 757
    Top = 95
    object MenuItem1: TMenuItem
      Caption = 'Agregar Medida'
      ImageIndex = 14
      ShortCut = 45
      OnClick = MenuItem1Click
    end
    object MenuItem3: TMenuItem
      Caption = 'Quitar Medida'
      ImageIndex = 15
      ShortCut = 46
      OnClick = MenuItem3Click
    end
  end
  object CDMedidas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id_medida'
        DataType = ftInteger
      end
      item
        Name = 'medida'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
        Fields = 'medida'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'medida'
    Params = <>
    StoreDefs = True
    Left = 112
    Top = 48
    Data = {
      470000009619E0BD01000000180000000200000000000300000047000969645F
      6D65646964610400010000000000066D65646964610100490000000100055749
      4454480200020014000000}
    object CDMedidasid_medida: TIntegerField
      FieldName = 'id_medida'
    end
    object CDMedidasmedida: TStringField
      FieldName = 'medida'
    end
  end
  object DS_Medidas: TDataSource
    DataSet = CDMedidas
    Left = 736
    Top = 160
  end
  object ZQ_Color: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_ColorAfterScroll
    SQL.Strings = (
      
        'select c.*, (lpad(c.codigo_color,4,'#39'0'#39')||'#39' - '#39'||c.nombre) as res' +
        'umen'
      'from Color c'
      'where c.baja = '#39'N'#39)
    Params = <>
    Left = 837
    Top = 96
    object ZQ_ColorID_COLOR: TIntegerField
      FieldName = 'ID_COLOR'
      Required = True
    end
    object ZQ_ColorCODIGO_COLOR: TIntegerField
      FieldName = 'CODIGO_COLOR'
      DisplayFormat = '0000'
    end
    object ZQ_ColorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object ZQ_ColorREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 30
    end
    object ZQ_ColorBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ColorRESUMEN: TStringField
      FieldName = 'RESUMEN'
      ReadOnly = True
      Size = 288
    end
  end
  object DS_Color: TDataSource
    DataSet = ZQ_Color
    Left = 848
    Top = 152
  end
  object ZQ_ExisteCodigo: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from producto_cabecera pc'
      'where pc.cod_corto = :codigo'
      '  and pc.id_marca = :idMarca')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idMarca'
        ParamType = ptUnknown
      end>
    Left = 40
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idMarca'
        ParamType = ptUnknown
      end>
    object ZQ_ExisteCodigoID_PROD_CABECERA: TIntegerField
      FieldName = 'ID_PROD_CABECERA'
      Required = True
    end
    object ZQ_ExisteCodigoID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
      Required = True
    end
    object ZQ_ExisteCodigoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object ZQ_ExisteCodigoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
    object ZQ_ExisteCodigoIMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object ZQ_ExisteCodigoBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ExisteCodigoID_ARTICULO: TIntegerField
      FieldName = 'ID_ARTICULO'
      Required = True
    end
    object ZQ_ExisteCodigoCOD_CORTO: TStringField
      FieldName = 'COD_CORTO'
    end
    object ZQ_ExisteCodigoCOLOR: TIntegerField
      FieldName = 'COLOR'
    end
  end
  object ATeclasRapidas: TActionManager
    Left = 928
    Top = 154
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
  object ZQ_Precios: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select pr.*'
      'from precio pr'
      
        'where (pr.id_producto = :id_producto) and (pr.id_sucursal = :suc' +
        'ursal)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_producto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sucursal'
        ParamType = ptUnknown
      end>
    Left = 400
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_producto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sucursal'
        ParamType = ptUnknown
      end>
    object ZQ_PreciosID_PRECIO: TIntegerField
      FieldName = 'ID_PRECIO'
    end
    object ZQ_PreciosID_PRODUCTO: TIntegerField
      FieldName = 'ID_PRODUCTO'
    end
    object ZQ_PreciosID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_PreciosPRECIO_COSTO: TFloatField
      FieldName = 'PRECIO_COSTO'
      OnChange = ZQ_PreciosPRECIO_COSTOChange
      currency = True
    end
    object ZQ_PreciosPRECIO_VENTA: TFloatField
      FieldName = 'PRECIO_VENTA'
      OnChange = ZQ_PreciosPRECIO_VENTAChange
      currency = True
    end
    object ZQ_PreciosCOEF_GANANCIA: TFloatField
      FieldName = 'COEF_GANANCIA'
      OnChange = ZQ_PreciosCOEF_GANANCIAChange
      DisplayFormat = '0.0000'
    end
    object ZQ_PreciosCOEF_DESCUENTO: TFloatField
      FieldName = 'COEF_DESCUENTO'
      DisplayFormat = '0.0000'
    end
    object ZQ_PreciosIMPUESTO_INTERNO: TFloatField
      FieldName = 'IMPUESTO_INTERNO'
      currency = True
    end
    object ZQ_PreciosIMPUESTO_IVA: TFloatField
      FieldName = 'IMPUESTO_IVA'
      OnChange = ZQ_PreciosIMPUESTO_IVAChange
    end
    object ZQ_PreciosPRECIO_COSTO_CIMPUESTOS: TFloatField
      FieldName = 'PRECIO_COSTO_CIMPUESTOS'
      currency = True
    end
    object ZQ_PreciosIMPUESTO_ADICIONAL1: TFloatField
      FieldName = 'IMPUESTO_ADICIONAL1'
      OnChange = ZQ_PreciosIMPUESTO_ADICIONAL1Change
    end
    object ZQ_PreciosIMPUESTO_ADICIONAL2: TFloatField
      FieldName = 'IMPUESTO_ADICIONAL2'
      OnChange = ZQ_PreciosIMPUESTO_ADICIONAL2Change
    end
    object ZQ_PreciosPRECIO1: TFloatField
      FieldName = 'PRECIO1'
      currency = True
    end
    object ZQ_PreciosPRECIO2: TFloatField
      FieldName = 'PRECIO2'
      currency = True
    end
    object ZQ_PreciosPRECIO3: TFloatField
      FieldName = 'PRECIO3'
      currency = True
    end
    object ZQ_PreciosPRECIO4: TFloatField
      FieldName = 'PRECIO4'
      currency = True
    end
    object ZQ_PreciosPRECIO5: TFloatField
      FieldName = 'PRECIO5'
      currency = True
    end
  end
  object DS_Precios: TDataSource
    DataSet = ZQ_Precios
    Left = 392
    Top = 152
  end
  object ZUpdateSQL1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM producto'
      'WHERE'
      '  producto.ID_PRODUCTO = :OLD_ID_PRODUCTO')
    InsertSQL.Strings = (
      'INSERT INTO producto'
      '  (producto.ID_PRODUCTO, producto.ID_MEDIDA, '
      'producto.ID_PROD_CABECERA, '
      '   producto.DESCRIPCION, producto.COD_CORTO, '
      'producto.CODIGO_BARRA, producto.STOCK_MAX, '
      '   producto.STOCK_MIN, producto.LLEVAR_STOCK, producto.BAJA)'
      'VALUES'
      '  (:ID_PRODUCTO, :ID_MEDIDA, :ID_PROD_CABECERA, '
      ':DESCRIPCION, :COD_CORTO, '
      '   :CODIGO_BARRA, :STOCK_MAX, :STOCK_MIN, :LLEVAR_STOCK, '
      ':BAJA)')
    ModifySQL.Strings = (
      'UPDATE producto SET'
      '  producto.ID_PRODUCTO = :ID_PRODUCTO,'
      '  producto.ID_MEDIDA = :ID_MEDIDA,'
      '  producto.ID_PROD_CABECERA = :ID_PROD_CABECERA,'
      '  producto.DESCRIPCION = :DESCRIPCION,'
      '  producto.COD_CORTO = :COD_CORTO,'
      '  producto.CODIGO_BARRA = :CODIGO_BARRA,'
      '  producto.STOCK_MAX = :STOCK_MAX,'
      '  producto.STOCK_MIN = :STOCK_MIN,'
      '  producto.LLEVAR_STOCK = :LLEVAR_STOCK,'
      '  producto.BAJA = :BAJA'
      'WHERE'
      '  producto.ID_PRODUCTO = :OLD_ID_PRODUCTO')
    UseSequenceFieldForRefreshSQL = False
    Left = 312
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PRODUCTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_MEDIDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_PROD_CABECERA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_CORTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_BARRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_MAX'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'STOCK_MIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LLEVAR_STOCK'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BAJA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID_PRODUCTO'
        ParamType = ptUnknown
      end>
  end
  object ZQ_TodasMedidas: TZQuery
    Connection = DM.Conexion
    SortedFields = 'MEDIDA'
    SQL.Strings = (
      'select id_medida, medida, baja'
      'from medida')
    Params = <>
    IndexFieldNames = 'MEDIDA Asc'
    Left = 42
    Top = 96
    object ZQ_TodasMedidasID_MEDIDA: TIntegerField
      FieldName = 'ID_MEDIDA'
      Required = True
    end
    object ZQ_TodasMedidasMEDIDA: TStringField
      FieldName = 'MEDIDA'
      Size = 30
    end
    object ZQ_TodasMedidasBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
  end
  object ZUpdateSQL2: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM producto_cabecera'
      'WHERE'
      '  producto_cabecera.ID_PROD_CABECERA = :OLD_ID_PROD_CABECERA')
    InsertSQL.Strings = (
      'INSERT INTO producto_cabecera'
      
        '  (ID_PROD_CABECERA, ID_MARCA, ID_ARTICULO, COLOR, COD_CORTO, NO' +
        'MBRE, DESCRIPCION, '
      '   IMAGEN, BAJA)'
      'VALUES'
      
        '  (:ID_PROD_CABECERA, :ID_MARCA, :ID_ARTICULO, :COLOR, :COD_CORT' +
        'O, :NOMBRE, '
      '   :DESCRIPCION, :IMAGEN, :BAJA)')
    ModifySQL.Strings = (
      'UPDATE producto_cabecera SET'
      '  ID_PROD_CABECERA = :ID_PROD_CABECERA,'
      '  ID_MARCA = :ID_MARCA,'
      '  ID_ARTICULO = :ID_ARTICULO,'
      '  COLOR = :COLOR,'
      '  COD_CORTO = :COD_CORTO,'
      '  NOMBRE = :NOMBRE,'
      '  DESCRIPCION = :DESCRIPCION,'
      '  IMAGEN = :IMAGEN,'
      '  BAJA = :BAJA'
      'WHERE'
      '  producto_cabecera.ID_PROD_CABECERA = '
      ':OLD_ID_PROD_CABECERA')
    UseSequenceFieldForRefreshSQL = False
    Left = 192
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PROD_CABECERA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_MARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_ARTICULO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COLOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_CORTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMAGEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BAJA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID_PROD_CABECERA'
        ParamType = ptUnknown
      end>
  end
  object Asociar_producto_pto_salida: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUCTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STOCK_ACTUAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STOCK_MIN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STOCK_MAX'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_POSIC_SUCURSAL'
        ParamType = ptInput
      end>
    StoredProcName = 'ASOCIAR_PRODUCTO_PTO_SALIDA'
    Left = 536
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUCTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STOCK_ACTUAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STOCK_MIN'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STOCK_MAX'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_POSIC_SUCURSAL'
        ParamType = ptInput
      end>
  end
  object ISBuscar: TISBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'C'#243'digo Corto'
        Campo = 'cod_corto'
        Tabla = 'p'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'C'#243'digo Cabecera'
        Campo = 'cod_corto'
        Tabla = 'pc'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'C'#243'd. Barras'
        Campo = 'codigo_barra'
        Tabla = 'p'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Nombre'
        Campo = 'nombre'
        Tabla = 'pc'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Descripci'#243'n'
        Campo = 'descripcion'
        Tabla = 'pc'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Art'#237'culo'
        Campo = 'descripcion'
        Tabla = 'a'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Tipo Art'#237'culo'
        Campo = 'descripcion'
        Tabla = 'ta'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Marca'
        Campo = 'nombre_marca'
        Tabla = 'm'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Color'
        Campo = 'color'
        Tabla = 'pc'
        TipoCampoIngreso = IS_Combo
        TipoCampoIndice = 1
        TipoCampoIndiceVer = 'Igual'
        TipoCombollenarSQL = ZQ_Color
        TipoCombollenarCampo = 'nombre'
        TipoCombollenarCampoReal = 'id_color'
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Baja'
        Campo = 'baja'
        Tabla = 'pc'
        TipoCampoIngreso = IS_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboValores.Strings = (
          'N'
          'S')
        TipoComboEditable = False
        TipoComboValoresReales.Strings = (
          'N'
          'S')
        ItemIndex = 0
      end>
    CriteriosLocate = <>
    Modelo = DM.ISModelo
    DataSet = ZQ_ProductoCabecera
    SQL.Strings = (
      'select distinct pc.*, a.descripcion, m.nombre_marca'
      'from producto_cabecera pc'
      
        'left join producto p on (pc.id_prod_cabecera = p.id_prod_cabecer' +
        'a)'
      'left join articulo a on (pc.id_articulo = a.id_articulo)'
      'left join marca m on (pc.id_marca = m.id_marca)'
      
        'left join tipo_articulo ta on (ta.id_tipo_articulo=a.id_tipo_art' +
        'iculo)')
    SQL_Select.Strings = (
      'select distinct pc.*, a.descripcion, m.nombre_marca')
    SQL_From.Strings = (
      'from producto_cabecera pc'
      
        'left join producto p on (pc.id_prod_cabecera = p.id_prod_cabecer' +
        'a)'
      'left join articulo a on (pc.id_articulo = a.id_articulo)'
      'left join marca m on (pc.id_marca = m.id_marca)'
      
        'left join tipo_articulo ta on (ta.id_tipo_articulo=a.id_tipo_art' +
        'iculo)')
    UsarWhereOriginal = IS_Con_Where
    PantallaReducida = True
    TituloVentana = 'Buscar'
    Left = 32
    Top = 426
  end
  object ISOrdenar: TISOrdenarGrilla
    Grilla = Grilla
    Filtros = <
      item
        TituloColumna = 'C'#243'digo Cabecera'
        Visible = True
      end
      item
        TituloColumna = 'Nombre'
        Visible = True
      end
      item
        TituloColumna = 'Imagen'
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
        TituloColumna = 'Descripci'#243'n'
        Visible = True
      end>
    NombreGuardarConfig = 'ABMProductos_Cabeceras'
    AltoTituloColumna = 15
    FuenteNormal = []
    Ordenar = True
    MoverColumna = True
    FiltrarColumna = True
    GuardarAncho = True
    Left = 400
    Top = 429
  end
  object ISListadoMarca: TISListadoSQL
    Modelo = DM.ISModelo
    SQL.Strings = (
      
        'select m.id_marca, lpad(m.codigo_marca,4,'#39'0'#39')||'#39' - '#39'||m.nombre_m' +
        'arca as busqueda'
      'from marca m'
      'where m.baja = '#39'N'#39
      'order by m.codigo_marca, m.nombre_marca'
      '')
    CampoBuscar = 'busqueda'
    CampoClave = 'ID_MARCA'
    BuscarEnQuery = ZQ_Marca
    TituloVentana = 'Buscar Marca'
    TituloBuscar = 'Campo Busqueda:'
    TituloBuscar2 = 'Campo Busqueda 2:'
    ColorGrilla = 14606012
    AnchoClave = 80
    AnchoBuscar1 = 500
    AnchoBuscar2 = 500
    Left = 224
    Top = 378
  end
  object ISListadoArticulo: TISListadoSQL
    Modelo = DM.ISModelo
    SQL.Strings = (
      'select a.*, t.descripcion||'#39' - '#39'||a.descripcion as busqueda'
      'from articulo a'
      
        'left join tipo_articulo t on (a.id_tipo_articulo = t.id_tipo_art' +
        'iculo)'
      'where a.baja = '#39'N'#39
      '')
    CampoBuscar = 'busqueda'
    CampoClave = 'ID_ARTICULO'
    BuscarEnQuery = ZQ_Articulo
    TituloVentana = 'Buscar Art'#237'culo'
    TituloBuscar = 'Campo Busqueda:'
    TituloBuscar2 = 'Campo Busqueda 2:'
    ColorGrilla = 14606012
    AnchoClave = 80
    AnchoBuscar1 = 500
    AnchoBuscar2 = 500
    Left = 480
    Top = 378
  end
  object ISListadoColor: TISListadoSQL
    Modelo = DM.ISModelo
    SQL.Strings = (
      
        'select c.*, (lpad(c.codigo_color,4,'#39'0'#39')||'#39' - '#39'||c.nombre) as res' +
        'umen'
      'from Color c'
      'where c.baja = '#39'N'#39
      '')
    CampoBuscar = 'resumen'
    CampoClave = 'id_color'
    BuscarEnQuery = ZQ_Color
    TituloVentana = 'Buscar Color'
    TituloBuscar = 'Campo Busqueda:'
    TituloBuscar2 = 'Campo Busqueda 2:'
    ColorGrilla = 14606012
    AnchoClave = 80
    AnchoBuscar1 = 500
    AnchoBuscar2 = 500
    Left = 304
    Top = 370
  end
  object ISListadoMedidas: TISListadoSQL
    Modelo = DM.ISModelo
    SQL.Strings = (
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    CampoBuscar = 'medida'
    CampoClave = 'id_medida'
    TituloVentana = 'Buscar Medida'
    TituloBuscar = 'Campo Busqueda:'
    TituloBuscar2 = 'Campo Busqueda 2:'
    ColorGrilla = 14606012
    AnchoClave = 80
    AnchoBuscar1 = 500
    AnchoBuscar2 = 500
    Left = 392
    Top = 378
  end
  object ISOrdenarDetalle: TISOrdenarGrilla
    Grilla = grillaDetalle
    Filtros = <
      item
        TituloColumna = 'ID'
        Visible = True
      end
      item
        TituloColumna = 'C'#243'd. Corto'
        Visible = True
      end
      item
        TituloColumna = 'Medida'
        Visible = True
      end
      item
        TituloColumna = 'Descripci'#243'n'
        Visible = True
      end
      item
        TituloColumna = 'C'#243'd. Barras'
        Visible = True
      end
      item
        TituloColumna = 'Precio Costo'
        Visible = True
      end
      item
        TituloColumna = 'Impuesto Interno'
        Visible = True
      end
      item
        TituloColumna = 'Impuesto IVA'
        Visible = True
      end
      item
        TituloColumna = 'IMPUESTO_ADICIONAL1'
        Visible = False
      end
      item
        TituloColumna = 'IMPUESTO_ADICIONAL2'
        Visible = False
      end
      item
        TituloColumna = 'Precio Costo c/Imp.'
        Visible = True
      end
      item
        TituloColumna = 'Coef. Ganancia'
        Visible = True
      end
      item
        TituloColumna = 'Coef. Descuento'
        Visible = True
      end
      item
        TituloColumna = 'Precio Venta'
        Visible = True
      end
      item
        TituloColumna = 'Stock M'#225'ximo'
        Visible = True
      end
      item
        TituloColumna = 'Stock M'#237'nimo'
        Visible = True
      end
      item
        TituloColumna = 'Llevar Stock'
        Visible = True
      end
      item
        TituloColumna = 'PRECIO1'
        Visible = False
      end
      item
        TituloColumna = 'PRECIO2'
        Visible = False
      end
      item
        TituloColumna = 'PRECIO3'
        Visible = False
      end
      item
        TituloColumna = 'PRECIO4'
        Visible = False
      end
      item
        TituloColumna = 'PRECIO5'
        Visible = False
      end>
    NombreGuardarConfig = 'ABMProductos_Detalles'
    AltoTituloColumna = 15
    FuenteNormal = []
    Ordenar = True
    MoverColumna = True
    FiltrarColumna = True
    GuardarAncho = True
    Left = 488
    Top = 429
  end
  object ISVistaPreviaListado: TISVistaPreviaQR
    Reporte = RepProductoListado
    ShowModal = False
    Left = 672
    Top = 429
  end
end
