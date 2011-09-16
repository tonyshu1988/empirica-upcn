object FCuentaCorriente_Proveedor: TFCuentaCorriente_Proveedor
  Left = 274
  Top = 156
  Width = 950
  Height = 597
  Caption = 'Cta. Cte. Proveedor'
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
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFiltroFechas: TPanel
    Left = 360
    Top = 184
    Width = 173
    Height = 105
    BevelInner = bvLowered
    TabOrder = 6
    object Label18: TLabel
      Left = 2
      Top = 2
      Width = 169
      Height = 13
      Align = alTop
      Alignment = taCenter
      Caption = 'FILTRAR POR FECHA'
    end
    object Label19: TLabel
      Left = 5
      Top = 25
      Width = 44
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Desde:'
    end
    object Label20: TLabel
      Left = 5
      Top = 53
      Width = 44
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Hasta:'
    end
    object EKDBDateTime_FiltroDesde: TEKDBDateTimePicker
      Left = 52
      Top = 20
      Width = 115
      Height = 22
      Date = 40767.409336585650000000
      Time = 40767.409336585650000000
      TabOrder = 0
    end
    object EKDBDateTime_FiltroHasta: TEKDBDateTimePicker
      Left = 52
      Top = 48
      Width = 115
      Height = 22
      Date = 40767.409336585650000000
      Time = 40767.409336585650000000
      TabOrder = 1
    end
    object btnFiltroFecha_Aceptar: TBitBtn
      Left = 8
      Top = 75
      Width = 40
      Height = 25
      TabOrder = 2
      OnClick = btnFiltroFecha_AceptarClick
    end
    object btnFiltroFecha_Cancelar: TBitBtn
      Left = 124
      Top = 75
      Width = 40
      Height = 25
      TabOrder = 3
      OnClick = btnFiltroFecha_CancelarClick
    end
  end
  object PanelResumen: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 507
    Align = alClient
    TabOrder = 1
    object RepCtasCtes: TQuickRep
      Tag = 99
      Left = 68
      Top = 74
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = ZQ_CtaCte_Gral
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
          Left = 220
          Top = 47
          Width = 278
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            582.083333333333300000
            124.354166666666700000
            735.541666666666700000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RESUMEN CUENTA CORRIENTE'
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
        object RepCtasCtes_Subtitulo: TQRLabel
          Left = 282
          Top = 26
          Width = 153
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            746.125000000000000000
            68.791666666666670000
            404.812500000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepCtasCtes_Subtitulo'
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
        object RepCtasCtes_Titulo: TQRLabel
          Left = 272
          Top = 2
          Width = 174
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            719.666666666666700000
            5.291666666666667000
            460.375000000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepCtasCtes_Titulo'
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
          Left = 2
          Top = 0
          Width = 53
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
            140.229166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_CtaCte_Gral
          DataField = 'CODIGO_CORTO'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText1: TQRDBText
          Left = 60
          Top = 0
          Width = 261
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            158.750000000000000000
            0.000000000000000000
            690.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_CtaCte_Gral
          DataField = 'NOMBRE'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText2: TQRDBText
          Left = 332
          Top = 0
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            878.416666666666700000
            0.000000000000000000
            246.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_CtaCte_Gral
          DataField = 'LIMITE_DEUDA'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText3: TQRDBText
          Left = 428
          Top = 0
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1132.416666666667000000
            0.000000000000000000
            246.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_CtaCte_Gral
          DataField = 'DEBE'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText4: TQRDBText
          Left = 524
          Top = 0
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1386.416666666667000000
            0.000000000000000000
            246.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_CtaCte_Gral
          DataField = 'HABER'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText5: TQRDBText
          Left = 620
          Top = 0
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1640.416666666667000000
            0.000000000000000000
            246.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_CtaCte_Gral
          DataField = 'SALDO'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
      end
      object QRBand11: TQRBand
        Tag = 99
        Left = 38
        Top = 193
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
        object QRlblPieDePaginaCtasCtes: TQRLabel
          Left = 4
          Top = 3
          Width = 123
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
            325.437500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'QRlblPieDePaginaCtasCtes'
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
        Height = 20
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
          52.916666666666670000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbSummary
        object QRExpr18: TQRExpr
          Left = 4
          Top = 2
          Width = 244
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
            645.583333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = #39'Cantidad de Cuentas Corriente: '#39'+COUNT'
          ExportAs = exptText
          FontSize = 8
        end
        object QRCtasCtes_TotalSaldo: TQRLabel
          Left = 620
          Top = 2
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1640.416666666667000000
            5.291666666666667000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRCtasCtes_TotalHaber: TQRLabel
          Left = 524
          Top = 2
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1386.416666666667000000
            5.291666666666667000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRCtasCtes_TotalDebe: TQRLabel
          Left = 428
          Top = 2
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1132.416666666667000000
            5.291666666666667000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel8: TQRLabel
          Left = 332
          Top = 2
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            878.416666666666700000
            5.291666666666667000
            246.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'TOTALES:'
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
        object QRLabelCritBusquedaCtasCtes: TQRLabel
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
          Caption = 'QRLabelCritBusquedaCtasCtes'
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
          Left = 2
          Top = 2
          Width = 53
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            5.291666666666667000
            5.291666666666667000
            140.229166666666700000)
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
          Left = 60
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
            158.750000000000000000
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
        object QRLabel2: TQRLabel
          Left = 332
          Top = 2
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            878.416666666666700000
            5.291666666666667000
            246.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Limite Deuda'
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
          Left = 428
          Top = 2
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1132.416666666667000000
            5.291666666666667000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel4: TQRLabel
          Left = 524
          Top = 2
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1386.416666666667000000
            5.291666666666667000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel5: TQRLabel
          Left = 620
          Top = 2
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1640.416666666667000000
            5.291666666666667000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
      end
    end
    object PanelResumen_Abajo: TPanel
      Left = 1
      Top = 439
      Width = 932
      Height = 67
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        932
        67)
      object Panel1: TPanel
        Left = 170
        Top = 3
        Width = 592
        Height = 48
        Anchors = []
        BevelOuter = bvNone
        TabOrder = 0
        object Label23: TLabel
          Left = 444
          Top = 4
          Width = 145
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TOTAL SALDO'
        end
        object Label22: TLabel
          Left = 296
          Top = 4
          Width = 145
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TOTAL HABER'
        end
        object Label24: TLabel
          Left = 150
          Top = 4
          Width = 145
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TOTAL DEBE'
        end
        object Label25: TLabel
          Left = 2
          Top = 4
          Width = 145
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CANTIDAD CLIENTES'
        end
        object EKEditResumen_Saldo: TEKEdit
          Tag = 99
          Left = 444
          Top = 18
          Width = 145
          Height = 26
          AutoSize = False
          Color = 12910591
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          DataType = ftUnknown
        end
        object EKEditResumen_Haber: TEKEdit
          Tag = 99
          Left = 296
          Top = 18
          Width = 145
          Height = 26
          AutoSize = False
          Color = 12910591
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          DataType = ftUnknown
        end
        object EKEditResumen_Debe: TEKEdit
          Tag = 99
          Left = 150
          Top = 18
          Width = 145
          Height = 26
          AutoSize = False
          Color = 12910591
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          DataType = ftUnknown
        end
        object EKEditResumen_Cantidad: TEKEdit
          Tag = 99
          Left = 2
          Top = 18
          Width = 145
          Height = 26
          AutoSize = False
          Color = 12910591
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          DataType = ftUnknown
        end
      end
    end
    object DBGridResumen_CtaCtes: TDBGrid
      Left = 1
      Top = 89
      Width = 932
      Height = 350
      Align = alClient
      Color = 14606012
      DataSource = DS_CtaCte_Gral
      DefaultDrawing = False
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridResumen_CtaCtesDrawColumnCell
      OnDblClick = DBGridResumen_CtaCtesDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_CORTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre'
          Width = 277
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LIMITE_DEUDA'
          Title.Alignment = taCenter
          Title.Caption = 'Limite Deuda'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEBE'
          Title.Alignment = taCenter
          Title.Caption = 'Debe'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HABER'
          Title.Alignment = taCenter
          Title.Caption = 'Haber'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          Title.Alignment = taCenter
          Title.Caption = 'Saldo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_POSTAL'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Postal'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'LOCALIDAD'
          Title.Alignment = taCenter
          Title.Caption = 'Localidad'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_PROVINCIA'
          Title.Alignment = taCenter
          Title.Caption = 'Provincia'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_IVA'
          Title.Alignment = taCenter
          Title.Caption = 'IVA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_TIPO_IVA'
          Title.Alignment = taCenter
          Title.Caption = 'Nombre IVA'
          Width = 183
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUIT_CUIL'
          Title.Alignment = taCenter
          Title.Caption = 'Cuit/Cuil'
          Width = 156
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA_ALTA'
          Title.Alignment = taCenter
          Title.Caption = 'Alta Cta. Cte.'
          Width = 106
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA_BAJA'
          Title.Alignment = taCenter
          Title.Caption = 'Baja Cta. Cte.'
          Visible = False
        end>
    end
    object PanelResumen_Arriba: TPanel
      Left = 1
      Top = 1
      Width = 932
      Height = 88
      Align = alTop
      TabOrder = 2
      Visible = False
    end
  end
  object PanelProveedor: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 507
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 3
    TabOrder = 0
    object RepProveedor: TQuickRep
      Tag = 99
      Left = 76
      Top = 66
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = ZQ_CtaCte_Proveedor
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
        object QRDBImage1: TQRDBImage
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
        object QRLabel1: TQRLabel
          Left = 207
          Top = 47
          Width = 304
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            547.687500000000000000
            124.354166666666700000
            804.333333333333300000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'CUENTA CORRIENTE PROVEEDOR'
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
        object RepProveedor_Subtitulo: TQRLabel
          Left = 276
          Top = 26
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
            68.791666666666670000
            436.562500000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepProveedor_Subtitulo'
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
        object RepProveedor_Titulo: TQRLabel
          Left = 264
          Top = 2
          Width = 189
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            698.500000000000000000
            5.291666666666667000
            500.062500000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepProveedor_Titulo'
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
        Top = 237
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
        object QRDBText6: TQRDBText
          Left = 2
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
            5.291666666666667000
            0.000000000000000000
            251.354166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_CtaCte_Proveedor
          DataField = 'FECHA'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText7: TQRDBText
          Left = 100
          Top = 0
          Width = 325
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            264.583333333333300000
            0.000000000000000000
            859.895833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_CtaCte_Proveedor
          DataField = 'TIPO_COMPROBANTE'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText9: TQRDBText
          Left = 428
          Top = 0
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1132.416666666667000000
            0.000000000000000000
            246.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_CtaCte_Proveedor
          DataField = 'DEBE'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText10: TQRDBText
          Left = 524
          Top = 0
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1386.416666666667000000
            0.000000000000000000
            246.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_CtaCte_Proveedor
          DataField = 'HABER'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText11: TQRDBText
          Left = 620
          Top = 0
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1640.416666666667000000
            0.000000000000000000
            246.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_CtaCte_Proveedor
          DataField = 'SALDO'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
      end
      object QRBand3: TQRBand
        Tag = 99
        Left = 38
        Top = 293
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
        object QRlblPieDePaginaProveedor: TQRLabel
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
          Caption = 'QRlblPieDePaginaProveedor'
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
        object QRLabel10: TQRLabel
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
        Top = 251
        Width = 718
        Height = 42
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
          111.125000000000000000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbSummary
        object QRExpr1: TQRExpr
          Left = 4
          Top = 2
          Width = 244
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
            645.583333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = #39'Cantidad de Cuentas Corriente: '#39'+COUNT'
          ExportAs = exptText
          FontSize = 8
        end
        object QRProveedor_SaldoFiltro: TQRLabel
          Left = 620
          Top = 2
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1640.416666666667000000
            5.291666666666667000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRProveedor_HaberFiltro: TQRLabel
          Left = 524
          Top = 2
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1386.416666666667000000
            5.291666666666667000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRProveedor_DebeFiltro: TQRLabel
          Left = 428
          Top = 2
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1132.416666666667000000
            5.291666666666667000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel14: TQRLabel
          Left = 272
          Top = 2
          Width = 153
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            719.666666666666700000
            5.291666666666667000
            404.812500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'TOTALES FILTRO:'
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
          Left = 272
          Top = 20
          Width = 153
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            719.666666666666700000
            52.916666666666670000
            404.812500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'TOTALES:'
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
        object QRProveedor_Debe: TQRLabel
          Left = 428
          Top = 20
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1132.416666666667000000
            52.916666666666670000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRProveedor_Haber: TQRLabel
          Left = 524
          Top = 20
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1386.416666666667000000
            52.916666666666670000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRProveedor_Saldo: TQRLabel
          Left = 620
          Top = 20
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1640.416666666667000000
            52.916666666666670000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
      end
      object QRBand5: TQRBand
        Tag = 99
        Left = 38
        Top = 110
        Width = 718
        Height = 91
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
          240.770833333333300000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbTitle
        object QRLabel15: TQRLabel
          Left = 128
          Top = 7
          Width = 105
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            338.666666666666700000
            18.520833333333330000
            277.812500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Apellido y Nombre:'
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
        object QRDBText12: TQRDBText
          Left = 237
          Top = 7
          Width = 305
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            627.062500000000000000
            18.520833333333330000
            806.979166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedor
          DataField = 'NOMBRE'
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
        object QRLabel16: TQRLabel
          Left = 16
          Top = 24
          Width = 55
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            42.333333333333330000
            63.500000000000000000
            145.520833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Direcci'#243'n:'
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
        object QRDBText13: TQRDBText
          Left = 75
          Top = 24
          Width = 268
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            198.437500000000000000
            63.500000000000000000
            709.083333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedor
          DataField = 'DIRECCION'
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
        object QRDBText14: TQRDBText
          Left = 86
          Top = 41
          Width = 52
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            227.541666666666700000
            108.479166666666700000
            137.583333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedor
          DataField = 'CODIGO_POSTAL'
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
        object QRLabel24: TQRLabel
          Left = 16
          Top = 41
          Width = 66
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            42.333333333333330000
            108.479166666666700000
            174.625000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'C'#243'd. Postal:'
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
        object QRDBText15: TQRDBText
          Left = 210
          Top = 41
          Width = 149
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            555.625000000000000000
            108.479166666666700000
            394.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedor
          DataField = 'LOCALIDAD'
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
        object QRLabel25: TQRLabel
          Left = 148
          Top = 41
          Width = 58
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            391.583333333333300000
            108.479166666666700000
            153.458333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Localidad:'
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
        object QRDBText16: TQRDBText
          Left = 427
          Top = 41
          Width = 180
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1129.770833333333000000
            108.479166666666700000
            476.250000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedor
          DataField = 'NOMBRE_PROVINCIA'
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
        object QRLabel26: TQRLabel
          Left = 365
          Top = 41
          Width = 58
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            965.729166666666700000
            108.479166666666700000
            153.458333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Provincia:'
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
        object QRLabel27: TQRLabel
          Left = 352
          Top = 24
          Width = 51
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            931.333333333333300000
            63.500000000000000000
            134.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tel'#233'fono:'
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
        object QRDBText17: TQRDBText
          Left = 407
          Top = 24
          Width = 272
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1076.854166666667000000
            63.500000000000000000
            719.666666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedor
          DataField = 'TELEFONO'
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
        object QRDBText23: TQRDBText
          Left = 101
          Top = 57
          Width = 177
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            267.229166666666700000
            150.812500000000000000
            468.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedor
          DataField = 'NOMBRE_TIPO_IVA'
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
        object QRLabel34: TQRLabel
          Left = 16
          Top = 57
          Width = 81
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            42.333333333333330000
            150.812500000000000000
            214.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Condici'#243'n Iva:'
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
        object QRDBText24: TQRDBText
          Left = 361
          Top = 57
          Width = 257
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            955.145833333333300000
            150.812500000000000000
            679.979166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedor
          DataField = 'CUIT_CUIL'
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
        object QRLabel35: TQRLabel
          Left = 296
          Top = 57
          Width = 61
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            783.166666666666700000
            150.812500000000000000
            161.395833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cuit / Cuil:'
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
        object QRLabel36: TQRLabel
          Left = 16
          Top = 7
          Width = 42
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            42.333333333333330000
            18.520833333333330000
            111.125000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'C'#243'digo:'
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
        object QRDBText25: TQRDBText
          Left = 62
          Top = 7
          Width = 52
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            164.041666666666700000
            18.520833333333330000
            137.583333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedor
          DataField = 'CODIGO_CORTO'
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
        object QRLabel7: TQRLabel
          Left = 16
          Top = 74
          Width = 77
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            42.333333333333330000
            195.791666666666700000
            203.729166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Limite Deuda:'
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
        object QRDBText8: TQRDBText
          Left = 97
          Top = 74
          Width = 177
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            256.645833333333300000
            195.791666666666700000
            468.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Proveedor
          DataField = 'LIMITE_DEUDA'
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
      object QRBand6: TQRBand
        Tag = 99
        Left = 38
        Top = 219
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
        object QRLabel18: TQRLabel
          Left = 2
          Top = 2
          Width = 53
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            5.291666666666667000
            5.291666666666667000
            140.229166666666700000)
          Alignment = taLeftJustify
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
          Left = 100
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
            264.583333333333300000
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
        object QRLabel21: TQRLabel
          Left = 428
          Top = 2
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1132.416666666667000000
            5.291666666666667000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel22: TQRLabel
          Left = 524
          Top = 2
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1386.416666666667000000
            5.291666666666667000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
        object QRLabel23: TQRLabel
          Left = 620
          Top = 2
          Width = 93
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1640.416666666667000000
            5.291666666666667000
            246.062500000000000000)
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
          ExportAs = exptText
          FontSize = 8
        end
      end
      object ChildBand1: TQRChildBand
        Tag = 99
        Left = 38
        Top = 201
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
        ParentBand = QRBand5
        PrintOrder = cboAfterParent
        object QRlblProveedor_Filtro: TQRLabel
          Left = 0
          Top = 1
          Width = 717
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333330000
            0.000000000000000000
            2.645833333333333000
            1897.062500000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = False
          AutoStretch = False
          Caption = 'filtro'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = False
          ExportAs = exptText
          FontSize = 7
        end
      end
    end
    object PanelProveedor_CtaCte: TPanel
      Left = 3
      Top = 126
      Width = 928
      Height = 260
      Align = alClient
      BorderWidth = 3
      TabOrder = 0
      object DBGridProveedor_CtaCte: TDBGrid
        Left = 4
        Top = 4
        Width = 920
        Height = 252
        Align = alClient
        Color = 14606012
        DataSource = DS_CtaCte_Proveedor
        DefaultDrawing = False
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridProveedor_CtaCteDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FECHA'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA_FP'
            Title.Alignment = taCenter
            Title.Caption = 'Fecha Pago'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TIPO_COMPROBANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Comprobante'
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
            FieldName = 'SALDO_CPB'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo Cpb.'
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO'
            Title.Alignment = taCenter
            Title.Caption = 'Saldo Total'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVACION'
            Title.Alignment = taCenter
            Title.Caption = 'Observacion Comprobante'
            Width = 416
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_COMPROBANTE'
            Visible = True
          end>
      end
    end
    object PanelProveedor_Datos: TPanel
      Left = 3
      Top = 3
      Width = 928
      Height = 99
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvNone
      TabOrder = 1
      object DBText7: TDBText
        Left = 95
        Top = 5
        Width = 97
        Height = 13
        DataField = 'CODIGO_CORTO'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 49
        Top = 5
        Width = 45
        Height = 13
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 220
        Top = 5
        Width = 50
        Height = 13
        Caption = 'Nombre:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 272
        Top = 5
        Width = 420
        Height = 13
        DataField = 'NOMBRE'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 36
        Top = 22
        Width = 58
        Height = 13
        Caption = 'Direcci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 95
        Top = 22
        Width = 545
        Height = 13
        DataField = 'DIRECCION'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 24
        Top = 40
        Width = 70
        Height = 13
        Caption = 'C'#243'd. Postal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 96
        Top = 40
        Width = 97
        Height = 13
        DataField = 'CODIGO_POSTAL'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 212
        Top = 40
        Width = 58
        Height = 13
        Caption = 'Localidad:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBText11: TDBText
        Left = 272
        Top = 40
        Width = 232
        Height = 13
        DataField = 'LOCALIDAD'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 607
        Top = 40
        Width = 57
        Height = 13
        Caption = 'Provincia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBText12: TDBText
        Left = 666
        Top = 40
        Width = 175
        Height = 13
        DataField = 'NOMBRE_PROVINCIA'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 68
        Top = 58
        Width = 26
        Height = 13
        Caption = 'IVA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBText15: TDBText
        Left = 96
        Top = 58
        Width = 201
        Height = 13
        DataField = 'NOMBRE_TIPO_IVA'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 358
        Top = 58
        Width = 55
        Height = 13
        Caption = 'Cuit/Cuil:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBText16: TDBText
        Left = 415
        Top = 58
        Width = 175
        Height = 13
        DataField = 'CUIT_CUIL'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 30
        Top = 76
        Width = 64
        Height = 13
        Caption = 'Fecha Alta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 96
        Top = 76
        Width = 97
        Height = 13
        DataField = 'FECHA_ALTA'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 202
        Top = 76
        Width = 68
        Height = 13
        Caption = 'Fecha Baja:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 271
        Top = 76
        Width = 117
        Height = 13
        DataField = 'FECHA_BAJA'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 584
        Top = 76
        Width = 80
        Height = 13
        Caption = 'Limite Deuda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 666
        Top = 76
        Width = 175
        Height = 13
        DataField = 'LIMITE_DEUDA'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object PanelProveedor_Resumen: TPanel
      Left = 3
      Top = 386
      Width = 928
      Height = 118
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        928
        118)
      object lblFiltro_Fechas: TLabel
        Left = 1
        Top = 1
        Width = 926
        Height = 17
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Viendo Desde: 12/12/2010 - Hasta: 20/12/2010'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PanelCliente_ResumenFiltro: TPanel
        Left = 165
        Top = 20
        Width = 597
        Height = 45
        Anchors = []
        BevelOuter = bvNone
        TabOrder = 0
        object Label21: TLabel
          Left = 444
          Top = 4
          Width = 145
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SALDO (FILTRO)'
        end
        object Label26: TLabel
          Left = 296
          Top = 4
          Width = 145
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'HABER (FILTRO)'
        end
        object Label27: TLabel
          Left = 150
          Top = 4
          Width = 145
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DEBE (FILTRO)'
        end
        object Label28: TLabel
          Left = 2
          Top = 4
          Width = 145
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CANTIDAD (FILTRO)'
        end
        object EKEditProv_SaldoFiltro: TEKEdit
          Tag = 99
          Left = 444
          Top = 18
          Width = 145
          Height = 26
          AutoSize = False
          Color = 12910591
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          DataType = ftUnknown
        end
        object EKEditProv_HaberFiltro: TEKEdit
          Tag = 99
          Left = 296
          Top = 18
          Width = 145
          Height = 26
          AutoSize = False
          Color = 12910591
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          DataType = ftUnknown
        end
        object EKEditProv_DebeFiltro: TEKEdit
          Tag = 99
          Left = 150
          Top = 18
          Width = 145
          Height = 26
          AutoSize = False
          Color = 12910591
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          DataType = ftUnknown
        end
        object EKEditProv_CantidadFiltro: TEKEdit
          Tag = 99
          Left = 2
          Top = 18
          Width = 145
          Height = 26
          AutoSize = False
          Color = 12910591
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          DataType = ftUnknown
        end
      end
      object PanelCliente_ResumenTotales: TPanel
        Left = 165
        Top = 65
        Width = 597
        Height = 46
        Anchors = []
        BevelOuter = bvNone
        TabOrder = 1
        object Label15: TLabel
          Left = 444
          Top = 4
          Width = 145
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TOTAL SALDO'
        end
        object Label16: TLabel
          Left = 296
          Top = 4
          Width = 145
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TOTAL HABER'
        end
        object Label17: TLabel
          Left = 150
          Top = 4
          Width = 145
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'TOTAL DEBE'
        end
        object EKEditProv_SaldoTotal: TEKEdit
          Tag = 99
          Left = 444
          Top = 18
          Width = 145
          Height = 26
          AutoSize = False
          Color = 12910591
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          DataType = ftUnknown
        end
        object EKEditProv_HaberTotal: TEKEdit
          Tag = 99
          Left = 296
          Top = 18
          Width = 145
          Height = 26
          AutoSize = False
          Color = 12910591
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          DataType = ftUnknown
        end
        object EKEditProv_DebeTotal: TEKEdit
          Tag = 99
          Left = 150
          Top = 18
          Width = 145
          Height = 26
          AutoSize = False
          Color = 12910591
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          DataType = ftUnknown
        end
      end
    end
    object PanelFiltro: TPanel
      Left = 3
      Top = 102
      Width = 928
      Height = 24
      Align = alTop
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      object BtnFiltro_Todos: TSpeedButton
        Left = 55
        Top = 3
        Width = 94
        Height = 18
        GroupIndex = 1
        Down = True
        Caption = 'Todos'
        Layout = blGlyphBottom
        OnClick = AplicarFiltro
      end
      object BtnFiltro_Hoy: TSpeedButton
        Left = 151
        Top = 3
        Width = 94
        Height = 18
        GroupIndex = 1
        Caption = 'Hoy'
        Layout = blGlyphBottom
        OnClick = AplicarFiltro
      end
      object BtnFiltro_EstaSemana: TSpeedButton
        Left = 247
        Top = 3
        Width = 94
        Height = 18
        GroupIndex = 1
        Caption = 'Esta Semana'
        Layout = blGlyphBottom
        OnClick = AplicarFiltro
      end
      object BtnFiltro_EsteMes: TSpeedButton
        Left = 343
        Top = 3
        Width = 94
        Height = 18
        GroupIndex = 1
        Caption = 'Este Mes'
        Layout = blGlyphBottom
        OnClick = AplicarFiltro
      end
      object BtnFiltro_EsteAnio: TSpeedButton
        Left = 439
        Top = 3
        Width = 94
        Height = 18
        GroupIndex = 1
        Caption = 'Este A'#241'o'
        Layout = blGlyphBottom
        OnClick = AplicarFiltro
      end
      object Label39: TLabel
        Left = 19
        Top = 5
        Width = 33
        Height = 13
        Caption = 'Filtro:'
      end
      object BtnFiltro_PorFecha: TSpeedButton
        Left = 535
        Top = 3
        Width = 94
        Height = 18
        GroupIndex = 1
        Caption = 'Por Fecha'
        Layout = blGlyphBottom
        OnClick = AplicarFiltro
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
            Item = btnVerCtaCte
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnImprimir
            Visible = True
          end
          item
            Item = btnImprimirRecibo
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
    Left = 43
    Top = 256
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
    object btnVerCtaCte: TdxBarLargeButton
      Caption = 'F2 - Ver Cta Cte'
      Category = 0
      Hint = 'Ver la cuenta corriente del cliente seleccionado'
      Visible = ivAlways
      ImageIndex = 56
      OnClick = btnVerCtaCteClick
      AutoGrayScale = False
    end
    object btnImprimirRecibo: TdxBarLargeButton
      Caption = 'Recibo'
      Category = 0
      Hint = 'Recibo'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = btnImprimirReciboClick
    end
    object btnImprimir: TdxBarLargeButton
      Caption = 'Imprimir'
      Category = 0
      Hint = 'Imprimir'
      Visible = ivAlways
      ImageIndex = 28
      OnClick = btnImprimirClick
      AutoGrayScale = False
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
        'btnVerCtaCte'
        'btnImprimir'
        'btnImprimirRecibo'
        'btnSalir')
    end
  end
  object ATeclasRapidas: TActionManager
    Left = 43
    Top = 306
    StyleName = 'XP Style'
    object ABuscar: TAction
      Caption = 'ABuscar'
      ShortCut = 112
      OnExecute = ABuscarExecute
    end
    object AVerCtaCte: TAction
      Caption = 'AVerCtaCte'
      ShortCut = 113
      OnExecute = AVerCtaCteExecute
    end
    object AModificar: TAction
      Caption = 'AModificar'
      ShortCut = 114
    end
    object AEliminar: TAction
      Caption = 'AEliminar'
      ShortCut = 115
    end
    object ABaja: TAction
      Caption = 'ABaja'
      ShortCut = 116
    end
    object AReactivar: TAction
      Caption = 'AReactivar'
      ShortCut = 117
    end
    object AGuardar: TAction
      Caption = 'AGuardar'
      ShortCut = 122
    end
    object ACancelar: TAction
      Caption = 'ACancelar'
      ShortCut = 123
    end
  end
  object ZQ_Proveedor: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select emp.*, pro.nombre_provincia, iva.nombre_tipo_iva,'
      '       iva.abreviatura as cod_iva, cc.*'
      'from empresa emp'
      'left join tipo_iva iva on (emp.id_tipo_iva = iva.id_tipo_iva)'
      'left join provincia pro on (emp.id_provincia = pro.id_provincia)'
      
        'left join cuenta_corriente cc on (emp.id_empresa = cc.id_proveed' +
        'or)'
      'where emp.id_empresa = :id_proveedor')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_proveedor'
        ParamType = ptUnknown
      end>
    Left = 43
    Top = 158
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_proveedor'
        ParamType = ptUnknown
      end>
    object ZQ_ProveedorID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Required = True
    end
    object ZQ_ProveedorCUIT_CUIL: TStringField
      FieldName = 'CUIT_CUIL'
      Size = 30
    end
    object ZQ_ProveedorID_PROVINCIA: TIntegerField
      FieldName = 'ID_PROVINCIA'
    end
    object ZQ_ProveedorID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_ProveedorNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_ProveedorDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 200
    end
    object ZQ_ProveedorLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 200
    end
    object ZQ_ProveedorCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
    end
    object ZQ_ProveedorTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 100
    end
    object ZQ_ProveedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object ZQ_ProveedorPAGINA_WEB: TStringField
      FieldName = 'PAGINA_WEB'
      Size = 200
    end
    object ZQ_ProveedorBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ProveedorDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
    object ZQ_ProveedorID_TIPO_EMPRESA: TIntegerField
      FieldName = 'ID_TIPO_EMPRESA'
    end
    object ZQ_ProveedorDESCRIPCION_PRIVADA: TStringField
      FieldName = 'DESCRIPCION_PRIVADA'
      Size = 1000
    end
    object ZQ_ProveedorCODIGO_CORTO: TIntegerField
      FieldName = 'CODIGO_CORTO'
    end
    object ZQ_ProveedorNOMBRE_PROVINCIA: TStringField
      FieldName = 'NOMBRE_PROVINCIA'
      Size = 50
    end
    object ZQ_ProveedorNOMBRE_TIPO_IVA: TStringField
      FieldName = 'NOMBRE_TIPO_IVA'
      Size = 50
    end
    object ZQ_ProveedorCOD_IVA: TStringField
      FieldName = 'COD_IVA'
      Size = 10
    end
    object ZQ_ProveedorID_CTA_CTE: TIntegerField
      FieldName = 'ID_CTA_CTE'
      Required = True
    end
    object ZQ_ProveedorID_PERSONA: TIntegerField
      FieldName = 'ID_PERSONA'
    end
    object ZQ_ProveedorID_PROVEEDOR: TIntegerField
      FieldName = 'ID_PROVEEDOR'
    end
    object ZQ_ProveedorSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object ZQ_ProveedorLIMITE_DEUDA: TFloatField
      FieldName = 'LIMITE_DEUDA'
    end
    object ZQ_ProveedorVENCIMIENTO_DIAS: TIntegerField
      FieldName = 'VENCIMIENTO_DIAS'
    end
    object ZQ_ProveedorFECHA_ALTA: TDateField
      FieldName = 'FECHA_ALTA'
    end
    object ZQ_ProveedorFECHA_BAJA: TDateField
      FieldName = 'FECHA_BAJA'
    end
  end
  object DS_Proveedor: TDataSource
    DataSet = ZQ_Proveedor
    Left = 43
    Top = 206
  end
  object ZQ_CtaCte_Gral: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select cc.id_proveedor_out, cc.limite_deuda, cc.vencimiento_dias' +
        ', cc.saldo, cc.fecha_alta, cc.fecha_baja,'
      
        '       cc.debe, cc.haber, cc.nombre, cc.localidad, cc.codigo_pos' +
        'tal, cc.cuit_cuil,'
      
        '       cc.baja, cc.nombre_provincia, cc.nombre_tipo_iva, cc.cod_' +
        'iva, cc.codigo_corto'
      'from ctacte_general(:id_proveedor, :id_cliente) cc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_proveedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_cliente'
        ParamType = ptUnknown
      end>
    Left = 141
    Top = 158
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_proveedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_cliente'
        ParamType = ptUnknown
      end>
    object ZQ_CtaCte_GralLIMITE_DEUDA: TFloatField
      FieldName = 'LIMITE_DEUDA'
    end
    object ZQ_CtaCte_GralSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '###,###,##0.00'
    end
    object ZQ_CtaCte_GralFECHA_ALTA: TDateField
      FieldName = 'FECHA_ALTA'
    end
    object ZQ_CtaCte_GralFECHA_BAJA: TDateField
      FieldName = 'FECHA_BAJA'
    end
    object ZQ_CtaCte_GralDEBE: TFloatField
      FieldName = 'DEBE'
      DisplayFormat = '###,###,##0.00'
    end
    object ZQ_CtaCte_GralHABER: TFloatField
      FieldName = 'HABER'
      DisplayFormat = '###,###,##0.00'
    end
    object ZQ_CtaCte_GralNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_CtaCte_GralLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 200
    end
    object ZQ_CtaCte_GralCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
    end
    object ZQ_CtaCte_GralCUIT_CUIL: TStringField
      FieldName = 'CUIT_CUIL'
      Size = 30
    end
    object ZQ_CtaCte_GralBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_CtaCte_GralNOMBRE_PROVINCIA: TStringField
      FieldName = 'NOMBRE_PROVINCIA'
      Size = 50
    end
    object ZQ_CtaCte_GralNOMBRE_TIPO_IVA: TStringField
      FieldName = 'NOMBRE_TIPO_IVA'
      Size = 50
    end
    object ZQ_CtaCte_GralCOD_IVA: TStringField
      FieldName = 'COD_IVA'
      Size = 10
    end
    object ZQ_CtaCte_GralCODIGO_CORTO: TIntegerField
      FieldName = 'CODIGO_CORTO'
    end
    object ZQ_CtaCte_GralVENCIMIENTO_DIAS: TIntegerField
      FieldName = 'VENCIMIENTO_DIAS'
    end
    object ZQ_CtaCte_GralID_PROVEEDOR_OUT: TIntegerField
      FieldName = 'ID_PROVEEDOR_OUT'
    end
  end
  object DS_CtaCte_Gral: TDataSource
    DataSet = ZQ_CtaCte_Gral
    Left = 141
    Top = 206
  end
  object ZQ_CtaCte_Proveedor: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'select cc.tipo_comprobante, cc.id_comprobante, cc.id_cuenta, cc.' +
        'id_vendedor, cc.id_tipo_iva, cc.id_tipo_fp,'
      
        '       cc.fecha, cc.observacion, cc.fecha_fp, cc.debe, cc.haber,' +
        ' cc.saldo_cpb, cc.saldo, cc.id_comprob_fp'
      
        'from ctacte_individual(:id_sucursal, :id_cliente, :id_proveedor,' +
        ' :fecha_desde, :fecha_hasta) cc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_proveedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_hasta'
        ParamType = ptUnknown
      end>
    Left = 272
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_sucursal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_proveedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_desde'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fecha_hasta'
        ParamType = ptUnknown
      end>
    object ZQ_CtaCte_ProveedorTIPO_COMPROBANTE: TStringField
      FieldName = 'TIPO_COMPROBANTE'
      Size = 30
    end
    object ZQ_CtaCte_ProveedorID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_CtaCte_ProveedorID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
    end
    object ZQ_CtaCte_ProveedorID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object ZQ_CtaCte_ProveedorID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_CtaCte_ProveedorID_TIPO_FP: TIntegerField
      FieldName = 'ID_TIPO_FP'
    end
    object ZQ_CtaCte_ProveedorFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZQ_CtaCte_ProveedorOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
      Size = 500
    end
    object ZQ_CtaCte_ProveedorFECHA_FP: TDateField
      FieldName = 'FECHA_FP'
    end
    object ZQ_CtaCte_ProveedorDEBE: TFloatField
      FieldName = 'DEBE'
      DisplayFormat = '###,###,##0.00'
    end
    object ZQ_CtaCte_ProveedorHABER: TFloatField
      FieldName = 'HABER'
      DisplayFormat = '###,###,##0.00'
    end
    object ZQ_CtaCte_ProveedorSALDO_CPB: TFloatField
      FieldName = 'SALDO_CPB'
      DisplayFormat = '###,###,##0.00'
    end
    object ZQ_CtaCte_ProveedorSALDO: TFloatField
      FieldName = 'SALDO'
      DisplayFormat = '###,###,##0.00'
    end
    object ZQ_CtaCte_ProveedorID_COMPROB_FP: TIntegerField
      FieldName = 'ID_COMPROB_FP'
    end
  end
  object DS_CtaCte_Proveedor: TDataSource
    DataSet = ZQ_CtaCte_Proveedor
    Left = 272
    Top = 206
  end
  object EKOrdenar_CtaCteGral: TEKOrdenarGrilla
    Grilla = DBGridResumen_CtaCtes
    Filtros = <
      item
        TituloColumna = 'C'#243'digo'
        Visible = True
      end
      item
        TituloColumna = 'Nombre'
        Visible = True
      end
      item
        TituloColumna = 'Limite Deuda'
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
        TituloColumna = 'C'#243'd. Postal'
        Visible = False
      end
      item
        TituloColumna = 'Localidad'
        Visible = False
      end
      item
        TituloColumna = 'Provincia'
        Visible = False
      end
      item
        TituloColumna = 'IVA'
        Visible = False
      end
      item
        TituloColumna = 'Nombre IVA'
        Visible = True
      end
      item
        TituloColumna = 'Cuit/Cuil'
        Visible = True
      end
      item
        TituloColumna = 'Alta Cta. Cte.'
        Visible = True
      end
      item
        TituloColumna = 'Baja Cta. Cte.'
        Visible = False
      end>
    NombreGuardar = 'CtaCorriente_General'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 144
    Top = 256
  end
  object EKOrdenar_CtaCteProveedor: TEKOrdenarGrilla
    Grilla = DBGridProveedor_CtaCte
    Filtros = <
      item
        TituloColumna = 'Fecha'
        Visible = True
      end
      item
        TituloColumna = 'Fecha Pago'
        Visible = False
      end
      item
        TituloColumna = 'Comprobante'
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
        TituloColumna = 'Saldo Cpb.'
        Visible = True
      end
      item
        TituloColumna = 'Saldo Total'
        Visible = True
      end
      item
        TituloColumna = 'Observacion Comprobante'
        Visible = True
      end
      item
        TituloColumna = 'ID_COMPROBANTE'
        Visible = True
      end>
    NombreGuardar = 'CtaCorriente_Cliente'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = False
    PermitirMover = True
    PermitirFiltrar = True
    Left = 275
    Top = 256
  end
  object EKDbSumaCtaCte_Proveedor: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'debe'
      end
      item
        Operacion = goSum
        NombreCampo = 'haber'
      end>
    DataSet = ZQ_CtaCte_Proveedor
    Left = 275
    Top = 306
  end
  object EKDbSumaCtaCte_Gral: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'debe'
      end
      item
        Operacion = goSum
        NombreCampo = 'haber'
      end
      item
        Operacion = goSum
        NombreCampo = 'saldo'
      end>
    DataSet = ZQ_CtaCte_Gral
    Left = 144
    Top = 306
  end
  object EKBuscarProveedor: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'C'#243'digo'
        Campo = 'CODIGO_CORTO'
        Tabla = 'cc'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Nombre'
        Campo = 'NOMBRE'
        Tabla = 'cc'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'C'#243'd. Postal'
        Campo = 'CODIGO_POSTAL'
        Tabla = 'cc'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Localidad'
        Campo = 'LOCALIDAD'
        Tabla = 'cc'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Provincia'
        Campo = 'PROVINCIA'
        Tabla = 'cc'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Fecha Alta'
        Campo = 'FECHA_ALTA'
        Tabla = 'cc'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Saldo'
        Campo = 'SALDO'
        Tabla = 'cc'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end
      item
        Titulo = 'Limite Deuda'
        Campo = 'LIMITE_DEUDA'
        Tabla = 'cc'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_CtaCte_Gral
    SQL.Strings = (
      
        'select cc.id_proveedor_out, cc.limite_deuda, cc.vencimiento_dias' +
        ', cc.saldo, cc.fecha_alta, cc.fecha_baja,'
      
        '       cc.debe, cc.haber, cc.nombre, cc.localidad, cc.codigo_pos' +
        'tal, cc.cuit_cuil,'
      
        '       cc.baja, cc.nombre_provincia, cc.nombre_tipo_iva, cc.cod_' +
        'iva, cc.codigo_corto'
      'from ctacte_general(:id_proveedor, :id_cliente) cc')
    SQL_Select.Strings = (
      
        'select cc.id_proveedor_out, cc.limite_deuda, cc.vencimiento_dias' +
        ', cc.saldo, cc.fecha_alta, cc.fecha_baja,'
      
        '       cc.debe, cc.haber, cc.nombre, cc.localidad, cc.codigo_pos' +
        'tal, cc.cuit_cuil,'
      
        '       cc.baja, cc.nombre_provincia, cc.nombre_tipo_iva, cc.cod_' +
        'iva, cc.codigo_corto')
    SQL_From.Strings = (
      'from ctacte_general(:id_proveedor, :id_cliente) cc')
    UsarWhereOriginal = EK_Sin_Where
    Left = 491
    Top = 158
  end
  object EKVistaCtasCtes: TEKVistaPreviaQR
    Reporte = RepCtasCtes
    ShowModal = False
    Left = 384
    Top = 160
  end
  object EKVistaProveedor: TEKVistaPreviaQR
    Reporte = RepProveedor
    ShowModal = False
    Left = 384
    Top = 208
  end
end
