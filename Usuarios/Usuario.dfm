object FUsuario: TFUsuario
  Left = 319
  Top = 208
  Width = 852
  Height = 520
  Caption = 'ABM Usuarios'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 836
    Height = 430
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 834
      Height = 386
      ActivePage = TabSheetDatosUsuarios
      Align = alClient
      TabOrder = 0
      OnChanging = PageControl1Changing
      object TabSheetDatosUsuarios: TTabSheet
        Caption = 'Datos del Usuario'
        object PanelContenedor: TPanel
          Left = 0
          Top = 0
          Width = 826
          Height = 358
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object PanelDatosUsuario: TPanel
            Left = 0
            Top = 0
            Width = 356
            Height = 358
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Titulo_f: TLabel
              Left = 16
              Top = 161
              Width = 291
              Height = 13
              Caption = 'Usuario Firebird (se crea automaticamente si no se especifica)'
            end
            object Label7: TLabel
              Left = 192
              Top = 112
              Width = 101
              Height = 13
              Caption = 'Confirmar Contrase'#241'a'
              FocusControl = DBEditContrasenia
            end
            object Label5: TLabel
              Left = 192
              Top = 16
              Width = 24
              Height = 13
              Caption = 'Nivel'
              FocusControl = DBEditNivel
            end
            object Label3: TLabel
              Left = 16
              Top = 112
              Width = 54
              Height = 13
              Caption = 'Contrase'#241'a'
              FocusControl = DBEditContrasenia
            end
            object Label2: TLabel
              Left = 16
              Top = 64
              Width = 37
              Height = 13
              Caption = 'Nombre'
              FocusControl = DBEditNombreUsuario
            end
            object Label1: TLabel
              Left = 16
              Top = 16
              Width = 36
              Height = 13
              Caption = 'Usuario'
              FocusControl = DBEditUsuario
            end
            object usr_f: TDBEdit
              Left = 16
              Top = 177
              Width = 161
              Height = 21
              DataField = 'DB_USR'
              DataSource = DS_Usuario
              TabOrder = 5
            end
            object DBEditUsuario: TDBEdit
              Left = 16
              Top = 32
              Width = 160
              Height = 21
              Hint = 'Nombre de usuario con el cual se ingresara al sistema'
              CharCase = ecLowerCase
              DataField = 'USUARIO'
              DataSource = DS_Usuario
              ParentShowHint = False
              ReadOnly = True
              ShowHint = True
              TabOrder = 0
            end
            object DBEditNombreUsuario: TDBEdit
              Left = 16
              Top = 80
              Width = 329
              Height = 21
              Hint = 'Nombre completo del usuario'
              DataField = 'NOMBRE'
              DataSource = DS_Usuario
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object DBEditNivel: TDBEdit
              Left = 192
              Top = 32
              Width = 153
              Height = 21
              DataField = 'NIVEL'
              DataSource = DS_Usuario
              ReadOnly = True
              TabOrder = 1
            end
            object DBEditContrasenia: TDBEdit
              Left = 16
              Top = 128
              Width = 160
              Height = 21
              Hint = 'Contrase'#241'a para loguearse a los sistemas'
              DataField = 'CLAVE'
              DataSource = DS_Usuario
              ParentShowHint = False
              PasswordChar = '*'
              ShowHint = True
              TabOrder = 3
            end
            object DBCheckBoxHabilitado: TDBCheckBox
              Left = 16
              Top = 240
              Width = 97
              Height = 17
              Hint = 'Habilitar o deshabilitar el usuario para ingresar al sistema'
              Caption = 'Habilitado'
              DataField = 'HABILITADO'
              DataSource = DS_Usuario
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBoxForzarClave: TDBCheckBox
              Left = 16
              Top = 217
              Width = 145
              Height = 17
              Hint = 
                'Pedir el ingreso de una contrase'#241'a la primera vez que se logea e' +
                'l usuario al sistema'
              Caption = 'Forzar Cambio de Clave'
              DataField = 'CAMBIARCLAVE'
              DataSource = DS_Usuario
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBoxEsGrupo: TDBCheckBox
              Left = 16
              Top = 263
              Width = 97
              Height = 17
              Hint = 'Definir si es un usuario individual o un grupo de usuarios'
              Caption = 'Es Grupo'
              DataField = 'GRUPO'
              DataSource = DS_Usuario
              ParentShowHint = False
              ShowHint = True
              TabOrder = 9
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object contrasenia_f: TDBEdit
              Left = 192
              Top = 177
              Width = 153
              Height = 21
              DataField = 'DB_CLV'
              DataSource = DS_Usuario
              TabOrder = 6
            end
            object ConfirmarContrasenia: TEdit
              Left = 192
              Top = 128
              Width = 153
              Height = 21
              PasswordChar = '*'
              TabOrder = 4
              Text = 'ConfirmarContrasenia'
            end
          end
          object PanelRoles: TPanel
            Left = 356
            Top = 0
            Width = 470
            Height = 358
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              470
              358)
            object Label4: TLabel
              Left = 7
              Top = 5
              Width = 18
              Height = 13
              Caption = 'DB:'
            end
            object database: TLabel
              Left = 31
              Top = 5
              Width = 426
              Height = 13
              AutoSize = False
            end
            object DBGridRoles: TDBGrid
              Left = 6
              Top = 22
              Width = 458
              Height = 301
              Anchors = [akLeft, akTop, akRight, akBottom]
              Color = 16312278
              DataSource = DSRole
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'RDB$RELATION_NAME'
                  Title.Caption = 'Role'
                  Visible = True
                end>
            end
            object BtnAsignarRol: TButton
              Left = 6
              Top = 327
              Width = 91
              Height = 25
              Anchors = [akLeft, akBottom]
              Caption = 'Asignar Rol'
              TabOrder = 1
              OnClick = BtnAsignarRolClick
            end
          end
        end
      end
      object TabSheetPermismos: TTabSheet
        Caption = 'Ver Permisos Heredados'
        ImageIndex = 2
        OnShow = TabSheetPermismosShow
        object DBGridPermisosHeredados: TDBGrid
          Left = 0
          Top = 0
          Width = 826
          Height = 358
          Align = alClient
          Color = 16312278
          DataSource = DSPermisos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'USUARIO'
              Title.Alignment = taCenter
              Title.Caption = 'Usuario/Grupo'
              Width = 86
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APLICACION'
              Title.Alignment = taCenter
              Title.Caption = 'Aplicaci'#243'n'
              Width = 164
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ACCION'
              Title.Alignment = taCenter
              Title.Caption = 'Acci'#243'n'
              Width = 188
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Alignment = taCenter
              Title.Caption = 'Valor'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CAPTION'
              Title.Alignment = taCenter
              Title.Caption = 'T'#237'tulo'
              Visible = True
            end>
        end
      end
    end
    object PanelCopiar: TPanel
      Left = 1
      Top = 387
      Width = 834
      Height = 42
      Align = alBottom
      TabOrder = 1
      Visible = False
      object CopiarPermisos: TCheckBox
        Left = 8
        Top = 6
        Width = 97
        Height = 14
        Hint = 'Copiar todos los permisos actuales del usuario seleccionado'
        Caption = 'Copiar permisos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object CopiarGrupos: TCheckBox
        Left = 8
        Top = 22
        Width = 97
        Height = 14
        Hint = 
          'Asociar a todos los grupos a los que pertenece el usuario selecc' +
          'ionado'
        Caption = 'Copiar Grupos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object CBoxUsuariosCopia: TComboBox
        Left = 112
        Top = 4
        Width = 217
        Height = 21
        ItemHeight = 13
        TabOrder = 2
        Text = 'CBoxUsuariosCopia'
      end
    end
  end
  object Usuario: TZQuery
    Connection = DM.Conexion
    AfterOpen = UsuarioAfterOpen
    SQL.Strings = (
      
        'select usuario, nombre, clave, dir, num_dir, telefono, cod_orige' +
        'n, db_usr, db_clv, cambiarclave, grupo, habilitado, nivel'
      'from usuarios'
      'where usuario=:usr')
    Params = <
      item
        DataType = ftUnknown
        Name = 'usr'
        ParamType = ptUnknown
      end>
    Left = 144
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usr'
        ParamType = ptUnknown
      end>
    object UsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 10
    end
    object UsuarioNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 40
    end
    object UsuarioCLAVE: TStringField
      FieldName = 'CLAVE'
      Size = 12
    end
    object UsuarioDIR: TStringField
      FieldName = 'DIR'
      Size = 30
    end
    object UsuarioNUM_DIR: TIntegerField
      FieldName = 'NUM_DIR'
    end
    object UsuarioTELEFONO: TIntegerField
      FieldName = 'TELEFONO'
    end
    object UsuarioCOD_ORIGEN: TStringField
      FieldName = 'COD_ORIGEN'
      Size = 1
    end
    object UsuarioDB_USR: TStringField
      FieldName = 'DB_USR'
      Size = 10
    end
    object UsuarioDB_CLV: TStringField
      FieldName = 'DB_CLV'
    end
    object UsuarioCAMBIARCLAVE: TStringField
      FieldName = 'CAMBIARCLAVE'
      Size = 1
    end
    object UsuarioGRUPO: TStringField
      FieldName = 'GRUPO'
      Required = True
      Size = 1
    end
    object UsuarioHABILITADO: TStringField
      FieldName = 'HABILITADO'
      Required = True
      Size = 1
    end
    object UsuarioNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
  object DS_Usuario: TDataSource
    DataSet = Usuario
    Left = 144
    Top = 128
  end
  object lee_role: TZReadOnlyQuery
    Connection = DM.ConexionDB
    SQL.Strings = (
      'select *'
      'from RDB$USER_PRIVILEGES'
      'where RDB$PRIVILEGE = '#39'M'#39' and rdb$user = :usr')
    Params = <
      item
        DataType = ftUnknown
        Name = 'usr'
        ParamType = ptUnknown
      end>
    Left = 248
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usr'
        ParamType = ptUnknown
      end>
    object lee_roleRDBUSER: TStringField
      FieldName = 'RDB$USER'
      Size = 31
    end
    object lee_roleRDBGRANTOR: TWideStringField
      FieldName = 'RDB$GRANTOR'
      Size = 31
    end
    object lee_roleRDBPRIVILEGE: TStringField
      FieldName = 'RDB$PRIVILEGE'
      Size = 6
    end
    object lee_roleRDBGRANT_OPTION: TSmallintField
      FieldName = 'RDB$GRANT_OPTION'
    end
    object lee_roleRDBRELATION_NAME: TWideStringField
      FieldName = 'RDB$RELATION_NAME'
      Size = 31
    end
    object lee_roleRDBFIELD_NAME: TWideStringField
      FieldName = 'RDB$FIELD_NAME'
      Size = 31
    end
    object lee_roleRDBUSER_TYPE: TSmallintField
      FieldName = 'RDB$USER_TYPE'
    end
    object lee_roleRDBOBJECT_TYPE: TSmallintField
      FieldName = 'RDB$OBJECT_TYPE'
    end
  end
  object DSRole: TDataSource
    DataSet = lee_role
    Left = 248
    Top = 136
  end
  object borrar_role: TZReadOnlyQuery
    Connection = DM.ConexionDB
    SQL.Strings = (
      'delete from RDB$USER_PRIVILEGES'
      'where RDB$USER=:USR'
      'and RDB$GRANTOR= '#39'SYSDBA'#39
      'and RDB$PRIVILEGE='#39'M'#39
      'and RDB$GRANT_OPTION=0'
      'and RDB$RELATION_NAME=:role'
      'and RDB$USER_TYPE=8'
      'and RDB$OBJECT_TYPE=13')
    Params = <
      item
        DataType = ftString
        Name = 'USR'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'role'
        ParamType = ptUnknown
        Value = ''
      end>
    Left = 40
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'USR'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'role'
        ParamType = ptUnknown
        Value = ''
      end>
  end
  object ROLE: TZReadOnlyQuery
    Connection = DM.ConexionDB
    SQL.Strings = (
      'INSERT INTO RDB$USER_PRIVILEGES'
      
        '(RDB$USER,RDB$GRANTOR,RDB$PRIVILEGE,RDB$GRANT_OPTION,RDB$RELATIO' +
        'N_NAME,RDB$USER_TYPE,RDB$OBJECT_TYPE)'
      'VALUES ( :USR, '#39'SYSDBA'#39', '#39'M'#39', 0, :role, 8, 13);')
    Params = <
      item
        DataType = ftString
        Name = 'USR'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'role'
        ParamType = ptUnknown
        Value = ''
      end>
    Left = 40
    Top = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'USR'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'role'
        ParamType = ptUnknown
        Value = ''
      end>
  end
  object SQLCopiarPermisos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'insert into permisos (usuario, clave_ap, valor)'
      'select :usr_destino, ori.clave_ap, ori.valor'
      'from permisos ori'
      'where ori.usuario = :usr_origen'
      '  and (ori.clave_ap not in ('
      '            select dest.clave_ap'
      '            from permisos dest'
      '            where dest.usuario = :usr_destino)'
      '       )')
    Params = <
      item
        DataType = ftUnknown
        Name = 'usr_destino'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usr_origen'
        ParamType = ptUnknown
      end>
    Left = 528
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usr_destino'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usr_origen'
        ParamType = ptUnknown
      end>
  end
  object Permisos: TZQuery
    Connection = DM.Conexion
    ReadOnly = True
    SQL.Strings = (
      'select distinct'
      '  permisos.usuario,'
      '  permisos.clave_ap,'
      '  permisos.valor,'
      '  aplicaciones.aplicacion,'
      '  aplicaciones.accion,'
      '  aplicaciones.caption'
      'from'
      '  usuarios u'
      '  left outer join usugrupos u1 on u1.usuario = :usu'
      '  left outer join usuarios ug on ug.usuario = u1.grupo'
      
        '  inner join permisos on (permisos.usuario = :usu) or (permisos.' +
        'usuario = u1.grupo )'
      
        '  inner join aplicaciones on (permisos.clave_ap = aplicaciones.c' +
        'lave)'
      'where'
      '  u.usuario = :usu'
      '  and u.habilitado = '#39'S'#39
      '  and ( (ug.habilitado) = '#39'S'#39' or (ug.habilitado is null) )'
      'order by 1,4,5'
      '')
    Params = <
      item
        DataType = ftUnknown
        Name = 'usu'
        ParamType = ptUnknown
      end>
    Left = 148
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usu'
        ParamType = ptUnknown
      end>
    object PermisosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 10
    end
    object PermisosCLAVE_AP: TIntegerField
      FieldName = 'CLAVE_AP'
      Required = True
    end
    object PermisosVALOR: TStringField
      FieldName = 'VALOR'
      Size = 50
    end
    object PermisosAPLICACION: TStringField
      FieldName = 'APLICACION'
      Required = True
    end
    object PermisosACCION: TStringField
      FieldName = 'ACCION'
      Required = True
    end
    object PermisosCAPTION: TStringField
      FieldName = 'CAPTION'
      Required = True
      Size = 60
    end
  end
  object DSPermisos: TDataSource
    DataSet = Permisos
    Left = 148
    Top = 232
  end
  object SQLCopiarGrupos: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'insert into usugrupos (usuario, grupo)'
      'select :usr_destino, ori.grupo'
      'from usugrupos ori'
      'where ori.usuario = :usr_origen'
      '  and (ori.grupo not in ('
      '            select dest.grupo'
      '            from usugrupos dest'
      '            where dest.usuario = :usr_destino)'
      '       )')
    Params = <
      item
        DataType = ftUnknown
        Name = 'usr_destino'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usr_origen'
        ParamType = ptUnknown
      end>
    Left = 428
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'usr_destino'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usr_origen'
        ParamType = ptUnknown
      end>
  end
  object dxBarABM: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Backgrounds.Bar.Data = {
      7A220000424D7A22000000000000360000002800000039000000330000000100
      1800000000004422000000000000000000000000000000000000333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333003333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333003333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333003333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333433330033333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3334333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333330033333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3300333333333333333333333333333333333333333333333333333333333333
      3433333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333300333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333343333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333300343433343434
      3434343434343433343434343434343333343434343434343434343434343434
      3434333434343434343434343434343434343334343334343434343434343434
      3433333433333434343334343434343433343434333434343334343334343434
      3434333434343434343434333434343334333434343334343434343434343434
      3433343434343334333434343434343434343434333434343434343434343434
      3333343434003534343535353434343534343435353535343534353534343535
      3535343535353435343534353434343434353535353535343535343535343435
      3535353534353535353435353535343534343534353535353435353535353535
      3535343435353535353534353535343435343534353535343535353534353535
      3534353535353535353435353435353535353435343535353534353535353535
      3535353535353534353535353435353534003636363636363635363536353635
      3636353635363636363536353635353636363636353636353636363636353636
      3536363536363536363535363636353635363636353635363536363636363636
      3636363536363536363636363636363635363635363636363536363536353535
      3636363636353536363636363636363636363635353635363535363636363636
      3635363635363636353636363535363636363636353636363636363635003737
      3736373737373736363737373736373737363737373737373736363637373737
      3637373637373737373737373737373636373737373636363737373637373736
      3737373737373737373737373737373737373737363737373737373737373636
      3737373737373737373737373737373737373636373737373737373737373737
      3736373736373736373736373637373637373737373737373737373737373736
      3737373737373737370038383838383838383838383838383838383938383838
      3938383838383839383838383838393838383838383838383838393938383838
      3838383838383939383838383838383838383839383838383938383838383838
      3838383838393838383838383838383838383838383838383838393838383838
      3838383839383938383838383838383838383838383838383838383838393838
      3838383838383838383838383838383838383838380039393A39393A3939393A
      393939393A3939393A3A3A3A3A393A3A3A393939393A3A39393A3A39393A393A
      39393A393A3A39393939393A3A3A39393939393A3A393939393A3A3939393939
      39393939393A393939393A393939393A39393A393A3939393939393939393939
      3939393A3939393A39393A3A393A393939393939393A3A3A393939393A393939
      3A3A3A393A3A3939393939393A39393A3A3A3A393A3A393939393A393A39393A
      39003A3B3A3B3B3B3A3A3A3A3B3B3B3A3B3B3B3B3A3A3A3A3B3A3B3A3B3A3B3A
      3B3B3B3B3A3B3B3A3B3B3A3B3B3B3B3B3B3B3B3B3A3B3B3B3B3B3B3A3B3A3B3B
      3B3A3A3B3A3B3B3A3B3B3A3B3B3A3B3A3B3A3B3B3B3A3B3B3A3A3A3B3A3B3B3B
      3B3B3B3B3B3A3B3B3A3B3A3B3A3B3B3A3A3A3A3B3A3A3B3A3A3B3A3A3A3B3B3B
      3B3B3B3A3B3B3B3B3A3A3B3B3B3A3B3B3B3B3B3B3B3B3B3B3A3B3B3B3A3A3B3B
      3B3B3A3B3B3B3B3B3A3A3B3B3A003C3D3C3D3C3C3C3C3C3C3C3C3C3C3C3C3C3C
      3C3D3D3C3C3C3C3C3C3C3D3C3C3C3C3C3C3C3C3C3C3C3C3C3C3D3C3C3C3C3C3C
      3C3D3C3C3C3C3C3C3C3C3D3C3C3D3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3D3C3C
      3C3C3C3C3C3C3C3D3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
      3D3C3C3D3C3C3C3C3C3C3C3C3C3D3C3D3C3C3C3C3D3C3C3C3D3C3C3C3C3C3D3C
      3C3C3C3C3C3C3C3C3C3C3C3C3C3D3C3C3D3C3C3C3C3D3C3C3C003E3E3E3E3E3D
      3E3D3E3D3E3E3E3E3D3E3E3D3D3D3D3D3D3D3E3D3E3E3E3D3E3E3D3E3E3D3E3E
      3D3E3E3D3E3E3E3E3E3E3D3E3E3D3D3E3D3E3E3D3E3D3E3E3D3E3E3D3E3E3D3E
      3E3D3E3E3D3D3E3D3D3D3E3D3D3E3E3E3E3D3E3D3E3D3E3E3D3E3D3E3E3D3D3E
      3D3D3D3D3E3D3D3D3D3E3D3D3E3D3D3E3D3D3E3E3D3E3E3E3E3E3D3E3E3E3D3D
      3E3D3E3D3D3D3D3D3D3D3E3E3E3E3D3D3D3E3E3E3D3E3E3E3D3E3E3E3D3E3E3E
      3E3D3D3D3D00403F403F403F3F3F40403F3F3F3F3F403F3F3F3F3F3F3F3F3F3F
      3F3F403F3F3F3F403F3F3F3F403F3F3F3F3F3F3F3F403F3F3F403F3F403F3F3F
      3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F403F3F3F3F3F3F
      3F3F3F3F3F403F3F403F403F3F3F3F3F3F3F3F3F3F3F3F3F403F3F3F403F3F3F
      3F3F3F3F3F3F403F3F403F3F3F3F3F3F3F403F403F3F3F3F3F3F3F3F3F3F3F3F
      3F3F403F3F3F3F3F3F3F3F3F3F403F3F3F004140414140414141414141404141
      4141414141414140414141414141414041414141414140414140414140414141
      4141414041414140414141414141414040414041414141414041414040414141
      4140414141414141414141414141414041414040404141414141414141414141
      4141404141414141414141414041414141414141414141414141414041404141
      4041414041414141414141414141414141414141414141414141414141004343
      4343434243434243424342424242434242434243434343424342424243434342
      4242424342424343424343424342434343424242424343424243434242434342
      4343424243434343424342434343424342434242434243424243434343424342
      4342424243424343434342424343424342434343424343424343424342434343
      4242424243424242434243434342424342424243434343434243434342424242
      4342424242434243420044444444444444454444444544444444454444454544
      4445444444444444444444444445444444444444444444454544444444454444
      4444444444444544444444454444444444454444444444444444444445444444
      4444454444444444444445444444444444444544444444444544444544444444
      4545454444444544454444454444444444444444444544454444444444444445
      4445444444444444444445444444454444444445440046464646464646464646
      4646464646464646464546464646464645464646464646464646464646464646
      4646464646464646464646464646464646464646464646464646464646464646
      4646464646454646464646464646464646464646464646464646464646464646
      4646464646464646464646464646464646464646464646464646464646464646
      4646464646464646464646464646464646464646464646464646464546464646
      4600484748484848474848474847474848484847484748484847484848484848
      4747484847484848484847484748484848474747484848484748484848484847
      4848484848474848484848484748484748484748474848484847484848484848
      4848484748484747484748484848484847474847484848484848484748484848
      4848474848484748474847484748474748484748474747484848474848484848
      474848474848484847474847480049494949494A4A4949494A494A4A494A4A49
      49494A494A4A4A49494A494A494A49494949494A4A4A4A494A494A494A4A494A
      4A4A494A4A494949494A494A4A494A4A4949494949494A4A4A4A4A494A4A494A
      4A4A4A4A4949494A4A4A494A49494A4A4A4A4A494A4A4A4A4A4A494A4A4A494A
      494949494A4949494A4A4A494A494A4A4A494949494A494A49494A4A494A4A4A
      4A4A4A4949494A4A49494A494A4A4949494A494A494A4A494A004B4C4C4B4B4C
      4B4B4C4B4B4C4C4C4B4B4B4B4C4B4C4B4C4B4C4B4C4B4B4C4C4B4B4C4B4B4C4C
      4C4B4C4C4C4B4B4C4B4B4B4B4C4B4C4B4B4B4B4B4C4C4B4C4B4C4B4B4B4C4B4C
      4B4C4C4C4B4B4B4B4C4B4B4B4B4B4C4B4B4C4B4B4C4C4B4C4C4B4B4B4B4C4B4B
      4C4B4C4B4B4B4C4B4B4B4B4C4B4B4B4B4B4B4B4C4B4C4C4C4B4B4B4B4C4B4C4C
      4B4B4C4B4C4B4B4B4B4B4B4B4C4B4C4B4B4B4C4B4C4B4B4B4C4C4C4B4B4B4B4B
      4B4C4B4C4B004D4D4D4D4D4D4D4E4D4D4E4E4D4D4D4D4E4D4D4E4D4D4D4D4D4E
      4D4D4E4E4E4E4D4D4E4D4D4D4E4D4D4D4D4E4E4D4E4D4E4D4E4D4D4D4D4E4D4D
      4D4E4D4D4D4D4D4E4E4D4D4D4D4D4E4E4D4E4D4D4D4D4D4D4D4D4D4E4D4D4E4D
      4E4D4D4E4D4D4D4E4D4D4D4E4E4D4D4E4E4E4D4E4D4D4E4D4D4D4D4E4D4D4E4E
      4D4D4D4E4D4E4D4D4D4D4D4D4E4D4D4D4D4D4D4D4D4D4E4E4D4D4E4D4D4E4E4D
      4D4D4E4D4D4E4E4D4D4D4D4D4E4D4E4D4E00504F504F4F4F4F4F4F4F4F4F4F4F
      4F4F4F4F50504F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F504F504F
      4F4F4F4F4F4F4F4F50504F4F4F4F4F4F4F4F4F4F4F4F504F4F4F4F4F4F4F4F4F
      4F4F4F4F4F4F4F4F4F4F4F4F4F4F50504F4F504F4F4F4F4F4F504F4F504F4F50
      4F4F4F4F4F504F4F50505050504F4F504F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F
      4F4F50504F4F4F4F4F4F4F4F4F4F504F4F4F4F4F4F4F4F4F4F4F4F4F4F005151
      5151515151515151515151525151515151515251515151515151515151515151
      5151515251515151515151515151515251515151515151525151515151515151
      5151515151515151515151515151515151515151515151515251515151515251
      5151515151515151515251515151515151515151515152515151515251515151
      5151515151515151515151515151515151515151515151515251515151515151
      5251515151515251510053535353535353535353535253535353535353535353
      5353535353535353535353535353525353535353535353535353535353535353
      5353535353535353535353535353535353535353535353535353535353535353
      5353535353535353535353535353535353535353535353535353535353535353
      5353535353535353535353535353535353535353525352535353535353535253
      5353535353535353535353535352535353535353530055555455555555555454
      5555555554555455555555555454555555555555545554555555555555555555
      5555545555555555555455555554555455555555555555555555555554555555
      5555545555555554555555545455545454555554555455545555555555555555
      5555555555555555555555555555555555555555555555555555555555545555
      5554555455555555555555555555555555545555555555545555555555555555
      5500565757575657575656575756575657575757575757575757575657565657
      5657565757575757575757575757575757565656575757575757575757575756
      5756575757565657565757575657575756575756575657565657565657575757
      5656565757575757575656575757575757565757575757575757575657575757
      5756565757575756575757565657565757565756575757575757575657575756
      5757575757565657575757575600585859595959585959595959595959585958
      5959595858595958585959595958585858595959595859585859585959595958
      5859595958585858585859595859585959595859585959585859595958585958
      5958595959595859585959595859585859585959595959585959585858595858
      5958595858595858585858595959595959595859595959595859595858595859
      59595859585959585959585958585958595958585859585859005A5A5B5A5A5B
      5A5B5B5A5B5B5B5A5A5B5A5B5A5B5A5B5A5A5B5A5A5B5A5A5A5B5A5A5A5A5B5B
      5B5A5A5A5A5A5B5A5B5A5A5A5B5B5B5A5A5A5A5B5A5A5B5B5A5A5A5A5A5A5A5B
      5A5A5B5A5A5B5A5A5B5B5B5B5A5B5A5A5B5B5A5A5B5A5A5A5B5B5A5B5A5A5B5B
      5A5B5B5B5B5A5A5A5B5B5B5A5A5A5B5A5A5A5B5A5A5B5B5A5A5A5A5A5B5B5B5B
      5B5B5B5B5A5A5A5B5A5A5B5B5B5A5A5A5B5B5A5A5A5B5A5B5B5A5B5B5A5A5B5B
      5A5A5A5B5B005C5C5D5C5C5C5C5C5C5C5C5D5C5C5C5C5C5C5C5D5C5C5C5C5D5C
      5D5C5C5C5C5C5C5C5C5C5C5C5C5C5D5C5C5C5C5C5D5C5C5C5C5D5D5C5C5D5D5C
      5C5C5D5C5C5C5C5C5C5C5C5D5C5C5C5C5C5C5C5C5D5C5C5C5C5C5D5C5C5C5D5C
      5D5C5C5C5D5C5C5C5C5D5C5D5C5C5C5C5C5C5C5C5C5C5C5C5D5D5C5C5D5C5C5C
      5C5C5C5C5C5C5D5C5C5D5D5C5D5D5C5C5C5C5C5C5C5C5C5C5C5D5C5C5C5C5C5C
      5C5C5C5D5C5D5D5D5C5C5C5D5C5C5C5D5C005E5E5E5E5E5E5E5E5E5E5E5E5E5E
      5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5F5E5E5E5F5E5E5E
      5E5E5E5E5F5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E
      5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E
      5E5E5E5E5E5E5E5E5E5E5E5E5E5E5F5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5F5E
      5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E006060
      60606060606060606060605F606060605F6060606060606060605F6060606060
      60606060605F6060606060605F6060606060606060605F605F605F6060606060
      6060606060606060605F5F60606060606060606060605F5F6060606060606060
      5F605F60606060605F605F60605F60605F606060605F606060605F605F5F6060
      60605F606060605F6060605F5F5F6060606060605F606060606060605F605F60
      5F60605F60606060600061626262626262626261626261616162616162626161
      6262626161616262626261626162616161626162616262626261626262616161
      6262616262616262626262626162626262626262616261626162616262616161
      6262626162626161626162626161616262616162626262626261626262626161
      6262626262616161626161626261616161626161616262616262626261626262
      6262616162616262626162616161626261626162620063646364636363636364
      6363646464636363636463636363636363636363636363646363636363636364
      6363636363636364636363636363636363646363646364636363646464636363
      6363646463636363636363636364636363636464636364636363636463636364
      6463646364636363636463636363636363636463636364636363636363636364
      6464636363636363636463636363636363636363636363636363636364636463
      6400656565656565646565656565646465656565656565656565656565656565
      6565646565646465656565656564646465646565656565646564646565656565
      6565656565656564646465656565656565656565656565656565656465656465
      6565646565656565646565646465656565656565656565656565656465646565
      6564656465646565646565656565656565646565656565656564646565656565
      6564656465646464656565656500666767666667666666666666666666676666
      6767676667666666666667676666666767666766666766666667666666666667
      6767666766666667666766676666666666676666666666666767676766666766
      6767676766676667676666666767666666666767666666666666676667666667
      6766666666666767666667676666666666666667676667666666676766666667
      6666676666676666666766666666676767666767666666666600686868686868
      6868686868676868686868686868686867686868686868686867686868676868
      6868686768686867686868686768686868686868686868686868686868686868
      6867686867686868676868686868686768686868686868676868686868686767
      6868686868686868686867686867686868686868686868686868686867686868
      6868676868686868686768686868686868686868686868686867686868686868
      6868686868006969696A6A696A6A6A6A6A6969696969696A6A6A6A696A6A6A6A
      69696969696A6A696A696A696A696A696A6A6A6969696A69696A6A696A696969
      69696969696A696A69696969696A696A6A69696A69696969696969696A696A69
      69696A6A696A696A69696A696A6969696A6969696A6A696A6A696A6A696A6969
      696A6A6A6969696A6A6A696969696969696A6A69696A6A69696A696969696A6A
      69696A6A69696A6A6A69696A6A6A696969006B6B6B6A6A6B6B6B6B6A6B6B6A6B
      6B6B6B6B6B6A6B6B6B6B6B6B6B6B6B6A6A6B6B6B6B6B6B6A6B6B6B6B6A6A6B6B
      6B6B6B6A6A6B6A6A6B6B6B6B6A6A6B6B6B6A6B6A6B6A6A6A6B6A6B6B6B6A6A6B
      6A6B6B6B6B6B6B6B6A6A6B6A6B6A6B6B6B6B6B6B6B6A6A6B6B6B6B6B6B6A6B6B
      6B6B6B6B6B6B6A6A6B6B6B6B6A6B6B6A6B6B6A6B6B6B6B6A6B6B6B6B6B6B6B6B
      6B6B6B6B6B6A6A6B6B6B6B6B6B6B6A6B6B6B6B6B6B6B6B6B6B6B6B6A6B006C6C
      6C6C6C6C6C6B6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C
      6C6C6B6C6C6C6C6C6C6C6C6C6B6C6C6C6C6C6C6C6C6C6C6C6B6C6C6C6C6C6C6C
      6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C
      6C6C6C6C6C6C6C6C6C6C6C6C6C6C6B6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C
      6C6C6C6C6C6C6C6C6C6C6C6B6C6C6C6B6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C
      6C6C6C6C6C6C6C6C6C006D6D6D6D6D6D6E6D6D6D6D6D6D6D6D6D6D6D6E6D6D6D
      6D6D6D6D6D6D6D6D6D6D6D6D6D6E6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6E
      6D6D6D6D6D6D6D6D6E6D6D6D6D6D6D6E6D6D6E6D6D6D6D6E6D6D6D6D6D6D6D6D
      6D6D6D6E6D6D6D6D6E6D6D6E6D6D6D6D6D6D6D6E6D6D6E6D6D6E6D6D6E6D6E6D
      6D6D6D6D6D6D6D6D6D6D6D6D6D6E6D6E6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D
      6E6D6D6D6D6D6D6D6D6D6D6D6E6D6D6D6D6E6D6D6D006E6F6E6E6F6E6E6E6E6F
      6E6F6E6E6E6E6E6E6F6F6E6F6E6E6E6E6E6E6E6E6E6E6F6E6E6E6F6E6E6F6E6F
      6F6E6E6E6E6E6E6E6F6E6E6E6F6E6E6E6E6F6F6E6E6E6E6E6E6E6E6F6E6F6F6F
      6E6E6E6E6E6E6E6E6F6E6E6E6F6E6F6F6E6E6E6E6E6F6E6F6E6E6F6E6E6E6E6E
      6E6E6F6E6E6E6E6F6E6E6E6E6E6F6E6E6E6E6F6E6F6E6E6E6E6E6E6E6E6E6E6F
      6E6F6E6F6E6F6F6E6E6E6E6E6F6F6E6E6E6E6E6E6E6E6E6F6E6F6E6E6E6E6F6F
      6E006F6F6F706F706F6F6F6F6F6F6F70706F6F706F6F6F706F6F6F6F706F6F6F
      6F6F706F6F6F6F706F6F6F706F6F6F706F6F6F6F706F6F6F6F706F6F6F6F6F6F
      6F6F6F6F706F6F6F6F706F6F6F706F6F6F6F6F6F6F70706F706F6F70706F706F
      6F6F706F6F706F6F6F6F6F6F706F6F706F6F6F70706F6F6F706F6F6F6F6F6F70
      70706F6F6F6F706F6F6F6F706F6F706F6F6F6F6F6F6F6F6F706F6F6F6F6F6F6F
      6F706F6F706F6F6F6F6F6F6F6F00707070707070707070707070707170707170
      7070707071707170707070707070707171707070707070717070717070707070
      7071707071707171707070717070707171707070707070707070707070717170
      7170707070707170707070707070707070707170707170707070717070707070
      7170707171707070707070717170707071707070707070707070707070707070
      7070707171707071717070707070707070707170707070707000717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171007171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171007171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      7171717171717171717171717171717171717171717171717171717171717171
      717171717171717171717171717171717171717171717171717171717100}
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        BorderStyle = bbsNone
        Caption = 'barraHorizontal'
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
            Item = btnNuevo
            Visible = True
          end
          item
            Item = btnModificar
            Visible = True
          end
          item
            Item = btnEliminar
            Visible = True
          end
          item
            BeginGroup = True
            Item = btnGuardar
            Visible = True
          end
          item
            Item = btnCancelar
            Visible = True
          end
          item
            Item = btnSalir
            Visible = True
          end>
        Name = 'barraHorizontal'
        OneOnRow = True
        Row = 0
        UseOwnFont = True
        UseRecentItems = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
        BackgroundBitmap.Data = {
          7A220000424D7A22000000000000360000002800000039000000330000000100
          1800000000004422000000000000000000000000000000000000333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333003333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333003333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333003333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333433330033333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3334333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333330033333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3300333333333333333333333333333333333333333333333333333333333333
          3433333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333300333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333343333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333300343433343434
          3434343434343433343434343434343333343434343434343434343434343434
          3434333434343434343434343434343434343334343334343434343434343434
          3433333433333434343334343434343433343434333434343334343334343434
          3434333434343434343434333434343334333434343334343434343434343434
          3433343434343334333434343434343434343434333434343434343434343434
          3333343434003534343535353434343534343435353535343534353534343535
          3535343535353435343534353434343434353535353535343535343535343435
          3535353534353535353435353535343534343534353535353435353535353535
          3535343435353535353534353535343435343534353535343535353534353535
          3534353535353535353435353435353535353435343535353534353535353535
          3535353535353534353535353435353534003636363636363635363536353635
          3636353635363636363536353635353636363636353636353636363636353636
          3536363536363536363535363636353635363636353635363536363636363636
          3636363536363536363636363636363635363635363636363536363536353535
          3636363636353536363636363636363636363635353635363535363636363636
          3635363635363636353636363535363636363636353636363636363635003737
          3736373737373736363737373736373737363737373737373736363637373737
          3637373637373737373737373737373636373737373636363737373637373736
          3737373737373737373737373737373737373737363737373737373737373636
          3737373737373737373737373737373737373636373737373737373737373737
          3736373736373736373736373637373637373737373737373737373737373736
          3737373737373737370038383838383838383838383838383838383938383838
          3938383838383839383838383838393838383838383838383838393938383838
          3838383838383939383838383838383838383839383838383938383838383838
          3838383838393838383838383838383838383838383838383838393838383838
          3838383839383938383838383838383838383838383838383838383838393838
          3838383838383838383838383838383838383838380039393A39393A3939393A
          393939393A3939393A3A3A3A3A393A3A3A393939393A3A39393A3A39393A393A
          39393A393A3A39393939393A3A3A39393939393A3A393939393A3A3939393939
          39393939393A393939393A393939393A39393A393A3939393939393939393939
          3939393A3939393A39393A3A393A393939393939393A3A3A393939393A393939
          3A3A3A393A3A3939393939393A39393A3A3A3A393A3A393939393A393A39393A
          39003A3B3A3B3B3B3A3A3A3A3B3B3B3A3B3B3B3B3A3A3A3A3B3A3B3A3B3A3B3A
          3B3B3B3B3A3B3B3A3B3B3A3B3B3B3B3B3B3B3B3B3A3B3B3B3B3B3B3A3B3A3B3B
          3B3A3A3B3A3B3B3A3B3B3A3B3B3A3B3A3B3A3B3B3B3A3B3B3A3A3A3B3A3B3B3B
          3B3B3B3B3B3A3B3B3A3B3A3B3A3B3B3A3A3A3A3B3A3A3B3A3A3B3A3A3A3B3B3B
          3B3B3B3A3B3B3B3B3A3A3B3B3B3A3B3B3B3B3B3B3B3B3B3B3A3B3B3B3A3A3B3B
          3B3B3A3B3B3B3B3B3A3A3B3B3A003C3D3C3D3C3C3C3C3C3C3C3C3C3C3C3C3C3C
          3C3D3D3C3C3C3C3C3C3C3D3C3C3C3C3C3C3C3C3C3C3C3C3C3C3D3C3C3C3C3C3C
          3C3D3C3C3C3C3C3C3C3C3D3C3C3D3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3D3C3C
          3C3C3C3C3C3C3C3D3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C
          3D3C3C3D3C3C3C3C3C3C3C3C3C3D3C3D3C3C3C3C3D3C3C3C3D3C3C3C3C3C3D3C
          3C3C3C3C3C3C3C3C3C3C3C3C3C3D3C3C3D3C3C3C3C3D3C3C3C003E3E3E3E3E3D
          3E3D3E3D3E3E3E3E3D3E3E3D3D3D3D3D3D3D3E3D3E3E3E3D3E3E3D3E3E3D3E3E
          3D3E3E3D3E3E3E3E3E3E3D3E3E3D3D3E3D3E3E3D3E3D3E3E3D3E3E3D3E3E3D3E
          3E3D3E3E3D3D3E3D3D3D3E3D3D3E3E3E3E3D3E3D3E3D3E3E3D3E3D3E3E3D3D3E
          3D3D3D3D3E3D3D3D3D3E3D3D3E3D3D3E3D3D3E3E3D3E3E3E3E3E3D3E3E3E3D3D
          3E3D3E3D3D3D3D3D3D3D3E3E3E3E3D3D3D3E3E3E3D3E3E3E3D3E3E3E3D3E3E3E
          3E3D3D3D3D00403F403F403F3F3F40403F3F3F3F3F403F3F3F3F3F3F3F3F3F3F
          3F3F403F3F3F3F403F3F3F3F403F3F3F3F3F3F3F3F403F3F3F403F3F403F3F3F
          3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F403F3F3F3F3F3F
          3F3F3F3F3F403F3F403F403F3F3F3F3F3F3F3F3F3F3F3F3F403F3F3F403F3F3F
          3F3F3F3F3F3F403F3F403F3F3F3F3F3F3F403F403F3F3F3F3F3F3F3F3F3F3F3F
          3F3F403F3F3F3F3F3F3F3F3F3F403F3F3F004140414140414141414141404141
          4141414141414140414141414141414041414141414140414140414140414141
          4141414041414140414141414141414040414041414141414041414040414141
          4140414141414141414141414141414041414040404141414141414141414141
          4141404141414141414141414041414141414141414141414141414041404141
          4041414041414141414141414141414141414141414141414141414141004343
          4343434243434243424342424242434242434243434343424342424243434342
          4242424342424343424343424342434343424242424343424243434242434342
          4343424243434343424342434343424342434242434243424243434343424342
          4342424243424343434342424343424342434343424343424343424342434343
          4242424243424242434243434342424342424243434343434243434342424242
          4342424242434243420044444444444444454444444544444444454444454544
          4445444444444444444444444445444444444444444444454544444444454444
          4444444444444544444444454444444444454444444444444444444445444444
          4444454444444444444445444444444444444544444444444544444544444444
          4545454444444544454444454444444444444444444544454444444444444445
          4445444444444444444445444444454444444445440046464646464646464646
          4646464646464646464546464646464645464646464646464646464646464646
          4646464646464646464646464646464646464646464646464646464646464646
          4646464646454646464646464646464646464646464646464646464646464646
          4646464646464646464646464646464646464646464646464646464646464646
          4646464646464646464646464646464646464646464646464646464546464646
          4600484748484848474848474847474848484847484748484847484848484848
          4747484847484848484847484748484848474747484848484748484848484847
          4848484848474848484848484748484748484748474848484847484848484848
          4848484748484747484748484848484847474847484848484848484748484848
          4848474848484748474847484748474748484748474747484848474848484848
          474848474848484847474847480049494949494A4A4949494A494A4A494A4A49
          49494A494A4A4A49494A494A494A49494949494A4A4A4A494A494A494A4A494A
          4A4A494A4A494949494A494A4A494A4A4949494949494A4A4A4A4A494A4A494A
          4A4A4A4A4949494A4A4A494A49494A4A4A4A4A494A4A4A4A4A4A494A4A4A494A
          494949494A4949494A4A4A494A494A4A4A494949494A494A49494A4A494A4A4A
          4A4A4A4949494A4A49494A494A4A4949494A494A494A4A494A004B4C4C4B4B4C
          4B4B4C4B4B4C4C4C4B4B4B4B4C4B4C4B4C4B4C4B4C4B4B4C4C4B4B4C4B4B4C4C
          4C4B4C4C4C4B4B4C4B4B4B4B4C4B4C4B4B4B4B4B4C4C4B4C4B4C4B4B4B4C4B4C
          4B4C4C4C4B4B4B4B4C4B4B4B4B4B4C4B4B4C4B4B4C4C4B4C4C4B4B4B4B4C4B4B
          4C4B4C4B4B4B4C4B4B4B4B4C4B4B4B4B4B4B4B4C4B4C4C4C4B4B4B4B4C4B4C4C
          4B4B4C4B4C4B4B4B4B4B4B4B4C4B4C4B4B4B4C4B4C4B4B4B4C4C4C4B4B4B4B4B
          4B4C4B4C4B004D4D4D4D4D4D4D4E4D4D4E4E4D4D4D4D4E4D4D4E4D4D4D4D4D4E
          4D4D4E4E4E4E4D4D4E4D4D4D4E4D4D4D4D4E4E4D4E4D4E4D4E4D4D4D4D4E4D4D
          4D4E4D4D4D4D4D4E4E4D4D4D4D4D4E4E4D4E4D4D4D4D4D4D4D4D4D4E4D4D4E4D
          4E4D4D4E4D4D4D4E4D4D4D4E4E4D4D4E4E4E4D4E4D4D4E4D4D4D4D4E4D4D4E4E
          4D4D4D4E4D4E4D4D4D4D4D4D4E4D4D4D4D4D4D4D4D4D4E4E4D4D4E4D4D4E4E4D
          4D4D4E4D4D4E4E4D4D4D4D4D4E4D4E4D4E00504F504F4F4F4F4F4F4F4F4F4F4F
          4F4F4F4F50504F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F504F504F
          4F4F4F4F4F4F4F4F50504F4F4F4F4F4F4F4F4F4F4F4F504F4F4F4F4F4F4F4F4F
          4F4F4F4F4F4F4F4F4F4F4F4F4F4F50504F4F504F4F4F4F4F4F504F4F504F4F50
          4F4F4F4F4F504F4F50505050504F4F504F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F
          4F4F50504F4F4F4F4F4F4F4F4F4F504F4F4F4F4F4F4F4F4F4F4F4F4F4F005151
          5151515151515151515151525151515151515251515151515151515151515151
          5151515251515151515151515151515251515151515151525151515151515151
          5151515151515151515151515151515151515151515151515251515151515251
          5151515151515151515251515151515151515151515152515151515251515151
          5151515151515151515151515151515151515151515151515251515151515151
          5251515151515251510053535353535353535353535253535353535353535353
          5353535353535353535353535353525353535353535353535353535353535353
          5353535353535353535353535353535353535353535353535353535353535353
          5353535353535353535353535353535353535353535353535353535353535353
          5353535353535353535353535353535353535353525352535353535353535253
          5353535353535353535353535352535353535353530055555455555555555454
          5555555554555455555555555454555555555555545554555555555555555555
          5555545555555555555455555554555455555555555555555555555554555555
          5555545555555554555555545455545454555554555455545555555555555555
          5555555555555555555555555555555555555555555555555555555555545555
          5554555455555555555555555555555555545555555555545555555555555555
          5500565757575657575656575756575657575757575757575757575657565657
          5657565757575757575757575757575757565656575757575757575757575756
          5756575757565657565757575657575756575756575657565657565657575757
          5656565757575757575656575757575757565757575757575757575657575757
          5756565757575756575757565657565757565756575757575757575657575756
          5757575757565657575757575600585859595959585959595959595959585958
          5959595858595958585959595958585858595959595859585859585959595958
          5859595958585858585859595859585959595859585959585859595958585958
          5958595959595859585959595859585859585959595959585959585858595858
          5958595858595858585858595959595959595859595959595859595858595859
          59595859585959585959585958585958595958585859585859005A5A5B5A5A5B
          5A5B5B5A5B5B5B5A5A5B5A5B5A5B5A5B5A5A5B5A5A5B5A5A5A5B5A5A5A5A5B5B
          5B5A5A5A5A5A5B5A5B5A5A5A5B5B5B5A5A5A5A5B5A5A5B5B5A5A5A5A5A5A5A5B
          5A5A5B5A5A5B5A5A5B5B5B5B5A5B5A5A5B5B5A5A5B5A5A5A5B5B5A5B5A5A5B5B
          5A5B5B5B5B5A5A5A5B5B5B5A5A5A5B5A5A5A5B5A5A5B5B5A5A5A5A5A5B5B5B5B
          5B5B5B5B5A5A5A5B5A5A5B5B5B5A5A5A5B5B5A5A5A5B5A5B5B5A5B5B5A5A5B5B
          5A5A5A5B5B005C5C5D5C5C5C5C5C5C5C5C5D5C5C5C5C5C5C5C5D5C5C5C5C5D5C
          5D5C5C5C5C5C5C5C5C5C5C5C5C5C5D5C5C5C5C5C5D5C5C5C5C5D5D5C5C5D5D5C
          5C5C5D5C5C5C5C5C5C5C5C5D5C5C5C5C5C5C5C5C5D5C5C5C5C5C5D5C5C5C5D5C
          5D5C5C5C5D5C5C5C5C5D5C5D5C5C5C5C5C5C5C5C5C5C5C5C5D5D5C5C5D5C5C5C
          5C5C5C5C5C5C5D5C5C5D5D5C5D5D5C5C5C5C5C5C5C5C5C5C5C5D5C5C5C5C5C5C
          5C5C5C5D5C5D5D5D5C5C5C5D5C5C5C5D5C005E5E5E5E5E5E5E5E5E5E5E5E5E5E
          5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5F5E5E5E5F5E5E5E
          5E5E5E5E5F5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E
          5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E
          5E5E5E5E5E5E5E5E5E5E5E5E5E5E5F5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5F5E
          5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E006060
          60606060606060606060605F606060605F6060606060606060605F6060606060
          60606060605F6060606060605F6060606060606060605F605F605F6060606060
          6060606060606060605F5F60606060606060606060605F5F6060606060606060
          5F605F60606060605F605F60605F60605F606060605F606060605F605F5F6060
          60605F606060605F6060605F5F5F6060606060605F606060606060605F605F60
          5F60605F60606060600061626262626262626261626261616162616162626161
          6262626161616262626261626162616161626162616262626261626262616161
          6262616262616262626262626162626262626262616261626162616262616161
          6262626162626161626162626161616262616162626262626261626262626161
          6262626262616161626161626261616161626161616262616262626261626262
          6262616162616262626162616161626261626162620063646364636363636364
          6363646464636363636463636363636363636363636363646363636363636364
          6363636363636364636363636363636363646363646364636363646464636363
          6363646463636363636363636364636363636464636364636363636463636364
          6463646364636363636463636363636363636463636364636363636363636364
          6464636363636363636463636363636363636363636363636363636364636463
          6400656565656565646565656565646465656565656565656565656565656565
          6565646565646465656565656564646465646565656565646564646565656565
          6565656565656564646465656565656565656565656565656565656465656465
          6565646565656565646565646465656565656565656565656565656465646565
          6564656465646565646565656565656565646565656565656564646565656565
          6564656465646464656565656500666767666667666666666666666666676666
          6767676667666666666667676666666767666766666766666667666666666667
          6767666766666667666766676666666666676666666666666767676766666766
          6767676766676667676666666767666666666767666666666666676667666667
          6766666666666767666667676666666666666667676667666666676766666667
          6666676666676666666766666666676767666767666666666600686868686868
          6868686868676868686868686868686867686868686868686867686868676868
          6868686768686867686868686768686868686868686868686868686868686868
          6867686867686868676868686868686768686868686868676868686868686767
          6868686868686868686867686867686868686868686868686868686867686868
          6868676868686868686768686868686868686868686868686867686868686868
          6868686868006969696A6A696A6A6A6A6A6969696969696A6A6A6A696A6A6A6A
          69696969696A6A696A696A696A696A696A6A6A6969696A69696A6A696A696969
          69696969696A696A69696969696A696A6A69696A69696969696969696A696A69
          69696A6A696A696A69696A696A6969696A6969696A6A696A6A696A6A696A6969
          696A6A6A6969696A6A6A696969696969696A6A69696A6A69696A696969696A6A
          69696A6A69696A6A6A69696A6A6A696969006B6B6B6A6A6B6B6B6B6A6B6B6A6B
          6B6B6B6B6B6A6B6B6B6B6B6B6B6B6B6A6A6B6B6B6B6B6B6A6B6B6B6B6A6A6B6B
          6B6B6B6A6A6B6A6A6B6B6B6B6A6A6B6B6B6A6B6A6B6A6A6A6B6A6B6B6B6A6A6B
          6A6B6B6B6B6B6B6B6A6A6B6A6B6A6B6B6B6B6B6B6B6A6A6B6B6B6B6B6B6A6B6B
          6B6B6B6B6B6B6A6A6B6B6B6B6A6B6B6A6B6B6A6B6B6B6B6A6B6B6B6B6B6B6B6B
          6B6B6B6B6B6A6A6B6B6B6B6B6B6B6A6B6B6B6B6B6B6B6B6B6B6B6B6A6B006C6C
          6C6C6C6C6C6B6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C
          6C6C6B6C6C6C6C6C6C6C6C6C6B6C6C6C6C6C6C6C6C6C6C6C6B6C6C6C6C6C6C6C
          6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C
          6C6C6C6C6C6C6C6C6C6C6C6C6C6C6B6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C
          6C6C6C6C6C6C6C6C6C6C6C6B6C6C6C6B6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C
          6C6C6C6C6C6C6C6C6C006D6D6D6D6D6D6E6D6D6D6D6D6D6D6D6D6D6D6E6D6D6D
          6D6D6D6D6D6D6D6D6D6D6D6D6D6E6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6E
          6D6D6D6D6D6D6D6D6E6D6D6D6D6D6D6E6D6D6E6D6D6D6D6E6D6D6D6D6D6D6D6D
          6D6D6D6E6D6D6D6D6E6D6D6E6D6D6D6D6D6D6D6E6D6D6E6D6D6E6D6D6E6D6E6D
          6D6D6D6D6D6D6D6D6D6D6D6D6D6E6D6E6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D
          6E6D6D6D6D6D6D6D6D6D6D6D6E6D6D6D6D6E6D6D6D006E6F6E6E6F6E6E6E6E6F
          6E6F6E6E6E6E6E6E6F6F6E6F6E6E6E6E6E6E6E6E6E6E6F6E6E6E6F6E6E6F6E6F
          6F6E6E6E6E6E6E6E6F6E6E6E6F6E6E6E6E6F6F6E6E6E6E6E6E6E6E6F6E6F6F6F
          6E6E6E6E6E6E6E6E6F6E6E6E6F6E6F6F6E6E6E6E6E6F6E6F6E6E6F6E6E6E6E6E
          6E6E6F6E6E6E6E6F6E6E6E6E6E6F6E6E6E6E6F6E6F6E6E6E6E6E6E6E6E6E6E6F
          6E6F6E6F6E6F6F6E6E6E6E6E6F6F6E6E6E6E6E6E6E6E6E6F6E6F6E6E6E6E6F6F
          6E006F6F6F706F706F6F6F6F6F6F6F70706F6F706F6F6F706F6F6F6F706F6F6F
          6F6F706F6F6F6F706F6F6F706F6F6F706F6F6F6F706F6F6F6F706F6F6F6F6F6F
          6F6F6F6F706F6F6F6F706F6F6F706F6F6F6F6F6F6F70706F706F6F70706F706F
          6F6F706F6F706F6F6F6F6F6F706F6F706F6F6F70706F6F6F706F6F6F6F6F6F70
          70706F6F6F6F706F6F6F6F706F6F706F6F6F6F6F6F6F6F6F706F6F6F6F6F6F6F
          6F706F6F706F6F6F6F6F6F6F6F00707070707070707070707070707170707170
          7070707071707170707070707070707171707070707070717070717070707070
          7071707071707171707070717070707171707070707070707070707070717170
          7170707070707170707070707070707070707170707170707070717070707070
          7170707171707070707070717170707071707070707070707070707070707070
          7070707171707071717070707070707070707170707070707000717171717171
          7171717171717171717171717171717171717171717171717171717171717171
          7171717171717171717171717171717171717171717171717171717171717171
          7171717171717171717171717171717171717171717171717171717171717171
          7171717171717171717171717171717171717171717171717171717171717171
          7171717171717171717171717171717171717171717171717171717171717171
          7171717171007171717171717171717171717171717171717171717171717171
          7171717171717171717171717171717171717171717171717171717171717171
          7171717171717171717171717171717171717171717171717171717171717171
          7171717171717171717171717171717171717171717171717171717171717171
          7171717171717171717171717171717171717171717171717171717171717171
          7171717171717171717171717171717171007171717171717171717171717171
          7171717171717171717171717171717171717171717171717171717171717171
          7171717171717171717171717171717171717171717171717171717171717171
          7171717171717171717171717171717171717171717171717171717171717171
          7171717171717171717171717171717171717171717171717171717171717171
          717171717171717171717171717171717171717171717171717171717100}
      end>
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
    Left = 384
    Top = 72
    DockControlHeights = (
      0
      0
      0
      52)
    object btnGuardar: TdxBarLargeButton
      Caption = 'Guardar'
      Category = 0
      Hint = 'Guarda los cambios'
      Visible = ivAlways
      ImageIndex = 3
      OnClick = btnGuardarClick
      AutoGrayScale = False
    end
    object btnCancelar: TdxBarLargeButton
      Caption = 'Cancelar'
      Category = 0
      Hint = 'Cancela los cambios'
      Visible = ivAlways
      ImageIndex = 4
      OnClick = btnCancelarClick
      AutoGrayScale = False
    end
    object btnSalir: TdxBarLargeButton
      Align = iaRight
      Caption = 'Salir'
      Category = 0
      Hint = 'Salir del Libro Banco'
      Visible = ivAlways
      ImageIndex = 6
      OnClick = btnSalirClick
      AutoGrayScale = False
    end
    object btnNuevo: TdxBarLargeButton
      Caption = 'Nuevo'
      Category = 0
      Hint = 'Nuevo'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = btnNuevoClick
      AutoGrayScale = False
    end
    object btnModificar: TdxBarLargeButton
      Caption = 'Modificar'
      Category = 0
      Hint = 'Modificar'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = btnModificarClick
      AutoGrayScale = False
    end
    object btnEliminar: TdxBarLargeButton
      Caption = 'Eliminar'
      Category = 0
      Hint = 'Eliminar'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = btnEliminarClick
      AutoGrayScale = False
    end
    object GrupoEditando: TdxBarGroup
      Items = (
        'btnSalir'
        'btnNuevo'
        'btnModificar'
        'btnEliminar')
    end
    object GrupoGuardarCancelar: TdxBarGroup
      Enabled = False
      Items = (
        'btnGuardar'
        'btnCancelar')
    end
  end
  object EKUsrPermisos1: TEKUsrPermisos
    Objetos = <
      item
        Objeto = usr_f
        Clave = 'USRVerFirebirdUsr'
        Accion = EKVisible
      end
      item
        Objeto = contrasenia_f
        Clave = 'USRVerFirebirdUsr'
        Accion = EKVisible
      end
      item
        Objeto = Titulo_f
        Accion = EKVisible
      end>
    Left = 389
    Top = 137
  end
  object EKLlenarCBoxUsuarios: TEKLlenarCombo
    dataset = ZQ_UsuariosCopia
    combo = CBoxUsuariosCopia
    CampoClave = 'USUARIO'
    CampoVer = 'USUARIO'
    Left = 57
    Top = 339
  end
  object ZQ_UsuariosCopia: TZQuery
    Connection = DM.Conexion
    SQL.Strings = (
      'select *'
      'from usuarios')
    Params = <>
    Left = 168
    Top = 338
    object ZQ_UsuariosCopiaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 10
    end
    object ZQ_UsuariosCopiaNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 40
    end
    object ZQ_UsuariosCopiaCLAVE: TStringField
      FieldName = 'CLAVE'
      Size = 12
    end
    object ZQ_UsuariosCopiaDIR: TStringField
      FieldName = 'DIR'
      Size = 30
    end
    object ZQ_UsuariosCopiaNUM_DIR: TIntegerField
      FieldName = 'NUM_DIR'
    end
    object ZQ_UsuariosCopiaTELEFONO: TIntegerField
      FieldName = 'TELEFONO'
    end
    object ZQ_UsuariosCopiaCOD_ORIGEN: TStringField
      FieldName = 'COD_ORIGEN'
      Size = 1
    end
    object ZQ_UsuariosCopiaDB_USR: TStringField
      FieldName = 'DB_USR'
      Size = 10
    end
    object ZQ_UsuariosCopiaDB_CLV: TStringField
      FieldName = 'DB_CLV'
    end
    object ZQ_UsuariosCopiaCAMBIARCLAVE: TStringField
      FieldName = 'CAMBIARCLAVE'
      Size = 1
    end
    object ZQ_UsuariosCopiaGRUPO: TStringField
      FieldName = 'GRUPO'
      Required = True
      Size = 1
    end
    object ZQ_UsuariosCopiaHABILITADO: TStringField
      FieldName = 'HABILITADO'
      Required = True
      Size = 1
    end
    object ZQ_UsuariosCopiaNIVEL: TIntegerField
      FieldName = 'NIVEL'
    end
  end
end
