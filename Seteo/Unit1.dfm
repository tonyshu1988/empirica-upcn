object FSeteo: TFSeteo
  Left = 502
  Top = 303
  Width = 290
  Height = 102
  Caption = 'Seteo Base Datos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -27
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 32
  object Label1: TLabel
    Left = 5
    Top = 22
    Width = 265
    Height = 20
    Caption = 'Configurando la Base de Datos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object IBSecurityService: TIBSecurityService
    Protocol = TCP
    TraceFlags = []
    SecurityAction = ActionAddUser
    UserID = 0
    GroupID = 0
    Left = 72
    Top = 8
  end
  object conexion: TZConnection
    Protocol = 'firebird-1.5'
    HostName = 'localhost'
    Database = 'D:\DEMO SISTEMAS\Bases\USUARIOS.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    Left = 152
    Top = 8
  end
  object update_aplica: TZQuery
    Connection = conexion
    SQL.Strings = (
      'update aplica a'
      'set a.alias_db = :base,'
      '    a.ip_db = :ip'
      'where (a.aplicacion = :aplicacion)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'base'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ip'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'aplicacion'
        ParamType = ptUnknown
      end>
    Left = 216
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'base'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ip'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'aplicacion'
        ParamType = ptUnknown
      end>
  end
  object ISIni1: TISIni
    Archivo = 'config.ini'
    Left = 8
    Top = 8
  end
end
