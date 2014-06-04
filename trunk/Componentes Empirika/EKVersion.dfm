object FEKControlVersion: TFEKControlVersion
  Left = 487
  Top = 324
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Control de Versi'#243'n'
  ClientHeight = 437
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 176
    Width = 92
    Height = 13
    Caption = 'Notas de la Versi'#243'n'
  end
  object bfin: TButton
    Left = 440
    Top = 392
    Width = 75
    Height = 25
    Caption = 'Continuar'
    TabOrder = 0
    OnClick = bfinClick
  end
  object Panel1: TPanel
    Left = 24
    Top = 16
    Width = 489
    Height = 153
    TabOrder = 1
    object Label5: TLabel
      Left = 96
      Top = 8
      Width = 297
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Hay una nueva vesi'#243'n del sistema'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object uver: TLabel
      Left = 24
      Top = 64
      Width = 313
      Height = 13
      AutoSize = False
      Caption = 'Ultima versi'#243'n'
    end
    object ver: TLabel
      Left = 24
      Top = 40
      Width = 289
      Height = 13
      AutoSize = False
      Caption = 'ver'
    end
    object Panel2: TPanel
      Left = 112
      Top = 88
      Width = 289
      Height = 57
      TabOrder = 0
      Visible = False
      object txtincompatible: TLabel
        Left = 8
        Top = 6
        Width = 274
        Height = 13
        AutoSize = False
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Visible = False
      end
      object dbincompatible: TLabel
        Left = 7
        Top = 36
        Width = 274
        Height = 13
        AutoSize = False
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Visible = False
      end
    end
  end
  object DBRichEdit1: TDBRichEdit
    Left = 24
    Top = 192
    Width = 489
    Height = 81
    DataField = 'MODIFICACIONES'
    DataSource = DataSource1
    TabOrder = 2
  end
  object Button1: TButton
    Left = 24
    Top = 392
    Width = 177
    Height = 25
    Caption = 'Bajar ultima versi'#243'n'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 280
    Width = 489
    Height = 105
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
        FieldName = 'FECHA'
        Title.Caption = 'Fecha'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VERSIOND'
        Title.Caption = 'Versi'#243'n'
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VERSION'
        Title.Caption = 'Secuencia'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPATIBILIDAD'
        Title.Caption = 'Compatibilidad Sec.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VERSION_DB'
        Title.Caption = 'Ver. DB'
        Visible = True
      end>
  end
  object version: TZReadOnlyQuery
    SQL.Strings = (
      'select *'
      'from version'
      'where programa = :programa'
      'order by version desc')
    Params = <
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptUnknown
      end>
    Left = 496
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'programa'
        ParamType = ptUnknown
      end>
    object versionFECHA: TDateTimeField
      FieldName = 'FECHA'
      Required = True
    end
    object versionVERSION: TIntegerField
      FieldName = 'VERSION'
    end
    object versionVERSIOND: TStringField
      FieldName = 'VERSIOND'
    end
    object versionCOMPATIBILIDAD: TIntegerField
      FieldName = 'COMPATIBILIDAD'
    end
    object versionMODIFICACIONES: TMemoField
      FieldName = 'MODIFICACIONES'
      BlobType = ftMemo
    end
    object versionVERSION_DB: TIntegerField
      FieldName = 'VERSION_DB'
    end
  end
  object DataSource1: TDataSource
    DataSet = version
    Left = 424
    Top = 8
  end
  object Version_db: TZQuery
    SQL.Strings = (
      'select version_db'
      'from version_db')
    Params = <>
    Left = 496
    Top = 64
    object Version_dbVERSION_DB: TIntegerField
      FieldName = 'VERSION_DB'
    end
  end
end
