VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsConexion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Attribute VB_Ext_KEY = "SavedWithClassBuilder6" ,"Yes"
Attribute VB_Ext_KEY = "Top_Level" ,"Yes"
'----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Const cDefaultTimeOut = 90

'Definición de propiedades como variables publicas
Public pServidor As String
Public pBase As String
Public pusuario As String 'Si se utiliza
Public pPassWord As String '
Public pConexion As ADODB.Connection
Public pNumError As Long
Public pDesError As String
Public pCanReg As Long          'Almacena la cantidad de registros recuperados por la última ejecución del método TraerRS
Public pUltIdenOtor As Long     'Almacena el último id otrogado por el motor
Public pCanFilAfe As Long       'Informa la cantidad de filas afectadas por la última instruccción
Public pTimeOut As Integer      'Indica la cantidad de segundos que se especifican al parámetro, si se omite toma 90 seg
Public pLimiteDeAccesos         'Límite de accesos para cerrar una conexión

'Variables locales para almacenar los valores de las propiedades
Private mvarpCadenaConexión As String       'Copia local
Private mvarpConexion As ADODB.Connection   'Copia local
Private vEnTransaccion As Boolean
Private vConectado As Boolean               'Propiedad privada que mantiene infomación sobre si la conexión está establecida o no
Private vMantenerCnxAbierta As Boolean      'Propiedad privada para mantener una conexión abierta
Private vCantidadDeAccesos As Byte          'Contador de accesos




'-----------------TIPOS DE COMANDOS--------------------Constante Descripción
'adCmdText --> Evalúa CommandText como una definición textual de un comando o una llamada a un procedimiento almacenado.
'adCmdTable --> Evalúa CommandText como un nombre de tabla cuyas columnas se devuelven todas mediante una consulta SQL generada internamente.
'adCmdTableDirect -->Evalúa CommandText como un nombre de tabla en la que se devuelven todas las columnas.
'adCmdStoredProc -->Evalúa CommandText como un nombre de procedimiento almacenado.
'adCmdUnknown -->Predeterminado. El tipo de comando de la propiedad CommandText es desconocido.
'adCmdFile -->Evalúa CommandText como el nombre de archivo de un valor Recordset persistente.
'adExecuteNoRecords -->Indica que CommandText es un comando o un procedimiento almacenado que no devuelve filas (por ejemplo, un comando que sólo inserta datos). Si se recupera alguna fila, se descarta y no se devuelve. Siempre se combina con adCmdText o adCmdStoredProc.
'--------------------------------------------------------------------------------------------------------------
'-----------------------------------PROPIEDAD CADENA DE CONEXION-----------------------------------------------
'--------------------------------------------------------------------------------------------------------------
Public Property Let pCadenaConexión(ByVal VData As String)
'se usa al asignar un valor a la propiedad, en la parte izquierda de una asignación.
'Syntax: X.pCadenaConexión = 5
    mvarpCadenaConexión = VData
End Property
 
