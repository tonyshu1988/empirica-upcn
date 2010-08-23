object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 624
  Top = 343
  Height = 310
  Width = 436
  object EK_Login: TEK_UsrLogin
    Coneccion = Conexion
    Aplicacion = 'CALLCENTER'
    Version = 0
    ControlVersion = False
    LoadImagen = 'login.jpg'
    Modo = EK_LoginAutomatico
    ModoPermiso = EK_PermisoCaption
    Left = 168
    Top = 16
  end
  object EK_Modelo: TEK_ModeloTransaccion
    Coneccion = Conexion
    Left = 96
    Top = 16
  end
  object Conexion: TZConnection
    Protocol = 'firebird-1.5'
    HostName = 'localhost'
    Database = 'D:\demo\Servidor Local\CALLCENTER.FDB'
    User = 'sysdba'
    Password = 'masterkey'
    Properties.Strings = (
      'rolename=base'
      'dialect=3')
    AutoCommit = False
    ReadOnly = True
    TransactIsolationLevel = tiReadCommitted
    SQLHourGlass = True
    Left = 30
    Top = 14
  end
end
