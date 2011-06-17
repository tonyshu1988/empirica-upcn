object Form1: TForm1
  Left = 310
  Top = 196
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 96
    Top = 25
    Width = 329
    Height = 96
    DataSource = DS_SincroTabla
    TabOrder = 0
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
  object Button1: TButton
    Left = 704
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 120
    Top = 232
    Width = 569
    Height = 201
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object DBGrid2: TDBGrid
    Left = 432
    Top = 24
    Width = 401
    Height = 145
    DataSource = DS_SincroCampo
    TabOrder = 3
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
  object DBGrid3: TDBGrid
    Left = 96
    Top = 129
    Width = 329
    Height = 96
    DataSource = DataSource1
    TabOrder = 4
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
  object ZC_Remoto: TZConnection
    Protocol = 'firebird-1.5'
    HostName = '192.168.1.104'
    Database = 'D:\Empirica\SiGeFa\Bases\SIGEFA.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    AutoCommit = False
    Connected = True
    Left = 64
    Top = 96
  end
  object ZC_Local: TZConnection
    Protocol = 'firebird-1.5'
    HostName = 'localhost'
    Database = 'E:\Empirica\empirica-upcn\SiGeFa\Bases\SiGeFa.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    AutoCommit = False
    Connected = True
    Left = 64
    Top = 184
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
    Top = 160
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
    Left = 208
    Top = 240
  end
  object Local: TZQuery
    Connection = ZC_Local
    Params = <>
    Left = 224
    Top = 312
  end
  object Remoto: TZQuery
    Connection = ZC_Remoto
    Params = <>
    Left = 296
    Top = 312
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
    Left = 376
    Top = 176
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
    Left = 344
    Top = 240
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
    Left = 280
    Top = 160
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
    Left = 88
    Top = 272
  end
end
