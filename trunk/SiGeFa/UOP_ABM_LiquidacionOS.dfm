object FOP_ABM_LiquidacionOS: TFOP_ABM_LiquidacionOS
  Left = 327
  Top = 188
  Width = 922
  Height = 632
  Caption = 'ABM Liquidaci'#243'n Obra Social'
  Color = clBtnFace
  Constraints.MinHeight = 460
  Constraints.MinWidth = 648
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFondo: TPanel
    Left = 0
    Top = 19
    Width = 914
    Height = 534
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object RepListado: TQuickRep
      Tag = 99
      Left = 46
      Top = 66
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = ZQ_VerCpb
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
          Left = 221
          Top = 47
          Width = 276
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            584.729166666666700000
            124.354166666666700000
            730.250000000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'LIQUIDACIONES OBRA SOCIAL'
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
          Left = 287
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
          Left = 279
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
          Width = 69
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
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_VerCpb
          DataField = 'FECHA_LIQUIDACION'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText2: TQRDBText
          Left = 626
          Top = 0
          Width = 89
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1656.291666666667000000
            0.000000000000000000
            235.479166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_VerCpb
          DataField = 'IMPORTE'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText3: TQRDBText
          Left = 79
          Top = 0
          Width = 82
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            209.020833333333300000
            0.000000000000000000
            216.958333333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_VerCpb
          DataField = 'ID_OPTICA_LIQUIDACION'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText4: TQRDBText
          Left = 175
          Top = 0
          Width = 70
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            463.020833333333400000
            0.000000000000000000
            185.208333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_VerCpb
          DataField = 'CODIGO'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText6: TQRDBText
          Left = 257
          Top = 0
          Width = 352
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            679.979166666666800000
            0.000000000000000000
            931.333333333333500000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_VerCpb
          DataField = 'NOMBRE'
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
          58.208333333333340000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbSummary
        object QRExpr18: TQRExpr
          Left = 4
          Top = 4
          Width = 188
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
            497.416666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = #39'Cantidad de Art'#237'culos: '#39'+COUNT'
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
          82.020833333333340000
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
          AutoStretch = True
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
            34.395833333333340000
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
          Width = 55
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
            145.520833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'F. Carga'
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
          Left = 175
          Top = 2
          Width = 62
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            463.020833333333400000
            5.291666666666667000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'C'#243'd. OS'
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
          Left = 626
          Top = 2
          Width = 89
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1656.291666666667000000
            5.291666666666667000
            235.479166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Total Liq.'
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
          Left = 79
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
            209.020833333333300000
            5.291666666666667000
            222.250000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'C'#243'digo Liq.'
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
          Left = 257
          Top = 2
          Width = 278
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            679.979166666666800000
            5.291666666666667000
            735.541666666666800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Obra Social'
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
    object PanelEditar: TPanel
      Left = 0
      Top = 0
      Width = 914
      Height = 534
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object PanelDatosOSLiquidar: TPanel
        Left = 0
        Top = 0
        Width = 914
        Height = 177
        Align = alTop
        TabOrder = 0
        DesignSize = (
          914
          177)
        object btnBuscarOSLiquidar: TSpeedButton
          Left = 7
          Top = 11
          Width = 50
          Height = 50
          Hint = 'Buscar una Obras Social para Liquidar'
          GroupIndex = 2
          Caption = '(F1)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Layout = blGlyphTop
          ParentFont = False
          OnClick = btnBuscarOSLiquidarClick
        end
        object PanelDatosOSLiquidacion: TPanel
          Left = 66
          Top = 7
          Width = 633
          Height = 74
          Anchors = [akLeft]
          BevelOuter = bvNone
          TabOrder = 0
          object Label2: TLabel
            Left = 438
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
            Visible = False
          end
          object Label3: TLabel
            Left = 142
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
          object Label4: TLabel
            Left = 5
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
          object Label5: TLabel
            Left = 17
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
          object Label7: TLabel
            Left = 150
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
          object Label8: TLabel
            Left = 30
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
          object Label9: TLabel
            Left = 265
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
          object Label10: TLabel
            Left = 49
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
          object DBText2: TDBText
            Left = 76
            Top = 22
            Width = 545
            Height = 13
            DataField = 'DIRECCION'
            DataSource = DS_ObraSocial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText3: TDBText
            Left = 201
            Top = 5
            Width = 420
            Height = 13
            DataField = 'NOMBRE'
            DataSource = DS_ObraSocial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText7: TDBText
            Left = 76
            Top = 5
            Width = 65
            Height = 13
            DataField = 'CODIGO'
            DataSource = DS_ObraSocial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText8: TDBText
            Left = 322
            Top = 58
            Width = 114
            Height = 13
            DataField = 'CUIT_CUIL'
            DataSource = DS_ObraSocial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText9: TDBText
            Left = 76
            Top = 58
            Width = 181
            Height = 13
            DataField = 'NOMBRE_TIPO_IVA'
            DataSource = DS_ObraSocial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText10: TDBText
            Left = 496
            Top = 40
            Width = 133
            Height = 13
            DataSource = DS_ObraSocial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object DBText11: TDBText
            Left = 202
            Top = 40
            Width = 232
            Height = 13
            DataField = 'LOCALIDAD'
            DataSource = DS_ObraSocial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBText12: TDBText
            Left = 77
            Top = 40
            Width = 57
            Height = 13
            DataField = 'CODIGO_POSTAL'
            DataSource = DS_ObraSocial
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object DBMemoDetalleLiq: TDBMemo
          Left = 74
          Top = 126
          Width = 633
          Height = 46
          DataField = 'DETALLE'
          DataSource = DS_Liquidacion
          ScrollBars = ssVertical
          TabOrder = 2
        end
        object PanelFechaLiquidacion: TPanel
          Left = 64
          Top = 82
          Width = 637
          Height = 42
          BevelOuter = bvNone
          TabOrder = 1
          object Label11: TLabel
            Left = 11
            Top = 1
            Width = 79
            Height = 13
            Caption = 'Fecha Factura'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 127
            Height = 42
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label27: TLabel
              Left = 12
              Top = 1
              Width = 100
              Height = 13
              Caption = 'Fecha Liquidacion'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object EKDBDateFechaLiq: TEKDBDateTimePicker
              Left = 11
              Top = 14
              Width = 105
              Height = 21
              Date = 40717.702273252320000000
              Time = 40717.702273252320000000
              TabOrder = 0
              DataField = 'FECHA_LIQUIDACION'
              DataSource = DS_Liquidacion
            end
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 177
        Width = 914
        Height = 357
        Align = alClient
        TabOrder = 1
        object Label13: TLabel
          Left = 1
          Top = 1
          Width = 912
          Height = 13
          Align = alTop
          Alignment = taCenter
          Caption = 'LISTADO DE FACTURAS (F3 = Agregar una Factura)'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Panel2: TPanel
          Left = 1
          Top = 315
          Width = 912
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          DesignSize = (
            912
            41)
          object Label32: TLabel
            Left = 757
            Top = 3
            Width = 95
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Total Liquidaci'#243'n'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 621
            Top = 3
            Width = 51
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 'Canitdad'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object btnQuitarLiqFactura: TButton
            Left = 5
            Top = 3
            Width = 145
            Height = 18
            Caption = 'Quitar (Ctrl+Delete)'
            TabOrder = 0
            OnClick = btnQuitarLiqFacturaClick
          end
          object editCantidadFacturas: TEdit
            Left = 620
            Top = 17
            Width = 129
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            AutoSize = False
            BevelInner = bvNone
            BevelOuter = bvNone
            BiDiMode = bdRightToLeft
            Color = 12189695
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object EditImporteFinal: TEdit
            Left = 756
            Top = 17
            Width = 129
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            AutoSize = False
            BevelInner = bvNone
            BevelOuter = bvNone
            BiDiMode = bdRightToLeft
            Color = 12189695
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
        end
        object DBGridCargaFacturasLiq: TDBGrid
          Left = 1
          Top = 14
          Width = 912
          Height = 301
          Align = alClient
          Color = 14606012
          DataSource = DS_LiqFactura
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = Popup_Factura
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridCargaFacturasLiqDrawColumnCell
          OnKeyDown = DBGridCargaFacturasLiqKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'fecha'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'codigo'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Width = 289
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punto_venta'
              Title.Alignment = taCenter
              Title.Caption = 'PV'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'numero_cpb'
              Title.Alignment = taCenter
              Title.Caption = 'N'#250'mero'
              Width = 129
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'importe'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Width = 137
              Visible = True
            end>
        end
      end
    end
    object PanelVer: TPanel
      Left = 0
      Top = 0
      Width = 914
      Height = 534
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 378
        Top = 5
        Width = 6
        Height = 524
        Align = alRight
      end
      object PanelListaCpb: TPanel
        Left = 5
        Top = 5
        Width = 373
        Height = 524
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBGridListaCpb: TDBGrid
          Left = 0
          Top = 0
          Width = 373
          Height = 524
          Align = alClient
          Color = 14606012
          DataSource = DS_VerCpb
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridListaCpbDrawColumnCell
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID_OPTICA_LIQUIDACION'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Width = 89
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FECHA_LIQUIDACION'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha'
              Width = 93
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'FECHA_ANULACION'
              Title.Alignment = taCenter
              Title.Caption = 'Anulado'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'd. OS'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE'
              Title.Alignment = taCenter
              Title.Caption = 'Obra Social'
              Width = 215
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE_TIPO_IVA'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Iva'
              Width = 161
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CUIT_CUIL'
              Title.Alignment = taCenter
              Title.Caption = 'Cuit/Cuil'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Total Liq.'
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_OS'
              Title.Alignment = taCenter
              Title.Caption = 'Id OS'
              Visible = True
            end>
        end
      end
      object PanelCpbActual: TPanel
        Left = 384
        Top = 5
        Width = 525
        Height = 524
        Align = alRight
        BevelOuter = bvNone
        Constraints.MinWidth = 525
        TabOrder = 1
        object PanelCpbActual_Facturas: TPanel
          Left = 0
          Top = 0
          Width = 525
          Height = 362
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object DBGridFacturas: TDBGrid
            Left = 0
            Top = 0
            Width = 525
            Height = 362
            Align = alClient
            Color = 14606012
            DataSource = DS_VerLiqFacturas
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridFacturasDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'FECHA'
                Title.Alignment = taCenter
                Title.Caption = 'Fecha'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Title.Caption = 'C'#243'digo'
                Width = 112
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PUNTO_VENTA'
                Title.Alignment = taCenter
                Title.Caption = 'PV'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMERO_CPB'
                Title.Alignment = taCenter
                Title.Caption = 'N'#250'mero'
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IMPORTE_TOTAL'
                Title.Alignment = taCenter
                Title.Caption = 'Importe'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DETALLE'
                Title.Alignment = taCenter
                Title.Caption = 'Detalle'
                Width = 263
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_OPTICA_LIQUIDACION_FACTURA'
                Title.Alignment = taCenter
                Title.Caption = 'ID O.L.F.'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID_COMPROBANTE'
                Title.Alignment = taCenter
                Title.Caption = 'ID Cpb'
                Width = 49
                Visible = True
              end>
          end
        end
        object PanelCpbActual_Info: TPanel
          Left = 0
          Top = 362
          Width = 525
          Height = 162
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 1
          object GroupBoxCpbActual_Info: TGroupBox
            Left = 2
            Top = 2
            Width = 521
            Height = 158
            Align = alClient
            Caption = '  Datos Liquidaci'#243'n  '
            TabOrder = 0
            DesignSize = (
              521
              158)
            object DBTxtFechaAnulado: TDBText
              Left = 8
              Top = 118
              Width = 130
              Height = 13
              AutoSize = True
              Color = 14342874
              DataField = 'FECHA_ANULACION'
              DataSource = DS_VerCpb
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              Visible = False
            end
            object Label24: TLabel
              Left = 8
              Top = 36
              Width = 54
              Height = 13
              Caption = 'F. Carga:'
            end
            object DBTxtMonto: TDBText
              Left = 336
              Top = 132
              Width = 177
              Height = 23
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              DataField = 'IMPORTE'
              DataSource = DS_VerCpb
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -19
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText1: TDBText
              Left = 66
              Top = 36
              Width = 80
              Height = 13
              Color = 14342874
              DataField = 'FECHA_LIQUIDACION'
              DataSource = DS_VerCpb
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label1: TLabel
              Left = 461
              Top = 118
              Width = 52
              Height = 13
              Alignment = taRightJustify
              Anchors = [akTop, akRight]
              Caption = 'Total Liq.'
            end
            object DBTxtSaldo: TDBText
              Left = 8
              Top = 132
              Width = 177
              Height = 23
              DataSource = DS_VerCpb
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clTeal
              Font.Height = -19
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object lblSaldo: TLabel
              Left = 8
              Top = 118
              Width = 32
              Height = 13
              Alignment = taRightJustify
              Caption = 'Saldo'
              Visible = False
            end
            object Label28: TLabel
              Left = 8
              Top = 17
              Width = 71
              Height = 13
              Caption = 'Obra Social:'
            end
            object DBText4: TDBText
              Left = 82
              Top = 17
              Width = 423
              Height = 13
              Color = 14342874
              DataField = 'NOMBRE'
              DataSource = DS_VerCpb
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label31: TLabel
              Left = 160
              Top = 36
              Width = 45
              Height = 13
              Alignment = taRightJustify
              Caption = 'C'#243'digo:'
            end
            object DBText5: TDBText
              Left = 206
              Top = 36
              Width = 115
              Height = 13
              Color = 14342874
              DataField = 'ID_OPTICA_LIQUIDACION'
              DataSource = DS_VerCpb
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object lblAnulado: TLabel
              Left = 8
              Top = 132
              Width = 105
              Height = 23
              Caption = 'ANULADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 4868863
              Font.Height = -19
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object DBMemoCpbActual_Info: TDBMemo
              Left = 8
              Top = 61
              Width = 505
              Height = 55
              Anchors = [akLeft, akTop, akRight]
              DataField = 'DETALLE'
              DataSource = DS_VerCpb
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  object PanelInfo: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 19
    Align = alTop
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    object lblTipoComprobante: TLabel
      Left = 1
      Top = 1
      Width = 908
      Height = 17
      Align = alCustom
      Alignment = taCenter
      Anchors = [akLeft, akRight]
      AutoSize = False
      Caption = 'LIQUIDACION OBRA SOCIAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCantidadRegistros: TLabel
      Left = 1
      Top = 1
      Width = 134
      Height = 17
      Align = alLeft
      Caption = 'lblCantidadRegistros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object StaticTxtBaja: TStaticText
      Left = 804
      Top = 1
      Width = 109
      Height = 17
      Align = alRight
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'ANULADO'
      Color = 6974207
      ParentColor = False
      TabOrder = 0
    end
    object StaticTxtConfirmado: TStaticText
      Left = 695
      Top = 1
      Width = 109
      Height = 17
      Align = alRight
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'CONFIRMADO'
      Color = 10025203
      ParentColor = False
      TabOrder = 1
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
    CanCustomize = False
    Categories.Strings = (
      'Edicion')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    HideFloatingBarsWhenInactive = False
    ImageOptions.Images = FPrincipal.Iconos_Barra_32
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
    Left = 316
    Top = 274
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
          Visible = True
          ItemName = 'btnConfirmar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnBaja'
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
          ItemName = 'btnEnviarMail'
        end
        item
          Visible = True
          ItemName = 'btnImprimirComprobante'
        end
        item
          Visible = True
          ItemName = 'btnImprimirListado'
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
    object btnConfirmar: TdxBarLargeButton
      Caption = 'F4 - Confirmar'
      Category = 0
      Hint = 'Confirmar el comprobante seleccionado'
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = btnConfirmarClick
      AutoGrayScale = False
    end
    object btnBaja: TdxBarLargeButton
      Caption = 'F5 - Anular'
      Category = 0
      Hint = 'Da de baja un registro'
      Visible = ivAlways
      LargeImageIndex = 25
      OnClick = btnBajaClick
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
    object btnEnviarMail: TdxBarLargeButton
      Align = iaRight
      Caption = 'Mail'
      Category = 0
      Hint = 
        'Enviar mail al cliente/proveedor con el comprobante adjunto en P' +
        'DF'
      Visible = ivAlways
      LargeImageIndex = 76
      OnClick = btnEnviarMailClick
      AutoGrayScale = False
    end
    object btnImprimirListado: TdxBarLargeButton
      Caption = 'Listado'
      Category = 0
      Hint = 'Listado del facturas de compra'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = btnImprimirListadoClick
      AutoGrayScale = False
    end
    object btnSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir sin seleccionar'
      Visible = ivAlways
      LargeImageIndex = 6
      OnClick = btnSalirClick
      AutoGrayScale = False
    end
    object btnImprimirComprobante: TdxBarLargeButton
      Caption = 'Comprobante'
      Category = 0
      Hint = 'Comprobante'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = btnImprimirComprobanteClick
      AutoGrayScale = False
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'btnNuevo'
        'btnModificar'
        'btnBuscar'
        'btnEnviarMail'
        'btnBaja'
        'btnSalir'
        'btnImprimirListado'
        'btnConfirmar'
        'btnImprimirComprobante')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'btnGuardar'
        'btnCancelar')
    end
  end
  object ATeclasRapidas: TActionManager
    Left = 316
    Top = 324
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
    object AConfirmar: TAction
      Caption = 'AConfirmar'
      ShortCut = 115
      OnExecute = AConfirmarExecute
    end
    object ABaja: TAction
      Caption = 'ABaja'
      ShortCut = 116
      OnExecute = ABajaExecute
    end
    object ALiquidar: TAction
      Caption = 'ALiquidar'
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
  object ImageListEntidad: TImageList
    Height = 48
    Width = 48
    Left = 235
    Top = 274
    Bitmap = {
      494C010103000400040030003000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C00000003000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A59C90007266
      49009A9383000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A7A1940072644600564318004C360500543E
      0E004E3909006E60400000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000095969C0095969C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A7A1940072644600533E11004C3605005A451600725E340095836100B2A2
      85008E7C58005C471900533E1100928879000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008F91A100757895007578950081839900999AA400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A9A19600726649005643
      18004E3909005A4516007561360096845F00B2A28500C0B39C00C4B9A500C5BA
      A800C0B39C00A2927400725E3400543E0E006959390000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000898A99006C6F9300595E9F00555CA0005E63960075789500999AA4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ACA49A0076684C00564318004E3909005A4516007D68
      3F009B886500B2A28500BAAC9300BAAC9300B3A69200ACA08B00A5988600ACA0
      8B00B3A69200B3A69200AA9A7D00897654005C47190056431800928571000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005B5B5B004A4949004A4949004A4949004A4949004A4949004A4949004A49
      49004A4949004A494900697C8E00829AAC00829AAC00606971004A4949004A49
      49004A4949004A4949004A4949004A4949004A4949004A4949004A4949004A49
      4900737373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8E
      A2006E739F005D63AB00535DC000535DC000565EBB00646AA7007A7D9E009697
      A500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ACA4
      9A0072664900564318004E390900614D230084714A00A8967500BAAC9300BAAC
      9300B3A69200AA9A7D009B8C73008E816C0084796D00988E8300A7A19800C2BB
      B3009B8E7C009B8C7300A5987E00A5987E0098876600725E3400543E0E006251
      2B00BCB6B1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A1A
      1A00000000000000000000000000000000000000000000000000000000000000
      00000A0A0A000A0A0A005E95C30095CEFE0095CEFE006085A300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004343430000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007E8093006368
      9600565EB600515BD100525FE900525FE900525EE100535DC0005A61A9006E71
      95009496A2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3ACA3007E7056005C471900543E
      0E00614D23008C7A5500AFA08500C0B39C00C0B39C00BAAC9300ACA08B009E90
      7C008E816C00817564007C716400857C7100A0968B00B6B2AB00B3AEA900D9D5
      D100CAC3BB00A59C9000928571009B8C7300A5987E0096886D00897654005E49
      1C00533E11008E816C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A0A
      0A00000000000A0A0A0000000000000000000A0A0A00000000000A0A0A001313
      13001A1A1A000A0A0A0072B0E20098CFFF0096D0FE0083B9E2000A0E11000000
      0000000000000A0A0A0000000000000000000A0A0A00000000000A0A0A000000
      0000000000004A49490000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008F91A1006A6E9C005D63
      AB00515BD100525EE1005461F6005461F600525FE900525EE100565EBB005D63
      AB00777A9C009496A20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BEB9B2009589730078664000614D23006A562B0095836100B4A8
      9500CBC2B200CBC2B200C4B9A500B4A89500A59886009B8C7300928571008D84
      7A008B80750084796D007C716400857C7100A0968B00AEA9A300ACA49A00D3CE
      C900CBC6C000C2BBB300B0A69A00928571008E816C009E907C00A29274008E81
      6C0074623B004E39090062512B00B6B2AB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3D0000000000000000000A0A0A00000000000A0A0A001A1A1A00242424002424
      24002C2B2B001921270081C2F30098CFFF0096D0FE0098CFFF0025323D000000
      000000000000000000000A0A0A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000888895006E739F00575EB200515B
      D1005360EA005461F6005462FA005462FA005462FA005461F600525EE100535D
      C0005A61A900757895009697A500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CAC3BB00ACA0
      8B009B8865008C7A550096845F00A5987E00CAC0AD00DBD4CB00D8D0BF00CBC2
      B200B9AE9C00ACA08B009E907C00A5987E00928571007A6D5C007C716400A59C
      90008D847A00857C71007C7164007C71640071665600726649007F6E54008778
      5C00B3AA9D00BEB9B200B3ACA300A7A198009B8E7C008E816C00928571009E90
      7C0096886D0089765400614D23004E39090087785C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000A0A0A000A0A0A001A1A1A002424240024242400333333003333
      33003D3D3D00243A490096D0FE0096D0FE009DD8FF0096D0FE00517086000A0A
      0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A
      0A00333333000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000999AA40086879C006E739F005D63AB00555FCE00545E
      E5005461F6005462FA005462FA005462FA005462FA005461F6005360EA00525E
      E100565EBB005A61A9007A7D9E008F909C00999AA40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0B39C00B3A69200B2A2
      8500C4B9A500D9D1C300E2DDD400E0D9CC00CEC8BD00B8AEA300A59C90009589
      7300A9A19600B9AE9C00ACA08B008E816C0087785C00706245005F5036007C71
      6400928879006B5C3F006B5C3F008B7D6300A9A19600C1B9AE00C8BFB100A9A1
      96007D6D4D0087785C00A3998C00A49B91009A9085008B80750084796D009081
      66009B8C73009B8C73009081660073624100533E11005E491C00AEA9A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000242424001A1A1A00242424002C2B2B00333333003D3D3D003D3D3D004A49
      49004A49490035576D0098CFFF009DD8FF0096D0FE009DD8FF007AA8C9001313
      13002424240024242400242424002424240024242400242424002C2B2B002424
      2400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007D7E860075768200757682007576
      8200757682006B6E86006B6E860060659600565DAB00555FCE00545EE5005461
      F6005462FA005462FA005C69FA005967FC005967FC005462FA005462FA005461
      F600525EE100555EC9005B61A20062668A006B6E860075768200757682007576
      8200757682007778840090919600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CFCDC900DBD4CB00E9E5DD00F2F0
      EE00F0ECE600E5E0D600C5BAA800A0968B0092887900ACA49A00C2BEB900C2BB
      B300B8AEA300C4B9A500ACA08B009B8C7300877B6600726446005E4F33005E4F
      3300A3998C00B3AA9D00C2BBB300CEC8BD00DBD4CB00C2BBB300BCB6B100D5D1
      CC00C5BAA800928879006A562B0072664900857C710084796D00766B60007166
      5A00817564008E816C009B8C73008E816C0082715500614D2300543E0E007F73
      5A00000000000000000000000000000000000000000000000000000000000000
      0000A19694009E939200A1969400A1969400A59B9B00A59B9B00B0A7A600B0A7
      A600B4ABAB00B4ABAB00B7B1B100B8B1B100B8B1B100B8B1B100B8B1B100B8B1
      B100A59B9B0033333300333333003D3D3D004343430043434300545454005454
      54004A4949005481A00098CFFF009DD8FF009DD8FF0098CFFF0092C8EE002424
      2400434343003D3D3D00434343003D3D3D00434343003D3D3D00333333007373
      7300000000000000000000000000000000000000000000000000000000000000
      00000000000000000000999AA4007E80930062668A0061659A005A61A9005A61
      A9005A61A9006066A8005D63AB00565EBB00515BD100525EE1005461F6005462
      FA005C69FA005C69FA006975FC006975FC006471FB005C69FA005967FC005461
      F6005461F6005460DE00535DC000565EB6005D63AB005D63AB005D63AB005A61
      A9005B61A2006065960075789500888895000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4D3D200E5E1DC00F0EE
      EB00F0ECE600E2DDD400BDB8AD00DBDAD900EDEBE900E5E4E200DBDAD900DBD4
      CB00B8AEA300C0B39C00ACA08B00958973008E816C00A59C9000B3AA9D00CAC3
      BB00D5D1CC00D8D0BF00BDB8AD00988E83006D615300655A4B00594D3C008176
      6A00C2BBB300D3CEC900C2BBB3008B7D63005E4C250067594100655A4B005C50
      3F0052463500615545007E7056008E816C00928571009081660074623B00533E
      11005C471900A7A198000000000000000000000000000000000000000000C9B5
      B200BDA5A100BFA9A400C6B0AC00C9B5B200D2C0BE00D8C6C400D9C8C600E0D0
      CF00E4D8D600E9DCDC00EDE2E200F0E5E500F0E5E500EDE2E200F0E5E500F0E5
      E500EDE2E200E4D8D6009E9392006A6564004A494900545454005B5B5B006A65
      6400393E41007DB4DB009DD8FF009DD8FF009DD8FF009DD8FF009DD8FF003649
      56005454540054545400545454004A4949005B5B5B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007D7E860060659600565EB600535DC000525EE1005661
      E5005661E5005561E9005360EA005360EA005865F2005461F6005462FA005967
      FC005C69FA006975FC007C86FC007E88FC007580FC006471FB005C69FA005462
      FA005461F6005461F6005461F6005360EA005360EA005561E9005561E9005661
      E500555FD900535DC000595E9F00686A8A00999AA40000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D5D1
      CC00DBDAD900E9E5DD00E5E1DC00F5F4F300F0EEEB00E9E5DD00D9D1C300C5BA
      A800B4A89500ACA49A00CAC3BB00D8D0BF00D4D3D200DBD4CB00CDC8C300ACA4
      9A00928571006F645900655A4B0061564A0052463500695D4D0061554500988E
      8300988E8300A59C9000CBC6C000D8D0BF00BBB4AB007D6D4D00584621005446
      2E0052463500594D3C0061564A00706245007E705600908166008E816C007F6E
      540062512B00543E0E007F735A00000000000000000000000000D4C4C200C9B5
      B200BAA29D00BFA9A400C6B0AC00C9B5B200D2C0BE00D2C0BE00D9C8C600DDD0
      CE00E4D8D600E9DCDC00E9DCDC00F0E5E500F0E5E500F1E8E700F0E5E500F0E5
      E500EBE0DF00E9DCDC00E4D8D600C7C1C6009198A300556777002A495D004B63
      7200324E5E009DD8FF009DD8FF009DD8FF009DD8FF00ACDBFE00A3D8FE005A7B
      9300434343005B5B5B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E7080005C619A00535DC000525EE1005461F6005462
      FA005967FC005462FA005462FA005462FA005462FA005462FA005462FA005967
      FC00616EFC007580FC008D96FC00919AFC00858EFC007580FC00616EFC005462
      FA005462FA005462FA005462FA005462FA005462FA005462FA005462FA005462
      FA005360EA00525EE100565EB60062668A009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CDC8C300E1DDD900F0ECE600CEC8BD00CBC2B200C8BFB100CEC8
      BD00D5D1CC00DBD4CB00CFCDC900BEB9B200A59C90008B80750084796D007469
      5C005A4F40005C51420041352600524635003D3223006D615300695D4D00A59C
      9000A0968B00988E8300766B6000B3ACA300D3CEC900D3CEC900B0A69A00725E
      34004D3C1900594D3C007A6D5C0081766A00716656007F6E540087785C008878
      5F0087785C006B5C3F006353330000000000000000000000000000000000C9B5
      B200BAA29D00BDA5A100C6B0AC00C6B0AC00C9B5B200D2C0BE00D8C6C400D8C6
      C400E0D0CF00E4D8D600E9DCDC00EDE2E200F0E5E500F0E5E500F1E8E700F1E8
      E700F0E5E500EBE0DF00E4D8D6008D9BAB0014547D0014547D00135A8400135A
      84001B6792008CC8EE0098CFFF008DCAF30094CEF600ACDBFE00ACDBFE0063A1
      C5003360780077868E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006B6E86005A61A900515BD1005461F6005461F6005462
      FA005462FA005462FA005462FA005462FA005462FA005462FA005462FA005C69
      FA006471FB007E88FC009DA5FC00A4ABFC00919AFC007E88FC006471FB005C69
      FA005462FA005462FA005462FA005462FA005462FA005462FA005462FA005462
      FA005462FA00525EE100565EBB0061659A009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B8AEA300CBC2B200E1DDD900E9E6E200DBDA
      D900B8AEA3009A908500897E74008D847A0081766A006F64590061564A00675B
      50003D3223005A4F40004E423200675B500061564A0074695C0071665600ACA4
      9A00A59C9000857C710074695C0092887D00988E8300BBB4AB00D3CEC900DBD4
      CB00ACA08B0062512B0058482A0081766A0092887D007F6E540087785C007E70
      56008E816C00948B8100BDB8AD0000000000000000000000000000000000C9B5
      B200BAA29D00BAA29D00BFA9A400C6B0AC00C9B5B200D2C0BE00D2C0BE00D8C6
      C400E0D0CF00E0D0CF00E4D8D600E9DCDC00E9DCDC00EDE2E200EDE2E200EDE2
      E200EDE2E200EDE2E200C5CBD30095A9BA001B5C8400135A8400135A8400135A
      84001B67920074B3DC007CBBE50087C1EF008AC2EC007CBBE5007CC1E1004B8D
      B5001365900013659000296C8E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000757682005A61A900525EDC00525FE9005462FA005462
      FA005462FA005462FA005462FA005462FA005462FA005462FA005462FA005C69
      FA006D79FC008D96FC00ACB2FC00B4BAFC00A4ABFC008892FB006D79FC005967
      FC005462FA005462FA005462FA005462FA005462FA005462FA005462FA005462
      FA005462FA005360EA00575FBE0061659A009293A50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5E4E200FAFAF900C2BE
      B9008D847A0081766A00766B60006D61530061564A00675B50005C514200766B
      6000675B50006F645900594D3C005C5142004438280074695C007C716400BDB8
      AD00A59C900092887D0074695C008D847A00897E7400766B600084796D00BCB6
      B100D9D5D100D8D0BF009B8C730056431800615545008E816C00A59C9000C2BE
      B90000000000000000000000000000000000000000000000000000000000C9B5
      B200BDA5A100BAA29D00BFA9A400C6B0AC00C6B0AC00CCB8B600D2C0BE00D2C0
      BE00D8C6C400E0D0CF00E4D8D600E4D8D600E9DCDC00E9DCDC00EBE0DF00EBE0
      DF00EDE2E20095A9BA001B5C8400135A8400135A8400135A8400135A8400135E
      8800236B94008AC2EC0098CFFF0098CFFF0096D0FE0083B9E2006698C0002D6C
      950018527B00135A840013659000247095000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000686A8A006066A800525EDC005461F6005461F6005462
      FA005462FA005462FA005462FA005462FA005462FA005462FA005462FA00616E
      FC00717DFC00919AFC00BFC4FC00C5C9FD00ACB2FC00919AFC006D79FC005C69
      FA005462FA005462FA005462FA005462FA005462FA005462FA005462FA005462
      FA005462FA005360EA00575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DBDAD900B6B2
      AB00766B6000675B50006F64590074695C007E746900857C71006D6153008176
      6A00594D3C005C51420044382800655A4B00615545007C7164007C716400C2BB
      B300A59C90009A9383007C716400988E8300948B810074695C004E423200655A
      4B00988E8300C7C5C100DBDAD9009B8E7C00A0968B0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C9B5
      B200BDA5A100B69D9800BAA29D00BFA9A400C6B0AC00C6B0AC00CEBCB900D2C0
      BE00D4C4C200D8C6C400E0D0CF00E0D0CF00E4D8D600E4D8D600E5DAD900E9DC
      DC00E5DAD9006085A3005481A0001B5C8400135A8400135A840013628D001B67
      92007DB4DB00A8D6FE0098CFFF0098CFFF0095CEFE0095CEFE0098CFFF0092C7
      EC002074A00013628D00135E880011709E00678D9F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000757682005D63AB005460DE005360EA005462FA005462
      FA005462FA005462FA005462FA005462FA005462FA005462FA005462FA006471
      FB007C86FC009DA5FC00C5C9FD00CDD1FD00B4BAFC009DA5FC007580FC005C69
      FA005967FC005462FA005462FA005462FA005462FA005462FA005462FA005462
      FA005462FA005360EA00575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AEA9
      A3008D847A007E7469008B8075007E7469006F64590074695C005A4F40006F64
      59006F645900766B60006D6153006D6153005246350084796D0092857100C7C5
      C100ACA49A00A59C900081766A008D847A00948B81008D847A0061564A004E42
      3200594D3C00857C7100C2BEB900000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CCB8
      B600BDA5A100B69D9800BAA29D00BDA5A100BFA9A400C6B0AC00C6B0AC00CEBC
      B900D2C0BE00D4C4C200D8C6C400DDD0CE00E0D0CF00E4D8D600E4D8D600D6D1
      D1009BA6B400607E98005A7B9300537D9A0013628D0013628D0013628D0071AA
      D100ACDBFE0098CFFF0098CFFF0096D0FE0095CEFE0096D0FE0098CFFF0098CF
      FF0074B3DC0011709E0011709E0011709E003D7DA20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E7189005D63AB005460DE005461F6005461F6005462
      FA005462FA005462FA005462FA005462FA005462FA005462FA005967FC006975
      FC008D96FC00A4ABFC00C9CDFD00D1D5FD00BFC4FC009DA5FC007580FC00616E
      FC005967FC005462FA005462FA005462FA005462FA005462FA005462FA005462
      FA005462FA005461F600565EBB0061659A009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AEA9
      A3008D847A006F645900766B60006F645900766B6000857C71007E7469007E74
      69006F64590071665A0044382800655A4B00594D3C0084796D008D847A00D5D1
      CC00ACA49A00ACA49A0092857100948B81009D938900897E7400655A4B006D61
      530061564A00857C710000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6BB
      B900BFA9A400B69D9800B69D9800B89F9A00BFA9A400BFA9A400C6B0AC00C8B2
      AF00CEBCB900D2C0BE00D8C6C400D9C8C600DDD0CE00DDD0CE00E4D8D600DDD0
      CE00D2CACB00CBC7CA0097A4B2003866890014547D0013628D0013628D009CCA
      EB00A8D6FE0096D0FE0096D0FE0096D0FE0098CFFF00A8D6FE0098CFFF0098CF
      FF0087C1EF001E79A40011709E001174A300367DA10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000707288005D63AB005460DE005461F6005461F6005462
      FA005462FA005462FA005462FA005462FA005462FA005462FA005C69FA006D79
      FC008D96FC00ACB2FC00C9CDFD00D1D5FD00C1C6FC00A4ABFC007E88FC006471
      FB005967FC005462FA005462FA005462FA005462FA005462FA005462FA005462
      FA005462FA005360EA00575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AEA9
      A3008D847A007C7164008D847A008D847A007E746900857C7100675B50007469
      5C0061564A00857C710074695C007C716400655A4B00857C71009A938300DBDA
      D900B3ACA300B3ACA30092887D008D847A00A29C9100A29C9100675B50005C51
      42006D6153008D847A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6B0AC00AF968F00B69D9800B69D9800BAA29D00BFA9A400C4AEAA00C6B0
      AC00C8B2AF00CEBCB900D2C0BE00D2C0BE00D8C6C400DDD0CE00DDD0CE00DDD0
      CE00D6D1D100E4D8D600E4D8D600D2CACB00337196001365900013659000B3DD
      FD0098CFFF0096D0FE0096D0FE0098CFFF00A3D8FE00ACDBFE00B6E0FE00ACDB
      FE0094CEF6001D7EAC000E76A6000D7EB0004187A70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000757682005D63AB005460DE005360EA005462FA005462
      FA005462FA005462FA005462FA005462FA005462FA005462FA005C69FA00717D
      FC00919AFC00ACB2FC00C9CDFD00CDD1FD00C5C9FD00ACB2FC00858EFC006471
      FB005C69FA005462FA005462FA005462FA005462FA005462FA005462FA005462
      FA005462FA005360EA005962C0006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AEA9
      A300A29A900081766A007C716400766B600074695C007E7469007E7469008D84
      7A007C716400897E74005A4F40006B5F50005246350092857100A0968B00E5E1
      DC00B3ACA300C1B9AE00A0968B0092887D00A0968B009D938900857C71007469
      5C0070624500988E830000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D4C4C200BAA29D00AF968F00B69D9800B69D9800B89F9A00BDA5A100C1AA
      A600C6B0AC00C8B2AF00CEBCB900D2C0BE00D2C0BE00D8C6C400D8C6C400DDD0
      CE00E0D0CF00DDD0CE00D6D1D100E4D8D6005C8FAB0011709E002B7FA800BBE2
      FE0098CFFF009DD8FF009DD8FF00A3D8FE00ACDBFE00B6E0FE00C2E5FE00CBE9
      FE00BBE2FE002C8DBA001079A9000C82B4005CA1BF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E7189005D63AB005460DE005461F6005462FA005462
      FA005462FA005462FA005462FA005462FA005462FA005967FC005C69FA00717D
      FC009DA5FC00B4BAFC00C5C9FD00CDD1FD00C5C9FD00ACB2FC008892FB006D79
      FC005C69FA005462FA005462FA005462FA005462FA005462FA005462FA005462
      FA005462FA005360EA00575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AEA9
      A30092887D00766B60008B8075008D847A008D847A008D847A007C7164007E74
      69005C514200857C7100766B6000857C71007C716400988E8300A59C9000E2DD
      D4009B8A6900B3A69200A59C90008D847A00ACA49A00ACA49A0084796D006D61
      530081766A009D93890000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DDD0CE00BDA5A100AF968F00B69D9800B69D9800B89F9A00BDA5
      A100BFA9A400C6B0AC00CCB8B600CEBCB900D2C0BE00D2C0BE00D4C4C200D9C8
      C600DDD0CE00DDD0CE00E0D0CF00E4D8D6007F9EB5001174A3004896C000BBE2
      FE0098CFFF009DD8FF00A3D8FE00ACDBFE00B6E0FE00C2E5FE00C7E8FE00D2EC
      FD00D8EFFE00439BC4000E7AAB000C86B80080A4B60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000707288005D63AB005460DE005461F6005461F6005462
      FA005462FA005462FA005462FA005462FA005462FA005462FA005C69FA007580
      FC009DA5FC00B4BAFC00CDD1FD00CDD1FD00CDD1FD00B0B6FC008D96FC006975
      FC005C69FA005462FA005462FA005462FA005462FA005462FA005462FA005462
      FA005462FA005461F600565EBB0061659A009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B3AE
      A900A49B91008D847A008D847A007C7164007C7164007E7469007C7164009288
      7D0092887D00988E830081766A007C71640052463500988E8300ACA49A00D5D1
      CC0096845F009A855F00A5987E0092887D00948B8100A7A19800A59C90008175
      640076695400A29C910000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D9C8C600C9B5B200BAA29D00B89F
      9A00BFA9A400C4AEAA00CCB8B600F1E8E700E9DCDC00D2C0BE00E4D8D600F6F4
      F400DDD0CE00DDD0CE00E4D8D600E5DAD9009DB3C0001174A30053A6CD00B6E0
      FE009DD8FF0098CFFF00ACDBFE00B6E0FE00C2E5FE00C7E8FE00D2ECFD00D8EF
      FE00E2F3FE00439BC4000E7AAB000C82B4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000757682005D63AB005460DE005360EA005462FA005462
      FA005462FA005462FA005462FA005462FA005462FA005967FC00616EFC007C86
      FC00A4ABFC00BFC4FC00C5C9FD00CDD1FD00C5C9FD00B4BAFC008F98FC00717D
      FC00616EFC005462FA005462FA005462FA005462FA005462FA005462FA005462
      FA005462FA005360EA00575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6B2
      AB0092887D00766B60008B8075008B8075009A908500A49B91008D847A009288
      7D006F64590081766A0071665A00988E83007C716400A0968B00B3ACA300CEC8
      BD009B886500AA9A7D00B3A69200A59C9000B3AA9D00AEA7A0009A9383008778
      5C008D847A00A7A1980000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D8C6C400D2C0BE00F6F4F400F6F4F400F6F4F400E4D8D600F6F4F400F6F4
      F400FEFEFE00E4D8D600D2CACB00D6D1D100000000001174A3002C93C1007EC0
      EA0061AFDF005CABD5007CC1E100BBE2FE00C7E8FE00D2ECFD00D8EFFE00E2F3
      FE00E2F3FE002C8DBA000C82B4001485B6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E7189005D63AB005460DE005461F6005462FA005462
      FA005462FA005462FA005462FA005462FA005462FA005C69FA006471FB00858E
      FC00ACB2FC00BFC4FC00BFC4FC00C2C8FD00CDD1FD00BFC4FC0097A0FC007E88
      FC006471FB005462FA005462FA005462FA005462FA005462FA005462FA005462
      FA005462FA005360EA00575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B6B2
      AB00ACA49A009A908500A49B910092887D0084796D0084796D00766B60008D84
      7A008B807500A59C9000948B8100ACA49A0074695C00A59C9000BDB8AD00CEC8
      BD006A562B00A08F6E00C2B7A2009A9383009B8E7C00BDB8AD00BBB4AB008E81
      6C0081756400AEA7A00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A9D5F1009ED1EC008FC0E1008ABCD8009ED1EC00B3DD
      F400A9D5F100000000000000000000000000000000001E79A4001079A9001174
      A3000E76A6002C8DBA002788B800B6E0FE00CBE9FE00D8EFFE00E2F3FE00E8F6
      FE00B6D8EC001485B6000C82B4004493B7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000707288005D63AB005460DE005360EA005462FA005462
      FA005462FA005462FA005462FA005462FA005462FA005C69FA006975FC008892
      FB00B4BAFC00C5C9FD00BFC4FC00BFC4FC00C5C9FD00BFC4FC00A4ABFC008892
      FB006975FC005C69FA005462FA005462FA005462FA005462FA005462FA005462
      FA005462FA005461F600565EBB006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BCB6
      B100A49B91007C71640084796D007E74690092887D00A49B9100A49B9100A7A1
      980092887D00A49B91006B5F5000A0968B00857C7100A59C9000C2BBB300E9E6
      E200C0B39C00C8BFB100C2BBB300BBB2A300ACA49A00B0A69A00B0A69A00A598
      8600ACA08B00B3AEA90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008DCAF3007DBCE9008EC6F40091C7F20083BDE90083BD
      E90098CFFF0000000000000000000000000000000000367DA1000E76A6000E76
      A6000E76A6000E76A6000E7AAB005CABD500D8EFFE00D8EFFE00E8F6FE00EEF8
      FE0055ACD0000C82B4000C86B800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000757682005D63AB00545EE5005461F6005462FA005462
      FA005462FA005462FA005462FA005462FA005462FA005C69FA006975FC008F98
      FC00BFC4FC00CDD1FD00C5C9FD00C9CDFD00CDD1FD00BFC4FC00A8AFFC008D96
      FC006D79FC005462FA005462FA005462FA005462FA005462FA005462FA005462
      FA005462FA005360EA00575FBE0061659A009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2BE
      B900ACA49A0092887D00B0A69A00A7A198009D9389009A9085007E746900948B
      81008B807500A7A198009A908500A59C9000A49B9100B3ACA300CAC3BB00E9E6
      E200C5C0BA00E9E6E200CAC3BB00A9A19600A5988600CAC3BB00C2BBB3009B8E
      7C0092857100BDB8AD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007A97A7008EC6F400A8D6FE0095CEFE0095CEFE0098CFFF00A8D6
      FE0087C1EF00000000000000000000000000000000005698B8000E76A6000E7A
      AB000E7AAB000E7AAB000E7AAB001485B6009ED1EC00E8F6FE00E8F6FE007CC1
      E1000C86B8000C86B8000C89BC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E7189005D63AB005460DE005360EA005462FA005462
      FA005462FA005462FA005462FA005462FA005462FA006471FB007C86FC009DA5
      FC00BFC4FC00CDD1FD00C5C9FD00C2C8FD00C5C9FD00C5C9FD00B0B6FC0097A0
      FC007580FC005C69FA005C69FA005462FA005462FA005462FA005462FA005462
      FA005462FA005360EA00575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C2BE
      B900C2BBB300948B8100948B810084796D008B807500948B81009D938900AEA7
      A000A3998C00AEA7A00092887D009A908500A0968B00C2BEB900CBC6C000EDEB
      E900CAC3BB00EDEBE900D3CEC900BBB2A3009E907C00BBB2A300C2BBB300C1B9
      AE00B0A69A00C2BBB30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000829AAC009BCDF300A8D6FE0098CFFF0095CEFE0095CEFE0095CEFE0096D0
      FE00A8D6FE008FC0E100000000000000000000000000000000000E7AAB000E7A
      AB000E7AAB000D7EB0000C82B4000E7AAB002394C300B3DDF40051AFD9000C89
      BC000C86B8000C89BC005AADCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000757682005D63AB005460DE005461F6005462FA005462
      FA005462FA005462FA005462FA005462FA005462FA00717DFC00919AFC00ACB2
      FC00B4BAFC00B4BAFC00B0B6FC00B4BAFC00BFC4FC00BFC4FC00C5C9FD00ACB2
      FC008D96FC006D79FC005C69FA005462FA005462FA005462FA005462FA005462
      FA005462FA005360EA00575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C7C5
      C100BCB6B10092857100A49B91009D938900A3998C00A7A19800988E8300A49B
      9100988E8300B3ACA300BBB4AB00BEB9B200AEA7A000D3CEC900DBD4CB00EDEB
      E900CBC6C000EDEBE900DBD4CB00BBB2A300ACA08B00C1B9AE00C3B9A900B3A6
      9200A5988600C2BEB90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000ACDBFE00ACDBFE0098CFFF0098CFFF0095CEFE0095CEFE0095CEFE0096D0
      FE0096D0FE00A8D6FE00A3B5C4000000000000000000000000002989B4000E7A
      AB000C82B4000D7EB0000C82B4000C82B4000C82B4000D8CC0000C89BC000C89
      BC000C89BC00148EC00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E7189005D63AB005460DE005360EA005462FA005462
      FA005462FA005462FA005462FA005462FA005462FA007C86FC00ACB2FC00BFC4
      FC00B0B6FC00ACB2FC00A4ABFC00A4ABFC00ACB2FC00BFC4FC00C5C9FD00BFC4
      FC00919AFC007580FC00616EFC005462FA005462FA005462FA005462FA005462
      FA005462FA005360EA00575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBC6
      C000D3CEC900A7A198009D93890084796D008B807500A49B9100B0A69A00BEB9
      B200C2BBB300CAC3BB00B0A69A00BEB9B20084796D00D3CEC900D9D5D100D8D0
      BF00CBC6C000EDEBE900D9D5D100C2BBB300A5987E00B4A89500C8BFB100CAC3
      BB00ACA08B00CBC6C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B3DDFD0098CFFF0098CFFF0098CFFF0098CFFF0098CFFF00A8D6FE0096D0
      FE0096D0FE0098CFFF009FC1DB00000000000000000000000000000000000C82
      B4000C82B4000C82B4000C82B4000C86B8000C86B8000C89BC000C89BC000C89
      BC000D8CC0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000757682005D63AB00545EE5005461F6005462FA005462
      FA005462FA005462FA005462FA005967FC005C69FA007C86FC00ACB2FC00BFC4
      FC00B4BAFC00ACB2FC00A0A7FC00A0A7FC00A8AFFC00B4BAFC00BFC4FC00B4BA
      FC0097A0FC007580FC006471FB005462FA005462FA005462FA005462FA005462
      FA005462FA005461F600565EBB0061659A009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CBC6
      C000D3CEC900A7A19800B0A69A00AEA39700BBB4AB00BBB4AB00B3ACA300BBB4
      AB00A49B9100BCB6B100AEA7A000CDC8C300C2BBB300D3CEC900E1DDD900E5E1
      DC00DBDAD900E9E6E200E5E1DC00D0C7B900C8BFB100D0C7B900CAC3BB00C1B9
      AE00ACA08B00D3CEC90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A3B5
      C400B3DDFD0098CFFF0098CFFF00A3D8FE00A3D8FE00ACDBFE00A3D8FE00B6E0
      FE00A3D8FE009DD8FF00A3D0F100000000000000000000000000000000000000
      00001485B6000C82B4000C89BC000C86B8000C89BC000C89BC000D8CC0001C94
      C500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E7189005D63AB005460DE005360EA005462FA005462
      FA005462FA005462FA005462FA005C69FA00616EFC00858EFC00ACB2FC00B4BA
      FC00B4BAFC00ACB2FC009DA5FC009DA5FC00A0A7FC00ACB2FC00B4BAFC00B4BA
      FC00919AFC007E88FC006471FB005967FC005462FA005967FC005462FA005462
      FA005462FA005360EA00575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFCD
      C900E5E4E200D3CEC900BEB9B200A598860096897A0096897A00B0A69A00BCB6
      B100C5C0BA00D3CEC900CDC8C300D3CEC900BEB9B200CDC8C300E9E6E200ECE9
      E500E9E6E200E9E6E200E9E6E200C8BFB100AA9C8100B9AE9C00DBD4CB00E0D9
      CC00C1B9AE00DBD4CB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F9E
      B500B3DDFD00A8D6FE00A3D8FE00ACDBFE00ACDBFE00B3DDFD00B6E0FE00BBE2
      FE00BBE2FE00B6E0FE0092C7EC00000000000000000000000000000000000000
      00000000000075BAD6003BA0C8002394C3002394C30044A4CC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000707288005D63AB005460DE005461F6005462FA005462
      FA005462FA005967FC005C69FA006471FB006D79FC00858EFC00A4ABFC00B4BA
      FC00B4BAFC00ACB2FC009DA5FC0097A0FC00A0A7FC00A8AFFC00B4BAFC00ACB2
      FC0097A0FC00858EFC006D79FC006471FB005C69FA005462FA005967FC005462
      FA005462FA005360EA00575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000CFCD
      C900E9E6E200C2BBB300C1B9AE00A3998C00AEA7A000BBB4AB00C5C0BA00D3CE
      C900BBB4AB00CAC3BB00BBB4AB00CDC8C300CAC3BB00E1DDD900E9E6E200F2F0
      EE00F2F0EE00F0EEEB00EDEBE900E1DDD900CEC8BD00C8BFB100D2C8B600D0C7
      B900D4CBBD00D9D5D10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006898
      B800B6E0FE00ACDBFE00B3DDFD00B3DDFD00BBE2FE00BBE2FE00BBE2FE00C2E5
      FE00C7E8FE00C7E8FE009BCDF30024648A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000707288005D63AB005460DE005360EA005462FA005462
      FA005C69FA00616EFC006D79FC007C86FC00858EFC00919AFC00ACB2FC00B4BA
      FC00BFC4FC00ACB2FC00A0A7FC009DA5FC00A4ABFC00ACB2FC00B4BAFC00B4BA
      FC00A4ABFC00919AFC008892FB007580FC006975FC00616EFC005967FC005967
      FC005462FA005461F600565EBB006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D3CE
      C900F0EEEB00E1DDD900D9D5D100CAC3BB00B0A69A009D93890096897A00C2BB
      B300C5C0BA00D3CEC900D2CCC400DDD9D500CDC8C300E9E6E200F2F0EE00F8F6
      F400F5F4F300F5F4F300F5F4F300D4CBBD00C5BAA800D4CBBD00E9E6E200E5E0
      D600D0C7B900E5E1DC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E6D87004C89
      AD00BBE2FE00B6E0FE00BBE2FE00BBE2FE00C2E5FE00C2E5FE00CBE9FE00CBE9
      FE00CBE9FE00C0DEF3008DBEE0001B6A9500296C8E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000707288005D63AB005460DE005461F6005462FA005C69
      FA006975FC007E88FC008F98FC00A4ABFC00B4BAFC00C5C9FD00CDD1FD00D1D5
      FD00D1D5FD00C5C9FD00ACB2FC00A8AFFC00B4BAFC00C5C9FD00D1D5FD00D4D8
      FD00CDD1FD00C1C6FC00B4BAFC00A4ABFC008D96FC007C86FC006471FB005967
      FC005865F200525FE900575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4D3
      D200F5F4F300E1DDD900D8D0BF00AEA7A000ACA19200ACA19200B0A69A00C5C0
      BA00D3CEC900DDD9D500C8BFB100DDD9D500CDC8C300E9E6E200F5F4F300FAFA
      F900FAFAF900FAFAF900FAFAF900E5E0D600CBC2B200C4B8A200D9D1C300E9E5
      DD00E9E6E200E5E4E20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B6792001F6F
      9A00BBE2FE00BBE2FE00C2E5FE00C7E8FE00C7E8FE00CBE9FE00CBE9FE00A5CE
      E8005789AA0024648A001B67920024648A001B6A950000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000757682005D63AB005460DE005360EA005462FA006975
      FC007C86FC00919AFC00ACB2FC00C1C6FC00D1D5FD00DEE1FD00E6E8FD00E6E8
      FD00E0E2FD00CDD1FD00B4BAFC00B4BAFC00BFC4FC00CDD1FD00DEE1FD00E6E8
      FD00E6E8FD00DEE1FD00D1D5FD00C1C6FC00A4ABFC008D96FC007C86FC00616E
      FC005C69FA005461F600565EBB0061659A009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4D3
      D200FAFAF900E9E6E200E1DDD900D3CEC900BEB9B200B0A69A0096897A00A399
      8C00C8BFB100E5E1DC00E5E1DC00EDEBE900F2F0EE00F0EEEB00F5F4F300FAFA
      F900FAFAF900FAFAF900FAFAF900E5E0D600D9D1C300E0D9CC00E5E0D600E5E0
      D600E2DDD400E9E6E20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000136590001170
      9E008FC0E100CBE9FE00CBE9FE00CBE9FE00D2ECFD00C2E1F5006898B8001B5C
      84001B5C8400135E88002D6C95003D7DA2004187A70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E7189005D63AB005460DE005461F6005C69FA00717D
      FC008D96FC00A4ABFC00B4BAFC00BFC4FC00C9CDFD00D1D5FD00D9DDFD00D9DD
      FD00D1D5FD00C5C9FD00B4BAFC00B4BAFC00B4BAFC00C1C6FC00D1D5FD00D9DD
      FD00D4D8FD00D1D5FD00C9CDFD00BFC4FC00ACB2FC009DA5FC00858EFC006975
      FC00616DFA005360EA00575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBDA
      D900FAFAF900FAFAF900E9E6E200D0C7B900BEB9B200B4A89500BBB4AB00CDC8
      C300E1DDD900EDEBE900E5E1DC00D2CCC400B9AE9C00A4947A0089765400C8BF
      B100F0EEEB00FAFAF900FAFAF900F0ECE600D4CBBD00D2C8B600DBD4CB00F0EC
      E600F0EEEB00ECE9E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007A97A70011709E001174
      A3005AADCF00D2ECFD00D2ECFD00D2ECFD00B6D8EC00487FA100135A8400135A
      840013628D00236B9400367DA1004C89AD003A87AE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000707288005D63AB005460DE005461F6005C69F200717D
      FC00919AFC00A0A7FC00ACB2FC00B0B6FC00B4BAFC00BFC4FC00C5C9FD00C1C6
      FC00BBC0FC00B4BAFC00B4BAFC00ACB2FC00ACB2FC00ACB2FC00BFC4FC00C5C9
      FD00C1C6FC00BFC4FC00B4BAFC00ACB2FC00A8AFFC009DA5FC00858EFC00717D
      FC00616DFA005360EA00575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBDA
      D900FAFAF900FAFAF900F2F0EE00ECE9E500F0EEEB00F0EEEB00DDD9D500C5BA
      A800AFA085009B8A6900917C550089754C00917C5500917C5500695427006551
      2400826E4600B4A89500E9E5DD00FAFAF900FCFCFB00F0ECE600E5E0D600E9E5
      DD00E9E5DD00EDEBE90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F9EB5000E76A6001079
      A900368DB600CBE9FE00D2ECFD009FC1DB0033719600135A840013628D001365
      90001B6A9500307B9F003E88AE005698B800368DB60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000757682005D63AB005460DE005360EA005967FC006471
      FB00717DFC007C86FC007C86FC007E88FC00858EFC008892FB008892FB008F98
      FC00919AFC009DA5FC00B4BAFC00B4BAFC00A0A7FC00919AFC008F98FC008D96
      FC008D96FC00858EFC00858EFC007E88FC007C86FC007580FC006975FC00616D
      FA005C69F2005461F600565EBB0061659A009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DBDA
      D900FAFAF900FAFAF900E1DDD900C8BFB100A5987E00897654007D683F007D68
      3F0084714A00917C55009B886500A8967500B09E7D00B3A58B00AA9A7D008976
      54007D683F00826E460095815A00B2A28500E0D9CC00F8F6F400FAFAF900FAFA
      F900F8F6F400EDEBE90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E7AAB000C82
      B4001485B6009ED1EC0075A5C30024648A0013628D0013628D00136590001170
      9E002C7AA4003A87AE004B8DB5005D9FC1004493B70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006E7189005A61A9005460DE005360EA005462FA005462
      FA005967FC005462FA005967FC005462FA005C69FA005462FA005C69FA006471
      FB006D79FC00858EFC00ACB2FC00ACB2FC008F98FC007C86FC006975FC005C69
      FA005C69FA005C69FA005462FA005C69FA005462FA005C69FA005462FA005462
      FA005462FA005360EA00575FBE006066A8009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BDB8
      AD00B8AEA300AFA085009B8C730095815A00826E4600917C5500A2927400B6A8
      8C00C4B79E00C9BEAB00C9BEAB00C4B8A200B9AE9C00B6A88C00B09E7D00A292
      74009887660084714A0084714A009A855F00B09E7D00C0B39C00E0D9CC00F8F6
      F400FAFAF900F0EEEB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003C99C2000C82
      B4000C89BC0026729C001B67920013628D00136590001365900011709E001E79
      A4003483AB004493B70057A2C60057A2C6008ABCD80000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000757682005B61A200555FCE00525FE9005461F6005462
      FA005967FC005462FA005967FC005462FA005462FA005C69FA005967FC005C69
      FA00616EFC006D79FC00858EFC008892FB007580FC006471FB00616EFC005967
      FC005462FA005967FC005967FC005462FA005462FA005462FA005462FA005462
      FA005461F600525EE100575EB200606596009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B3AA9D00C4B9A500C0B39C00CBC2B200D9D1C300DBD4CB00DBD4CB00D9D1
      C300D2C8B600CAC0AD00C4B8A200C0B39C00B6A88C00B09E7D009E907C009A85
      5F008E7C5800826E4600786640006A562B0075613600A08F6E00C9BEAB00E0D9
      CC00F0ECE600E5E4E20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002B7F
      A80011709E0013628D0013628D001365900011709E0011709E001E79A4002984
      AF003790BA004F9DC2005CA6C9003C99C2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007576820061659A00535DC000525EDC005360EA005461
      F6005461F6005461F6005360EA005865F2005461F6005461F6005461F6005461
      F6005865F2005C69F2006571F2006571F200616DFA005C69F2005461F6005461
      F6005360EA005461F6005461F6005865F2005461F6005461F6005360EA005461
      F600545EE500515BD100565DAB0062668A009496A20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CAC3BB00CDC8C300E0D9CC00E2DDD400E0D9CC00D4CBBD00D2C8
      B600CAC0AD00C4B8A200B9AE9C00B6A88C00A8967500A29274009A855F008E7C
      5800826E460078664000695427005C471900543E0E004C3605005A4516008C7A
      5500CEC8BD00D4D3D20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006898
      B8001B6792001365900011709E0011709E001079A9001079A9001F81AF003790
      BA00439BC4005CA6C90044A4CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000898A9900757895006066A8005D63AB005A62BA005A62
      BA005A62BA005962C0005962C0005962C0005962C0005A62BA005962C0005962
      C0005A62BA006169C1006169C1006169C1005962C0006169C1005A62BA005962
      C0005962C0005A62BA005962C0005A62BA005A62BA005962C0005962C0005A62
      BA005A62BA005D63AB006368960076788C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CDC8C300C1B9AE00C4B9A500CBC2B200CAC0
      AD00C4B79E00BCB09800B6A88C00AA9A7D00A292740098876600917C55007D6D
      4D00715F3B006A562B005C471900533E11005A45160069593900877B6600A9A1
      9600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003483AB0011709E0011709E001079A9001079A9001F81AF002C8DBA003C99
      C200439BC40055ACD00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008888950070728800676A8E00636896006368
      960063689600636896006368960063689600636896006368960063689600646A
      A700636896006368960063689600636896006368960063689600646AA7006368
      960063689600646AA7006368960063689600646AA70063689600636896006368
      960063689600696B870070728800909196000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C5BAA800ACA0
      8B00B3A69200B2A28500AA9A7D00A08F6E0098876600897654007D6D4D00715F
      3B00736241007E705600A5988600BEB9B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000075AEC9001F81AF000E7AAB000C82B4001485B6002C93C10066B3
      D400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000999AA4009697A5009496A2009496
      A2009496A2009293A5009293A5009293A5009293A5009293A5009293A5009496
      A2009496A2009293A5009293A5009293A5009293A5009293A5009496A2009496
      A2009496A2009496A2008F91A1009293A5009496A2009496A2009496A2009496
      A2009496A2009496A20000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ACA08B0096886D00908166008B807500A5988600BBB2A3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000300000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000FFFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      FFFFFE03FFFFFFFFFFFFFFFFFFFFFCFFFFFF000000000000FFFFF000FFFFFFFF
      FFFFFFFFFFFFF83FFFFF000000000000FFFF80007FFFFFFFFFFFFFFFFFFFF01F
      FFFF000000000000FFFC00001FFFFFFFF0000007FFFFE00FFFFF000000000000
      FFE0000007FFFFFFE0000003FFFFC007FFFF000000000000FF00000003FFFFFF
      E0000003FFFF8003FFFF000000000000F800000000FFFFFFE0000007FFFF0001
      FFFF000000000000C0000000007FFFFFF0000007FFFC00007FFF000000000000
      80000000001FFFFFF000000FFF00000001FF00000000000000000000000FF000
      0000000FFC00000000FF000000000000800000000003E0000000007FFC000000
      007F000000000000E00000000001C000000003FFFC000000007F000000000000
      F80000000001E000000003FFFC000000007F000000000000FE0000000001E000
      000001FFFC000000007F000000000000FF800000000FE000000000FFFC000000
      007F000000000000FFC00000007FE0000000007FFC000000007F000000000000
      FFE0000001FFE0000000007FFC000000007F000000000000FFE0000003FFE000
      0000007FFC000000007F000000000000FFE0000003FFF0000000007FFC000000
      007F000000000000FFE0000003FFF0000000007FFC000000007F000000000000
      FFE0000003FFF8000000007FFC000000007F000000000000FFE0000003FFFF00
      000000FFFC000000007F000000000000FFE0000003FFFFF0008000FFFC000000
      007F000000000000FFE0000003FFFFFC078000FFFC000000007F000000000000
      FFE0000003FFFFFC078001FFFC000000007F000000000000FFE0000003FFFFF8
      078001FFFC000000007F000000000000FFE0000003FFFFF003C001FFFC000000
      007F000000000000FFE0000003FFFFF001C003FFFC000000007F000000000000
      FFE0000003FFFFF001E007FFFC000000007F000000000000FFE0000003FFFFE0
      01F00FFFFC000000007F000000000000FFE0000003FFFFE001F83FFFFC000000
      007F000000000000FFE0000003FFFFE000FFFFFFFC000000007F000000000000
      FFE0000003FFFFC0007FFFFFFC000000007F000000000000FFE0000003FFFFC0
      007FFFFFFC000000007F000000000000FFE0000003FFFFC0007FFFFFFC000000
      007F000000000000FFE0000003FFFF80007FFFFFFC000000007F000000000000
      FFE0000003FFFF80007FFFFFFC000000007F000000000000FFE0000003FFFFC0
      007FFFFFFC000000007F000000000000FFE0000003FFFFC0007FFFFFFC000000
      007F000000000000FFF0000003FFFFE000FFFFFFFC000000007F000000000000
      FFF8000003FFFFE001FFFFFFFC00000000FF000000000000FFFE00000FFFFFF0
      03FFFFFFFE00000000FF000000000000FFFFC000FFFFFFF80FFFFFFFFF000000
      03FF000000000000FFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object ZQ_VerCpb: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_VerCpbAfterScroll
    SQL.Strings = (
      'select ol.*, os.*, iva.nombre_tipo_iva, pro.nombre_provincia'
      'from optica_liquidacion ol'
      'left join optica_os os on ol.id_os = os.id_os'
      'left join tipo_iva iva on os.id_tipo_iva = iva.id_tipo_iva'
      'left join provincia pro on os.id_provincia = pro.id_provincia')
    Params = <>
    Left = 34
    Top = 244
    object ZQ_VerCpbID_OPTICA_LIQUIDACION: TIntegerField
      FieldName = 'ID_OPTICA_LIQUIDACION'
      DisplayFormat = '00000000'
    end
    object ZQ_VerCpbID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object ZQ_VerCpbFECHA_LIQUIDACION: TDateTimeField
      FieldName = 'FECHA_LIQUIDACION'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ZQ_VerCpbFECHA_ANULACION: TDateTimeField
      FieldName = 'FECHA_ANULACION'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ZQ_VerCpbDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 1000
    end
    object ZQ_VerCpbIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object ZQ_VerCpbESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
    object ZQ_VerCpbCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 100
    end
    object ZQ_VerCpbNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_VerCpbDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 100
    end
    object ZQ_VerCpbTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 100
    end
    object ZQ_VerCpbDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 1000
    end
    object ZQ_VerCpbBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_VerCpbCUIT_CUIL: TStringField
      FieldName = 'CUIT_CUIL'
      Size = 30
    end
    object ZQ_VerCpbLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 200
    end
    object ZQ_VerCpbCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
    end
    object ZQ_VerCpbEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object ZQ_VerCpbID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_VerCpbID_PROVINCIA: TIntegerField
      FieldName = 'ID_PROVINCIA'
    end
    object ZQ_VerCpbFACTURA_AUTOMATICA: TStringField
      FieldName = 'FACTURA_AUTOMATICA'
      Size = 1
    end
    object ZQ_VerCpbID_OS_1: TIntegerField
      FieldName = 'ID_OS_1'
      Required = True
    end
    object ZQ_VerCpbNOMBRE_TIPO_IVA: TStringField
      FieldName = 'NOMBRE_TIPO_IVA'
      Size = 50
    end
    object ZQ_VerCpbNOMBRE_PROVINCIA: TStringField
      FieldName = 'NOMBRE_PROVINCIA'
      Size = 50
    end
  end
  object DS_VerCpb: TDataSource
    DataSet = ZQ_VerCpb
    Left = 34
    Top = 292
  end
  object EKOrd_VerCpb: TEKOrdenarGrilla
    Grilla = DBGridListaCpb
    Filtros = <
      item
        TituloColumna = 'C'#243'digo'
        Visible = True
      end
      item
        TituloColumna = 'Fecha'
        Visible = True
      end
      item
        TituloColumna = 'Anulado'
        Visible = True
      end
      item
        TituloColumna = 'C'#243'd. OS'
        Visible = True
      end
      item
        TituloColumna = 'Obra Social'
        Visible = True
      end
      item
        TituloColumna = 'Tipo Iva'
        Visible = True
      end
      item
        TituloColumna = 'Cuit/Cuil'
        Visible = True
      end
      item
        TituloColumna = 'Total Liq.'
        Visible = True
      end
      item
        TituloColumna = 'Id OS'
        Visible = True
      end>
    NombreGuardar = 'ABM_OPLiq_VerCpb'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 34
    Top = 344
  end
  object EKListadoEntidad: TEKListadoSQL
    Modelo = DM.EKModelo
    SQL.Strings = (
      'select os.id_os, os.nombre as busqueda'
      'from optica_os os'
      'where os.baja = '#39'N'#39)
    CampoBuscar = 'busqueda'
    CampoClave = 'id_os'
    TituloVentana = 'Buscar'
    TituloBuscar = 'Campo Busqueda:'
    TituloBuscar2 = 'Campo Busqueda 2:'
    ColorGrilla = 14606012
    AnchoClave = 80
    AnchoBuscar1 = 500
    AnchoBuscar2 = 500
    Left = 469
    Top = 424
  end
  object ZQ_ObraSocial: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select os.id_os as id, os.*, iva.nombre_tipo_iva,'
      '       iva.abreviatura as cod_iva'
      'from optica_os os'
      'left join tipo_iva iva on (os.id_tipo_iva = iva.id_tipo_iva)'
      'where os.id_os = :id_os')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_os'
        ParamType = ptUnknown
      end>
    Left = 469
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_os'
        ParamType = ptUnknown
      end>
    object ZQ_ObraSocialID: TIntegerField
      FieldName = 'ID'
    end
    object ZQ_ObraSocialID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object ZQ_ObraSocialCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 100
    end
    object ZQ_ObraSocialNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
    object ZQ_ObraSocialDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 100
    end
    object ZQ_ObraSocialTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 100
    end
    object ZQ_ObraSocialDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 1000
    end
    object ZQ_ObraSocialBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ObraSocialCUIT_CUIL: TStringField
      FieldName = 'CUIT_CUIL'
      Size = 30
    end
    object ZQ_ObraSocialLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 200
    end
    object ZQ_ObraSocialCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
    end
    object ZQ_ObraSocialEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object ZQ_ObraSocialID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_ObraSocialNOMBRE_TIPO_IVA: TStringField
      FieldName = 'NOMBRE_TIPO_IVA'
      Size = 50
    end
    object ZQ_ObraSocialCOD_IVA: TStringField
      FieldName = 'COD_IVA'
      Size = 10
    end
  end
  object DS_ObraSocial: TDataSource
    DataSet = ZQ_ObraSocial
    Left = 469
    Top = 368
  end
  object ZQ_BuscarMail: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select e.email'
      'from optica_os e')
    Params = <>
    Left = 469
    Top = 249
    object ZQ_BuscarMailEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
  end
  object EKBuscar: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'C'#243'digo'
        Campo = 'id_optica_liquidacion'
        Tabla = 'optica_liquidacion'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Fecha'
        Campo = 'fecha_liquidacion'
        Tabla = 'optica_liquidacion'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Obra Social'
        Campo = 'Nombre'
        Tabla = 'optica_os'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Importe'
        Campo = 'importe'
        Tabla = 'optica_liquidacion'
        TipoCampo = EK_Numero
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end
      item
        Titulo = 'Estado'
        Campo = 'estado'
        Tabla = 'optica_liquidacion'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboValoresVer.Strings = (
          'SIN CONFIRMAR'
          'CONFIRMADO'
          'ANULADO')
        TipoComboValoresReales.Strings = (
          '0'
          '1'
          '2')
        TipoComboAncho = 200
        ItemIndex = -1
        VaciarValorDespues = False
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_VerCpb
    SQL.Strings = (
      'select ol.*, os.*, iva.nombre_tipo_iva, pro.nombre_provincia'
      'from optica_liquidacion ol'
      'left join optica_os os on ol.id_os = os.id_os'
      'left join tipo_iva iva on os.id_tipo_iva = iva.id_tipo_iva'
      'left join provincia pro on os.id_provincia = pro.id_provincia'
      'order by ol.fecha_liquidacion desc, ol.id_optica_liquidacion')
    SQL_Select.Strings = (
      'select ol.*, os.*, iva.nombre_tipo_iva, pro.nombre_provincia')
    SQL_From.Strings = (
      'from optica_liquidacion ol'
      'left join optica_os os on ol.id_os = os.id_os'
      'left join tipo_iva iva on os.id_tipo_iva = iva.id_tipo_iva'
      'left join provincia pro on os.id_provincia = pro.id_provincia')
    SQL_Orden.Strings = (
      'order by ol.fecha_liquidacion desc, ol.id_optica_liquidacion')
    UsarWhereOriginal = EK_Sin_Where
    Left = 37
    Top = 400
  end
  object EKVistaPrevia: TEKVistaPreviaQR
    Reporte = RepListado
    ShowModal = False
    Left = 125
    Top = 248
  end
  object Popup_Factura: TPopupMenu
    Images = FPrincipal.Iconos_Menu_16
    Left = 600
    Top = 295
    object PopItemFactura_Agregar: TMenuItem
      Caption = 'Agregar Factura (F3)'
      ImageIndex = 14
      OnClick = PopItemFactura_AgregarClick
    end
    object PopItemFactura_Quitar: TMenuItem
      Caption = 'Quitar Factura'
      ImageIndex = 15
      OnClick = PopItemFactura_QuitarClick
    end
  end
  object ZQ_Liquidacion: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select ol.*'
      'from optica_liquidacion ol'
      'where ol.id_optica_liquidacion = :id_liquidacion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_liquidacion'
        ParamType = ptUnknown
      end>
    Left = 200
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_liquidacion'
        ParamType = ptUnknown
      end>
    object ZQ_LiquidacionID_OPTICA_LIQUIDACION: TIntegerField
      FieldName = 'ID_OPTICA_LIQUIDACION'
    end
    object ZQ_LiquidacionID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object ZQ_LiquidacionFECHA_LIQUIDACION: TDateTimeField
      FieldName = 'FECHA_LIQUIDACION'
    end
    object ZQ_LiquidacionFECHA_ANULACION: TDateTimeField
      FieldName = 'FECHA_ANULACION'
    end
    object ZQ_LiquidacionDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 1000
    end
    object ZQ_LiquidacionIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
    object ZQ_LiquidacionESTADO: TIntegerField
      FieldName = 'ESTADO'
    end
  end
  object DS_Liquidacion: TDataSource
    DataSet = ZQ_Liquidacion
    Left = 200
    Top = 452
  end
  object ZS_Liquidacion: TZSequence
    Connection = DM.Conexion
    SequenceName = 'GEN_OPTICA_LIQUIDACION_ID'
    Left = 200
    Top = 348
  end
  object CD_LiqFactura: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 396
    object CD_LiqFacturaid_comprobante: TIntegerField
      FieldName = 'id_comprobante'
    end
    object CD_LiqFacturapunto_venta: TIntegerField
      FieldName = 'punto_venta'
      DisplayFormat = '0000'
    end
    object CD_LiqFacturanumero_cpb: TIntegerField
      FieldName = 'numero_cpb'
      DisplayFormat = '00000000'
    end
    object CD_LiqFacturafecha: TDateTimeField
      FieldName = 'fecha'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object CD_LiqFacturaimporte: TFloatField
      FieldName = 'importe'
      currency = True
    end
    object CD_LiqFacturaid_liquidacion: TIntegerField
      FieldName = 'id_liquidacion'
    end
    object CD_LiqFacturacodigo: TStringField
      FieldName = 'codigo'
      Size = 50
    end
    object CD_LiqFacturaid_liq_factura: TIntegerField
      FieldName = 'id_liq_factura'
    end
  end
  object DS_LiqFactura: TDataSource
    DataSet = CD_LiqFactura
    Left = 288
    Top = 452
  end
  object ZQ_LiqFacturas: TZQuery
    Connection = DM.Conexion
    UpdateObject = ZU_LiqFacturas
    SQL.Strings = (
      
        'select lf.*, cpb.id_comprobante, cpb.id_sucursal, cpb.codigo, cp' +
        'b.numero_cpb, cpb.punto_venta,'
      '        cpb.fecha, cpb.importe_total, cpb.id_obra_social'
      'from optica_liquidacion_factura lf'
      
        'left join comprobante cpb on lf.id_comprobante = cpb.id_comproba' +
        'nte'
      'where lf.id_optica_liquidacion = :id_liquidacion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_liquidacion'
        ParamType = ptUnknown
      end>
    Left = 117
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_liquidacion'
        ParamType = ptUnknown
      end>
    object ZQ_LiqFacturasID_OPTICA_LIQUIDACION_FACTURA: TIntegerField
      FieldName = 'ID_OPTICA_LIQUIDACION_FACTURA'
    end
    object ZQ_LiqFacturasID_OPTICA_LIQUIDACION: TIntegerField
      FieldName = 'ID_OPTICA_LIQUIDACION'
    end
    object ZQ_LiqFacturasID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
    object ZQ_LiqFacturasDETALLE: TStringField
      FieldName = 'DETALLE'
      Size = 100
    end
    object ZQ_LiqFacturasID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_LiqFacturasCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 50
    end
    object ZQ_LiqFacturasNUMERO_CPB: TIntegerField
      FieldName = 'NUMERO_CPB'
      DisplayFormat = '00000000'
    end
    object ZQ_LiqFacturasPUNTO_VENTA: TIntegerField
      FieldName = 'PUNTO_VENTA'
      DisplayFormat = '0000'
    end
    object ZQ_LiqFacturasFECHA: TDateTimeField
      FieldName = 'FECHA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ZQ_LiqFacturasIMPORTE_TOTAL: TFloatField
      FieldName = 'IMPORTE_TOTAL'
      currency = True
    end
    object ZQ_LiqFacturasID_OBRA_SOCIAL: TIntegerField
      FieldName = 'ID_OBRA_SOCIAL'
    end
  end
  object EKDbSuma: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'importe'
      end
      item
        Operacion = goCount
        NombreCampo = 'id_comprobante'
      end>
    DataSet = CD_LiqFactura
    SumListChanged = EKDbSumaSumListChanged
    Left = 301
    Top = 160
  end
  object ZU_LiqFacturas: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM OPTICA_LIQUIDACION_FACTURA'
      'WHERE'
      
        '  OPTICA_LIQUIDACION_FACTURA.ID_OPTICA_LIQUIDACION_FACTURA = :OL' +
        'D_ID_OPTICA_LIQUIDACION_FACTURA')
    InsertSQL.Strings = (
      'INSERT INTO OPTICA_LIQUIDACION_FACTURA'
      '  (ID_OPTICA_LIQUIDACION_FACTURA, ID_OPTICA_LIQUIDACION, '
      'ID_COMPROBANTE, '
      '   DETALLE)'
      'VALUES'
      '  (:ID_OPTICA_LIQUIDACION_FACTURA, :ID_OPTICA_LIQUIDACION, '
      ':ID_COMPROBANTE, '
      '   :DETALLE)')
    ModifySQL.Strings = (
      'UPDATE OPTICA_LIQUIDACION_FACTURA SET'
      '  ID_OPTICA_LIQUIDACION_FACTURA = '
      ':ID_OPTICA_LIQUIDACION_FACTURA,'
      '  ID_OPTICA_LIQUIDACION = :ID_OPTICA_LIQUIDACION,'
      '  ID_COMPROBANTE = :ID_COMPROBANTE,'
      '  DETALLE = :DETALLE'
      'WHERE'
      '  '
      'OPTICA_LIQUIDACION_FACTURA.ID_OPTICA_LIQUIDACION_FACTUR'
      'A = :OLD_ID_OPTICA_LIQUIDACION_FACTURA')
    UseSequenceFieldForRefreshSQL = False
    Left = 120
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_OPTICA_LIQUIDACION_FACTURA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_OPTICA_LIQUIDACION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_COMPROBANTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DETALLE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID_OPTICA_LIQUIDACION_FACTURA'
        ParamType = ptUnknown
      end>
  end
  object DS_VerLiqFacturas: TDataSource
    DataSet = ZQ_LiqFacturas
    Left = 109
    Top = 456
  end
  object ZS_LiqFactura: TZSequence
    Connection = DM.Conexion
    SequenceName = 'GEN_OPTICA_LIQ_FACTURA_ID'
    Left = 125
    Top = 296
  end
  object EKOrd_VerCpb_Facturas: TEKOrdenarGrilla
    Grilla = DBGridFacturas
    Filtros = <
      item
        TituloColumna = 'Fecha'
        Visible = True
      end
      item
        TituloColumna = 'C'#243'digo'
        Visible = True
      end
      item
        TituloColumna = 'PV'
        Visible = True
      end
      item
        TituloColumna = 'N'#250'mero'
        Visible = True
      end
      item
        TituloColumna = 'Importe'
        Visible = True
      end
      item
        TituloColumna = 'Detalle'
        Visible = True
      end
      item
        TituloColumna = 'ID O.L.F.'
        Visible = True
      end
      item
        TituloColumna = 'ID Cpb'
        Visible = True
      end>
    NombreGuardar = 'ABM_OPLiq_VerCpbFacturas'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 472
    Top = 192
  end
end
