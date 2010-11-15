object FReporteMovProveedor: TFReporteMovProveedor
  Left = 307
  Top = 194
  Width = 897
  Height = 500
  Caption = 'Reporte Movimientos'
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
    Width = 889
    Height = 416
    Align = alClient
    TabOrder = 0
    object DBGridMercaderiaVendida: TDBGrid
      Left = 1
      Top = 212
      Width = 887
      Height = 185
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
          Width = 244
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ie_Cuenta'
          Title.Alignment = taCenter
          Title.Caption = 'Cuenta'
          Width = 176
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha emision'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'FECHA_MDC'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha PD'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NRO_ORDEN_STRING'
          Title.Alignment = taCenter
          Title.Caption = 'Nro Orden'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_CORTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_MEDIO_COBRO_PAGO'
          Title.Alignment = taCenter
          Title.Caption = 'Medio'
          Width = 134
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NRO_CHEQUE_TRANSF'
          Title.Alignment = taCenter
          Title.Caption = 'Nro Cheque/Transf'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_CONCEPTO'
          Title.Alignment = taCenter
          Title.Caption = 'Concepto'
          Width = 160
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ANULADO'
          Title.Alignment = taCenter
          Title.Caption = 'Anulado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_debe'
          Title.Alignment = taCenter
          Title.Caption = 'Debe'
          Visible = True
        end
        item
          Expanded = False
          FieldName = '_haber'
          Title.Alignment = taCenter
          Title.Caption = 'Haber'
          Visible = True
        end>
    end
    object RepMovProveedores: TQuickRep
      Tag = 99
      Left = 268
      Top = 281
      Width = 1123
      Height = 794
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
        Width = 1047
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
          2770.187500000000000000)
        BandType = rbPageHeader
        object QRLabel11: TQRLabel
          Left = 428
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
            1132.416666666667000000
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
          Left = 391
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
            1034.520833333333000000
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
          Left = 348
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
            920.750000000000000000
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
        Width = 1047
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
          2770.187500000000000000)
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
        Width = 1047
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
          2770.187500000000000000)
        BandType = rbSummary
        object QRLabel2: TQRLabel
          Left = 558
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
            1476.375000000000000000
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
          Left = 799
          Top = 5
          Width = 120
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2114.020833333333000000
            13.229166666666670000
            317.500000000000000000)
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
            's._debe))'
          FontSize = 8
        end
        object QRExpr3: TQRExpr
          Left = 923
          Top = 5
          Width = 120
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2442.104166666667000000
            13.229166666666670000
            317.500000000000000000)
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
            's._haber))'
          FontSize = 8
        end
      end
      object QRBand17: TQRBand
        Tag = 99
        Left = 38
        Top = 165
        Width = 1047
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
          2770.187500000000000000)
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
          Left = 798
          Top = 2
          Width = 120
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            2111.375000000000000000
            5.291666666666667000
            317.500000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_MovimientoProveedores
          DataField = '_debe'
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
          Left = 626
          Top = 2
          Width = 167
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            1656.291666666667000000
            5.291666666666667000
            441.854166666666700000)
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
          Width = 218
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
            576.791666666666800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = True
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
        object QRDBText1: TQRDBText
          Left = 922
          Top = 2
          Width = 120
          Height = 12
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            31.750000000000000000
            2439.458333333333000000
            5.291666666666667000
            317.500000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_MovimientoProveedores
          DataField = '_haber'
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
        Width = 1047
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
          2770.187500000000000000)
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
            873.125000000000000000
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
            560.916666666666700000
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
          Left = 625
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
            1653.645833333333000000
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
        object QRLabel13: TQRLabel
          Left = 957
          Top = 1
          Width = 85
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            2532.062500000000000000
            2.645833333333333000
            224.895833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Importe Haber'
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
        object QRLabel14: TQRLabel
          Left = 838
          Top = 1
          Width = 81
          Height = 16
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            42.333333333333340000
            2217.208333333333000000
            2.645833333333333000
            214.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Importe Debe'
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
        Width = 1047
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
          2770.187500000000000000)
        BandType = rbGroupFooter
        object QRLabel39: TQRLabel
          Left = 558
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
            1476.375000000000000000
            7.937500000000000000
            621.770833333333400000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = 'Total Importes:'
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
          Left = 798
          Top = 3
          Width = 120
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2111.375000000000000000
            7.937500000000000000
            317.500000000000000000)
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
            's._debe))'
          FontSize = 7
        end
        object QRExpr1: TQRExpr
          Left = 922
          Top = 3
          Width = 121
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            2439.458333333333000000
            7.937500000000000000
            320.145833333333400000)
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
            's._haber))'
          FontSize = 7
        end
      end
      object QRBand18: TQRBand
        Tag = 99
        Left = 38
        Top = 229
        Width = 1047
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
          2770.187500000000000000)
        BandType = rbPageFooter
      end
    end
    object PanelDatosProveedor: TPanel
      Left = 1
      Top = 1
      Width = 887
      Height = 133
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
      object Label1: TLabel
        Left = 74
        Top = 29
        Width = 64
        Height = 13
        Caption = 'Proveedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 19
        Top = 55
        Width = 119
        Height = 13
        Caption = 'Nombre de Fantas'#237'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 80
        Top = 82
        Width = 58
        Height = 13
        Caption = 'Direcci'#243'n:'
        Transparent = True
      end
      object Label16: TLabel
        Left = 84
        Top = 109
        Width = 54
        Height = 13
        Caption = 'Tel'#233'fono:'
        Transparent = True
      end
      object Label7: TLabel
        Left = 459
        Top = 82
        Width = 94
        Height = 13
        Caption = 'Nro Documento:'
        Transparent = True
      end
      object Label6: TLabel
        Left = 455
        Top = 55
        Width = 98
        Height = 13
        Caption = 'Tipo Documento:'
        Transparent = True
      end
      object Label3: TLabel
        Left = 514
        Top = 29
        Width = 39
        Height = 13
        Caption = 'E-Mail:'
        Transparent = True
      end
      object DBTxtRazonSocial: TDBText
        Left = 141
        Top = 27
        Width = 293
        Height = 17
        DataField = 'APELLIDO_Y_NOMBRE'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBTxtNomFan: TDBText
        Left = 141
        Top = 53
        Width = 293
        Height = 17
        DataField = 'NOMBRE_FANTASIA'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 141
        Top = 80
        Width = 293
        Height = 17
        DataField = 'DIRECCION'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 141
        Top = 107
        Width = 293
        Height = 17
        DataField = 'TELEFONOS'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 557
        Top = 27
        Width = 290
        Height = 17
        DataField = 'EMAIL'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 557
        Top = 53
        Width = 290
        Height = 17
        DataField = 'TIPO_DOCUMENTO'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 557
        Top = 80
        Width = 290
        Height = 17
        DataField = 'NRO_DOCUMENTO'
        DataSource = DS_Proveedor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 887
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          887
          26)
        object Shape1: TShape
          Left = 2
          Top = 2
          Width = 865
          Height = 22
          Anchors = [akLeft, akTop, akRight]
          Brush.Color = clGray
          Pen.Color = clGray
          Shape = stRoundRect
        end
        object Shape2: TShape
          Left = 4
          Top = 0
          Width = 865
          Height = 22
          Anchors = [akLeft, akTop, akRight]
          Brush.Color = clTeal
          Shape = stRoundRect
        end
        object Label4: TLabel
          Left = 1
          Top = 3
          Width = 868
          Height = 18
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'PROVEEDOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel
          Left = 2
          Top = 2
          Width = 868
          Height = 18
          Alignment = taCenter
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = 'PROVEEDOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoBk
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
      end
    end
    object pResumen: TPanel
      Left = 1
      Top = 397
      Width = 887
      Height = 18
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object lblSaldo: TLabel
        Left = 824
        Top = 0
        Width = 63
        Height = 18
        Align = alRight
        Caption = 'lblSaldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object PanelFiltrosBusqueda: TPanel
      Left = 1
      Top = 134
      Width = 887
      Height = 78
      Align = alTop
      BevelOuter = bvNone
      Caption = 'PanelFiltrosBusqueda'
      TabOrder = 4
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 887
        Height = 78
        Align = alClient
        Caption = '  Filtro Busqueda  '
        TabOrder = 0
        object lblFiltroMedio: TLabel
          Left = 76
          Top = 13
          Width = 38
          Height = 13
          Caption = 'Medio:'
          Transparent = True
        end
        object lblFiltroConcepto: TLabel
          Left = 55
          Top = 29
          Width = 59
          Height = 13
          Caption = 'Concepto:'
          Transparent = True
        end
        object lblFiltroTipoMov: TLabel
          Left = 12
          Top = 45
          Width = 102
          Height = 13
          Caption = 'Tipo  Movimiento:'
          Transparent = True
        end
        object lblFiltroEmiDesde: TLabel
          Left = 328
          Top = 13
          Width = 103
          Height = 13
          Caption = 'F. Emisi'#243'n Desde:'
          Transparent = True
        end
        object lblFiltroEmiHasta: TLabel
          Left = 332
          Top = 29
          Width = 99
          Height = 13
          Caption = 'F. Emisi'#243'n Hasta:'
          Transparent = True
        end
        object lblFiltroPDDesde: TLabel
          Left = 592
          Top = 13
          Width = 75
          Height = 13
          Caption = 'F. PD Desde:'
          Transparent = True
        end
        object lblFiltroPDHasta: TLabel
          Left = 596
          Top = 29
          Width = 71
          Height = 13
          Caption = 'F. PD Hasta:'
          Transparent = True
        end
      end
    end
  end
  object EKVistaPreviaQR1: TEKVistaPreviaQR
    Reporte = RepMovProveedores
    ShowModal = False
    VerGuardar = False
    VerExpImagen = False
    VerExpExel = False
    Left = 616
    Top = 338
  end
  object ZQ_MovimientoProveedores: TZQuery
    Connection = DM.Conexion
    OnCalcFields = ZQ_MovimientoProveedoresCalcFields
    SQL.Strings = (
      
        'select m.fecha, m.nro_proveedor, m.nro_orden_string, cm.fecha_md' +
        'c, cm.nro_cheque_transf, mc.id_medio, mc.codigo_corto, mc.nombre' +
        '_medio_cobro_pago,cm.importe, p.apellido_y_nombre, c.id_concepto' +
        ', c.nombre_concepto, ob.descripcion, cm.id_cuenta_ingreso, cm.id' +
        '_cuenta_egreso, m.anulado, cm.conciliado'
      'from ie_movimientos m'
      
        'left join ie_cuentas_movimientos cm on(m.nro_movimiento = cm.nro' +
        '_movimiento)'
      'left join ie_proveedores p on(m.nro_proveedor = p.nro_proveedor)'
      
        'left join objeto_movimientos ob on(m.id_objeto_movimiento = ob.i' +
        'd_objeto_movimiento)'
      'left join ie_medios_cobro_pago mc on(cm.id_medio = mc.id_medio)'
      'left join ie_conceptos c on (m.id_concepto = c.id_concepto)'
      'order by m.fecha, m.nro_movimiento')
    Params = <>
    Left = 64
    Top = 224
    object ZQ_MovimientoProveedoresFECHA_MDC: TDateField
      FieldName = 'FECHA_MDC'
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
    object ZQ_MovimientoProveedores_debe: TFloatField
      FieldKind = fkCalculated
      FieldName = '_debe'
      currency = True
      Calculated = True
    end
    object ZQ_MovimientoProveedores_haber: TFloatField
      FieldKind = fkCalculated
      FieldName = '_haber'
      currency = True
      Calculated = True
    end
    object ZQ_MovimientoProveedoresID_MEDIO: TIntegerField
      FieldName = 'ID_MEDIO'
      Required = True
    end
    object ZQ_MovimientoProveedoresID_CONCEPTO: TIntegerField
      FieldName = 'ID_CONCEPTO'
      Required = True
    end
    object ZQ_MovimientoProveedoresNRO_ORDEN_STRING: TStringField
      FieldName = 'NRO_ORDEN_STRING'
    end
    object ZQ_MovimientoProveedoresANULADO: TStringField
      FieldName = 'ANULADO'
      Size = 1
    end
    object ZQ_MovimientoProveedoresCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      Size = 1
    end
    object ZQ_MovimientoProveedoresNRO_CHEQUE_TRANSF: TStringField
      FieldName = 'NRO_CHEQUE_TRANSF'
    end
  end
  object DS_MovimientoProveedores: TDataSource
    DataSet = ZQ_MovimientoProveedores
    Left = 64
    Top = 272
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
    Left = 752
    Top = 338
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
  object EKBusquedaAvanzada: TEKBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Proveedor'
        Campo = 'nro_proveedor'
        Tabla = 'p'
        TipoCampo = EK_Numero
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = '='
        TipoCombollenarSQL = ZQ_BuscarProveedor
        TipoCombollenarCampo = 'APELLIDO_Y_NOMBRE'
        TipoCombollenarCampoReal = 'nro_proveedor'
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
      end
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
        Titulo = 'Conciliado'
        Campo = 'conciliado'
        Tabla = 'cm'
        TipoCampoIngreso = EK_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboValores.Strings = (
          'SI'
          'NO')
        TipoComboEditable = False
        TipoComboValoresReales.Strings = (
          'S'
          'N')
        ItemIndex = -1
      end>
    CriteriosLocate = <>
    Modelo = DM.EKModelo
    DataSet = ZQ_MovimientoProveedores
    SQL.Strings = (
      
        'select m.fecha, m.nro_proveedor, m.nro_orden_string, cm.fecha_md' +
        'c, cm.nro_cheque_transf, mc.id_medio, mc.codigo_corto, mc.nombre' +
        '_medio_cobro_pago,cm.importe, p.apellido_y_nombre, c.id_concepto' +
        ', c.nombre_concepto, ob.descripcion,  ob.id_objeto_movimiento, c' +
        'm.id_cuenta_ingreso, cm.id_cuenta_egreso, m.anulado, cm.concilia' +
        'do'
      'from ie_movimientos m'
      
        'left join ie_cuentas_movimientos cm on(m.nro_movimiento = cm.nro' +
        '_movimiento)'
      'left join ie_proveedores p on(m.nro_proveedor = p.nro_proveedor)'
      
        'left join objeto_movimientos ob on(m.id_objeto_movimiento = ob.i' +
        'd_objeto_movimiento)'
      'left join ie_medios_cobro_pago mc on(cm.id_medio = mc.id_medio)'
      'left join ie_conceptos c on (m.id_concepto = c.id_concepto)'
      'order by m.fecha, m.nro_movimiento')
    SQL_Select.Strings = (
      
        'select m.fecha, m.nro_proveedor, m.nro_orden_string, cm.fecha_md' +
        'c, cm.nro_cheque_transf, mc.id_medio, mc.codigo_corto, mc.nombre' +
        '_medio_cobro_pago,cm.importe, p.apellido_y_nombre, c.id_concepto' +
        ', c.nombre_concepto, ob.descripcion,  ob.id_objeto_movimiento, c' +
        'm.id_cuenta_ingreso, cm.id_cuenta_egreso, m.anulado, cm.concilia' +
        'do')
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
      'order by m.fecha, m.nro_movimiento')
    UsarWhereOriginal = EK_Sin_Where
    PantallaReducida = True
    Left = 64
    Top = 336
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
    Left = 200
    Top = 224
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
    Left = 200
    Top = 272
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
    Left = 320
    Top = 224
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
    Left = 320
    Top = 272
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
  object ZQ_Proveedor: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_proveedores'
      'where nro_proveedor = :id_prov')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_prov'
        ParamType = ptUnknown
      end>
    Left = 200
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_prov'
        ParamType = ptUnknown
      end>
    object ZQ_ProveedorNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
      Required = True
    end
    object ZQ_ProveedorAPELLIDO_Y_NOMBRE: TStringField
      FieldName = 'APELLIDO_Y_NOMBRE'
      Size = 60
    end
    object ZQ_ProveedorNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 60
    end
    object ZQ_ProveedorDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 150
    end
    object ZQ_ProveedorTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 10
    end
    object ZQ_ProveedorNRO_DOCUMENTO: TStringField
      FieldName = 'NRO_DOCUMENTO'
      Size = 30
    end
    object ZQ_ProveedorTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Size = 30
    end
    object ZQ_ProveedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object ZQ_ProveedorBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_ProveedorDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 1000
    end
    object ZQ_ProveedorEDITABLE: TStringField
      FieldName = 'EDITABLE'
      Size = 1
    end
    object ZQ_ProveedorID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
    end
  end
  object DS_Proveedor: TDataSource
    DataSet = ZQ_Proveedor
    Left = 320
    Top = 336
  end
  object ZQ_BuscarProveedor: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from ie_proveedores'
      'order by APELLIDO_Y_NOMBRE')
    Params = <>
    Left = 432
    Top = 224
    object ZQ_BuscarProveedorNRO_PROVEEDOR: TIntegerField
      FieldName = 'NRO_PROVEEDOR'
      Required = True
    end
    object ZQ_BuscarProveedorAPELLIDO_Y_NOMBRE: TStringField
      FieldName = 'APELLIDO_Y_NOMBRE'
      Size = 60
    end
    object ZQ_BuscarProveedorNOMBRE_FANTASIA: TStringField
      FieldName = 'NOMBRE_FANTASIA'
      Size = 60
    end
    object ZQ_BuscarProveedorDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 150
    end
    object ZQ_BuscarProveedorTIPO_DOCUMENTO: TStringField
      FieldName = 'TIPO_DOCUMENTO'
      Size = 10
    end
    object ZQ_BuscarProveedorNRO_DOCUMENTO: TStringField
      FieldName = 'NRO_DOCUMENTO'
      Size = 30
    end
    object ZQ_BuscarProveedorTELEFONOS: TStringField
      FieldName = 'TELEFONOS'
      Size = 30
    end
    object ZQ_BuscarProveedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object ZQ_BuscarProveedorBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_BuscarProveedorDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 1000
    end
    object ZQ_BuscarProveedorEDITABLE: TStringField
      FieldName = 'EDITABLE'
      Size = 1
    end
    object ZQ_BuscarProveedorID_CUENTA: TIntegerField
      FieldName = 'ID_CUENTA'
    end
  end
end
