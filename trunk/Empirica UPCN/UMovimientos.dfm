object FMovimientos: TFMovimientos
  Left = 293
  Top = 128
  Width = 1118
  Height = 643
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
  DesignSize = (
    1110
    616)
  PixelsPerInch = 96
  TextHeight = 13
  object PanelConciliar: TPanel
    Left = 352
    Top = 197
    Width = 375
    Height = 118
    Anchors = []
    BevelInner = bvSpace
    BorderStyle = bsSingle
    TabOrder = 5
    Visible = False
    object LabelPreguntaConciliar: TLabel
      Left = 37
      Top = 31
      Width = 297
      Height = 13
      Alignment = taCenter
      Caption = #191'Esta Seguro que desea Conciliar este movimiento?'
    end
    object LabelFechaConciliacion: TLabel
      Left = 55
      Top = 55
      Width = 107
      Height = 13
      Caption = 'Fecha conciliacion:'
    end
    object btnConciliarAceptar: TButton
      Left = 52
      Top = 81
      Width = 75
      Height = 21
      Caption = 'Si'
      TabOrder = 0
      OnClick = btnConciliarAceptarClick
    end
    object btnConciliarCancelar: TButton
      Left = 244
      Top = 81
      Width = 75
      Height = 21
      Caption = 'No'
      TabOrder = 1
      OnClick = btnConciliarCancelarClick
    end
    object PConcilTitulo: TPanel
      Tag = 99
      Left = 2
      Top = 2
      Width = 367
      Height = 23
      Align = alTop
      BevelInner = bvLowered
      BorderStyle = bsSingle
      Caption = 'Conciliar Movimiento'
      Color = 16571333
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DTPFechaConciliar: TDateTimePicker
      Left = 166
      Top = 51
      Width = 103
      Height = 21
      Date = 40507.561240590280000000
      Time = 40507.561240590280000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object PContenedor: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 564
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      1008
      564)
    object RepLibroB: TQuickRep
      Tag = 99
      Left = -228
      Top = 120
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
      ReportTitle = 'Reporte de Libro Banco'
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stQRP
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
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          272.520833333333400000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBImage1: TQRDBImage
          Left = 49
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
            129.645833333333300000
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
          ExportAs = exptText
          FontSize = 12
        end
        object RepLibroB_Reporte_Titulo_2: TQRLabel
          Left = -90
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
            637.645833333333400000
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
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
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText8: TQRDBText
          Left = 184
          Top = 0
          Width = 76
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            486.833333333333300000
            0.000000000000000000
            201.083333333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'NRO_ORDEN_STRING'
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText12: TQRDBText
          Left = 934
          Top = 0
          Width = 111
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2471.208333333333000000
            0.000000000000000000
            293.687500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'SALDO'
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText13: TQRDBText
          Left = 715
          Top = 0
          Width = 102
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1891.770833333333000000
            0.000000000000000000
            269.875000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'DEBE'
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText14: TQRDBText
          Left = 383
          Top = 0
          Width = 112
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1013.354166666667000000
            0.000000000000000000
            296.333333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'NRO_MEDIO'
          Transparent = True
          WordWrap = True
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText16: TQRDBText
          Left = 264
          Top = 0
          Width = 121
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
            320.145833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'MEDIO'
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText17: TQRDBText
          Left = 821
          Top = 0
          Width = 108
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2172.229166666667000000
            0.000000000000000000
            285.750000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'HABER'
          Transparent = True
          WordWrap = True
          ExportAs = exptText
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
          ExportAs = exptText
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
          Left = 384
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
            1016.000000000000000000
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
          Left = 495
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
            1309.687500000000000000
            0.000000000000000000
            2.645833333333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape12: TQRShape
          Left = 714
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
            1889.125000000000000000
            0.000000000000000000
            2.645833333333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape13: TQRShape
          Left = 819
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
            2166.937500000000000000
            0.000000000000000000
            2.645833333333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape14: TQRShape
          Left = 931
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
            2463.270833333333000000
            0.000000000000000000
            2.645833333333333000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRDBText7: TQRDBText
          Left = 498
          Top = 0
          Width = 213
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1317.625000000000000000
            0.000000000000000000
            563.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'PROVEEDOR'
          Transparent = True
          WordWrap = True
          ExportAs = exptText
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
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          42.333333333333340000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        ParentBand = QRBand5
        PrintOrder = cboAfterParent
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel21: TQRLabel
          Left = 712
          Top = 1
          Width = 105
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1883.833333333333000000
            2.645833333333333000
            277.812500000000000000)
          Alignment = taCenter
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel22: TQRLabel
          Left = 936
          Top = 1
          Width = 109
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2476.500000000000000000
            2.645833333333333000
            288.395833333333300000)
          Alignment = taCenter
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel23: TQRLabel
          Left = 383
          Top = 1
          Width = 114
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1013.354166666667000000
            2.645833333333333000
            301.625000000000000000)
          Alignment = taCenter
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel26: TQRLabel
          Left = 264
          Top = 1
          Width = 121
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
            320.145833333333300000)
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
        object QRLabel14: TQRLabel
          Left = 816
          Top = 1
          Width = 113
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
            298.979166666666700000)
          Alignment = taCenter
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel16: TQRLabel
          Left = 495
          Top = 1
          Width = 218
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1309.687500000000000000
            2.645833333333333000
            576.791666666666800000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Denominaci'#243'n'
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
          ExportAs = exptText
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
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          39.687500000000000000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageFooter
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
            34.395833333333340000
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
          ExportAs = exptText
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
            34.395833333333340000
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
          ExportAs = exptText
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
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          58.208333333333340000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel47: TQRLabel
          Left = 602
          Top = 3
          Width = 101
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Frame.Style = psDot
          Size.Values = (
            37.041666666666670000
            1592.791666666667000000
            7.937500000000000000
            267.229166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Caption = 'TOTALES:'
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
        object QRExpr3: TQRExpr
          Left = 822
          Top = 3
          Width = 108
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2174.875000000000000000
            7.937500000000000000
            285.750000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Color = clWhite
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'FORMATNUMERIC('#39'$###,###,###,##0.00'#39',SUM(LIBRO_BANCO.HABER))'
          ExportAs = exptText
          FontSize = 7
        end
        object QRExpr4: TQRExpr
          Left = 706
          Top = 3
          Width = 111
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1867.958333333333000000
            7.937500000000000000
            293.687500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Color = clWhite
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'FORMATNUMERIC('#39'$###,###,###,##0.00'#39',SUM(LIBRO_BANCO.DEBE))'
          ExportAs = exptText
          FontSize = 7
        end
      end
    end
    object ReporteCaratulaOP: TQuickRep
      Tag = 99
      Left = -109
      Top = 209
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
      ReportTitle = 'Reporte Car'#225'tula OPs'
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stQRP
      object QRBand4: TQRBand
        Tag = 99
        Left = 38
        Top = 38
        Width = 1047
        Height = 147
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
          388.937500000000000000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageHeader
        object QRLabel12: TQRLabel
          Left = 7
          Top = 125
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
            330.729166666666700000
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel37: TQRLabel
          Left = 179
          Top = 125
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
            330.729166666666700000
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel38: TQRLabel
          Left = 348
          Top = 125
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
            330.729166666666700000
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel44: TQRLabel
          Left = 515
          Top = 125
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
            330.729166666666700000
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
          ExportAs = exptText
          FontSize = 8
        end
        object qrDesde: TQRLabel
          Left = 72
          Top = 125
          Width = 46
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            190.500000000000000000
            330.729166666666700000
            121.708333333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'qrDesde'
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
        object qrHasta: TQRLabel
          Left = 241
          Top = 125
          Width = 45
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            637.645833333333400000
            330.729166666666700000
            119.062500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'qrHasta'
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
        object qrOrden: TQRLabel
          Left = 397
          Top = 125
          Width = 46
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1050.395833333333000000
            330.729166666666700000
            121.708333333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'qrOrden'
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
        object qrCuenta: TQRLabel
          Left = 570
          Top = 125
          Width = 51
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1508.125000000000000000
            330.729166666666700000
            134.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'qrCuenta'
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
        object QRLabel34: TQRLabel
          Left = 352
          Top = 11
          Width = 343
          Height = 36
          Frame.Color = clGray
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            95.250000000000000000
            931.333333333333200000
            29.104166666666670000
            907.520833333333200000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'GRUPO DE'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -29
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 22
        end
        object QRLabel33: TQRLabel
          Left = 352
          Top = 51
          Width = 343
          Height = 36
          Frame.Color = clGray
          Frame.DrawTop = False
          Frame.DrawBottom = True
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            95.250000000000000000
            931.333333333333200000
            134.937500000000000000
            907.520833333333200000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'ORDENES DE PAGO'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clGray
          Font.Height = -29
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 22
        end
      end
      object QRBand9: TQRBand
        Tag = 99
        Left = 38
        Top = 201
        Width = 1047
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
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
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText24: TQRDBText
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
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText25: TQRDBText
          Left = 143
          Top = 0
          Width = 67
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
            177.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'NRO_ORDEN_STRING'
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText32: TQRDBText
          Left = 324
          Top = 0
          Width = 97
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            857.250000000000000000
            0.000000000000000000
            256.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'NRO_MEDIO'
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText33: TQRDBText
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
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText34: TQRDBText
          Left = 215
          Top = 0
          Width = 112
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            568.854166666666700000
            0.000000000000000000
            296.333333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'MEDIO'
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText35: TQRDBText
          Left = 840
          Top = 0
          Width = 97
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2222.500000000000000000
            0.000000000000000000
            256.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'NRO_FACTURA'
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText37: TQRDBText
          Left = 424
          Top = 0
          Width = 197
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1121.833333333333000000
            0.000000000000000000
            521.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'PROVEEDOR'
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText28: TQRDBText
          Left = 618
          Top = 0
          Width = 126
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1635.125000000000000000
            0.000000000000000000
            333.375000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'NOMBRE_CONCEPTO'
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRExpr2: TQRExpr
          Left = 936
          Top = 0
          Width = 107
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            2476.500000000000000000
            0.000000000000000000
            283.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 'if(LIBRO_BANCO.DEBE=0,LIBRO_BANCO.HABER,LIBRO_BANCO.DEBE)'
          Mask = '$ #,##0.00'
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText27: TQRDBText
          Left = 748
          Top = 0
          Width = 91
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1979.083333333333000000
            0.000000000000000000
            240.770833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = LIBRO_BANCO
          DataField = 'NRO_RECIBO'
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
      end
      object QRChildBand3: TQRChildBand
        Tag = 99
        Left = 38
        Top = 185
        Width = 1047
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clSilver
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          42.333333333333340000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        ParentBand = QRBand4
        PrintOrder = cboAfterParent
        object QRLabel51: TQRLabel
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel52: TQRLabel
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel53: TQRLabel
          Left = 139
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
            367.770833333333300000
            2.645833333333333000
            190.500000000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel54: TQRLabel
          Left = 616
          Top = 1
          Width = 129
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1629.833333333333000000
            2.645833333333333000
            341.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Concepto'
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
        object QRLabel55: TQRLabel
          Left = 941
          Top = 1
          Width = 100
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2489.729166666667000000
            2.645833333333333000
            264.583333333333300000)
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
        object QRLabel56: TQRLabel
          Left = 322
          Top = 1
          Width = 99
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            851.958333333333200000
            2.645833333333333000
            261.937500000000000000)
          Alignment = taCenter
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel57: TQRLabel
          Left = 214
          Top = 1
          Width = 100
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            566.208333333333300000
            2.645833333333333000
            264.583333333333300000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel58: TQRLabel
          Left = 840
          Top = 1
          Width = 97
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2222.500000000000000000
            2.645833333333333000
            256.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Factura'
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
          Left = 424
          Top = 1
          Width = 193
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
            510.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Denominaci'#243'n'
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
        object QRLabel35: TQRLabel
          Left = 744
          Top = 1
          Width = 97
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1968.500000000000000000
            2.645833333333333000
            256.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Recibo'
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
      object QRBand10: TQRBand
        Tag = 99
        Left = 38
        Top = 297
        Width = 1047
        Height = 36
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
          95.250000000000000000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageFooter
        object QRExpr9: TQRExpr
          Left = 928
          Top = 0
          Width = 119
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            2455.333333333333000000
            0.000000000000000000
            314.854166666666700000)
          Alignment = taRightJustify
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          Color = clWhite
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = #39'Pag.: '#39'+PAGENUMBER'
          ExportAs = exptText
          FontSize = 7
        end
      end
      object QRBand11: TQRBand
        Tag = 99
        Left = 38
        Top = 215
        Width = 1047
        Height = 82
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
          216.958333333333400000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbSummary
        object QRExpr1: TQRExpr
          Left = 6
          Top = 4
          Width = 210
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
            555.625000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = #39'Cantidad de Movimientos: '#39'+COUNT'
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel62: TQRLabel
          Left = 133
          Top = 60
          Width = 92
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Frame.Style = psDot
          Size.Values = (
            37.041666666666670000
            351.895833333333300000
            158.750000000000000000
            243.416666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Caption = 'Confeccion'#243':'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel63: TQRLabel
          Left = 548
          Top = 60
          Width = 101
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Frame.Style = psDot
          Size.Values = (
            37.041666666666670000
            1449.916666666667000000
            158.750000000000000000
            267.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Caption = 'Autorizado por:'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRExpr19: TQRExpr
          Left = 916
          Top = 3
          Width = 127
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2423.583333333333000000
            7.937500000000000000
            336.020833333333400000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Color = clWhite
          ParentFont = False
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = 
            'FORMATNUMERIC('#39'$###,###,###,##0.00'#39',SUM(LIBRO_BANCO.DEBE)+SUM(LI' +
            'BRO_BANCO.HABER))'
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel45: TQRLabel
          Left = 810
          Top = 3
          Width = 101
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Frame.Style = psDot
          Size.Values = (
            37.041666666666670000
            2143.125000000000000000
            7.937500000000000000
            267.229166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Caption = 'TOTAL:'
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
    end
    object PanelImpresion: TPanel
      Left = 386
      Top = 189
      Width = 494
      Height = 281
      Anchors = []
      BevelInner = bvRaised
      BevelOuter = bvNone
      BevelWidth = 3
      BorderWidth = 3
      TabOrder = 2
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
        Color = 12644543
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
        ScrollBars = ssBoth
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
      ReportTitle = 'Reporte Solicitud Compra/Pago'
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
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          322.791666666666700000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
            42.333333333333340000
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
          ExportAs = exptText
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
            58.208333333333340000
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
          ExportAs = exptText
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
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          296.333333333333400000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
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
          ExportAs = exptText
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
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          58.208333333333340000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
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
          ExportAs = exptText
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
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          39.687500000000000000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        ParentBand = QRSubDetail1
        PrintOrder = cboAfterParent
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
          ExportAs = exptText
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
            997.479166666666900000
            2.645833333333333000
            343.958333333333400000)
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
          ExportAs = exptText
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
          ExportAs = exptText
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
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          47.625000000000000000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
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
          ExportAs = exptText
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
            994.833333333333200000
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
          ExportAs = exptText
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
          ExportAs = exptText
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
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          550.333333333333400000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
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
            661.458333333333200000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Firma y sello de la Secretar'#237'a responsable'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
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
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          42.333333333333340000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
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
          ExportAs = exptText
          FontSize = 7
        end
      end
    end
    object PParametrosLibroBanco: TPanel
      Left = 0
      Top = 0
      Width = 1008
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 1
      object Label8: TLabel
        Left = 41
        Top = 8
        Width = 46
        Height = 13
        Caption = 'Cuenta:'
      end
      object Label9: TLabel
        Left = 210
        Top = 32
        Width = 78
        Height = 13
        Caption = 'Fecha Desde:'
      end
      object Label11: TLabel
        Left = 392
        Top = 32
        Width = 74
        Height = 13
        Caption = 'Fecha Hasta:'
      end
      object Label10: TLabel
        Left = 12
        Top = 31
        Width = 75
        Height = 13
        Caption = 'Ordenar por:'
      end
      object DTPFechaDesde: TDateTimePicker
        Left = 293
        Top = 28
        Width = 94
        Height = 21
        Date = 40429.660294768520000000
        Time = 40429.660294768520000000
        TabOrder = 0
      end
      object DTPFechaHasta: TDateTimePicker
        Left = 466
        Top = 28
        Width = 94
        Height = 21
        Date = 40429.660352638890000000
        Time = 40429.660352638890000000
        TabOrder = 1
      end
      object DBLCuenta: TComboBox
        Left = 90
        Top = 4
        Width = 470
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
      end
      object ComboOrden: TComboBox
        Left = 90
        Top = 28
        Width = 111
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 3
        Text = 'Fecha Emision'
        Items.Strings = (
          'Fecha Emision'
          'Fecha PD')
      end
      object Panel1: TPanel
        Left = 927
        Top = 0
        Width = 81
        Height = 51
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 4
        object StaticText1: TStaticText
          Left = 0
          Top = 34
          Width = 81
          Height = 17
          Align = alBottom
          Alignment = taCenter
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
      object btaplicar: TBitBtn
        Left = 567
        Top = 4
        Width = 84
        Height = 43
        Caption = 'Aplicar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = btaplicar2Click
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF00B24900B54F00B95900B959FF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF80F9C99CFFDA8FFFD588F3C700
          B959FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          06A1365FFFC565FFC65FFFC53FFFBB5FFFC500B54FFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF08C25D2DFFB637FFB92DFFB616FFB000
          F8A243F0AB00B54FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF70A87B
          06F5A000F8A200FCA716F6A54CF8B76AF4BB70EFB753E19B00AF4DFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF00901B00EA9054F2B16AF4BB71B68C5FBF8A78
          EEB985E9B680E8B372D99900AF4DFF00FFFF00FFFF00FFFF00FFFF00FF08C25D
          64EBAD70EFB770EFB7FF00FFFF00FF74BA848DE4B28DE6B598DFB295DAA900A4
          40FF00FFFF00FFFF00FFFF00FF70DFA274E6AD78E3AA47BA5BFF00FFFF00FFFF
          00FF84AE86A1E0B6A1E0B6AADEB6B2DEB9009E37FF00FFFF00FFFF00FFFF00FF
          FF00FF60C778FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAFDFBABBDFBEC0DF
          C1C4E2C400962B6BAD6FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFC4E2C4C4E2C4CCE5CCD4E9D406931BFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD4E9
          D4DAECDACFE7D0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF86C786FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      end
    end
    object PIngresos: TPanel
      Left = 0
      Top = 448
      Width = 1008
      Height = 116
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
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
        Left = 600
        Top = 73
        Width = 51
        Height = 13
        Caption = 'Importe:'
      end
      object lblEgrDenom: TLabel
        Left = 123
        Top = 75
        Width = 86
        Height = 13
        Caption = 'Denominaci'#243'n:'
      end
      object Label3: TLabel
        Left = 351
        Top = 73
        Width = 59
        Height = 13
        Caption = 'Concepto:'
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
      object Label12: TLabel
        Left = 10
        Top = 74
        Width = 29
        Height = 13
        Caption = 'Tipo:'
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
        Left = 600
        Top = 89
        Width = 137
        Height = 21
        DataField = 'IMPORTE'
        DataSource = DS_Cuenta_Movimiento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object DBLookupCBoxIngreso_Medio: TDBLookupComboBox
        Left = 299
        Top = 50
        Width = 246
        Height = 21
        DataField = 'ID_MEDIO'
        DataSource = DS_Cuenta_Movimiento
        DropDownRows = 5
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
        Left = 123
        Top = 89
        Width = 223
        Height = 21
        DataField = 'NRO_PROVEEDOR'
        DataSource = DS_Movimientos
        DropDownRows = 5
        DropDownWidth = 400
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'NRO_PROVEEDOR'
        ListField = 'APELLIDO_Y_NOMBRE'
        ListSource = DS_Proveedores
        ParentFont = False
        TabOrder = 7
        OnKeyUp = DBLookupCBoxIngreso_ProveedorKeyUp
      end
      object DBLookupCBoxIngreso_Concepto: TDBLookupComboBox
        Left = 351
        Top = 89
        Width = 246
        Height = 21
        DataField = 'ID_CONCEPTO'
        DataSource = DS_Movimientos
        DropDownRows = 5
        DropDownWidth = 400
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_CONCEPTO'
        ListField = 'NOMBRE_CONCEPTO'
        ListSource = DS_Conceptos
        ParentFont = False
        TabOrder = 8
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
        DropDownRows = 5
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
        Width = 1008
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
        TabOrder = 10
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
      object DBLUCBoxTipoProIng: TDBLookupComboBox
        Left = 10
        Top = 89
        Width = 112
        Height = 21
        DataField = 'ID_TIPO'
        DataSource = DS_Movimientos
        DropDownRows = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_TIPO'
        ListField = 'TIPO_PROVEEDOR'
        ListSource = DS_TipoProveedor
        ParentFont = False
        TabOrder = 6
        OnKeyUp = DBLookupCBoxIngreso_ProveedorKeyUp
      end
    end
    object DBGridLibroBanco: TDBGrid
      Left = 0
      Top = 51
      Width = 1008
      Height = 255
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
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
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
          Title.Caption = 'Denominaci'#243'n'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPO_PROVEEDOR'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Width = 127
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
      Top = 332
      Width = 1008
      Height = 116
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 5
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
        Left = 600
        Top = 74
        Width = 51
        Height = 13
        Caption = 'Importe:'
      end
      object lblIngDenom: TLabel
        Left = 128
        Top = 74
        Width = 86
        Height = 13
        Caption = 'Denominaci'#243'n:'
      end
      object Label17: TLabel
        Left = 349
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
      object Label1: TLabel
        Left = 10
        Top = 74
        Width = 29
        Height = 13
        Caption = 'Tipo:'
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
        Left = 600
        Top = 89
        Width = 138
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
      object DBLookupCBoxEgreso_Medio: TDBLookupComboBox
        Left = 301
        Top = 49
        Width = 248
        Height = 21
        DataField = 'ID_MEDIO'
        DataSource = DS_Cuenta_Movimiento
        DropDownRows = 5
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
        Left = 128
        Top = 89
        Width = 217
        Height = 21
        DataField = 'NRO_PROVEEDOR'
        DataSource = DS_Movimientos
        DropDownRows = 5
        DropDownWidth = 400
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
        OnKeyUp = DBLookupCBoxEgreso_ProveedorKeyUp
      end
      object DBLookupCBoxEgreso_Concepto: TDBLookupComboBox
        Left = 349
        Top = 89
        Width = 248
        Height = 21
        DataField = 'ID_CONCEPTO'
        DataSource = DS_Movimientos
        DropDownRows = 5
        DropDownWidth = 400
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
        DropDownRows = 5
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
        Width = 1008
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
        TabOrder = 9
      end
      object DBLUCBoxTipoProEgre: TDBLookupComboBox
        Left = 10
        Top = 89
        Width = 116
        Height = 21
        DataField = 'ID_TIPO'
        DataSource = DS_Movimientos
        DropDownRows = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        KeyField = 'ID_TIPO'
        ListField = 'TIPO_PROVEEDOR'
        ListSource = DS_TipoProveedor
        ParentFont = False
        TabOrder = 5
        OnKeyUp = DBLookupCBoxEgreso_ProveedorKeyUp
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 306
      Width = 1008
      Height = 26
      Align = alBottom
      BevelOuter = bvLowered
      Caption = ' '
      TabOrder = 8
      object Panel6: TPanel
        Left = 273
        Top = 1
        Width = 734
        Height = 24
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object Label13: TLabel
          Left = 232
          Top = 5
          Width = 76
          Height = 14
          Caption = 'Total Debe:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 488
          Top = 5
          Width = 82
          Height = 14
          Caption = 'Total Haber:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object totDebe: TLabel
          Left = 312
          Top = 5
          Width = 169
          Height = 14
          AutoSize = False
          Caption = '$0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object totHaber: TLabel
          Left = 573
          Top = 5
          Width = 156
          Height = 14
          AutoSize = False
          Caption = '$0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
      end
    end
    object QR_OrdenPago: TQuickRep
      Tag = 99
      Left = 689
      Top = 415
      Width = 952
      Height = 1347
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
      ReportTitle = 'Orden de Pago'
      SnapToGrid = True
      Units = MM
      Zoom = 120
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      PrevInitialZoom = qrZoomToFit
      PreviewDefaultSaveType = stQRP
      object QRBand13: TQRBand
        Tag = 99
        Left = 45
        Top = 179
        Width = 861
        Height = 318
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
          701.145833333333400000
          1898.385416666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText30: TQRDBText
          Left = 134
          Top = 30
          Width = 363
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888900000
            295.451388888888900000
            66.145833333333340000
            800.364583333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'APELLIDO_Y_NOMBRE'
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
          Left = 17
          Top = 30
          Width = 116
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            37.482638888888890000
            66.145833333333340000
            255.763888888888900000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Denominaci'#243'n:'
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
        object QRLabel10: TQRLabel
          Left = 55
          Top = 51
          Width = 78
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            121.267361111111100000
            112.447916666666700000
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText41: TQRDBText
          Left = 134
          Top = 51
          Width = 499
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888900000
            295.451388888888900000
            112.447916666666700000
            1100.225694444445000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Movimientos
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
        object QRDBText46: TQRDBText
          Left = 134
          Top = 73
          Width = 307
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888900000
            295.451388888888900000
            160.954861111111100000
            676.892361111111000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'NRO_DOCUMENTO'
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
        object QRLabel1: TQRLabel
          Left = 73
          Top = 7
          Width = 60
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            160.954861111111100000
            15.434027777777780000
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText1: TQRDBText
          Left = 134
          Top = 7
          Width = 365
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888900000
            295.451388888888900000
            15.434027777777780000
            804.774305555555600000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRShape1: TQRShape
          Left = 0
          Top = 24
          Width = 862
          Height = 6
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            13.229166666666670000
            0.000000000000000000
            52.916666666666660000
            1899.708333333333000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRDBText3: TQRDBText
          Left = 630
          Top = 7
          Width = 224
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888900000
            1389.062500000000000000
            15.434027777777780000
            493.888888888888900000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel2: TQRLabel
          Left = 501
          Top = 7
          Width = 126
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888900000
            1104.635416666667000000
            15.434027777777780000
            277.812500000000000000)
          Alignment = taLeftJustify
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRShape3: TQRShape
          Left = 0
          Top = 91
          Width = 862
          Height = 6
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            13.229166666666670000
            0.000000000000000000
            201.083333333333300000
            1899.708333333333000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRDBText15: TQRDBText
          Left = 134
          Top = 102
          Width = 739
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888900000
            295.451388888888900000
            224.895833333333300000
            1629.392361111111000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'NOMBRE_CONCEPTO'
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
        object QRLabel3: TQRLabel
          Left = 55
          Top = 102
          Width = 78
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            121.267361111111100000
            224.895833333333300000
            171.979166666666700000)
          Alignment = taRightJustify
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel6: TQRLabel
          Left = 4
          Top = 268
          Width = 98
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            8.819444444444445000
            590.902777777777800000
            216.076388888888900000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText2: TQRDBText
          Left = 104
          Top = 268
          Width = 745
          Height = 46
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            101.423611111111100000
            229.305555555555600000
            590.902777777777800000
            1642.621527777778000000)
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
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel7: TQRLabel
          Left = 4
          Top = 249
          Width = 90
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            8.819444444444445000
            549.010416666666600000
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRDBText4: TQRDBText
          Left = 104
          Top = 249
          Width = 745
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            35.277777777777780000
            229.305555555555600000
            549.010416666666600000
            1642.621527777778000000)
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
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRShape16: TQRShape
          Left = 650
          Top = 28
          Width = 1
          Height = 67
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            147.725694444444400000
            1433.159722222222000000
            61.736111111111120000
            2.204861111111111000)
          Shape = qrsVertLine
          VertAdjust = 0
        end
        object QRShape19: TQRShape
          Left = 0
          Top = 243
          Width = 862
          Height = 6
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            13.229166666666670000
            0.000000000000000000
            535.781250000000000000
            1900.590277777778000000)
          Shape = qrsHorLine
          VertAdjust = 0
        end
        object QRLabel43: TQRLabel
          Left = 2
          Top = 128
          Width = 97
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            4.409722222222222000
            282.222222222222200000
            213.871527777777800000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Descripci'#243'n:'
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
        object QRDBText64: TQRDBText
          Left = 11
          Top = 145
          Width = 833
          Height = 98
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            216.076388888888900000
            24.253472222222220000
            319.704861111111100000
            1836.649305555556000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'DESCRIPCION'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = False
          ExportAs = exptText
          FontSize = 8
        end
        object qrtImporteTotal: TQRLabel
          Left = 652
          Top = 47
          Width = 204
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            48.506944444444440000
            1437.569444444445000000
            103.628472222222200000
            449.791666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Caption = 'QrtImporteFPago'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          ExportAs = exptText
          FontSize = 12
        end
        object QRLabel32: TQRLabel
          Left = 499
          Top = 30
          Width = 40
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            1100.225694444445000000
            66.145833333333340000
            88.194444444444450000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo:'
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
        object QRDBText22: TQRDBText
          Left = 540
          Top = 30
          Width = 110
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888900000
            1190.625000000000000000
            66.145833333333340000
            242.534722222222200000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'TIPO_PROVEEDOR'
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
        object QRDBText63: TQRDBText
          Left = 16
          Top = 73
          Width = 114
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            35.277777777777780000
            160.954861111111100000
            251.354166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Movimientos
          DataField = 'TIPO_DOC'
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
      object QRBand14: TQRBand
        Tag = 99
        Left = 45
        Top = 45
        Width = 861
        Height = 134
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
          295.451388888888900000
          1898.385416666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageHeader
        object QRDBText65: TQRDBText
          Left = 614
          Top = 113
          Width = 235
          Height = 16
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
          ExportAs = exptText
          FontSize = 7
        end
        object QRShape2: TQRShape
          Left = 487
          Top = 0
          Width = 11
          Height = 133
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
          Left = 505
          Top = 4
          Width = 60
          Height = 16
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
          ExportAs = exptText
          FontSize = 7
        end
        object QRLabel95: TQRLabel
          Left = 505
          Top = 113
          Width = 103
          Height = 16
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
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText66: TQRDBText
          Left = 509
          Top = 26
          Width = 337
          Height = 80
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
          ExportAs = exptText
          FontSize = 36
        end
        object QRLabel102: TQRLabel
          Left = 98
          Top = 29
          Width = 299
          Height = 43
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
          ExportAs = exptText
          FontSize = 22
        end
        object QRLabel106: TQRLabel
          Left = 98
          Top = 67
          Width = 299
          Height = 43
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
          ExportAs = exptText
          FontSize = 22
        end
        object QRLabelImpresion: TQRLabel
          Left = 691
          Top = 4
          Width = 158
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.711805555555560000
            1523.559027777778000000
            8.819444444444445000
            348.368055555555600000)
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
          ExportAs = exptText
          FontSize = 10
        end
      end
      object QRSubDetail14: TQRSubDetail
        Tag = 99
        Left = 45
        Top = 497
        Width = 861
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
          48.506944444444440000
          1898.385416666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        Master = QR_OrdenPago
        PrintBefore = False
        PrintIfEmpty = True
        object QRLabel107: TQRLabel
          Left = 4
          Top = 2
          Width = 134
          Height = 18
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
          ExportAs = exptText
          FontSize = 9
        end
      end
      object QRChildBand8: TQRChildBand
        Tag = 99
        Left = 45
        Top = 519
        Width = 861
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
          39.687500000000000000
          1898.385416666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        ParentBand = QRSubDetail14
        PrintOrder = cboAfterParent
        object QRLabel110: TQRLabel
          Left = 112
          Top = 1
          Width = 161
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            246.944444444444400000
            2.204861111111111000
            354.982638888888900000)
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
        object QRLabel111: TQRLabel
          Left = 398
          Top = 1
          Width = 251
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            877.534722222222200000
            2.204861111111111000
            553.420138888888900000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel112: TQRLabel
          Left = 656
          Top = 1
          Width = 199
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            1446.388888888889000000
            2.204861111111111000
            438.767361111111100000)
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
        object QRLabel113: TQRLabel
          Left = 11
          Top = 1
          Width = 82
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            24.253472222222220000
            2.204861111111111000
            180.798611111111100000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel116: TQRLabel
          Left = 279
          Top = 1
          Width = 114
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.482638888888890000
            615.156250000000000000
            2.204861111111111000
            251.354166666666700000)
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
          ExportAs = exptText
          FontSize = 8
        end
      end
      object QRSubDetail17: TQRSubDetail
        Tag = 99
        Left = 45
        Top = 537
        Width = 861
        Height = 22
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
          48.506944444444440000
          1898.385416666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        Master = QR_OrdenPago
        DataSet = ZQ_Cuenta_Movimiento
        PrintBefore = False
        PrintIfEmpty = True
        object QRDBTextMedio: TQRDBText
          Left = 112
          Top = 2
          Width = 161
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            35.277777777777780000
            246.944444444444400000
            4.409722222222222000
            354.982638888888900000)
          Alignment = taCenter
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
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBTextImporte: TQRDBText
          Left = 656
          Top = 2
          Width = 199
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            35.277777777777780000
            1446.388888888889000000
            4.409722222222222000
            438.767361111111100000)
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
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBTextFechaE: TQRDBText
          Left = 2
          Top = 2
          Width = 104
          Height = 16
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
          DataField = 'fechaEmision'
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
        object QRDBTextNroCheque: TQRDBText
          Left = 403
          Top = 2
          Width = 246
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            35.277777777777780000
            888.559027777777800000
            4.409722222222222000
            542.395833333333300000)
          Alignment = taRightJustify
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
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBTextFechaCMD: TQRDBText
          Left = 279
          Top = 2
          Width = 114
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            35.277777777777780000
            615.156250000000000000
            4.409722222222222000
            251.354166666666700000)
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
          ExportAs = exptText
          FontSize = 7
        end
      end
      object QRSubDetail18: TQRSubDetail
        Tag = 99
        Left = 45
        Top = 559
        Width = 861
        Height = 260
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
          573.263888888888900000
          1898.385416666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        Master = QR_OrdenPago
        PrintBefore = False
        PrintIfEmpty = True
        object QrtImporteFPago: TQRLabel
          Left = 518
          Top = 4
          Width = 337
          Height = 17
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLblAutorizo: TQRLabel
          Left = 448
          Top = 178
          Width = 382
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Frame.Style = psDot
          Size.Values = (
            37.482638888888900000
            987.777777777777800000
            392.465277777777900000
            842.256944444444400000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Caption = 'Autorizado por:'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
        object QRLblConfecciona: TQRLabel
          Left = 46
          Top = 178
          Width = 363
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = True
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Frame.Style = psDot
          Size.Values = (
            37.482638888888900000
            101.423611111111100000
            392.465277777777900000
            800.364583333333400000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
          Caption = 'Confeccion'#243':'
          Color = clWhite
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 8
        end
      end
      object QRBand15: TQRBand
        Tag = 99
        Left = 45
        Top = 819
        Width = 861
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        Enabled = False
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          41.892361111111110000
          1898.385416666667000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageFooter
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
    Left = 792
    Top = 232
    DockControlHeights = (
      0
      102
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
          ItemName = 'btBuscar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'BtEditarMovimiento'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnAltaOrdenPago'
        end
        item
          Visible = True
          ItemName = 'BtIngresos'
        end
        item
          Visible = True
          ItemName = 'BtEgresos'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'BtAnularOrden'
        end
        item
          Visible = True
          ItemName = 'BtAnularMov'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnConciliar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'BtGuardar'
        end
        item
          Visible = True
          ItemName = 'BtCancelar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btSalir'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'barra'
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarABMBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      BorderStyle = bbsNone
      Caption = 'barraVertical'
      CaptionButtons = <>
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
          Visible = True
          ItemName = 'btImprimirLB'
        end
        item
          Visible = True
          ItemName = 'btnImprimirOrden'
        end
        item
          Visible = True
          ItemName = 'btImprimirCaratula'
        end
        item
          Visible = True
          ItemName = 'BtExportarExel'
        end
        item
          Visible = True
          ItemName = 'btnFiltrar'
        end
        item
          Visible = True
          ItemName = 'BtVerDetalle'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnEliminarMov'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OldName = 'barraVertical'
      OneOnRow = True
      RotateWhenVertical = False
      Row = 0
      UseOwnFont = True
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object BtIngresos: TdxBarLargeButton
      Caption = 'Crear Ingreso'
      Category = 0
      Hint = 'Inserta un nuevo movimiento de ingreso'
      Visible = ivAlways
      LargeImageIndex = 60
      OnClick = BtIngresosClick
      AutoGrayScale = False
    end
    object BtEgresos: TdxBarLargeButton
      Caption = 'Crear Egreso'
      Category = 0
      Hint = 'Inserta un nuevo movimiento de egreso'
      Visible = ivAlways
      LargeImageIndex = 61
      OnClick = BtEgresosClick
      AutoGrayScale = False
    end
    object btBuscar: TdxBarLargeButton
      Caption = 'Buscar'
      Category = 0
      Hint = 'Buscar'
      Visible = ivAlways
      LargeImageIndex = 29
      OnClick = btBuscarClick
      AutoGrayScale = False
    end
    object BtGuardar: TdxBarLargeButton
      Caption = 'Guardar'
      Category = 0
      Enabled = False
      Hint = 'Guarda los cambios'
      Visible = ivAlways
      LargeImageIndex = 3
      OnClick = BtGuardarClick
      AutoGrayScale = False
    end
    object BtCancelar: TdxBarLargeButton
      Caption = 'Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancela los cambios'
      Visible = ivAlways
      LargeImageIndex = 4
      OnClick = BtCancelarClick
      AutoGrayScale = False
    end
    object btImprimirLB: TdxBarLargeButton
      Caption = 'Libro Banco'
      Category = 0
      Hint = 'Imprimir Libro Banco'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = btImprimirLBClick
    end
    object btSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir del Libro Banco'
      Visible = ivAlways
      LargeImageIndex = 6
      OnClick = btSalirClick
      AutoGrayScale = False
    end
    object BtEditarMovimiento: TdxBarLargeButton
      Caption = 'Editar'
      Category = 0
      Hint = 'Editar el movimiento o orden de pago seleccionada'
      Visible = ivAlways
      LargeImageIndex = 35
      OnClick = BtEditarMovimientoClick
      AutoGrayScale = False
    end
    object btnFiltrar: TdxBarLargeButton
      Caption = 'Ver/Ocultar An.'
      Category = 0
      Hint = 'Ver/Ocultar los movimientos Anulados'
      Visible = ivAlways
      LargeImageIndex = 7
      OnClick = btnFiltrarClick
      AutoGrayScale = False
    end
    object BtVerDetalle: TdxBarLargeButton
      Caption = 'Ver Detalle'
      Category = 0
      Hint = 'Ver Detalle del movimiento o orden de pago seleccionada'
      Visible = ivAlways
      LargeImageIndex = 69
      OnClick = BtVerDetalleClick
      AutoGrayScale = False
    end
    object BtAnularOrden: TdxBarLargeButton
      Caption = 'Anular Orden'
      Category = 0
      Hint = 'Anula la orden de pago seleccionada'
      Visible = ivAlways
      LargeImageIndex = 9
      OnClick = BtAnularOrdenClick
      AutoGrayScale = False
    end
    object BtAnularMov: TdxBarLargeButton
      Caption = 'Anular Mov.'
      Category = 0
      Hint = 'Anular el movimiento seleccionado'
      Visible = ivAlways
      LargeImageIndex = 68
      OnClick = BtAnularMovClick
      AutoGrayScale = False
    end
    object BtExportarExel: TdxBarLargeButton
      Caption = 'Exportar Exel'
      Category = 0
      Hint = 'Exportar Exel'
      Visible = ivAlways
      LargeImageIndex = 66
      OnClick = BtExportarExelClick
      AutoGrayScale = False
    end
    object btnImprimirOrden: TdxBarLargeButton
      Caption = 'Orden Pago'
      Category = 0
      Hint = 'Imprimir Orden de Pago'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = btnImprimirOrdenClick
    end
    object btnAltaOrdenPago: TdxBarLargeButton
      Caption = 'Crear Orden Pago'
      Category = 0
      Hint = 'Ingresar una nueva Orden de Pago'
      Visible = ivAlways
      LargeImageIndex = 40
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
      LargeImageIndex = 12
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
      LargeImageIndex = 67
      ShortCut = 16465
      OnClick = AConciliarExecute
      AutoGrayScale = False
    end
    object btnEliminarMov: TdxBarLargeButton
      Caption = 'Eliminar Mov.'
      Category = 0
      Hint = 'Eliminar Mov.'
      Visible = ivAlways
      LargeImageIndex = 4
      OnClick = btnEliminarMovClick
      AutoGrayScale = False
    end
    object btnImprimirSolicitud: TdxBarLargeButton
      Caption = 'Solicitud Compra/Pago'
      Category = 0
      Hint = 'Solicitud Compra/Pago'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = btnImprimirSolicitudClick
      AutoGrayScale = False
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object btImprimirCaratula: TdxBarLargeButton
      Caption = 'Car'#225'tula OPs'
      Category = 0
      Hint = 'Car'#225'tula OPs'
      Visible = ivAlways
      LargeImageIndex = 51
      OnClick = btImprimirCaratulaClick
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
        'btnImprimirSolicitud'
        'btImprimirCaratula')
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
      DisplayWidth = 17
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
    object ZQ_Cuenta_MovimientocodMedioPago: TStringField
      FieldKind = fkLookup
      FieldName = 'codMedioPago'
      LookupDataSet = ZQ_Medios_Cobro_Pago
      LookupKeyFields = 'ID_MEDIO'
      LookupResultField = 'CODIGO_CORTO'
      KeyFields = 'ID_MEDIO'
      Lookup = True
    end
    object ZQ_Cuenta_MovimientoIMPRESO: TStringField
      FieldName = 'IMPRESO'
      Size = 1
    end
    object ZQ_Cuenta_MovimientoNRO_CHEQUE_TRANSF: TStringField
      FieldName = 'NRO_CHEQUE_TRANSF'
    end
    object ZQ_Cuenta_MovimientofechaEmision: TDateField
      FieldKind = fkLookup
      FieldName = 'fechaEmision'
      LookupDataSet = ZQ_Movimientos
      LookupKeyFields = 'NRO_MOVIMIENTO'
      LookupResultField = 'FECHA'
      KeyFields = 'NRO_MOVIMIENTO'
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
    SQL.Strings = (
      
        'select c.*, c.nombre_cuenta||'#39' - '#39'|| coalesce ('#39'N'#176': '#39' || c.nro_c' +
        'uenta_bancaria, '#39'N'#176': S/N'#39') Busqueda'
      'from ie_cuentas c'
      'order by c.id_cuenta')
    Params = <>
    Left = 592
    Top = 169
    object ZQ_CuentasID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
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
    object ZQ_CuentasCOLOR_CONSILIADO: TStringField
      FieldName = 'COLOR_CONSILIADO'
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
    AfterScroll = ZQ_ProveedoresAfterScroll
    SQL.Strings = (
      'select distinct p.nro_proveedor, p.apellido_y_nombre, p.id_tipo'
      'from ie_proveedores p'
      
        'left join proveedor_cuenta c on (p.nro_proveedor = c.id_proveedo' +
        'r)'
      'where (c.id_cuenta = :idCta)'
      '  and ((p.id_tipo = :tipo) or (:tipo = -1))'
      '  and (p.baja <> '#39'S'#39')'
      'order by apellido_y_nombre')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idCta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    Left = 593
    Top = 49
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idCta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object ZQ_ProveedoresNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
    end
    object ZQ_ProveedoresAPELLIDO_Y_NOMBRE: TStringField
      FieldName = 'APELLIDO_Y_NOMBRE'
      Size = 60
    end
    object ZQ_ProveedoresID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
    end
  end
  object ZQ_Conceptos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select distinct c.*'
      'from ie_conceptos c'
      
        'left join proveedor_concepto pc on (c.id_concepto = pc.id_concep' +
        'to)'
      'where (pc.id_proveedor = :idProveedor)'
      '  and (c.baja <> '#39'S'#39')'
      'order by nombre_concepto')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idProveedor'
        ParamType = ptUnknown
      end>
    Left = 457
    Top = 209
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idProveedor'
        ParamType = ptUnknown
      end>
    object ZQ_ConceptosID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
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
    object ZQ_ConceptosEDITABLE: TStringField
      FieldName = 'EDITABLE'
      Size = 1
    end
  end
  object ZQ_Movimientos: TZQuery
    Connection = DM.Conexion
    UpdateObject = UpdateMovimientos
    SQL.Strings = (
      'select m.*, p.id_tipo, c.nombre_concepto, p.apellido_y_nombre,'
      '       p.direccion, p.tipo_documento, p.nro_documento,'
      
        '       tp.descripcion as tipo_proveedor, td.descripcion as tipo_' +
        'doc'
      'from ie_movimientos m'
      
        'left join ie_proveedores p on (m.nro_proveedor = p.nro_proveedor' +
        ')'
      'left join ie_conceptos c on (m.id_concepto = c.id_concepto)'
      'left join tipo_proveedor tp on (tp.id_tipo = p.id_tipo)'
      
        'left join tipo_documento td on (td.tipo_documento = p.tipo_docum' +
        'ento)'
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
    end
    object ZQ_MovimientosNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
    end
    object ZQ_MovimientosID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
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
    object ZQ_MovimientosNRO_RECIBO: TStringField
      FieldName = 'NRO_RECIBO'
      Size = 50
    end
    object ZQ_MovimientosNRO_ORDEN_STRING: TStringField
      FieldName = 'NRO_ORDEN_STRING'
    end
    object ZQ_MovimientosID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
    end
    object ZQ_MovimientosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 600
    end
    object ZQ_MovimientosNRO_FACTURA: TStringField
      FieldName = 'NRO_FACTURA'
      Size = 200
    end
    object ZQ_MovimientosNRO_CUENTA: TIntegerField
      FieldName = 'NRO_CUENTA'
    end
    object ZQ_MovimientosNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 240
    end
    object ZQ_MovimientosAPELLIDO_Y_NOMBRE: TStringField
      FieldName = 'APELLIDO_Y_NOMBRE'
      Size = 60
    end
    object ZQ_MovimientosDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 150
    end
    object ZQ_MovimientosTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 10
    end
    object ZQ_MovimientosNRO_DOCUMENTO: TStringField
      FieldName = 'NRO_DOCUMENTO'
      Size = 30
    end
    object ZQ_MovimientosTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Size = 100
    end
    object ZQ_MovimientosTIPO_DOC: TStringField
      FieldName = 'TIPO_DOC'
      Size = 50
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
    TituloBuscar = 'Campo Busqueda:'
    TituloBuscar2 = 'Campo Busqueda 2:'
    ColorGrilla = 14606012
    AnchoClave = 80
    AnchoBuscar1 = 500
    AnchoBuscar2 = 500
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
    TituloBuscar = 'Campo Busqueda:'
    TituloBuscar2 = 'Campo Busqueda 2:'
    ColorGrilla = 14606012
    AnchoClave = 80
    AnchoBuscar1 = 500
    AnchoBuscar2 = 500
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
    object LIBRO_BANCODEBE: TFloatField
      DisplayWidth = 17
      FieldName = 'DEBE'
      currency = True
    end
    object LIBRO_BANCOHABER: TFloatField
      DisplayWidth = 17
      FieldName = 'HABER'
      currency = True
    end
    object LIBRO_BANCOSALDO: TFloatField
      DisplayWidth = 17
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
    object LIBRO_BANCONRO_MEDIO: TStringField
      FieldName = 'NRO_MEDIO'
      Size = 60
    end
    object LIBRO_BANCOORDEN_SALDO_ANTERIOR: TIntegerField
      FieldName = 'ORDEN_SALDO_ANTERIOR'
    end
    object LIBRO_BANCOTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Size = 50
    end
    object LIBRO_BANCONRO_FACTURA: TStringField
      FieldName = 'NRO_FACTURA'
      Size = 200
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
        TipoCampoIndiceVer = 'Es Nulo'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Fecha PD'
        Campo = 'fecha_pd'
        Tabla = 'ie'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndice = 6
        TipoCampoIndiceVer = 'Es Nulo'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Nro Movimiento'
        Campo = 'nro_pago_rec'
        Tabla = 'ie'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Nro Orden'
        Campo = 'Nro_orden_string'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Medio'
        Campo = 'medio'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Nro Medio'
        Campo = 'nro_medio'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Denominaci'#243'n'
        Campo = 'Proveedor'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Tipo'
        Campo = 'tipo_proveedor'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Concepto'
        Campo = 'nombre_concepto'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Nro Factura'
        Campo = 'nro_factura'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Nro Recibo'
        Campo = 'nro_recibo'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Conciliado'
        Campo = 'conciliado'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Fecha Conciliado'
        Campo = 'fecha_conciliado'
        Tabla = 'ie'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndice = 6
        TipoCampoIndiceVer = 'Es Nulo'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Anulado'
        Campo = 'CTA_MOV_ANULADO'
        Tabla = 'ie'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = LIBRO_BANCO
    SQL.Strings = (
      'select ie.*'
      'from ie_ver_libro_banco(:cuenta,:hasta,:desde,:ordenamiento) ie')
    SQL_Select.Strings = (
      'select ie.*')
    SQL_From.Strings = (
      'from ie_ver_libro_banco(:cuenta,:hasta,:desde,:ordenamiento) ie')
    UsarWhereOriginal = EK_Con_Where
    Left = 56
    Top = 104
  end
  object EKLlenarCuentas: TEKLlenarCombo
    dataset = ZQ_Cuentas
    combo = DBLCuenta
    OnCambio = EKLlenarCuentasCambio
    CampoClave = 'id_cuenta'
    CampoVer = 'Busqueda'
    Left = 57
    Top = 49
  end
  object EKListado_Proveedores: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select distinct p.*'
      'from ie_proveedores p'
      
        'left join proveedor_cuenta c on (p.nro_proveedor = c.id_proveedo' +
        'r)'
      'left join tipo_proveedor t on (p.id_tipo = t.id_tipo)'
      'where (c.id_cuenta = :idCta)'
      '  and (t.descripcion = :desc)'
      '  and (p.baja <> '#39'S'#39')'
      'order by apellido_y_nombre')
    CampoBuscar = 'APELLIDO_Y_NOMBRE'
    CampoClave = 'nro_proveedor'
    TituloBuscar = 'Campo Busqueda:'
    TituloBuscar2 = 'Campo Busqueda 2:'
    ColorGrilla = 14606012
    AnchoClave = 80
    AnchoBuscar1 = 500
    AnchoBuscar2 = 500
    Left = 305
    Top = 209
  end
  object EKListado_Conceptos: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select distinct c.*'
      'from ie_conceptos c'
      
        'left join proveedor_concepto pc on (c.id_concepto = pc.id_concep' +
        'to)'
      'where (pc.id_proveedor = :idProveedor)'
      '  and (c.baja <> '#39'S'#39')'
      'order by nombre_concepto')
    CampoBuscar = 'nombre_concepto'
    CampoClave = 'id_concepto'
    TituloBuscar = 'Campo Busqueda:'
    TituloBuscar2 = 'Campo Busqueda 2:'
    ColorGrilla = 14606012
    AnchoClave = 80
    AnchoBuscar1 = 500
    AnchoBuscar2 = 500
    Left = 305
    Top = 265
  end
  object EKIni_Impresion: TEKIni
    Left = 906
    Top = 64
  end
  object EKVistaPreviaOrdenPago: TEKVistaPreviaQR
    Reporte = QR_OrdenPago
    ShowModal = False
    VerGuardar = False
    VerExpImagen = False
    VerExpExel = False
    Caption = 'Orden de Pago'
    Left = 226
    Top = 521
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
    Left = 896
    Top = 195
  end
  object EKLlenarCBAutoriza: TEKLlenarCombo
    dataset = ZQ_Autoriza
    combo = CBoxAutoriza
    OnCambio = EKLlenarCuentasCambio
    CampoClave = 'ID_AUTORIDAD'
    CampoVer = 'Nombe'
    Left = 185
    Top = 209
  end
  object EKOrdenarGrilla1: TEKOrdenarGrilla
    Grilla = DBGridLibroBanco
    Filtros = <
      item
        TituloColumna = 'Fecha Emisi'#243'n'
        Visible = True
      end
      item
        TituloColumna = 'Fecha PD'
        Visible = True
      end
      item
        TituloColumna = 'Nro Movimiento'
        Visible = True
      end
      item
        TituloColumna = 'Nro Orden'
        Visible = True
      end
      item
        TituloColumna = 'Medio'
        Visible = True
      end
      item
        TituloColumna = 'Nro Cheque/Transf'
        Visible = True
      end
      item
        TituloColumna = 'Denominaci'#243'n'
        Visible = True
      end
      item
        TituloColumna = 'Tipo'
        Visible = True
      end
      item
        TituloColumna = 'Anulado'
        Visible = True
      end
      item
        TituloColumna = 'Concepto'
        Visible = True
      end
      item
        TituloColumna = 'Nro Factura'
        Visible = True
      end
      item
        TituloColumna = 'Nro Recibo'
        Visible = True
      end
      item
        TituloColumna = 'Debe'
        Visible = True
      end
      item
        TituloColumna = 'Haber'
        Visible = True
      end
      item
        TituloColumna = 'Saldo'
        Visible = True
      end
      item
        TituloColumna = 'Conciliado'
        Visible = True
      end
      item
        TituloColumna = 'F. Conciliado'
        Visible = True
      end>
    NombreGuardar = 'Movimientos'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    PopUpGrilla = MenuGrilla
    Left = 184
    Top = 48
  end
  object EKIniGuardarFiltros: TEKIni
    Left = 904
    Top = 128
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
    Left = 213
    Top = 390
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
        DataType = ftString
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
        DataType = ftString
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
      '  and cm.importe <> 0'
      '  and cm.id_cuenta_egreso = :cta'
      'order by mov.fecha, cm.fecha_mdc')
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
      end
      item
        DataType = ftUnknown
        Name = 'cta'
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
      end
      item
        DataType = ftUnknown
        Name = 'cta'
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
    object ZQ_OrdenDebitoBancarioNRO_CHEQUE_TRANSF: TStringField
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
    Left = 904
    Top = 288
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
    object VerDetalle1: TMenuItem
      Caption = 'Ver Detalle'
      ImageIndex = 10
      OnClick = VerDetalle1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ConciliarMovimiento1: TMenuItem
      Caption = 'Conciliar/Desconciliar'
      ImageIndex = 33
      OnClick = ConciliarMovimiento1Click
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
    Left = 213
    Top = 454
  end
  object EKDbSumaLibroBanco: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'debe'
      end
      item
        Operacion = goSum
        NombreCampo = 'haber'
      end>
    DataSet = LIBRO_BANCO
    Left = 808
    Top = 176
  end
  object EliminarMovimiento: TZStoredProc
    Connection = DM.Conexion
    Params = <>
    StoredProcName = 'ELIMINAR_MOVIMIENTO'
    Left = 80
    Top = 468
  end
  object DS_TipoProveedor: TDataSource
    DataSet = ZQ_TipoProveedor
    Left = 891
    Top = 395
  end
  object ZQ_TipoProveedor: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_TipoProveedorAfterScroll
    ReadOnly = True
    SQL.Strings = (
      'select distinct tp.id_tipo, tp.descripcion as TIPO_PROVEEDOR'
      'from tipo_proveedor tp')
    Params = <>
    Left = 803
    Top = 395
    object ZQ_TipoProveedorID_TIPO: TIntegerField
      FieldName = 'ID_TIPO'
      Required = True
    end
    object ZQ_TipoProveedorTIPO_PROVEEDOR: TStringField
      FieldName = 'TIPO_PROVEEDOR'
      Size = 100
    end
  end
  object UpdateMovimientos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM ie_movimientos'
      'WHERE'
      '  ie_movimientos.NRO_MOVIMIENTO = :OLD_NRO_MOVIMIENTO')
    InsertSQL.Strings = (
      'INSERT INTO ie_movimientos'
      
        '  (ie_movimientos.NRO_MOVIMIENTO, ie_movimientos.NRO_PROVEEDOR, ' +
        'ie_movimientos.ID_CONCEPTO, '
      
        '   ie_movimientos.ID_OBJETO_MOVIMIENTO, ie_movimientos.DESCRIPCI' +
        'ON, ie_movimientos.PAGO_DEL_EJERCICIO, '
      
        '   ie_movimientos.FECHA, ie_movimientos.IMPORTE, ie_movimientos.' +
        'IMPRESO, '
      
        '   ie_movimientos.NRO_COMPROMISO, ie_movimientos.NRO_PARTE, ie_m' +
        'ovimientos.ANULADO, '
      
        '   ie_movimientos.FECHA_ANULADO, ie_movimientos.PARTE_ANULADO, i' +
        'e_movimientos.DETALLE_ANULADO, '
      
        '   ie_movimientos.NRO_ORDEN, ie_movimientos.NRO_FACTURA, ie_movi' +
        'mientos.NRO_RECIBO, '
      '   ie_movimientos.NRO_ORDEN_STRING, ie_movimientos.NRO_CUENTA)'
      'VALUES'
      
        '  (:NRO_MOVIMIENTO, :NRO_PROVEEDOR, :ID_CONCEPTO, :ID_OBJETO_MOV' +
        'IMIENTO, '
      
        '   :DESCRIPCION, :PAGO_DEL_EJERCICIO, :FECHA, :IMPORTE, :IMPRESO' +
        ', :NRO_COMPROMISO, '
      
        '   :NRO_PARTE, :ANULADO, :FECHA_ANULADO, :PARTE_ANULADO, :DETALL' +
        'E_ANULADO, '
      
        '   :NRO_ORDEN, :NRO_FACTURA, :NRO_RECIBO, :NRO_ORDEN_STRING, :NR' +
        'O_CUENTA)')
    ModifySQL.Strings = (
      'UPDATE ie_movimientos SET'
      '  ie_movimientos.NRO_MOVIMIENTO = :NRO_MOVIMIENTO,'
      '  ie_movimientos.NRO_PROVEEDOR = :NRO_PROVEEDOR,'
      '  ie_movimientos.ID_CONCEPTO = :ID_CONCEPTO,'
      '  ie_movimientos.ID_OBJETO_MOVIMIENTO = '
      ':ID_OBJETO_MOVIMIENTO,'
      '  ie_movimientos.DESCRIPCION = :DESCRIPCION,'
      '  ie_movimientos.PAGO_DEL_EJERCICIO = :PAGO_DEL_EJERCICIO,'
      '  ie_movimientos.FECHA = :FECHA,'
      '  ie_movimientos.IMPORTE = :IMPORTE,'
      '  ie_movimientos.IMPRESO = :IMPRESO,'
      '  ie_movimientos.NRO_COMPROMISO = :NRO_COMPROMISO,'
      '  ie_movimientos.NRO_PARTE = :NRO_PARTE,'
      '  ie_movimientos.ANULADO = :ANULADO,'
      '  ie_movimientos.FECHA_ANULADO = :FECHA_ANULADO,'
      '  ie_movimientos.PARTE_ANULADO = :PARTE_ANULADO,'
      '  ie_movimientos.DETALLE_ANULADO = :DETALLE_ANULADO,'
      '  ie_movimientos.NRO_ORDEN = :NRO_ORDEN,'
      '  ie_movimientos.NRO_FACTURA = :NRO_FACTURA,'
      '  ie_movimientos.NRO_RECIBO = :NRO_RECIBO,'
      '  ie_movimientos.NRO_ORDEN_STRING = :NRO_ORDEN_STRING,'
      '  ie_movimientos.NRO_CUENTA = :NRO_CUENTA'
      'WHERE'
      '  ie_movimientos.NRO_MOVIMIENTO = :OLD_NRO_MOVIMIENTO')
    UseSequenceFieldForRefreshSQL = False
    Left = 376
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NRO_MOVIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NRO_PROVEEDOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_CONCEPTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_OBJETO_MOVIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PAGO_DEL_EJERCICIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPORTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IMPRESO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NRO_COMPROMISO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NRO_PARTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANULADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_ANULADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PARTE_ANULADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DETALLE_ANULADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NRO_ORDEN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NRO_FACTURA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NRO_RECIBO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NRO_ORDEN_STRING'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NRO_CUENTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_NRO_MOVIMIENTO'
        ParamType = ptUnknown
      end>
  end
  object EKVistaPreviaCaratulaOPs: TEKVistaPreviaQR
    Reporte = ReporteCaratulaOP
    ShowModal = False
    VerGuardar = False
    VerExpImagen = False
    VerExpExel = False
    Caption = 'Reporte Car'#225'tula OPs'
    Left = 45
    Top = 374
  end
end
