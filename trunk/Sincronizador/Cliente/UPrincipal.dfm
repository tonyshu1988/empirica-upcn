object FPrincipal: TFPrincipal
  Left = 190
  Top = 104
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
  OnCloseQuery = FormCloseQuery
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
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_NombreArchivo'
              Title.Alignment = taCenter
              Title.Caption = 'Archivo'
              Width = 170
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = '_Estado'
              Title.Alignment = taCenter
              Title.Caption = 'Procesado'
              Width = 67
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
          ScrollBars = ssVertical
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
        Left = 617
        Top = 1
        Width = 4
        Height = 208
        Align = alRight
      end
      object PanelTablas: TPanel
        Left = 621
        Top = 1
        Width = 387
        Height = 208
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          Left = 0
          Top = 0
          Width = 387
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
          Width = 387
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
              Width = 52
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
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_Operacion'
              Title.Alignment = taCenter
              Title.Caption = 'Op.'
              Visible = True
            end
            item
              Expanded = False
              FieldName = '_Fecha'
              Title.Alignment = taCenter
              Title.Caption = 'Fecha'
              Width = 140
              Visible = True
            end>
        end
      end
      object PanelDatosXML: TPanel
        Left = 1
        Top = 1
        Width = 616
        Height = 208
        Align = alClient
        BevelOuter = bvNone
        Caption = 'PanelDatosXML'
        TabOrder = 1
        object Label5: TLabel
          Left = 0
          Top = 0
          Width = 616
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
          Width = 616
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
              Title.Caption = 'Op.'
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
            end
            item
              Expanded = False
              FieldName = 'FBLOB_NAME'
              Title.Alignment = taCenter
              Title.Caption = 'Campo Blob'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FBLOB_OLD_BLOB_VALUE'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Blob Viejo'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FBLOB_NEW_BLOB_VALUE'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Blob Nuevo'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FBLOB_OLD_CHAR_VALUE'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Char Viejo'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FBLOB_NEW_CHAR_VALUE'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Char Nuevo'
              Width = 200
              Visible = True
            end>
        end
        object DBGridDownload: TDBGrid
          Left = 0
          Top = 15
          Width = 616
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
              Title.Caption = 'Op.'
              Width = 39
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
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TABLE_NAME'
              Title.Alignment = taCenter
              Title.Caption = 'Tabla'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'KEY_FIELD'
              Title.Alignment = taCenter
              Title.Caption = 'Campo Clave'
              Width = 115
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
            end
            item
              Expanded = False
              FieldName = 'FBLOB_NAME'
              Title.Alignment = taCenter
              Title.Caption = 'Campo Blob'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FBLOB_OLD_BLOB_VALUE'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Blob Viejo'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FBLOB_NEW_BLOB_VALUE'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Blob Nuevo'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FBLOB_OLD_CHAR_VALUE'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Char Viejo'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FBLOB_NEW_CHAR_VALUE'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Char Nuevo'
              Width = 200
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
        Left = 75
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
        Left = 295
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
      object btnPararContinuar: TButton
        Left = 4
        Top = 17
        Width = 68
        Height = 21
        Caption = 'Parar'
        TabOrder = 0
        OnClick = btnPararContinuarClick
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
    Left = 664
    Top = 446
  end
  object Timer: TTimer
    Enabled = False
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
      ReadOnly = True
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
    object CD_NovedadesClienteFBLOB_NAME: TStringField
      FieldName = 'FBLOB_NAME'
      Size = 67
    end
    object CD_NovedadesClienteFBLOB_OLD_CHAR_VALUE: TStringField
      FieldName = 'FBLOB_OLD_CHAR_VALUE'
      Size = 8000
    end
    object CD_NovedadesClienteFBLOB_NEW_CHAR_VALUE: TStringField
      FieldName = 'FBLOB_NEW_CHAR_VALUE'
      Size = 8000
    end
    object CD_NovedadesClienteFBLOB_OLD_BLOB_VALUE: TBlobField
      FieldName = 'FBLOB_OLD_BLOB_VALUE'
    end
    object CD_NovedadesClienteFBLOB_NEW_BLOB_VALUE: TBlobField
      FieldName = 'FBLOB_NEW_BLOB_VALUE'
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
      
        'select ID, OPERATION, DATE_TIME, USER_NAME, TABLE_NAME, KEY_FIEL' +
        'D, KEY_VALUE, FIELD_NAME, NEW_VALUE, OLD_VALUE,'
      
        '       FBLOB_NAME, FBLOB_OLD_CHAR_VALUE, FBLOB_NEW_CHAR_VALUE, F' +
        'BLOB_OLD_BLOB_VALUE, FBLOB_NEW_BLOB_VALUE'
      'from Z_SINC_GENERAR_ARCHIVO_CLIENTE(:RANGO_NOVEDADES)'
      'order by ID')
    Params = <
      item
        DataType = ftUnknown
        Name = 'RANGO_NOVEDADES'
        ParamType = ptUnknown
      end>
    Left = 197
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RANGO_NOVEDADES'
        ParamType = ptUnknown
      end>
    object ZQ_NovedadesClienteID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ZQ_NovedadesClienteOPERATION: TStringField
      FieldName = 'OPERATION'
      Size = 1
    end
    object ZQ_NovedadesClienteDATE_TIME: TDateTimeField
      FieldName = 'DATE_TIME'
    end
    object ZQ_NovedadesClienteUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Size = 67
    end
    object ZQ_NovedadesClienteTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      Size = 67
    end
    object ZQ_NovedadesClienteKEY_FIELD: TStringField
      FieldName = 'KEY_FIELD'
      Size = 67
    end
    object ZQ_NovedadesClienteKEY_VALUE: TStringField
      FieldName = 'KEY_VALUE'
      Size = 255
    end
    object ZQ_NovedadesClienteFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
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
    object ZQ_NovedadesClienteFBLOB_NAME: TStringField
      FieldName = 'FBLOB_NAME'
      Size = 67
    end
    object ZQ_NovedadesClienteFBLOB_OLD_CHAR_VALUE: TStringField
      FieldName = 'FBLOB_OLD_CHAR_VALUE'
      Size = 8000
    end
    object ZQ_NovedadesClienteFBLOB_NEW_CHAR_VALUE: TStringField
      FieldName = 'FBLOB_NEW_CHAR_VALUE'
      Size = 8000
    end
    object ZQ_NovedadesClienteFBLOB_OLD_BLOB_VALUE: TBlobField
      FieldName = 'FBLOB_OLD_BLOB_VALUE'
    end
    object ZQ_NovedadesClienteFBLOB_NEW_BLOB_VALUE: TBlobField
      FieldName = 'FBLOB_NEW_BLOB_VALUE'
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
      'select count(id), min(id), max(id)'
      'from Z_SINC_GENERAR_ARCHIVO_CLIENTE(:RANGO_NOVEDADES)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'RANGO_NOVEDADES'
        ParamType = ptUnknown
      end>
    Left = 197
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RANGO_NOVEDADES'
        ParamType = ptUnknown
      end>
    object ZQ_NovedadesClienteCantCOUNT: TIntegerField
      FieldName = 'COUNT'
      ReadOnly = True
    end
    object ZQ_NovedadesClienteCantMIN: TIntegerField
      FieldName = 'MIN'
      ReadOnly = True
    end
    object ZQ_NovedadesClienteCantMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object ZQ_CrearLote: TZQuery
    Connection = DM.ConexionEscritura
    SQL.Strings = (
      'execute procedure z_sinc_generar_lote(:id_min, :id_max)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_min'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_max'
        ParamType = ptUnknown
      end>
    Left = 665
    Top = 342
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_min'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'id_max'
        ParamType = ptUnknown
      end>
  end
  object ZQ_UltimoLote: TZQuery
    Connection = DM.ConexionLectura
    SQL.Strings = (
      'select first 1 ultimo_lote'
      'from z_sincro_lote z'
      'order by ultimo_lote desc')
    Params = <>
    Left = 665
    Top = 390
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
    Left = 761
    Top = 342
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
    IndexFieldNames = 'ID'
    Params = <>
    Left = 521
    Top = 88
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
    object CD_ProcesarNovedadesFBLOB_NAME: TStringField
      FieldName = 'FBLOB_NAME'
      Size = 67
    end
    object CD_ProcesarNovedadesFBLOB_OLD_CHAR_VALUE: TStringField
      FieldName = 'FBLOB_OLD_CHAR_VALUE'
      Size = 8000
    end
    object CD_ProcesarNovedadesFBLOB_NEW_CHAR_VALUE: TStringField
      FieldName = 'FBLOB_NEW_CHAR_VALUE'
      Size = 8000
    end
    object CD_ProcesarNovedadesFBLOB_OLD_BLOB_VALUE: TBlobField
      FieldName = 'FBLOB_OLD_BLOB_VALUE'
    end
    object CD_ProcesarNovedadesFBLOB_NEW_BLOB_VALUE: TBlobField
      FieldName = 'FBLOB_NEW_BLOB_VALUE'
    end
  end
  object DS_Tablas_Actualizar: TDataSource
    DataSet = CD_Tablas_Actualizar
    Left = 761
    Top = 390
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
    IndexFieldNames = '_NombreArchivo'
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
        TituloColumna = 'Op.'
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
      end
      item
        TituloColumna = 'Campo Blob'
        Visible = True
      end
      item
        TituloColumna = 'Valor Blob Viejo'
        Visible = True
      end
      item
        TituloColumna = 'Valor Blob Nuevo'
        Visible = True
      end
      item
        TituloColumna = 'Valor Char Viejo'
        Visible = True
      end
      item
        TituloColumna = 'Valor Char Nuevo'
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
        TituloColumna = 'Op.'
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
      end
      item
        TituloColumna = 'Campo Blob'
        Visible = True
      end
      item
        TituloColumna = 'Valor Blob Viejo'
        Visible = True
      end
      item
        TituloColumna = 'Valor Blob Nuevo'
        Visible = True
      end
      item
        TituloColumna = 'Valor Char Viejo'
        Visible = True
      end
      item
        TituloColumna = 'Valor Char Nuevo'
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
        TituloColumna = 'Op.'
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
    Left = 429
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
      'order by ultimo_archivo desc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id_sincro_cliente'
        ParamType = ptUnknown
      end>
    Left = 429
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
    Left = 551
    Top = 309
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
    Left = 551
    Top = 358
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
    Left = 551
    Top = 414
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
    Left = 551
    Top = 462
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
    Left = 429
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
  object ZQ_NovedadesServer: TZQuery
    Connection = DM.ConexionLectura
    AfterScroll = ZQ_NovedadesServerAfterScroll
    SQL.Strings = (
      
        'select id, operation, date_time, user_name, table_name, key_fiel' +
        'd, key_value, field_name, new_value, old_value,'
      
        '       fblob_name, fblob_old_char_value, fblob_new_char_value, f' +
        'blob_old_blob_value, fblob_new_blob_value, orden_ingreso'
      'from z_sinc_generar_archivo_server(:RANGO_NOVEDADES)'
      'order by ID')
    Params = <
      item
        DataType = ftUnknown
        Name = 'RANGO_NOVEDADES'
        ParamType = ptUnknown
      end>
    Left = 202
    Top = 310
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RANGO_NOVEDADES'
        ParamType = ptUnknown
      end>
    object ZQ_NovedadesServerID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ZQ_NovedadesServerOPERATION: TStringField
      FieldName = 'OPERATION'
      Size = 1
    end
    object ZQ_NovedadesServerDATE_TIME: TDateTimeField
      FieldName = 'DATE_TIME'
    end
    object ZQ_NovedadesServerUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Size = 67
    end
    object ZQ_NovedadesServerTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      Size = 67
    end
    object ZQ_NovedadesServerKEY_FIELD: TStringField
      FieldName = 'KEY_FIELD'
      Size = 67
    end
    object ZQ_NovedadesServerKEY_VALUE: TStringField
      FieldName = 'KEY_VALUE'
      Size = 255
    end
    object ZQ_NovedadesServerFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Size = 67
    end
    object ZQ_NovedadesServerNEW_VALUE: TStringField
      FieldName = 'NEW_VALUE'
      Size = 255
    end
    object ZQ_NovedadesServerOLD_VALUE: TStringField
      FieldName = 'OLD_VALUE'
      Size = 255
    end
    object ZQ_NovedadesServerFBLOB_NAME: TStringField
      FieldName = 'FBLOB_NAME'
      Size = 67
    end
    object ZQ_NovedadesServerFBLOB_OLD_CHAR_VALUE: TStringField
      FieldName = 'FBLOB_OLD_CHAR_VALUE'
      Size = 8000
    end
    object ZQ_NovedadesServerFBLOB_NEW_CHAR_VALUE: TStringField
      FieldName = 'FBLOB_NEW_CHAR_VALUE'
      Size = 8000
    end
    object ZQ_NovedadesServerFBLOB_OLD_BLOB_VALUE: TBlobField
      FieldName = 'FBLOB_OLD_BLOB_VALUE'
    end
    object ZQ_NovedadesServerFBLOB_NEW_BLOB_VALUE: TBlobField
      FieldName = 'FBLOB_NEW_BLOB_VALUE'
    end
  end
  object ZQ_NovedadesServerCant: TZQuery
    Connection = DM.ConexionLectura
    SQL.Strings = (
      'select count(id), min(orden_ingreso), max(orden_ingreso)'
      'from Z_SINC_GENERAR_ARCHIVO_SERVER(:RANGO_NOVEDADES)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'RANGO_NOVEDADES'
        ParamType = ptUnknown
      end>
    Left = 202
    Top = 358
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RANGO_NOVEDADES'
        ParamType = ptUnknown
      end>
    object ZQ_NovedadesServerCantCOUNT: TIntegerField
      FieldName = 'COUNT'
    end
    object ZQ_NovedadesServerCantMIN: TIntegerField
      FieldName = 'MIN'
      ReadOnly = True
    end
    object ZQ_NovedadesServerCantMAX: TIntegerField
      FieldName = 'MAX'
      ReadOnly = True
    end
  end
  object DS_NovedadesServer: TDataSource
    DataSet = CD_NovedadesServer
    Left = 58
    Top = 359
  end
  object DSP_NovedadesServer: TDataSetProvider
    DataSet = ZQ_NovedadesServer
    Left = 58
    Top = 415
  end
  object CD_NovedadesServer: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_NovedadesServer'
    Left = 58
    Top = 312
    object CD_NovedadesServerID: TIntegerField
      FieldName = 'ID'
      ReadOnly = True
    end
    object CD_NovedadesServerOPERATION: TStringField
      FieldName = 'OPERATION'
      Required = True
      Size = 1
    end
    object CD_NovedadesServerDATE_TIME: TDateTimeField
      FieldName = 'DATE_TIME'
      Required = True
    end
    object CD_NovedadesServerUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 67
    end
    object CD_NovedadesServerTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      Required = True
      Size = 67
    end
    object CD_NovedadesServerKEY_FIELD: TStringField
      FieldName = 'KEY_FIELD'
      Required = True
      Size = 67
    end
    object CD_NovedadesServerKEY_VALUE: TStringField
      FieldName = 'KEY_VALUE'
      Size = 255
    end
    object CD_NovedadesServerFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Required = True
      Size = 67
    end
    object CD_NovedadesServerNEW_VALUE: TStringField
      FieldName = 'NEW_VALUE'
      Size = 255
    end
    object CD_NovedadesServerOLD_VALUE: TStringField
      FieldName = 'OLD_VALUE'
      Size = 255
    end
    object CD_NovedadesServerFBLOB_NAME: TStringField
      FieldName = 'FBLOB_NAME'
      Size = 67
    end
    object CD_NovedadesServerFBLOB_OLD_CHAR_VALUE: TStringField
      FieldName = 'FBLOB_OLD_CHAR_VALUE'
      Size = 8000
    end
    object CD_NovedadesServerFBLOB_NEW_CHAR_VALUE: TStringField
      FieldName = 'FBLOB_NEW_CHAR_VALUE'
      Size = 8000
    end
    object CD_NovedadesServerFBLOB_OLD_BLOB_VALUE: TBlobField
      FieldName = 'FBLOB_OLD_BLOB_VALUE'
    end
    object CD_NovedadesServerFBLOB_NEW_BLOB_VALUE: TBlobField
      FieldName = 'FBLOB_NEW_BLOB_VALUE'
    end
  end
  object ZQ_VerificarUpdate: TZQuery
    Connection = DM.ConexionLectura
    SQL.Strings = (
      'select first 1 ta.id'
      'from z_sinc_tabla ta'
      'left join z_sinc_clave cl on (ta.id = cl.log_tables_id)'
      'where ta.table_name = :table_name'
      '  and ta.date_time > :date_time'
      '  and cl.key_field = :key_field'
      '  and cl.key_value = :key_value')
    Params = <
      item
        DataType = ftUnknown
        Name = 'table_name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'date_time'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'key_field'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'key_value'
        ParamType = ptUnknown
      end>
    Left = 402
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'table_name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'date_time'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'key_field'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'key_value'
        ParamType = ptUnknown
      end>
    object ZQ_VerificarUpdateID: TLargeintField
      FieldName = 'ID'
    end
  end
  object PopupMenu: TPopupMenu
    Left = 202
    Top = 415
    object popUpItemMostrarOcultar: TMenuItem
      Caption = 'Mostrar/Ocultar'
      OnClick = popUpItemMostrarOcultarClick
    end
    object popUpItemSalir: TMenuItem
      Caption = 'Salir'
      OnClick = popUpItemSalirClick
    end
  end
  object EKImageListIcono: TEKImageList32
    Left = 50
    Top = 463
    Bitmap = {
      00000001000F000100400601004E0C06005311380054124A004F0E0C41602C04
      998052C6A4895CEAAC946DEA937126E79F813DEAB09862EAC6B693C1BBAB860F
      0019000100440701004C0B0E0062196001862ADE059F42EC00671D7A104F1419
      6F663B52B2976AFEB0976BFEAA8A44FEB9A26FFECFBF9DFED1C09CFEB59F6FA4
      003D050100470913004E1063007221C702A232FE08BF47FF06923EDD1A4D16A3
      4B451B84A58D65E8BCA67FFEBBA67EFED7CEBFFEE8E3DAFED0C4AAECB7A4782A
      003D050100490A1B0058146C02A234F800CA47FF00DC58FF0ECD58FE256428FB
      2A4C16FD4E622EFDC3B59BFFD1C6B4FFE1DACFFEEAE6DFFBD5CFC449B4A99201
      003A0501005A120E018527D400B93BFF00D751FF00DA53FF00C33BFF17B551FF
      235012FF0F520DFF879D77FFDED6CAFFEAE6DFFED6D1C870D0CBC301413F3C01
      003D0F0100731F8200952CFE00A632FE00BE37FF00C63AFF00A82DFF038623FF
      25923BFF0F6414FF267327FFDADACDFFAAA992FD6A684443425D300100010001
      00421201037E220C236B1C1718741FE500A32BFF00AA2AFF1F8D2DFFA27F2DFF
      437E24FF1E8426FF208426FF599F59FF367723FF396019E62F56160A0F130401
      00080201282909017D340B4D2E6216FF008E22FF009321FF118428FF2C9330FF
      339E3BFF36A13DFF349D38FF379E37FF3B9C33FF388022FF2F54215D14254301
      0000000124360A01325A0C9337752AFF14882EFF009320FF0F8E2DFF4BB651FF
      53BE5AFF55BF5BFF388779FF1A3BC6FF121CDDFF1119CFFF0F22B0C2050ADE18
      0000000121450E012F7D18A8418F44FF59B76FFF49CC69FF55AF61FF92DB80FF
      76DF79FF4F989DFF0102FDFF0402FAFF2D3DC6FF2737BDFF0205F8FF0001FA55
      00000001285214014A9C2A8B6BA65FFF82C292FF7AC08AFF81B388FFFCF4DDFF
      EDF0C7FF242CEAFF0000FFFF677496FF7FCC5DFF62BD49FF3B7164B0080FE52E
      00000001284C160164B23B4796B862FFC7CBA2FFC3D3B4FFCED9C7FFFEFAF1FF
      FBF3E6FF0202FEFF0000FFFFA8CE7BFF92BB53FF6AB442FF548F3A4C223B7101
      0000000115280D017ABF4903B2BF5ACCFED7A8FFFFF0D8FFFFF9EFFFFFFBF5FF
      FCF4E8FF0404FEFF0000FFFFC7A35CFF9B9133FF777329C75975460315217D01
      000000010000000165983C01C8A15124F0AC6CE4FFDEB8FFFFEFDAFFFFF3E2FF
      FFEDD5FF3A33EFFF0000FFFF79427DFF9B3416E75F295823180FD0310000FE31
      000000010000000113170901B8683201E28F521EF4A164B8FAC286FFF5CD94FF
      EFC989FFB37A82FF0402F9FF0100FDFF1909D3CA0A03EDB40000FFFB0000FF55
      000000010000000100000001120D0401A44B2B01DFA95F01CFCE7239C2DD7E7A
      BFC9738BAB8F4C724746AF530202FC9F0000FFC70000FFBE0000FF860000FF17
      00000001000F000100400601004E0C06005311380054124A004F0E0C41602C04
      998052C6A4895CEAAC946DEA937126E79F813DEAB09862EAC6B693C1BBAB860F
      0019000100440701004C0B0E0062196001862ADE059F42EC00671D7A104F1419
      6F663B52B2976AFEB0976BFEAA8A44FEB9A26FFECFBF9DFED1C09CFEB59F6FA4
      003D050100470913004E1063007221C702A232FE08BF47FF06923EDD1A4D16A3
      4B451B84A58D65E8BCA67FFEBBA67EFED7CEBFFEE8E3DAFED0C4AAECB7A4782A
      003D050100490A1B0058146C02A234F800CA47FF00DC58FF0ECD58FE256428FB
      2A4C16FD4E622EFDC3B59BFFD1C6B4FFE1DACFFEEAE6DFFBD5CFC449B4A99201
      003A0501005A120E018527D400B93BFF00D751FF00DA53FF00C33BFF17B551FF
      235012FF0F520DFF879D77FFDED6CAFFEAE6DFFED6D1C870D0CBC301413F3C01
      003D0F0100731F8200952CFE00A632FE00BE37FF00C63AFF00A82DFF038623FF
      25923BFF0F6414FF267327FFDADACDFFAAA992FD6A684443425D300100010001
      00421201037E220C236B1C1718741FE500A32BFF00AA2AFF1F8D2DFFA27F2DFF
      437E24FF1E8426FF208426FF599F59FF367723FF396019E62F56160A0F130401
      00080201282909017D340B4D2E6216FF008E22FF009321FF118428FF2C9330FF
      339E3BFF36A13DFF349D38FF379E37FF3B9C33FF388022FF3159165D1A2F0B01
      0000000124360A01325A0C9337752AFF14882EFF009320FF0F8E2DFF4BB651FF
      53BE5AFF3A8884FF1C49AEFF1938C9FF242EBFFF293890FF2C49439A18267901
      0000000121450E012F7D18A8418F44FF59B76FFF49CC69FF55AF61FF92DB80FF
      76DF79FF0E1BEEFF090FF4FF4432C5FF2F3AC4FF0407F9FF0103F8E80608E618
      00000001285214014A9C2A8B6BA65FFF82C292FF7AC08AFF81B388FFFCF4DDFF
      EDF0C7FF8B8DC9FFADCD7EFFB8B85DFF7FCB5DFF213FC7FF0000FFFF0000FE64
      00000001284C160164B23B4796B862FFC7CBA2FFC3D3B4FFCED9C7FFFEFAF1FF
      FFF6E6FFFAEBCCFF7E8CB5FF3046D8FF0C15F0FF0000FFFF0000FFFF0000FF42
      0000000115280D017ABF4903B2BF5ACCFED7A8FFFFF0D8FFFFF9EFFFFFFBF5FF
      FFF6E8FF7872EEFF0000FFFF0000FFFF0201FBFF1003E1DD0200F95C0000FF01
      000000010000000165983C01C8A15124F0AC6CE4FFDEB8FFFFEFDAFFFFF3E2FF
      FFEDD5FF2E2AF4FF0000FFFF6E417EFF93311FE7450F83230801EF190000FF0A
      000000010000000113170901B8683201E28F521EF4A164B8FAC286FFF5CD94FF
      EFC989FF6B48B7FF0000FFFF212BC7FE2B1BAD9B0E04E69D0000FEF10000FF20
      000000010000000100000001120D0401A44B2B01DFA95F01CFCE7239C2DD7E7A
      BFC8738B9A825E721A19E17B0000FEC80000FFDF0000FFCB0000FF960000FF0E
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000003300000033000000330000003300000033000000330000003300000033
      0000003300000033000000330000003300000033000000330000003300000033
      3981CAFF387EC8FF377CC7FF377BC7FF387BC7FF387BC7FF377CC7FF377DC9FF
      377DC9FF377CC7FF387BC7FF387BC7FF377BC7FF377CC7FF387EC8FF3981CAFF
      3A85CDFF54E3FFFF54E3FFFF55E1FFFF55E1FFFF55E2FFFF55E5FFFF54E9FFFF
      54E9FFFF55E5FFFF55E2FFFF55E1FFFF55E1FFFF54E3FFFF54E3FFFF3A85CDFF
      377FC99479B7E4FF51DBFFFF4AD5FFFF4CD5FFFF4CD6FFFF4ADCFFFF66483EFF
      66483EFF4ADCFFFF4CD6FFFF4CD5FFFF4AD5FFFF51DBFFFF79B7E4FF377FC994
      000000003E81C9FFA2E0FAFF3FCFFFFF43CEFFFF45CFFFFF43D6FFFF765B4FFF
      765B4FFF43D6FFFF45CFFFFF43CEFFFF3FCFFFFFA2E0FAFF3E81C9FF00000000
      00000000357FC9445A96D4FF9DE8FFFF37C7FFFF3CC8FFFF3CCFFFFF4ABBE9FF
      4ABBE9FF3CCFFFFF3CC8FFFF37C7FFFF9DE8FFFF5A96D4FF357FC94400000000
      0000000000000000327DC8BB8FBEE6FF6ED7FFFF31C2FFFF33CBFFFF634A3EFF
      634A3EFF33CBFFFF31C2FFFF6ED7FFFF8FBEE6FF327DC8BB0000000000000000
      0000000000000000000000003B81C9FFC0E8FDFF4FCCFFFF26C4FFFF68544BFF
      68544BFF26C4FFFF4FCCFFFFC0E8FDFF3B81C9FF000000000000000000000000
      000000000000000000000000347FC9585696D5FFC5F3FFFF39CAFFFF6B5A53FF
      6B5A53FF39CAFFFFC5F3FFFF5696D5FF347FC958000000000000000000000000
      00000000000000000000000000000000327DC8CF85BDEAFFA3ECFFFF6B5C52FF
      6B5C52FFA3ECFFFF85BDEAFF327DC8CF00000000000000000000000000000000
      000000000000000000000000000000003781CA0A3982CBFFB1E5FFFF9DC8DEFF
      9DC8DEFFB1E5FFFF3982CBFF3781CA0A00000000000000000000000000000000
      0000000000000000000000000000000000000000347FCA6D5297D7FFC0F0FFFF
      C0F0FFFF5297D7FF347FCA6D0000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000327DC7CF83C2F1FF
      83C2F1FF327DC7CF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000003882CA213283CDFF
      3283CDFF3882CA21000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000}
  end
  object TimerError: TTimer
    OnTimer = TimerErrorTimer
    Left = 839
    Top = 187
  end
end
