object Form1: TForm1
  Left = 290
  Top = 150
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
  object Label1: TLabel
    Left = 24
    Top = 144
    Width = 39
    Height = 13
    Caption = 'Archivo:'
  end
  object Button1: TButton
    Left = 72
    Top = 224
    Width = 113
    Height = 25
    Caption = 'Descargar y Ver XML'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 400
    Width = 854
    Height = 62
    Align = alBottom
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 280
    Width = 854
    Height = 120
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 534
    Top = 0
    Width = 320
    Height = 280
    Align = alRight
    DataSource = DataSource2
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBImage1: TDBImage
    Left = 344
    Top = 168
    Width = 105
    Height = 105
    DataField = 'IMAGEN'
    DataSource = DataSource1
    Stretch = True
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 72
    Top = 184
    Width = 113
    Height = 25
    Caption = 'Subir XML'
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object edArchivo: TEdit
    Left = 72
    Top = 140
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'C:\Sincro1.xml'
  end
  object IdFTP1: TIdFTP
    OnWork = IdFTP1Work
    IPVersion = Id_IPv4
    Host = '174.132.76.2'
    Password = 'grupo78gua'
    Username = 'grupogua'
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 120
    Top = 104
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 144
    object ClientDataSet1ID_PROD_CABECERA: TIntegerField
      FieldName = 'ID_PROD_CABECERA'
      Required = True
    end
    object ClientDataSet1ID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
      Required = True
    end
    object ClientDataSet1NOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object ClientDataSet1DESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 500
    end
    object ClientDataSet1IMAGEN: TBlobField
      FieldName = 'IMAGEN'
    end
    object ClientDataSet1BAJA: TStringField
      FieldName = 'BAJA'
      Size = 1
    end
    object ClientDataSet1ID_ARTICULO: TIntegerField
      FieldName = 'ID_ARTICULO'
      Required = True
    end
    object ClientDataSet1COD_CORTO: TStringField
      FieldName = 'COD_CORTO'
    end
    object ClientDataSet1COLOR: TIntegerField
      FieldName = 'COLOR'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 256
    Top = 200
  end
  object ClientDataSet2: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 648
    Top = 112
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 648
    Top = 176
  end
  object ZConnection1: TZConnection
    Protocol = 'firebird-1.5'
    HostName = 'localhost'
    Database = 'E:\Empirica\empirica-upcn\SiGeFa\Bases\SiGeFa.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    Connected = True
    Left = 64
    Top = 72
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select *'
      'from producto_cabecera')
    Params = <>
    Left = 280
    Top = 64
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = ZQuery1
    Left = 400
    Top = 72
  end
end
