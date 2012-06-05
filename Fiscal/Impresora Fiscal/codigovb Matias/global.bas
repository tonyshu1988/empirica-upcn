Attribute VB_Name = "global"
'Objetos Globales
Public objCnxAeros  As New clsConexion  'objeto conexion con la base de datos

'Constantes Globales en General
Public Const LocalidadDefecto = "Santa Fe"
Public Const Bonificacion = "20.00"

'Constantes Globales para el CONTROLARDOR FISCAL EPSON
Public Const PuertoPF As Byte = 1   'Tb. sirve para la HASAR
Public Const CantCopias = "1"       'Cantidad de copias
Public Const IVA_Vendedor = "I"     'Tipo iva del emisor del ticket
Public Const TipoPapel = "C"        'C=continuo o S=Slip

Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" _
    (ByVal lpApplicationName As String, ByVal lpKeyName As Any, _
    ByVal lpdefault As String, ByVal lpReturnedString As String, _
    ByVal nSize As Long, ByVal lpFileName As String) As Long

Sub Main()
    'Variables para almacenar error y generar archivo para la implementacion del release candidate
    Dim strError    As String
    Dim strFilename As String
    
    Dim a_strArgs() As String               'string que contiene los argumentos pasados como parametros
    Dim i           As Integer              'contador del for
    Dim objComp     As New clsComprobantes  'objeto que contiene los datos del comprobante a imprimir
    Dim objFPago    As New clsFormaPago     'objeto que contiene los datos de la forma de pago del comprobante a imprimir
    Dim objIMP_F    As New FiscalPrinter    'Objeto Impresora Fiscal
    
    Dim lote        As Long     'lote/recibo a imprimir
    Dim impresora   As String   'impresora a utilizar
    Dim comando     As String   'comando a realizar
    Dim fechaDesde  As String   'fecha desde de la auditoria
    Dim fechaHasta  As String   'fecha hasta de la auditoria
    Dim tipoAud     As String   'fipo de auditoria
    
    On Error GoTo ErrorHandler
    
    'Leo los parametros que le paso por consola y obtengo los datos pasados
    a_strArgs = Split(Command$, " ")
    For i = LBound(a_strArgs) To UBound(a_strArgs)
        Select Case LCase(a_strArgs(i))
            Case "-i", "/i" 'De esta forma "-i" o "/i" parametro impresora
                impresora = a_strArgs(i + 1)
            Case "-c", "/c" 'De esta forma "-c" o "/c" parametro comando se quiere ejecutar.
                comando = a_strArgs(i + 1)
            Case "-l", "/l" 'De esta forma "-l" o "/l" parametro numero de comprobante o lote a imprimir.
                lote = a_strArgs(i + 1)
            Case "-d", "/d" 'De esta forma "-d" o "/d" parametro fecha desde de la auditoria Z
                fechaDesde = a_strArgs(i + 1)
            Case "-h", "/h" 'De esta forma "-h" o "/h" parametro fecha hasta de la auditoria Z
                fechaHasta = a_strArgs(i + 1)
            Case "-t", "/t" 'De esta forma "-t" o "/t" parametro tipo de la auditoria Z
                tipoAud = a_strArgs(i + 1)
            Case Else
        End Select
    Next i
    
    
    'Audit: Realiza una auditoría.
    '   Tipo de auditoría: F=Por Fecha; Z=Por cierres Z.
    '   Modo de auditoría: T=Total general; D=Detallado.
    '   Fecha o cierre inicio (opcional) en formato AAMMDD. Valor por defecto 80/01/01, 0001.
    '   Fecha o cierre final  (opcional) en formato AAMMDD. Valor por defecto 79/12/31, 9999.
        
    'dependiendo del comando captado en los parametros realizo la accion correspondiente
    Select Case comando
        Case "A" 'AUDITORIA Z--------------------------
            Select Case impresora
                Case "TM-U220AF"
                    frmMain.EPSON_Printer_Fiscal.PortNumber = PuertoPF
                    frmMain.EPSON_Printer_Fiscal.Audit "F", tipoAud, fechaDesde, fechaHasta
                    frmMain.EPSON_Printer_Fiscal.Status ("N")
                Case "TM-2000AF"
                    frmMain.EPSON_Printer_Fiscal.PortNumber = PuertoPF
                    frmMain.EPSON_Printer_Fiscal.Audit "F", tipoAud, fechaDesde, fechaHasta
                    frmMain.EPSON_Printer_Fiscal.Status ("N")
            End Select
        Case "Z" 'CIERRE Z--------------------------
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
        Case "X" 'CIERRE X--------------------------
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
        Case "F" 'IMPRIMIR TICKET--------------------------
            objFPago.selFormaPago lote  'Busco las formas de pagos del comprobante
            objComp.selComprobante lote 'Busco el comprobante con los items cargados
            If objComp.pCanReg > 0 Then 'si encontro el comprobante con el lote/recibo pasado como parametro
                Select Case impresora
                    Case "TM-U220AF"
                        'Llamo a imprimirFacturaXEpson con pPuertoImpresora=1, pRsFactura=objComp.pRS, pRsFormaPago=objFPago.pRS, pLote=lote
                        objIMP_F.imprimirFacturaXEpson 1, objComp.pRS, objFPago.pRS, lote
                    Case "TM-2000AF"
                        objIMP_F.imprimirFacturaXEpson 1, objComp.pRS, objFPago.pRS, lote
                End Select
            Else 'si no encontro el comprobante
                MsgBox "El comprobante que desea imprimir es el " & a_strArgs(i + 1)
            End If
    End Select
    End
    Exit Function

ErrorHandler: 'en el caso que se produzca un error
    MsgBox "Argumentos invalidos o inexistentes: " & vbCrLf & vbCrLf & _
            "Opciones posibles: " & vbCrLf & _
            "-i, /i: Impresora seleccionada." & vbCrLf & vbCrLf & _
            "-c, /c: Comando a ejecutar. Z(Cierre Z), X(Cierre X), A(Auditoria Z) - F(Impresion de Factura)" & vbCrLf & _
            "-l, /l: Numero de comprobante a imprimir. Solo cuando el comando es F." & vbCrLf & _
            "-d, /d: Fecha desde de la auditoria Z. Solo cuando el comando es A." & vbCrLf & _
            "-h, /h: Fecha hasta de la auditoria Z. Solo cuando el comando es A." & vbCrLf & _
            "-t, /t: Tipo de auditoria Z (T=Total general; D=Detallado). Solo cuando el comando es A." & vbCrLf & _
            "Para mas informacion contacte al soporte tecnico."
            '"Para mas informacion contacte al soporte tecnico: " & vbCrLf & _
            '"Bytes Ingenieria " & vbCrLf & _
            '"Web: http://www.bytesingenieria.com.ar " & vbCrLf & _
            '"Tel: (0342)-155444384"
    End
End Function
