object FReporteMovProveedor: TFReporteMovProveedor
  Left = 307
  Top = 194
  Width = 870
  Height = 500
  Caption = 'FReporteMovProveedor'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 416
    Align = alClient
    TabOrder = 0
    object DBGridMercaderiaVendida: TDBGrid
      Left = 1
      Top = 1
      Width = 860
      Height = 414
      Hint = 'Presione sobre el titulo de la columna para modificar el orden'
      Align = alClient
      Color = 16772842
      DataSource = DS_MovimientoProveedores
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'APELLIDO_Y_NOMBRE'
          Title.Caption = 'Proveedor'
          Width = 225
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ie_Cuenta'
          Title.Caption = 'Cuenta'
          Width = 176
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA'
          Title.Caption = 'Fecha emision'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_MDC'
          Title.Caption = 'Fecha PD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_ORDEN'
          Title.Caption = 'Nro Orden'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_CORTO'
          Title.Caption = 'Codigo corto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
          Title.Caption = 'Medio'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_CHEQUE_TRANSF'
          Title.Caption = 'Nro Cheque/Transf'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_CONCEPTO'
          Title.Caption = 'Concepto'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IMPORTE'
          Title.Caption = 'Importe'
          Visible = True
        end>
    end
    object RepMovProveedores: TQuickRep
      Tag = 99
      Left = 116
      Top = 113
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = ZQ_MovimientoProveedores
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
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrintIfEmpty = True
      ReportTitle = '+'
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsNormal
      object QRBand12: TQRBand
        Tag = 99
        Left = 38
        Top = 38
        Width = 718
        Height = 87
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
          230.187500000000000000
          1899.708333333333000000)
        BandType = rbPageHeader
        object QRLabel11: TQRLabel
          Left = 264
          Top = 61
          Width = 190
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            698.500000000000000000
            161.395833333333300000
            502.708333333333400000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'Movimientos Proveedores'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object RepMovProveedores_Reporte_Titulo_2: TQRLabel
          Left = 226
          Top = 36
          Width = 265
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            597.958333333333400000
            95.250000000000000000
            701.145833333333400000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepMovProveedores_Reporte_Titulo_2'
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
        object RepMovProveedores_Reporte_Titulo_1: TQRLabel
          Left = 184
          Top = 12
          Width = 350
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            486.833333333333400000
            31.750000000000000000
            926.041666666666800000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepMovProveedores_Reporte_Titulo_1'
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
      end
      object QRGroup1: TQRGroup
        Tag = 99
        Left = 38
        Top = 143
        Width = 718
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          58.208333333333340000
          1899.708333333333000000)
        Expression = 'ZQ_MovimientoProveedores.NRO_PROVEEDOR'
        FooterBand = QRBand19
        Master = RepMovProveedores
        ReprintOnNewPage = False
        object QRDBText14: TQRDBText
          Left = 87
          Top = 2
          Width = 122
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            230.187500000000000000
            5.291666666666667000
            322.791666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_MovimientoProveedores
          DataField = 'APELLIDO_Y_NOMBRE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRLabel12: TQRLabel
          Left = 8
          Top = 1
          Width = 73
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            21.166666666666670000
            2.645833333333333000
            193.145833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Proveedor:'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
      end
      object QRBand16: TQRBand
        Tag = 99
        Left = 38
        Top = 203
        Width = 718
        Height = 26
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
          68.791666666666680000
          1899.708333333333000000)
        BandType = rbSummary
        object QRLabel2: TQRLabel
          Left = 385
          Top = 5
          Width = 235
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1018.645833333333000000
            13.229166666666670000
            621.770833333333400000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Importes Totales:'
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
        object QRExpr4: TQRExpr
          Left = 625
          Top = 5
          Width = 88
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1653.645833333333000000
            13.229166666666670000
            232.833333333333400000)
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
            'FORMATNUMERIC('#39'$ ###,###,###,##0.00'#39',SUM(ZQ_MovimientoProveedore' +
            's.IMPORTE))'
          FontSize = 8
        end
      end
      object QRBand17: TQRBand
        Tag = 99
        Left = 38
        Top = 165
        Width = 718
        Height = 16
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
          42.333333333333340000
          1899.708333333333000000)
        BandType = rbDetail
        object QRDBText16: TQRDBText
          Left = 3
          Top = 2
          Width = 59
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            7.937500000000000000
            5.291666666666667000
            156.104166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_MovimientoProveedores
          DataField = 'FECHA'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText17: TQRDBText
          Left = 132
          Top = 2
          Width = 76
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            349.250000000000000000
            5.291666666666667000
            201.083333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_MovimientoProveedores
          DataField = 'NRO_ORDEN'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText19: TQRDBText
          Left = 68
          Top = 2
          Width = 59
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            179.916666666666700000
            5.291666666666667000
            156.104166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_MovimientoProveedores
          DataField = 'FECHA_MDC'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText20: TQRDBText
          Left = 212
          Top = 2
          Width = 29
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            560.916666666666800000
            5.291666666666667000
            76.729166666666680000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_MovimientoProveedores
          DataField = 'CODIGO_CORTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText22: TQRDBText
          Left = 247
          Top = 2
          Width = 76
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            653.520833333333400000
            5.291666666666667000
            201.083333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_MovimientoProveedores
          DataField = 'DESCRIPCION'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText23: TQRDBText
          Left = 327
          Top = 2
          Width = 73
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            865.187500000000000000
            5.291666666666667000
            193.145833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_MovimientoProveedores
          DataField = 'NRO_CHEQUE_TRANSF'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText2: TQRDBText
          Left = 629
          Top = 2
          Width = 84
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            1664.229166666667000000
            5.291666666666667000
            222.250000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_MovimientoProveedores
          DataField = 'IMPORTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText3: TQRDBText
          Left = 514
          Top = 2
          Width = 112
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            1359.958333333333000000
            5.291666666666667000
            296.333333333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_MovimientoProveedores
          DataField = 'ie_Cuenta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText4: TQRDBText
          Left = 403
          Top = 2
          Width = 108
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            1066.270833333333000000
            5.291666666666667000
            285.750000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_MovimientoProveedores
          DataField = 'NOMBRE_CONCEPTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
      end
      object ChildBand5: TQRChildBand
        Tag = 99
        Left = 38
        Top = 125
        Width = 718
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clSilver
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          47.625000000000000000
          1899.708333333333000000)
        ParentBand = QRBand12
        object QRLabel3: TQRLabel
          Left = 4
          Top = 1
          Width = 59
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            10.583333333333330000
            2.645833333333333000
            156.104166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'F. Emision'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel4: TQRLabel
          Left = 134
          Top = 1
          Width = 60
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            354.541666666666700000
            2.645833333333333000
            158.750000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nro Orden'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel6: TQRLabel
          Left = 247
          Top = 1
          Width = 58
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            653.520833333333400000
            2.645833333333333000
            153.458333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo mov.'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel7: TQRLabel
          Left = 330
          Top = 1
          Width = 69
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            873.124999999999900000
            2.645833333333333000
            182.562500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Nro Cheque'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel8: TQRLabel
          Left = 666
          Top = 1
          Width = 47
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            1762.125000000000000000
            2.645833333333333000
            124.354166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Importe'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel1: TQRLabel
          Left = 72
          Top = 1
          Width = 54
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            190.500000000000000000
            2.645833333333333000
            142.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Fecha PD'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel5: TQRLabel
          Left = 212
          Top = 1
          Width = 27
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            560.916666666666800000
            2.645833333333333000
            71.437500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'C.C.'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel9: TQRLabel
          Left = 403
          Top = 1
          Width = 55
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            1066.270833333333000000
            2.645833333333333000
            145.520833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Concepto'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel10: TQRLabel
          Left = 513
          Top = 1
          Width = 42
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            1357.312500000000000000
            2.645833333333333000
            111.125000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cuenta'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
      end
      object QRBand19: TQRBand
        Tag = 99
        Left = 38
        Top = 181
        Width = 718
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          58.208333333333340000
          1899.708333333333000000)
        BandType = rbGroupFooter
        object QRLabel39: TQRLabel
          Left = 391
          Top = 3
          Width = 235
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1034.520833333333000000
            7.937500000000000000
            621.770833333333400000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Total Importe:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 7
        end
        object QRExpr2: TQRExpr
          Left = 631
          Top = 3
          Width = 83
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1669.520833333333000000
            7.937500000000000000
            219.604166666666700000)
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
          ResetAfterPrint = True
          Transparent = False
          WordWrap = True
          Expression = 
            'FORMATNUMERIC('#39'$ ###,###,###,##0.00'#39',SUM(ZQ_MovimientoProveedore' +
            's.IMPORTE))'
          FontSize = 7
        end
      end
      object QRBand18: TQRBand
        Tag = 99
        Left = 38
        Top = 229
        Width = 718
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
          1899.708333333333000000)
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
            34.395833333333340000
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
      end
    end
  end
  object EKVistaPreviaQR1: TEKVistaPreviaQR
    Reporte = RepMovProveedores
    ShowModal = False
    Left = 184
    Top = 112
  end
  object ZQ_MovimientoProveedores: TZQuery
    Connection = DM.Conexion
    OnCalcFields = ZQ_MovimientoProveedoresCalcFields
    SQL.Strings = (
      
        'select m.fecha, m.nro_proveedor, m.nro_orden, cm.fecha_mdc, cm.n' +
        'ro_cheque_transf, mc.id_medio, mc.codigo_corto, mc.nombre_medio_' +
        'cobro_pago,cm.importe, p.apellido_y_nombre, c.id_concepto, c.nom' +
        'bre_concepto, ob.descripcion, cm.id_cuenta_ingreso, cm.id_cuenta' +
        '_egreso'
      'from ie_movimientos m'
      
        'left join ie_cuentas_movimientos cm on(m.nro_movimiento = cm.nro' +
        '_movimiento)'
      'left join ie_proveedores p on(m.nro_proveedor = p.nro_proveedor)'
      
        'left join objeto_movimientos ob on(m.id_objeto_movimiento = ob.i' +
        'd_objeto_movimiento)'
      'left join ie_medios_cobro_pago mc on(cm.id_medio = mc.id_medio)'
      'left join ie_conceptos c on (m.id_concepto = c.id_concepto)'
      'order by  p.nro_proveedor,m.nro_movimiento')
    Params = <>
    Left = 88
    Top = 64
    object ZQ_MovimientoProveedoresNRO_ORDEN: TIntegerField
      FieldName = 'NRO_ORDEN'
    end
    object ZQ_MovimientoProveedoresFECHA_MDC: TDateField
      FieldName = 'FECHA_MDC'
    end
    object ZQ_MovimientoProveedoresNRO_CHEQUE_TRANSF: TIntegerField
      FieldName = 'NRO_CHEQUE_TRANSF'
    end
    object ZQ_MovimientoProveedoresCODIGO_CORTO: TStringField
      FieldName = 'CODIGO_CORTO'
      Size = 4
    end
    object ZQ_MovimientoProveedoresNOMBRE_MEDIO_COBRO_PAGO: TStringField
      FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
      Size = 30
    end
    object ZQ_MovimientoProveedoresIMPORTE: TFloatField
      FieldName = 'IMPORTE'
      currency = True
    end
    object ZQ_MovimientoProveedoresAPELLIDO_Y_NOMBRE: TStringField
      FieldName = 'APELLIDO_Y_NOMBRE'
      Size = 60
    end
    object ZQ_MovimientoProveedoresNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 240
    end
    object ZQ_MovimientoProveedoresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object ZQ_MovimientoProveedoresNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
    end
    object ZQ_MovimientoProveedoresie_Cuenta: TStringField
      FieldKind = fkCalculated
      FieldName = 'ie_Cuenta'
      Size = 50
      Calculated = True
    end
    object ZQ_MovimientoProveedoresFECHA: TDateField
      FieldName = 'FECHA'
    end
    object ZQ_MovimientoProveedoresID_CUENTA_INGRESO: TIntegerField
      FieldName = 'ID_CUENTA_INGRESO'
    end
    object ZQ_MovimientoProveedoresID_CUENTA_EGRESO: TIntegerField
      FieldName = 'ID_CUENTA_EGRESO'
    end
    object ZQ_MovimientoProveedorescalc_importe: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calc_importe'
      currency = True
      Calculated = True
    end
  end
  object DS_MovimientoProveedores: TDataSource
    DataSet = ZQ_MovimientoProveedores
    Left = 256
    Top = 64
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
    Left = 40
    Top = 264
    DockControlHeights = (
      0
      0
      0
      52)
    object btnNuevo: TdxBarLargeButton
      Caption = 'Nuevo'
      Category = 0
      Hint = 'Inserta un nuevo registro'
      Visible = ivAlways
      ImageIndex = 0
      ShortCut = 113
      AutoGrayScale = False
      HotImageIndex = 0
    end
    object btnModificar: TdxBarLargeButton
      Caption = 'Modificar'
      Category = 0
      Hint = 'Modifica el registro actual'
      Visible = ivAlways
      ImageIndex = 1
      ShortCut = 114
      AutoGrayScale = False
      HotImageIndex = 1
    end
    object btnEliminar: TdxBarLargeButton
      Caption = 'Eliminar'
      Category = 0
      Hint = 'Eliminar el registro actual'
      Visible = ivAlways
      ImageIndex = 2
      ShortCut = 115
      AutoGrayScale = False
      HotImageIndex = 2
    end
    object btnGuardar: TdxBarLargeButton
      Caption = 'Guardar'
      Category = 0
      Enabled = False
      Hint = 'Guarda los cambios'
      Visible = ivAlways
      ImageIndex = 3
      ShortCut = 121
      AutoGrayScale = False
      HotImageIndex = 3
    end
    object btnCancelar: TdxBarLargeButton
      Caption = 'Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancela los cambios'
      Visible = ivAlways
      ImageIndex = 4
      ShortCut = 120
      AutoGrayScale = False
      HotImageIndex = 4
    end
    object btnSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir sin seleccionar'
      Visible = ivAlways
      ImageIndex = 6
      ShortCut = 123
      OnClick = btnSalirClick
      AutoGrayScale = False
      HotImageIndex = 6
    end
    object btnBuscar: TdxBarLargeButton
      Caption = 'Buscar'
      Category = 0
      Hint = 'Buscar'
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
    object GrupoVisualizando: TdxBarGroup
      Items = (
        'btnNuevo'
        'btnModificar'
        'btnEliminar'
        'btnSalir'
        'btnBuscar'
        'btnImprimir')
    end
    object GrupoEditando: TdxBarGroup
      Enabled = False
      Items = (
        'btnGuardar'
        'btnCancelar')
    end
  end
  object EKBusquedaAvanzada1: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Fecha Emision Desde'
        Campo = 'fecha'
        Tabla = 'm'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndice = 2
        TipoCampoIndiceVer = '>='
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Fecha Emision Hasta'
        Campo = 'fecha'
        Tabla = 'm'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndice = 4
        TipoCampoIndiceVer = '<='
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Fecha PD Desde'
        Campo = 'fecha_mdc'
        Tabla = 'cm'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndice = 2
        TipoCampoIndiceVer = '>='
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Fecha PD Hasta'
        Campo = 'Fecha_mdc'
        Tabla = 'cm'
        TipoCampo = EK_Fecha
        Mascara = '##/##/####'
        TipoCampoIndice = 4
        TipoCampoIndiceVer = '<='
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Proveedor'
        Campo = 'apellido_y_nombre'
        Tabla = 'p'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Medio'
        Campo = 'id_medio'
        Tabla = 'mc'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_Medio
        TipoCombollenarCampo = 'nombre_medio_cobro_pago'
        TipoCombollenarCampoReal = 'id_medio'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Concepto'
        Campo = 'id_concepto'
        Tabla = 'c'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_Concepto
        TipoCombollenarCampo = 'nombre_concepto'
        TipoCombollenarCampoReal = 'id_concepto'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Tipo Movimiento'
        Campo = 'ID_objeto_movimiento'
        Tabla = 'ob'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_Objeto_Movimiento
        TipoCombollenarCampo = 'descripcion'
        TipoCombollenarCampoReal = 'ID_objeto_movimiento'
        TipoComboEditable = False
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_MovimientoProveedores
    SQL.Strings = (
      
        'select m.fecha, m.nro_proveedor, m.nro_orden, cm.fecha_mdc, cm.n' +
        'ro_cheque_transf, mc.id_medio, mc.codigo_corto, mc.nombre_medio_' +
        'cobro_pago,cm.importe, p.apellido_y_nombre, c.id_concepto, c.nom' +
        'bre_concepto, ob.descripcion,  ob.id_objeto_movimiento, cm.id_cu' +
        'enta_ingreso, cm.id_cuenta_egreso'
      'from ie_movimientos m'
      
        'left join ie_cuentas_movimientos cm on(m.nro_movimiento = cm.nro' +
        '_movimiento)'
      'left join ie_proveedores p on(m.nro_proveedor = p.nro_proveedor)'
      
        'left join objeto_movimientos ob on(m.id_objeto_movimiento = ob.i' +
        'd_objeto_movimiento)'
      'left join ie_medios_cobro_pago mc on(cm.id_medio = mc.id_medio)'
      'left join ie_conceptos c on (m.id_concepto = c.id_concepto)'
      'order by  p.nro_proveedor,m.nro_movimiento')
    SQL_Select.Strings = (
      
        'select m.fecha, m.nro_proveedor, m.nro_orden, cm.fecha_mdc, cm.n' +
        'ro_cheque_transf, mc.id_medio, mc.codigo_corto, mc.nombre_medio_' +
        'cobro_pago,cm.importe, p.apellido_y_nombre, c.id_concepto, c.nom' +
        'bre_concepto, ob.descripcion,  ob.id_objeto_movimiento, cm.id_cu' +
        'enta_ingreso, cm.id_cuenta_egreso')
    SQL_From.Strings = (
      'from ie_movimientos m'
      
        'left join ie_cuentas_movimientos cm on(m.nro_movimiento = cm.nro' +
        '_movimiento)'
      'left join ie_proveedores p on(m.nro_proveedor = p.nro_proveedor)'
      
        'left join objeto_movimientos ob on(m.id_objeto_movimiento = ob.i' +
        'd_objeto_movimiento)'
      'left join ie_medios_cobro_pago mc on(cm.id_medio = mc.id_medio)'
      'left join ie_conceptos c on (m.id_concepto = c.id_concepto)')
    SQL_Orden.Strings = (
      'order by  p.nro_proveedor,m.nro_movimiento')
    UsarWhereOriginal = EK_Sin_Where
    PantallaReducida = True
    Left = 48
    Top = 152
  end
  object ZQ_Cuentas: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_cuentas cta'
      'where cta.id_cuenta = :ID_CUENTA')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_CUENTA'
        ParamType = ptUnknown
      end>
    Left = 416
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CUENTA'
        ParamType = ptUnknown
      end>
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
  end
  object ZQ_Objeto_Movimiento: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from objeto_movimientos')
    Params = <>
    Left = 560
    Top = 64
    object ZQ_Objeto_MovimientoID_OBJETO_MOVIMIENTO: TIntegerField
      FieldName = 'ID_OBJETO_MOVIMIENTO'
      Required = True
    end
    object ZQ_Objeto_MovimientoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object ZQ_Objeto_MovimientoCODIGO_CORTO: TStringField
      FieldName = 'CODIGO_CORTO'
      Size = 6
    end
  end
  object ZQ_Medio: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_medios_cobro_pago')
    Params = <>
    Left = 672
    Top = 64
    object ZQ_MedioID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
      Required = True
    end
    object ZQ_MedioCODIGO_CORTO: TStringField
      FieldName = 'CODIGO_CORTO'
      Size = 4
    end
    object ZQ_MedioNOMBRE_MEDIO_COBRO_PAGO: TStringField
      FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
      Size = 30
    end
  end
  object ZQ_Concepto: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_conceptos')
    Params = <>
    Left = 752
    Top = 64
    object ZQ_ConceptoID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
      Required = True
    end
    object ZQ_ConceptoCOD_CORTO: TStringField
      FieldName = 'COD_CORTO'
      Size = 6
    end
    object ZQ_ConceptoNOMBRE_CONCEPTO: TStringField
      FieldName = 'NOMBRE_CONCEPTO'
      Size = 240
    end
    object ZQ_ConceptoBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ConceptoIMPORTE: TFloatField
      FieldName = 'IMPORTE'
    end
  end
end
