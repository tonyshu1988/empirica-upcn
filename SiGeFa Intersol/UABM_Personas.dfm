object FABM_Personas: TFABM_Personas
  Left = 346
  Top = 123
  Width = 972
  Height = 631
  Caption = 'ABM Personas'
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
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelFondo: TPanel
    Left = 0
    Top = 0
    Width = 964
    Height = 552
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 4
    object RepPersonaDetalle: TQuickRep
      Tag = 99
      Left = -8
      Top = 98
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
      ReportTitle = #39'//'
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
        object QRLabel6: TQRLabel
          Left = 273
          Top = 47
          Width = 171
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            722.312500000000000000
            124.354166666666700000
            452.437500000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'DETALLE PERSONA'
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
        object RepPersonaDetalle_Subtitulo: TQRLabel
          Left = 260
          Top = 26
          Width = 197
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            687.916666666666700000
            68.791666666666670000
            521.229166666666700000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepPersonaDetalle_Subtitulo'
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
        object RepPersonaDetalle_Titulo: TQRLabel
          Left = 244
          Top = 2
          Width = 230
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            645.583333333333400000
            5.291666666666667000
            608.541666666666700000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepPersonaDetalle_Titulo'
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
        Top = 110
        Width = 718
        Height = 170
        Frame.Color = clSilver
        Frame.DrawTop = True
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
          449.791666666666700000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRLabel8: TQRLabel
          Left = 16
          Top = 11
          Width = 101
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            42.333333333333340000
            29.104166666666670000
            267.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Apellido y Nombre'
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
          Left = 16
          Top = 25
          Width = 660
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            42.333333333333330000
            66.145833333333320000
            1746.250000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
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
        object QRLabel10: TQRLabel
          Left = 16
          Top = 43
          Width = 51
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            42.333333333333340000
            113.770833333333300000
            134.937500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Direcci'#243'n'
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
        object QRDBText9: TQRDBText
          Left = 16
          Top = 57
          Width = 268
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            42.333333333333330000
            150.812500000000000000
            709.083333333333200000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
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
        object QRDBText10: TQRDBText
          Left = 288
          Top = 57
          Width = 52
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            762.000000000000000000
            150.812500000000000000
            137.583333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
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
        object QRLabel11: TQRLabel
          Left = 288
          Top = 43
          Width = 62
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            762.000000000000000000
            113.770833333333300000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'C'#243'd. Postal'
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
        object QRDBText11: TQRDBText
          Left = 364
          Top = 57
          Width = 149
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            963.083333333333200000
            150.812500000000000000
            394.229166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
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
        object QRLabel12: TQRLabel
          Left = 364
          Top = 43
          Width = 54
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            963.083333333333400000
            113.770833333333300000
            142.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Localidad'
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
          Left = 528
          Top = 57
          Width = 180
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1397.000000000000000000
            150.812500000000000000
            476.250000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
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
        object QRLabel13: TQRLabel
          Left = 528
          Top = 43
          Width = 54
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            1397.000000000000000000
            113.770833333333300000
            142.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Provincia'
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
        object QRLabel14: TQRLabel
          Left = 16
          Top = 75
          Width = 47
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            42.333333333333340000
            198.437500000000000000
            124.354166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tel'#233'fono'
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
          Left = 16
          Top = 89
          Width = 332
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            42.333333333333330000
            235.479166666666700000
            878.416666666666800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
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
        object QRLabel15: TQRLabel
          Left = 356
          Top = 75
          Width = 35
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            941.916666666666700000
            198.437500000000000000
            92.604166666666680000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'eMail:'
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
        object QRDBText14: TQRDBText
          Left = 356
          Top = 89
          Width = 332
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            941.916666666666800000
            235.479166666666700000
            878.416666666666800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
          DataField = 'EMAIL'
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
          Top = 107
          Width = 96
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            42.333333333333340000
            283.104166666666700000
            254.000000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Fecha Nacimiento'
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
          Left = 16
          Top = 121
          Width = 105
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            42.333333333333330000
            320.145833333333300000
            277.812500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
          DataField = 'FECHA_NACIMIENTO'
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
        object QRDBText16: TQRDBText
          Left = 136
          Top = 121
          Width = 137
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            359.833333333333300000
            320.145833333333300000
            362.479166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
          DataField = 'NOMBRE_TIPO_DOC'
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
        object QRLabel18: TQRLabel
          Left = 136
          Top = 107
          Width = 86
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            359.833333333333400000
            283.104166666666700000
            227.541666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tipo Documento'
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
          Left = 288
          Top = 121
          Width = 164
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            762.000000000000000000
            320.145833333333300000
            433.916666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
          DataField = 'NUMERO_DOC'
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
        object QRLabel19: TQRLabel
          Left = 288
          Top = 107
          Width = 105
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            762.000000000000000000
            283.104166666666700000
            277.812500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'N'#250'mero Documento'
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
        object QRDBText18: TQRDBText
          Left = 16
          Top = 151
          Width = 177
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            42.333333333333330000
            399.520833333333300000
            468.312500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
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
        object QRLabel20: TQRLabel
          Left = 16
          Top = 137
          Width = 77
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            42.333333333333340000
            362.479166666666700000
            203.729166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Condici'#243'n Iva'
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
        object QRDBText20: TQRDBText
          Left = 200
          Top = 151
          Width = 257
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            529.166666666666700000
            399.520833333333300000
            679.979166666666800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
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
        object QRLabel21: TQRLabel
          Left = 200
          Top = 137
          Width = 57
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            529.166666666666700000
            362.479166666666700000
            150.812500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Cuit / Cuil'
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
      object QRBand3: TQRBand
        Tag = 99
        Left = 38
        Top = 360
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
        object QRlblPieDePaginaDetalle: TQRLabel
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
            304.270833333333400000)
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
        object QRLabel7: TQRLabel
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
      object ChildBand1: TQRChildBand
        Tag = 99
        Left = 38
        Top = 280
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
        ParentBand = QRBand2
        PrintOrder = cboAfterParent
        object QRLabel9: TQRLabel
          Left = 16
          Top = 2
          Width = 40
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            42.333333333333340000
            5.291666666666667000
            105.833333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Detalle'
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
        object QRDBText7: TQRDBText
          Left = 16
          Top = 16
          Width = 660
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            42.333333333333330000
            42.333333333333330000
            1746.250000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
          DataField = 'DESCRIPCION'
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
      object QRSubDetail2: TQRSubDetail
        Tag = 99
        Left = 38
        Top = 311
        Width = 718
        Height = 16
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
          42.333333333333340000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        Master = RepPersonaDetalle
        DataSet = ZQ_VerRelacionPersona
        PrintBefore = False
        PrintIfEmpty = True
        object QRLabel24: TQRLabel
          Left = 16
          Top = 2
          Width = 23
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            42.333333333333340000
            5.291666666666667000
            60.854166666666680000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Rol:'
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
        object QRDBText23: TQRDBText
          Left = 43
          Top = 2
          Width = 160
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            113.770833333333300000
            5.291666666666667000
            423.333333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_VerRelacionPersona
          DataField = 'DESCRIPCION'
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
          Left = 210
          Top = 2
          Width = 111
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            555.625000000000000000
            5.291666666666667000
            293.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Sucursal / Empresa:'
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
          Left = 325
          Top = 2
          Width = 209
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            859.895833333333200000
            5.291666666666667000
            552.979166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_VerRelacionPersona
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
      end
      object QRSubDetailObraSocial: TQRSubDetail
        Tag = 99
        Left = 38
        Top = 342
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
        Master = RepPersonaDetalle
        DataSet = ZQ_PersonaObraSocial
        PrintBefore = False
        PrintIfEmpty = True
        object QRLabel26: TQRLabel
          Left = 16
          Top = 2
          Width = 49
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            42.333333333333340000
            5.291666666666667000
            129.645833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Afiliado:'
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
          Left = 67
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
            177.270833333333300000
            5.291666666666667000
            304.270833333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_PersonaObraSocial
          DataField = 'NRO_AFILIADO'
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
        object QRDBText26: TQRDBText
          Left = 230
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
            608.541666666666800000
            5.291666666666667000
            304.270833333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_PersonaObraSocial
          DataField = 'codigo'
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
        object QRLabel27: TQRLabel
          Left = 184
          Top = 2
          Width = 42
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            486.833333333333400000
            5.291666666666667000
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
        object QRDBText27: TQRDBText
          Left = 420
          Top = 2
          Width = 293
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1111.250000000000000000
            5.291666666666667000
            775.229166666666800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_PersonaObraSocial
          DataField = 'obra_social'
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
        object QRLabel28: TQRLabel
          Left = 348
          Top = 2
          Width = 67
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            920.750000000000000000
            5.291666666666667000
            177.270833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Obra Social:'
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
      object ChildBandObraSocial: TQRChildBand
        Tag = 99
        Left = 38
        Top = 327
        Width = 718
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clMedGray
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
        object QRLabel31: TQRLabel
          Left = 16
          Top = 1
          Width = 85
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            42.333333333333340000
            2.645833333333333000
            224.895833333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Obras Sociales:'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
          WordWrap = False
          ExportAs = exptText
          FontSize = 7
        end
      end
    end
    object RepPersonaListado: TQuickRep
      Tag = 99
      Left = 39
      Top = 227
      Width = 1123
      Height = 794
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = ZQ_Persona
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
      ReportTitle = 'ISVistaPreviaListado'
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
        object QRLabel17: TQRLabel
          Left = 474
          Top = 47
          Width = 98
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1254.125000000000000000
            124.354166666666700000
            259.291666666666700000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'PERSONAS'
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
        object RepPersonaListado_Subtitulo: TQRLabel
          Left = 424
          Top = 26
          Width = 198
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            1121.833333333333000000
            68.791666666666670000
            523.875000000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepPersonaListado_Subtitulo'
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
        object RepPersonaListado_Titulo: TQRLabel
          Left = 407
          Top = 2
          Width = 232
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            1076.854166666667000000
            5.291666666666667000
            613.833333333333400000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = 'RepPersonaListado_Titulo'
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
        object QRDBText19: TQRDBText
          Left = 3
          Top = 0
          Width = 222
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            7.937500000000000000
            0.000000000000000000
            587.375000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
          DataField = 'NOMBRE'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText1: TQRDBText
          Left = 228
          Top = 0
          Width = 209
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
            552.979166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
          DataField = 'DIRECCION'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText2: TQRDBText
          Left = 1014
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
            2682.875000000000000000
            0.000000000000000000
            79.375000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
          DataField = 'BAJA'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText3: TQRDBText
          Left = 440
          Top = 0
          Width = 57
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1164.166666666667000000
            0.000000000000000000
            150.812500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
          DataField = 'CODIGO_POSTAL'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText4: TQRDBText
          Left = 500
          Top = 0
          Width = 131
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1322.916666666667000000
            0.000000000000000000
            346.604166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
          DataField = 'LOCALIDAD'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText5: TQRDBText
          Left = 634
          Top = 0
          Width = 185
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1677.458333333333000000
            0.000000000000000000
            489.479166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
          DataField = 'TELEFONO'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
        object QRDBText6: TQRDBText
          Left = 822
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
            2174.875000000000000000
            0.000000000000000000
            500.062500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_Persona
          DataField = 'EMAIL'
          Transparent = False
          WordWrap = True
          ExportAs = exptText
          FontSize = 7
        end
      end
      object QRBand11: TQRBand
        Tag = 99
        Left = 38
        Top = 209
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
            304.270833333333400000)
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
        Top = 187
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
          58.208333333333340000
          2770.187500000000000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbSummary
        object QRExpr18: TQRExpr
          Left = 4
          Top = 4
          Width = 191
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
            505.354166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          ResetAfterPrint = False
          Transparent = False
          WordWrap = True
          Expression = #39'Cantidad de Personas: '#39'+COUNT'
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
          82.020833333333340000
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
        object QRLabel29: TQRLabel
          Left = 2
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
            5.291666666666667000
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
        object QRLabel30: TQRLabel
          Left = 228
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
            603.250000000000000000
            5.291666666666667000
            164.041666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Direcci'#243'n'
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
          Left = 440
          Top = 2
          Width = 25
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1164.166666666667000000
            5.291666666666667000
            66.145833333333340000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'C.P.'
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
          Left = 500
          Top = 2
          Width = 63
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
            166.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Localidad'
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
          Left = 634
          Top = 2
          Width = 58
          Height = 14
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            37.041666666666670000
            1677.458333333333000000
            5.291666666666667000
            153.458333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Tel'#233'fono'
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
          Left = 822
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
            2174.875000000000000000
            5.291666666666667000
            108.479166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'E-Mail'
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
      object QRSubDetail1: TQRSubDetail
        Tag = 99
        Left = 38
        Top = 173
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
        Master = RepPersonaListado
        DataSet = ZQ_VerRelacionPersona
        PrintBefore = False
        PrintIfEmpty = True
        object QRDBText21: TQRDBText
          Left = 174
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
            460.375000000000000000
            2.645833333333333000
            423.333333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_VerRelacionPersona
          DataField = 'DESCRIPCION'
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
        object QRDBText22: TQRDBText
          Left = 456
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
            1206.500000000000000000
            2.645833333333333000
            552.979166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ZQ_VerRelacionPersona
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
        object QRLabel22: TQRLabel
          Left = 147
          Top = 1
          Width = 23
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            388.937500000000000000
            2.645833333333333000
            60.854166666666680000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Rol:'
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
        object QRLabel23: TQRLabel
          Left = 341
          Top = 1
          Width = 111
          Height = 13
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            34.395833333333340000
            902.229166666666700000
            2.645833333333333000
            293.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'Sucursal / Empresa:'
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
    end
    object DBGridClientes: TDBGrid
      Left = 5
      Top = 20
      Width = 954
      Height = 327
      Align = alClient
      Color = 14606012
      DataSource = DS_Persona
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridClientesDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_CORTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Corto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE'
          Title.Alignment = taCenter
          Title.Caption = 'Apellido y Nombre'
          Width = 229
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DIRECCION'
          Title.Alignment = taCenter
          Title.Caption = 'Direcci'#243'n'
          Width = 193
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO_POSTAL'
          Title.Alignment = taCenter
          Title.Caption = 'C.P.'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCALIDAD'
          Title.Alignment = taCenter
          Title.Caption = 'Localidad'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_PROVINCIA'
          Title.Alignment = taCenter
          Title.Caption = 'Provincia'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FECHA_NACIMIENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Fecha Nac.'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_TIPO_DOC'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo Doc.'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERO_DOC'
          Title.Alignment = taCenter
          Title.Caption = 'Nro. Doc.'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SEXO'
          Title.Alignment = taCenter
          Title.Caption = 'Sexo'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_TIPO_IVA'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo IVA'
          Width = 156
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUIT_CUIL'
          Title.Alignment = taCenter
          Title.Caption = 'Cuit/Cuil'
          Width = 139
          Visible = True
        end>
    end
    object PanelEdicion: TPanel
      Left = 5
      Top = 347
      Width = 954
      Height = 200
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object PageControl: TPageControl
        Left = 0
        Top = 0
        Width = 954
        Height = 200
        ActivePage = TabSheetObraSocial
        Align = alClient
        TabOrder = 0
        object TabSheetDatos: TTabSheet
          Caption = ' Datos Generales '
          Enabled = False
          object Label9: TLabel
            Left = 59
            Top = 119
            Width = 57
            Height = 13
            Caption = 'Provincia:'
            Transparent = True
          end
          object Label8: TLabel
            Left = 289
            Top = 89
            Width = 29
            Height = 13
            Caption = 'C.P.:'
            Transparent = True
          end
          object Label6: TLabel
            Left = 412
            Top = 65
            Width = 133
            Height = 13
            Caption = 'Tipo y Nro Documento:'
            Transparent = True
          end
          object Label5: TLabel
            Left = 58
            Top = 63
            Width = 58
            Height = 13
            Caption = 'Direcci'#243'n:'
            Transparent = True
          end
          object Label16: TLabel
            Left = 58
            Top = 89
            Width = 58
            Height = 13
            Caption = 'Localidad:'
            Transparent = True
          end
          object Label10: TLabel
            Left = 459
            Top = 95
            Width = 86
            Height = 13
            Caption = 'Condici'#243'n IVA:'
            Transparent = True
          end
          object Label1: TLabel
            Left = 6
            Top = 37
            Width = 110
            Height = 13
            Caption = 'Apellido y Nombre:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label13: TLabel
            Left = 10
            Top = 143
            Width = 105
            Height = 13
            Caption = 'Fecha Nacimiento:'
            Transparent = True
          end
          object Label14: TLabel
            Left = 286
            Top = 143
            Width = 34
            Height = 13
            Caption = 'Sexo:'
            Transparent = True
          end
          object Label2: TLabel
            Left = 490
            Top = 119
            Width = 55
            Height = 13
            Caption = 'Cuit/Cuil:'
            Transparent = True
          end
          object Label7: TLabel
            Left = 35
            Top = 13
            Width = 81
            Height = 13
            Caption = 'Codigo Corto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label11: TLabel
            Left = 430
            Top = 145
            Width = 115
            Height = 13
            Caption = 'Descuento Especial:'
            Transparent = True
          end
          object DBLCBoxProvincia: TDBLookupComboBox
            Left = 120
            Top = 113
            Width = 270
            Height = 21
            DataField = 'ID_PROVINCIA'
            DataSource = DS_Persona
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            KeyField = 'ID_PROVINCIA'
            ListField = 'NOMBRE_PROVINCIA'
            ListSource = DS_Provincia
            ParentFont = False
            TabOrder = 5
          end
          object DBLCBoxCondIva: TDBLookupComboBox
            Left = 550
            Top = 89
            Width = 270
            Height = 21
            DataField = 'ID_TIPO_IVA'
            DataSource = DS_Persona
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            KeyField = 'ID_TIPO_IVA'
            ListField = 'NOMBRE_TIPO_IVA'
            ListSource = DS_Iva
            ParentFont = False
            TabOrder = 11
          end
          object DBEApellidoNombre: TDBEdit
            Left = 120
            Top = 33
            Width = 270
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NOMBRE'
            DataSource = DS_Persona
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object DBENroDocumento: TDBEdit
            Left = 669
            Top = 62
            Width = 151
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NUMERO_DOC'
            DataSource = DS_Persona
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
          end
          object DBELocalidad: TDBEdit
            Left = 120
            Top = 86
            Width = 161
            Height = 21
            CharCase = ecUpperCase
            DataField = 'LOCALIDAD'
            DataSource = DS_Persona
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object DBEDireccion: TDBEdit
            Left = 120
            Top = 59
            Width = 270
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DIRECCION'
            DataSource = DS_Persona
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object DBECodPostal: TDBEdit
            Left = 323
            Top = 86
            Width = 67
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CODIGO_POSTAL'
            DataSource = DS_Persona
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object DBCBoxSexo: TDBComboBox
            Left = 325
            Top = 140
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            DataField = 'SEXO'
            DataSource = DS_Persona
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ItemHeight = 13
            Items.Strings = (
              'M'
              'F'
              'N')
            ParentFont = False
            TabOrder = 7
          end
          object DBLCBoxTipoDoc: TDBLookupComboBox
            Left = 550
            Top = 62
            Width = 106
            Height = 21
            DataField = 'ID_TIPO_DOC'
            DataSource = DS_Persona
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            KeyField = 'ID_TIPO_DOC'
            ListField = 'NOMBRE_TIPO_DOC'
            ListSource = DS_Documento
            ParentFont = False
            TabOrder = 9
          end
          object DBECuit_Cuil: TDBEdit
            Left = 550
            Top = 116
            Width = 270
            Height = 21
            DataField = 'CUIT_CUIL'
            DataSource = DS_Persona
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
          end
          object RadioGroupRelacionCliente: TRadioGroup
            Left = 414
            Top = 12
            Width = 243
            Height = 43
            Caption = ' Es Cliente '
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'No Es Cliente'
              'Es Cliente')
            TabOrder = 8
            OnClick = RadioGroupRelacionClienteClick
          end
          object DBEditCodigo: TDBEdit
            Left = 120
            Top = 9
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CODIGO_CORTO'
            DataSource = DS_Persona
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object DBEDescuento: TDBEdit
            Left = 550
            Top = 142
            Width = 270
            Height = 21
            DataField = 'DESCUENTO_ESPECIAL'
            DataSource = DS_Persona
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 13
          end
          object grpClave: TGroupBox
            Left = 664
            Top = 12
            Width = 153
            Height = 43
            Caption = ' Clave Empleado '
            TabOrder = 14
            Visible = False
            object edClave: TDBEdit
              Left = 6
              Top = 16
              Width = 139
              Height = 21
              Hint = 'Ingrese su clave sin espacios'
              DataField = 'CLAVE'
              DataSource = DS_Persona
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
          object ISDBDateTimePicker1: TISDBDateTimePicker
            Left = 120
            Top = 140
            Width = 161
            Height = 21
            Date = 41806.883453078710000000
            Time = 41806.883453078710000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            DataField = 'FECHA_NACIMIENTO'
            DataSource = DS_Persona
          end
        end
        object TabSheetTelMail: TTabSheet
          Caption = 'Telefonos/Mail'
          ImageIndex = 4
          object DBGridTelMail: TDBGrid
            Left = 0
            Top = 0
            Width = 938
            Height = 172
            Align = alClient
            Color = 14606012
            DataSource = DS_EntidadTelefono
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridTelMailDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRIPCION'
                Title.Caption = 'Descripci'#243'n'
                Width = 252
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TELEFONO'
                Title.Caption = 'Tel'#233'fono'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MAIL'
                Title.Caption = 'E-Mail'
                Width = 250
                Visible = True
              end>
          end
        end
        object TabSheetDetalle: TTabSheet
          BorderWidth = 4
          Caption = ' Detalle '
          ImageIndex = 1
          object DBMemoDetalle: TDBMemo
            Left = 0
            Top = 0
            Width = 938
            Height = 164
            Align = alClient
            DataField = 'DESCRIPCION'
            DataSource = DS_Persona
            TabOrder = 0
          end
        end
        object TabSheetRol: TTabSheet
          Caption = ' Rol '
          ImageIndex = 2
          object DBGridRol: TDBGrid
            Left = 0
            Top = 0
            Width = 946
            Height = 172
            Align = alClient
            Color = 14606012
            DataSource = DS_VerRelacionPersona
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridRolDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'DESCRIPCION'
                Title.Alignment = taCenter
                Title.Caption = 'Rol'
                Width = 178
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMBRE'
                Title.Alignment = taCenter
                Title.Caption = 'Sucursal / Empresa'
                Width = 552
                Visible = True
              end>
          end
        end
        object TabSheetCtaCte: TTabSheet
          Caption = 'Cuenta Corriente'
          Enabled = False
          ImageIndex = 3
          object gBoxCuentaCorriente: TGroupBox
            Left = 88
            Top = 1
            Width = 276
            Height = 170
            Caption = ' Cuenta Corriente '
            TabOrder = 0
            object Label15: TLabel
              Left = 49
              Top = 22
              Width = 64
              Height = 13
              Caption = 'Fecha Alta:'
            end
            object Label12: TLabel
              Left = 66
              Top = 77
              Width = 47
              Height = 13
              Caption = 'Credito:'
            end
            object Label3: TLabel
              Left = 9
              Top = 107
              Width = 104
              Height = 13
              Caption = 'Dias Vencimiento:'
            end
            object Label4: TLabel
              Left = 45
              Top = 50
              Width = 68
              Height = 13
              Caption = 'Fecha Baja:'
            end
            object DBEditLimiteDeuda: TDBEdit
              Left = 115
              Top = 75
              Width = 153
              Height = 21
              DataField = 'LIMITE_DEUDA'
              DataSource = DS_CtaCte
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object btnCtaCte_Aceptar: TBitBtn
              Left = 21
              Top = 135
              Width = 40
              Height = 29
              TabOrder = 4
              OnClick = btnCtaCte_AceptarClick
            end
            object btnCtaCte_Cancelar: TBitBtn
              Left = 212
              Top = 135
              Width = 40
              Height = 29
              TabOrder = 5
              OnClick = btnCtaCte_CancelarClick
            end
            object DBEditVencimDia: TDBEdit
              Left = 115
              Top = 105
              Width = 153
              Height = 21
              DataField = 'VENCIMIENTO_DIAS'
              DataSource = DS_CtaCte
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object ISDBFechaCtaCte: TISDBDateTimePicker
              Left = 115
              Top = 18
              Width = 150
              Height = 21
              Date = 41806.884660497700000000
              Time = 41806.884660497700000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              DataField = 'FECHA_ALTA'
              DataSource = DS_CtaCte
            end
            object ISDBDateTimePicker3: TISDBDateTimePicker
              Left = 115
              Top = 46
              Width = 150
              Height = 21
              Date = 41806.884660497700000000
              Time = 41806.884660497700000000
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              DataField = 'FECHA_ALTA'
              DataSource = DS_CtaCte
            end
          end
          object btnCtaCte_Alta: TButton
            Left = 8
            Top = 8
            Width = 75
            Height = 25
            Caption = 'Alta'
            TabOrder = 1
            OnClick = btnCtaCte
          end
          object btnCtaCte_Modificar: TButton
            Left = 8
            Top = 40
            Width = 75
            Height = 25
            Caption = 'Modificar'
            TabOrder = 2
            OnClick = btnCtaCte
          end
          object btnCtaCte_Reactivar: TButton
            Left = 8
            Top = 104
            Width = 75
            Height = 25
            Caption = 'Reactivar'
            TabOrder = 4
            OnClick = btnCtaCte
          end
          object btnCtaCte_Baja: TButton
            Left = 8
            Top = 72
            Width = 75
            Height = 25
            Caption = 'Baja'
            TabOrder = 3
            OnClick = btnCtaCte
          end
        end
        object TabSheetObraSocial: TTabSheet
          Caption = 'Obras Sociales'
          ImageIndex = 5
          object DBGridObraSocial: TDBGrid
            Left = 0
            Top = 0
            Width = 946
            Height = 172
            Align = alClient
            Color = 14606012
            DataSource = DS_PersonaObraSocial
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridRolDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'NRO_AFILIADO'
                Title.Caption = 'N'#186' Afiliado'
                Width = 161
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'codigo'
                Title.Caption = 'C'#243'digo'
                Width = 166
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'obra_social'
                Title.Caption = 'Obra Social'
                Width = 453
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCUENTO'
                Title.Caption = '% dcto.'
                Visible = True
              end>
          end
        end
      end
    end
    object PanelCabecera: TPanel
      Left = 5
      Top = 5
      Width = 954
      Height = 15
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object lblCantidadRegistros: TLabel
        Left = 0
        Top = 0
        Width = 4
        Height = 15
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object StaticTxtBaja: TStaticText
        Left = 845
        Top = 0
        Width = 109
        Height = 15
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
    Left = 688
    Top = 120
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
          ItemName = 'btnVerDetalle'
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
          ItemName = 'btnImprimirDetalle'
        end
        item
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
          ItemName = 'btnSkype'
        end
        item
          Visible = True
          ItemName = 'btnEMail'
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
    object btnVerDetalle: TdxBarLargeButton
      Align = iaRight
      Caption = 'Ver Detalle'
      Category = 0
      Hint = 'Ver Detalle'
      Visible = ivAlways
      LargeImageIndex = 12
      OnClick = btnVerDetalleClick
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
      Hint = 'Da de baja un registro'
      Visible = ivAlways
      LargeImageIndex = 25
      OnClick = btnBajaClick
      AutoGrayScale = False
    end
    object btnReactivar: TdxBarLargeButton
      Caption = 'F6 - Reactivar'
      Category = 0
      Hint = 'Reactiva un registro'
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
    object btnImprimirDetalle: TdxBarLargeButton
      Caption = 'Detalle'
      Category = 0
      Hint = 'Detalle'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = btnImprimirDetalleClick
    end
    object btnImprimirListado: TdxBarLargeButton
      Caption = 'Listado'
      Category = 0
      Hint = 'Listado'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = btnImprimirListadoClick
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
    object btnExcel: TdxBarLargeButton
      Caption = 'Excel'
      Category = 0
      Hint = 'Exportar a Excel'
      Visible = ivAlways
      LargeImageIndex = 77
      OnClick = btnExcelClick
      AutoGrayScale = False
    end
    object btnEMail: TdxBarLargeButton
      Caption = 'Enviar Mail'
      Category = 0
      Hint = 'Enviar Mail'
      Visible = ivAlways
      LargeImageIndex = 76
      OnClick = btnEMailClick
      AutoGrayScale = False
    end
    object btnSkype: TdxBarLargeButton
      Caption = 'Skype'
      Category = 0
      Hint = 'Llamar por Skype'
      Visible = ivAlways
      LargeImageIndex = 72
      OnClick = btnSkypeClick
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
        'btnImprimirDetalle'
        'btnImprimirListado'
        'btnExcel'
        'btnEMail'
        'btnSkype')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'btnGuardar'
        'btnCancelar')
    end
  end
  object ZQ_Persona: TZQuery
    Connection = DM.Conexion
    AfterScroll = ZQ_PersonaAfterScroll
    UpdateObject = ZU_Persona
    SQL.Strings = (
      
        'select distinct cl.*, td.nombre_tipo_doc, ti.nombre_tipo_iva, pv' +
        '.nombre_provincia'
      'from persona cl'
      'left join tipo_documento td on (cl.id_tipo_doc = td.id_tipo_doc)'
      'left join tipo_iva ti on (cl.id_tipo_iva = ti.id_tipo_iva)'
      'left join provincia pv on (cl.id_provincia = pv.id_provincia)'
      'left join persona_relacion pr on (cl.id_persona = pr.id_persona)'
      'order by cl.nombre')
    Params = <>
    Left = 64
    Top = 280
    object ZQ_PersonaID_PERSONA: TIntegerField
      FieldName = 'ID_PERSONA'
    end
    object ZQ_PersonaID_PROVINCIA: TIntegerField
      FieldName = 'ID_PROVINCIA'
    end
    object ZQ_PersonaID_TIPO_DOC: TIntegerField
      FieldName = 'ID_TIPO_DOC'
    end
    object ZQ_PersonaID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
    end
    object ZQ_PersonaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object ZQ_PersonaDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 200
    end
    object ZQ_PersonaLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 100
    end
    object ZQ_PersonaCODIGO_POSTAL: TStringField
      FieldName = 'CODIGO_POSTAL'
    end
    object ZQ_PersonaTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 100
    end
    object ZQ_PersonaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object ZQ_PersonaFECHA_NACIMIENTO: TDateField
      FieldName = 'FECHA_NACIMIENTO'
    end
    object ZQ_PersonaNUMERO_DOC: TStringField
      FieldName = 'NUMERO_DOC'
      Size = 50
    end
    object ZQ_PersonaSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object ZQ_PersonaCUIT_CUIL: TStringField
      FieldName = 'CUIT_CUIL'
      Size = 30
    end
    object ZQ_PersonaBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_PersonaNOMBRE_TIPO_DOC: TStringField
      FieldName = 'NOMBRE_TIPO_DOC'
      Size = 100
    end
    object ZQ_PersonaNOMBRE_TIPO_IVA: TStringField
      FieldName = 'NOMBRE_TIPO_IVA'
      Size = 100
    end
    object ZQ_PersonaNOMBRE_PROVINCIA: TStringField
      FieldName = 'NOMBRE_PROVINCIA'
      Size = 100
    end
    object ZQ_PersonaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
    object ZQ_PersonaDESCUENTO_ESPECIAL: TFloatField
      FieldName = 'DESCUENTO_ESPECIAL'
    end
    object ZQ_PersonaCODIGO_CORTO: TIntegerField
      FieldName = 'CODIGO_CORTO'
    end
    object ZQ_PersonaCODIGO_BARRA: TStringField
      FieldName = 'CODIGO_BARRA'
      Size = 40
    end
    object ZQ_PersonaCLAVE: TStringField
      FieldName = 'CLAVE'
      Size = 10
    end
  end
  object DS_Persona: TDataSource
    DataSet = ZQ_Persona
    Left = 64
    Top = 120
  end
  object ZQ_Provincia: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from provincia')
    Params = <>
    Left = 248
    Top = 64
    object ZQ_ProvinciaID_PROVINCIA: TIntegerField
      FieldName = 'ID_PROVINCIA'
      Required = True
    end
    object ZQ_ProvinciaNOMBRE_PROVINCIA: TStringField
      FieldName = 'NOMBRE_PROVINCIA'
      Size = 100
    end
  end
  object DS_Provincia: TDataSource
    DataSet = ZQ_Provincia
    Left = 272
    Top = 120
  end
  object ZQ_Iva: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_iva')
    Params = <>
    Left = 341
    Top = 64
    object ZQ_IvaID_TIPO_IVA: TIntegerField
      FieldName = 'ID_TIPO_IVA'
      Required = True
    end
    object ZQ_IvaNOMBRE_TIPO_IVA: TStringField
      FieldName = 'NOMBRE_TIPO_IVA'
      Size = 100
    end
    object ZQ_IvaABREVIATURA: TStringField
      FieldName = 'ABREVIATURA'
      Size = 10
    end
    object ZQ_IvaDISCRIMINAR: TStringField
      FieldName = 'DISCRIMINAR'
      Size = 1
    end
    object ZQ_IvaLETRA: TStringField
      FieldName = 'LETRA'
      Size = 1
    end
    object ZQ_IvaFISCAL: TStringField
      FieldName = 'FISCAL'
      Size = 1
    end
    object ZQ_IvaCOEFICIENTE: TFloatField
      FieldName = 'COEFICIENTE'
    end
    object ZQ_IvaVERIFICA_CUIT: TStringField
      FieldName = 'VERIFICA_CUIT'
      Size = 1
    end
  end
  object DS_Iva: TDataSource
    DataSet = ZQ_Iva
    Left = 376
    Top = 120
  end
  object ZQ_Documento: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from tipo_documento')
    Params = <>
    Left = 433
    Top = 64
    object ZQ_DocumentoID_TIPO_DOC: TIntegerField
      FieldName = 'ID_TIPO_DOC'
      Required = True
    end
    object ZQ_DocumentoNOMBRE_TIPO_DOC: TStringField
      FieldName = 'NOMBRE_TIPO_DOC'
      Size = 100
    end
  end
  object DS_Documento: TDataSource
    DataSet = ZQ_Documento
    Left = 480
    Top = 120
  end
  object Nro_Persona: TZStoredProc
    Connection = DM.Conexion
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    StoredProcName = 'SP_GEN_PERSONA_ID'
    Left = 156
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptResult
      end>
    object Nro_PersonaID: TIntegerField
      FieldName = 'ID'
    end
  end
  object ZU_Persona: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM persona'
      'WHERE'
      '  persona.ID_PERSONA = :OLD_ID_PERSONA')
    InsertSQL.Strings = (
      'INSERT INTO persona'
      '  (ID_PERSONA, ID_PROVINCIA, ID_TIPO_DOC, ID_TIPO_IVA, '
      'NOMBRE, DIRECCION, '
      '   LOCALIDAD, CODIGO_POSTAL, TELEFONO, EMAIL, '
      'FECHA_NACIMIENTO, NUMERO_DOC, '
      '   SEXO, BAJA, DESCRIPCION, CUIT_CUIL, DESCUENTO_ESPECIAL, '
      'CODIGO_CORTO, '
      '   CODIGO_BARRA, CLAVE)'
      'VALUES'
      '  (:ID_PERSONA, :ID_PROVINCIA, :ID_TIPO_DOC, :ID_TIPO_IVA, '
      ':NOMBRE, :DIRECCION, '
      '   :LOCALIDAD, :CODIGO_POSTAL, :TELEFONO, :EMAIL, '
      ':FECHA_NACIMIENTO, :NUMERO_DOC, '
      '   :SEXO, :BAJA, :DESCRIPCION, :CUIT_CUIL, '
      ':DESCUENTO_ESPECIAL, :CODIGO_CORTO, '
      '   :CODIGO_BARRA, :CLAVE)')
    ModifySQL.Strings = (
      'UPDATE persona SET'
      '  ID_PERSONA = :ID_PERSONA,'
      '  ID_PROVINCIA = :ID_PROVINCIA,'
      '  ID_TIPO_DOC = :ID_TIPO_DOC,'
      '  ID_TIPO_IVA = :ID_TIPO_IVA,'
      '  NOMBRE = :NOMBRE,'
      '  DIRECCION = :DIRECCION,'
      '  LOCALIDAD = :LOCALIDAD,'
      '  CODIGO_POSTAL = :CODIGO_POSTAL,'
      '  TELEFONO = :TELEFONO,'
      '  EMAIL = :EMAIL,'
      '  FECHA_NACIMIENTO = :FECHA_NACIMIENTO,'
      '  NUMERO_DOC = :NUMERO_DOC,'
      '  SEXO = :SEXO,'
      '  BAJA = :BAJA,'
      '  DESCRIPCION = :DESCRIPCION,'
      '  CUIT_CUIL = :CUIT_CUIL,'
      '  DESCUENTO_ESPECIAL = :DESCUENTO_ESPECIAL,'
      '  CODIGO_CORTO = :CODIGO_CORTO,'
      '  CODIGO_BARRA = :CODIGO_BARRA,'
      '  CLAVE = :CLAVE'
      'WHERE'
      '  persona.ID_PERSONA = :OLD_ID_PERSONA')
    UseSequenceFieldForRefreshSQL = False
    Left = 64
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PERSONA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_PROVINCIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_TIPO_DOC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID_TIPO_IVA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DIRECCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOCALIDAD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_POSTAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TELEFONO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'EMAIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_NACIMIENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NUMERO_DOC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEXO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BAJA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CUIT_CUIL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DESCUENTO_ESPECIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_CORTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_BARRA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLAVE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ID_PERSONA'
        ParamType = ptUnknown
      end>
  end
  object ZQ_VerRelacionPersona: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select pr.*, tr.descripcion,'
      '       CASE'
      '           WHEN (e.nombre IS not NULL) THEN e.nombre'
      '           WHEN (s.nombre IS not NULL) THEN s.nombre'
      '       END as nombre'
      'from persona_relacion pr'
      
        'left join tipo_relacion tr on (pr.id_relacion = tr.id_tipo_relac' +
        'ion)'
      'left join empresa e on (pr.id_empresa = e.id_empresa)'
      'left join sucursal s on (pr.id_sucursal = s.id_sucursal)'
      'where pr.id_persona = :id_persona')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_persona'
        ParamType = ptUnknown
      end>
    Left = 246
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_persona'
        ParamType = ptUnknown
      end>
    object ZQ_VerRelacionPersonaID_PERSONA_RELACION: TIntegerField
      FieldName = 'ID_PERSONA_RELACION'
    end
    object ZQ_VerRelacionPersonaID_PERSONA: TIntegerField
      FieldName = 'ID_PERSONA'
    end
    object ZQ_VerRelacionPersonaID_RELACION: TIntegerField
      FieldName = 'ID_RELACION'
    end
    object ZQ_VerRelacionPersonaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object ZQ_VerRelacionPersonaID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_VerRelacionPersonaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
    object ZQ_VerRelacionPersonaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 200
    end
  end
  object DS_VerRelacionPersona: TDataSource
    DataSet = ZQ_VerRelacionPersona
    Left = 225
    Top = 226
  end
  object ATeclasRapidas: TActionManager
    Left = 64
    Top = 226
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
  object ZQ_RelacionCliente: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select pr.*'
      'from persona_relacion pr'
      'where  pr.id_persona_relacion = :idRelacion')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idRelacion'
        ParamType = ptUnknown
      end>
    Left = 428
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idRelacion'
        ParamType = ptUnknown
      end>
    object ZQ_RelacionClienteID_PERSONA_RELACION: TIntegerField
      FieldName = 'ID_PERSONA_RELACION'
    end
    object ZQ_RelacionClienteID_PERSONA: TIntegerField
      FieldName = 'ID_PERSONA'
    end
    object ZQ_RelacionClienteID_RELACION: TIntegerField
      FieldName = 'ID_RELACION'
    end
    object ZQ_RelacionClienteID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
    object ZQ_RelacionClienteID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
  end
  object ZQ_UltimoNro: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select first 1 p.codigo_corto'
      'from persona p'
      'order by p.codigo_corto desc')
    Params = <>
    Left = 618
    Top = 64
    object ZQ_UltimoNroCODIGO_CORTO: TIntegerField
      FieldName = 'CODIGO_CORTO'
    end
  end
  object ZQ_TipoRelacion: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select id_tipo_relacion, descripcion'
      'from tipo_relacion')
    Params = <>
    Left = 526
    Top = 64
    object ZQ_TipoRelacionID_TIPO_RELACION: TIntegerField
      FieldName = 'ID_TIPO_RELACION'
      Required = True
    end
    object ZQ_TipoRelacionDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
  end
  object ZQ_CtaCte: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select cc.*'
      'from cuenta_corriente cc'
      'where  cc.id_persona = :id_persona')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_persona'
        ParamType = ptUnknown
      end>
    Left = 711
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_persona'
        ParamType = ptUnknown
      end>
    object ZQ_CtaCteID_CTA_CTE: TIntegerField
      FieldName = 'ID_CTA_CTE'
    end
    object ZQ_CtaCteID_PERSONA: TIntegerField
      FieldName = 'ID_PERSONA'
    end
    object ZQ_CtaCteSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object ZQ_CtaCteLIMITE_DEUDA: TFloatField
      FieldName = 'LIMITE_DEUDA'
      DisplayFormat = '###,###,##0.00'
    end
    object ZQ_CtaCteFECHA_ALTA: TDateField
      FieldName = 'FECHA_ALTA'
    end
    object ZQ_CtaCteFECHA_BAJA: TDateField
      FieldName = 'FECHA_BAJA'
    end
    object ZQ_CtaCteBAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ZQ_CtaCteID_PROVEEDOR: TIntegerField
      FieldName = 'ID_PROVEEDOR'
    end
    object ZQ_CtaCteVENCIMIENTO_DIAS: TIntegerField
      FieldName = 'VENCIMIENTO_DIAS'
    end
  end
  object DS_CtaCte: TDataSource
    DataSet = ZQ_CtaCte
    Left = 584
    Top = 120
  end
  object ZQ_EntidadTelefono: TZQuery
    Connection = DM.Conexion
    BeforePost = ZQ_EntidadTelefonoBeforePost
    SQL.Strings = (
      'select *'
      'from entidad_telefonos et'
      'where et.id_persona = :ID_PERSONA')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_PERSONA'
        ParamType = ptUnknown
      end>
    Left = 610
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PERSONA'
        ParamType = ptUnknown
      end>
    object ZQ_EntidadTelefonoID_ENTIDAD_TELEFONO: TIntegerField
      FieldName = 'ID_ENTIDAD_TELEFONO'
    end
    object ZQ_EntidadTelefonoID_ENTIDAD: TIntegerField
      FieldName = 'ID_ENTIDAD'
    end
    object ZQ_EntidadTelefonoTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 100
    end
    object ZQ_EntidadTelefonoMAIL: TStringField
      FieldName = 'MAIL'
      Size = 100
    end
    object ZQ_EntidadTelefonoID_PERSONA: TIntegerField
      FieldName = 'ID_PERSONA'
    end
    object ZQ_EntidadTelefonoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 100
    end
  end
  object DS_EntidadTelefono: TDataSource
    DataSet = ZQ_EntidadTelefono
    Left = 792
    Top = 176
  end
  object PopupMenuTelmail: TPopupMenu
    Images = FPrincipal.Iconos_Menu_16
    MenuAnimation = [maLeftToRight]
    Left = 387
    Top = 226
    object AgregarTelMail: TMenuItem
      Caption = 'Agregar Telefono/Mail'
      ImageIndex = 14
      OnClick = AgregarTelMailClick
    end
    object EditarTelMail: TMenuItem
      Caption = 'Editar Telefono/Mail'
      ImageIndex = 4
      OnClick = EditarTelMailClick
    end
    object EliminarTelMail: TMenuItem
      Caption = 'Eliminar Telefono/Mail'
      ImageIndex = 15
      OnClick = EliminarTelMailClick
    end
  end
  object ZQ_PersonaObraSocial: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from Optica_persona_os os'
      'where os.id_persona = :ID_PERSONA')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_PERSONA'
        ParamType = ptUnknown
      end>
    Left = 803
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_PERSONA'
        ParamType = ptUnknown
      end>
    object ZQ_PersonaObraSocialcodigo: TStringField
      FieldKind = fkLookup
      FieldName = 'codigo'
      LookupDataSet = ZQ_ObraSocial
      LookupKeyFields = 'ID_OS'
      LookupResultField = 'CODIGO'
      KeyFields = 'ID_OS'
      Size = 100
      Lookup = True
    end
    object ZQ_PersonaObraSocialobra_social: TStringField
      FieldKind = fkLookup
      FieldName = 'obra_social'
      LookupDataSet = ZQ_ObraSocial
      LookupKeyFields = 'ID_OS'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_OS'
      Size = 200
      Lookup = True
    end
    object ZQ_PersonaObraSocialDESCUENTO: TFloatField
      FieldName = 'DESCUENTO'
    end
    object ZQ_PersonaObraSocialID_PERSONA_OS: TIntegerField
      FieldName = 'ID_PERSONA_OS'
      Required = True
    end
    object ZQ_PersonaObraSocialNRO_AFILIADO: TStringField
      FieldName = 'NRO_AFILIADO'
      Size = 100
    end
    object ZQ_PersonaObraSocialID_OS: TIntegerField
      FieldName = 'ID_OS'
      Required = True
    end
    object ZQ_PersonaObraSocialID_PERSONA: TIntegerField
      FieldName = 'ID_PERSONA'
      Required = True
    end
  end
  object DS_PersonaObraSocial: TDataSource
    DataSet = ZQ_PersonaObraSocial
    Left = 792
    Top = 120
  end
  object ZQ_ObraSocial: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      
        'Select oss.ID_OS,oss.codigo,(osc.nombre ||'#39' - '#39'|| oss.nombre) as' +
        ' nombre'
      'from Optica_os oss'
      
        'join optica_os_cabecera osc on (oss.id_optica_os_cabecera=osc.id' +
        '_optica_os_cabecera)'
      ''
      '')
    Params = <>
    Left = 608
    Top = 280
    object ZQ_ObraSocialCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 100
    end
    object ZQ_ObraSocialNOMBRE: TStringField
      FieldName = 'NOMBRE'
      ReadOnly = True
      Size = 403
    end
    object ZQ_ObraSocialID_OS: TIntegerField
      FieldName = 'ID_OS'
      Required = True
    end
  end
  object PopupMenuObraSocial: TPopupMenu
    Images = FPrincipal.Iconos_Menu_16
    Left = 336
    Top = 280
    object AgregarObraSocial1: TMenuItem
      Caption = 'Agregar Obra Social'
      ImageIndex = 14
      OnClick = AgregarObraSocial1Click
    end
    object QuitarObraSocial1: TMenuItem
      Caption = 'Quitar Obra Social'
      ImageIndex = 15
      OnClick = QuitarObraSocial1Click
    end
  end
  object ISBuscar: TISBusquedaAvanzada
    CriteriosBusqueda = <
      item
        Titulo = 'Relaci'#243'n'
        Campo = 'id_relacion'
        Tabla = 'pr'
        TipoCampoIngreso = IS_Combo
        TipoCampoIndice = 1
        TipoCampoIndiceVer = 'Igual'
        TipoCombollenarSQL = ZQ_TipoRelacion
        TipoCombollenarCampo = 'descripcion'
        TipoCombollenarCampoReal = 'ID_TIPO_RELACION'
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Apellido y Nombre'
        Campo = 'nombre'
        Tabla = 'cl'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Direcci'#243'n'
        Campo = 'direccion'
        Tabla = 'cl'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Localidad'
        Campo = 'localidad'
        Tabla = 'cl'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'CP'
        Campo = 'codigo_postal'
        Tabla = 'cl'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Provincia'
        Campo = 'id_provincia'
        Tabla = 'cl'
        TipoCampoIngreso = IS_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_Provincia
        TipoCombollenarCampo = 'nombre_provincia'
        TipoCombollenarCampoReal = 'id_provincia'
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Fecha Nacimiento'
        Campo = 'fecha_nacimiento'
        Tabla = 'cl'
        TipoCampo = IS_Fecha
        Mascara = '##/##/####'
        TipoCampoIndiceVer = '='
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Sexo'
        Campo = 'sexo'
        Tabla = 'cl'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Tipo Doc.'
        Campo = 'id_tipo_doc'
        Tabla = 'cl'
        Mascara = '##/##/####'
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_Documento
        TipoCombollenarCampo = 'id_tipo_doc'
        TipoCombollenarCampoReal = 'nombre_tipo_doc'
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Nro. Doc.'
        Campo = 'numero_doc'
        Tabla = 'cl'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Condic. IVA'
        Campo = 'id_tipo_iva'
        Tabla = 'cl'
        TipoCampoIngreso = IS_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoCombollenarSQL = ZQ_Iva
        TipoCombollenarCampo = 'nombre_tipo_iva'
        TipoCombollenarCampoReal = 'id_tipo_iva'
        TipoComboEditable = False
        CambiarCondicion = False
        ItemIndex = -1
      end
      item
        Titulo = 'Cuit/Cuil'
        Campo = 'cuit_cuil'
        Tabla = 'cl'
        TipoCampoIndiceVer = 'Contiene'
        TipoComboEditable = False
        ItemIndex = -1
      end
      item
        Titulo = 'Baja'
        Campo = 'baja'
        Tabla = 'cl'
        TipoCampoIngreso = IS_Combo
        TipoCampoIndiceVer = 'Contiene'
        TipoComboValores.Strings = (
          'N'
          'S'
          '')
        TipoComboEditable = False
        TipoComboValoresReales.Strings = (
          'N'
          'S'
          '')
        ItemIndex = 0
      end>
    CriteriosLocate = <>
    Modelo = DM.ISModelo
    DataSet = ZQ_Persona
    SQL.Strings = (
      
        'select distinct cl.*, td.nombre_tipo_doc, ti.nombre_tipo_iva, pv' +
        '.nombre_provincia'
      'from persona cl'
      'left join tipo_documento td on (cl.id_tipo_doc = td.id_tipo_doc)'
      'left join tipo_iva ti on (cl.id_tipo_iva = ti.id_tipo_iva)'
      'left join provincia pv on (cl.id_provincia = pv.id_provincia)'
      'left join persona_relacion pr on (cl.id_persona = pr.id_persona)'
      'order by cl.nombre'
      '')
    SQL_Select.Strings = (
      
        'select distinct cl.*, td.nombre_tipo_doc, ti.nombre_tipo_iva, pv' +
        '.nombre_provincia')
    SQL_From.Strings = (
      'from persona cl'
      'left join tipo_documento td on (cl.id_tipo_doc = td.id_tipo_doc)'
      'left join tipo_iva ti on (cl.id_tipo_iva = ti.id_tipo_iva)'
      'left join provincia pv on (cl.id_provincia = pv.id_provincia)'
      'left join persona_relacion pr on (cl.id_persona = pr.id_persona)')
    SQL_Orden.Strings = (
      'order by cl.nombre'
      '')
    UsarWhereOriginal = IS_Sin_Where
    Left = 64
    Top = 64
  end
  object ISListadoObraSocial: TISListadoSQL
    Modelo = DM.ISModelo
    SQL.Strings = (
      
        'select op.id_os, (op.codigo||'#39' - '#39'||op.nombre) as ObraSocial,op.' +
        'descuento'
      'from optica_os op'
      'where op.baja = '#39'N'#39
      '')
    CampoBuscar = 'ObraSocial'
    CampoBuscar2 = 'descuento'
    CampoClave = 'id_os'
    TituloVentana = 'Obra Social'
    TituloBuscar = 'Campo Busqueda:'
    TituloBuscar2 = 'Campo Busqueda 2:'
    BuscarDoble = True
    ColorGrilla = 14606012
    AnchoClave = 80
    AnchoBuscar1 = 500
    AnchoBuscar2 = 100
    Left = 548
    Top = 226
  end
  object ISVistaPreviaListado: TISVistaPreviaQR
    Reporte = RepPersonaListado
    ShowModal = False
    Left = 872
    Top = 226
  end
  object ISVistaPreviaDetalle: TISVistaPreviaQR
    Reporte = RepPersonaDetalle
    ShowModal = False
    Left = 880
    Top = 280
  end
  object ISOrdenar: TISOrdenarGrilla
    Grilla = DBGridClientes
    Filtros = <
      item
        TituloColumna = 'C'#243'd. Corto'
        Visible = True
      end
      item
        TituloColumna = 'Apellido y Nombre'
        Visible = True
      end
      item
        TituloColumna = 'Direcci'#243'n'
        Visible = True
      end
      item
        TituloColumna = 'C.P.'
        Visible = True
      end
      item
        TituloColumna = 'Localidad'
        Visible = True
      end
      item
        TituloColumna = 'Provincia'
        Visible = True
      end
      item
        TituloColumna = 'Fecha Nac.'
        Visible = True
      end
      item
        TituloColumna = 'Tipo Doc.'
        Visible = True
      end
      item
        TituloColumna = 'Nro. Doc.'
        Visible = True
      end
      item
        TituloColumna = 'Sexo'
        Visible = True
      end
      item
        TituloColumna = 'Tipo IVA'
        Visible = True
      end
      item
        TituloColumna = 'Cuit/Cuil'
        Visible = True
      end>
    NombreGuardarConfig = 'ABM_Personas'
    AltoTituloColumna = 15
    FuenteNormal = []
    Ordenar = True
    MoverColumna = True
    FiltrarColumna = True
    GuardarAncho = True
    Left = 168
    Top = 120
  end
  object ISIngresarPorcentaje: TISMensajeMasDato
    TipoDato = ftFloat
    Mensaje = 'Ingrese el procentaje de Dcto.'
    TituloForm = 'Datos Afiliado'
    TituloCampo = '%'
    FormHeight = 123
    FormWidth = 433
    Left = 710
    Top = 226
  end
end
