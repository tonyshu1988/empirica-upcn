object FFichaEmpleado: TFFichaEmpleado
  Left = 390
  Top = 181
  BorderStyle = bsDialog
  Caption = 'Ficha Empleado'
  ClientHeight = 559
  ClientWidth = 723
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RepFicha: TQuickRep
    Tag = 99
    Left = -8
    Top = 208
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = ZQ_Historial
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
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
      Height = 89
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
        235.479166666666700000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRDBLogo: TQRDBImage
        Left = 258
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
          682.625000000000000000
          29.104166666666670000
          169.333333333333300000)
        DataField = 'LOGO'
        Stretch = True
      end
      object QRLabel17: TQRLabel
        Left = 438
        Top = 49
        Width = 170
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1158.875000000000000000
          129.645833333333300000
          449.791666666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'FICHA EMPLEADOS'
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
      object RepFicha_Subtitulo: TQRLabel
        Left = 458
        Top = 28
        Width = 131
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1211.791666666667000000
          74.083333333333330000
          346.604166666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'RepFicha_Subtitulo'
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
      object RepFicha_Titulo: TQRLabel
        Left = 453
        Top = 4
        Width = 141
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1198.562500000000000000
          10.583333333333330000
          373.062500000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'RepFicha_Titulo'
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
      object QRLabel2: TQRLabel
        Left = 438
        Top = 49
        Width = 170
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1158.875000000000000000
          129.645833333333300000
          449.791666666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'FICHA EMPLEADOS'
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
      object QRLblFechaFicha: TQRLabel
        Left = 468
        Top = 68
        Width = 111
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1238.250000000000000000
          179.916666666666700000
          293.687500000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = '27/03/2001'
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
    end
    object QRBand11: TQRBand
      Tag = 99
      Left = 38
      Top = 226
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
          52.916666666666660000
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
    object QRGroupHeader1: TQRGroup
      Tag = 99
      Left = 38
      Top = 127
      Width = 1047
      Height = 24
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
        63.500000000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'ZQ_Historial.ID_SUCURSAL'
      FooterBand = QRGroupFooter1
      Master = RepFicha
      ReprintOnNewPage = False
      object QRDBText1: TQRDBText
        Left = 6
        Top = 3
        Width = 84
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          15.875000000000000000
          7.937500000000000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_Historial
        DataField = '_sucursal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
    end
    object QRGroupFooter1: TQRBand
      Tag = 99
      Left = 38
      Top = 186
      Width = 1047
      Height = 40
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
        105.833333333333300000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
    end
    object QRBand1: TQRBand
      Tag = 99
      Left = 38
      Top = 169
      Width = 1047
      Height = 17
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
        44.979166666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText19: TQRDBText
        Left = 4
        Top = 1
        Width = 117
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          10.583333333333330000
          2.645833333333333000
          309.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_Historial
        DataField = 'FECHA_INGRESO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRDBText2: TQRDBText
        Left = 129
        Top = 1
        Width = 117
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          341.312500000000000000
          2.645833333333333000
          309.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_Historial
        DataField = 'FECHA_EGRESO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 254
        Top = 1
        Width = 170
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          672.041666666666800000
          2.645833333333333000
          449.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_Historial
        DataField = '_NombreEpleado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRDBText4: TQRDBText
        Left = 741
        Top = 1
        Width = 302
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1960.562500000000000000
          2.645833333333333000
          799.041666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_Historial
        DataField = 'DETALLE_EGRESO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 430
        Top = 1
        Width = 305
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1137.708333333333000000
          2.645833333333333000
          806.979166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ZQ_Historial
        DataField = 'DETALLE_INGRESO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 7
      end
    end
    object ChildBand1: TQRChildBand
      Tag = 99
      Left = 38
      Top = 151
      Width = 1047
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
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      ParentBand = QRGroupHeader1
      PrintOrder = cboAfterParent
      object QRLabel29: TQRLabel
        Left = 4
        Top = 2
        Width = 117
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
          309.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Ingreso'
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
        Left = 129
        Top = 2
        Width = 117
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          341.312500000000000000
          5.291666666666667000
          309.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Egreso'
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
        Left = 254
        Top = 2
        Width = 170
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          672.041666666666800000
          5.291666666666667000
          449.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Empleado'
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
        Left = 430
        Top = 2
        Width = 170
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1137.708333333333000000
          5.291666666666667000
          449.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Detalle Ingreso'
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
        Left = 741
        Top = 2
        Width = 170
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1960.562500000000000000
          5.291666666666667000
          449.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Detalle Egreso'
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
  object panelContenedor: TPanel
    Left = 0
    Top = 0
    Width = 723
    Height = 507
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object panelFicha: TPanel
      Left = 0
      Top = 0
      Width = 723
      Height = 144
      Align = alTop
      BevelOuter = bvNone
      BorderWidth = 5
      TabOrder = 0
      object gBoxFechaYHora: TGroupBox
        Left = 5
        Top = 5
        Width = 356
        Height = 134
        Align = alLeft
        TabOrder = 0
        object lblFecha: TLabel
          Left = 2
          Top = 15
          Width = 352
          Height = 18
          Align = alTop
          Alignment = taCenter
          Caption = 'lblFecha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblHora: TLabel
          Left = 2
          Top = 33
          Width = 352
          Height = 99
          Align = alClient
          Alignment = taCenter
          Caption = '10:24'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -67
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object btnFicharIngreso: TBitBtn
        Left = 373
        Top = 16
        Width = 280
        Height = 53
        Caption = 'Fichar Ingreso'
        TabOrder = 1
        OnClick = btnFicharIngresoClick
      end
      object btnFicharEgreso: TBitBtn
        Left = 373
        Top = 79
        Width = 280
        Height = 53
        Caption = 'Fichar Egreso'
        TabOrder = 2
        OnClick = btnFicharEgresoClick
      end
    end
    object panelHistoria: TPanel
      Left = 0
      Top = 144
      Width = 723
      Height = 363
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 5
      TabOrder = 1
      object lblTituloHistorial: TLabel
        Left = 5
        Top = 5
        Width = 713
        Height = 13
        Align = alTop
        Alignment = taCenter
        Caption = 'Historial'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object DBGridHistoria: TDBGrid
        Left = 5
        Top = 18
        Width = 713
        Height = 284
        Align = alClient
        Color = 14606012
        DataSource = DS_Historial
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridHistoriaDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA_INGRESO'
            Title.Alignment = taCenter
            Title.Caption = 'Ingreso'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA_EGRESO'
            Title.Alignment = taCenter
            Title.Caption = 'Egreso'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_NombreEpleado'
            Title.Alignment = taCenter
            Title.Caption = 'Empleado'
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = '_sucursal'
            Title.Alignment = taCenter
            Title.Caption = 'Sucursal'
            Width = 219
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 5
        Top = 302
        Width = 713
        Height = 56
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel1'
        TabOrder = 1
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 713
          Height = 13
          Align = alTop
          Caption = 
            'Observaci'#243'n Ingreso:                                            ' +
            '        Observaci'#243'n Egreso:'
        end
        object DBMemoDetalleIngreso: TDBMemo
          Left = 0
          Top = 13
          Width = 328
          Height = 43
          Align = alLeft
          DataField = 'DETALLE_INGRESO'
          DataSource = DS_Historial
          ReadOnly = True
          TabOrder = 0
        end
        object DBMemoDetalleEgreso: TDBMemo
          Left = 331
          Top = 13
          Width = 382
          Height = 43
          Align = alClient
          DataField = 'DETALLE_EGRESO'
          DataSource = DS_Historial
          ReadOnly = True
          TabOrder = 1
        end
        object Panel2: TPanel
          Left = 328
          Top = 13
          Width = 3
          Height = 43
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
        end
      end
    end
  end
  object panelRegistrarIngresoEgreso: TPanel
    Tag = 99
    Left = 148
    Top = 142
    Width = 369
    Height = 180
    BevelInner = bvLowered
    BorderWidth = 1
    Color = clActiveBorder
    TabOrder = 5
    Visible = False
    object lblTituloRegistrar: TLabel
      Left = 3
      Top = 3
      Width = 363
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'Fichar'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 28
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Usuario:'
    end
    object Label3: TLabel
      Left = 16
      Top = 54
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Contrase'#241'a:'
    end
    object Label4: TLabel
      Left = 16
      Top = 77
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Observaci'#243'n:'
    end
    object editRegistrarContrasenia: TEdit
      Left = 95
      Top = 50
      Width = 258
      Height = 21
      PasswordChar = '*'
      TabOrder = 0
    end
    object memoRegistrarDetalle: TMemo
      Left = 95
      Top = 77
      Width = 258
      Height = 60
      TabOrder = 1
    end
    object btnRegistrarAceptar: TBitBtn
      Left = 15
      Top = 144
      Width = 110
      Height = 29
      Caption = 'Aceptar'
      TabOrder = 2
      OnClick = btnRegistrarAceptarClick
      Layout = blGlyphRight
    end
    object btnRegistrarCancelar: TBitBtn
      Left = 243
      Top = 144
      Width = 110
      Height = 29
      Cancel = True
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = btnRegistrarCancelarClick
      Layout = blGlyphRight
    end
    object ComboBoxUsuarios: TComboBox
      Left = 95
      Top = 24
      Width = 258
      Height = 21
      ItemHeight = 13
      TabOrder = 4
    end
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
    Left = 492
    Top = 282
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
          ItemName = 'btnVerSucursales'
        end
        item
          Visible = True
          ItemName = 'btnImprimir'
        end
        item
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
    object btnSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 6
      OnClick = btnSalirClick
      AutoGrayScale = False
    end
    object btnVerSucursales: TdxBarLargeButton
      Caption = 'Ver Sucursal Propia'
      Category = 0
      Hint = 
        'Ver el historial de todas las sucursales o solamente de la sucur' +
        'sal propia'
      Visible = ivAlways
      LargeImageIndex = 12
      OnClick = btnVerSucursalesClick
      AutoGrayScale = False
    end
    object btnImprimir: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = btnImprimirClick
      AutoGrayScale = False
    end
    object GrupoVisualizacion: TdxBarGroup
      Items = (
        'btnSalir'
        'btnVerSucursales'
        'btnImprimir')
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 488
    Top = 224
  end
  object ZQ_Historial: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select h.*'
      'from historial_ficha_emplado h'
      'where cast(h.fecha_ingreso as date) = :fecha'
      '  and ((h.id_sucursal = :id_sucursal) or (:id_sucursal = -1))')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    Left = 56
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    object ZQ_HistorialID_HISTORIAL_FICHA: TIntegerField
      FieldName = 'ID_HISTORIAL_FICHA'
    end
    object ZQ_HistorialID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_HistorialFECHA_INGRESO: TDateTimeField
      FieldName = 'FECHA_INGRESO'
    end
    object ZQ_HistorialFECHA_EGRESO: TDateTimeField
      FieldName = 'FECHA_EGRESO'
    end
    object ZQ_HistorialDETALLE_INGRESO: TStringField
      FieldName = 'DETALLE_INGRESO'
      Size = 200
    end
    object ZQ_HistorialDETALLE_EGRESO: TStringField
      FieldName = 'DETALLE_EGRESO'
      Size = 200
    end
    object ZQ_HistorialID_EMPLEADO: TIntegerField
      FieldName = 'ID_EMPLEADO'
    end
    object ZQ_Historial_sucursal: TStringField
      FieldKind = fkLookup
      FieldName = '_sucursal'
      LookupDataSet = DM.ZQ_SucursalesVisibles
      LookupKeyFields = 'ID_SUCURSAL'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_SUCURSAL'
      Size = 100
      Lookup = True
    end
    object ZQ_Historial_NombreEpleado: TStringField
      FieldKind = fkLookup
      FieldName = '_NombreEpleado'
      LookupDataSet = ZQ_Usuarios
      LookupKeyFields = 'ID_PERSONA'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_EMPLEADO'
      Size = 100
      Lookup = True
    end
  end
  object DS_Historial: TDataSource
    DataSet = ZQ_Historial
    Left = 56
    Top = 256
  end
  object EKOrdenarGrilla1: TEKOrdenarGrilla
    Grilla = DBGridHistoria
    Filtros = <
      item
        TituloColumna = 'Ingreso'
        Visible = True
      end
      item
        TituloColumna = 'Egreso'
        Visible = True
      end
      item
        TituloColumna = 'Empleado'
        Visible = True
      end
      item
        TituloColumna = 'Sucursal'
        Visible = True
      end>
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = False
    PermitirMover = False
    PermitirFiltrar = False
    Left = 56
    Top = 308
  end
  object ZQ_VerificarIngresoEgreso: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select h.*'
      'from historial_ficha_emplado h'
      'where cast(h.fecha_ingreso as date) = :fecha'
      '  and h.fecha_egreso is null'
      '  and h.id_empleado = :id_empleado'
      '  and h.id_sucursal = :id_sucursal')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_empleado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    Left = 192
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fecha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_empleado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end>
    object ZQ_VerificarIngresoEgresoID_HISTORIAL_FICHA: TIntegerField
      FieldName = 'ID_HISTORIAL_FICHA'
      Required = True
    end
    object ZQ_VerificarIngresoEgresoID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_VerificarIngresoEgresoID_EMPLEADO: TIntegerField
      FieldName = 'ID_EMPLEADO'
    end
    object ZQ_VerificarIngresoEgresoFECHA_INGRESO: TDateTimeField
      FieldName = 'FECHA_INGRESO'
    end
    object ZQ_VerificarIngresoEgresoFECHA_EGRESO: TDateTimeField
      FieldName = 'FECHA_EGRESO'
    end
    object ZQ_VerificarIngresoEgresoDETALLE_INGRESO: TStringField
      FieldName = 'DETALLE_INGRESO'
      Size = 200
    end
    object ZQ_VerificarIngresoEgresoDETALLE_EGRESO: TStringField
      FieldName = 'DETALLE_EGRESO'
      Size = 200
    end
  end
  object EKVistaPreviaQR1: TEKVistaPreviaQR
    Reporte = RepFicha
    ShowModal = False
    Left = 488
    Top = 336
  end
  object ZQ_Usuarios: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select p.id_persona, p.nombre, p.clave'
      'from persona_relacion pr'
      'left join persona p on (pr.id_persona = p.id_persona)'
      'where (pr.id_relacion = 12) and (pr.id_sucursal = :ID_SUCURSAL)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_SUCURSAL'
        ParamType = ptUnknown
      end>
    Left = 488
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_SUCURSAL'
        ParamType = ptUnknown
      end>
    object ZQ_UsuariosID_PERSONA: TIntegerField
      FieldName = 'ID_PERSONA'
      Required = True
    end
    object ZQ_UsuariosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_UsuariosCLAVE: TStringField
      FieldName = 'CLAVE'
      Size = 10
    end
  end
  object DS_Usuarios: TDataSource
    DataSet = ZQ_Usuarios
    Left = 552
    Top = 168
  end
  object EKLlenarComboUsuarios: TEKLlenarCombo
    dataset = ZQ_Usuarios
    combo = ComboBoxUsuarios
    CampoClave = 'ID_PERSONA'
    CampoVer = 'NOMBRE'
    Left = 576
    Top = 224
  end
end
