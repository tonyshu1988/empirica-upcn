object Form1: TForm1
  Left = 303
  Top = 175
  Width = 870
  Height = 500
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 462
    Align = alClient
    TabOrder = 0
    object DBGrid3: TDBGrid
      Left = 1
      Top = 95
      Width = 852
      Height = 113
      Align = alBottom
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'LOG_TABLES_ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KEY_FIELD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KEY_VALUE'
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 452
      Top = 1
      Width = 401
      Height = 94
      Align = alRight
      DataSource = DS_SincroCampo
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TABLE_NAME'
          Width = 195
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPERATION'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE_TIME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USER_NAME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOG_TABLES_ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KEY_FIELD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KEY_VALUE'
          Visible = True
        end>
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 451
      Height = 94
      Align = alLeft
      DataSource = DS_SincroTabla
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TABLE_NAME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPERATION'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE_TIME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USER_NAME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SINCRONIZADO'
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 208
      Width = 852
      Height = 253
      Align = alBottom
      Caption = 'Panel3'
      TabOrder = 3
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 368
        Height = 251
        Align = alLeft
        TabOrder = 0
        object Label7: TLabel
          Left = 109
          Top = 201
          Width = 127
          Height = 13
          Caption = 'Pr'#243'xima Sincronizaci'#243'n en:'
        end
        object RadioGroup1: TRadioGroup
          Left = 16
          Top = 184
          Width = 89
          Height = 62
          Caption = 'Tiempo en'
          ItemIndex = 0
          Items.Strings = (
            'Segundos'
            'Minutos')
          TabOrder = 0
          OnClick = RadioGroup1Click
        end
        object cuenta: TEKEdit
          Tag = 99
          Left = 241
          Top = 197
          Width = 40
          Height = 21
          AutoSize = False
          CharCase = ecUpperCase
          TabOrder = 1
          Text = '10'
          DataType = ftInteger
        end
        object btSincronizar: TButton
          Left = 296
          Top = 216
          Width = 67
          Height = 33
          Caption = 'Sincronizar'
          TabOrder = 2
          OnClick = btSincronizarClick
        end
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 366
          Height = 89
          Align = alTop
          Caption = ' Base Remota '
          TabOrder = 3
          object Label4: TLabel
            Left = 24
            Top = 14
            Width = 24
            Height = 13
            Caption = 'Base'
          end
          object Label5: TLabel
            Left = 24
            Top = 49
            Width = 36
            Height = 13
            Caption = 'Usuario'
          end
          object Label6: TLabel
            Left = 168
            Top = 49
            Width = 46
            Height = 13
            Caption = 'Password'
          end
          object Rbase: TEdit
            Left = 24
            Top = 27
            Width = 265
            Height = 21
            TabOrder = 0
            Text = 'Rbase'
          end
          object RUser: TEdit
            Left = 24
            Top = 62
            Width = 121
            Height = 21
            TabOrder = 1
            Text = 'RUser'
          end
          object RPassword: TEdit
            Left = 168
            Top = 62
            Width = 121
            Height = 21
            PasswordChar = '*'
            TabOrder = 2
            Text = 'RPassword'
          end
        end
        object GroupBox2: TGroupBox
          Left = 1
          Top = 90
          Width = 366
          Height = 88
          Align = alTop
          Caption = ' Base Local '
          TabOrder = 4
          object Label1: TLabel
            Left = 23
            Top = 48
            Width = 36
            Height = 13
            Caption = 'Usuario'
          end
          object Label2: TLabel
            Left = 167
            Top = 48
            Width = 46
            Height = 13
            Caption = 'Password'
          end
          object Label3: TLabel
            Left = 24
            Top = 14
            Width = 24
            Height = 13
            Caption = 'Base'
          end
          object LBase: TEdit
            Left = 24
            Top = 27
            Width = 265
            Height = 21
            TabOrder = 0
            Text = 'LBase'
          end
          object LUser: TEdit
            Left = 23
            Top = 61
            Width = 121
            Height = 21
            TabOrder = 1
            Text = 'LUser'
          end
          object LPassword: TEdit
            Left = 167
            Top = 61
            Width = 121
            Height = 21
            PasswordChar = '*'
            TabOrder = 2
            Text = 'LPassword'
          end
        end
      end
      object Memo1: TMemo
        Left = 369
        Top = 1
        Width = 482
        Height = 251
        Align = alClient
        Lines.Strings = (
          'Memo1')
        TabOrder = 1
      end
    end
  end
  object ZC_Remoto: TZConnection
    Protocol = 'firebird-1.5'
    HostName = '127.0.0.1'
    Database = 'E:\SIGEFA\SiGeFa.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    AutoCommit = False
    Left = 528
    Top = 240
  end
  object ZC_Local: TZConnection
    Protocol = 'firebird-1.5'
    HostName = 'localhost'
    Database = 'E:\Empirica\empirica-upcn\SiGeFa\Bases\SiGeFa.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    AutoCommit = False
    Left = 528
    Top = 296
  end
  object ZQ_SincroTabla: TZQuery
    Connection = ZC_Remoto
    AfterScroll = ZQ_SincroTablaAfterScroll
    SQL.Strings = (
      'select st.*'
      'from z_sinc_tabla st'
      'where (st.sincronizado<>'#39'S'#39')or(st.sincronizado is null)'
      '')
    Params = <>
    Left = 192
    Top = 48
    object ZQ_SincroTablaTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      Required = True
      Size = 201
    end
    object ZQ_SincroTablaOPERATION: TStringField
      FieldName = 'OPERATION'
      Required = True
      Size = 1
    end
    object ZQ_SincroTablaDATE_TIME: TDateTimeField
      FieldName = 'DATE_TIME'
      Required = True
    end
    object ZQ_SincroTablaUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Required = True
      Size = 67
    end
    object ZQ_SincroTablaSINCRONIZADO: TStringField
      FieldName = 'SINCRONIZADO'
      Size = 1
    end
    object ZQ_SincroTablaID: TLargeintField
      FieldName = 'ID'
      Required = True
    end
  end
  object DS_SincroTabla: TDataSource
    DataSet = ZQ_SincroTabla
    Left = 320
    Top = 48
  end
  object Local: TZQuery
    Connection = ZC_Local
    Params = <>
    Left = 608
    Top = 296
  end
  object Remoto: TZQuery
    Connection = ZC_Remoto
    Params = <>
    Left = 608
    Top = 240
  end
  object ZQ_SincroCampo: TZQuery
    Connection = ZC_Remoto
    SQL.Strings = (
      'select *'
      'from z_sinc_campo sc'
      'where sc.log_tables_id=:id')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 496
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object ZQ_SincroCampoLOG_TABLES_ID: TLargeintField
      FieldName = 'LOG_TABLES_ID'
      Required = True
    end
    object ZQ_SincroCampoFIELD_NAME: TStringField
      FieldName = 'FIELD_NAME'
      Required = True
      Size = 201
    end
    object ZQ_SincroCampoOLD_VALUE: TStringField
      FieldName = 'OLD_VALUE'
      Size = 765
    end
    object ZQ_SincroCampoNEW_VALUE: TStringField
      FieldName = 'NEW_VALUE'
      Size = 765
    end
  end
  object DS_SincroCampo: TDataSource
    DataSet = ZQ_SincroCampo
    Left = 416
    Top = 72
  end
  object ZQ_SincroTablaPrimary: TZQuery
    Connection = ZC_Remoto
    SQL.Strings = (
      'select sc.*'
      'from z_sinc_clave sc '
      'where  (:id = sc.log_tables_id)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 192
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
    object ZQ_SincroTablaPrimaryKEY_FIELD: TStringField
      FieldName = 'KEY_FIELD'
      Required = True
      Size = 201
    end
    object ZQ_SincroTablaPrimaryKEY_VALUE: TStringField
      FieldName = 'KEY_VALUE'
      Size = 765
    end
    object ZQ_SincroTablaPrimaryLOG_TABLES_ID: TLargeintField
      FieldName = 'LOG_TABLES_ID'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ZQ_SincroTablaPrimary
    Left = 320
    Top = 104
  end
  object inicio: TEKIni
    Archivo = 'sistema.ini'
    Left = 576
    Top = 80
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 416
    Top = 136
  end
  object UltimoNro: TZQuery
    Connection = ZC_Remoto
    Params = <>
    Left = 393
    Top = 248
  end
end
