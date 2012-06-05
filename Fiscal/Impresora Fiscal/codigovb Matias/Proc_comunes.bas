Attribute VB_Name = "Procedimientos_comunes"
'OK Procedimientos utiles que se utilizan en varias partes
Public Const SW_SHOWNORMAL = 1

Public Declare Function ShellExecute Lib "shell32.dll" _
    Alias "ShellExecuteA" (ByVal hwnd As Long, _
    ByVal lpOperation As String, ByVal lpFile As String, _
    ByVal lpParameters As String, ByVal lpDirectory As String, _
    ByVal nShowCmd As Long) As Long

Public Enum fecha
    eContable = 1
    eSistema = 2
End Enum

Public Enum PtroEdoctor
    MontoLimite = 1
    ImprimirCoseguro
End Enum

Public Enum tipoArchivo
    txt = 1
    xls
    Todos
End Enum

Public Enum TpoFtoStr
    aPesos = 1
    aPesosConSgn
    aCantDosDec
End Enum

Public Enum TpoLog
    aLogeoProc = 0
    aError = 1
End Enum

Public Enum Dia_Actual
    eHabil = 1 'Lunes a Viernes
    eLaboralNoBancario = 2 'Sábados o Feriados Bancarios. Jueves Santo
    eFeriadoInternacional = 3 '1° de Mayo
    eFeriadoNacional = 4 '20 de Junio, 9 de Julio
    eDomingo 'No laborable
End Enum

Public Enum Columna
    eDebe = 0
    eHaber = 1
End Enum

Public Enum TipoResumen
    eFdPResumen = 1     'personas que pagan por caja
    eExcepcionR = 2     'todas las personas que fueron caja y no fueron en el envio anterior. Se le genera en un envio especial
    eRechazo = 3        'los rechazos de las formas de pago distintas de caja. Por ejemplo si no se pudo cobrar por cbu, se les cobra por caja.
    eRegAislados = 4    'Generaciones individuales. Cuando se le tiene que generar a alguien por fuera de la generacion de consistencia.
End Enum

Public Enum OperacionEnPantalla
    eAlta = 1
    eBaja
    eModificacion
    eError
    eConsulta
End Enum

Public Enum ProcesosDelSistema
    eGeneracionYExpDeFDP = 1
    eGeneracionCoseguros
    eImportacionConsistencia
End Enum

Public Enum TiposComprobante
    eComInterno = 1
    eFacturaPagar
    eCheque
    eOrdenPago
    eLiquidacion
    eFacturaCobro
    eGiro
    eBoletaDeposito
    eResumenCC
    eReciboCobro
    eFacturaFarmacia
    eNotaPedidoFarmacia
    eLiquidacionProvee
    eLiquidacionVende
    eCompPredescuento
    eRemitos
End Enum

Public Enum TipoDatoPrimario
    eNumerico = 1
    eFecha
    eCadena
    eLogico
End Enum

'Definición de constantes para la API de reproduccion de sonidos
Public Const SND_ALIAS = &H10000
Public Const SND_SYNC = &H1
Public Const SND_OWAIT = &H2000
Public Const SND_LOOP = &H8

Declare Function sndPlaySound Lib "winmm.dll" Alias "sndPlaySoundA" (byval_lpszSoundName As String, ByVal uFlags As Long) As Long

Public Function EsMesDeAguinaldo(mes As Integer) As Boolean
    'Tomamos 7 o 1 porque cobramos por adelantado y de ese modo podemos coincicider con el mes real del aguinaldo
    If mes = 7 Or mes = 1 Then
        EsMesDeAguinaldo = True
    Else
        EsMesDeAguinaldo = False
    End If
End Function

' Public Id_Medicamento As String * 9 Sacar

Public Sub LimpiarGrilla(Grilla As MSFlexGrid, CantColFijas As Integer, CantFilasFijas As Integer, CantCol As Integer, CantFilas As Integer)
    Grilla.Clear
    Grilla.FixedRows = CantFilasFijas
    Grilla.FixedCols = CantColFijas
    Grilla.Cols = CantCol
    Grilla.Rows = CantFilas
End Sub

Public Sub MarcarListaChequeo(pListaChequeo As ListBox, pRS As ADODB.Recordset, pUbic_Columna As Integer)
    Dim i As Integer
    
    For i = 0 To pListaChequeo.ListCount - 1
        pListaChequeo.Selected(i) = False
    Next i
    
    If pListaChequeo.Style = 1 Then 'Verificación de que es una lista de chequeo
        pRS.MoveFirst
        Do While Not pRS.EOF
           For i = 0 To pListaChequeo.ListCount - 1
               'R.Fields(0).Value
               'If pListaChequeo.ItemData(i) = prs!pla_idesec Then
               If pListaChequeo.ItemData(i) = pRS.Fields(pUbic_Columna).Value Then
                   pListaChequeo.Selected(i) = True
                   i = pListaChequeo.ListCount   'para cortar el ciclo
               End If
           Next i
           pRS.MoveNext
        Loop
    End If
End Sub

Public Function redondearParaArriba(ByVal monto As Currency) As Currency
    'este procedimiento recibe como parametro el monto que se quiere redondear. El trabajo se realiza simepre sobre el mismo monto.
    'en este procedimiento hay que tener en cuenta que se toma solo dos digitos decimales
    
    Dim Coma As Long
    Dim montoDecimal As Currency

    Coma = InStr(1, monto, ".")
    If Coma > 0 Then
        montoDecimal = CCur("0" & Mid$(monto, Coma, Coma + 2))
        If montoDecimal > 0 Then
            monto = redondearParaAbajo(monto) + 1
        End If
    End If
    redondearParaArriba = monto
End Function

Public Function redondearParaAbajo(ByVal monto As Currency) As Currency  'tal ves tenga que recibir algun tipo de string y devolver el currency
    'este procedimiento recibe como parametro el monto que se quiere redondear. El trabajo se realiza simepre sobre el mismo monto.
    Dim Coma As Long

    Coma = InStr(1, monto, ".")
    If Coma > 0 Then
        monto = CCur(Mid$(monto, 1, Coma - 1))
    End If
    redondearParaAbajo = monto
End Function

Public Sub CargarGrilla(frm As Form, fl As MSFlexGrid, R As ADODB.Recordset, CantColFijas As Integer)
    'Si hay columnas fijas la matriz se empieza a cargar a partir de n columna..
    Dim Ancho
    Dim f As Long
    
    Err.Clear
    On Error GoTo salto
    
    fl.Rows = 1
    fl.Cols = R.Fields.Count + CantColFijas
    
    'Encabezado
    For i = 0 To R.Fields.Count - 1
        fl.TextMatrix(0, i + CantColFijas) = R.Fields(i).Name
    Next i
    If R.RecordCount > 0 Then
        For i = 0 To R.Fields.Count - 1
            'Ancho = R.Fields(i).DefinedSize
            Ancho = IIf(R.Fields(i).ActualSize = 0, 1, R.Fields(i).ActualSize)
            
            If Ancho > 30 Then
                Ancho = 30
            End If
            fl.ColWidth(i + CantColFijas) = frm.TextWidth("H") * Ancho
        Next i
            
        f = 0
        Do While Not R.EOF
            fl.AddItem ""
            f = f + 1
            For i = 0 To R.Fields.Count - 1
                If Not IsNull(R.Fields(i).Value) Then
                    fl.TextMatrix(f, i + CantColFijas) = R.Fields(i).Value
                End If
            Next i
            R.MoveNext
        Loop
    End If
    
    Exit Sub

salto:
    MsgBox Err.Description
    Err.Clear
End Sub

Public Sub LimpiarTXT(formulario As Form)
    ' Limpieza de todos los controles Text y MaskEdit de un formulario
    Dim ctl As Control

    For Each ctl In formulario ' Recorre los controles del formulario
        If TypeOf ctl Is TextBox Then ' Si el control es un cuadro de texto.
            ctl.TEXT = ""  ' limpia el cuadro de texto.
        End If
    
        If TypeOf ctl Is ComboBox Then ' Si el control es un ComboBox
            If ctl.ListCount > 0 Then
                ctl.ListIndex = 0  ' Posiciona el ComboBox en el 1er. elem. de la lista.
            End If
        End If
        
        If TypeOf ctl Is MaskEdBox Then  ' Si el control es un MaskEdit
            ctl.PromptInclude = False
            ctl.TEXT = ""      ' limpia el cuadro de texto.
            ctl.PromptInclude = True
        End If
    Next
End Sub

Public Sub MuestraError(Optional NumErr As Variant, Optional descripcion As Variant)
    Dim rs_err As New ADODB.Recordset
    Dim sTitulo As String
    
    If Not IsMissing(NumErr) Then
        vcadsql = "SELECT CATEGORIA_DE_ERRORES.cde_nom, MENSAJES_DE_ERROR.mdr_txt, MENSAJES_DE_ERROR.mdr_tit FROM MENSAJES_DE_ERROR INNER JOIN CATEGORIA_DE_ERRORES ON MENSAJES_DE_ERROR.cde_idesec = CATEGORIA_DE_ERRORES.cde_idesec WHERE categoria_de_errores.cde_idesec = 1 AND mensajes_de_error.mdr_idesec = " & NumErr
        Set rs_err = objCnxAeros.TraerRecordSet(vcadsql, adCmdText)
        If objCnxAeros.pCanReg > 0 Then
            If Not IsMissing(descripcion) Then
                sTitulo = rs_err!mdr_tit & descripcion
            Else
                sTitulo = rs_err!mdr_tit
            End If
            MsgBox rs_err!mdr_txt, vbOKOnly + vbExclamation, sTitulo
        Else
            MsgBox "Problemas al consultar la Tabla de código de errores, Consulte a su Soporte Informático"
        End If
    ElseIf Not IsMissing(descripcion) Then
        MsgBox descripcion, , "Sistema"
    End If
End Sub

Public Function cboListIndex(formulario As Form, Combo As ComboBox, id As Long) As Integer
    ' Devuelve el ListIndex correspondiente a un Id
    Dim i As Integer
    Dim asignado As Boolean
    
    Err.Clear
    On Error GoTo Error
    
    asignado = False
    i = 0
    Combo.ListIndex = 0
    Do While Not asignado And (Combo.ListIndex < Combo.ListCount)
        If Combo.ItemData(Combo.ListIndex) = id Then
            asignado = True
            cboListIndex = Combo.ListIndex
        Else
            'i = i + 1
            'MsgBox Combo.Text
            Combo.ListIndex = Combo.ListIndex + 1
        End If
    Loop

    If Not asignado Then
        cboListIndex = -1
    End If
    Exit Function

Error:
    cboListIndex = -1
    'MsgBox Err.Description & " - " & Combo.Name, vbOKOnly + vbExclamation, "JS2000 Validación"
    Err.Clear
End Function

Public Function ListBoxListIndex(formulario As Form, List As ListBox, id As Long) As Integer
    ' Devuelve el ListIndex correspondiente a un Id
    Dim i As Integer
    Dim asignado As Boolean
    
    Err.Clear
    On Error GoTo Error
    
    asignado = False
    i = 0
    List.ListIndex = 0
    Do While Not asignado And (List.ListIndex < List.ListCount)
        If List.ItemData(List.ListIndex) = id Then
            asignado = True
            ListBoxListIndex = List.ListIndex
        Else
            'i = i + 1
            'MsgBox Combo.Text
            List.ListIndex = List.ListIndex + 1
        End If
    Loop

    If Not asignado Then
        ListBoxListIndex = -1
    End If
    Exit Function

Error:
    ListBoxListIndex = -1
    'MsgBox Err.Description & " - " & Combo.Name, vbOKOnly + vbExclamation, "JS2000 Validación"
    Err.Clear
End Function

Public Function AbrirArchivo(ByRef path As String, Optional ByVal tipoArch As tipoArchivo = tipoArchivo.Todos, Optional ByVal titulo As String = "", Optional objDialog As Object) As Boolean
'Esta funcion permite abrir un dialogo de seleccion de archivos.
'Recibe como parametro un string path que es donde se va a devolver el path del archivo que se eligio.
'Tambien recibe el tipo de archivo que se quiere presentar con la siguiente configuracion.
    '1. para archivos txt
    '2. para archivos xls
    '3. .....sefuir agregando segun necesidad
'Otra de las cosas que se puede recibir es el titulo del formulario. En caso de no recibir nada pone uno por defecto para cada tipo de archivo.
    On Error GoTo errHandler
    Dim exito As Boolean
    'Dim objDialog As CommonDialog
    'Dim objDialog As Object
    'Useraccounts.CommonDialog
    If objDialog Is Nothing Then
        Set objDialog = CreateObject("MSComDlg.CommonDialog")
    End If

    With objDialog
        Select Case tipoArch
            Case tipoArchivo.txt 'tipos de archivo txt
                .DialogTitle = "Seleccione un archivo de texto"
                .InitDir = App.path
                .Filter = "Notepad (*.txt)|*.txt|All Files (*.*)|*.*"
            Case tipoArchivo.xls 'tipos de archivo xls
                .DialogTitle = "Seleccione un archivo Excel"
                .InitDir = App.path
                .Filter = "Excel Spreadsheets (*.xls)|*.xls|All Files (*.*)|*.*"
            Case Else
                .DialogTitle = "Seleccione un archivo"
                .InitDir = App.path
                .Filter = "All Files (*.*)|*.*"
        End Select
        If titulo <> "" Then .DialogTitle = titulo
        .ShowOpen
        path = .FileName
    End With
    Set objDialog = Nothing
    If path <> "" Then
        exito = True
    End If
    AbrirArchivo = exito
    Exit Function
errHandler:
    MsgBox "No se pudo abrir el archivo."
    AbrirArchivo = False
    Exit Function
End Function

Public Function lstCheckListIndex(formulario As Form, Lista As ListBox, id As Long) As Integer
' Chequea el elemento de la lista correspondiente al ID que se pasa como parámetro.
' Si el ID no existe => se devuelve -1
Dim i As Integer
Dim asignado As Boolean
    
    Err.Clear
    On Error GoTo errores
    
    asignado = False
    i = 0
    Lista.ListIndex = -1
    Do While Not asignado And Lista.ListIndex + 1 < Lista.ListCount
        Lista.ListIndex = Lista.ListIndex + 1
        If Lista.ItemData(Lista.ListIndex) = id Then
            asignado = True
            lstCheckListIndex = Lista.ListIndex
        End If
    Loop
    If Not asignado Then
        lstCheckListIndex = -1
    End If
    
    Exit Function
    
errores:
    MuestraError Err
    Err.Clear
    
End Function

Public Sub CargarCombo(Combo As ComboBox, rs As ADODB.Recordset, camId As Integer, camDes As Integer, Optional camDes2 As Variant, Optional ByVal textoPrimerItem As Variant, Optional ByVal SeparadorCam1y2 As Variant, Optional ByVal CierreCam2 As Variant, Optional ByVal pMayuscula As Boolean)
' Carga el ComboBox "Combo" con el recorset "rs"
' camId es el nro. de campo del rs que tiene el Id que se debe cargar en el ItemData
' camDes es el nro. de campo del rs que tiene la descripción que debe mostrar el combobox
Dim vCamDescrip As String

    Err.Clear
    On Error GoTo errores
    Combo.Clear
    If Not (IsMissing(textoPrimerItem)) Then
        Combo.AddItem textoPrimerItem
    End If
    If Not rs.EOF Then
        rs.MoveFirst
        Do While Not rs.EOF
            vCamDescrip = IIf(pMayuscula = True, UCase(Trim(rs(camDes))), ULCase(Trim(rs(camDes))))
            If IsMissing(camDes2) Then
                Combo.AddItem vCamDescrip
            Else
                If IsMissing(SeparadorCam1y2) Then
                    'Combo.AddItem ULCase(Trim(rs(camDes)) & " " & Trim(rs(camDes2)))
                    Combo.AddItem vCamDescrip & " " & Trim(rs(camDes2))
                Else
                    If Not IsMissing(CierreCam2) Then
                        'Combo.AddItem ULCase(Trim(rs(camDes)) & SeparadorCam1y2 & Trim(rs(camDes2)) & CierreCam2)
                        Combo.AddItem vCamDescrip & SeparadorCam1y2 & Trim(rs(camDes2)) & CierreCam2
                    Else
                        'Combo.AddItem ULCase(Trim(rs(camDes)) & SeparadorCam1y2 & Trim(rs(camDes2)))
                        Combo.AddItem vCamDescrip & SeparadorCam1y2 & Trim(rs(camDes2))
                    End If
                End If
            End If
            Combo.ItemData(Combo.NewIndex) = rs(camId)
            rs.MoveNext
        Loop
        Combo.ListIndex = 0
    End If
    rs.Close ' Cierro el recordset

    Exit Sub

errores:
    MsgBox Err.Description & " en combo: Cargar Combo"
    Err.Clear

End Sub

Public Sub CargarCboNros(Cbo As ComboBox, vMinVal As Integer, vMaxVal As Integer, pReverso As Boolean)
'Carga combo con valores por eje. meses, donde el id = al dato a mostrar.
'Ademas de que se puede cargar al reves...
Dim i As Integer
Dim vNueEle As Integer
Dim vCont As Integer
    
    Cbo.Clear
    If vMinVal > vMaxVal Then
        Exit Sub
    ElseIf (vMaxVal - vMinVal) = 0 Then
        Exit Sub
    ElseIf (vMaxVal - vMinVal) > 5000 Then
        Exit Sub
    End If
    
    vCont = vMaxVal
    For i = vMinVal To vMaxVal
        vNueEle = IIf(pReverso = False, i, vCont)
        Cbo.AddItem vNueEle
        Cbo.ItemData(Cbo.NewIndex) = vNueEle
        vCont = vCont - 1
    Next
    
End Sub

Public Sub CargarLista(Lista As ListBox, rs As ADODB.Recordset, camId As Integer, camDes As Integer, Optional camDes2 As Variant, Optional ByVal textoPrimerItem As Variant)
' Carga el ListBox "Combo" con el recorset "rs"
' camId es el nro. de campo del rs que tiene el Id que se debe cargar en el ItemData
' camDes es el nro. de campo del rs que tiene la descripción que debe mostrar el combobox
    
    Err.Clear
    On Error GoTo errores
    
    If IsMissing(textoPrimerItem) Then
        Lista.Clear
    Else
        Lista.Clear
        Lista.AddItem textoPrimerItem
    End If
    If Not rs.EOF Then
        rs.MoveFirst
        Do While Not rs.EOF
            If IsMissing(camDes2) Then
                Lista.AddItem Trim(rs(camDes))
            Else
                Lista.AddItem Trim(rs(camDes)) & "  " & Trim(rs(camDes2))
            End If
            
            Lista.ItemData(Lista.NewIndex) = rs(camId)
            rs.MoveNext
        Loop
        Lista.ListIndex = 0
    End If
    rs.Close ' Cierro el recordset
    
    Exit Sub
    
errores:
    MsgBox Err.Description & "en Proceso: Cargar Lista"
    Err.Clear
End Sub

Public Sub CargarListview(ByRef Lista As ListView, ByRef rs As ADODB.Recordset)
' Carga el ListView con el recorset "rs", sin ponerle los nombres de columnas.
'Es decir la listview que llegue aca tendria que llegar con los nombres de columnas ya listos.
Dim i As Integer
Dim Item As ListItem

    On Error GoTo errores
    Lista.ListItems.Clear
    Do While Not rs.EOF
        Set Item = Lista.ListItems.Add(, , Format(rs.Fields(0)))
        For i = 1 To rs.Fields.Count - 1
            If Not IsNull(rs.Fields(i)) Then
                Item.SubItems(i) = rs.Fields(i)
            End If
        Next
        rs.MoveNext
    Loop
    Exit Sub

