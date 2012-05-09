Attribute VB_Name = "global"
Public objCnxAeros As New clsConexion
Public vServidor As String
Public Nombre_Usu As String
Public PC_Js      As String


Public Const LocalidadDefecto = "Santa Fe"
Public Const Bonificacion = "20.00"


'Para el CONTROLARDOR FISCAL EPSON
Public Const PuertoPF As Byte = 1 'Tb. sirve para la HASAR
Public Const SalidaImpresora = "C"
Public Const CantCopias = "1"
Public Const IVA_Vendedor = "I"
Public Const TipoPapel = "C"

Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" _
    (ByVal lpApplicationName As String, ByVal lpKeyName As Any, _
    ByVal lpdefault As String, ByVal lpReturnedString As String, _
    ByVal nSize As Long, ByVal lpFileName As String) As Long

Sub Main()
'Variables para almacenar error y generar archivo
'Para la implementacion del release candidate
Dim strError As String
Dim strFilename As String

Dim a_strArgs() As String
Dim i As Integer
Dim objComp As New clsComprobantes
Dim objFP As New FiscalPrinter

Dim lote As Long
Dim impresora As String
Dim comando As String

    On Error GoTo ErrorHandler

    a_strArgs = Split(Command$, " ")
    For i = LBound(a_strArgs) To UBound(a_strArgs)
        Select Case LCase(a_strArgs(i))
            Case "-i", "/i"
                impresora = a_strArgs(i + 1)
                'De esta forma "-i" o "/i" se pasa como parametro sobre que impresora se quiere trabajar.
            Case "-c", "/c"
                'De esta forma "-c" o "/c" se pasa como parametro que comando se quiere ejecutar sobre la impresora.
                comando = a_strArgs(i + 1)
            Case "-l", "/l"
                'De esta forma "-l" o "/l" se pasa como parametro el numero de comprobante
                'o lote que se tiene que mandar a imprimir.
                lote = a_strArgs(i + 1)
            Case Else
        End Select
    Next i
    Select Case comando
        Case "Z"
            'Hacer Cierre Z
            Select Case impresora
                Case "TM-U220AF"
                    frmMain.EPSON_Printer_Fiscal.PortNumber = PuertoPF
                    frmMain.EPSON_Printer_Fiscal.CloseJournal "Z", "P"
                    frmMain.EPSON_Printer_Fiscal.Status ("N")
                Case "TM-2000AF"
                    frmMain.EPSON_Printer_Fiscal.PortNumber = PuertoPF
                    frmMain.EPSON_Printer_Fiscal.CloseJournal "Z", "P"
                    frmMain.EPSON_Printer_Fiscal.Status ("N")
            End Select
        Case "X"
            'Hacer Cierre X
            Select Case impresora
                Case "TM-U220AF"
                    frmMain.EPSON_Printer_Fiscal.PortNumber = PuertoPF
                    frmMain.EPSON_Printer_Fiscal.CloseJournal "X", "P"
                    frmMain.EPSON_Printer_Fiscal.Status ("N")
                Case "TM-2000AF"
                    frmMain.EPSON_Printer_Fiscal.PortNumber = PuertoPF
                    frmMain.EPSON_Printer_Fiscal.CloseJournal "X", "P"
                    frmMain.EPSON_Printer_Fiscal.Status ("N")
            End Select
        Case "F"
            'Imprimir la Factura
            objComp.selComprobante lote
            If objComp.pCanReg > 0 Then
                Select Case impresora
                    Case "TM-U220AF"
                        objFP.imprimirFacturaXEpson 1, objComp.pRS, lote
                    Case "TM-2000AF"
                        objFP.imprimirFacturaXEpson 1, objComp.pRS, lote
                End Select
            Else
                MsgBox "El comprobante que desea imprimir es el " & a_strArgs(i + 1)
            End If
    End Select
    End
    Exit Sub

ErrorHandler:
    MsgBox "Argumentos invalidos o inexistentes: " & vbCrLf & vbCrLf & _
            "Opciones posibles: " & vbCrLf & _
            "-i, /i: Impresora sobre el que se quiere sacar la impresion." & vbCrLf & vbCrLf & _
            "-c, /c: Seguido del comando que se quiere ejecutar. Z(Cierre Z), X(Cierre X) - F(Impresion de Factura)" & vbCrLf & _
            "-l, /l: Numero de lote que se desee imprimir. Si el comando anterior es F, se debe mandar tb. este parametro que es el lote que se desea imprimir." & vbCrLf & _
            "Para mas informacion contacte al soporte tecnico: " & vbCrLf & _
            "Bytes Ingenieria " & vbCrLf & _
            "Web: http://www.bytesingenieria.com.ar " & vbCrLf & _
            "Tel: (0342)-155444384"
    End

End Sub

Public Function Ultimo_ID(cnn As ADODB.Connection) As Long
    On Error GoTo errHandler
Dim R As New ADODB.Recordset
Dim ConsultaOK As Boolean
Dim ConsVacia As Boolean

    Err.Clear

    ConsOK = True
    R.Open "SELECT @@IDENTITY", cnn
    If R.BOF And R.EOF Then
        ConsVacia = True
    Else
        ConsVacia = False
    End If
    
    If ConsOK And Not ConsVacia Then
        If Not IsNull(R.Fields(0).Value) Then
            Ultimo_ID = R.Fields(0).Value
        Else
            Ultimo_ID = -1
        End If
        R.Close
    Else
        Ultimo_ID = -2
    End If

    Exit Function

    Exit Function

errHandler:
    Err.Raise 2, "Conexion.Ultimo_ID(cnn)", Err.Description

End Function

Private Function BaseAUsar(pSeccion As String) As String
'    On Error GoTo errHandler
'' ----------------------------------------------
'' Toma el nombre de un servidor
'' ----------------------------------------------
'Dim sArchivoInicio As String
'Dim vBase As String
'
'    sArchivoInicio = App.path & "\JS.INI"
'    If Trim(Dir(sArchivoInicio, vbArchive)) <> "" Then
'        vBase = sGetINI(sArchivoInicio, pSeccion, "Base ", "?")
'    Else
'        MsgBox "Falta el Archivo de Configuración de la aplicación. Consulte a Sistemas, porque no podrá ejecutar la aplicación", vbExclamation
'        End
'    End If
'    BaseAUsar = vBase
'
'    Exit Function
'errHandler:
'    ErrorIn "Conexion.Servidor"
End Function

Public Sub FinalizarSecion()
    On Error GoTo errHandler
'Cierra todas las conecciones realizadas a la base de datos.
    
    Set objCnxAeros = Nothing
    Set objCnxWeb = Nothing
    
    Exit Sub
errHandler:
    'ErrorIn "Conexion.FinalizarSecion"
End Sub

Public Sub AsignarValoresGeneral(pObjCnx As clsConexion, pRS As ADODB.Recordset, ByVal pObjetoDestino As Object, Optional pNoAsigRs As Boolean)
    ' --------------------------------------------
    ' Asigna pRS y datos de la conexión oObjConx
    ' a objeto pObjetoDestino
    ' --------------------------------------------
    
    If Not pNoAsigRs Then
        Set pObjetoDestino.pRS = pRS
    End If
    pObjetoDestino.pCanReg = pObjCnx.pCanReg
    pObjetoDestino.pDesError = pObjCnx.pDesError
    pObjetoDestino.pIdDevuelto = pObjCnx.pUltIdenOtor
    pObjetoDestino.pNumError = pObjCnx.pNumError

End Sub