Public Property Get pCadenaConexión() As String
'se usa al recuperar un valor de una propiedad, en la parte derecha de una asignación.
'Syntax: Debug.Print X.pCadenaConexión
Dim sPath As String

    sPath = App.path
    sPath = Left(sPath, InStrRev(sPath, "\"))
     
    'mvarpCadenaConexión = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\proyectos\aeros\aeros.mdb;Persist Security Info=False"
     'mvarpCadenaConexión = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & sPath & "aeros.mdb;Persist Security Info=False"
     
Dim usuario As String
Dim Password As String
Dim BaseD As String
Dim Driver As String
     
Driver = "Firebird/InterBase(r) driver"
usuario = "SYSDBA"
Password = "masterkey"
BaseD = Servidor("Server PRODUCCION") ' "D:\proyectos\BONA\Sistema\DISTRIBUIDORA.FDB" ' Alias de la BD
     
    mvarpCadenaConexión = "DRIVER=" & Driver & "; UID=" & usuario & "; PWD=" & Password & "; DBNAME=" & BaseD & ";"
    

    pCadenaConexión = mvarpCadenaConexión
    
End Property

Private Function Servidor(pSeccion As String) As String
    On Error GoTo errHandler
'' ----------------------------------------------
'' Toma el nombre de un servidor
'' ----------------------------------------------
Dim sArchivoInicio As String
Dim vServer As String

    sArchivoInicio = App.path & "\AerosFiscalPrinter.INI"
    If Trim(Dir(sArchivoInicio, vbArchive)) <> "" Then
        vServer = sGetINI(sArchivoInicio, pSeccion, "DirBase ", "?")
    Else
        MsgBox "Falta el Archivo de Configuración de la aplicación. Consulte a Sistemas, porque no podrá ejecutar la aplicación", vbExclamation
        End
    End If
    Servidor = vServer

    Exit Function
errHandler:
    MsgBox "Error de lectura de ini"
End Function

Public Function sGetINI(sINIFile As String, sSection As String, sKey As String, sDefault As String) As String
Dim sTemp As String * 256
Dim nLength As Integer

    sTemp = Space(256)
    nLength = GetPrivateProfileString(sSection, sKey, sDefault, sTemp, 255, sINIFile)
    sGetINI = Left(sTemp, nLength)

End Function

Private Function Conectar() As Boolean
Dim auxCnx As New ADODB.Connection
Dim vOK As Boolean

    Err.Clear
    On Error GoTo ErrCnx

    auxCnx.ConnectionString = Me.pCadenaConexión
    If (auxCnx.State = ADODB.adStateClosed) Then
        auxCnx.Open
        vConectado = True
        Set pConexion = auxCnx
    End If
    Set auxCnx = Nothing

    Exit Function

ErrCnx:

    auxCnx.ConnectionString = Me.pCadenaConexión
    auxCnx.Open
    vConectado = True
    Set pConexion = auxCnx
    Exit Function
    
End Function

'No uese Record (eso es para Exchange básicamente). Usá directamente Recordset
Public Function TraerRecordSet(ByVal Pa As String, ByVal Modo As ADODB.CommandTypeEnum, ParamArray pArrArgs()) As ADODB.Recordset
Dim vrs As New ADODB.Recordset
Dim vParams As Variant
    
On Error GoTo ErrTraRs

    LimpiarError
    pCanReg = 0
    pCanFilAfe = 0
    'Debug.Print pArrArgs(0)
    If Not vConectado Then
        Conectar
    End If

    If Me.pNumError = 0 Then 'Si no hubo error al conectar
         With vrs
            .CursorLocation = adUseClient
            .CursorType = adOpenStatic
            .LockType = adLockBatchOptimistic

             If Not IsMissing(pArrArgs) Then
                ' Comprobar si el primer parámetro es un array
                If IsArray(pArrArgs(0)) Then
                    vParams = pArrArgs(0)
                Else
                    vParams = pArrArgs
                End If
            Else
                vParams = pArrArgs
            End If

            'Abre usando TraerComando, que deja Todo listo
            .Open TraerComando(Pa, Modo, vParams), , adOpenForwardOnly
            
            Set .ActiveConnection = Nothing 'Desconecta el recordset. Se puede pasar entre capas, aún entre máquinas distintas sin sobrecargar la red
         End With
    
        If vUsuarioConPermisoATodoDS Then
        
            Set TraerRecordSet = vrs
        
        Else

            If vrs.EOF Then

                Set TraerRecordSet = vrs
            
            Else

                ' ----------------------------------------
                Dim rs As ADODB.Recordset
                Dim i As Integer
                Dim j As Integer
                Dim k As Integer
                
                Dim vCampo As String
                Dim vdas_idesec As Integer
                
                Dim vCamposAOcultar() As Variant
                Dim vdas_carrem As Variant
                
                vdas_carrem = ""
                
                Set rs = New ADODB.Recordset
        
                rs.CursorLocation = adUseClient
                rs.CursorType = adOpenStatic
                rs.LockType = adLockOptimistic
        
                Set rs = vrs
        
                ' determino los campos con DS
                j = 2
                k = 0
                If rs.RecordCount > 0 Then
                    rs.MoveFirst
                End If
                
                Set rs.ActiveConnection = Nothing
                Set TraerRecordSet = rs
                ' -----------------------------------------
            End If
            
        End If
        
        If Not vEnTransaccion Then
             Desconectar
        End If
        
        If Not RsVacio(vrs) Then
            pCanReg = vrs.RecordCount
        Else
            pCanReg = 0
        End If
        
    End If

 Exit Function
 
ErrTraRs:
        pCanReg = -1
        Me.pDesError = Err.Description
        Me.pNumError = Err.Number
        Set TraerRecordSet = Nothing
        Desconectar
        Exit Function
End Function

' Esta función devuelve un Command de modo de poder utilziarla en casi cualquier parte
Private Function TraerComando(ByVal Proc As String, ByVal Modo As ADODB.CommandTypeEnum, ParamArray pArgs() As Variant) As ADODB.Command
Dim vComando As New ADODB.Command
Dim Params As Variant

    With vComando
      .ActiveConnection = Me.pConexion 'Aca se ejecutará el get de la propiedad conexion
      .CommandText = Proc
      .CommandType = Modo
    End With
        
    'Not Args Is Nothing And
    If Not IsMissing(pArgs) Then
        ' Comprobar si el primer parámetro es un array
        If IsArray(pArgs(0)) Then
            Params = pArgs(0)
        Else
            Params = pArgs
        End If
        
        CargarParametros vComando, Params
    End If
    
    If pTimeOut <> 0 Then
        vComando.CommandTimeout = pTimeOut
    Else
        vComando.CommandTimeout = cDefaultTimeOut
    End If
    
    Set TraerComando = vComando

End Function

Private Sub CargarParametros(prmComando As ADODB.Command, ParamArray prmArg() As Variant)
Dim i As Integer
Dim Params As Variant
Dim prm As ADODB.Parameter
    
    'prmComando.Parameters.Refresh
    'For Each prm In prmComando.Parameters
    '    Debug.Print "Nombre: " & prm.Name & " -Tipo: " & prm.Type & " -Valor: " & prm.Value & " -Atributos: " & prm.Attributes
    '    'Debug.Print prm.Properties.Count
    '    'Debug.Print prmComando.Parameters.Count
    '    'Debug.Print prmComando.Parameters(1).Name
    'Next

    With prmComando
        ' Comprobar si el primer parámetro es un array
        If IsArray(prmArg(0)) Then
            Params = prmArg(0)
        Else
            Params = prmArg
        End If
        For i = 0 To UBound(Params, 1)
            'Debug.Print prmArg(i)
            If Not IsMissing(Params(i)) Then
                If prmComando.CommandType = adCmdText Then
                    .Parameters(i) = Params(i)
                Else
                    .Parameters(i + 1) = Params(i)
                End If
                'If Not IsMissing(Params(i)) Then
                '    .Parameters(i) = Params(i)
                'End If
            End If
            'Debug.Print "Parametro" & (i + 1) & .Parameters(i + 1)
        Next
    End With
    
    
End Sub

Public Function EjeProcedimiento(pProcAlmacenado As String, ByVal Modo As ADODB.CommandTypeEnum, ParamArray args() As Variant) As Boolean
'Si es Execute, se supone no debe retornar registros (por eso el tercer argumento). Esto hace que sea más rápido
'ya que no se "prepara" para cargar un Recordset
On Error GoTo ErrEjec
Dim vCmdLoc As ADODB.Command
        
        LimpiarError
        pUltIdenOtor = 0
        'En ningún momento se pone en true o false.
        EjeProcedimiento = True
        If Not vConectado Then
             Conectar
        End If
        
        If Me.pNumError = 0 Then ' Si no hubo error al conectar
            Set vCmdLoc = TraerComando(pProcAlmacenado, Modo, args)
            'Debug.Print vCmdLoc.Parameters.Count
            With vCmdLoc
               .Execute , , adExecuteNoRecords
            End With
          
            'Devuelvo los parametros de tipo salida
            For i = 0 To vCmdLoc.Parameters.Count - 1
                With vCmdLoc.Parameters(i)
                    If .Direction = adParamInputOutput Or .Direction = adParamOutput Then
                        args(i - 1) = vCmdLoc.Parameters(i)
                    End If
                End With
            Next
            
            'Obtengo el ultimo id ortado por la conexion
            pUltIdenOtor = ObtenerID()
            
            'Devuelvo en la propiedad la cantidad de filas afectadas
            'Me.pCanFilAfe = CanFilAfe()
            
            If Not vEnTransaccion Then
                 Desconectar
            End If
        Else
            EjeProcedimiento = False
        End If
        
        Exit Function
        
ErrEjec:
        Me.pDesError = Err.Description
        Me.pNumError = Err.Number
        EjeProcedimiento = False
        Exit Function

End Function
 
Private Sub Class_Initialize()
    
    'Ejecucion cuando se instancia dicha clase
    'Conectar
    Me.pServidor = "localhost"
    Me.pBase = "Default"
    vEnTransaccion = False
    vConectado = False
    
End Sub
 
Private Sub Class_Terminate()
    
    'Ejecucion cuando la clase se descarga
    Desconectar
    
End Sub
 
Private Sub Desconectar()
'Siempre puede que la conexión esté cerrada
On Error GoTo errDsc
        
    If Not pConexion Is Nothing Then
        If Not vMantenerCnxAbierta Then
            If (pConexion.State = ADODB.adStateOpen) And vCantidadDeAccesos >= pLimiteDeAccesos Then
                pConexion.Close
                'Set pConexion = Nothing
                vConectado = False
                vCantidadDeAccesos = 0
                Exit Sub
            End If
        End If
        vCantidadDeAccesos = vCantidadDeAccesos + 1
    End If
    Exit Sub

errDsc:
    Resume Next

End Sub

Public Function IniciarTransaccion(Optional pNivelAislacion As ADODB.IsolationLevelEnum) As Boolean
On Error GoTo ErrIniTra
    
    'Abro la conección por si la misma no esta levantada aun
    If Not vConectado Then
        Conectar
    End If
    
    If (pNivelAislacion = 0) Then
        Me.pConexion.IsolationLevel = ADODB.IsolationLevelEnum.adXactBrowse
    Else
        Me.pConexion.IsolationLevel = pNivelAislacion
    End If

    Me.pConexion.BeginTrans
    vEnTransaccion = True
    IniciarTransaccion = True

    Exit Function

ErrIniTra:
    IniciarTransaccion = False
    vEnTransaccion = False
    Exit Function
End Function

Public Function TerminarTransaccion() As Boolean
On Error GoTo ErrTerTra

    If vEnTransaccion Then
        Me.pConexion.CommitTrans
        vEnTransaccion = False
        Desconectar
    End If
    
    Exit Function

ErrTerTra:
    TerminarTransaccion = False
    Exit Function
End Function


Public Function AbortarTransaccion() As Boolean
On Error GoTo AbrTerTra

    If vEnTransaccion Then
        Me.pConexion.RollbackTrans
        AbortarTransaccion = True
    End If
    Exit Function

AbrTerTra:
    AbortarTransaccion = False
    Exit Function
End Function

Private Sub LimpiarError()
    Me.pNumError = 0
    Me.pDesError = ""
End Sub

Private Function RsVacio(Rsinput As ADODB.Recordset) As Boolean

    If (Rsinput.EOF = True) And (Rsinput.BOF = True) Then
        RsVacio = True
    Else
        RsVacio = False
    End If
    
End Function

Private Function ObtenerID() As Long
Dim R As New ADODB.Recordset

    Err.Clear
    On Error GoTo errores
    
    Set R = TraerRecordSet("SELECT @@IDENTITY as UltID", adCmdText)
    
    If Not RsVacio(R) Then
        'Devuelve null tambien.....
        ObtenerID = IIf(IsNull(R!UltID), -1, R!UltID)
    Else
        ObtenerID = -1
    End If

    Set R = Nothing
    
    Exit Function

errores:
    ObtenerID = -1
    Me.pNumError = Err.Number
    Me.pDesError = Err.Description
    Exit Function
End Function

Public Function EjecutarConsulta(ByVal strsql As String) As ADODB.Recordset
Dim rs As New ADODB.Recordset

    On Error GoTo ErrorHandler
    'Abrir la conexion
    If Not vConectado Then
        Conectar
    End If
    'Ejecutar la consulta
    With rs
        .CursorLocation = adUseClient
        .CursorType = adOpenStatic
        .LockType = adLockBatchOptimistic
        Set .ActiveConnection = Me.pConexion 'Desconecta el recordset. Se puede pasar entre capas, aún entre máquinas distintas sin sobrecargar la red
    End With
    rs.Open strsql, , adOpenForwardOnly
    Set rs.ActiveConnection = Nothing
    Set EjecutarConsulta = rs
    pCanReg = rs.RecordCount
    Me.pUltIdenOtor = 0
    'Cerrar la conexion.
    If Not vEnTransaccion Then
         Desconectar
    End If
    Exit Function
    
ErrorHandler:
    pDesError = Err.Description
    pNumError = Err.Number
    pCanReg = -1
    Me.pUltIdenOtor = -1
    Set EjecutarConsulta = Nothing
    Desconectar

End Function


Public Function EjecutarComando(ByVal strsql As String) As Boolean
Dim exito As Boolean

    On Error GoTo ErrorHandler
    exito = True
    'Abrir la conexion
    If Not vConectado Then
        Conectar
    End If
    'Ejecutar el comando
    Me.pConexion.Execute strsql
    If exito Then
        pUltIdenOtor = ObtenerID
    End If
    Me.pCanReg = 0
    'Cerrar la conexion.
    Desconectar
    EjecutarComando = exito
    Exit Function
    
ErrorHandler:
    exito = False
    Me.pDesError = Err.Description
    Me.pNumError = Err.Number
    Resume Next

End Function