errores:
    MsgBox Err.Description & "en Proceso: Cargar Lista"

End Sub

Public Sub CargarListviewConChk(ByRef Lista As ListView, ByRef rs As ADODB.Recordset)
' Carga el ListView con el recorset "rs", sin ponerle los nombres de columnas.
'Es decir la listview que llegue aca tendria que llegar con los nombres de columnas ya listos.
'Leve modificacion al CargarListview para que tenga en cuenta que la primer fila es un chk
Dim i As Integer
Dim Item As ListItem

    On Error GoTo errores
    Lista.ListItems.Clear
    Do While Not rs.EOF
        Set Item = Lista.ListItems.Add(, , "")
        For i = 0 To rs.Fields.Count - 1
            If Not IsNull(rs.Fields(i)) Then
                Item.SubItems(i + 1) = rs.Fields(i)
            End If
        Next
        rs.MoveNext
    Loop
    Exit Sub

errores:
    MsgBox Err.Description & "en Proceso : Cargar Lista"

End Sub

Public Function ValidoMask(svalor As String) As Boolean
'Es para la validación de mascaras con $........
Dim sAux2 As String
Dim sAux3

    sAux3 = Mid((svalor), 2)
    sAux2 = Left((svalor), 1)
    If (IsNumeric(sAux3)) And (sAux2 = "$") Then
        ValidoMask = True
    Else
        ValidoMask = False
    End If

End Function

Public Function ValidoMask_Fecha(svalor As String, Optional PermitirVacio As Variant) As Boolean
'Es para la validación de mascaras con _ _/_ _/_ _ _ _'
'Aclaración de uso, si solamente se pasa el parámetro de svalor se permite el ingreso de _ _/ _ _/ _ _ _ _
'Si recibe algún parametro en PermitirVacio se controla la fecha y no se deja pasar el blanco.
Dim bDias As Byte
Dim bAuxDia As Byte
Dim bMess As Integer
Dim nAnios As Integer
Dim permitir As Boolean

    If IsMissing(PermitirVacio) Then
        permitir = True
    Else
        permitir = False
    End If
    
    bDias = Val(Left((svalor), 2))
    'MsgBox IIf(Left((svalor), 2) = "  ", 0, Left((svalor), 2))
    'IIf(Mid((svalor), 4, 2) = "  ", 0, Mid((svalor), 4, 2))
    'bMess = IIf(Mid((svalor), 4, 2) = "  ", 0, Mid((svalor), 4, 2))
    bMess = Val(Mid((svalor), 4, 2))
    'MsgBox Val(Mid((svalor), 7, 4))
    nAnios = Val(Mid((svalor), 7, 4))
    'If IsNumeric(bDias) And IsNumeric(bMess) And IsNumeric(sAnios) Then
        'controlo por < porque la mascara tomo positivos...
    If (bDias > 0 And bDias < 32) And (bMess > 0 And bMess < 13) And (nAnios < 2100 And nAnios > 1900) Then
        bAuxDia = UltimoDiaMes(bMess, nAnios)
        If bDias <= bAuxDia Then
            ValidoMask_Fecha = True
        Else
            ValidoMask_Fecha = False
        End If
    Else
        If bDias = 0 And bMess = 0 And nAnios = 0 And permitir Then
            ValidoMask_Fecha = True
        Else
            ValidoMask_Fecha = False
        End If
    End If

End Function

Public Function Tipo_de_Dia(pDia_a_Evaluar As Date) As Dia_Actual
'Devuelve el tipo de dia que es de acuerdo al enumerando declarado.
Dim rsFec As New ADODB.Recordset
Dim vDia As Integer
    
'    eHabil = 1 'Lunes a Viernes
'    eLaboralNoBancario = 2 'Sábados
'    eFeriadoInternacional = 3 '1° de Mayo, 25 de Diciembre
'    eFeriadoNacional = 4 '20 de Junio, 9 de Julio
'    eDomingo 'No laborable
    
    If Weekday(pDia_a_Evaluar) = vbSunday Then
        Tipo_de_Dia = Dia_Actual.eDomingo
    Else
        vcadsql = "SELECT * From sisCALENDARIO WHERE cal_fec = '" & pDia_a_Evaluar & "'"
        Set rsFec = objCnxAeros.TraerRecordSet(vcadsql, adCmdText)
        If objCnxAeros.pCanReg > 0 Then
            'En la tabla anterior devuelve solo los días feriados nacionales o internacionales
            If rsFec!cal_ferint = True Then
                Tipo_de_Dia = Dia_Actual.eFeriadoInternacional
            Else
                Tipo_de_Dia = Dia_Actual.eFeriadoNacional
            End If
        Else
            If Weekday(pDia_a_Evaluar) = vbSaturday Then
                Tipo_de_Dia = Dia_Actual.eLaboralNoBancario
            Else
                Tipo_de_Dia = Dia_Actual.eHabil
            End If
        End If
    End If
    
End Function

Public Function UltimoDiaMes(pmes As Integer, panio As Integer) As Integer
'Modificado el 24/02/2006 por Cristian Faccioli
'Se corrigió un error en la validación de años bisiestos:

'Existen tres reglas para determinar un año bisiesto:
'    - Los años exactamente divisibles entre 4 son años bisiestos.
'    - Los años exactamente divisibles entre 100 no son años bisiestos.
'    - Los años exactamente divisibles entre 400 son años bisiestos.

    If pmes = 1 Or pmes = 3 Or pmes = 5 Or pmes = 7 Or pmes = 8 Or pmes = 10 Or pmes = 12 Then
        UltimoDiaMes = 31
    Else
        If pmes = 4 Or pmes = 6 Or pmes = 9 Or pmes = 11 Then
            UltimoDiaMes = 30
        Else
            'Verifico si febrero tiene 28 o 29
            'If (pAnio Mod 4 = 0) And (pAnio Mod 400 <> 0) Then
            If ((panio Mod 4 = 0) And (panio Mod 100 <> 0)) Or (panio Mod 400 = 0) Then
                UltimoDiaMes = 29
            Else
                UltimoDiaMes = 28
            End If
        End If
    End If
    
End Function

Public Function NombreDia(dFecha As Date) As String
    
    Select Case Weekday(dFecha)
        Case 1
            NombreDia = "Domingo"
        Case 2
            NombreDia = "Lunes"
        Case 3
            NombreDia = "Martes"
        Case 4
            NombreDia = "Miercoles"
        Case 5
            NombreDia = "Jueves"
        Case 6
            NombreDia = "Viernes"
        Case 7
            NombreDia = "Sabado"
    End Select

End Function

Public Function NombreMes(NumMes As Integer) As String
    
    Select Case NumMes
        Case 1
            NombreMes = "Enero"
        Case 2
            NombreMes = "Febrero"
        Case 3
            NombreMes = "Marzo"
        Case 4
            NombreMes = "Abril"
        Case 5
            NombreMes = "Mayo"
        Case 6
            NombreMes = "Junio"
        Case 7
            NombreMes = "Julio"
        Case 8
            NombreMes = "Agosto"
        Case 9
            NombreMes = "Septiembre"
        Case 10
            NombreMes = "Octubre"
        Case 11
            NombreMes = "Noviembre"
        Case 12
            NombreMes = "Diciembre"
    End Select
    
End Function

Public Function Cifras3(Terna As Integer) As String
Dim Dig1 As Integer
Dim Dig2 As Integer
Dim Dig3 As Integer
Dim sAux As String
    
Dim nLongitud As Long
Dim CadenaAux As String
Dim CadenaTrabajo As String

    
    CadenaAux = Trim(Str(Terna))
    nLongitud = Len(CadenaAux)
    Dig1 = 0
    Dig2 = 0
    Dig3 = 0
    Select Case nLongitud
        Case 1 'un dígito 1
            Dig3 = Left(CadenaAux, 1) '99X
        Case 2 'Dos dígitos 11
            Dig2 = Left(CadenaAux, 1) '9X9
            Dig3 = Mid(CadenaAux, 2, 1) '9X9
        Case 3 'Tres dígitos 111
            Dig1 = Left(CadenaAux, 1) 'X99
            Dig2 = Mid(CadenaAux, 2, 1) '9X9
            Dig3 = Mid(CadenaAux, 3, 1) '99X
    End Select

    Select Case Dig1
        Case 1
            If Dig2 = 0 And Dig3 = 0 Then '100
                sAux = "cien"
            Else
                sAux = "ciento " '1XX
            End If
        Case 2
            sAux = "doscientos " '2XX
        Case 3
            sAux = "trescientos "
        Case 4
            sAux = "cuatrocientos "
        Case 5
            sAux = "quinientos "
        Case 6
            sAux = "seiscientos "
        Case 7
            sAux = "setecientos "
        Case 8
            sAux = "ochocientos "
        Case 9
            sAux = "novecientos " '9XX
    End Select
    If Dig3 = 0 Then
        Select Case Dig2
            Case 0
                If Dig2 = 0 And Dig1 = 0 Then
                    sAux = "cero"
                End If
            Case 1
                sAux = sAux & "diez" 'X10
            Case 2
                sAux = sAux & "veinte" 'X20
            Case 3
                sAux = sAux & "treinta"
            Case 4
                sAux = sAux & "cuarenta"
            Case 5
                sAux = sAux & "cincuenta"
            Case 6
                sAux = sAux & "sesenta"
            Case 7
                sAux = sAux & "setenta"
            Case 8
                sAux = sAux & "ochenta"
            Case 9
                sAux = sAux & "noventa" 'X90
        End Select
    Else
        If Dig2 = 1 Then
            Select Case Dig3
                Case 1
                    sAux = sAux & "once" 'X11
                Case 2
                    sAux = sAux & "doce" 'X12
                Case 3
                    sAux = sAux & "trece"
                Case 4
                    sAux = sAux & "catorce"
                Case 5
                    sAux = sAux & "quince"
                Case 6
                    sAux = sAux & "dieciseis"
                Case 7
                    sAux = sAux & "diecisiete"
                Case 8
                    sAux = sAux & "dieciocho"
                Case 9
                    sAux = sAux & "diecinueve" 'X19
            End Select
        Else
            Select Case Dig2
                Case 2
                    sAux = sAux & "veinti" 'X2X
                Case 3
                    sAux = sAux & "treinta y " 'X3X
                Case 4
                    sAux = sAux & "cuarenta y "
                Case 5
                    sAux = sAux & "cincuenta y "
                Case 6
                    sAux = sAux & "sesenta y "
                Case 7
                    sAux = sAux & "setenta y "
                Case 8
                    sAux = sAux & "ochenta y "
                Case 9
                    sAux = sAux & "noventa y " 'X9X
            End Select
            Select Case Dig3
                Case 1
                    sAux = sAux & "un" 'XX1
                Case 2
                    sAux = sAux & "dos"
                Case 3
                    sAux = sAux & "tres"
                Case 4
                    sAux = sAux & "cuatro"
                Case 5
                    sAux = sAux & "cinco"
                Case 6
                    sAux = sAux & "seis"
                Case 7
                    sAux = sAux & "siete"
                Case 8
                    sAux = sAux & "ocho"
                Case 9
                    sAux = sAux & "nueve" 'XX9
            End Select
        End If
    End If
    Cifras3 = sAux

End Function

