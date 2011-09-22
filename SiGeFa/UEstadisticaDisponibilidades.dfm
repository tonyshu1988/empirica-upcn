object FEstadisticaDisponibilidades: TFEstadisticaDisponibilidades
  Left = 204
  Top = 113
  Width = 1030
  Height = 586
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelContenedor: TPanel
    Left = 0
    Top = 0
    Width = 1022
    Height = 502
    Align = alClient
    Caption = 'PanelContenedor'
    TabOrder = 0
    object PageControl: TPageControl
      Left = 1
      Top = 1
      Width = 1020
      Height = 500
      ActivePage = TabDetalleMov
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
                751.416666666666800000
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
              Left = 293
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
                775.229166666666800000
                68.791666666666680000
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
              Left = 287
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
                759.354166666666800000
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
          Width = 1012
          Height = 412
          Align = alClient
          Color = 14606012
          DataSource = DS_SaldosCuentas
          DefaultDrawing = False
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridSaldoCuentasDrawColumnCell
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
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1012
          Height = 38
          Align = alTop
          BorderWidth = 4
          TabOrder = 1
          object lblSaldo_Encabezado2: TLabel
            Left = 5
            Top = 18
            Width = 1002
            Height = 13
            Align = alTop
            Caption = 'lblTotalSaldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object lblSaldo_Encabezado1: TLabel
            Left = 5
            Top = 5
            Width = 1002
            Height = 13
            Align = alTop
            Caption = 'lblTotalSaldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 450
          Width = 1012
          Height = 22
          Align = alBottom
          BorderWidth = 4
          TabOrder = 2
          object lblSaldo_Total: TLabel
            Left = 5
            Top = 5
            Width = 1002
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
        object panel_cerrar: TPanel
          Left = 0
          Top = 0
          Width = 1012
          Height = 472
          Align = alClient
          TabOrder = 0
          DesignSize = (
            1012
            472)
          object lblEncabezadoParteDiario: TLabel
            Left = 5
            Top = 1
            Width = 100
            Height = 14
            Caption = '                         '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 8
            Top = 240
            Width = 153
            Height = 13
            Caption = 'SALDOS DE LAS CUENTAS'
          end
          object Label18: TLabel
            Left = 296
            Top = 37
            Width = 212
            Height = 13
            Caption = 'INGRESOS Y EGRESOS POR MEDIOS'
          end
          object lblSaldo_TotalParteDiario: TLabel
            Left = 1
            Top = 458
            Width = 1010
            Height = 13
            Align = alBottom
            Alignment = taRightJustify
            Caption = 'lblSaldo_Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object lblSucursal: TLabel
            Left = 863
            Top = 1
            Width = 148
            Height = 14
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = '                                     '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbltotalIngresoEgreso: TLabel
            Left = 297
            Top = 233
            Width = 100
            Height = 14
            Caption = '                         '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object GroupBox3: TGroupBox
            Left = 9
            Top = 57
            Width = 281
            Height = 175
            Caption = ' MOVIMIENTOS '
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            object Label15: TLabel
              Left = 13
              Top = 31
              Width = 85
              Height = 13
              Caption = 'Saldo Inicial:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText9: TDBText
              Left = 112
              Top = 27
              Width = 129
              Height = 17
              Alignment = taRightJustify
              DataField = 'SALDO_INICIAL'
              DataSource = DS_estadistica_Parte_Diario
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label7: TLabel
              Left = 13
              Top = 63
              Width = 55
              Height = 13
              Caption = 'Ingresos:'
            end
            object DBText10: TDBText
              Left = 160
              Top = 63
              Width = 81
              Height = 17
              Alignment = taRightJustify
              DataField = 'TOTAL_INGRESO'
              DataSource = DS_estadistica_Parte_Diario
            end
            object Label8: TLabel
              Left = 13
              Top = 95
              Width = 50
              Height = 13
              Caption = 'Egresos:'
            end
            object DBText11: TDBText
              Left = 160
              Top = 95
              Width = 81
              Height = 17
              Alignment = taRightJustify
              DataField = 'TOTAL_EGRESO'
              DataSource = DS_estadistica_Parte_Diario
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object DBText19: TDBText
              Left = 112
              Top = 124
              Width = 129
              Height = 17
              Alignment = taRightJustify
              DataField = 'SALDO'
              DataSource = DS_estadistica_Parte_Diario
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -13
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 13
              Top = 128
              Width = 100
              Height = 13
              Caption = 'Saldo al Cierre:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object DBGrid4: TDBGrid
            Left = 296
            Top = 56
            Width = 696
            Height = 177
            Anchors = [akLeft, akTop, akRight]
            Color = 14606012
            DataSource = DS_Estadistica_IE_Medios
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRIPCION'
                Title.Caption = 'Medio'
                Width = 290
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL_INGRESO'
                Title.Caption = 'Ingresos'
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TOTAL_EGRESO'
                Title.Caption = 'Egresos'
                Width = 108
                Visible = True
              end>
          end
          object DBGrid3: TDBGrid
            Left = 7
            Top = 257
            Width = 986
            Height = 197
            Anchors = [akLeft, akTop, akRight, akBottom]
            Color = 14606012
            DataSource = DS_SaldosCuentas
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
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
        object RepParteDiario: TQuickRep
          Tag = 99
          Left = 145
          Top = 45
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
            Height = 90
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
              238.125000000000000000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbPageHeader
            object RepParteDiario_Titulo: TQRLabel
              Left = 260
              Top = 4
              Width = 196
              Height = 20
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                52.916666666666670000
                687.916666666666800000
                10.583333333333330000
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
              Top = 28
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
                74.083333333333340000
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
              Left = 315
              Top = 53
              Width = 86
              Height = 18
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                47.625000000000000000
                833.437500000000000000
                140.229166666666700000
                227.541666666666700000)
              Alignment = taCenter
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Parte Diario'
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
          object QRSubDetail1: TQRSubDetail
            Tag = 99
            Left = 38
            Top = 202
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
            Master = RepParteDiario
            DataSet = ZP_Estadistica_IE_Medios
            PrintBefore = False
            PrintIfEmpty = True
            object QRDBText33: TQRDBText
              Left = 5
              Top = 1
              Width = 380
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
                1005.416666666667000000)
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
              Left = 553
              Top = 1
              Width = 160
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1463.145833333333000000
                2.645833333333333000
                423.333333333333300000)
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
              Left = 390
              Top = 1
              Width = 160
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1031.875000000000000000
                2.645833333333333000
                423.333333333333300000)
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
          end
          object QRSubDetail2: TQRSubDetail
            Tag = 99
            Left = 38
            Top = 220
            Width = 718
            Height = 22
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
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
            Master = RepParteDiario
            PrintBefore = False
            PrintIfEmpty = True
            object QRLabeltotalIngresoEgreso: TQRLabel
              Left = 541
              Top = 3
              Width = 174
              Height = 17
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                44.979166666666670000
                1431.395833333333000000
                7.937500000000000000
                460.375000000000000000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'QRLabeltotalIngresoEgreso'
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
            Top = 257
            Width = 718
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
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            Master = RepParteDiario
            DataSet = ZP_SaldosCuentas
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
              DataSet = ZP_SaldosCuentas
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
              DataSet = ZP_SaldosCuentas
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
              Left = 504
              Top = 1
              Width = 209
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
                552.979166666666800000)
              Alignment = taRightJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_SaldosCuentas
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
              Width = 100
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
                264.583333333333400000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_SaldosCuentas
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
            Top = 185
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
              Left = 492
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
                1301.750000000000000000
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
              Left = 660
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
                1746.250000000000000000
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
          end
          object ChildBand1: TQRChildBand
            Tag = 99
            Left = 38
            Top = 242
            Width = 718
            Height = 15
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
              39.687500000000000000
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = QRSubDetail2
            PrintOrder = cboAfterParent
            object QRLabel5: TQRLabel
              Left = 5
              Top = -1
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
                -2.645833333333333000
                121.708333333333300000)
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
              Top = -1
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
                -2.645833333333333000
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
              Top = -1
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
                -2.645833333333333000
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
              Top = -1
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
                -2.645833333333333000
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
            Top = 274
            Width = 718
            Height = 23
            Frame.Color = clBlack
            Frame.DrawTop = True
            Frame.DrawBottom = True
            Frame.DrawLeft = False
            Frame.DrawRight = False
            AlignToBottom = False
            Color = clWhite
            TransparentBand = False
            ForceNewColumn = False
            ForceNewPage = False
            Size.Values = (
              60.854166666666680000
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
            Top = 128
            Width = 718
            Height = 17
            Frame.Color = clBlack
            Frame.DrawTop = False
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
            ParentBand = QRBand14
            PrintOrder = cboAfterParent
            object QRLabelEncabezadoParteDiario: TQRLabel
              Left = 4
              Top = -1
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
                -2.645833333333333000
                545.041666666666800000)
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
              Top = -1
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
                -2.645833333333333000
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
            Top = 145
            Width = 718
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
              1899.708333333333000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = ChildBand2
            PrintOrder = cboAfterParent
            object QRDBText11: TQRDBText
              Left = 109
              Top = 1
              Width = 241
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                288.395833333333400000
                2.645833333333333000
                637.645833333333400000)
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
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 8
            end
            object QRLabel4: TQRLabel
              Left = 19
              Top = 0
              Width = 88
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                50.270833333333330000
                0.000000000000000000
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
              Left = 477
              Top = 1
              Width = 241
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1262.062500000000000000
                2.645833333333333000
                637.645833333333400000)
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
              Font.Style = []
              ParentFont = False
              Transparent = True
              WordWrap = True
              ExportAs = exptText
              FontSize = 8
            end
            object QRLabel12: TQRLabel
              Left = 365
              Top = 0
              Width = 104
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                965.729166666666800000
                0.000000000000000000
                275.166666666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Saldo al Cierre:'
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
              Left = 109
              Top = 17
              Width = 241
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                288.395833333333400000
                44.979166666666670000
                637.645833333333400000)
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
              Left = 6
              Top = 16
              Width = 101
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                15.875000000000000000
                42.333333333333340000
                267.229166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Total Ingresos:'
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
              Left = 477
              Top = 17
              Width = 241
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                1262.062500000000000000
                44.979166666666670000
                637.645833333333400000)
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
            object QRLabel14: TQRLabel
              Left = 374
              Top = 16
              Width = 95
              Height = 15
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                39.687500000000000000
                989.541666666666800000
                42.333333333333340000
                251.354166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Total Egresos:'
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
          object PageFooterBand1: TQRBand
            Left = 38
            Top = 297
            Width = 718
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
          end
        end
      end
      object TabDetalleMov: TTabSheet
        Caption = 'Detalle Movimiento'
        ImageIndex = 1
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1012
          Height = 24
          Align = alTop
          BorderWidth = 4
          TabOrder = 0
          DesignSize = (
            1012
            24)
          object lblEncabezadoDetMov: TLabel
            Left = 5
            Top = 1
            Width = 100
            Height = 14
            Caption = '                         '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblSucursalDetMov: TLabel
            Left = 863
            Top = 1
            Width = 148
            Height = 14
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = '                                     '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object DBGridEstadisticaDetMov: TDBGrid
          Left = 0
          Top = 24
          Width = 1012
          Height = 448
          Align = alClient
          Color = 14606012
          DataSource = DS_Estadistica_Det_Mov
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMERO_CPB'
              Title.Caption = 'Num. Cpb.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO'
              Title.Caption = 'Codigo Cpb.'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PUNTO_VENTA'
              Title.Caption = 'Pto. Vta.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FECHA'
              Title.Caption = 'Fecha'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMBRE_ENTIDAD'
              Title.Caption = 'Entidad'
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OBSERVACION'
              Title.Caption = 'Observacion'
              Width = 97
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_COMPROBANTE'
              Title.Caption = 'Tipo Comprobante'
              Width = 128
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_MOVIMIENTO'
              Title.Caption = 'Tipo Movimiento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IMPORTE_VENTA'
              Title.Caption = 'Importe'
              Visible = True
            end>
        end
        object RepDetalleMov: TQuickRep
          Tag = 99
          Left = -10
          Top = 77
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
            object QRLabel8: TQRLabel
              Left = 435
              Top = 47
              Width = 176
              Height = 19
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                50.270833333333330000
                1150.937500000000000000
                124.354166666666700000
                465.666666666666800000)
              Alignment = taCenter
              AlignToBand = True
              AutoSize = True
              AutoStretch = False
              Caption = 'Detalle Movimientos'
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
              Left = 438
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
                68.791666666666680000
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
            Top = 172
            Width = 1047
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
              2770.187500000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbDetail
            object QRDBText7: TQRDBText
              Left = 5
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
                13.229166666666670000
                0.000000000000000000
                201.083333333333300000)
              Alignment = taLeftJustify
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
              Left = 86
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
                227.541666666666700000
                0.000000000000000000
                201.083333333333300000)
              Alignment = taLeftJustify
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
              Left = 167
              Top = 0
              Width = 55
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                441.854166666666700000
                0.000000000000000000
                145.520833333333300000)
              Alignment = taLeftJustify
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
              Left = 314
              Top = 0
              Width = 295
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                830.791666666666800000
                0.000000000000000000
                780.520833333333400000)
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
              Left = 228
              Top = 0
              Width = 81
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                603.250000000000000000
                0.000000000000000000
                214.312500000000000000)
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
              Left = 618
              Top = 0
              Width = 177
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
                468.312500000000100000)
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
            object QRDBText22: TQRDBText
              Left = 800
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
                2116.666666666667000000
                0.000000000000000000
                296.333333333333400000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = False
              AutoStretch = False
              Color = clWhite
              DataSet = ZP_Estadistica_Det_Mov
              DataField = 'TIPO_MOVIMIENTO'
              Transparent = False
              WordWrap = True
              ExportAs = exptText
              FontSize = 7
            end
          end
          object QRBand4: TQRBand
            Tag = 99
            Left = 38
            Top = 207
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
            object QRLabel19: TQRLabel
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
            object QRSysData2: TQRSysData
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
          object QRBand5: TQRBand
            Tag = 99
            Left = 38
            Top = 186
            Width = 1047
            Height = 21
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
              55.562500000000000000
              2770.187500000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            BandType = rbSummary
            object QRExpr1: TQRExpr
              Left = 4
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
                10.583333333333330000
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
          end
          object QRBand6: TQRBand
            Tag = 99
            Left = 38
            Top = 123
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
          object QRBand7: TQRBand
            Tag = 99
            Left = 38
            Top = 154
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
            BandType = rbColumnHeader
            object QRLabel23: TQRLabel
              Left = 4
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
                10.583333333333330000
                5.291666666666667000
                203.729166666666700000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'C'#243'digo Cpb.'
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
              Left = 86
              Top = 2
              Width = 66
              Height = 14
              Frame.Color = clBlack
              Frame.DrawTop = False
              Frame.DrawBottom = False
              Frame.DrawLeft = False
              Frame.DrawRight = False
              Size.Values = (
                37.041666666666670000
                227.541666666666700000
                5.291666666666667000
                174.625000000000000000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Num. Cpb.'
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
            object QRLabel26: TQRLabel
              Left = 167
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
                441.854166666666700000
                5.291666666666667000
                145.520833333333300000)
              Alignment = taLeftJustify
              AlignToBand = False
              AutoSize = True
              AutoStretch = False
              Caption = 'Pto. Vta.'
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
              Left = 228
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
                603.250000000000000000
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
            object QRLabel28: TQRLabel
              Left = 314
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
                830.791666666666800000
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
            object QRLabel31: TQRLabel
              Left = 618
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
                1635.125000000000000000
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
            object QRLabel32: TQRLabel
              Left = 800
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
                2116.666666666667000000
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
          end
          object ChildBand4: TQRChildBand
            Left = 38
            Top = 110
            Width = 1047
            Height = 13
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
              34.395833333333340000
              2770.187500000000000000)
            PreCaluculateBandHeight = False
            KeepOnOnePage = False
            ParentBand = QRBand2
            PrintOrder = cboAfterParent
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'TabSheet3'
        ImageIndex = 2
        object Panel5: TPanel
          Left = 0
          Top = 364
          Width = 893
          Height = 22
          Align = alBottom
          BorderWidth = 4
          TabOrder = 0
          object Label4: TLabel
            Left = 795
            Top = 5
            Width = 93
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
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 893
          Height = 38
          Align = alTop
          BorderWidth = 4
          TabOrder = 1
          object Label5: TLabel
            Left = 5
            Top = 18
            Width = 85
            Height = 13
            Align = alTop
            Caption = 'lblTotalSaldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 5
            Top = 5
            Width = 85
            Height = 13
            Align = alTop
            Caption = 'lblTotalSaldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
        end
        object DBGrid2: TDBGrid
          Left = 0
          Top = 38
          Width = 893
          Height = 326
          Align = alClient
          Color = 14606012
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
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
    Left = 704
    Top = 128
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
    object btnVerDetalle: TdxBarLargeButton
      Align = iaRight
      Caption = 'Ver Detalle'
      Category = 0
      Hint = 'Ver Detalle'
      Visible = ivAlways
      ImageIndex = 69
      AutoGrayScale = False
    end
    object btnNuevo: TdxBarLargeButton
      Caption = 'F2 - Nuevo'
      Category = 0
      Hint = 'Inserta un nuevo registro'
      Visible = ivAlways
      ImageIndex = 0
      ShortCut = 113
      AutoGrayScale = False
    end
    object btnModificar: TdxBarLargeButton
      Caption = 'F3 - Modificar'
      Category = 0
      Hint = 'Modifica el registro actual'
      Visible = ivAlways
      ImageIndex = 1
      ShortCut = 114
      AutoGrayScale = False
    end
    object btnBaja: TdxBarLargeButton
      Caption = 'F5 - Baja'
      Category = 0
      Hint = 'Da de baja un registro'
      Visible = ivAlways
      ImageIndex = 25
      ShortCut = 116
      AutoGrayScale = False
    end
    object btnReactivar: TdxBarLargeButton
      Caption = 'F6 - Reactivar'
      Category = 0
      Hint = 'Reactiva un registro'
      Visible = ivAlways
      ImageIndex = 24
      ShortCut = 117
      AutoGrayScale = False
    end
    object btnGuardar: TdxBarLargeButton
      Caption = 'F11 - Guardar'
      Category = 0
      Enabled = False
      Hint = 'Guarda los cambios'
      Visible = ivAlways
      ImageIndex = 3
      ShortCut = 122
      AutoGrayScale = False
    end
    object btnCancelar: TdxBarLargeButton
      Caption = 'F12 - Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancela los cambios'
      Visible = ivAlways
      ImageIndex = 4
      ShortCut = 123
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
        'btnVerDetalle'
        'btnBaja'
        'btnSalir'
        'btnReactivar'
        'btnImprimir')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'btnGuardar'
        'btnCancelar')
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
    Top = 145
  end
  object EKBuscarSaldo: TEKBusquedaAvanzada
    CriteriosBusqueda = <
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
      end
      item
        Titulo = 'Fecha'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        TipoComboAncho = 200
        CambiarCondicion = False
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    UsarWhereOriginal = EK_Con_Where
    PantallaReducida = True
    Left = 53
    Top = 201
  end
  object ZQ_Sucursal: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from Sucursal s'
      'order by s.nombre')
    Params = <>
    Left = 708
    Top = 72
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
    Top = 257
  end
  object EKVista_RepSaldo: TEKVistaPreviaQR
    Reporte = RepSaldo
    ShowModal = False
    Left = 53
    Top = 305
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
    Left = 205
    Top = 305
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
    Left = 293
    Top = 305
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
    Left = 373
    Top = 305
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
    object ZP_Estadistica_IE_MediosTOTAL_EGRESO: TFloatField
      FieldName = 'TOTAL_EGRESO'
      currency = True
    end
    object ZP_Estadistica_IE_MediosTOTAL_INGRESO: TFloatField
      FieldName = 'TOTAL_INGRESO'
      currency = True
    end
    object ZP_Estadistica_IE_MediosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
  end
  object DS_estadistica_Parte_Diario: TDataSource
    DataSet = ZP_estadistica_Parte_Diario
    Left = 293
    Top = 353
  end
  object DS_Estadistica_IE_Medios: TDataSource
    DataSet = ZP_Estadistica_IE_Medios
    Left = 373
    Top = 353
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
      end>
    DataSet = ZP_Estadistica_IE_Medios
    Left = 485
    Top = 305
  end
  object ZP_Estadistica_Det_Mov: TZStoredProc
    Connection = DM.Conexion
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
    Left = 373
    Top = 113
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
    end
    object ZP_Estadistica_Det_MovPUNTO_VENTA: TIntegerField
      FieldName = 'PUNTO_VENTA'
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
  end
  object DS_Estadistica_Det_Mov: TDataSource
    DataSet = ZP_Estadistica_Det_Mov
    Left = 485
    Top = 113
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
    Left = 373
    Top = 161
  end
  object EKOrdenarGrillaDetMov: TEKOrdenarGrilla
    Grilla = DBGridEstadisticaDetMov
    Filtros = <
      item
        TituloColumna = 'NUMERO_CPB'
        Visible = True
      end
      item
        TituloColumna = 'CODIGO'
        Visible = True
      end
      item
        TituloColumna = 'PUNTO_VENTA'
        Visible = True
      end
      item
        TituloColumna = 'FECHA'
        Visible = True
      end
      item
        TituloColumna = 'NOMBRE_ENTIDAD'
        Visible = True
      end
      item
        TituloColumna = 'OBSERVACION'
        Visible = True
      end
      item
        TituloColumna = 'TIPO_COMPROBANTE'
        Visible = True
      end
      item
        TituloColumna = 'TIPO_MOVIMIENTO'
        Visible = True
      end
      item
        TituloColumna = 'IMPORTE_VENTA'
        Visible = True
      end>
    NombreGuardar = 'EstDispDetMov'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = True
    PermitirMover = True
    PermitirFiltrar = True
    Left = 485
    Top = 161
  end
  object EKVista_RepParteDiario: TEKVistaPreviaQR
    Reporte = RepParteDiario
    ShowModal = False
    Left = 278
    Top = 390
  end
  object EKVista_RepDetMov: TEKVistaPreviaQR
    Reporte = RepDetalleMov
    ShowModal = False
    Left = 469
    Top = 73
  end
end
