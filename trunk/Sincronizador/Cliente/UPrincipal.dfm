object FPrincipal: TFPrincipal
  Left = 250
  Top = 110
  Width = 1027
  Height = 658
  Caption = 'Sincronizador SiGeFa '
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object panelContenedor: TPanel
    Left = 0
    Top = 0
    Width = 1011
    Height = 549
    Align = alClient
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 280
      Width = 1009
      Height = 6
      Cursor = crVSplit
      Align = alBottom
    end
    object panelAbajo: TPanel
      Left = 1
      Top = 286
      Width = 1009
      Height = 262
      Align = alBottom
      TabOrder = 0
      object Splitter2: TSplitter
        Left = 617
        Top = 1
        Width = 4
        Height = 260
        Align = alRight
      end
      object panelListaNovedades: TPanel
        Left = 621
        Top = 1
        Width = 387
        Height = 260
        Align = alRight
        BevelOuter = bvNone
        Caption = 'panelListaNovedades'
        TabOrder = 0
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 387
          Height = 15
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Archivos de Novedades'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBGridListaNovedades: TDBGrid
          Left = 0
          Top = 15
          Width = 387
          Height = 245
          Align = alClient
          Color = 13695997
          DataSource = DS_ListaNovedades
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridListaNovedadesDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = '_Origen'
              Title.Alignment = taCenter
              Title.Caption = 'Origen'
              Width = 143
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_NombreArchivo'
              Title.Alignment = taCenter
              Title.Caption = 'Archivo'
              Width = 160
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = '_Estado'
              Title.Alignment = taCenter
              Title.Caption = 'Procesado'
              Width = 68
              Visible = True
            end>
        end
      end
      object PanelLog: TPanel
        Left = 1
        Top = 1
        Width = 616
        Height = 260
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object lblTituloLog: TLabel
          Left = 0
          Top = 0
          Width = 616
          Height = 15
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Log'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object memoLog: TMemo
          Left = 0
          Top = 15
          Width = 616
          Height = 245
          Align = alClient
          Color = 10026692
          Lines.Strings = (
            '')
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
    object panelDatos: TPanel
      Left = 1
      Top = 42
      Width = 1009
      Height = 238
      Align = alClient
      TabOrder = 1
      object Splitter3: TSplitter
        Left = 755
        Top = 1
        Width = 4
        Height = 208
        Align = alRight
      end
      object PanelTablas: TPanel
        Left = 759
        Top = 1
        Width = 249
        Height = 208
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 249
          Height = 15
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tablas a Actualizar'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBGridTablasActualizar: TDBGrid
          Left = 0
          Top = 15
          Width = 249
          Height = 193
          Align = alClient
          Color = 13695997
          DataSource = DS_Tablas_Actualizar
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridTablasActualizarDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = '_Id'
              Title.Alignment = taCenter
              Title.Caption = 'Id'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_Tabla'
              Title.Alignment = taCenter
              Title.Caption = 'Nombre Tabla'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_CampoClave'
              Title.Alignment = taCenter
              Title.Caption = 'Campo Clave'
              Width = 118
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_Clave'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Clave'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_Operacion'
              Title.Alignment = taCenter
              Title.Caption = 'Operacion'
              Width = 71
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_Fecha'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha'
              Width = 126
              Visible = True
            end>
        end
      end
      object PanelDatosXML: TPanel
        Left = 1
        Top = 1
        Width = 754
        Height = 208
        Align = alClient
        BevelOuter = bvNone
        Caption = 'PanelDatosXML'
        TabOrder = 1
        object Label5: TLabel
          Left = 0
          Top = 0
          Width = 754
          Height = 15
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Datos'
          Color = clBlue
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBGridUpload: TDBGrid
          Left = 0
          Top = 15
          Width = 754
          Height = 193
          Align = alClient
          Color = 15915716
          DataSource = DS_NovedadesCliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridUploadDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPERATION'
              Title.Alignment = taCenter
              Title.Caption = 'Operaci'#243'n'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_TIME'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha y Hora'
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USER_NAME'
              Title.Alignment = taCenter
              Title.Caption = 'Usuario'
              Width = 129
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TABLE_NAME'
              Title.Alignment = taCenter
              Title.Caption = 'Tabla'
              Width = 161
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KEY_FIELD'
              Title.Alignment = taCenter
              Title.Caption = 'Campo Clave'
              Width = 164
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KEY_VALUE'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Clave'
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FIELD_NAME'
              Title.Alignment = taCenter
              Title.Caption = 'Campo'
              Width = 139
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEW_VALUE'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Nuevo'
              Width = 211
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OLD_VALUE'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Viejo'
              Width = 189
              Visible = True
            end>
        end
        object DBGridDownload: TDBGrid
          Left = 0
          Top = 15
          Width = 754
          Height = 193
          Align = alClient
          Color = 15915716
          DataSource = DS_ProcesarNovedades
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridDownloadDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taCenter
              Width = 76
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPERATION'
              Title.Alignment = taCenter
              Title.Caption = 'Operaci'#243'n'
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_TIME'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha y Hora'
              Width = 116
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'USER_NAME'
              Title.Alignment = taCenter
              Title.Caption = 'Usuario'
              Width = 129
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TABLE_NAME'
              Title.Alignment = taCenter
              Title.Caption = 'Tabla'
              Width = 161
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KEY_FIELD'
              Title.Alignment = taCenter
              Title.Caption = 'Campo Clave'
              Width = 164
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KEY_VALUE'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Clave'
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FIELD_NAME'
              Title.Alignment = taCenter
              Title.Caption = 'Campo'
              Width = 139
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NEW_VALUE'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Nuevo'
              Width = 211
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OLD_VALUE'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Viejo'
              Width = 189
              Visible = True
            end>
        end
      end
      object PanelpBar_Ftp: TPanel
        Left = 1
        Top = 209
        Width = 1007
        Height = 14
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object Label6: TLabel
          Left = 0
          Top = 0
          Width = 40
          Height = 14
          Align = alLeft
          AutoSize = False
          Caption = '   FTP:'
        end
        object pBar_Ftp: TProgressBar
          Tag = 99
          Left = 40
          Top = 0
          Width = 967
          Height = 14
          Align = alClient
          TabOrder = 0
        end
      end
      object PanelpBar_Novedades: TPanel
        Left = 1
        Top = 223
        Width = 1007
        Height = 14
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        object Label7: TLabel
          Left = 0
          Top = 0
          Width = 40
          Height = 14
          Align = alLeft
          AutoSize = False
          Caption = '   BD:'
        end
        object pBar_Novedades: TProgressBar
          Tag = 99
          Left = 40
          Top = 0
          Width = 967
          Height = 14
          Align = alClient
          TabOrder = 0
        end
      end
    end
    object panelTitulo: TPanel
      Left = 1
      Top = 1
      Width = 1009
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object Label1: TLabel
        Left = 8
        Top = 18
        Width = 222
        Height = 18
        Caption = 'Proxima sincronizaci'#243'n en: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTiempoRestante: TLabel
        Left = 228
        Top = 19
        Width = 78
        Height = 18
        Caption = '00:00:00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object lblTituloSincro: TLabel
        Left = 0
        Top = 0
        Width = 1009
        Height = 15
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Color = clBlue
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 601
    Width = 1011
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 300
      end>
  end
  object ZQ_ActualizarBase: TZQuery
    Connection = DM.ConexionEscritura
    Params = <>
    Left = 48
    Top = 414
  end
  object EKInicio: TEKIni
    Archivo = 'configSincro.ini'
    Left = 911
    Top = 83
  end
  object Timer: TTimer
    OnTimer = TimerTimer
    Left = 839
    Top = 131
  end
  object ZQ_Configuracion: TZQuery
    Connection = DM.ConexionLectura
    SQL.Strings = (
      'select *'
      'from configuracion')
    Params = <>
    Left = 912
    Top = 131
    object ZQ_ConfiguracionDB_SUCURSAL: TIntegerField
      FieldName = 'DB_SUCURSAL'
    end
    object ZQ_ConfiguracionID_SUCURSAL: TIntegerField
      FieldName = 'ID_SUCURSAL'
    end
    object ZQ_ConfiguracionULTIMA_FECHA: TDateTimeField
      FieldName = 'ULTIMA_FECHA'
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
            Item = btnSubir
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnBajar
            Visible = True
          end
          item
            Item = btnProcesar
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnBorrarLog
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnOcultar
            Visible = True
          end
          item
            Item = btnConfig
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
    LargeImages = DM.Iconos_Barra_32
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    MenusShowRecentItemsFirst = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsOffice11
    UseF10ForMenu = False
    UseSystemFont = False
    Left = 839
    Top = 83
    DockControlHeights = (
      0
      0
      0
      52)
    object btnSubir: TdxBarLargeButton
      Caption = 'Subir Novedades'
      Category = 0
      Hint = 'Subir Novedades'
      Visible = ivAlways
      ImageIndex = 24
      OnClick = btnSubirClick
      AutoGrayScale = False
    end
    object btnBajar: TdxBarLargeButton
      Caption = 'Descargar Novedades'
      Category = 0
      Hint = 'Descargar Novedades'
      Visible = ivAlways
      ImageIndex = 25
      OnClick = btnBajarClick
      AutoGrayScale = False
    end
    object btnProcesar: TdxBarLargeButton
      Caption = 'Procesar Descargas'
      Category = 0
      Hint = 'Procesar los archivos descargados del servidor'
      Visible = ivAlways
      ImageIndex = 12
      OnClick = btnProcesarClick
      AutoGrayScale = False
    end
    object btnBorrarLog: TdxBarLargeButton
      Caption = 'Borrar Log'
      Category = 0
      Hint = 'Borrar Log'
      Visible = ivAlways
      ImageIndex = 69
      OnClick = btnBorrarLogClick
      AutoGrayScale = False
    end
    object btnOcultar: TdxBarLargeButton
      Align = iaRight
      Caption = 'Ocultar'
      Category = 0
      Hint = 'Ocultar'
      Visible = ivAlways
      ImageIndex = 76
      OnClick = btnOcultarClick
      AutoGrayScale = False
    end
    object btnConfig: TdxBarLargeButton
      Caption = 'Configurar'
      Category = 0
      Hint = 'Configurar'
      Visible = ivAlways
      ImageIndex = 35
      OnClick = btnConfigClick
      AutoGrayScale = False
    end
    object btnConectar: TdxBarLargeButton
      Caption = 'Conectar BD'
      Category = 0
      Visible = ivAlways
      ImageIndex = 5
      AutoGrayScale = False
    end
    object btnSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = btnSalirClick
      AutoGrayScale = False
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'btnSubir'
        'btnBajar'
        'btnProcesar'
        'btnBorrarLog'
        'btnOcultar'
        'btnConfig'
        'btnConectar'
        'btnSalir')
    end
  end
  object DS_ProcesarNovedades: TDataSource
    DataSet = CD_ProcesarNovedades
    Left = 522
    Top = 134
  end
  object CD_NovedadesCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_NovedadesCliente'
    Left = 69
    Top = 86
    object CD_NovedadesClienteID: TIntegerField
      FieldName = 'ID'
    end
    object CD_NovedadesClienteOPERATION: TStringField
      FieldName = 'OPERATION'
      Required = True
      Size = 1
    end
    object CD_NovedadesClienteDATE_TIME: TDateTimeField
      FieldName = 'DATE_TIME'
      Required = True
    end
    object CD_NovedadesClienteUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 67
    end
    object CD_NovedadesClienteTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      Required = True
      Size = 67
    end
    object CD_NovedadesClienteKEY_FIELD: TStringField
      FieldName = 'KEY_FIELD'
      Required = True
      Size = 67
    end
    object CD_NovedadesClienteKEY_VALUE: TStringField
      FieldName = 'KEY_VALUE'
      Size = 255
    end
    object CD_NovedadesClienteFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Required = True
      Size = 67
    end
    object CD_NovedadesClienteNEW_VALUE: TStringField
      FieldName = 'NEW_VALUE'
      Size = 255
    end
    object CD_NovedadesClienteOLD_VALUE: TStringField
      FieldName = 'OLD_VALUE'
      Size = 255
    end
  end
  object DS_NovedadesCliente: TDataSource
    DataSet = CD_NovedadesCliente
    Left = 69
    Top = 134
  end
  object ZQ_NovedadesCliente: TZQuery
    Connection = DM.ConexionLectura
    AfterScroll = ZQ_NovedadesClienteAfterScroll
    SQL.Strings = (
      
        'select cast(ta.id as integer) as ID, ta.operation, ta.date_time,' +
        ' ta.user_name, ta.table_name, cl.key_field, cl.key_value,'
      '       ca.field_name, ca.new_value, ca.old_value'
      'from z_sinc_tabla ta'
      'left join z_sinc_clave cl on (ta.id = cl.log_tables_id)'
      'left join z_sinc_campo ca on (ta.id = ca.log_tables_id)'
      'where ta.id_sincro_lote is null'
      '  and ta.user_name <> '#39'SINCRO'#39)
    Params = <>
    Left = 197
    Top = 86
    object ZQ_NovedadesClienteID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ZQ_NovedadesClienteOPERATION: TStringField
      FieldName = 'OPERATION'
      Required = True
      Size = 1
    end
    object ZQ_NovedadesClienteDATE_TIME: TDateTimeField
      FieldName = 'DATE_TIME'
      Required = True
    end
    object ZQ_NovedadesClienteUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 67
    end
    object ZQ_NovedadesClienteTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      Required = True
      Size = 67
    end
    object ZQ_NovedadesClienteKEY_FIELD: TStringField
      FieldName = 'KEY_FIELD'
      Required = True
      Size = 67
    end
    object ZQ_NovedadesClienteKEY_VALUE: TStringField
      FieldName = 'KEY_VALUE'
      Size = 255
    end
    object ZQ_NovedadesClienteFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Required = True
      Size = 67
    end
    object ZQ_NovedadesClienteNEW_VALUE: TStringField
      FieldName = 'NEW_VALUE'
      Size = 255
    end
    object ZQ_NovedadesClienteOLD_VALUE: TStringField
      FieldName = 'OLD_VALUE'
      Size = 255
    end
  end
  object DSP_NovedadesCliente: TDataSetProvider
    DataSet = ZQ_NovedadesCliente
    Left = 69
    Top = 182
  end
  object ZQ_NovedadesClienteCant: TZQuery
    Connection = DM.ConexionLectura
    AfterScroll = ZQ_NovedadesClienteAfterScroll
    SQL.Strings = (
      'select count(ta.id)'
      'from z_sinc_tabla ta'
      'left join z_sinc_clave cl on (ta.id = cl.log_tables_id)'
      'left join z_sinc_campo ca on (ta.id = ca.log_tables_id)'
      'where ta.id_sincro_lote is null'
      '  and ta.user_name <> '#39'SINCRO'#39)
    Params = <>
    Left = 197
    Top = 134
    object ZQ_NovedadesClienteCantCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
    end
  end
  object ZQ_CrearLote: TZQuery
    Connection = DM.ConexionLectura
    SQL.Strings = (
      'execute procedure z_sinc_generar_lote')
    Params = <>
    Left = 49
    Top = 310
  end
  object ZQ_UltimoLote: TZQuery
    Connection = DM.ConexionLectura
    SQL.Strings = (
      'select first 1 ultimo_lote'
      'from z_sincro_lote z'
      'order by ultimo_lote desc')
    Params = <>
    Left = 49
    Top = 358
    object ZQ_UltimoLoteULTIMO_LOTE: TIntegerField
      FieldName = 'ULTIMO_LOTE'
      ReadOnly = True
    end
  end
  object ZQ_UltimoArchivoServer: TZQuery
    Connection = DM.ConexionLectura
    SQL.Strings = (
      'select first 1 z.ultimo_archivo'
      'from z_sincro_server z'
      'order by z.ultimo_archivo desc')
    Params = <>
    Left = 522
    Top = 184
    object ZQ_UltimoArchivoServerULTIMO_ARCHIVO: TStringField
      FieldName = 'ULTIMO_ARCHIVO'
      ReadOnly = True
      Size = 100
    end
  end
  object CD_Tablas_Actualizar: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 145
    Top = 310
    object CD_Tablas_Actualizar_Tabla: TStringField
      FieldName = '_Tabla'
      Size = 67
    end
    object CD_Tablas_Actualizar_CampoClave: TStringField
      FieldName = '_CampoClave'
      Size = 67
    end
    object CD_Tablas_Actualizar_Clave: TStringField
      DisplayWidth = 255
      FieldName = '_Clave'
      Size = 67
    end
    object CD_Tablas_Actualizar_Operacion: TStringField
      FieldName = '_Operacion'
      Size = 1
    end
    object CD_Tablas_Actualizar_Fecha: TDateTimeField
      FieldName = '_Fecha'
    end
    object CD_Tablas_Actualizar_Id: TStringField
      FieldName = '_Id'
      Size = 40
    end
    object CD_Tablas_Actualizar_Usuario: TStringField
      FieldName = '_Usuario'
      Size = 67
    end
  end
  object CD_ProcesarNovedades: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 521
    Top = 86
    object CD_ProcesarNovedadesID: TIntegerField
      FieldName = 'ID'
    end
    object CD_ProcesarNovedadesOPERATION: TStringField
      FieldName = 'OPERATION'
      Required = True
      Size = 1
    end
    object CD_ProcesarNovedadesDATE_TIME: TDateTimeField
      FieldName = 'DATE_TIME'
      Required = True
    end
    object CD_ProcesarNovedadesUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 67
    end
    object CD_ProcesarNovedadesTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      Required = True
      Size = 67
    end
    object CD_ProcesarNovedadesKEY_FIELD: TStringField
      FieldName = 'KEY_FIELD'
      Required = True
      Size = 67
    end
    object CD_ProcesarNovedadesKEY_VALUE: TStringField
      FieldName = 'KEY_VALUE'
      Size = 255
    end
    object CD_ProcesarNovedadesFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Required = True
      Size = 67
    end
    object CD_ProcesarNovedadesNEW_VALUE: TStringField
      FieldName = 'NEW_VALUE'
      Size = 255
    end
    object CD_ProcesarNovedadesOLD_VALUE: TStringField
      FieldName = 'OLD_VALUE'
      Size = 255
    end
  end
  object DS_Tablas_Actualizar: TDataSource
    DataSet = CD_Tablas_Actualizar
    Left = 145
    Top = 358
  end
  object ZQ_GrabarUltimoArchivoServer: TZQuery
    Connection = DM.ConexionEscritura
    SQL.Strings = (
      'select z.*'
      'from z_sincro_server z')
    Params = <>
    Left = 661
    Top = 184
    object ZQ_GrabarUltimoArchivoServerID_SINCRO_SERVER: TIntegerField
      FieldName = 'ID_SINCRO_SERVER'
    end
    object ZQ_GrabarUltimoArchivoServerFECHA_Y_HORA: TDateTimeField
      FieldName = 'FECHA_Y_HORA'
    end
    object ZQ_GrabarUltimoArchivoServerULTIMO_ARCHIVO: TStringField
      FieldName = 'ULTIMO_ARCHIVO'
      Size = 100
    end
  end
  object CD_ListaNovedades: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 663
    Top = 86
    object CD_ListaNovedades_Origen: TStringField
      FieldName = '_Origen'
      Size = 30
    end
    object CD_ListaNovedades_NombreArchivo: TStringField
      FieldName = '_NombreArchivo'
      Size = 100
    end
    object CD_ListaNovedades_Estado: TStringField
      FieldName = '_Estado'
    end
    object CD_ListaNovedades_idCliente: TIntegerField
      FieldName = '_idCliente'
    end
  end
  object DS_ListaNovedades: TDataSource
    DataSet = CD_ListaNovedades
    Left = 663
    Top = 134
  end
  object EKOrdGridDownload: TEKOrdenarGrilla
    Grilla = DBGridDownload
    Filtros = <
      item
        TituloColumna = 'ID'
        Visible = True
      end
      item
        TituloColumna = 'Operaci'#243'n'
        Visible = True
      end
      item
        TituloColumna = 'Fecha y Hora'
        Visible = True
      end
      item
        TituloColumna = 'Usuario'
        Visible = True
      end
      item
        TituloColumna = 'Tabla'
        Visible = True
      end
      item
        TituloColumna = 'Campo Clave'
        Visible = True
      end
      item
        TituloColumna = 'Valor Clave'
        Visible = True
      end
      item
        TituloColumna = 'Campo'
        Visible = True
      end
      item
        TituloColumna = 'Valor Nuevo'
        Visible = True
      end
      item
        TituloColumna = 'Valor Viejo'
        Visible = True
      end>
    NombreGuardar = 'DBGridDownload'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = False
    PermitirMover = False
    PermitirFiltrar = False
    Left = 924
    Top = 382
  end
  object EKOrdGridListaNovedades: TEKOrdenarGrilla
    Grilla = DBGridListaNovedades
    Filtros = <
      item
        TituloColumna = 'Origen'
        Visible = True
      end
      item
        TituloColumna = 'Archivo'
        Visible = True
      end
      item
        TituloColumna = 'Procesado'
        Visible = True
      end>
    NombreGuardar = 'DBGridListaNovedades'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = False
    PermitirMover = False
    PermitirFiltrar = False
    Left = 924
    Top = 430
  end
  object EKOrdGridUpload: TEKOrdenarGrilla
    Grilla = DBGridUpload
    Filtros = <
      item
        TituloColumna = 'ID'
        Visible = True
      end
      item
        TituloColumna = 'Operaci'#243'n'
        Visible = True
      end
      item
        TituloColumna = 'Fecha y Hora'
        Visible = True
      end
      item
        TituloColumna = 'Usuario'
        Visible = True
      end
      item
        TituloColumna = 'Tabla'
        Visible = True
      end
      item
        TituloColumna = 'Campo Clave'
        Visible = True
      end
      item
        TituloColumna = 'Valor Clave'
        Visible = True
      end
      item
        TituloColumna = 'Campo'
        Visible = True
      end
      item
        TituloColumna = 'Valor Nuevo'
        Visible = True
      end
      item
        TituloColumna = 'Valor Viejo'
        Visible = True
      end>
    NombreGuardar = 'DBGridUpload'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = False
    PermitirMover = False
    PermitirFiltrar = False
    Left = 924
    Top = 334
  end
  object EKOrdGridTablasActualizar: TEKOrdenarGrilla
    Grilla = DBGridTablasActualizar
    Filtros = <
      item
        TituloColumna = 'Id'
        Visible = True
      end
      item
        TituloColumna = 'Nombre Tabla'
        Visible = True
      end
      item
        TituloColumna = 'Campo Clave'
        Visible = True
      end
      item
        TituloColumna = 'Valor Clave'
        Visible = True
      end
      item
        TituloColumna = 'Operacion'
        Visible = True
      end
      item
        TituloColumna = 'Fecha'
        Visible = True
      end>
    NombreGuardar = 'DBGridTablasActualizar'
    AltoTituloColumna = 15
    FuenteNormal = []
    PermitirOrdenar = False
    PermitirMover = False
    PermitirFiltrar = False
    Left = 924
    Top = 478
  end
  object ZQ_ListadoClientes: TZQuery
    Connection = DM.ConexionLectura
    SQL.Strings = (
      'select id_sincro_cliente, nombre_cliente, id_cliente'
      'from z_sincro_cliente')
    Params = <>
    Left = 306
    Top = 310
    object ZQ_ListadoClientesID_SINCRO_CLIENTE: TIntegerField
      FieldName = 'ID_SINCRO_CLIENTE'
      Required = True
    end
    object ZQ_ListadoClientesNOMBRE_CLIENTE: TStringField
      FieldName = 'NOMBRE_CLIENTE'
      Size = 50
    end
    object ZQ_ListadoClientesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
  end
  object ZQ_UltimoArchivoCliente: TZQuery
    Connection = DM.ConexionLectura
    SQL.Strings = (
      
        'select first 1 id_sincro_cli_archivo, id_sincro_cliente, fecha_y' +
        '_hora, ultimo_archivo'
      'from z_sincro_cliente_archivos'
      'where id_sincro_cliente = :id_sincro_cliente'
      'order by ultimo_archivo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_sincro_cliente'
        ParamType = ptUnknown
      end>
    Left = 306
    Top = 358
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_sincro_cliente'
        ParamType = ptUnknown
      end>
    object ZQ_UltimoArchivoClienteID_SINCRO_CLI_ARCHIVO: TIntegerField
      FieldName = 'ID_SINCRO_CLI_ARCHIVO'
    end
    object ZQ_UltimoArchivoClienteID_SINCRO_CLIENTE: TIntegerField
      FieldName = 'ID_SINCRO_CLIENTE'
    end
    object ZQ_UltimoArchivoClienteFECHA_Y_HORA: TDateTimeField
      FieldName = 'FECHA_Y_HORA'
    end
    object ZQ_UltimoArchivoClienteULTIMO_ARCHIVO: TStringField
      FieldName = 'ULTIMO_ARCHIVO'
      Size = 100
    end
  end
  object ZQ_Sinc_Tabla: TZQuery
    Connection = DM.ConexionEscritura
    SQL.Strings = (
      'select *'
      'from z_sinc_tabla')
    Params = <>
    Left = 474
    Top = 310
    object ZQ_Sinc_TablaID: TLargeintField
      FieldName = 'ID'
    end
    object ZQ_Sinc_TablaTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      Size = 67
    end
    object ZQ_Sinc_TablaOPERATION: TStringField
      FieldName = 'OPERATION'
      Size = 1
    end
    object ZQ_Sinc_TablaDATE_TIME: TDateTimeField
      FieldName = 'DATE_TIME'
    end
    object ZQ_Sinc_TablaUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Size = 67
    end
    object ZQ_Sinc_TablaID_SINCRO_LOTE: TIntegerField
      FieldName = 'ID_SINCRO_LOTE'
    end
  end
  object ZQ_Sinc_Clave: TZQuery
    Connection = DM.ConexionEscritura
    SQL.Strings = (
      'select *'
      'from z_sinc_clave')
    Params = <>
    Left = 474
    Top = 359
    object ZQ_Sinc_ClaveLOG_TABLES_ID: TLargeintField
      FieldName = 'LOG_TABLES_ID'
    end
    object ZQ_Sinc_ClaveKEY_FIELD: TStringField
      FieldName = 'KEY_FIELD'
      Size = 67
    end
    object ZQ_Sinc_ClaveKEY_VALUE: TStringField
      FieldName = 'KEY_VALUE'
      Size = 255
    end
  end
  object ZQ_Sinc_Campo: TZQuery
    Connection = DM.ConexionEscritura
    SQL.Strings = (
      'select *'
      'from z_sinc_campo')
    Params = <>
    Left = 474
    Top = 415
    object ZQ_Sinc_CampoLOG_TABLES_ID: TLargeintField
      FieldName = 'LOG_TABLES_ID'
    end
    object ZQ_Sinc_CampoFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Size = 67
    end
    object ZQ_Sinc_CampoOLD_VALUE: TStringField
      FieldName = 'OLD_VALUE'
      Size = 255
    end
    object ZQ_Sinc_CampoNEW_VALUE: TStringField
      FieldName = 'NEW_VALUE'
      Size = 255
    end
  end
  object ZQ_Sinc_Blob: TZQuery
    Connection = DM.ConexionEscritura
    SQL.Strings = (
      'select *'
      'from z_sinc_campo_blob')
    Params = <>
    Left = 474
    Top = 463
    object ZQ_Sinc_BlobLOG_TABLES_ID: TLargeintField
      FieldName = 'LOG_TABLES_ID'
    end
    object ZQ_Sinc_BlobFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Size = 67
    end
    object ZQ_Sinc_BlobOLD_CHAR_VALUE: TStringField
      FieldName = 'OLD_CHAR_VALUE'
      Size = 8000
    end
    object ZQ_Sinc_BlobNEW_CHAR_VALUE: TStringField
      FieldName = 'NEW_CHAR_VALUE'
      Size = 8000
    end
    object ZQ_Sinc_BlobOLD_BLOB_VALUE: TBlobField
      FieldName = 'OLD_BLOB_VALUE'
    end
    object ZQ_Sinc_BlobNEW_BLOB_VALUE: TBlobField
      FieldName = 'NEW_BLOB_VALUE'
    end
  end
  object ZQ_GrabarUltimoArchivoCliente: TZQuery
    Connection = DM.ConexionEscritura
    SQL.Strings = (
      'select *'
      'from z_sincro_cliente_archivos')
    Params = <>
    Left = 306
    Top = 414
    object ZQ_GrabarUltimoArchivoClienteID_SINCRO_CLI_ARCHIVO: TIntegerField
      FieldName = 'ID_SINCRO_CLI_ARCHIVO'
    end
    object ZQ_GrabarUltimoArchivoClienteID_SINCRO_CLIENTE: TIntegerField
      FieldName = 'ID_SINCRO_CLIENTE'
    end
    object ZQ_GrabarUltimoArchivoClienteFECHA_Y_HORA: TDateTimeField
      FieldName = 'FECHA_Y_HORA'
    end
    object ZQ_GrabarUltimoArchivoClienteULTIMO_ARCHIVO: TStringField
      FieldName = 'ULTIMO_ARCHIVO'
      Size = 100
    end
  end
end