Public Function CadenaPesos(Pesos As Double, nFormato As Integer) As String
Dim T1 As Integer
Dim T2 As Integer
Dim T3 As Integer
Dim T4 As Integer
Dim D1 As Integer
Dim nLongitud As Long
Dim CadenaAux As String
Dim CadenaTrabajo As String
Dim sCadena As String
Dim Decim As Integer
    
    If (Pesos > 1000000000000#) Or (nFormato > 3) Then
        CadenaPesos = ""
        Exit Function
    End If
    'Por problemas de redondeo uso la funcion format
    Pesos = Format(Pesos, "#############.00")
    CadenaAux = Trim(Str(Pesos))
    Decim = InStr(CadenaAux, ".")
    nLongitud = Len(CadenaAux)
    
    If ((nLongitud - Decim) = 1) And (Not Decim = 0) Then
        Decim = 1
    ElseIf (nLongitud - Decim) = 2 And (Not Decim = 0) Then
        Decim = 2
    End If
    
    Select Case Decim
        Case 0 'Sin decimal
            D1 = 0
            CadenaTrabajo = CadenaAux
        Case 1 'Un decimal
            D1 = Val(Right(CadenaAux, 1)) * 10 'XXX.XXX.XXX.XXX,9
            CadenaTrabajo = Mid(CadenaAux, 1, (nLongitud - 2))
        Case 2 'Dos decimal
            D1 = Val(Right(CadenaAux, 2)) 'XXX.XXX.XXX.XXX,99
            CadenaTrabajo = Mid(CadenaAux, 1, (nLongitud - 3))
    End Select
    
    T4 = 0 '999.XXX.XXX.XXX,XX
    T3 = 0 'XXX.999.XXX.XXX,XX
    T2 = 0 'XXX.XXX.999.XXX,XX
    T1 = 0 'XXX.XXX.XXX.999,XX
    
    If Not CadenaTrabajo = "" Then
        nLongitud = Len(CadenaTrabajo)
        If nLongitud <= 3 Then
            T1 = CadenaTrabajo 'T1 = Val(Mid(CadenaTrabajo, 10, 3)) 'XXX.XXX.XXX.999,XX
        ElseIf nLongitud <= 6 Then
            Select Case nLongitud
                Case 6
                    T2 = Val(Left(CadenaTrabajo, 3)) 'XXX.XXX.999.XXX,XX
                    T1 = Val(Mid(CadenaTrabajo, 4, 3)) 'XXX.XXX.XXX.999,XX
                Case 5
                    T2 = Val(Left(CadenaTrabajo, 2)) 'XXX.XXX.999.XXX,XX
                    T1 = Val(Mid(CadenaTrabajo, 3, 3)) 'XXX.XXX.XXX.999,XX
                Case 4
                    T2 = Val(Left(CadenaTrabajo, 1)) 'XXX.XXX.999.XXX,XX
                    T1 = Val(Mid(CadenaTrabajo, 2, 3)) 'XXX.XXX.XXX.999,XX
            End Select
        ElseIf nLongitud <= 9 Then
            Select Case nLongitud
                Case 9
                    T3 = Val(Left(CadenaTrabajo, 3))  'XXX.999.XXX.XXX,XX
                    T2 = Val(Mid(CadenaTrabajo, 4, 3)) 'XXX.XXX.999.XXX,XX
                    T1 = Val(Mid(CadenaTrabajo, 7, 3)) 'XXX.XXX.XXX.999,XX
                Case 8
                    T3 = Val(Left(CadenaTrabajo, 2))  'XXX.999.XXX.XXX,XX
                    T2 = Val(Mid(CadenaTrabajo, 3, 3)) 'XXX.XXX.999.XXX,XX
                    T1 = Val(Mid(CadenaTrabajo, 6, 3)) 'XXX.XXX.XXX.999,XX
                Case 7
                    T3 = Val(Left(CadenaTrabajo, 1))  'XXX.999.XXX.XXX,XX
                    T2 = Val(Mid(CadenaTrabajo, 2, 3)) 'XXX.XXX.999.XXX,XX
                    T1 = Val(Mid(CadenaTrabajo, 5, 3)) 'XXX.XXX.XXX.999,XX
            End Select
        ElseIf nLongitud <= 12 Then
            Select Case nLongitud
                Case 12
                    T4 = Val(Left(CadenaTrabajo, 3)) '999.XXX.XXX.XXX,XX
                    T3 = Val(Mid(CadenaTrabajo, 4, 3))  'XXX.999.XXX.XXX,XX
                    T2 = Val(Mid(CadenaTrabajo, 7, 3)) 'XXX.XXX.999.XXX,XX
                    T1 = Val(Mid(CadenaTrabajo, 10, 3)) 'XXX.XXX.XXX.999,XX
                Case 11
                    T4 = Val(Left(CadenaTrabajo, 2)) '999.XXX.XXX.XXX,XX
                    T3 = Val(Mid(CadenaTrabajo, 3, 3))  'XXX.999.XXX.XXX,XX
                    T2 = Val(Mid(CadenaTrabajo, 6, 3)) 'XXX.XXX.999.XXX,XX
                    T1 = Val(Mid(CadenaTrabajo, 9, 3)) 'XXX.XXX.XXX.999,XX
                Case 10
                    T4 = Val(Left(CadenaTrabajo, 1)) '999.XXX.XXX.XXX,XX
                    T3 = Val(Mid(CadenaTrabajo, 2, 3))  'XXX.999.XXX.XXX,XX
                    T2 = Val(Mid(CadenaTrabajo, 5, 3)) 'XXX.XXX.999.XXX,XX
                    T1 = Val(Mid(CadenaTrabajo, 8, 3)) 'XXX.XXX.XXX.999,XX
            End Select
        End If
    End If
    
    If T4 > 0 Then
        If T3 > 0 Then
            If T2 > 0 Then
                If T1 > 0 Then
                    If D1 > 0 Then '999.999.999.999,99
                        sCadena = Cifras3(T4) & " mil " & Cifras3(T3) & " millones " & Cifras3(T2) & " mil " & Cifras3(T1) & " con " & Cifras3(D1) & " centavos"
                    Else '999.999.999.999,00
                        sCadena = Cifras3(T4) & " mil " & Cifras3(T3) & " millones " & Cifras3(T2) & " mil " & Cifras3(T1)
                    End If
                Else
                    If D1 > 0 Then '999.999.999.000,99
                        sCadena = Cifras3(T4) & " mil " & Cifras3(T3) & " millones " & Cifras3(T2) & " mil " & " con " & Cifras3(D1) & " centavos"
                    Else '999.999.999.000,00
                        sCadena = Cifras3(T4) & " mil " & Cifras3(T3) & " millones " & Cifras3(T2) & " mil "
                    End If
                End If
            Else    '.......................................... T2 = 0
                If T1 > 0 Then
                    If D1 > 0 Then '999.999.000.999,99
                        sCadena = Cifras3(T4) & " mil " & Cifras3(T3) & " millones " & Cifras3(T1) & " con " & Cifras3(D1) & " centavos"
                    Else '999.999.000.999,00
                        sCadena = Cifras3(T4) & " mil " & Cifras3(T3) & " millones " & Cifras3(T1)
                    End If
                Else
                    If D1 > 0 Then '999.999.000.000,99
                        sCadena = Cifras3(T4) & " mil " & Cifras3(T3) & " millones " & " con " & Cifras3(D1) & " centavos"
                    Else '999.999.000.000,00
                        sCadena = Cifras3(T4) & " mil " & Cifras3(T3) & " millones "
                    End If
                End If
            End If
        Else '.......................................... T3 = 0
            If T2 > 0 Then
                If T1 > 0 Then
                    If D1 > 0 Then '999.000.999.999,99
                        sCadena = Cifras3(T4) & " mil millones " & Cifras3(T2) & " mil " & Cifras3(T1) & " con " & Cifras3(D1) & " centavos"
                    Else '999.000.999.999,00
                        sCadena = Cifras3(T4) & " mil millones " & Cifras3(T2) & " mil " & Cifras3(T1)
                    End If
                Else
                    If D1 > 0 Then '999.000.999.000,99
                        sCadena = Cifras3(T4) & " mil millones " & Cifras3(T2) & " mil " & " con " & Cifras3(D1) & " centavos"
                    Else '999.000.999.000,00
                        sCadena = Cifras3(T4) & " mil millones " & Cifras3(T2) & " mil"
                    End If
                End If
            Else    '.......................................... T2 = 0
                If T1 > 0 Then
                    If D1 > 0 Then '999.000.000.999,99
                        sCadena = Cifras3(T4) & " mil millones " & Cifras3(T1) & " con " & Cifras3(D1) & " centavos"
                    Else '999.000.000.999,00
                        sCadena = Cifras3(T4) & " mil millones " & Cifras3(T1)
                    End If
                Else
                    If D1 > 0 Then '999.000.000.000,99
                        sCadena = Cifras3(T4) & " mil millones con " & Cifras3(D1) & " centavos"
                    Else '999.000.000.000,00
                        sCadena = Cifras3(T4) & " mil millones"
                    End If
                End If
            End If
        End If
    Else     '.......................................... T4 = 0
        If T3 > 0 Then
            If T2 > 0 Then
                If T1 > 0 Then
                    If D1 > 0 Then '000.999.999.999,99
                        sCadena = IIf(T3 = 1, "un millon ", Cifras3(T3) & " millones ") & Cifras3(T2) & " mil " & Cifras3(T1) & " con " & Cifras3(D1) & " centavos"
                    Else '000.999.999.999,00
                        sCadena = IIf(T3 = 1, "un millon ", Cifras3(T3) & " millones ") & Cifras3(T2) & " mil " & Cifras3(T1)
                    End If
                Else
                    If D1 > 0 Then '000.999.999.000,99
                        sCadena = IIf(T3 = 1, "un millon ", Cifras3(T3) & " millones ") & Cifras3(T2) & " mil " & " con " & Cifras3(D1) & " centavos"
                    Else '000.999.999.000,00
                        sCadena = IIf(T3 = 1, "un millon ", Cifras3(T3) & " millones ") & Cifras3(T2) & " mil "
                    End If
                End If
            Else    '.......................................... T2 = 0
                If T1 > 0 Then
                    If D1 > 0 Then '000.999.000.999,99
                        sCadena = IIf(T3 = 1, "un millon ", Cifras3(T3) & " millones ") & Cifras3(T1) & " con " & Cifras3(D1) & " centavos"
                    Else '000.999.000.999,00
                        sCadena = IIf(T3 = 1, "un millon ", Cifras3(T3) & " millones ") & Cifras3(T1)
                    End If
                Else
                    If D1 > 0 Then '000.999.000.000,99
                        sCadena = IIf(T3 = 1, "un millon ", Cifras3(T3) & " millones ") & " con " & Cifras3(D1) & " centavos"
                    Else '000.999.000.000,00
                        sCadena = IIf(T3 = 1, "un millon ", Cifras3(T3) & " millones")
                    End If
                End If
            End If
        Else '.......................................... T3 = 0
            If T2 > 0 Then
                If T1 > 0 Then
                    If D1 > 0 Then '000.000.999.999,99
                        sCadena = Cifras3(T2) & " mil " & Cifras3(T1) & " con " & Cifras3(D1) & " centavos"
                    Else '000.000.999.999,00
                        sCadena = Cifras3(T2) & " mil " & Cifras3(T1)
                    End If
                Else
                    If D1 > 0 Then '000.000.999.000,99
                        sCadena = Cifras3(T2) & " mil " & " con " & Cifras3(D1) & " centavos"
                    Else '000.000.999.000,00
                        sCadena = Cifras3(T2) & " mil"
                    End If
                End If
            Else    '.......................................... T2 = 0
                If T1 > 0 Then
                    If D1 > 0 Then '000.000.000.999,99
                        sCadena = IIf(T1 = 1, "un peso ", Cifras3(T1)) & " con " & Cifras3(D1) & " centavos"
                    Else '000.000.000.999,00
                        sCadena = IIf(T1 = 1, "un peso ", Cifras3(T1))
                    End If
                Else
                    If D1 > 0 Then '000.000.000.000,99
                        sCadena = IIf(D1 = 1, "un centavo ", Cifras3(D1) & " centavos")
                    Else '000.000.000.000,00
                        sCadena = "cero"
                    End If
                End If
            End If
        End If
    End If
    Select Case nFormato
        Case 1  'CIENTO QUINCE CON TREINTA Y DOS CENTAVOS
            CadenaPesos = UCase(sCadena)
        Case 2  'ciento quince con treinta y dos centavos
            CadenaPesos = sCadena
        Case 3  'Ciento quince con treinta y dos centavos
            CadenaPesos = UCase(Left(sCadena, 1)) & Mid(sCadena, 2)
    End Select

End Function

Public Function PidoFecha(Optional pTitulo As String, Optional pPregunta As String, Optional pFecBus As String) As String
Dim bFecha As Boolean
Dim sFechaBus As String
'Dim vFecAct As Date
Dim vFecBus As String
    
    bFecha = False
    Do While bFecha = False
        If Trim(pFecBus) <> "" Then
            vFecBus = pFecBus
        Else
            vFecBus = Date
        End If
        If Trim(pTitulo) = "" Then
            sFechaBus = InputBox("Introduzca una Fecha para buscar los datos deseados, a partir de la misma", "Busqueda por Fecha", vFecBus)
        Else
            sFechaBus = InputBox(pPregunta, pTitulo, vFecBus)
        End If
        If sFechaBus = "" Then
            PidoFecha = ""
            bFecha = True
        Else
            If IsDate(sFechaBus) Then
                If Month(sFechaBus) < 13 And Month(sFechaBus) > 0 Then
                    PidoFecha = sFechaBus
                    bFecha = True
                End If
            Else
                MuestraError 50
            End If
        End If
    Loop

End Function

Public Function PidoMesAño(Mensaje As String, MenTitulo As String) As String
Dim bFecha As Boolean
Dim nLongitud As Long
Dim MesAct As String
Dim sFechaBuscada As String
    
    bFecha = False
    Do While bFecha = False
        If Month(Date) < 10 Then
            MesAct = "0" & Month(Date) & "/" & Year(Date)
        Else
            MesAct = Month(Date) & "/" & Year(Date)
        End If
        sFechaBuscada = InputBox(Mensaje, MenTitulo, MesAct)
        nLongitud = Len(sFechaBuscada)
        If sFechaBuscada = "" Then
            'PidoMes = False
            PidoMesAño = ""
            bFecha = True
        Else
            If nLongitud = 7 Then
                nMes = Val(Left(sFechaBuscada, 2))
                nAño = Val(Mid(sFechaBuscada, 4))
                If (nMes < 13) And (nMes > 0) Then
                    If (nAño < 2050) And (nAño > 1980) Then
                        'PidoMes = True
                        PidoMesAño = sFechaBuscada
                        bFecha = True
                    Else
                        MsgBox "Ingreso mal el Año", vbExclamation
                    End If
                Else
                    MsgBox "Ingreso mal el Mes", vbExclamation
                End If
            Else
                MsgBox "Dato erroneo", vbExclamation
            End If
        End If
    Loop

End Function

Public Function validarEmail(ByVal strEmail As String, ByRef strRazon As String) As Boolean
'funcion que devuelve verdadero o falso de acuerdo a si el string que se recibio como parametro cumple con las condiciones como para ser considerado un email.
'en caso de que devuelva falso, tb devuelve en la variable strRazon que le llega por referencia, el porque del rechazo.
Dim exito As Boolean
Dim dominio As String
    exito = True
    strRazon = ""
    'valido que tenga al menos 6 caracteres.
    If Len(strEmail) < 6 Then
        exito = False
        strRazon = "Una dirección de correo electrónico debe tener al menos 6 caracteres."
    End If
    'valido que tenga a lo sumo 60 caracteres.
    If Len(strEmail) > 60 Then
        exito = False
        strRazon = "La dirección de correo es demasiado larga, se necesita una dirección de hasta 60 caracteres."
    End If
    'valido que no tenga los siguientes caracteres o combinacion de caracteres.
    If exito Then
        If InStr(1, strEmail, "'") Or InStr(1, strEmail, "\\") Or InStr(1, strEmail, "\$") Or InStr(1, strEmail, "..") Or InStr(1, Trim(strEmail), " ") Or InStr(1, Trim(strEmail), "ñ") Or InStr(1, Trim(strEmail), "Ñ") Then
            exito = False
            strRazon = "Los siguientes caracteres o combinación de caracteres no están permitidos: " & vbCrLf & _
                        "'" & vbCrLf & _
                        "\\" & vbCrLf & _
                        "\$" & vbCrLf & _
                        ".." & vbCrLf & _
                        "Ni tampoco espacios en blanco"
        End If
    End If
    'valido que exista el @, pero que no haya mas de uno
    If exito Then
        If InStr(1, strEmail, "@") Then
            If InStr(InStr(1, strEmail, "@") + 1, strEmail, "@") Then
                exito = False
                strRazon = "Una dirección de correo electrónico puede tener solo un caracter @."
            End If
        Else
            exito = False
            strRazon = "No puede existir una dirección de correo electrónico que no tenga el caracter '@'."
        End If
    End If
    'valido que el @ no sea el primer caracter ni el ultimo
    If exito Then
        If Mid(Trim(strEmail), 1, 1) = "@" Or Mid(Trim(strEmail), Len(Trim(strEmail)), 1) = "@" Then
            exito = False
            strRazon = "Una dirección de correo electrónico no puede comenzar ni terminar con el caracter '@'."
        End If
    End If

    'a partir de aca se valida el dominio
    If exito Then
        dominio = Mid(Trim(strEmail), InStr(1, Trim(strEmail), "@") + 1, Len(Trim(strEmail)))
        If InStr(1, dominio, ".") = 0 Then
            exito = False
            strRazon = "Una dirección de correo electrónico debe contener al menos un punto (.) en la especificacion del dominio."
        End If
        'valido que el dominio no empiece ni termine termine con un punto
        If exito Then
            If Mid(dominio, 1, 1) = "." Or Mid(dominio, Len(dominio), 1) = "." Then
                exito = False
                strRazon = "El dominio de una dirección de correo electrónico no puede comenzar ni terminar con un punto."
            End If
        End If
    End If
    
    'se valida que todo caracter pertenezca a alguno de los siguientes grupos. 0..9;A..Z; a..z; "_"; "-"; "@"; "."
    i = 1
    While (i <= Len(strEmail) And (exito))
        vLetra = Mid$(strEmail, i, 1)
        If (Asc(vLetra) >= 48 And Asc(vLetra) <= 57) Or (Asc(vLetra) >= 65 And Asc(vLetra) <= 90) Or _
          (Asc(vLetra) >= 67 And Asc(vLetra) <= 122) Or (Asc(vLetra) = 45) Or (Asc(vLetra) = 46) Or (Asc(vLetra) = 64) Or _
          (Asc(vLetra) = 95) Then
            ' sigo
        Else
            exito = False
            strRazon = "El caracter: '" & vLetra & "' no es valido en una dirección de correo electronico"
        End If
        i = i + 1
    Wend
    'preguntar que tipo de validacion se puede llegar a hacer.
    validarEmail = exito

End Function

Public Function PadeoCadena(CadEntrada As String, ConQuePadea As String) As String
Dim k As Integer
Dim j As Integer
Dim LongOrig As Integer
Dim Reemplaza As String * 1
Dim CadenaTraj As String
    
    Reemplaza = ConQuePadea
    LongOrig = Len(CadEntrada)
    CadenaTraj = CadEntrada
    For k = 1 To Len(CadEntrada)
        Mid(CadenaTraj, k, 1) = Reemplaza
    Next k

    CadEntrada = Trim(CadEntrada)
    j = LongOrig - Len(CadEntrada) + 1
    For k = 1 To Len(CadEntrada)
        Mid(CadenaTraj, j, 1) = Mid(CadEntrada, k, 1)
        j = j + 1
    Next k
    PadeoCadena = Trim(CadenaTraj)
    
End Function

Public Function AlinearDerechaCadena(pCadEntrada As String, Optional pValIzquierda As String) As String
'Alinea una cadena de texto a la derecha.
Dim vCadTrab As String
Dim vLongTexto As Integer
Dim vLongCad As String
Dim vDifCad As Integer
Dim vTexPad As String * 1
    
    vLongCad = Len(Trim(pCadEntrada))
    vLongTexto = Len(pCadEntrada)
    vDifCad = vLongTexto - vLongCad
    vCadTrab = ""
    If Len(pValIzquierda) > 0 Then
        vTexPad = Mid(pValIzquierda, 1, 1)
    Else
        vTexPad = " "
    End If
    For i = 1 To vLongTexto
        If i <= vDifCad Then
            vCadTrab = vCadTrab & vTexPad
        Else
            vCadTrab = vCadTrab & Mid(pCadEntrada, i - vDifCad, 1)
        End If
    Next i
    AlinearDerechaCadena = vCadTrab
    
End Function

Public Function ParteEntera(ValorPesos As Currency) As Long
Dim cadenaTra As String
Dim Decim As Integer

    cadenaTra = Trim(Str(ValorPesos))
    Decim = Len(cadenaTra) - InStr(cadenaTra, ".")
    nLongitud = Len(cadenaTra)
    
    If Len(cadenaTra) <> Decim Then
        Select Case Decim
            Case 0 'Sin decimal
                ParteEntera = ValorPesos
            Case 1 'Un decimal
                ParteEntera = Val(Left(cadenaTra, (nLongitud - 1))) 'XXX.XXX.XXX.XXX,9
            Case 2 'Dos decimal
                ParteEntera = Val(Left(cadenaTra, (nLongitud - 2))) 'XXX.XXX.XXX.XXX,9
        End Select
    Else
        ParteEntera = ValorPesos
    End If
    
End Function

Public Function ParteDecimal(ValorPesos As Currency) As Integer
Dim cadenaTra As String
Dim Dedim As Integer

    cadenaTra = Trim(Str(ValorPesos))
    Decim = Len(cadenaTra) - InStr(cadenaTra, ".")
    If Decim <> Len(cadenaTra) Then
        Select Case Decim
            Case 0 'Sin decimal
                ParteDecimal = 0
            Case 1 'Un decimal
                ParteDecimal = Val(Right(cadenaTra, 1)) 'XXX.XXX.XXX.XXX,9
                ParteDecimal = ParteDecimal * 10
            Case 2 'Dos decimal
                ParteDecimal = Val(Right(cadenaTra, 2)) 'XXX.XXX.XXX.XXX,9
        End Select
    Else
        ParteDecimal = 0
    End If

End Function

Public Function TituloReporte(pdir_Logo As String) As String
Dim rsPar As ADODB.Recordset

    vcadsql = "SELECT par_titrep, par_dirlog FROM PARAMETROS "
    Set rsPar = objCnxAeros.TraerRecordSet(vcadsql, adCmdText)
    If objCnxAeros.pCanReg > 0 Then
        TituloReporte = rsPar!par_titrep
        'pdir_Logo = App.path & rsPar!par_dirlog
        pdir_Logo = "\\Arquimedes\Aplicaciones" & rsPar!par_dirlog
    Else
        TituloReporte = "Sin Titulo..."
    End If
    
End Function

Public Function RestoMeses(Fech As Long, meses As Byte) As Long
Dim iaux As Integer
Dim nMess As Byte
Dim nAñoss As Long
    
    nAñoss = Fech \ 100
    nMess = Fech Mod 100
    For iaux = 1 To meses
        nMess = nMess - 1
        If nMess = 0 Then
            nAñoss = nAñoss - 1
            nMess = 12
        End If
    Next iaux
    RestoMeses = (nAñoss * 100) + nMess
    
End Function

Public Function SumoMesesLargo(Fech As Long, meses As Byte) As Long
Dim iaux As Integer
Dim nMess As Byte
Dim nAñoss As Long
    
    nAñoss = Fech \ 100
    nMess = Fech Mod 100
    For iaux = 1 To meses
        nMess = nMess + 1
        If nMess > 12 Then
            nAñoss = nAñoss + 1
            nMess = 1
        End If
    Next iaux
    SumoMesesLargo = (nAñoss * 100) + nMess
    
End Function

Public Function OrdenarTexto(TEXT As String) As String
Dim i As Integer
Dim j As Integer
Dim aux As String * 1
Dim Lon As Integer
Dim Palabra()
    
    Lon = Len(TEXT)
    ReDim Palabra(Lon)
    For i = 1 To Lon
        Palabra(i) = Mid(TEXT, i, 1)
    Next i
    
    For i = 1 To Lon - 1
        For j = 1 To Lon - 1
            If Palabra(j) > Palabra(j + 1) Then
                aux = Palabra(j)
                Palabra(j) = Palabra(j + 1)
                Palabra(j + 1) = aux
            End If
        Next j
    Next i
    
    For i = 1 To Lon
        OrdenarTexto = OrdenarTexto & Palabra(i)
    Next i

End Function

Public Function RestoMesesFecha(FechaRes As Date, Cantidad As Integer) As Date
Dim DiaF As Byte
Dim MesF As Integer
Dim AnioF As Integer
Dim iauxi As Integer

    DiaF = Day(FechaRes)
    MesF = Month(FechaRes)
    AnioF = Year(FechaRes)
    For iauxi = 1 To Cantidad
        MesF = MesF - 1
        If MesF = 0 Then
            AnioF = AnioF - 1
            MesF = 12
        End If
    Next iauxi
    If MesF = 2 And DiaF > 28 Then
        DiaF = 28
    End If
    If DiaF = 31 Then
        DiaF = UltimoDiaMes(MesF, AnioF)
    End If
    RestoMesesFecha = CDate(CStr(DiaF) & "/" & CStr(MesF) & "/" & CStr(AnioF))

End Function

Public Function Mitad_Dos_Fechas(fechaDesde As Date, fechaHasta As Date) As Date

    Mitad_Dos_Fechas = (fechaDesde + ((fechaHasta - fechaDesde) / 2))

End Function

Public Function SumarMeses(MesInicial As Integer, CantidadMeses As Integer) As Integer
Dim MesAnt As Integer
Dim i As Integer

    MesAnt = MesInicial
    i = 1
    Do While i < CantidadMeses
        MesAnt = IIf(MesAnt + 1 > 12, 1, MesAnt + 1)
        i = i + 1
    Loop
    SumarMeses = MesAnt
    
End Function

Public Function obtenerDatosLOG(ptra_pan As String, ptra_clv As Long) As ADODB.Recordset
Dim rs As ADODB.Recordset

    
    Set obtenerDatosLOG = Nothing
    vcadsql = "SELECT  tra_usu, tra_fec, tra_ope, tra_det " _
            + "FROM sisLOG_TRABAJO WITH (NOLOCK) " _
            + "WHERE ( tra_pan = '" & ptra_pan & " ') AND (tra_clv =" & ptra_clv & ")"
    Set rs = objCnxAeros.TraerRecordSet(vcadsql, adCmdText)
    If objCnxAeros.pCanReg > 0 Then
        Set obtenerDatosLOG = rs
    End If
    
End Function

Public Function EstaEnPrograma() As Byte
    
    EstaEnPrograma = 0
    
End Function

Public Function SumarMesesAFechaCompleta(FechaInicial As Date, CantidadMeses As Integer) As Date
' Fue reemplazada por funcion: DateAdd("m",cant. de meses, fecha inicial)
' HABRIA QUE SACARLA a mediados de febrero.-
'dado una fecha avanza N meses y devuelve DD/MM/AAAA
Dim MesAnt As Integer
Dim AnioAnt As Integer
Dim i As Integer

    MesAnt = Month(FechaInicial)
    AnioAnt = Year(FechaInicial)
    i = 0
    Do While i < CantidadMeses
        AnioAnt = IIf(MesAnt + 1 > 12, AnioAnt + 1, AnioAnt)
        MesAnt = IIf(MesAnt + 1 > 12, 1, MesAnt + 1)
        i = i + 1
    Loop
    SumarMesesAFechaCompleta = Day(FechaInicial) & "/" & MesAnt & "/" & AnioAnt
    
End Function

Public Sub CerrarRs(RsACerrar As ADODB.Recordset)
    
    If Not RsACerrar Is Nothing Then
        If RsACerrar.State = adStateOpen Then
            RsACerrar.Close
        End If
    End If
    
End Sub

Public Function NormalizarDescripcion(ByVal pDescripcion As String) As String

    On Error GoTo handlerError
       
        ' llevar a mayúsculas
        NormalizarDescripcion = UCase(Trim(pDescripcion))
        
        ' reemplazar letras con acentos
        NormalizarDescripcion = ReemplazarLetrasConAcentos(NormalizarDescripcion)
        
        ' quitar espacios consecutivos
        NormalizarDescripcion = QuitarEspaciosConsecutivos(NormalizarDescripcion)
        
    Exit Function
    
handlerError:
    MsgBox "Error número: " & Err.Number & " - " & Err.Description:
End Function



Public Function ReemplazarLetrasConAcentos(ByVal pDescripcion As String) As String

    On Error GoTo handlerError
    pDescripcion = Replace(pDescripcion, "Á", "A")
    pDescripcion = Replace(pDescripcion, "É", "E")
    pDescripcion = Replace(pDescripcion, "Í", "I")
    pDescripcion = Replace(pDescripcion, "Ó", "O")
    pDescripcion = Replace(pDescripcion, "Ú", "U")
    ReemplazarLetrasConAcentos = pDescripcion
    Exit Function
    
handlerError:
    MsgBox "Error número: " & Err.Number & " - " & Err.Description:
End Function


Public Function QuitarEspaciosConsecutivos(ByVal pDescripcion As String) As String

    On Error GoTo handlerError
    
    Do While InStr(pDescripcion, "  ") > 0
        pDescripcion = Replace(pDescripcion, "  ", " ")
    Loop
    QuitarEspaciosConsecutivos = pDescripcion
    Exit Function
    
handlerError:
    MsgBox "Error número: " & Err.Number & " - " & Err.Description:
End Function

Public Function ConvertiFormatoLIKE(CadParBus As String, Optional pSinLIKE As Boolean)
'Dado una cadena de parametro de búsqueda devuelvo una cadena proceda para correr una consulta SQL con LIKE
Dim Fin As Boolean
Dim PosCar As Integer
Dim CadReemplazada As String

    CadReemplazada = CadParBus
    
    Do While Not Fin
        If InStr(CadParBus, "*") > 0 Then
            Fin = False
            PosCar = InStr(CadParBus, "*")
            Mid(CadReemplazada, PosCar, 1) = "%"
            CadParBus = CadReemplazada
        Else
            Fin = True
        End If
        '-----------------------------------------
        If InStr(CadParBus, "?") > 0 Then
            Fin = False
            PosCar = InStr(CadParBus, "?")
            Mid(CadReemplazada, PosCar, 1) = "_"
            CadParBus = CadReemplazada
        Else
            If Fin = True Then 'Porque todavia pueden haber más *
                Fin = True
            End If
        End If
    Loop
    
    If pSinLIKE Then
        ConvertiFormatoLIKE = Trim(CadReemplazada)
    Else
        ConvertiFormatoLIKE = "LIKE " & "'" & Trim(CadReemplazada) & "'"
    End If

End Function

Public Sub Edad(FecNacim As Date, FecActual As Date, ByRef Anos As Integer, ByRef meses As Integer, ByRef dias As Integer)
Dim vAnos As Double
Dim vMeses As Double
Dim vDias As Double

    vAnos = Int((FecActual - FecNacim) / 365)
    vMeses = Int((((FecActual - FecNacim) / 365) - vAnos) * 12)
    vDias = Int((((((FecActual - FecNacim) / 365) - vAnos) * 12) - vMeses) * 30)
    
    Anos = vAnos
    meses = vMeses
    dias = vDias
    
End Sub

Public Function GeneradorPonderador9713(pNumEntrada As String) As String
'Esta función devuelve el numero de entrada + el Digito Verificador usando el ponderardor 9713
'Tener en cuenta que en el parametro pNumEntrada se reciben datos correctos.
'ya que no se puede sacar mensajes de error, porque la función es llamada dentro de procesos
'de generación de lotes.
Dim vBloque As String
Dim vsuma As Long
Dim vMatriz() As Integer
Dim i As Integer
Dim j As Integer 'Para recorrer el N° de Entrada.
Dim vInc As Integer
Dim vResto As Integer
Dim vDigVerif As Integer 'Digito Verificador
    
    'En la matriz guardo los valores del ponderador 9713
    ReDim vMatriz(0 To 3) ' As Integer
    vMatriz(0) = 3 '9
    vMatriz(1) = 1 '7
    vMatriz(2) = 7 '1
    vMatriz(3) = 9 '3
    
    vBloque = Trim(pNumEntrada)
    For i = 1 To Len(vBloque)
        If Not IsNumeric(Mid(vBloque, i, 1)) Then
            pDetalle = "El Bloque de entrada debe estar compuesto por numeros y no se permiten otros caracteres."
            Exit Function
        End If
    Next
    
    If Trim(vBloque) <> "" Then
        vInc = 0 'Para recorrer la matriz de los valores.
        'Recorre desde el último hasta el principio la cadena del numero.
        For j = (Len(vBloque)) To 1 Step -1
            'A cada valor lo multiplica por el numero ponderador guardado en la matriz.
            ' "Val CBU = " & Mid(vBloque, j, 1) & " Matriz = " & vMatriz(vInc Mod 4) & " Final = " & Mid(vBloque, j, 1) * vMatriz(vInc Mod 4)
            vsuma = vsuma + (Mid(vBloque, j, 1) * vMatriz(vInc Mod 4))
            vInc = vInc + 1
        Next j
        vResto = vsuma Mod 10
        vDigVerif = 10 - vResto
        'Si el resto es cero el digito verificador da 10, por lo tanto 0 es el valor.
        GeneradorPonderador9713 = vBloque & IIf(vDigVerif = 10, 0, vDigVerif)
    End If
    
    'Ejemplo de evaluación con el N° 0 1 1 0 4 9 1 6 correspondiente al bloque 1
    'El ultimo numero es 6 y se tiene que multiplicar por 1 y se guarda en vSuma
    'De atras hacia adelante: (1*3) + (9*1) + (4*7) + (0*9) + (1*3) + (1*1) + (0*7) + vSuma = 50
    'Como el último digito es cero, se puede decir que este bloque es correcto.
    
End Function

Public Function ControlPonderador9713(pNumEntrada As String, pDetalle As String) As Boolean
'Esta función controla que en el parámetro pNumEntrada este correcto el Numero con su digito verificador
'Además informa del error en el parámetro pDetalle
Dim vBloque As String
Dim vsuma As Long
Dim vMatriz() As Integer
Dim i As Integer
Dim j As Integer 'Para recorrer el N° de Entrada.
Dim vInc As Integer
    
    'En la matriz guardo los valores del ponderador 9713
    ReDim vMatriz(0 To 3) ' As Integer
    vMatriz(0) = 3 '9
    vMatriz(1) = 1 '7
    vMatriz(2) = 7 '1
    vMatriz(3) = 9 '3
    
    ControlPonderador9713 = False
    pDetalle = ""
    vBloque = Trim(pNumEntrada)
    For i = 1 To Len(vBloque)
        If Not IsNumeric(Mid(vBloque, i, 1)) Then
            pDetalle = "El Bloque de entrada debe estar compuesto por numeros y no se permiten otros caracteres."
            Exit Function
        End If
    Next
    
    If Trim(vBloque) <> "" Then
        'Guarda el ultimo numero * 1
        vsuma = Mid(vBloque, Len(vBloque), 1) * 1
        vInc = 0 'Para recorrer la matriz de los valores.
        'Recorre desde el último -1 hasta el principio la cadena del numero.
        For j = (Len(vBloque) - 1) To 1 Step -1
            'A cada valor lo multiplica por el numero ponderador guardado en la matriz.
            ' "Val CBU = " & Mid(vBloque, j, 1) & " Matriz = " & vMatriz(vInc Mod 4) & " Final = " & Mid(vBloque, j, 1) * vMatriz(vInc Mod 4)
            vsuma = vsuma + (Mid(vBloque, j, 1) * vMatriz(vInc Mod 4))
            vInc = vInc + 1
        Next j
        
        'Pregunta por el último digito de la suma, si es <> cero el número no es valido.
        If (vsuma Mod 10) <> 0 Then
            pDetalle = "Error en el Numero ingresado."
        Else
            ControlPonderador9713 = True
        End If
    Else
        pDetalle = "El Bloque de entrada debe estar compuesto por numeros y no se permiten otros caracteres."
    End If
    
    'Ejemplo de evaluación con el N° 0 1 1 0 4 9 1 6 correspondiente al bloque 1
    'El ultimo numero es 6 y se tiene que multiplicar por 1 y se guarda en vSuma
    'De atras hacia adelante: (1*3) + (9*1) + (4*7) + (0*9) + (1*3) + (1*1) + (0*7) + vSuma = 50
    'Como el último digito es cero, se puede decir que este bloque es correcto.
    
End Function

Public Function DigitoVerificadorCBU(pNumCBU As String, pBloque As Integer, pDetalle As String) As Boolean
'Esta función valida los dígitos del CBU, puede recibir el bloque 1, bloque 2 o el CBU completo.
'pBloque = 0 CBU completo, pBloque = 1 Primer Bloque y pBloque = 2 Segundo Bloque
'Ademas informa el error ocurrido en el parámetro pDetalle.
Dim vCBU_bloq1 As String * 8
Dim vCBU_bloq2 As String * 14
Dim vBloque As String
Dim vsuma As Long
Dim vMatriz() As Integer
Dim i As Integer
Dim j As Integer 'Para recorrer el N° de CBU.
Dim vInc As Integer
    
    'En la matriz guardo los valores del ponderador 9713
    ReDim vMatriz(0 To 3) ' As Integer
    vMatriz(0) = 3 '9
    vMatriz(1) = 1 '7
    vMatriz(2) = 7 '1
    vMatriz(3) = 9 '3
    
    pDetalle = ""
    DigitoVerificadorCBU = False
    For i = 1 To Len(pNumCBU)
        If Not IsNumeric(Mid(pNumCBU, i, 1)) Then
            pDetalle = "El CBU debe estar compuesto por numeros y no se permiten otros caracteres."
            Exit Function
        End If
    Next
    
    vCBU_bloq1 = ""
    vCBU_bloq2 = ""
    
    Select Case pBloque
        Case 0
            If Len(pNumCBU) = 22 Then
                vCBU_bloq1 = Mid(pNumCBU, 1, 8)
                vCBU_bloq2 = Mid(pNumCBU, 9, 22)
            Else
                pDetalle = "Longitud no admitida del N° de CBU."
                Exit Function
            End If
        Case 1
            If Len(pNumCBU) = 8 Then
                vCBU_bloq1 = pNumCBU
            Else
                pDetalle = "Longitud no admitida del Bloque 1 del N° de CBU."
                Exit Function
            End If
        Case 2
            If Len(pNumCBU) = 14 Then
                vCBU_bloq2 = pNumCBU
            Else
                pDetalle = "Longitud no admitida del Bloque 2 del N° de CBU."
                Exit Function
            End If
    End Select
    
    DigitoVerificadorCBU = True
    For i = 1 To 2
        vBloque = IIf(i = 1, vCBU_bloq1, vCBU_bloq2)
        If Trim(vBloque) <> "" Then
            'Guarda el ultimo numero * 1
            vsuma = Mid(vBloque, Len(vBloque), 1) * 1
            vInc = 0 'Para recorrer la matriz de los valores.
            'Recorre desde el último - 1 hasta el principio la cadena del numero.
            For j = (Len(vBloque) - 1) To 1 Step -1
                'A cada valor lo multiplica por el numero ponderador guardado en la matriz.
                ' "Val CBU = " & Mid(vBloque, j, 1) & " Matriz = " & vMatriz(vInc Mod 4) & " Final = " & Mid(vBloque, j, 1) * vMatriz(vInc Mod 4)
                vsuma = vsuma + (Mid(vBloque, j, 1) * vMatriz(vInc Mod 4))
                vInc = vInc + 1
            Next j
            'Pregunta por el último digito de la suma, si es <> cero el número no es valido.
            If (vsuma Mod 10) <> 0 Then
                pDetalle = "Bloque N° " & i & " erroneo."
                DigitoVerificadorCBU = False
                Exit Function
            End If
        End If
    Next
    'Ejemplo de evaluación con el N° 0 1 1 0 4 9 1 6 correspondiente al bloque 1
    'El ultimo numero es 6 y se tiene que multiplicar por 1 y se guarda en vSuma
    'De atras hacia adelante: (1*3) + (9*1) + (4*7) + (0*9) + (1*3) + (1*1) + (0*7) + vSuma = 50
    'Como el último digito es cero, se puede decir que este bloque es correcto.
    
End Function

Public Function DigitoVerificadorCBU2(CBUCompleto As String, Bloque As Integer) As Boolean
Dim BloqueAEvaluar As String * 13
Dim Verificador As Integer
Dim VerifCalculado As Integer
Dim suma As Long
Dim DigActual As Integer
Dim aux As String
Dim UltDigSuma As Integer

    'Validacion de longitud general del CBU
    If Len(Trim(CBUCompleto)) <> 22 Then
        ' MsgBox "Longitud de CBU no admitida...", vbCritical
        DigitoVerificadorCBU2 = False
        Exit Function
    End If

    'Seleccion del bloque
    If Bloque = 1 Then
        'MsgBox Left(CBUCompleto, 3)
        If Val(Left(CBUCompleto, 3)) > 499 Then
            MsgBox "Código Bancario Erroneo (3 primeros números ingresados)" & Chr(13) & "Debe ser menor a 499.", vbCritical, "JS2000 Validación"
        Else
            BloqueAEvaluar = "000000" & Left(CBUCompleto, 7)
            Verificador = Mid(CBUCompleto, 8, 1)
        End If
    Else
        If Bloque = 2 Then
            BloqueAEvaluar = Mid(CBUCompleto, 9, 13)
            Verificador = Mid(CBUCompleto, 22, 1)
        Else
            MsgBox "Parametro Bloque no válido", vbCritical
        End If
    End If
    
    'Calculo del digito sobre los valores ingresados
    
    'MsgBox 3 * Val(Mid(BloqueAEvaluar, 13, 1))
    'MsgBox 1 * Val(Mid(BloqueAEvaluar, 12, 1))
    'MsgBox 7 * Val(Mid(BloqueAEvaluar, 11, 1))
    'MsgBox 9 * Val(Mid(BloqueAEvaluar, 10, 1))
    'MsgBox 3 * Val(Mid(BloqueAEvaluar, 9, 1))
    'MsgBox 1 * Val(Mid(BloqueAEvaluar, 8, 1))
    'MsgBox 7 * Val(Mid(BloqueAEvaluar, 7, 1))
    'MsgBox 9 * Val(Mid(BloqueAEvaluar, 6, 1))
    'MsgBox 3 * Val(Mid(BloqueAEvaluar, 5, 1))
    'MsgBox 1 * Val(Mid(BloqueAEvaluar, 4, 1))
    'MsgBox 7 * Val(Mid(BloqueAEvaluar, 3, 1))
    'MsgBox 9 * Val(Mid(BloqueAEvaluar, 2, 1))
    'MsgBox 3 * Val(Mid(BloqueAEvaluar, 1, 1))


    suma = 3 * Val(Mid(BloqueAEvaluar, 13, 1)) + _
           1 * Val(Mid(BloqueAEvaluar, 12, 1)) + _
           7 * Val(Mid(BloqueAEvaluar, 11, 1)) + _
           9 * Val(Mid(BloqueAEvaluar, 10, 1)) + _
           3 * Val(Mid(BloqueAEvaluar, 9, 1)) + _
           1 * Val(Mid(BloqueAEvaluar, 8, 1)) + _
           7 * Val(Mid(BloqueAEvaluar, 7, 1)) + _
           9 * Val(Mid(BloqueAEvaluar, 6, 1)) + _
           3 * Val(Mid(BloqueAEvaluar, 5, 1)) + _
           1 * Val(Mid(BloqueAEvaluar, 4, 1)) + _
           7 * Val(Mid(BloqueAEvaluar, 3, 1)) + _
           9 * Val(Mid(BloqueAEvaluar, 2, 1)) + _
           3 * Val(Mid(BloqueAEvaluar, 1, 1))

    aux = suma
    UltDigSuma = Mid(aux, Len(aux), 1)
    
    VerifCalculado = 10 - UltDigSuma
    
    If VerifCalculado <> Verificador Then
        DigitoVerificadorCBU2 = False
    Else
        DigitoVerificadorCBU2 = True
    End If

End Function

Public Sub GrabarLOG(vclave As Long, vTra_tabpri As String, vtra_pan As String, vtra_ope As Integer, Optional vDetalle As String)
'Dim vtra_usu As String ' puede tomarse
'Dim vtra_fec As Date ' debe tomarse
'Dim vtra_operacion As String
'Dim vtra_PC As String
'Dim oSis As New clsDE_Sistema
'
'    vtra_fec = Fechar(Fecha.esistema, True)
'    vtra_usu = Usuario_Js
'
'    If vtra_ope = OperacionEnPantalla.eAlta Then
'        vtra_operacion = "A"
'    ElseIf vtra_ope = OperacionEnPantalla.eBaja Then
'        vtra_operacion = "B"
'    ElseIf vtra_ope = OperacionEnPantalla.eModificacion Then
'        vtra_operacion = "M"
'    ElseIf vtra_ope = OperacionEnPantalla.eError Then
'        vtra_operacion = "E"
'    ElseIf vtra_ope = OperacionEnPantalla.eConsulta Then
'        vtra_operacion = "C"
'    End If
'
'    vtra_PC = PC_Js
'
'    If Trim(vDetalle) <> "" Then
'        If Not oSis.ins_sisLOG_TRABAJO(vclave, vTra_tabpri, vtra_pan, vtra_operacion, vtra_usu, vDetalle) Then
'        'If Not oSis.ins_sisLOG_TRABAJO(vclave, vTra_tabpri, vtra_pan, vtra_operacion, vtra_usu, vDetalle, vtra_PC) Then
'            MsgBox MostrarError("En el sub GrabarLOG del módulo Procedimientos_comunes al intentar oSis.ins_sisLOG_TRABAJO", _
'                              oSis.pNumError, oSis.pDesError), vbCritical
'        End If
'    Else
'        If Not oSis.ins_sisLOG_TRABAJO(vclave, vTra_tabpri, vtra_pan, vtra_operacion, vtra_usu, "") Then
'        'If Not oSis.ins_sisLOG_TRABAJO(vclave, vTra_tabpri, vtra_pan, vtra_operacion, vtra_usu, "", vtra_PC) Then
'            MsgBox MostrarError("En el sub GrabarLOG del módulo Procedimientos_comunes al intentar oSis.ins_sisLOG_TRABAJO", _
'                                oSis.pNumError, oSis.pDesError), vbCritical
'        End If
'    End If
'
End Sub

Public Function GrabarSeguimientoDeProcesos(ppro_idesec As Long, pedp_obs As String, Optional pedp_idesec As Long) As Long
'Dim vFecha As Date
'Dim vTiempo As Date
'Dim vedp_idesec As Long
'Dim vtra_usu As String
'Dim oSis As New clsDE_Sistema
'Dim vOK As Boolean
'
'    vFecha = Now
'    vtra_usu = Usuario_Js
'    'If IsMissing(pedp_idesec) Then
'    If pedp_idesec = 0 Then
'        vOK = oSis.ins_sisEJECUCION_DE_PROCESOS(vFecha, pedp_obs, ppro_idesec, vtra_usu)
'        If vOK Then
'            vedp_idesec = oSis.pIdDevuelto
'            GrabarSeguimientoDeProcesos = vedp_idesec
'        Else
'            GrabarSeguimientoDeProcesos = 0
'        End If
'    Else
'        vOK = oSis.upd_sisEJECUCION_DE_PROCESOS(pedp_idesec, vFecha, pedp_obs, ppro_idesec, vtra_usu)
'        GrabarSeguimientoDeProcesos = 0
'    End If
'
End Function

Public Function NumeroAleatorio() As Long
Dim valor As Long

    Randomize

    valor = Int((100000000 * Rnd) + 1)
    NumeroAleatorio = valor

End Function

Public Function ValoresUnicosEnColumna(pGrilla As MSFlexGrid, pColumnaAControlar As Integer, pContemplarBorrados As Boolean, pColEstado As Integer) As Boolean
' ____________________________________________________________________________
' Determina si existen valores duplicados en la columna de la grilla indicada
' ----------------------------------------------------------------------------
' Compara igualda de STRING
'
' Devuelve True  si encontró duplicado
'          False no encontró duplicado
'
' pColConValUnico: Indica la columna sobre la que se desea exigir valores únicos, no existencia de duplicados
' ____________________________________________________________________________

Dim i As Integer
Dim j As Integer
Dim vCanFil As Integer ' Cantidad de filas

Dim vCadPuntera As String
Dim vEstPuntera As String

Dim vCadCompara As String
Dim vEstCompara As String

Dim vEncontrado As Boolean

    ValoresUnicosEnColumna = True
    vCanFil = pGrilla.Rows
    i = 1
    j = 1
    vEncontrado = False
    Do While i < vCanFil And Not vEncontrado
        vCadPuntera = Trim(pGrilla.TextMatrix(i, pColumnaAControlar))
        vEstPuntera = Trim(pGrilla.TextMatrix(i, pColEstado))
        j = i + 1
        Do While j < vCanFil And Not vEncontrado
            If vEstPuntera <> "Bor" Then
                vCadCompara = Trim(pGrilla.TextMatrix(j, pColumnaAControlar))
                vEstCompara = Trim(pGrilla.TextMatrix(j, pColEstado))
                If vEstCompara <> "Bor" Then
                    If vCadPuntera = vCadCompara Then
                        vEncontrado = True
                    End If
                End If
            End If
            j = j + 1
        Loop
        i = i + 1
    Loop
    If vEncontrado Then
        ValoresUnicosEnColumna = False
    End If
    
End Function

Public Function ExisteAlgunDomicilioReal(pGrilla As MSFlexGrid, pColEstado As Integer, pColTipo As Integer) As Boolean
' ___________________________________
' Recorre la grilla de domicilio
' ___________________________________
Dim i As Integer
Dim vCanFil As Integer
Dim vCanBor As Integer
Dim vCanDomReal As Integer

    ExisteAlgunDomicilioReal = True

    vCanFil = pGrilla.Rows
    vCanBor = 0
    vCanDomReal = 0

    For i = 1 To vCanFil - 1
        If pGrilla.TextMatrix(i, pColEstado) = "Bor" Then
            vCanBor = vCanBor + 1
        Else
            If Trim(pGrilla.TextMatrix(i, pColTipo)) = "Real" Then
                vCanDomReal = vCanDomReal + 1
            End If
        End If
    Next i

    If vCanBor = vCanFil - 1 Then
        ExisteAlgunDomicilioReal = False
    End If
    
    If vCanDomReal = 0 Then
        ExisteAlgunDomicilioReal = False
    End If

End Function

'************************************-------------------------------------
'Esta función paso a Correo_Interno.

'Public Function DomicilioUtilizado(pdom_idesec As Long) As Integer
'' -----------------------------------------------------------------------------
'' Determina si un domicilio está compartido
'' Un domicilio está asignado a más de una persona se dice qu está compartido
'' -----------------------------------------------------------------------------
''Dim rs As ADODB.Recordset
'Dim oPer As New clsDE_Personas
'
'    DomicilioUtilizado = 0
'    Call oPer.sel_DomicilioAsigandoAPersona(pdom_idesec)
'    If oPer.pCanReg > 0 Then
'        DomicilioUtilizado = oPer.pCanReg
'    Else
'        If Not oPer.pNumError = 0 Then
'            MsgBox MostrarError("En la función DomicilioUtilizado del módulo Procedimientos_comunes al intentar oPer.sel_DomicilioAsigandoAPersona", _
'                                oPer.pNumError, oPer.pDesError), vbCritical
'        End If
'    End If
'
'End Function

Public Sub Cargar_Iconos_Img(pImglst As ImageList)
Dim vIconCamino As String
    
    vIconCamino = ""
    
End Sub

Public Function DevolverPesos(valor As Variant) As String
    
    DevolverPesos = Format(valor, "$#######.00")
    
End Function

Public Sub UnProfesional_Prestador(pOrigen As String, pId_Prof As Long, pnombre As String, pMatricula As String)
'Dim rsPro As New ADODB.Recordset
'Dim oPer As New clsDE_Personas
'
'    pnombre = ""
'    pMatricula = ""
'    If pOrigen = "I" Then
'        oPer.sel_UnProfesional pId_Prof
'        If oPer.pCanReg > 0 Then
'            pnombre = Trim(oPer.pRS!pro_apenom)
'            pMatricula = IIf(IsNull(oPer.pRS!pro_mat), "", oPer.pRS!pro_mat)
'        ElseIf oPer.pNumError <> 0 Then
'            MsgBox MostrarError("En el sub UnProfesional_Prestador del módulo Procedimientos_comunes al intentar oPer.sel_UnProfesional", _
'                                 oPer.pNumError, oPer.pDesError), vbCritical
'        End If
'    Else
'        Set rsPro = Consultar(MesaDeEntrada.Commands("UnProfesionalBaseJS"), pId_Prof)
'        If ConsultaSatisfactoria And (Not ConsultaVacia) Then
'            pnombre = rsPro!ApeNom
'            pMatricula = IIf(IsNull(rsPro!Matricula), "", rsPro!Matricula)
'        End If
'    End If
End Sub

Private Sub EviarMailMAPI()
Dim objSession As Object
Dim objMessage As Object
Dim objRecipient As Object
    
    'Create the Session Object
    Set objSession = CreateObject("mapi.session")
    
    'Logon using the session object
    'Specify a valid profile name if you want to
    'Avoid the logon dialog box
    objSession.Logon profileName:="MS Exchange Settings"
    
    'Add a new message object to the OutBox
    Set objMessage = objSession.Outbox.Messages.Add
    
    'Set the properties of the message object
    objMessage.Subject = "This is a test."
    objMessage.TEXT = "This is the message text."
    objMessage
    
    'Add a recipient object to the objMessage.Recipients collection
    Set objRecipient = objMessage.Recipients.Add
    
    'Set the properties of the recipient object
    objRecipient.Name = "John Doe"  '<---Replace this with a valid
                                    'display name or e-mail alias
    'Type can be ActMsgTo, mapiTo, or CdoTo for different CDO versions;
    'they all have a constant value of 1.
    objRecipient.Type = mapiTo
    objRecipient.Resolve
    
    'Send the message
    objMessage.Send showDialog:=False
    MsgBox "Message sent successfully!"
    
    'Logoff using the session object
    objSession.Logoff

End Sub

Public Function Msf_ValorId_Existente(pGrilla As MSFlexGrid, pCol_Id As Integer, pCol_Borr As Integer, pSaltearBorrados As Boolean, pId_Encontrar As Long) As Boolean
' Determina si el valor de Id a ingresar en una columan ya existe en la grilla indicada
' ----------------------------------------------------------------------------
' Devuelve True si el valor existe, False en caso contrario
' .......................................
' Parámetros
' pGrilla (Grilla a evaluar)
' pCol_id (Columna donde se encuentra el id)
' pCol_Borr (Si existe una Columna que marque las filas Borradas colocarla, en caso
' contrario colocar -1)
' pSaltearBorrados (Si hay una columna que marca los borrados y no se tienen que tener
' en cuenta colocar true. En caso contraro False)
' pId_Encontrar (N° de Id. a encontrar en la Grilla)

Dim i As Integer
Dim vCanFil As Integer ' Cantidad de filas
Dim vValorId As Long
Dim vEstadoColumna As String 'Estado de la columna "Borrada"
Dim vEncontrado As Boolean

    Msf_ValorId_Existente = False
    vCanFil = pGrilla.Rows
    i = 1
    vEncontrado = False
    Do While i < vCanFil And Not vEncontrado
        vValorId = Val(pGrilla.TextMatrix(i, pCol_Id))
        If vValorId = pId_Encontrar Then
            If pCol_Borr >= 0 Then
                vEstadoColumna = pGrilla.TextMatrix(i, pCol_Borr)
                If Not (InStr(0, vestadoclumna, "Bor") >= 0) Then
                    vEncontrado = True
                End If
            Else
                vEncontrado = True
            End If
        End If
        i = i + 1
    Loop

    If vEncontrado = True Then
        Msf_ValorId_Existente = True
    End If
    
End Function

Public Function GrillaRenglonVacio(pGrilla As MSFlexGrid, pNumRen As Integer) As Boolean
' ---------------------------------------------------------------
' Determina si el renglon pNumRen de la grilla pGrilla está vacio
' ---------------------------------------------------------------
Dim i As Integer

    GrillaRenglonVacio = True
    i = 1
    Do While i < pGrilla.Cols And GrillaRenglonVacio
        If (pGrilla.TextMatrix(pNumRen, i)) <> vbNullString Then
            GrillaRenglonVacio = False
        End If
        i = i + 1
    Loop

End Function

Public Function PersonaHabilitadaParaDescuentosCC(pper_idesec As Long, pdec_idesec As Long, pParticipante As Boolean) As Boolean
'Función que recibe como parámetro la persona y el descuento de CC y si desea saber sobre el participante.
'Devuelve falso si esta deshabilitado.
Dim rsHab As New ADODB.Recordset
    
    vcadsql = "SELECT dpc_tot, dpc_par From DESHABILITACION_PARCIAL_DE_CC " _
            + "where per_idesec = " & pper_idesec & " and dec_idesec = " & pdec_idesec
    Set rsHab = objCnxAeros.TraerRecordSet(vcadsql, adCmdText)
    If objCnxAeros.pCanReg = 0 Then
        PersonaHabilitadaParaDescuentosCC = True
    Else
        rsHab.MoveFirst
        If rsHab!dpc_tot = True Then
            'El Titular y Todo el grupo esta deshabilitado
            PersonaHabilitadaParaDescuentosCC = False
        ElseIf pParticipante = True And rsHab!dpc_par = True Then
            'solo los participantes estan deshabilitados
            PersonaHabilitadaParaDescuentosCC = False
        Else
            PersonaHabilitadaParaDescuentosCC = True
        End If
    End If
    
End Function

Public Sub SeleccionarMsk(objMsk As MaskEdBox)
    objMsk.SelStart = 0
    objMsk.SelLength = Len(objMsk)
End Sub

Public Sub EditarTxtEnGrilla(objTxt As TextBox, objFlex As MSFlexGrid)
    objTxt.TEXT = ""
    objTxt.Top = objFlex.CellTop + objFlex.Top
    objTxt.Left = objFlex.CellLeft + objFlex.Left
    objTxt.Height = objFlex.CellHeight
    objTxt.Width = objFlex.CellWidth
    objTxt.Font = objFlex.Font
    
    objTxt.TEXT = objFlex.TextMatrix(objFlex.Row, objFlex.Col)
    
    objTxt.Visible = True
    objTxt.SetFocus
    SeleccionarTxt objTxt
End Sub

Public Sub SeleccionarTxt(objTxt As TextBox)
    objTxt.SelStart = 0
    objTxt.SelLength = Len(objTxt.TEXT)
End Sub

Public Function EsUnNumero(NroAscii As Integer) As Boolean
'Valida sólo valores numéricos, punto (como decimal), tabulador y enter

    If (NroAscii >= 48 And NroAscii <= 57) Or NroAscii = 8 Or NroAscii = 13 Then
        EsUnNumero = True
    Else
        EsUnNumero = False
    End If
    
End Function

Public Function ULCase(pCadEntrada As String) As String
Dim k As Integer
Dim vReemp As Boolean
Dim CadenaTraj As String
Dim vCaracter As String

    CadenaTraj = ""
    vReemp = True 'Entra activo el reemplazo por la primer letra
    For k = 1 To Len(pCadEntrada)
        vCaracter = Mid(pCadEntrada, k, 1)
        If (vCaracter = " ") Then
            CadenaTraj = CadenaTraj & " "
            vReemp = True 'Cuando aparece un blanco activa el reemplazo
        Else
            CadenaTraj = CadenaTraj & IIf(vReemp, UCase(vCaracter), LCase(vCaracter))
            vReemp = False 'Desactivo el reemplazo
        End If
    Next k
    ULCase = CadenaTraj
    
End Function

Public Sub ReproducirWav(pArchivo As String)
Dim vValDev As Long
    
    vValDev = sndPlaySound(pArchivo, SND_SYNC)
    
End Sub

Public Function RsVacio(Rsinput As ADODB.Recordset) As Boolean
On Error GoTo ErrLoc

    If (Rsinput.EOF = True) And (Rsinput.BOF = True) Then
        RsVacio = True
    Else
        RsVacio = False
    End If
    
    Exit Function
    
ErrLoc:
    RsVacio = True
End Function

'Public Sub Exportar_A_PlanillaEXEL(prsDat As ADODB.Recordset, pCamino As CommonDialog, _
'                                    pTitulo_EnRS As Boolean, Optional pcabecera As String)
''Carga en una planilla excel los datos del recordset.
''Necesita un commondialog para crear archivos y si los Títulos de las columnas
''estan cargados en la primera fila del recordset
''El parámetro pcabecera sirve para esecificar la cabecera del listado. Nombre de las columnas
''separados por ";". Se deja la anterior forma de especificar la cabecera, por compatibilidad.
'
'Dim lFilaCont   As Long                 'Se utiliza para contar las filas a insertar
'Dim lCopiaCont  As Long                 'Se guarda la cantidad de copias realizada
'Dim sLetra      As String               'Determina la última letra de la planilla
'Dim sInicio     As String               'Determina la primera celda
'Dim sFin        As String               'Determina la última celda
'Dim sDatoSel    As String               'Guarda los datos a insertar en la planilla.
'Dim oExcelApp   As Excel.Application    'Objeto Excel de aplicación
'Dim oHojaCal    As Excel.Worksheet      'Hoja de cálculo...
'Dim oLibExel    As Excel.Workbook       'Libro de Exel
'Dim lCant_Filas As Long                 'Cantidad de Filas a insertar.
'Dim vTotalColumnas As Integer           'Cantidad de columnas a insertar.
'Const cFIXEDROWS = 2                    'Fila donde empiezan los datos (La 1 es título)
'Const cCLIPROWS = 50                    'Limite para bajar al archivo. (puede ser 500)
'Dim sNuevo_Xls  As String               'Nuevo archivo xls.
'Dim i           As Integer              'Índice
'Dim vValorCampo As String               'Copia los valores para trabajarlos.
'Dim vCabEnReg   As Boolean              'Especifica si la cabecera viene en el registro
'
''Dim sPlantilla_Xls As String            'Plantilla xls........
'
''Const cNUMCOLS = 13 ' 16      'Cantidad de Columnas..
''Const cNUMROWS = 20     'Cantidad de filas a insertar
'
'    'Creación de un archivo Excel
'    'Lo utiliza como plantilla para armar el archivo de datos.
'    Open "C:\Archivos de programa\JS2000\Datos.xls" For Output As #1
'    Close #1
'    sPlantilla_Xls = "C:\Archivos de programa\JS2000\Datos.xls"
'
'    pCamino.InitDir = "C:\Archivos de programa\JS2000"
'    pCamino.FileName = "DatosExportados.xls"
'    pCamino.Filter = "Archivos Excel (*.xls)|*.xls"
'    pCamino.ShowSave
'
'    'Se asigna el archivo creado.
'    sNuevo_Xls = pCamino.FileName
'    lCant_Filas = prsDat.RecordCount
'
'    'Se coloca a partir de aca el control de error porque se crea los objetos.
'    On Error GoTo ErrorGeneracion
'
'    Screen.MousePointer = vbHourglass
'    If Dir(sNuevo_Xls) <> "" Then Kill sNuevo_Xls
'    'Crea una instancia de excel invisible
'    Set oExcelApp = CreateObject("EXCEL.APPLICATION")
'    oExcelApp.Visible = False
'    'oExcelApp.Visible = True
'    'Abre una hoja de cálculo ya creada ...
'    oExcelApp.Workbooks.Open FileName:=sPlantilla_Xls, ReadOnly:=True, ignoreReadOnlyRecommended:=True
'
'    Set oHojaCal = oExcelApp.ActiveSheet
'    Set oLibExel = oExcelApp.ActiveWorkbook
'
'    'Guarda la plantilla con el nuveo nombre
'    'oHojaCal.SaveAs sNuevo_Xls ', xlNormal
'    oLibExel.SaveAs sNuevo_Xls
'
'    'Determina la cantidad de columnas.
'    vTotalColumnas = prsDat.Fields.Count
'
'    'Marca si viene la cabecera del listada especificada fuera del registro, ya que
'    'modifica el parámetro pcabecera dejándolo vacío
'    prsDat.MoveFirst
'    If pTitulo_EnRS And pcabecera <> "" Then
'        vCabEnReg = True
'    End If
'    'Carga los títulos de las columnas
'    For i = 1 To vTotalColumnas
'        If pTitulo_EnRS = True Then
'            If pcabecera = "" Then
'                oHojaCal.Cells(1, i) = Trim(prsDat.Fields(i - 1).Value)
'            Else
'                If InStr(1, pcabecera, ";") > 0 Then
'                    oHojaCal.Cells(1, i) = Mid(pcabecera, 1, InStr(1, pcabecera, ";") - 1)
'                    pcabecera = Mid(pcabecera, InStr(1, pcabecera, ";") + 1)
'                Else
'                    oHojaCal.Cells(1, i) = pcabecera
'                    pcabecera = ""
'                End If
'            End If
'        Else
'            oHojaCal.Cells(1, i) = prsDat.Fields(i - 1).Name
'        End If
'    Next i
'    If pTitulo_EnRS = True And Not vCabEnReg Then
'        prsDat.MoveNext
'    End If
'
'    'Llena el cuerpo de la hoja determinando el rango de celdas y cambiando el formato..
'    sInicio = "A" & CStr(cFIXEDROWS + 1)
'    If vTotalColumnas <= 25 Then
'        sLetra = Mid$("ABCDEFGHIJKLMNOPQRSTUVWXYZ", vTotalColumnas + 1, 1)
'    Else
'        i = Int(vTotalColumnas / 25)
'        sLetra = Mid$("ABCDEFGHIJKLMNOPQRSTUVWXYZ", i, 1) & _
'                        Mid$("ABCDEFGHIJKLMNOPQRSTUVWXYZ", vTotalColumnas - 24, 1)
'    End If
'    sFin = sLetra & CStr(cFIXEDROWS + lCant_Filas + 1)
'    'Selecciona las celdas
'    oHojaCal.Range(sInicio, sFin).Select
'    oHojaCal.Range(sInicio, sFin).Activate
'
'    sDatoSel = ""
'    lFilaCont = 0
'    lCopiaCont = 0
'
'    'For fila = 1 To prsDat.RecordCount
'    Do While Not prsDat.EOF
'        'Crea las filas que son enviadas a Excel. Cada fila esta delimitada por un Tab
'        sLinea = Trim(prsDat.Fields(0).Value)
'        For i = 1 To vTotalColumnas - 1
'            vValorCampo = IIf(IsNull(prsDat.Fields(i).Value), "", Trim(prsDat.Fields(i).Value))
'            If InStr(1, vValorCampo, vbCrLf) > 0 Then
'                vValorCampo = Replace(vValorCampo, vbCrLf, " ")
'            End If
'            sLinea = sLinea & vbTab & vValorCampo
'        Next i
'        'al terminar cada valor y con un retorno de carro y fin del linea.
'        sDatoSel = sDatoSel + sLinea + vbCrLf
'        lFilaCont = lFilaCont + 1   'Contador de filas insertadas.....
'        'Las filas son acumuladas en un bloke luego guardadas en un portapapeles
'        'y son pegadas en Excel de una vez.
'        'Pueden ser copiadas de a una pero toma mas tiempo.
'        If lFilaCont = cCLIPROWS Then 'Coloca un tope para bajar a Excel...
'            Clipboard.Clear
'            Clipboard.SetText sDatoSel
'            sDatoSel = ""
'            With oHojaCal
'                .Range("A" & CStr(lCopiaCont * cCLIPROWS + cFIXEDROWS)).Select
'                .Paste
'                .Range("A1").Select
'            End With
'            lFilaCont = 0
'            lCopiaCont = lCopiaCont + 1
'        End If
'        prsDat.MoveNext
'    Loop
'    'copia el último bloque que queda en memoria........
'    Clipboard.Clear
'    Clipboard.SetText sDatoSel
'    With oHojaCal
'        .Range("A" & CStr(lCopiaCont * cCLIPROWS + cFIXEDROWS)).Select
'        .Paste
'        .Range("A1").Select
'    End With
'    'Se puede cambiar el formado de las celdas.......
'    'Pero como no puedo obtener un template con formato, no sirve de nada que coloque fuente.
'    'Además se pueden crear formulas....
'    'oHojaCal.Cells(j, 1).Value = "=SUM(A" & CStr(cFIXEDROWS + 1) & ":A" & CStr(j - 1) & ")"
'    '****************************************************
'    'Se guardan los datos.
'    oLibExel.Save
'    oLibExel.Saved = True
'    'Terminan las relaciones con los objetos.........
'    oExcelApp.Quit
'    Set oHojaCal = Nothing
'    Set oLibExel = Nothing
'    Set oExcelApp = Nothing
'
'    Screen.MousePointer = vbDefault
'    MsgBox "La exportación de datos se realizó correctamente", vbInformation
'    Screen.MousePointer = vbHourglass
'    'Visualización del libro Excel..........
'    lresult = ShellExecute(hwnd, "open", sNuevo_Xls & vbNullChar, "", 0, SW_SHOWNORMAL)
'    Screen.MousePointer = vbDefault
'
'    Exit Sub
'
'ErrorGeneracion:
'    Screen.MousePointer = vbDefault
'    MsgBox Err.Description & " (" & CStr(Err.Number) & ")", vbExclamation, "Excel Export Example"
'    On Error Resume Next
'    oExcelApp.Quit
'    Set oHojaCal = Nothing
'    Set oLibExel = Nothing
'    Set oExcelApp = Nothing
'End Sub

Public Sub Exportar_A_PlanillaEXEL2(prsDat As ADODB.Recordset, _
                                    pTitulo_EnRS As Boolean, Optional pCabecera As String)
'Carga en una planilla excel los datos del recordset.
'Necesita un commondialog para crear archivos y si los Títulos de las columnas
'estan cargados en la primera fila del recordset
'El parámetro pcabecera sirve para esecificar la cabecera del listado. Nombre de las columnas
'separados por ";". Se deja la anterior forma de especificar la cabecera, por compatibilidad.

Dim lFilaCont   As Long                 'Se utiliza para contar las filas a insertar
Dim lCopiaCont  As Long                 'Se guarda la cantidad de copias realizada
Dim sLetra      As String               'Determina la última letra de la planilla
Dim sInicio     As String               'Determina la primera celda
Dim sFin        As String               'Determina la última celda
Dim sDatoSel    As String               'Guarda los datos a insertar en la planilla.
Dim oExcelApp   As Object               'Objeto Excel de aplicación
Dim oHojaCal    As Object               'Hoja de cálculo...
Dim oLibExel    As Object               'Libro de Exel
Dim lCant_Filas As Long                 'Cantidad de Filas a insertar.
Dim vTotalColumnas As Integer           'Cantidad de columnas a insertar.
Const cFIXEDROWS = 2                    'Fila donde empiezan los datos (La 1 es título)
Const cCLIPROWS = 50                    'Limite para bajar al archivo. (puede ser 500)
Dim sNuevo_Xls  As String               'Nuevo archivo xls.
Dim i           As Integer              'Índice
Dim vValorCampo As String               'Copia los valores para trabajarlos.
Dim vCabEnReg   As Boolean              'Especifica si la cabecera viene en el registro

    lCant_Filas = prsDat.RecordCount
    'Se coloca a partir de aca el control de error porque se crea los objetos.
    On Error GoTo ErrorGeneracion
    Screen.MousePointer = vbHourglass
    'Crea una instancia de excel invisible
    Set oExcelApp = CreateObject("EXCEL.APPLICATION")
    oExcelApp.Visible = False
    'Crea un Libro nuevo con 3 hojas de calculo por defecto
    oExcelApp.Workbooks.Add
    Set oHojaCal = oExcelApp.ActiveSheet
    Set oLibExel = oExcelApp.ActiveWorkbook

    'Guarda la plantilla con el nuveo nombre
    'oHojaCal.SaveAs sNuevo_Xls ', xlNormal
    'oLibExel.SaveAs sNuevo_Xls
    'oLibExel.SaveAs "C:\Archivos de programa\JS2000\Prueba.xls"
    
    'Determina la cantidad de columnas.
    vTotalColumnas = prsDat.Fields.Count
    
    'Marca si viene la cabecera del listada especificada fuera del registro, ya que
    'modifica el parámetro pcabecera dejándolo vacío
    prsDat.MoveFirst
    If pTitulo_EnRS And pCabecera <> "" Then
        vCabEnReg = True
    End If
    'Carga los títulos de las columnas
    For i = 1 To vTotalColumnas
        If pTitulo_EnRS = True Then
            If pCabecera = "" Then
                oHojaCal.Cells(1, i) = Trim(prsDat.Fields(i - 1).Value)
            Else
                If InStr(1, pCabecera, ";") > 0 Then
                    oHojaCal.Cells(1, i) = Mid(pCabecera, 1, InStr(1, pCabecera, ";") - 1)
                    pCabecera = Mid(pCabecera, InStr(1, pCabecera, ";") + 1)
                Else
                    oHojaCal.Cells(1, i) = pCabecera
                    pCabecera = ""
                End If
            End If
        Else
            oHojaCal.Cells(1, i) = prsDat.Fields(i - 1).Name
        End If
    Next i
    If pTitulo_EnRS = True And Not vCabEnReg Then
        prsDat.MoveNext
    End If

    'Llena el cuerpo de la hoja determinando el rango de celdas y cambiando el formato..
    sInicio = "A" & CStr(cFIXEDROWS + 1)
    If vTotalColumnas <= 25 Then
        sLetra = Mid$("ABCDEFGHIJKLMNOPQRSTUVWXYZ", vTotalColumnas + 1, 1)
    Else
        i = Int(vTotalColumnas / 25)
        sLetra = Mid$("ABCDEFGHIJKLMNOPQRSTUVWXYZ", i, 1) & _
                        Mid$("ABCDEFGHIJKLMNOPQRSTUVWXYZ", vTotalColumnas - 24, 1)
    End If
    sFin = sLetra & CStr(cFIXEDROWS + lCant_Filas + 1)
    'Selecciona las celdas
    oHojaCal.Range(sInicio, sFin).Select
    oHojaCal.Range(sInicio, sFin).Activate
    
    sDatoSel = ""
    lFilaCont = 0
    lCopiaCont = 0
    
    'For fila = 1 To prsDat.RecordCount
    Do While Not prsDat.EOF
        'Crea las filas que son enviadas a Excel. Cada fila esta delimitada por un Tab
        sLinea = Trim(prsDat.Fields(0).Value)
        For i = 1 To vTotalColumnas - 1
            If Not IsNull(prsDat.Fields(i).Value) Then
                If Not IsDate(prsDat.Fields(i).Value) Then
                    vValorCampo = Trim(prsDat.Fields(i).Value)
                Else
                    'Si el valor es de tipo fecha, asignarle el formato Mes/Día/Año,
                    'para que el EXCEL lo tome Día/Mes/Año correctamente. (Juan José 02/12/2005)
                    'Este if adicional impide que se asigne erróneamente el dato como una fecha
                    '(un caso específico de este error de asignación es "100,02", lo asignaba
                    'como "02/01/0100") - (Cristian Faccioli 24/02/2006)
                    If InStr(1, Trim(prsDat.Fields(i).Value), "/") <> 0 Then
                        vValorCampo = Format(prsDat.Fields(i).Value, "MM/DD/YYYY")
                    Else
                        vValorCampo = Trim(prsDat.Fields(i).Value)
                    End If
                End If
            Else
                vValorCampo = ""
            End If
            If InStr(1, vValorCampo, vbCrLf) > 0 Then
                vValorCampo = Replace(vValorCampo, vbCrLf, " ")
            End If
            sLinea = sLinea & vbTab & vValorCampo
        Next i
        'al terminar cada valor y con un retorno de carro y fin del linea.
        sDatoSel = sDatoSel + sLinea + vbCrLf
        lFilaCont = lFilaCont + 1   'Contador de filas insertadas.....
        'Las filas son acumuladas en un bloke luego guardadas en un portapapeles
        'y son pegadas en Excel de una vez.
        'Pueden ser copiadas de a una pero toma mas tiempo.
        If lFilaCont = cCLIPROWS Then 'Coloca un tope para bajar a Excel...
            Clipboard.Clear
            Clipboard.SetText sDatoSel
            sDatoSel = ""
            With oHojaCal
                .Range("A" & CStr(lCopiaCont * cCLIPROWS + cFIXEDROWS)).Select
                .Paste
                .Range("A1").Select
            End With
            lFilaCont = 0
            lCopiaCont = lCopiaCont + 1
            Clipboard.Clear
            
            If lCopiaCont Mod 10 = 0 Then
                ForzarEspera 1
            End If
        End If
        prsDat.MoveNext
    Loop
    'copia el último bloque que queda en memoria........
    Clipboard.Clear
    Clipboard.SetText sDatoSel
    With oHojaCal
        .Range("A" & CStr(lCopiaCont * cCLIPROWS + cFIXEDROWS)).Select
        .Paste
        .Range("A1").Select
    End With
    'Se puede cambiar el formado de las celdas.......
    'Pero como no puedo obtener un template con formato, no sirve de nada que coloque fuente.
    'Además se pueden crear formulas....
    'oHojaCal.Cells(j, 1).Value = "=SUM(A" & CStr(cFIXEDROWS + 1) & ":A" & CStr(j - 1) & ")"
    '****************************************************
    
    'Se guardan los datos.
    'oLibExel.Save
    'oLibExel.Saved = True
    
    'Terminan las relaciones con los objetos.........
    
    
    Screen.MousePointer = vbDefault
    MsgBox "La exportación de datos se realizó correctamente", vbInformation
    'Visualiza la aplicación EXCEL
    oExcelApp.Visible = True
    
    'No se si se debería cerrar...
    'oExcelApp.Quit
    Set oHojaCal = Nothing
    Set oLibExel = Nothing
    Set oExcelApp = Nothing
    
    'Screen.MousePointer = vbHourglass
    ''Visualización del libro Excel..........
    'lresult = ShellExecute(hwnd, "open", sNuevo_Xls & vbNullChar, "", 0, SW_SHOWNORMAL)

    Exit Sub
    
ErrorGeneracion:
    Screen.MousePointer = vbDefault
    MsgBox Err.Description & " (" & CStr(Err.Number) & ")", vbExclamation, "Excel Export Example"
    On Error Resume Next
End Sub

Public Sub Exportar_A_Planilla(prsDat As ADODB.Recordset, pTitulo As Boolean, Optional pCabecera As String) ', Optional FormatDate As String = "MM/DD/YYYY")
'Carga en una planilla excel los datos del recordset.
'pTitulo indica si se pasa la fila con nombres de campos.
'El parámetro pCabecera sirve para especificar la cabecera del listado. Nombre de las columnas
'separados por ";". Se deja la anterior forma de especificar la cabecera(a través de la primer fila del registro),
'por compatibilidad
'Las formas de especificación de la cabecera son exclusivas, es decir, si se pasa a través del parámetro pCabecera, no
'debe incluirse en el registro

Dim oExcelApp As Object 'Objeto Excel de aplicación

    'Se coloca a partir de acá el control de error porque se crea los objetos
    On Error GoTo ErrorGeneracion
        
    'Crea una instancia de excel invisible
    Set oExcelApp = CreateObject("EXCEL.APPLICATION")
    ExportarAExcel oExcelApp, prsDat, pTitulo, pCabecera ', FormatDate
    
    Exit Sub
    
ErrorGeneracion:
    If Err.Number = 429 Then
        ExportarAOpenOffice prsDat, pTitulo, pCabecera
    Else
        Screen.MousePointer = vbDefault
        MsgBox Err.Description & " (" & CStr(Err.Number) & ")", vbExclamation
    End If

End Sub

Private Sub ExportarAExcel(oExcelApp As Object, prsDat As ADODB.Recordset, pTitulo As Boolean, _
                            Optional pCabecera As String, Optional FormatDate As String = "MM/DD/YYYY")
Dim lFilaCont   As Long                 'Se utiliza para contar las filas a insertar
Dim lCopiaCont  As Long                 'Se guarda la cantidad de copias realizada
Dim sLetra      As String               'Determina la última letra de la planilla
Dim sInicio     As String               'Determina la primera celda
Dim sFin        As String               'Determina la última celda
Dim sDatoSel    As String               'Guarda los datos a insertar en la planilla
Dim oHojaCal    As Object      'Hoja de cálculo...
Dim oHojaCal2 As Object
Dim oLibExel    As Object       'Libro de Exel
Dim lCant_Filas As Long                 'Cantidad de Filas a insertar
Dim vTotalColumnas As Integer           'Cantidad de columnas a insertar
Const cFIXEDROWS = 2                    'Fila donde empiezan los datos (La 1 es título)
Const cCLIPROWS = 50                    'Limite para bajar al archivo. (puede ser 500)
Const cMAXROWSPERSHEET = 65000           'Límite de líneas por hoja
Dim sNuevo_Xls  As String               'Nuevo archivo xls
Dim i           As Integer              'Índice
Dim vValorCampo As String               'Copia los valores para trabajarlos
Dim vCabEnReg   As Boolean              'Especifica si la cabecera viene en el registro
Dim vActualizar As Boolean  'Impide volver a actualizar una variable
Dim vCambioHoja As Boolean  'Para saber si cambié de hoja

    vActualizar = True
    vCambioHoja = False
    
    Screen.MousePointer = vbHourglass
    
    lCant_Filas = prsDat.RecordCount

    oExcelApp.Visible = False
    
    'Crea un Libro nuevo con 3 hojas de calculo por defecto
    oExcelApp.Workbooks.Add
    
    Set oHojaCal = oExcelApp.ActiveSheet
    Set oLibExel = oExcelApp.ActiveWorkbook
    Set oHojaCal2 = oExcelApp.Sheets(2)
    
    oHojaCal.Name = "Nativo"
    oHojaCal2.Name = "Nativo2"
    oExcelApp.Sheets(3).Name = "Nativo3" 'Coloca el nombre a la hoja 3
    
    'En la oHojaCal2 se debìa colocar los datos que desbordan de la hoja 1
    
    'Determina la cantidad de columnas.
    vTotalColumnas = prsDat.Fields.Count
    
    'Marca si viene la cabecera del listado especificada fuera del registro, ya que
    'modifica el parámetro pcabecera dejándolo vacío
    prsDat.MoveFirst
    If pTitulo And pCabecera <> "" Then
        vCabEnReg = True
    End If
    'Carga los títulos de las columnas
    For i = 1 To vTotalColumnas
        If pTitulo = True Then
            If pCabecera = "" Then
                oHojaCal.Cells(1, i) = Trim(prsDat.Fields(i - 1).Value)
                If lCant_Filas >= cMAXROWSPERSHEET Then
                    oHojaCal2.Activate 'Activa la hoja 2
                    oHojaCal2.Cells(1, i) = oHojaCal.Cells(1, i)
                    oHojaCal.Activate   'Vuelve a activar la 1
                End If
            Else
                If InStr(1, pCabecera, ";") > 0 Then
                    oHojaCal.Cells(1, i) = Mid(pCabecera, 1, InStr(1, pCabecera, ";") - 1)
                    pCabecera = Mid(pCabecera, InStr(1, pCabecera, ";") + 1)
                    If lCant_Filas >= cMAXROWSPERSHEET Then
                        oHojaCal2.Activate
                        oHojaCal2.Cells(1, i) = oHojaCal.Cells(1, i)
                        oHojaCal.Activate
                    End If
                Else
                    oHojaCal.Cells(1, i) = pCabecera
                    pCabecera = ""
                    If lCant_Filas >= cMAXROWSPERSHEET Then
                        oHojaCal2.Activate
                        oHojaCal2.Cells(1, i) = oHojaCal.Cells(1, i)
                        oHojaCal.Activate
                    End If
                End If
            End If
        Else
            oHojaCal.Cells(1, i) = prsDat.Fields(i - 1).Name
            If lCant_Filas >= cMAXROWSPERSHEET Then
                oHojaCal2.Activate
                oHojaCal2.Cells(1, i) = oHojaCal.Cells(1, i)
                oHojaCal.Activate
            End If
        End If
    Next i
    If pTitulo = True And Not vCabEnReg Then
        prsDat.MoveNext
    End If
    
    'Llena el cuerpo de la hoja determinando el rango de celdas y cambiando el formato..
    sInicio = "A" & CStr(cFIXEDROWS + 1)
    If vTotalColumnas <= 25 Then
        sLetra = Mid$("ABCDEFGHIJKLMNOPQRSTUVWXYZ", vTotalColumnas + 1, 1)
    Else
        i = Int(vTotalColumnas / 25)
        sLetra = Mid$("ABCDEFGHIJKLMNOPQRSTUVWXYZ", i, 1) & _
                        Mid$("ABCDEFGHIJKLMNOPQRSTUVWXYZ", vTotalColumnas - 24, 1)
    End If
    If lCant_Filas < cMAXROWSPERSHEET Then
        sFin = sLetra & CStr(cFIXEDROWS + lCant_Filas + 1)
    Else
        sFin = sLetra & CStr(cMAXROWSPERSHEET)
    End If
    'Selecciona las celdas
    oHojaCal.Range(sInicio, sFin).Select
    oHojaCal.Range(sInicio, sFin).Activate
    
'    oHojaCal2.Range(sInicio, "X100").Select
'    oHojaCal2.Range(sInicio, "X100").Activate
    
    sDatoSel = ""
    lFilaCont = 0
    lCopiaCont = 0
    
    Do While Not prsDat.EOF
        'Crea las filas que son enviadas a Excel. Cada fila esta delimitada por un Tab
        If ValidoMask_Fecha(Trim(prsDat.Fields(0).Value)) Then
        'If IsDate(Trim(prsDat.Fields(0).Value)) Then
            sLinea = Format(prsDat.Fields(0).Value, FormatDate)
        Else
            sLinea = Trim(prsDat.Fields(0).Value)
        End If
        For i = 1 To vTotalColumnas - 1
            If Not IsNull(prsDat.Fields(i).Value) Then
                If Not IsDate(prsDat.Fields(i).Value) Then
                    vValorCampo = Trim(prsDat.Fields(i).Value)
                Else
                    'Si el valor es de tipo fecha, asignarle el formato Mes/Día/Año,
                    'para que el EXCEL lo tome Día/Mes/Año correctamente
                    
                    'Este if adicional impide que se asigne erróneamente el dato como una fecha
                    '(un caso específico de este error de asignación es "100,02", lo asignaba
                    'como "02/01/0100")
                    'If InStr(1, Trim(prsDat.Fields(i).Value), "/") <> 0 Then
                    If IsDate(Trim(prsDat.Fields(i).Value)) Then
                        vValorCampo = Format(prsDat.Fields(i).Value, FormatDate)
                    Else
                        vValorCampo = Trim(prsDat.Fields(i).Value)
                    End If
                End If
            Else
                vValorCampo = ""
            End If
            If InStr(1, vValorCampo, vbCrLf) > 0 Then
                vValorCampo = Replace(vValorCampo, vbCrLf, " ")
            End If
            sLinea = sLinea & vbTab & vValorCampo
        Next i
        'Al terminar cada valor y con un retorno de carro y fin del línea
        sDatoSel = sDatoSel + sLinea + vbCrLf
        lFilaCont = lFilaCont + 1   'Contador de filas insertadas.....
        'Las filas son acumuladas en un bloque luego guardadas en un portapapeles
        'y son pegadas en Excel de una vez
        'Pueden ser copiadas de a una pero toma mas tiempo
        If lFilaCont = cCLIPROWS Then 'Coloca un tope para bajar a Excel...
            Clipboard.Clear
            Clipboard.SetText sDatoSel
            sDatoSel = ""
            If ((lCopiaCont * cCLIPROWS + cFIXEDROWS) >= cMAXROWSPERSHEET) Then
                If vActualizar Then
                    oHojaCal2.Activate
                    lCopiaCont = 0
                    vCambioHoja = True
                    vActualizar = False
                End If
            End If
            If Not vCambioHoja Then
                With oHojaCal
                    .Range("A" & CStr(lCopiaCont * cCLIPROWS + cFIXEDROWS)).Select
                    .Paste
                    .Range("A1").Select
                End With
            Else
                With oHojaCal2
                    .Range("A" & CStr(lCopiaCont * cCLIPROWS + cFIXEDROWS)).Select
                    .Paste
                    .Range("A1").Select
                End With
            End If
            lFilaCont = 0
            lCopiaCont = lCopiaCont + 1
            Clipboard.Clear
            
            If lCopiaCont Mod 10 = 0 Then
                ForzarEspera 1
            End If
        End If
        prsDat.MoveNext
    Loop
    'Copia el último bloque que queda en memoria........
    Clipboard.Clear
    Clipboard.SetText sDatoSel
    If Not vCambioHoja Then
        With oHojaCal
            .Range("A" & CStr(lCopiaCont * cCLIPROWS + cFIXEDROWS)).Select
            .Paste
            .Range("A1").Select
        End With
    Else
        With oHojaCal2
            .Range("A" & CStr(lCopiaCont * cCLIPROWS + cFIXEDROWS)).Select
            .Paste
            .Range("A1").Select
        End With
    End If
    
    Screen.MousePointer = vbDefault
    MsgBox "La exportación de datos se realizó correctamente", vbInformation
    'Visualiza la aplicación EXCEL
    oExcelApp.Visible = True
    
    
    'No se si se debería cerrar...
    'oExcelApp.Quit
    Set oHojaCal = Nothing
    Set oLibExel = Nothing
    Set oExcelApp = Nothing

End Sub

Public Sub ExportarAOpenOffice(prsDat As ADODB.Recordset, pTitulo As Boolean, Optional pCabecera As String)
Dim oServManager As Object
Dim oDesktop As Object
Dim oDocument As Object
Dim oFrame As Object
Dim oWindow As Object
Dim oSheets As Object
Dim oSheet As Object
Dim oCell As Object
Dim aNoArgs()
Dim vUrl As String
Dim vValCell As String
Dim vRow As Integer
Dim vCabEnReg As Boolean

    On Error GoTo ErrorOO
    
    Set oServManager = CreateObject("com.sun.star.servicemanager")
    Set oDesktop = oServManager.CreateInstance("com.sun.star.frame.Desktop")
    'Crear una hoja nueva en blanco
    vUrl = "private:factory/scalc"
    'sUrl = <RUTA_DEL_ARCHIVO> (Recordar, en formato URL: file:///C|ruta/nombre_archivo)
    Set oDocument = oDesktop.LoadComponentFromURL(vUrl, "_blank", 0, aNoArgs)
    'Oculta Calc
    Set oFrame = oDesktop.ActiveFrame
    Set oWindow = oFrame.GetContainerWindow
    oWindow.SetVisible (False)
    '-----------
    Set oSheets = oDocument.Sheets()
    Set oSheet = oSheets.getByIndex(0)
    '-------------------------------------------------------------------------------------------------------------
    'Set oCell = oSheet.GetCellByPosition(2, 0) 'Nos situamos en la celda 2, 0 (Fila 1, columna C,
                                                'OpenOffice empieza a contar en 0, no como Excel que empieza en 1)
    'vValCell = oCell.String                    'Leemos el valor de una celda
    '-------------------------------------------------------------------------------------------------------------
    Screen.MousePointer = vbHourglass
    
    'Marca si viene la cabecera del listada especificada fuera del registro, ya que
    'modifica el parámetro pcabecera dejándolo vacío
    prsDat.MoveFirst
    vRow = 0
    'Carga los títulos de las columnas
    For i = 0 To prsDat.Fields.Count - 1
        If pTitulo = True Then
            If pCabecera = "" Then
                If IsNull(prsDat.Fields(i).Value) Then
                    vValCell = ""
                Else
                    vValCell = Trim(prsDat.Fields(i).Value)
                End If
            Else
                If InStr(1, pCabecera, ";") > 0 Then
                    vValCell = Mid(pCabecera, 1, InStr(1, pCabecera, ";") - 1)
                    pCabecera = Mid(pCabecera, InStr(1, pCabecera, ";") + 1)
                Else
                    vValCell = pCabecera
                    pCabecera = ""
                End If
            End If
            Set oCell = oSheet.GetCellByPosition(i, vRow) 'Columna, Fila
            oCell.String = vValCell
        Else
            Set oCell = oSheet.GetCellByPosition(i, vRow) 'Columna, Fila
            oCell.String = prsDat.Fields(i).Name
        End If
    Next i
'    If pTitulo = True And Not vCabEnReg Then
    If pTitulo = True Then
        prsDat.MoveNext
    End If
    vRow = vRow + 1
    'Carga de datos
    Do While Not prsDat.EOF
        For i = 0 To prsDat.Fields.Count - 1
            If IsNull(prsDat.Fields(i).Value) Then
                vValCell = ""
            Else
                vValCell = Trim(prsDat.Fields(i).Value)
            End If
            Set oCell = oSheet.GetCellByPosition(i, vRow) 'Columna, Fila
            oCell.String = vValCell
        Next i
        
        prsDat.MoveNext
        vRow = vRow + 1
    Loop
   
   Screen.MousePointer = vbDefault
   oWindow.SetVisible (True)
   Exit Sub

ErrorOO:
    Screen.MousePointer = vbDefault
    MsgBox Err.Description & " (" & CStr(Err.Number) & ")", vbExclamation

End Sub

Public Sub RecuperarImagen(pRS As ADODB.Recordset, pIndCampo As Integer, Optional pNom_Arch As String)
'El procedimiento lee el campo señalado por pIndCampo (índice del campo) y crea un archivo
'en disco, con un nombre temporal (_imgjs.jpg) en el directorio en donde se está ejecutando
'la aplicación. Si se especifica pNom_Arch, el nombre temporal del archivo será ese.
Dim NroArch As Long
Dim fl As Long
Dim Chunks As Integer
Dim varChunk() As Byte
Dim fragmento As Long
Dim i As Long
Dim vTipoArch As String * 3

    NroArch = FreeFile
    'Creación de archivo binario
    'Open App.Path & "\_imgjs.tmp" For Binary Access Write As NroArch
    If pNom_Arch = "" Then
        Open App.path & "\_imgjs.jpg" For Binary Access Write As NroArch
    Else
        If InStrRev(pNom_Arch, ".") = 0 Then
            Open App.path & "\" & pNom_Arch & ".jpg" For Binary Access Write As NroArch
        Else
            Open App.path & "\" & pNom_Arch For Binary Access Write As NroArch
        End If
    End If
    If pRS.RecordCount > 0 Then
        fl = pRS.Fields(pIndCampo).ActualSize
        If fl > 0 Then
            Chunks = fl \ 16384
            fragmento = fl Mod 16384
            If fragmento > 0 Then
                'Recupera y graba en el archivo fragmento menor a 2K
                ReDim varChunk(fragmento)
                varChunk() = pRS.Fields(pIndCampo).GetChunk(fragmento)
                Put NroArch, , varChunk()
            End If
            'Fragmentos de 2K
            ReDim varChunk(16384)
            For i = 1 To Chunks
                varChunk() = pRS.Fields(pIndCampo).GetChunk(16384)
                Put NroArch, , varChunk()
            Next i
        Else
            MsgBox "No existen imagen asociada", vbCritical
        End If
    End If
    Close NroArch
    
End Sub

Public Sub GrabarImagen(pRuta As String, pRS As ADODB.Recordset, pCampo As Field, _
                                                                    ByRef pImgIns As Boolean)
'Guarda un archivo de imagen que se encuentra en el directorio pRuta, en el campo pCampo.
Dim NroArch As Long
Dim fl As Long
Dim Chunks As Integer
Dim varChunk() As Byte
Dim fragmento As Long
Dim i As Long

    'Comunica si la imagen fue insertada
    pImgIns = False
    If pCampo.Type = 205 Then
        NroArch = FreeFile
        On Error GoTo ErrArch
        Open pRuta For Binary Access Read As NroArch
        fl = LOF(NroArch)
        If fl > 0 Then
            Chunks = fl \ 16384
            fragmento = fl Mod 16384
            'Guarda el resto (fragmento menor a 2K)
            ReDim varChunk(fragmento)
            Get NroArch, , varChunk()
            pCampo.AppendChunk varChunk()
            'Guarda fragmentos de 2K
            ReDim varChunk(16384)
            For i = 1 To Chunks
                Get NroArch, , varChunk()
                pCampo.AppendChunk varChunk()
            Next i
            pImgIns = True
        Else
            MsgBox "Archivo vacío", vbCritical
        End If
        Close NroArch
    End If
    Exit Sub
    
ErrArch:
    pImgIns = False

End Sub

Public Sub GrabarImagenWeb(pRuta As String, pRS As ADODB.Recordset, pCampo As Field, _
                                                                    ByRef pImgIns As Boolean, pNomArch As String)
'Guarda un archivo de imagen que se encuentra en el directorio pRuta, en el campo pCampo, con el nombre pNomArch
Dim NroArch As Long
Dim fl As Long
Dim Chunks As Integer
Dim varChunk() As Byte
Dim fragmento As Long
Dim i As Long

    'Comunica si la imagen fue insertada
    pImgIns = False
    If pCampo.Type = 205 Then
        NroArch = FreeFile
        On Error GoTo ErrArch
        Open pRuta For Binary Access Read As NroArch
        fl = LOF(NroArch)
        If fl > 0 Then
            Chunks = fl \ 16384
            fragmento = fl Mod 16384
            'Guarda el resto (fragmento menor a 2K)
            ReDim varChunk(fragmento)
            Get NroArch, , varChunk()
            pCampo.AppendChunk varChunk()
            'Guarda fragmentos de 2K
            ReDim varChunk(16384)
            For i = 1 To Chunks
                Get NroArch, , varChunk()
                pCampo.AppendChunk varChunk()
            Next i
            pImgIns = True
                      
        Else
            MsgBox "Archivo vacío", vbCritical
        End If
        Close NroArch
        If pImgIns Then
                'Ahora grabamos la imagen temporal en el servidor Web
                FileCopy pRuta, "C:\Inetpub\wwwroot\JS_Web\apwJSWeb\ImagenesEComerce\" & pNomArchivo & ".jpg"
        End If
    End If
    Exit Sub
    
ErrArch:
    pImgIns = False

End Sub

Public Function GrillaVacia(pFlex As MSFlexGrid) As Boolean
'Evalua si una grilla que se considera que tiene una fila de titulos tiene o no filas de datos
    
    If pFlex.Rows > 1 Then
        GrillaVacia = False
    Else
        GrillaVacia = True
    End If
End Function

Public Function FormatearStr(pCadInt As String, pTpoFto As TpoFtoStr) As String
'Formatea textos a diferentes estilos

    If pTpoFto = aPesos Then
        FormatearStr = Format(pCadInt, "#######.00")
    ElseIf pTpoFto = aPesosConSgn Then
        FormatearStr = Format(pCadInt, "$#######.00")
    ElseIf pTpoFto = aCantDosDec Then
        FormatearStr = Format(pCadInt, "########.00")
    End If
    
End Function

Public Function EsSuperUsuario(IdUsr As Long) As Boolean

Dim rs As New ADODB.Recordset

    EsSuperUsuario = False
    vcadsql = "SELECT ujs_supusu From sisUSUARIOS_JS2000 WHERE ujs_idesec =" & IdUsr
    Set rs = objCnxAeros.TraerRecordSet(vcadsql, adCmdText)
    If objCnxAeros.pCanReg > 0 Then
        If Not IsNull(rs!ujs_supusu) Then
            EsSuperUsuario = True
        End If
    End If
    
End Function

Public Function AsignarValor(pDato As Variant, Optional ptipo As TipoDatoPrimario, Optional pDev_ValorXDefecto As Variant) As Variant
    'Asignar = IIf(IsNull(pVariable), "", pVariable)
'Esta función es para evitar la asignación de null a un objeto, ejemplo en rs!det_des tiene nulo y se lo tiene
'que asignar a txt_det_des, entonces se llama la función AsignarValor(rs!det_des, eCadena, True)
Dim vDevNull As Boolean
    
    'Devuelve el mismo valor si no es nulo
    'En caso de ser nulo devuelve el valor asumido como vacio para el tipo de dato
    'OJO con el tema fecha devuelve ""
    If Not IsMissing(pDev_ValorXDefecto) Then
        vDevNull = True
    Else
        vDevNull = False
    End If
    
    If IsNull(pDato) Or vDevNull Then
        If ptipo = eNumerico Then
            AsignarValor = 0
        ElseIf ptipo = eFecha Then
            AsignarValor = ""
        ElseIf ptipo = eLogico Then
            AsignarValor = False
        Else
            AsignarValor = ""
        End If
    Else
        AsignarValor = pDato
    End If
    
End Function


Public Function MostrarError(detalle As String, NumError As Long, DesError As String) As String
    MostrarError = "Se produjo un error!" & _
                   vbCrLf & vbCrLf & detalle & vbCrLf & _
                   vbCrLf & "Error n°: " & NumError & _
                   vbCrLf & DesError
End Function

Public Sub ForzarEspera(pCantSeg As Integer)
'Fuerza la espera por unos segundos
Dim vHoraActual As Date
Dim vInicio As Boolean

    'vHoraActual = Now
    vHoraActual = Time
    vInicio = False
    Do While Not vInicio = True
        'Debug.Print DateAdd("s", pCantSeg, vHoraActual)
        If (DateAdd("s", pCantSeg, vHoraActual)) < Time Then
            vInicio = True
        End If
    Loop

End Sub

Public Sub ExportarGrillaAExcelNueva(ByRef pGrilla As MSFlexGrid, Optional ByVal pExportarColumnasOcultas As Boolean)
'el parametro pExportarColumnasOcultas por defecto es false y se tiene que pasar en true solo si se quiere que salgan las columnas ocultas en el listado.
Dim vFil As Long
Dim vCol As Long
Dim j As Long
Dim oExcelApp As Object 'Objeto que voy a utilizar para crear el objeto Excel de aplicación
Dim oLibro As Object       'Libro de Exel
Dim oHoja As Object      'Hoja de cálculo...

    On Error GoTo ErrorHandler
    'Terminar si la grilla no tiene filas.
    If Not pGrilla.Rows > 1 Then
        Exit Sub
    End If

    'creo una nueva instancia de excel
    With pGrilla
        Screen.MousePointer = vbHourglass
        'Crea una instancia de excel invisible
        Set oExcelApp = CreateObject("EXCEL.APPLICATION")
        Set oLibro = oExcelApp.Workbooks.Add
        Set oHoja = oLibro.Worksheets(1) 'oExcelApp.ActiveSheet
        'recorro la grilla.
        For vFil = 0 To (.Rows - 1)
            j = 0
            For vCol = 0 To (.Cols - 1)
                If pExportarColumnasOcultas Or .ColWidth(vCol) > 0 Then
                    j = j + 1
                    If pGrilla.CellBackColor = vbRed Then
                        oHoja.Cells(vFil + 1, j).Interior.ColorIndex = 3
                    End If
                    If pGrilla.CellBackColor = vbYellow Then
                        oHoja.Cells(vFil + 1, j).Interior.ColorIndex = 6
                    End If
                    oHoja.Cells(vFil + 1, j) = Trim(.TextMatrix(vFil, vCol))
                End If
            Next vCol
        Next vFil
        Screen.MousePointer = vbDefault
        MsgBox "La exportación de datos se realizó correctamente", vbInformation
        'Visualiza la aplicación EXCEL
        oExcelApp.Visible = True
        'Libero los objetos
        Set oHojaCal = Nothing
        Set oLibExel = Nothing
        Set oExcelApp = Nothing
    End With
    Exit Sub
ErrorHandler:
    'MsgBox "No podra ejecutar este metodo si no tiene el excel instalado en su pc."
    ExportarGrillaAExcel pGrilla, pExportarColumnasOcultas
End Sub

Public Sub ExportarGrillaAExcel(pGrilla As MSFlexGrid, pExportarColumnasOcultas As Boolean)
Dim vFil As Long
Dim vCol As Long
Dim rs As New ADODB.Recordset
    
    'Terminar si la grilla no tiene filas
    If Not pGrilla.Rows > 1 Then
        Exit Sub
    End If
    
    With pGrilla
        Screen.MousePointer = vbHourglass
        'Armar recordset
        For vCol = 0 To (.Cols - 1)
            rs.Fields.Append Trim(.TextMatrix(0, vCol)), adVarChar, 250
        Next vCol
        rs.Open
        
        'Cargar recordset
        For vFil = 1 To (.Rows - 1)
            rs.AddNew
            For vCol = 0 To (.Cols - 1)
                If pExportarColumnasOcultas = True Then
                    rs.Fields(vCol).Value = .TextMatrix(vFil, vCol)
                Else
                    If Not .ColWidth(vCol) < 2 Then
                        rs.Fields(vCol).Value = .TextMatrix(vFil, vCol)
                    Else
                        rs.Fields(vCol).Value = ""
                    End If
                End If
            Next vCol
            rs.Update
        Next vFil
        Screen.MousePointer = vbDefault
        
        Exportar_A_Planilla rs, False
    End With

End Sub

Public Function MoverFila(pGrilla As MSFlexGrid, pFilaActual As Integer, pSubir As Boolean, pEncabezado As Boolean) As Boolean
'Mueve una fila de una FlexGrid hacia arriba o abajo
Dim vCadAux As String
Dim i As Integer
Dim vexito As Boolean
Dim vLimiteSuperior As Integer
Dim vNuevaFila As Integer
    
    If pEncabezado Then
        vLimiteSuperior = 1
    Else
        vLimiteSuperior = 0
    End If
    
    vexito = False
    If ((pFilaActual = vLimiteSuperior) And pSubir) Then
        ' no se puede realizar la operacion
    ElseIf ((pFilaActual = pGrilla.Rows - 1) And Not pSubir) Then
        ' no se puede realizar la operacion
    Else
        If pSubir = True Then
            vNuevaFila = pFilaActual - 1
        Else
            vNuevaFila = pFilaActual + 1
        End If
        For i = 0 To pGrilla.Cols - 1
            'Tomar los valores de la fila destino
            vCadAux = pGrilla.TextMatrix(vNuevaFila, i)
            'Asignar valores a la fila destino
            pGrilla.TextMatrix(vNuevaFila, i) = pGrilla.TextMatrix(pFilaActual, i)
            'Cambiar valores de la fila origen por los valores de las filas destinos almacenados
            pGrilla.TextMatrix(pFilaActual, i) = vCadAux
        Next
        pGrilla.Row = vNuevaFila
        vexito = True
    End If
    MoverFila = vexito
End Function

Public Sub SeleccionarFila(pGrilla As MSFlexGrid, pfila As Integer)
'Esta funcion marca como seleccionada una fila
Dim i As Integer
Dim j As Integer
    
    pGrilla.Col = 0
    For i = 1 To (pGrilla.Rows - 1)
        For j = 0 To pGrilla.Cols - 1
            pGrilla.Col = j
            pGrilla.Row = i
            pGrilla.CellBackColor = vbWhite
            If i = pfila Then
                pGrilla.CellBackColor = &HC07510
            End If
        Next
    Next
    pGrilla.Row = pfila
End Sub

Public Sub administrarFlex(msFlex As MSFlexGrid, KeyAscii As Integer, Optional blnCampoNumerico As Boolean = False)
Dim blnControlarCambioFila As Boolean

    With msFlex
        If KeyAscii = 13 Then 'si es un enter tiene que ir pasando de columna o de fila.
            If .Col <> .Cols - 1 Then 'si no es la ultima columna
                .Col = .Col + 1
                If .ColWidth(.Col) = 0 Then 'verifico que no sea una columna escondida.
                    While .ColWidth(.Col) = 0 And .Col <> .Cols - 1 'mientras se pase por columnas escondidas se sigue
                        .Col = .Col + 1
                    Wend
                    If .ColWidth(.Col) = 0 Then
                        blnControlarCambioFila = True
                    End If
                End If
            Else
                blnControlarCambioFila = True
            End If
            'vuelvo a preguntar lo mismo de arriba porque es puede haber entrado en el while
            If blnControlarCambioFila Then
                If .Col = .Cols - 1 Then
                    If .Row <> .Rows - 1 Then
                        .Row = .Row + 1
                        .Col = 0
                        While .ColWidth(.Col) = 0
                            .Col = .Col + 1
                        Wend
                    End If
                End If
            End If
        Else
            If KeyAscii = 8 Then 'si es el backspace tengo que eliminar un caracter, caso contrario tengo que agregar el caracter al textmatrix correspondiente.
                .TextMatrix(.Row, .Col) = Mid(.TextMatrix(.Row, .Col), 1, Len(.TextMatrix(.Row, .Col)) - 1)
            Else
                If blnCampoNumerico Then 'si el campo solo acepta valores numericos tengo que controlar que caracter es el que me llega y si no esta dentro de los que se pueden aceptar como numericos lo cambio a "" que es el ascii 0
                    If Not (IsNumeric(Chr(KeyAscii)) Or Chr(KeyAscii) = "." Or Chr(KeyAscii) = ",") Then
                        KeyAscii = 0
                    End If
                End If
                .TextMatrix(.Row, .Col) = .TextMatrix(.Row, .Col) & Chr(KeyAscii)
            End If
        End If
    End With

End Sub

Public Function Connect(ByVal path As String, ByRef cnMvConnection As ADODB.Connection) As Boolean

On Error GoTo ErrorHandler
    Connect = False
    Set cnMvConnection = New ADODB.Connection
    With cnMvConnection
      .Provider = "Microsoft.Jet.OLEDB.4.0"
      .ConnectionString = "Data Source=" & path & ";Extended Properties=Excel 8.0;"
      .Open
    End With
    Connect = True
    Exit Function
ErrorHandler:

End Function

Public Function GetExcelData(ByVal cnMvConnection As ADODB.Connection, ByRef rs As ADODB.Recordset, Optional ByVal hoja As String = "Hoja1") As Boolean

On Error GoTo ErrorHandler
    GetExcelData = False
    Set rs = New ADODB.Recordset
    With rs
        .ActiveConnection = cnMvConnection
        .CursorLocation = adUseClient
        .CursorType = adOpenStatic
        .LockType = adLockReadOnly
        .Source = "SELECT * FROM [" & hoja & "$]"
        .Open
    End With
    GetExcelData = True
    Exit Function
ErrorHandler:

End Function

'controlar bien este metodo. Dejarlo mejor.
Public Function CargarExcel(ByVal rs As Recordset, ByVal mostrarEncabezado As Integer, Optional ByVal cantCampos As Integer = 0, Optional ByVal filIni As Integer = 1, Optional ByVal colIni As Integer = 1) As Boolean
'si se le pasa que muestre el encabezado, entonces no es necesario que se le pase la cantidad de campos, ya que va a poner todos los campos.
'Si no se le pasa que muetre el encabezado (nombre de las columnas, entonces si es necesario la cantidad de campos.
'con respecto a la fila ini y columna ini es para indicarle desde que columna y fila del excel empezar a poner la info.
'O sea es con respecto a excel, no con respecto al recorset.
'el parametro camposFechas es un string separado por comas con los numeros de campos que habria que formatearlos como fecha. Ya que estos se los tiene que tratar como un caso especial.

Dim Excel As Object
Dim libro As Object
Dim hoja As Object
Dim exito As Boolean
Dim c As Integer
Dim f As Integer

On Error GoTo ErrorHandler
    
    exito = True
    Set libro = Excel.Workbooks.Add
    Set hoja = libro.Worksheets(1)
    Excel.Visible = True

    f = filIni
    If exito Then
        If mostrarEncabezado Then 'en esta parte se arma el encabezado(nombre de las columnas) del excel
            With rs
                For c = 0 To .Fields.Count - 1
                    hoja.Cells(f, c + colIni) = .Fields(c).Name
                Next
                cantCampos = .Fields.Count
            End With
            f = f + 1
        End If
        With rs
            Do While Not .EOF 'en esta parte se carga el cuerpo del excel
                For c = 0 To cantCampos - 1
                    If IsDate(.Fields(c)) Then
                        hoja.Cells(f, c + colIni).NumberFormatLocal = "dd/mm/yyyy"
                        hoja.Cells(f, c + colIni).Value = .Fields(c) 'Day(.Fields(C)) & "/" & Month(.Fields(C)) & "/" & Year(.Fields(C)) 'Format(.Fields(C), "DD/MM/YYYY")
                    Else
                        hoja.Cells(f, c + colIni).Value = .Fields(c)
                    End If
                Next c
                .MoveNext
                f = f + 1
            Loop
        End With
        hoja.Cells.Select
        hoja.Cells.EntireColumn.AutoFit
        hoja.Cells(2, 1).Select
    End If
    CargarExcel = exito
    Exit Function
ErrorHandler:
    exito = False
    Resume Next
End Function

'==========================================================================================================
'Esta función paso a Reportes comunes.
'Public Function PublicanInfoEnWeb(pper_idesec As Long) As Boolean
'Dim oPer As New clsDE_Personas
'
'    PublicanInfoEnWeb = False
'    oPer.sel_DATOS_DE_PUBLICACION_WEB pper_idesec
'    If oPer.pCanReg > 0 Then
'        PublicanInfoEnWeb = True
'    Else
'        oPer.sel_PublicacionPorTitular soc_idesec_DeUnaPersona(pper_idesec)
'        If oPer.pCanReg > 0 Then
'            PublicanInfoEnWeb = True
'        End If
'    End If
'
'End Function

Public Function RetornoLinea() As String
    RetornoLinea = Chr(13) & Chr(10)
End Function


Public Function HijoDeNodo(trvArbol As TreeView, Nod As Node, subKey As String) As Node
' Devuelve un Nodo Hijo de Nod que tenga la cadena subKey en la Key
' Si no encuentra devuelve Nod
' Nod es un nodo del arbol trvArbol

    Dim nodHijo As Node
    Dim j As Integer
    
    Set HijoDeNodo = Nod
    
    If Nod.Children = 0 Then
        MsgBox "No hay hijos", vbOKOnly + vbExclamation, "JS2000 Validación"
        Set HijoDeNodo = Nod
        Exit Function
    End If
    
    Set nodHijo = Nod.Child
    ' MsgBox nodHijo.Text
    If InStr(1, nodHijo.Key, subKey, vbTextCompare) > 0 Then
        Set HijoDeNodo = nodHijo
        Exit Function
    End If

    j = nodHijo.FirstSibling.Index          ' FirstSibling: 1er hermano de nodHijo
    While j <> nodHijo.LastSibling.Index    ' LastSibling:  último hermano de nodHijo
        If InStr(trvArbol.Nodes(j).Key, subKey) > 0 Then
            Set HijoDeNodo = trvArbol.Nodes(j)
            Exit Function
        End If

        'MsgBox trvArbol.Nodes(j).Next.Text
        j = trvArbol.Nodes(j).Next.Index   ' Next: referencia al prox. nodo del mismo nivel que Nodes(j)
    Wend
    
    If InStr(trvArbol.Nodes(j).Key, subKey) > 0 Then
        Set HijoDeNodo = trvArbol.Nodes(j)
        Exit Function
    End If

End Function

Public Function InstanciasDeUnForm(pfor_nomfis As String) As Integer
Dim i As Integer

    i = 0
    InstanciasDeUnForm = 0
    Do While i < Forms.Count
        If Forms(i).Name = pfor_nomfis Then
            InstanciasDeUnForm = InstanciasDeUnForm + 1
        End If
        i = i + 1
    Loop

End Function

Public Function IDDeUnFormulario(pfor_nomfis As String) As Integer
'Dim oSis As New clsDE_Sistema
'
'    oSis.sel_Id_Formulario pfor_nomfis
'    If oSis.pCanReg > 0 Then
'        IDDeUnFormulario = oSis.pRS!for_idesec
'    Else
'        IDDeUnFormulario = 0
'    End If

End Function

Public Function LanzarExcepcion(pDescripcion As String)
    Err.Raise vbObjectError + 1000, , pDescripcion
End Function

Public Sub EnviarMail(ByVal pDestinatario As String, ByVal pAsunto As String, ByVal pDetalleCorreo As String, _
 ByVal pRemitente As String, ByVal pNombreServCorreo As String)
'ByVal Recipient, ByVal Subject, ByVal Text, ByVal Mailbox, ByVal Server
'Mailbox: dirección del remitente
'Recipient: dirección del destinatario
Dim objSession As Object 'MAPI.Session
Dim objOutbox As Object 'Folder
Dim objNewMessage As Object 'Message
Dim objRecipients As Object 'Recipients
Dim objOneRecip As Object 'Recipient
Const ActMsgTo = 1
Dim vProfile As String
    
    vProfile = pNombreServCorreo & vbLf & pRemitente
    Set objSession = CreateObject("MAPI.Session") 'New MAPI.Session
    'objSession.Logon profileinfo:=pNombreServCorreo & vbLf & pRemitente, nomail:=False
    objSession.Logon profileinfo:=vProfile, nomail:=True
    Set objOutbox = objSession.Outbox
    Set objNewMessage = objOutbox.Messages.Add
    Set objRecipients = objNewMessage.Recipients
    Set objOneRecip = objRecipients.Add
    With objOneRecip
        .Name = pDestinatario
        .Type = ActMsgTo
        .Resolve ' Get MAPI to determine complete E-mail address.
    End With
    With objNewMessage
        .Subject = pAsunto
        .TEXT = pDetalleCorreo
        .Send
    End With

End Sub

Public Function ComprobarConfiguracionRegional() As Boolean
'Comprueba la configuracion regional

    ComprobarConfiguracionRegional = True
    If Not ConfgRegionalCorrecta Then
        If MsgBox("Su Configuración Regional no es la adecuada, " & _
            "el sistema procederá a modificarla, desea continuar?", vbYesNo + vbCritical) = vbYes Then
            'TODO, buscar esto que esta piola.
            'AjustarConfgReg
        Else
            ComprobarConfiguracionRegional = False
        End If
    End If
    
End Function

'Public Sub PintarFila(ByRef Grilla As MSFlexGrid, ByVal Fila As Long)
'Dim i As Long
'
'    With Grilla
'        For i = 0 To .Cols - 1
'            .Row = Fila
'            .Col = i
'            .CellForeColor = vbBlue
'            .CellBackColor = RGB(222, 239, 233)
'        Next i
'    End With
'
'End Sub

Public Sub PintarFila(ByRef Grilla As MSFlexGrid, ByVal fila As Long, Optional ByVal fColor As ColorConstants = -1, Optional ByVal bColor As ColorConstants = -1)
Dim i As Long

    With Grilla
        For i = 0 To .Cols - 1
            .Row = fila
            .Col = i
            .CellForeColor = IIf(fColor = -1, vbBlue, fColor)
            .CellBackColor = IIf(bColor = -1, RGB(222, 239, 233), bColor)
        Next i
    End With

End Sub

Public Function centrarCadena(pCadena As String, pLargo As Integer) As String

Dim vDiferencia As Integer
Dim vsalida As String

vDiferencia = pLargo - Len(pCadena)
vsalida = pCadena
    If (vDiferencia < 0) Then
        centrarCadena = ""
    Else
        vDiferencia = Round(vDiferencia / 2)
        Dim i As Integer
        For i = 1 To vDiferencia
            vsalida = " " & vsalida
        Next
        For i = 1 To vDiferencia
            vsalida = vsalida & " "
        Next
        centrarCadena = vsalida
    End If

    

End Function

Public Function RstAMtx(ByRef Rst As Variant) As Variant
'Recibe un recordset y devuelve una matriz del mismo
'Si es un recordset vacio o sin campos devuelve null
Dim i As Long, j As Long, mtxRst
'Inicializar
mtxRst = Null

    'Convertir al recordset en una matriz
    If IsObject(Rst) Then
        If Not (Rst Is Nothing) Then
            If Rst.RecordCount > 0 Then
                If Rst.Fields.Count > 0 Then
                    ReDim mtxRst(Rst.RecordCount - 1, Rst.Fields.Count - 1)
                    Rst.MoveFirst
                    For i = LBound(mtxRst) To UBound(mtxRst)
                        For j = LBound(mtxRst, 2) To UBound(mtxRst, 2)
                            mtxRst(i, j) = Rst.Fields(j).Value
                        Next j
                        Rst.MoveNext
                    Next i
                End If
            End If
        End If
    End If
    'Terminar
    RstAMtx = mtxRst
End Function

Public Function InMtx(ByVal Mtx, ByVal ValABuscar, Optional ByVal ColABuscar As Integer, Optional ByRef fila As Integer = -1) As Boolean

'Esta funcion busca un valor en una matriz. Los parametros que recibe son:
' Mtx es la matriz donde se efectuara la búsqueda
' ValABuscar es el valor que se desea encontrar
' ColABuscar es la columna de la matriz en la que se quiere que se busque el valor.
' La funcion devuelve Verdadero si se encuentra el valor, false en caso contrario.
' Tb se puede saber en que fila se encontro el valor, si se recibe el parametro de fila.
' En caso de que no se encuentre el valor, este parametro opcional retornara un -1

Dim i As Integer, ContFilas As Integer
Dim blnexito As Boolean

    blnexito = True
    If Not IsArray(Mtx) Then
        blnexito = False
    End If

    ContFilas = 0
    Do While (ContFilas < UBound(Mtx)) And Not (Mtx(ContFilas, ColABuscar) = ValABuscar)
        ContFilas = ContFilas + 1
    Loop
    
    If Mtx(ContFilas, ColABuscar) = ValABuscar Then
        fila = ContFilas
    Else
        blnexito = False
    End If
    
    InMtx = blnexito

End Function


Public Function CrearDirectorio(ByVal Directorio As String) As Boolean
'Crea los directorios que no existen en el camino ingresado.
Dim lngInicio As Long, lngError As Long
  
    On Error GoTo LabelError
    
    'Inicializar
    lngError = 0
    
    ' Agrego la barra de directorio al final si no la tiene
    Directorio = Trim(Directorio)
    If Not Right(Directorio, 1) = "\" Then
        Directorio = Directorio + "\"
    End If
    ' Primero me fijo si tiene una unidad de directorio
    lngInicio = InStr(1, Directorio, ":\")
    If Not lngInicio = 0 Then
        lngInicio = InStr(lngInicio + 2, Directorio, "\")
    Else
        ' Verifico si es un paso de red
        lngInicio = InStr(1, Directorio, "\\")
        If Not lngInicio = 0 Then
            ' Es un paso de red. Salto el nombre del recurso compartido
            lngInicio = InStr(lngInicio + 2, Directorio, "\") 'Servidor
            lngInicio = InStr(lngInicio + 1, Directorio, "\") ' \Recurso compartido
            lngInicio = InStr(lngInicio + 1, Directorio, "\") ' \Primer Directorio despues del recurso compartido
            'Si ese directorio no existe lo crea despues....
        Else
            ' No tiene ninguno de los dos.
            lngInicio = InStr(1, Directorio, "\")
        End If
    End If
    
    Do While Not lngInicio = 0
        If Dir(Left(Directorio, lngInicio), vbDirectory) = "" Then
            MkDir Left(Directorio, lngInicio)
        End If
        lngInicio = InStr(lngInicio + 1, Directorio, "\")
    Loop
    CrearDirectorio = (lngError = 0) 'Coloca en true o False el resultado de la creación
    
    Exit Function

LabelError:
  lngError = Err.Number
  ' RegistrarError Err.Number, Err.Description, Err.Source & ERRORCOMPONENTE & "CrearDirectorio"
  Resume Next
End Function

Public Function HoraValida(phora As String) As Boolean
'La función devuelve true si el string pasado como parametro es una hora valida.
' El formato del string debe ser "hh:mm:ss"
    
    If Val(Mid(phora, 1, 2)) >= 0 And Val(Mid(phora, 1, 2)) <= 24 And _
            Val(Mid(phora, 4, 2)) >= 0 And Val(Mid(phora, 4, 2)) <= 59 Then
        HoraValida = True
    Else
        HoraValida = False
    End If

End Function

'Public Function OSI_ActivaDeUnSocio(pNumSoc As Long) As String
''Decuelve el nombre de la Obra Social intermedia de un  Socio titular
'Dim oPer As New clsDE_Personas
'Dim exito As Boolean
'
'    oPer.sel_OSIActivaDeUnSocio pNumSoc
'    If oPer.pCanReg > 0 Then
'        OSI_ActivaDeUnSocio = oPer.pRS!obs_descor
'    Else
'        OSI_ActivaDeUnSocio = ""
'        If oPer.pNumError > 0 Then
'            MsgBox "Error al consultar la OSI. " & _
'                    oPer.pDesError & ". Comuniquese con el departamento Sistemas", vbCritical
'        End If
'    End If
'
'End Function

Public Function comillas(ByVal cadena As String) As String
comillas = Replace(cadena, "'", "''")
End Function

Public Function EsFecha(fecha As String) As Boolean
EsFecha = True
If IsDate(fecha) = False Then
    EsFecha = False
    Exit Function
End If
If Format(fecha, "d/m/yyyy") <> fecha And Format(fecha, "dd/mm/yyyy") <> fecha Then
    EsFecha = False
End If
End Function
