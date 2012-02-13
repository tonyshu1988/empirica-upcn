object FEstadisticaDisponibilidades: TFEstadisticaDisponibilidades
  Left = 248
  Top = 125
  Width = 994
  Height = 613
  Caption = 'Estadistica Disponibilidades'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelContenedor: TPanel
    Left = 0
    Top = 0
    Width = 986
    Height = 534
    Align = alClient
    Caption = 'PanelContenedor'
    TabOrder = 0
    object PageControl: TPageControl
      Left = 1
      Top = 1
      Width = 984
      Height = 532
      ActivePage = TabParteDiario
      Align = alClient
      TabOrder = 0
      object TabSaldosCuentas: TTabSheet
        Caption = 'Saldo Cuentas'
        object RepSaldo: TQuickRep
          Tag = 99
          Left = 70
          Top = 81
          Width = 794
          Height = 1123
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = ZP_SaldosCuentas
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
              Left = 284
              Top = 47
              Width = 150
              Height = 19
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                50.270833333333330000
                751.416666666666700000
                124.354166666666700000
                396.875000000000000000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'SALDO CUENTAS'
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
            object RepSaldo_Subtitulo: TQRLabel
              Left = -58
              Top = 26
              Width = 131
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                775.229166666666700000
                68.791666666666670000
                346.604166666666700000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'RepSaldo_Subtitulo'
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
            object RepSaldo_Titulo: TQRLabel
              Left = -64
              Top = 2
              Width = 144
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                759.354166666666700000
                5.291666666666667000
                381.000000000000000000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'RepSaldo_Titulo'
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
              Width = 70
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
                185.208333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_SaldosCuentas
              DataField = 'CODIGO'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText1: TQRDBText
              Left = 78
              Top = 0
              Width = 333
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                206.375000000000000000
                0.000000000000000000
                881.062500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_SaldosCuentas
              DataField = 'NOMBRE_CUENTA'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText2: TQRDBText
              Left = 600
              Top = 0
              Width = 114
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1587.500000000000000000
                0.000000000000000000
                301.625000000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_SaldosCuentas
              DataField = 'IMPORTE'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText3: TQRDBText
              Left = 415
              Top = 0
              Width = 181
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1098.020833333333000000
                0.000000000000000000
                478.895833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_SaldosCuentas
              DataField = 'NRO_CTA_BANCO'
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
            object QRlblRepSaldo_PieDePagina: TQRLabel
              Left = 4
              Top = 3
              Width = 129
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
                341.312500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'QRlblRepSaldo_PieDePagina'
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
            object QRlblRepSaldo_SaldoTotal: TQRLabel
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
            object QRlblRepSaldo_CritBusqueda: TQRLabel
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
              Caption = 'QRlblRepSaldo_CritBusqueda'
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
              Width = 45
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
            object QRLabel30: TQRLabel
              Left = 78
              Top = 2
              Width = 46
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                206.375000000000000000
                5.291666666666667000
                121.708333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
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
            object QRLabel1: TQRLabel
              Left = 600
              Top = 2
              Width = 114
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1587.500000000000000000
                5.291666666666667000
                301.625000000000000000)
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
            object QRLabel2: TQRLabel
              Left = 415
              Top = 2
              Width = 77
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1098.020833333333000000
                5.291666666666667000
                203.729166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Nro. Cuenta'
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
        object DBGridSaldoCuentas: TDBGrid
          Left = 0
          Top = 38
          Width = 976
          Height = 444
          Align = alClient
          Color = 14606012
          DataSource = DS_SaldosCuentas
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
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Width = 135
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE_CUENTA'
              Title.Alignment = taCenter
              Title.Caption = 'Cuenta'
              Width = 432
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NRO_CTA_BANCO'
              Title.Alignment = taCenter
              Title.Caption = 'Nro. Cuenta'
              Width = 163
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE'
              Title.Alignment = taCenter
              Title.Caption = 'Saldo'
              Width = 136
              Visible = True
            end>
        end
        object PanelTituloSaldo: TPanel
          Left = 0
          Top = 0
          Width = 976
          Height = 38
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 4
          TabOrder = 1
          object lblSaldo_Encabezado2: TLabel
            Left = 4
            Top = 17
            Width = 968
            Height = 13
            Align = alTop
            Caption = 'lblSaldo_Encabezado2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object lblSaldo_Encabezado1: TLabel
            Left = 4
            Top = 4
            Width = 968
            Height = 13
            Align = alTop
            Caption = 'lblSaldo_Encabezado1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
        object PanelResumenSaldo: TPanel
          Left = 0
          Top = 482
          Width = 976
          Height = 22
          Align = alBottom
          BorderWidth = 4
          TabOrder = 2
          object lblSaldo_Total: TLabel
            Left = 5
            Top = 5
            Width = 966
            Height = 13
            Align = alTop
            Alignment = taRightJustify
            Caption = 'lblSaldo_Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
      end
      object TabParteDiario: TTabSheet
        Caption = 'Parte Diario'
        ImageIndex = 3
        object RepParteDiario: TQuickRep
          Tag = 99
          Left = 169
          Top = 13
          Width = 794
          Height = 1123
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
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
          object QRBand14: TQRBand
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
            object RepParteDiario_Titulo: TQRLabel
              Left = 260
              Top = 2
              Width = 196
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                687.916666666666700000
                5.291666666666667000
                518.583333333333400000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'RepParteDiario_Titulo'
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
            object RepParteDiario_Subtitulo: TQRLabel
              Left = 273
              Top = 26
              Width = 171
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                722.312500000000000000
                68.791666666666670000
                452.437500000000000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'RepParteDiario_Subtitulo'
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
            object QRLabel68: TQRLabel
              Left = 307
              Top = 47
              Width = 102
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                812.270833333333400000
                124.354166666666700000
                269.875000000000000000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'PARTE DIARIO'
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
            object QRDBLogo2: TQRDBImage
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
          end
          object QRSubDetail1: TQRSubDetail
            Tag = 99
            Left = 38
            Top = 285
            Width = 718
            Height = 18
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
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
            Master = RepParteDiario
            DataSet = ZP_Estadistica_IE_Medios
            PrintBefore = False
            PrintIfEmpty = True
            object QRDBText33: TQRDBText
              Left = 5
              Top = 1
              Width = 300
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                13.229166666666670000
                2.645833333333333000
                793.750000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_Estadistica_IE_Medios
              DataField = 'DESCRIPCION'
              Font.Charset = DEFAULT_CHARSET
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
            object QRDBText4: TQRDBText
              Left = 449
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
                1187.979166666667000000
                2.645833333333333000
                343.958333333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_Estadistica_IE_Medios
              DataField = 'TOTAL_EGRESO'
              Font.Charset = DEFAULT_CHARSET
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
            object QRDBText5: TQRDBText
              Left = 312
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
                825.500000000000000000
                2.645833333333333000
                343.958333333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_Estadistica_IE_Medios
              DataField = 'TOTAL_INGRESO'
              Font.Charset = DEFAULT_CHARSET
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
            object QRDBText24: TQRDBText
              Left = 585
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
                1547.812500000000000000
                2.645833333333333000
                343.958333333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_Estadistica_IE_Medios
              DataField = 'TOTAL_TRANSFERENCIA'
              Font.Charset = DEFAULT_CHARSET
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
          end
          object QRSubDetail2: TQRSubDetail
            Tag = 99
            Left = 38
            Top = 303
            Width = 718
            Height = 29
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
              76.729166666666670000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            Master = RepParteDiario
            PrintBefore = False
            PrintIfEmpty = True
            object QRLblPD_TotalIngreso: TQRLabel
              Left = 312
              Top = 1
              Width = 130
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                825.500000000000000000
                2.645833333333333000
                343.958333333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'QRLblPD_TotalIngreso'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRLblPD_TotalEgreso: TQRLabel
              Left = 449
              Top = 1
              Width = 130
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1187.979166666667000000
                2.645833333333333000
                343.958333333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'QRLblPD_TotalEgreso'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRLblPD_TotalTransfer: TQRLabel
              Left = 585
              Top = 1
              Width = 130
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1547.812500000000000000
                2.645833333333333000
                343.958333333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'QRLblPD_TotalTransfer'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
          end
          object QRSubDetail3: TQRSubDetail
            Tag = 99
            Left = 38
            Top = 349
            Width = 718
            Height = 18
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
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
            Master = RepParteDiario
            DataSet = ZP_PD_SaldoCuentas
            PrintBefore = False
            PrintIfEmpty = True
            object QRDBText8: TQRDBText
              Left = 5
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
                13.229166666666670000
                2.645833333333333000
                201.083333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_PD_SaldoCuentas
              DataField = 'CODIGO'
              Font.Charset = DEFAULT_CHARSET
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
            object QRDBText9: TQRDBText
              Left = 83
              Top = 1
              Width = 310
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
                820.208333333333500000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_PD_SaldoCuentas
              DataField = 'NOMBRE_CUENTA'
              Font.Charset = DEFAULT_CHARSET
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
              Left = 552
              Top = 1
              Width = 161
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1460.500000000000000000
                2.645833333333333000
                425.979166666666700000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_PD_SaldoCuentas
              DataField = 'IMPORTE'
              Font.Charset = DEFAULT_CHARSET
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
            object QRDBText6: TQRDBText
              Left = 397
              Top = 1
              Width = 151
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1050.395833333333000000
                2.645833333333333000
                399.520833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_PD_SaldoCuentas
              DataField = 'NRO_CTA_BANCO'
              Font.Charset = DEFAULT_CHARSET
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
          end
          object QRBand1: TQRBand
            Tag = 99
            Left = 38
            Top = 268
            Width = 718
            Height = 17
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
              44.979166666666670000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbTitle
            object QRLabel6: TQRLabel
              Left = 382
              Top = 0
              Width = 59
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1010.708333333333000000
                0.000000000000000000
                156.104166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Ingresos'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRLabel9: TQRLabel
              Left = 4
              Top = 0
              Width = 40
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                10.583333333333330000
                0.000000000000000000
                105.833333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Medio'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRLabel3: TQRLabel
              Left = 525
              Top = 0
              Width = 53
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1389.062500000000000000
                0.000000000000000000
                140.229166666666700000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Egresos'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRLabel19: TQRLabel
              Left = 595
              Top = 0
              Width = 120
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1574.270833333333000000
                0.000000000000000000
                317.500000000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Transf. e/Cuentas'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
          end
          object ChildBand1: TQRChildBand
            Tag = 99
            Left = 38
            Top = 332
            Width = 718
            Height = 17
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
              44.979166666666670000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = QRSubDetail2
            PrintOrder = cboAfterParent
            object QRLabel5: TQRLabel
              Left = 5
              Top = 0
              Width = 46
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                13.229166666666670000
                0.000000000000000000
                121.708333333333400000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Codigo'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRLabel10: TQRLabel
              Left = 84
              Top = 0
              Width = 47
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                222.250000000000000000
                0.000000000000000000
                124.354166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Cuenta'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRLabel11: TQRLabel
              Left = 675
              Top = 0
              Width = 38
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1785.937500000000000000
                0.000000000000000000
                100.541666666666700000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Saldo'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRLabel7: TQRLabel
              Left = 397
              Top = 0
              Width = 79
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1050.395833333333000000
                0.000000000000000000
                209.020833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Nro. Cuenta'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
          end
          object QRSubDetail4: TQRSubDetail
            Tag = 99
            Left = 38
            Top = 367
            Width = 718
            Height = 30
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
              79.375000000000000000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            Master = RepParteDiario
            PrintBefore = False
            PrintIfEmpty = True
            object QRLabelImporteSaldo: TQRLabel
              Left = 573
              Top = 3
              Width = 142
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1516.062500000000000000
                7.937500000000000000
                375.708333333333400000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'QRLabelImporteSaldo'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
          end
          object ChildBand2: TQRChildBand
            Tag = 99
            Left = 38
            Top = 110
            Width = 718
            Height = 21
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
              55.562500000000000000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = QRBand14
            PrintOrder = cboAfterParent
            object QRLabelEncabezadoParteDiario: TQRLabel
              Left = 4
              Top = 2
              Width = 206
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                10.583333333333330000
                5.291666666666667000
                545.041666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'QRLabelEncabezadoParteDiario'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
            object QRLabelSucursalParteDiario: TQRLabel
              Left = 532
              Top = 2
              Width = 183
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1407.583333333333000000
                5.291666666666667000
                484.187500000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'QRLabelSucursalParteDiario'
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
          end
          object ChildBand3: TQRChildBand
            Tag = 99
            Left = 38
            Top = 131
            Width = 718
            Height = 137
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
              362.479166666666700000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = ChildBand2
            PrintOrder = cboAfterParent
            object QRShape1: TQRShape
              Left = 48
              Top = 21
              Width = 625
              Height = 69
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                182.562500000000000000
                127.000000000000000000
                55.562500000000000000
                1653.645833333333000000)
              Shape = qrsTopAndBottom
              VertAdjust = 0
            end
            object QRDBText11: TQRDBText
              Left = 134
              Top = 6
              Width = 241
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                354.541666666666700000
                15.875000000000000000
                637.645833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_estadistica_Parte_Diario
              DataField = 'SALDO_INICIAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 8
            end
            object QRLabel4: TQRLabel
              Left = 44
              Top = 5
              Width = 88
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                116.416666666666700000
                13.229166666666670000
                232.833333333333400000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Saldo Inicial:'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRDBText12: TQRDBText
              Left = 134
              Top = 92
              Width = 241
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                354.541666666666700000
                243.416666666666700000
                637.645833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_estadistica_Parte_Diario
              DataField = 'SALDO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 8
            end
            object QRLabel12: TQRLabel
              Left = 53
              Top = 91
              Width = 79
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                140.229166666666700000
                240.770833333333300000
                209.020833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Saldo Final:'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRDBText13: TQRDBText
              Left = 174
              Top = 28
              Width = 170
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                460.375000000000000000
                74.083333333333330000
                449.791666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_estadistica_Parte_Diario
              DataField = 'TOTAL_INGRESO'
              Font.Charset = DEFAULT_CHARSET
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
            object QRLabel13: TQRLabel
              Left = 108
              Top = 27
              Width = 64
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                285.750000000000000000
                71.437500000000000000
                169.333333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Ingresos:'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRDBText14: TQRDBText
              Left = 501
              Top = 28
              Width = 170
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1325.562500000000000000
                74.083333333333330000
                449.791666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_estadistica_Parte_Diario
              DataField = 'TOTAL_CTA_CTE_CLIENTE'
              Font.Charset = DEFAULT_CHARSET
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
            object QRLabel14: TQRLabel
              Left = 386
              Top = 27
              Width = 112
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                1021.291666666667000000
                71.437500000000000000
                296.333333333333400000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Cta. Cte. Cliente:'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRLabel16: TQRLabel
              Left = 28
              Top = 115
              Width = 200
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                74.083333333333340000
                304.270833333333400000
                529.166666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Transferencias entre Cuentas:'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRDBText23: TQRDBText
              Left = 230
              Top = 116
              Width = 170
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                608.541666666666700000
                306.916666666666700000
                449.791666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_estadistica_Parte_Diario
              DataField = 'TOTAL_TRANSFERENCIA'
              Font.Charset = DEFAULT_CHARSET
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
            object QRLabel20: TQRLabel
              Left = 114
              Top = 48
              Width = 58
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                301.625000000000000000
                127.000000000000000000
                153.458333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Egresos:'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRDBText25: TQRDBText
              Left = 174
              Top = 49
              Width = 170
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                460.375000000000000000
                129.645833333333300000
                449.791666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_estadistica_Parte_Diario
              DataField = 'TOTAL_EGRESO'
              Font.Charset = DEFAULT_CHARSET
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
            object QRLabel21: TQRLabel
              Left = 363
              Top = 48
              Width = 135
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                960.437500000000000000
                127.000000000000000000
                357.187500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Cta. Cte. Proveedor:'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRDBText26: TQRDBText
              Left = 501
              Top = 49
              Width = 170
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1325.562500000000000000
                129.645833333333300000
                449.791666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_estadistica_Parte_Diario
              DataField = 'TOTAL_CTA_CTE_PROVEEDOR'
              Font.Charset = DEFAULT_CHARSET
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
            object QRLabel32: TQRLabel
              Left = 76
              Top = 70
              Width = 96
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                201.083333333333300000
                185.208333333333300000
                254.000000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Notas Credito:'
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 9
            end
            object QRDBText27: TQRDBText
              Left = 174
              Top = 71
              Width = 170
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                460.375000000000000000
                187.854166666666700000
                449.791666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_estadistica_Parte_Diario
              DataField = 'TOTAL_NOTA_CREDITO'
              Font.Charset = DEFAULT_CHARSET
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
          end
          object PageFooterBand1: TQRBand
            Tag = 99
            Left = 38
            Top = 397
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
            object QRLabel15: TQRLabel
              Left = 626
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
                1656.291666666667000000
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
            object QRSysData3: TQRSysData
              Left = 668
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
                1767.416666666667000000
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
            object QRlblRepParteDiario_PieDePagina: TQRLabel
              Left = 4
              Top = 3
              Width = 154
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
                407.458333333333400000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'QRlblRepParteDiario_PieDePagina'
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
        end
        object panel_cerrar: TPanel
          Left = 0
          Top = 0
          Width = 976
          Height = 504
          Align = alClient
          TabOrder = 0
          object panelPD_Resumen: TPanel
            Left = 1
            Top = 481
            Width = 974
            Height = 22
            Align = alBottom
            BorderWidth = 4
            TabOrder = 0
            object lblSaldo_TotalParteDiario: TLabel
              Left = 5
              Top = 5
              Width = 964
              Height = 13
              Align = alTop
              Alignment = taRightJustify
              Caption = 'lblSaldo_TotalParteDiario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
          end
          object panelPD_InfoBusqueda: TPanel
            Left = 1
            Top = 1
            Width = 974
            Height = 38
            Align = alTop
            BevelOuter = bvNone
            BorderWidth = 4
            TabOrder = 1
            object lblSucursal: TLabel
              Left = 4
              Top = 17
              Width = 966
              Height = 13
              Align = alTop
              Caption = 'lblSucursal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object lblEncabezadoParteDiario: TLabel
              Left = 4
              Top = 4
              Width = 966
              Height = 13
              Align = alTop
              Caption = 'lblEncabezadoParteDiario'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
          end
          object Panel8: TPanel
            Left = 1
            Top = 39
            Width = 974
            Height = 234
            Align = alTop
            BevelOuter = bvNone
            BorderWidth = 3
            Caption = 'Panel8'
            TabOrder = 2
            object Panel10: TPanel
              Left = 3
              Top = 3
              Width = 349
              Height = 228
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label1: TLabel
                Left = 0
                Top = 0
                Width = 349
                Height = 13
                Align = alTop
                Caption = 'RESUMEN'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object GroupBox3: TGroupBox
                Left = 3
                Top = 13
                Width = 335
                Height = 208
                Ctl3D = False
                ParentCtl3D = False
                TabOrder = 0
                object Label15: TLabel
                  Left = 13
                  Top = 16
                  Width = 87
                  Height = 14
                  Caption = 'Saldo Inicial:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBText9: TDBText
                  Left = 158
                  Top = 13
                  Width = 165
                  Height = 17
                  Alignment = taRightJustify
                  DataField = 'SALDO_INICIAL'
                  DataSource = DS_estadistica_Parte_Diario
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label7: TLabel
                  Left = 12
                  Top = 40
                  Width = 61
                  Height = 14
                  Caption = 'Ingresos:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                end
                object DBText10: TDBText
                  Left = 158
                  Top = 37
                  Width = 165
                  Height = 17
                  Alignment = taRightJustify
                  DataField = 'TOTAL_INGRESO'
                  DataSource = DS_estadistica_Parte_Diario
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 5746176
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label8: TLabel
                  Left = 12
                  Top = 63
                  Width = 109
                  Height = 14
                  Caption = 'Cta. Cte. Cliente:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                end
                object DBText11: TDBText
                  Left = 158
                  Top = 60
                  Width = 165
                  Height = 17
                  Alignment = taRightJustify
                  DataField = 'TOTAL_CTA_CTE_CLIENTE'
                  DataSource = DS_estadistica_Parte_Diario
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 5746176
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBText19: TDBText
                  Left = 158
                  Top = 153
                  Width = 165
                  Height = 17
                  Alignment = taRightJustify
                  DataField = 'SALDO'
                  DataSource = DS_estadistica_Parte_Diario
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label16: TLabel
                  Left = 13
                  Top = 156
                  Width = 78
                  Height = 14
                  Caption = 'Saldo Final:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Shape1: TShape
                  Left = 5
                  Top = 151
                  Width = 324
                  Height = 1
                end
                object Label2: TLabel
                  Left = 12
                  Top = 86
                  Width = 51
                  Height = 14
                  Caption = 'Egresos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                end
                object DBText1: TDBText
                  Left = 158
                  Top = 83
                  Width = 165
                  Height = 17
                  Alignment = taRightJustify
                  DataField = 'TOTAL_EGRESO'
                  DataSource = DS_estadistica_Parte_Diario
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label3: TLabel
                  Left = 12
                  Top = 109
                  Width = 125
                  Height = 14
                  Caption = 'Cta. Cte. Proveedor'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                end
                object DBText2: TDBText
                  Left = 157
                  Top = 106
                  Width = 165
                  Height = 17
                  Alignment = taRightJustify
                  DataField = 'TOTAL_CTA_CTE_PROVEEDOR'
                  DataSource = DS_estadistica_Parte_Diario
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 12
                  Top = 132
                  Width = 89
                  Height = 14
                  Caption = 'Nota  Credito:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                end
                object DBText3: TDBText
                  Left = 157
                  Top = 129
                  Width = 165
                  Height = 17
                  Alignment = taRightJustify
                  DataField = 'TOTAL_NOTA_CREDITO'
                  DataSource = DS_estadistica_Parte_Diario
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clRed
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label10: TLabel
                  Left = 12
                  Top = 184
                  Width = 123
                  Height = 14
                  Caption = 'Transf. entre Ctas.:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Verdana'
                  Font.Style = []
                  ParentFont = False
                end
                object DBText4: TDBText
                  Left = 157
                  Top = 181
                  Width = 165
                  Height = 17
                  Alignment = taRightJustify
                  DataField = 'TOTAL_TRANSFERENCIA'
                  DataSource = DS_estadistica_Parte_Diario
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -13
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Shape2: TShape
                  Left = 5
                  Top = 33
                  Width = 324
                  Height = 1
                end
              end
            end
            object Panel11: TPanel
              Left = 352
              Top = 3
              Width = 619
              Height = 228
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Label18: TLabel
                Left = 0
                Top = 0
                Width = 619
                Height = 13
                Align = alTop
                Caption = 'INGRESOS Y EGRESOS POR MEDIO DE COBRO/PAGO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = [fsBold, fsItalic]
                ParentFont = False
              end
              object DBGridPD_MediosDePago: TDBGrid
                Left = 0
                Top = 13
                Width = 619
                Height = 174
                Align = alClient
                Color = 14606012
                DataSource = DS_Estadistica_IE_Medios
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
                    FieldName = 'DESCRIPCION'
                    Title.Alignment = taCenter
                    Title.Caption = 'Medio'
                    Width = 346
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TOTAL_EGRESO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Egresos'
                    Width = 165
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TOTAL_INGRESO'
                    Title.Alignment = taCenter
                    Title.Caption = 'Ingresos'
                    Width = 167
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TOTAL_TRANSFERENCIA'
                    Title.Alignment = taCenter
                    Title.Caption = 'Transf. e/Cuentas'
                    Width = 152
                    Visible = True
                  end>
              end
              object Panel12: TPanel
                Left = 0
                Top = 187
                Width = 619
                Height = 41
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 1
                object lblPD_totalTransfer: TLabel
                  Left = 0
                  Top = 26
                  Width = 619
                  Height = 13
                  Align = alTop
                  Alignment = taRightJustify
                  Caption = 'lblPD_totalTransfer'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold, fsItalic]
                  ParentFont = False
                end
                object lblPD_totalEgreso: TLabel
                  Left = 0
                  Top = 0
                  Width = 619
                  Height = 13
                  Align = alTop
                  Alignment = taRightJustify
                  Caption = 'lblPD_totalEgreso'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold, fsItalic]
                  ParentFont = False
                end
                object lblPD_totalIngreso: TLabel
                  Left = 0
                  Top = 13
                  Width = 619
                  Height = 13
                  Align = alTop
                  Alignment = taRightJustify
                  Caption = 'lblPD_totalIngreso'
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
          object Panel9: TPanel
            Left = 1
            Top = 273
            Width = 974
            Height = 208
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 3
            object Label17: TLabel
              Left = 0
              Top = 0
              Width = 974
              Height = 13
              Align = alTop
              Caption = 'SALDOS DE LAS CUENTAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object DBGridPD_SaldoCuentas: TDBGrid
              Left = 0
              Top = 13
              Width = 974
              Height = 195
              Align = alClient
              Color = 14606012
              DataSource = DS_ZP_PD_SaldoCuentas
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
                  FieldName = 'CODIGO'
                  Title.Caption = 'Codigo'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NOMBRE_CUENTA'
                  Title.Alignment = taCenter
                  Title.Caption = 'Cuenta'
                  Width = 428
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'NRO_CTA_BANCO'
                  Title.Caption = 'Nro. Cuenta'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'IMPORTE'
                  Title.Alignment = taCenter
                  Title.Caption = 'Saldo'
                  Width = 155
                  Visible = True
                end>
            end
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Detalle Cuentas'
        ImageIndex = 5
        object Splitter2: TSplitter
          Left = 0
          Top = 177
          Width = 976
          Height = 5
          Cursor = crVSplit
          Align = alTop
        end
        object DBGridDetalleCuentasFPago: TDBGrid
          Left = 0
          Top = 182
          Width = 976
          Height = 300
          Align = alClient
          Color = 14606012
          DataSource = DS_MovFormaPago
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DrawColumnCell
        end
        object PanelResumenDetalleCta: TPanel
          Left = 0
          Top = 482
          Width = 976
          Height = 22
          Align = alBottom
          BorderWidth = 4
          TabOrder = 1
          object lblResumenDetalleCta: TLabel
            Left = 5
            Top = 5
            Width = 966
            Height = 13
            Align = alTop
            Alignment = taRightJustify
            Caption = 'lblResumenDetalleCta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
        object DBGridDetalleCuentas: TDBGrid
          Left = 0
          Top = 38
          Width = 976
          Height = 139
          Align = alTop
          Color = 14606012
          DataSource = DS_Estadistica_Det_Mov
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DrawColumnCell
        end
        object PanelTituloDetalleCta: TPanel
          Left = 0
          Top = 0
          Width = 976
          Height = 38
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 4
          TabOrder = 3
          object lblTituloDetalleCta2: TLabel
            Left = 4
            Top = 17
            Width = 968
            Height = 13
            Align = alTop
            Caption = 'lblTituloDetalleCta2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object lblTituloDetalleCta1: TLabel
            Left = 4
            Top = 4
            Width = 968
            Height = 13
            Align = alTop
            Caption = 'lblTituloDetalleCta1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
      end
      object TabDetalleMov: TTabSheet
        Caption = 'Detalle Movimientos'
        ImageIndex = 1
        object Splitter1: TSplitter
          Left = 589
          Top = 38
          Width = 5
          Height = 444
          Align = alRight
        end
        object RepDetalleMov: TQuickRep
          Tag = 99
          Left = -370
          Top = 45
          Width = 1123
          Height = 794
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          DataSet = ZP_Estadistica_Det_Mov
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
          object QRBand2: TQRBand
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
            object QRDBLogo3: TQRDBImage
              Left = 194
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
                513.291666666666700000
                5.291666666666667000
                169.333333333333300000)
              DataField = 'LOGO'
              Stretch = True
            end
            object QRLabel8: TQRLabel
              Left = 414
              Top = 47
              Width = 218
              Height = 19
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                50.270833333333330000
                1095.375000000000000000
                124.354166666666700000
                576.791666666666700000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'DETALLE MOVIMIENTOS'
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
            object RepDetalleMov_Subtitulo: TQRLabel
              Left = -77
              Top = 26
              Width = 170
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                1158.875000000000000000
                68.791666666666670000
                449.791666666666700000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'RepDetalleMov_Subtitulo'
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
            object RepDetalleMov_Titulo: TQRLabel
              Left = 427
              Top = 2
              Width = 193
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                1129.770833333333000000
                5.291666666666667000
                510.645833333333300000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'RepDetalleMov_Titulo'
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
          object QRBand3: TQRBand
            Tag = 99
            Left = 38
            Top = 180
            Width = 1047
            Height = 16
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = True
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
              42.333333333333340000
              2770.187500000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText7: TQRDBText
              Left = 499
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
                1320.270833333333000000
                0.000000000000000000
                243.416666666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_Estadistica_Det_Mov
              DataField = 'CODIGO'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText15: TQRDBText
              Left = 412
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
                1090.083333333333000000
                0.000000000000000000
                201.083333333333300000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_Estadistica_Det_Mov
              DataField = 'NUMERO_CPB'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText16: TQRDBText
              Left = 916
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
                2423.583333333333000000
                0.000000000000000000
                333.375000000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_Estadistica_Det_Mov
              DataField = 'IMPORTE_VENTA'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText17: TQRDBText
              Left = 361
              Top = 0
              Width = 41
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                955.145833333333300000
                0.000000000000000000
                108.479166666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_Estadistica_Det_Mov
              DataField = 'PUNTO_VENTA'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText18: TQRDBText
              Left = 604
              Top = 0
              Width = 302
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1598.083333333333000000
                0.000000000000000000
                799.041666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_Estadistica_Det_Mov
              DataField = 'NOMBRE_ENTIDAD'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText20: TQRDBText
              Left = 2
              Top = 0
              Width = 148
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
                391.583333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_Estadistica_Det_Mov
              DataField = 'FECHA'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
            object QRDBText21: TQRDBText
              Left = 162
              Top = 0
              Width = 189
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                428.625000000000000000
                0.000000000000000000
                500.062500000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_Estadistica_Det_Mov
              DataField = 'TIPO_COMPROBANTE'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
          end
          object QRBand6: TQRBand
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
            object QRlblRepDetMov_CritBusqueda: TQRLabel
              Left = 5
              Top = 16
              Width = 916
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
                2423.583333333333000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = True
              Caption = 'QRlblRepDetMov_CritBusqueda'
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
            object QRLabel22: TQRLabel
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
          object QRGroup1: TQRGroup
            Tag = 99
            Left = 38
            Top = 141
            Width = 1047
            Height = 21
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
              55.562500000000000000
              2770.187500000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            Expression = 'ZP_Estadistica_Det_Mov.TIPO_MOVIMIENTO'
            FooterBand = QRGroupFooter
            Master = RepDetalleMov
            ReprintOnNewPage = False
            object QRDBText22: TQRDBText
              Left = 6
              Top = 2
              Width = 146
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                15.875000000000000000
                5.291666666666667000
                386.291666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_Estadistica_Det_Mov
              DataField = 'TIPO_MOVIMIENTO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 10
            end
          end
          object QRGroupFooter: TQRBand
            Tag = 99
            Left = 38
            Top = 196
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
            BandType = rbGroupFooter
          end
          object PageFooterBand2: TQRBand
            Tag = 99
            Left = 38
            Top = 218
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
            BandType = rbPageFooter
            object QRlblRepDetalleMov_PieDePagina: TQRLabel
              Left = 4
              Top = 3
              Width = 155
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
                410.104166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'QRlblRepDetalleMov_PieDePagina'
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
            object QRLabel18: TQRLabel
              Left = 959
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
                2537.354166666667000000
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
              Left = 1001
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
                2648.479166666667000000
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
          object ChildBand4: TQRChildBand
            Tag = 99
            Left = 38
            Top = 162
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
            ParentBand = QRGroup1
            PrintOrder = cboAfterParent
            object QRLabel31: TQRLabel
              Left = 162
              Top = 2
              Width = 120
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                428.625000000000000000
                5.291666666666667000
                317.500000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Tipo Comprobante'
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
            object QRLabel28: TQRLabel
              Left = 604
              Top = 2
              Width = 50
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1598.083333333333000000
                5.291666666666667000
                132.291666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Entidad'
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
            object QRLabel27: TQRLabel
              Left = 2
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
                5.291666666666667000
                5.291666666666667000
                105.833333333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
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
            object QRLabel26: TQRLabel
              Left = 361
              Top = 2
              Width = 41
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                955.145833333333300000
                5.291666666666667000
                108.479166666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'PV'
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
            object QRLabel25: TQRLabel
              Left = 928
              Top = 2
              Width = 114
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                2455.333333333333000000
                5.291666666666667000
                301.625000000000000000)
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
            object QRLabel24: TQRLabel
              Left = 412
              Top = 2
              Width = 76
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1090.083333333333000000
                5.291666666666667000
                201.083333333333300000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'N'#250'mero'
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
              Left = 499
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
                1320.270833333333000000
                5.291666666666667000
                243.416666666666700000)
              Alignment = taCenter
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
          end
        end
        object PanelTituloDetalleMov: TPanel
          Left = 0
          Top = 0
          Width = 976
          Height = 38
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 4
          TabOrder = 0
          object lblSucursalDetMov: TLabel
            Left = 4
            Top = 17
            Width = 968
            Height = 13
            Align = alTop
            Caption = 'lblSucursalDetMov'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object lblEncabezadoDetMov: TLabel
            Left = 4
            Top = 4
            Width = 968
            Height = 13
            Align = alTop
            Caption = 'lblEncabezadoDetMov'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
        object DBGridEstadisticaDetMov: TDBGrid
          Left = 0
          Top = 38
          Width = 589
          Height = 444
          Align = alClient
          Color = 14606012
          DataSource = DS_Estadistica_Det_Mov
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
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
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_MOVIMIENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_COMPROBANTE'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo Comprobante'
              Width = 128
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PUNTO_VENTA'
              Title.Alignment = taCenter
              Title.Caption = 'PV'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO_CPB'
              Title.Alignment = taCenter
              Title.Caption = 'N'#250'mero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Alignment = taCenter
              Title.Caption = 'C'#243'digo'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE_ENTIDAD'
              Title.Alignment = taCenter
              Title.Caption = 'Entidad'
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE_VENTA'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVACION'
              Title.Alignment = taCenter
              Title.Caption = 'Observaci'#243'n'
              Width = 97
              Visible = True
            end>
        end
        object PanelResumenDetalleMov: TPanel
          Left = 0
          Top = 482
          Width = 976
          Height = 22
          Align = alBottom
          BorderWidth = 4
          TabOrder = 3
          object lblResumenDetalleMovimiento: TLabel
            Left = 5
            Top = 5
            Width = 966
            Height = 13
            Align = alTop
            Alignment = taRightJustify
            Caption = 'lblResumenDetalleMovimiento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
        object DBGridMovFPago: TDBGrid
          Left = 594
          Top = 38
          Width = 382
          Height = 444
          Align = alRight
          Color = 14606012
          DataSource = DS_MovFormaPago
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'CUENTA'
              Title.Alignment = taCenter
              Title.Caption = 'Cuenta'
              Width = 172
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOFORMAPAGO'
              Title.Alignment = taCenter
              Title.Caption = 'Forma Cobro/Pago'
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE_REAL'
              Title.Alignment = taCenter
              Title.Caption = 'Importe'
              Width = 82
              Visible = True
            end>
        end
      end
      object TabBalance: TTabSheet
        Caption = 'Balance'
        ImageIndex = 3
        object RepBalance: TQuickRep
          Tag = 99
          Left = 108
          Top = 41
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
          object QRBand4: TQRBand
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
            object QRDBLogo4: TQRDBImage
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
            object QRLabel33: TQRLabel
              Left = 317
              Top = 47
              Width = 83
              Height = 19
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                50.270833333333330000
                838.729166666666700000
                124.354166666666700000
                219.604166666666700000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'BALANCE'
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
              Left = 285
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
                391.583333333333400000)
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
          object QRBand5: TQRBand
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
            object QRDBText28: TQRDBText
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
            object QRDBText29: TQRDBText
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
            object QRDBText30: TQRDBText
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
            object QRDBText31: TQRDBText
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
            object QRDBText32: TQRDBText
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
          object QRBand7: TQRBand
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
            object QRLabel34: TQRLabel
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
            object QRSysData4: TQRSysData
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
          object QRBand8: TQRBand
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
            object QRlblRepBalance_SaldoIni: TQRLabel
              Left = 600
              Top = 2
              Width = 115
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1587.500000000000000000
                5.291666666666667000
                304.270833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = '$ 999,999,990.00'
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
              Left = 600
              Top = 18
              Width = 115
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1587.500000000000000000
                47.625000000000000000
                304.270833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = '$ 999,999,990.00'
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
              Left = 600
              Top = 34
              Width = 115
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1587.500000000000000000
                89.958333333333330000
                304.270833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = '$ 999,999,990.00'
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
              Left = 600
              Top = 50
              Width = 115
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = True
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1587.500000000000000000
                132.291666666666700000
                304.270833333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = '$ 999,999,990.00'
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
            object QRLabel41: TQRLabel
              Left = 500
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
                1322.916666666667000000
                5.291666666666667000
                264.583333333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Saldo Inicial:'
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
              Left = 500
              Top = 18
              Width = 100
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1322.916666666667000000
                47.625000000000000000
                264.583333333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Ingresos:'
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
              Left = 500
              Top = 34
              Width = 100
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1322.916666666667000000
                89.958333333333330000
                264.583333333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Egresos:'
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
            object QRLabel45: TQRLabel
              Left = 500
              Top = 50
              Width = 100
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = True
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1322.916666666667000000
                132.291666666666700000
                264.583333333333300000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Caption = 'Saldo Final:'
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
          object QRBand13: TQRBand
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
            object QRLabel35: TQRLabel
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
          object QRBand15: TQRBand
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
            object QRLabel36: TQRLabel
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
            object QRLabel37: TQRLabel
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
            object QRLabel38: TQRLabel
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
            object QRLabel39: TQRLabel
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
            object QRLabel40: TQRLabel
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
          Width = 976
          Height = 504
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object DBGridBalance: TDBGrid
            Left = 0
            Top = 46
            Width = 976
            Height = 371
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
            Left = 0
            Top = 417
            Width = 976
            Height = 87
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              976
              87)
            object Label11: TLabel
              Left = 746
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
            object Label4: TLabel
              Left = 754
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
              Left = 730
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
            object Label5: TLabel
              Left = 735
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
            object Shape3: TShape
              Left = 708
              Top = 60
              Width = 276
              Height = 1
              Anchors = [akTop, akRight]
              Pen.Color = clGray
            end
            object lblBalanceTotalIngresos: TLabel
              Left = 831
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
              Left = 831
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
              Left = 831
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
              Left = 831
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
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 976
            Height = 46
            Align = alTop
            BevelOuter = bvNone
            BorderWidth = 4
            TabOrder = 2
            object lblBalanceTipoComprobante: TLabel
              Left = 4
              Top = 4
              Width = 968
              Height = 13
              Align = alTop
              Caption = 'lblBalanceTipoComprobante'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsItalic]
              ParentFont = False
            end
            object lblBalanceFecha: TLabel
              Left = 4
              Top = 17
              Width = 968
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
            object lblBalanceSucursal: TLabel
              Left = 4
              Top = 30
              Width = 968
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
          end
        end
      end
      object TabBalanceGrafico: TTabSheet
        Caption = 'Balance (Grafico)'
        ImageIndex = 4
        object DBChartBalance: TDBChart
          Left = 0
          Top = 0
          Width = 976
          Height = 504
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
    Left = 688
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
      ShortCut = 112
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
        'btnSalir'
        'btnImprimir'
        'btnExcel')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
    end
  end
  object ZP_SaldosCuentas: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CUENTA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NOMBRE_CUENTA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_CTA_BANCO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'IMPORTE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHA_HASTA'
        ParamType = ptInput
      end>
    StoredProcName = 'SALDOS_CUENTAS'
    Left = 53
    Top = 89
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CUENTA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NOMBRE_CUENTA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_CTA_BANCO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'IMPORTE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHA_HASTA'
        ParamType = ptInput
      end>
    object ZP_SaldosCuentasID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
    end
    object ZP_SaldosCuentasCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object ZP_SaldosCuentasNOMBRE_CUENTA: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 50
    end
    object ZP_SaldosCuentasNRO_CTA_BANCO: TStringField
      FieldName = 'NRO_CTA_BANCO'
      Size = 10
    end
    object ZP_SaldosCuentasIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
  end
  object DS_SaldosCuentas: TDataSource
    DataSet = ZP_SaldosCuentas
    Left = 53
    Top = 137
  end
  object EKBuscarSaldo: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Fecha'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Sucursal'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboSQL = ZQ_Sucursal
        TipoComboSQLCampoVer = 'nombre'
        TipoComboSQLCampoReal = 'id_sucursal'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 53
    Top = 193
  end
  object ZQ_Sucursal: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from Sucursal s'
      'order by s.nombre')
    Params = <>
    Left = 764
    Top = 80
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
  object EKDbSuma_Saldo: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'IMPORTE'
      end>
    DataSet = ZP_SaldosCuentas
    Left = 53
    Top = 249
  end
  object EKVista_RepSaldo: TEKVistaPreviaQR
    Reporte = RepSaldo
    ShowModal = False
    Left = 53
    Top = 297
  end
  object EKBuscarParteDiario: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Fecha Desde'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndice = 2
        TipoCampoIndiceVer = '>='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Fechas Hasta'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndice = 4
        TipoCampoIndiceVer = '<='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Sucursal'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboSQL = ZQ_Sucursal
        TipoComboSQLCampoVer = 'nombre'
        TipoComboSQLCampoReal = 'id_sucursal'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 534
    Top = 185
  end
  object ZP_estadistica_Parte_Diario: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftFloat
        Name = 'SALDO_INICIAL'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_INGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_EGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHADESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHAHASTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL'
        ParamType = ptInput
      end>
    StoredProcName = 'ESTADISTICA_PARTE_DIARIO'
    Left = 534
    Top = 81
    ParamData = <
      item
        DataType = ftFloat
        Name = 'SALDO_INICIAL'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'SALDO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_INGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_EGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHADESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHAHASTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL'
        ParamType = ptInput
      end>
    object ZP_estadistica_Parte_DiarioSALDO_INICIAL: TFloatField
      FieldName = 'SALDO_INICIAL'
      currency = True
    end
    object ZP_estadistica_Parte_DiarioSALDO: TFloatField
      FieldName = 'SALDO'
      currency = True
    end
    object ZP_estadistica_Parte_DiarioTOTAL_INGRESO: TFloatField
      FieldName = 'TOTAL_INGRESO'
      currency = True
    end
    object ZP_estadistica_Parte_DiarioTOTAL_EGRESO: TFloatField
      FieldName = 'TOTAL_EGRESO'
      currency = True
    end
    object ZP_estadistica_Parte_DiarioTOTAL_TRANSFERENCIA: TFloatField
      FieldName = 'TOTAL_TRANSFERENCIA'
      currency = True
    end
    object ZP_estadistica_Parte_DiarioTOTAL_NOTA_CREDITO: TFloatField
      FieldName = 'TOTAL_NOTA_CREDITO'
      currency = True
    end
    object ZP_estadistica_Parte_DiarioTOTAL_CTA_CTE_CLIENTE: TFloatField
      FieldName = 'TOTAL_CTA_CTE_CLIENTE'
      currency = True
    end
    object ZP_estadistica_Parte_DiarioTOTAL_CTA_CTE_PROVEEDOR: TFloatField
      FieldName = 'TOTAL_CTA_CTE_PROVEEDOR'
      currency = True
    end
  end
  object ZP_Estadistica_IE_Medios: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftFloat
        Name = 'TOTAL_EGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_INGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'DESCRIPCION'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHADESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHAHASTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL'
        ParamType = ptInput
      end>
    StoredProcName = 'ESTADISTICA_IE_MEDIO'
    Left = 389
    Top = 81
    ParamData = <
      item
        DataType = ftFloat
        Name = 'TOTAL_EGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_INGRESO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'DESCRIPCION'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHADESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHAHASTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL'
        ParamType = ptInput
      end>
    object ZP_Estadistica_IE_MediosTOTAL_INGRESO: TFloatField
      FieldName = 'TOTAL_INGRESO'
      currency = True
    end
    object ZP_Estadistica_IE_MediosTOTAL_EGRESO: TFloatField
      FieldName = 'TOTAL_EGRESO'
      currency = True
    end
    object ZP_Estadistica_IE_MediosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object ZP_Estadistica_IE_MediosTOTAL_TRANSFERENCIA: TFloatField
      FieldName = 'TOTAL_TRANSFERENCIA'
      currency = True
    end
  end
  object DS_estadistica_Parte_Diario: TDataSource
    DataSet = ZP_estadistica_Parte_Diario
    Left = 534
    Top = 137
  end
  object DS_Estadistica_IE_Medios: TDataSource
    DataSet = ZP_Estadistica_IE_Medios
    Left = 389
    Top = 137
  end
  object EKDbSuma_ParteDiario: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'TOTAL_INGRESO'
      end
      item
        Operacion = goSum
        NombreCampo = 'TOTAL_EGRESO'
      end
      item
        Operacion = goSum
        NombreCampo = 'TOTAL_TRANSFERENCIA'
      end>
    DataSet = ZP_Estadistica_IE_Medios
    Left = 534
    Top = 241
  end
  object ZP_Estadistica_Det_Mov: TZStoredProc
    Connection = DM.Conexion
    AfterScroll = ZP_Estadistica_Det_MovAfterScroll
    Params = <
      item
        DataType = ftFloat
        Name = 'IMPORTE_VENTA'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NUMERO_CPB'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'PUNTO_VENTA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptResult
      end
      item
        DataType = ftDateTime
        Name = 'FECHA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'OBSERVACION'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'TIPO_COMPROBANTE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'TIPO_MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NOMBRE_ENTIDAD'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHADESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHAHASTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL_INGRESO'
        ParamType = ptInput
      end>
    StoredProcName = 'ESTADISTICA_DETALLE_MOVIMIENTOS'
    Left = 205
    Top = 89
    ParamData = <
      item
        DataType = ftFloat
        Name = 'IMPORTE_VENTA'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'NUMERO_CPB'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'PUNTO_VENTA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptResult
      end
      item
        DataType = ftDateTime
        Name = 'FECHA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'OBSERVACION'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'TIPO_COMPROBANTE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'TIPO_MOVIMIENTO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NOMBRE_ENTIDAD'
        ParamType = ptResult
      end
      item
        DataType = ftDate
        Name = 'FECHADESDE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHAHASTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL_INGRESO'
        ParamType = ptInput
      end>
    object ZP_Estadistica_Det_MovIMPORTE_VENTA: TFloatField
      FieldName = 'IMPORTE_VENTA'
      currency = True
    end
    object ZP_Estadistica_Det_MovNUMERO_CPB: TIntegerField
      FieldName = 'NUMERO_CPB'
      DisplayFormat = '00000000'
    end
    object ZP_Estadistica_Det_MovPUNTO_VENTA: TIntegerField
      FieldName = 'PUNTO_VENTA'
      DisplayFormat = '0000'
    end
    object ZP_Estadistica_Det_MovCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 50
    end
    object ZP_Estadistica_Det_MovFECHA: TDateTimeField
      FieldName = 'FECHA'
    end
    object ZP_Estadistica_Det_MovOBSERVACION: TStringField
      FieldName = 'OBSERVACION'
      Size = 500
    end
    object ZP_Estadistica_Det_MovTIPO_COMPROBANTE: TStringField
      FieldName = 'TIPO_COMPROBANTE'
      Size = 100
    end
    object ZP_Estadistica_Det_MovTIPO_MOVIMIENTO: TStringField
      FieldName = 'TIPO_MOVIMIENTO'
    end
    object ZP_Estadistica_Det_MovNOMBRE_ENTIDAD: TStringField
      FieldName = 'NOMBRE_ENTIDAD'
      Size = 100
    end
    object ZP_Estadistica_Det_MovID_COMPROBANTE: TIntegerField
      FieldName = 'ID_COMPROBANTE'
    end
  end
  object DS_Estadistica_Det_Mov: TDataSource
    DataSet = ZP_Estadistica_Det_Mov
    Left = 205
    Top = 137
  end
  object EKBuscarDetMov: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Fecha Desde'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
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
      end
      item
        Titulo = 'Sucursal'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboSQL = ZQ_Sucursal
        TipoComboSQLCampoVer = 'nombre'
        TipoComboSQLCampoReal = 'id_sucursal'
        TipoComboEditable = False
        TipoComboAncho = 200
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 205
    Top = 193
  end
  object EKOrdenarGrillaDetMov: TEKOrdenarGrilla
    Grilla = DBGridEstadisticaDetMov
    Filtros = <
      item
        TituloColumna = 'Fecha'
        Visible = True
      end
      item
        TituloColumna = 'Tipo'
        Visible = True
      end
      item
        TituloColumna = 'Tipo Comprobante'
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
        TituloColumna = 'C'#243'digo'
        Visible = True
      end
      item
        TituloColumna = 'Entidad'
        Visible = True
      end
      item
        TituloColumna = 'Importe'
        Visible = True
      end
      item
        TituloColumna = 'Observaci'#243'n'
        Visible = True
      end>
    NombreGuardar = 'DBGridEstadisticaDetMov'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 205
    Top = 249
  end
  object EKVista_RepParteDiario: TEKVistaPreviaQR
    Reporte = RepParteDiario
    ShowModal = False
    Left = 534
    Top = 294
  end
  object EKVista_RepDetMov: TEKVistaPreviaQR
    Reporte = RepDetalleMov
    ShowModal = False
    Left = 205
    Top = 297
  end
  object ZP_PD_SaldoCuentas: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CUENTA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NOMBRE_CUENTA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_CTA_BANCO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'IMPORTE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHA_HASTA'
        ParamType = ptInput
      end>
    StoredProcName = 'SALDOS_CUENTAS'
    Left = 389
    Top = 193
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CUENTA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NOMBRE_CUENTA'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'NRO_CTA_BANCO'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = 'IMPORTE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'ID_SUCURSAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FECHA_HASTA'
        ParamType = ptInput
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID_CUENTA'
    end
    object StringField1: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'NOMBRE_CUENTA'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'NRO_CTA_BANCO'
      Size = 10
    end
    object FloatField1: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
  end
  object DS_ZP_PD_SaldoCuentas: TDataSource
    DataSet = ZP_PD_SaldoCuentas
    Left = 389
    Top = 249
  end
  object EKSumaPD_SaldoCta: TEKDbSuma
    SumCollection = <
      item
        Operacion = goSum
        NombreCampo = 'IMPORTE'
      end>
    DataSet = ZP_PD_SaldoCuentas
    Left = 389
    Top = 305
  end
  object EKOrdenarGrillaSaldos: TEKOrdenarGrilla
    Grilla = DBGridSaldoCuentas
    Filtros = <
      item
        TituloColumna = 'C'#243'digo'
        Visible = True
      end
      item
        TituloColumna = 'Cuenta'
        Visible = True
      end
      item
        TituloColumna = 'Nro. Cuenta'
        Visible = True
      end
      item
        TituloColumna = 'Saldo'
        Visible = True
      end>
    NombreGuardar = 'DBGridSaldoCuentas'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = False
    PermitirFiltrar = False
    Left = 53
    Top = 353
  end
  object EKOrdenarGrillaPD_Saldo: TEKOrdenarGrilla
    Grilla = DBGridPD_SaldoCuentas
    Filtros = <
      item
        TituloColumna = 'Codigo'
        Visible = True
      end
      item
        TituloColumna = 'Cuenta'
        Visible = True
      end
      item
        TituloColumna = 'Nro. Cuenta'
        Visible = True
      end
      item
        TituloColumna = 'Saldo'
        Visible = True
      end>
    NombreGuardar = 'DBGridPD_SaldoCuentas'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = False
    PermitirFiltrar = False
    Left = 389
    Top = 361
  end
  object ATeclasRapidas: TActionManager
    Left = 56
    Top = 410
    StyleName = 'XP Style'
    object ABuscar: TAction
      Caption = 'ABuscar'
      ShortCut = 112
      OnExecute = ABuscarExecute
    end
  end
  object ZQ_MovFormaPago: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select tfp.descripcion as TipoFormaPago, cfp.importe_real,'
      '       CASE'
      
        '           WHEN ((cfp.cuenta_ingreso is not null) and (cfp.cuent' +
        'a_egreso is null)) THEN ci.nombre_cuenta'
      
        '           WHEN ((cfp.cuenta_ingreso is null) and (cfp.cuenta_eg' +
        'reso is not null)) THEN ce.nombre_cuenta'
      '       END as cuenta'
      'from comprobante_forma_pago cfp'
      
        'left join tipo_formapago tfp on (cfp.id_tipo_formapag = tfp.id_t' +
        'ipo_formapago)'
      'left join cuenta ci on (cfp.cuenta_ingreso = ci.id_cuenta)'
      'left join cuenta ce on (cfp.cuenta_egreso = ce.id_cuenta)'
      'where cfp.id_comprobante = :id_comprobante')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    Left = 205
    Top = 353
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_comprobante'
        ParamType = ptUnknown
      end>
    object ZQ_MovFormaPagoTIPOFORMAPAGO: TStringField
      FieldName = 'TIPOFORMAPAGO'
      Size = 50
    end
    object ZQ_MovFormaPagoIMPORTE_REAL: TFloatField
      FieldName = 'IMPORTE_REAL'
      currency = True
    end
    object ZQ_MovFormaPagoCUENTA: TStringField
      FieldName = 'CUENTA'
      ReadOnly = True
      Size = 50
    end
  end
  object DS_MovFormaPago: TDataSource
    DataSet = ZQ_MovFormaPago
    Left = 205
    Top = 401
  end
  object EKOrdenarMovFPago: TEKOrdenarGrilla
    Grilla = DBGridMovFPago
    Filtros = <
      item
        TituloColumna = 'Cuenta'
        Visible = True
      end
      item
        TituloColumna = 'Forma Cobro/Pago'
        Visible = True
      end
      item
        TituloColumna = 'Importe'
        Visible = True
      end>
    NombreGuardar = 'EKOrdenarMovFPago'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 205
    Top = 449
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
      end
      item
        DataType = ftInteger
        Name = 'TIPO_CPB'
        ParamType = ptInput
      end>
    StoredProcName = 'ESTADISTICA_DIARIA_GLOBAL'
    Left = 850
    Top = 83
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
      end
      item
        DataType = ftInteger
        Name = 'TIPO_CPB'
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
    Left = 850
    Top = 135
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
    Left = 850
    Top = 199
  end
  object EKBuscarBalance: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Tipo Comprobante'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        TipoComboValoresVer.Strings = (
          'TODOS'
          'FACTURA'
          'DEVOLUCION'
          'FACTURA COMPRA'
          'ORDEN PAGO'
          'RECIBO'
          'OTROS INGRESOS'
          'OTROS EGRESOS')
        TipoComboValoresReales.Strings = (
          '-1'
          '11'
          '12'
          '13'
          '18'
          '19'
          '16'
          '17')
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = 0
        VaciarValor = False
      end
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
    Left = 852
    Top = 256
  end
  object EKVistaBalance: TEKVistaPreviaQR
    Reporte = RepBalance
    ShowModal = False
    Left = 856
    Top = 305
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
      end
      item
        DataType = ftInteger
        Name = 'TIPO_CPB'
        ParamType = ptInput
      end>
    StoredProcName = 'ESTADISTICA_DIARIA_GLOBAL'
    Left = 922
    Top = 83
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
      end
      item
        DataType = ftInteger
        Name = 'TIPO_CPB'
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
