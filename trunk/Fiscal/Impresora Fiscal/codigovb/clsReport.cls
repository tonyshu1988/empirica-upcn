VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsReport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'Global Variables
Dim path As String                      'The path where the file will be saved
Dim sheetname As String                 'The sheet name where the information will be reported
Dim sname As String                     'The name which will be used for the names in the workbook.
Dim TemplatePath As String              'The Template File Path
Dim wkbTemplate As Excel.Workbook       'The Template Workbook
Dim wkbReport As Excel.Workbook       'The Template Workbook
Dim appExcel As Excel.Application       'The Excel Application
Dim currentRow As Integer               'it is the start position of the next section
Dim lastColumn As String                'it is the last column used for draw borders to the cells (see template function)


Function ApplyRule(ByVal sheetname As String) As String
Dim ch As String
Dim aux As String
    If Len(sheetname) <> 0 Then
        ch = Left(sheetname, 1)
        If Asc(ch) < 48 Or (Asc(ch) > 57 And Asc(ch) < 65) Or (Asc(ch) > 90 And Asc(ch) <> 95 And Asc(ch) < 97) Or Asc(ch) > 122 Then
            aux = aux & ApplyRule(Right(sheetname, Len(sheetname) - 1))
        Else
            aux = aux & ch & ApplyRule(Right(sheetname, Len(sheetname) - 1))
        End If
    Else
        aux = ""
    End If
    ApplyRule = aux
End Function

Sub CloseViews(ByVal path As String)
'Closes the views of the same file
Dim i As Integer
Dim P As String
P = Right(path, Len(path) - InStrRev(path, Chr(92)))

    For i = appExcel.Windows.count To 1 Step -1
        If InStr(1, appExcel.Windows.Item(i).Caption, ":", vbTextCompare) > 0 Then
            Debug.Print Left(appExcel.Windows.Item(i).Caption, InStr(1, appExcel.Windows.Item(i).Caption, ":", vbTextCompare) - 1)
            If Left(appExcel.Windows.Item(i).Caption, InStr(1, appExcel.Windows.Item(i).Caption, ":", vbTextCompare) - 1) = P Then
                appExcel.Windows.Item(i).Close False
            End If
        End If
    Next

End Sub


Sub ReportToExcel(ByVal sh As String)
'Report the information into a report file
'   pa is the path where the file is saved
'   Sh is the sheetName to create
'   PID is the Report to create

    
    'inicializa el excel, abre el template correspondiente al reporte seleccionado.
    Initialize sh
    
    Select Case sh
    Case "Stock Articulos"
         loadArticulos
    Case "Articulos Mas Vendidos"
        With frmDesdeHasta
            .RangoFecha = True
            .dtDesde = vbEmpty
            .dtHasta = vbEmpty
            .Show vbModal
            If Not .dtDesde = vbEmpty And Not .dtHasta = vbEmpty Then
                ArticulosMasVendidosDeUnPeriodo .dtDesde, .dtHasta
            Else
                MsgBox "Debe seleccionar un rango de fechas para poder sacar el reporte de articulos mas vendidos."
            End If
        End With
    Case "Articulos Vendidos Por Mozos"
        With frmDesdeHasta
            .RangoFecha = True
            .dtDesde = vbEmpty
            .dtHasta = vbEmpty
            .Show vbModal
            If Not .dtDesde = vbEmpty And Not .dtHasta = vbEmpty Then
                ArticulosVendidosPorMozoPorDia .dtDesde, .dtHasta
            Else
                MsgBox "Debe seleccionar un rango de fechas para poder sacar el reporte de articulos mas vendidos."
            End If
        End With
        
    End Select


End Sub

Sub ArticulosMasVendidosDeUnPeriodo(ByVal pDesde As Date, ByVal pHasta As Date)
Dim oart As New clsArticulo
    
    'Se coloca a partir de acá el control de error porque se crea los objetos
    On Error GoTo ErrorGeneracion

    oart.sel_ArticulosMasVendidosDeUnPeriodo pDesde, pHasta
    If oart.pCanReg > 0 Then
       'export to Excel
       exportExcel wkbReport, oart.pRS
       Exit Sub
    Else
        wkbReport.Close False
        MsgBox "No se encontraron articulos cargados en la Base de Datos."
    End If

ErrorGeneracion:
    If Err.Number = 429 Then
        ExportarAOpenOffice oart.pRS, False, ""
    Else
        Screen.MousePointer = vbDefault
    End If
End Sub

Public Sub ArticulosVendidosPorMozoPorDia(ByVal pDesde As Date, ByVal pHasta As Date)
Dim oart As New clsArticulo
    
    'Se coloca a partir de acá el control de error porque se crea los objetos
    On Error GoTo ErrorGeneracion

    oart.sel_ArticulosVendidosPorMozoPorDia pDesde, pHasta
    If oart.pCanReg > 0 Then
       'export to Excel
       exportExcel wkbReport, oart.pRS
       Exit Sub
    Else
        wkbReport.Close False
        MsgBox "No se encontraron articulos cargados en la Base de Datos."
    End If

ErrorGeneracion:
    If Err.Number = 429 Then
        ExportarAOpenOffice oart.pRS, False, ""
    Else
        Screen.MousePointer = vbDefault
    End If

End Sub
Sub loadArticulos()
Dim oart As New clsArticulo
    
    'Se coloca a partir de acá el control de error porque se crea los objetos
    On Error GoTo ErrorGeneracion
    
    oart.sel_StockTotal
    If oart.pCanReg > 0 Then
       'export to Excel
       exportExcel wkbReport, oart.pRS
       Exit Sub
    Else
        wkbReport.Close False
        MsgBox "No se encontraron articulos cargados en la Base de Datos."
    End If

ErrorGeneracion:
    If Err.Number = 429 Then
        ExportarAOpenOffice oart.pRS, False, ""
    Else
        Screen.MousePointer = vbDefault
    End If
End Sub

Function CheckOpenFile(ByVal path As String) As Boolean
Dim i As Integer
Dim P As String
P = Right(path, Len(path) - InStrRev(path, Chr(92)))
For i = appExcel.Workbooks.count To 1 Step -1
    If appExcel.Workbooks(i).Name = P And appExcel.Workbooks(i).FullName <> path Then
        CheckOpenFile = True
        Exit Function
    End If
Next
CheckOpenFile = False
End Function

Private Sub Initialize(ByVal sh As String)
Dim i As Integer
On Error GoTo errHandler
'*******************
'renombrar el app con otro nombre, porque es un objeto de VB
'*******************
   ' Set pError = New CErrorMsg

    sheetname = sh
    'Find a process open "Excel.exe"
    'It there is one, it will be used. If not, a new instance will be created.
    If FindProcess("Excel.exe") Then
        Set appExcel = GetObject(, "Excel.Application")
    Else
        'Open the Excel application
        Set appExcel = New Excel.Application
    End If
    
    On Error Resume Next
    appExcel.ErrorCheckingOptions.NumberAsText = False
    On Error GoTo 0
    
    'Generate the Template File Path
    TemplatePath = Template(sheetname)
    
'    'Open the Template File
'    Set wkbTemplate = OpenExcel(appExcel, TemplatePath)
'
'    'the window of this workbook is not visible
'    wkbTemplate.Windows.Item(1).Visible = False
'    appExcel.DisplayAlerts = False
    
    Set wkbReport = appExcel.Workbooks.Add(TemplatePath)
    
    'Remove all the sheets except the first one
    For i = wkbReport.Sheets.count To 2 Step -1
        wkbReport.Sheets(i).Delete
    Next

    If wkbReport.Windows(1).Visible = False Then
        wkbReport.Windows(1).Visible = True
    End If
    
   wkbReport.ActiveSheet.Name = sheetname
   currentRow = 1
       
    Exit Sub
errHandler:
    MsgBox Err.Description, , "Report"
End Sub

Function FindProcess(ByVal Process As String) As Boolean
    Dim objWMIService, colProcesses
    Set objWMIService = GetObject("winmgmts:")
    Set colProcesses = objWMIService.ExecQuery("Select * from Win32_Process where name='" & Process & "'")
    If colProcesses.count Then FindProcess = True
End Function

Private Sub Class_Terminate()
    appExcel.DisplayAlerts = True
    'Close the Template File
   ' wkbTemplate.Close False
    Set wkbTemplate = Nothing
   
End Sub

Function OpenExcel(ByRef app1 As Excel.Application, ByVal path As String) As Excel.Workbook
Dim i As Integer
Dim vopen As Boolean
Dim msg As Integer
On Error GoTo errHandler
    'vopen = True if the file must be opened
    vopen = True
    'for each workbook in the application
    For i = app1.Workbooks.count To 1 Step -1
        'check the path of the workbook
        If app1.Workbooks(i).FullName = path Then
            'Saved is false when there are some changes not saved
            If app1.Workbooks(i).Saved = False Then
                msg = MsgBox("Do you want to save the changes you made to " & Chr(10) & "'" & path & "'?", vbQuestion + mbsYesNoCancel, "Report")
                Select Case msg
                Case vbYes
                    'If the user wants, the workbook will be saved
                    app1.Workbooks(i).Save
                    Set OpenExcel = app1.Workbooks(i)
                Case vbNo
                    'if not, the file is closed (to not save the changes)
                    app1.Workbooks(i).Saved = True
                    app1.Workbooks(i).Close
                    Set OpenExcel = app1.Workbooks.Open(path)
                Case vbCancel
                    Exit Function
                End Select
            Else
                'the file is open but not modified
                Set OpenExcel = app1.Workbooks(i)
            End If
            'it is open, so it is no needed to open
            vopen = False
            Exit Function
        End If
    Next
    If vopen Then
        'the file is open
        Set OpenExcel = app1.Workbooks.Open(path)
    End If
    
    Exit Function
errHandler:

     MsgBox Err.Description & " (" & CStr(Err.Number) & ")", vbExclamation

End Function

Function Template(ByVal sh As String) As String
'Return the Template File Path
Dim strpath As String
    'The template is open and saved as "path"

    strpath = Left(App.path, InStrRev(App.path, "\"))
    Select Case sh
    Case "Stock Articulos"
        Template = strpath & "Reporte Stock.xls"
        lastColumn = "G"
    Case "Clientes"
        Template = strpath & "Reporte Cliente.xls"
        lastColumn = "I"
    Case "Articulos Mas Vendidos"
        Template = strpath & "Reporte ArticulosDeUnPeriodo.xls"
        lastColumn = "D"
    Case "Articulos Vendidos Por Mozos"
        'TODO
        Template = strpath & "ArticulosVendidosPorMozoPorFecha.xls"
        lastColumn = "H"
    End Select
    

End Function


Sub exportExcel(ByRef wkb As Excel.Workbook, ByVal oRs As ADODB.Recordset)
'Report the information to a report xls
Dim wshIndex As Integer
Dim count As Integer
 
On Error GoTo errHandler

    
    wkb.Colors(1) = RGB(240, 240, 240)  'RGB(245, 242, 215)
    wkb.Colors(2) = RGB(255, 252, 225)
    wkb.Colors(3) = RGB(235, 235, 235)
    wkb.Colors(4) = RGB(255, 255, 255)
    
    LoadRecorset wkb, oRs

    'Open the Excel Application and the file
    If wkb.Parent.Windows(wkb.Name).Visible = False Then
        wkb.Parent.Windows(wkb.Name).Visible = True
    End If
    If wkb.Windows(1).Visible = False Then
        wkb.Windows(1).Visible = True
    End If
    'wkb.Save
    If appExcel.Visible = False Then
        appExcel.Visible = True
    End If

    Exit Sub
errHandler:
     MsgBox Err.Description & " (" & CStr(Err.Number) & ")", vbExclamation
End Sub

Sub LoadRecorset(ByRef wkb As Excel.Workbook, ByVal oRs As ADODB.Recordset)
'Load the information for the Run Statistics section (the common section)
'   wkb is the Workbook where the information will be loaded
Dim wsh As Excel.Worksheet
Dim cell As String
Dim c As Excel.Range
Dim oCount As Integer
    
    currentRow = currentRow + 4
    
    'Open the sheet where the information will be saved
    Set wsh = wkb.Sheets(sheetname)

    wsh.Range("B" & currentRow).CopyFromRecordset oRs

    oCount = oRs.RecordCount
    oRs.Close
    
    cell = CellPosition(lastColumn & currentRow, 1, oCount)
    
    'Applies the borders
    For Each c In wsh.Range("B" & currentRow, cell).Columns
        c.BorderAround Null, 3, 0, vbBlack
    Next
    
    currentRow = currentRow + oCount + 1

End Sub

Private Sub CreateHyperLink(ByRef wkb As Excel.Workbook, ByVal cell As String, _
                            ByVal toCell As String, ByVal title As String, ByVal rLink As Integer, _
                                Optional insert As Boolean = False, Optional format As Boolean = True)

Dim str As String
On Error GoTo errHandler
    'wkb.Activate
    wkb.Sheets(sheetname).Activate
    If insert = True Then
        wkb.ActiveSheet.Rows("" & rLink & ":" & rLink & "").Select
        appExcel.Selection.insert
        currentRow = currentRow + 1
    End If
    'str = "= HYPERLINK(""" & toCell & """, """ & title & """)"
    'wkb.Worksheets(SheetName).Range(cell).Value = str
    If format = True Then
        wkb.Worksheets(sheetname).Range(cell).Interior.ColorIndex = 3
        wkb.Worksheets(sheetname).Range(cell).ShrinkToFit = True
        wkb.Worksheets(sheetname).Range(cell).HorizontalAlignment = xlCenter
        wkb.Worksheets(sheetname).Range(cell).BorderAround Null, 2, 0, vbBlack
    Else
        wkb.Worksheets(sheetname).Range(cell).Interior.ColorIndex = 4
        wkb.Worksheets(sheetname).Range(cell).ShrinkToFit = True
'        wkb.Worksheets(SheetName).Range(cell).BorderAround Null, , 0, vbBlack
    End If
    
    wkb.Worksheets(sheetname).Range(cell).Select
   
    wkb.Worksheets(sheetname).Hyperlinks.Add Anchor:=appExcel.Selection, Address:="", SubAddress:= _
        toCell, TextToDisplay:=title
       'Right(toCell, Len(toCell) - 1), TextToDisplay:=title
    Exit Sub
    
errHandler:
     MsgBox Err.Description & " (" & CStr(Err.Number) & ")", vbExclamation
End Sub


Private Function sheetExists(ByRef wkb As Excel.Workbook, ByVal new_sheet As String) As Boolean
'Return if a sheet already exists
'   wkb is the Workboot where the sheet will be searched.
'   new_sheet is the sheetName to find
Dim wsh As Excel.Worksheet
    On Error Resume Next

    Set wsh = wkb.Sheets(new_sheet)
    sheetExists = True
    If wsh Is Nothing Then
        'The sheet doesn't exist
        sheetExists = False
    End If
End Function


Sub CopySheet(ByRef wkbTo As Excel.Workbook, ByVal Index As Integer, ByVal sheetname As String, ByVal Exists As Boolean)
'Copy a sheet into a Workbook
'   wkbTo is the workbook where the sheet will be copied
'   Index is the position where the sheet will be copied
'   SheetName is the sheet name of the new sheet
'   exists is a boolean (True if the sheet already exists)
Dim sh1 As Excel.Worksheet
On Error GoTo errHandler
    'Open the Template file and copy the RunStatistics sheet (it is the common information)
    If gMode = 1 Then
        Set sh1 = wkbTemplate.Worksheets("EstRunStatistics")
    Else
        Set sh1 = wkbTemplate.Worksheets("OptRunStatistics")
    End If
    If Not newFile Then
        'The file already exists
        If (Index - 1) = 0 Then
            'If the index where the sheet must be created is 1
            'The sheet must be copied before the first one
            sh1.Copy before:=wkbTo.Worksheets(Index)
        Else
            'The sheet must be copied after the previous sheet
            'wkbTo.Worksheets.Add Null, wkbTo.Worksheets.Item(Index - 1)
            'sh1.Cells.copy wkbTo.Worksheets.Item(Index)
            sh1.Copy after:=wkbTo.Worksheets(Index - 1)
            'app.Workbooks(1).Worksheets("EstRunStatistics").copy after:=app.Workbooks(2).Worksheets(Index - 1)
            'If the sheet already exists and after copying the template, it must be deleted.
            If Exists Then
                wkbTo.Worksheets(CStr(sheetname)).Delete
                Index = 1
            End If
        End If
    Else
        Index = 1
    End If
    Set sh1 = wkbTo.Worksheets(Index)
    'Rename the sheet just copied
    sh1.Name = sheetname
    wkbTo.Worksheets(Index).Activate
    'Save the report file
    wkbTo.Save
    Exit Sub
errHandler:
     MsgBox Err.Description & " (" & CStr(Err.Number) & ")", vbExclamation
End Sub

Function CellPosition(ByVal start As String, ByVal columnsCount As Integer, ByVal rowsCount As Integer) As String
'Return a string which identifies a where a range finishes
'   start is the position of the top left cell of a range
'   ColumnsCount is the amount of columns of the range
'   rowsCount is the amount of rows of the range
Dim startColumn As String
Dim startRow As Integer
    'startColumn is the column where the range starts
    startColumn = Left(start, 1)
    'startRow is the row where the range starts
    startRow = Right(start, Len(start) - 1)
    
    CellPosition = ColName(Asc(startColumn) - 64 + columnsCount - 1) & CStr(startRow + rowsCount - 1)
End Function

Sub ApplyBackColor(ByRef wsh As Excel.Worksheet, ByVal Row As Integer, ByVal column As Integer, sql)
Dim rs As ADODB.Recordset
Dim f As Boolean
Dim count As Integer
Dim cell As String

    Set rs = CreateObject("ADODB.Recordset")
    rs.CursorLocation = adUseClient
    rs.Open sql, REX_Projects
    f = False
    While Not rs.EOF And Not rs.BOF
        count = rs(0).value
        cell = CellPosition("B" & CStr(Row), column, count)
        If f Then
            wsh.Range("B" & Row, cell).Interior.ColorIndex = 1
        Else
            wsh.Range("B" & Row, cell).Interior.ColorIndex = 4
        End If
        f = Not f
        Row = Row + count
        rs.MoveNext
    Wend
    rs.Close
    Set rs = Nothing

End Sub

Function ColName(ByVal Col As Integer) As String
'Return the colname related to a position
'   col is the column position
Dim R As Integer
If Col < 27 Then
    'The column is single, A, B, C....Z (65 = "A")
    ColName = Chr(Col + 64)
Else
    'The column is complex, AA..BD..ZZ
    R = Col \ 26
    Col = Col - (R * 26)
    If Col <> 0 Then
        ColName = Chr(R + 64) & Chr(Col + 64)
    Else
        ColName = Chr(R - 1 + 64) & Chr(90)
    End If
End If
End Function

'*******************************************
'*******************************************
'*******************************************
'*******************************************

Sub CheckDuplicated(ByRef wkb As Excel.Workbook, ByVal startCell As String, ByVal endCell As String)
'Check if there is some information duplicated, in that case, the duplicated information will be deleted
Dim wsh As Excel.Worksheet
Dim rg As Excel.Range
Dim R As Excel.Range
Dim r1 As Excel.Range
Dim i As Integer
Dim rg1 As Excel.Range
Dim rg2 As Excel.Range
Dim colInd As Integer
Dim col2Ind As Integer

    Set wsh = wkb.Sheets(sheetname)
    Set rg = wsh.Range(startCell, endCell)
    For Each R In rg.Rows
        For Each r1 In rg.Rows
            If R.Row <> r1.Row Then
                Set rg1 = rg.Range(Left(startCell, 1) & R.Row, "C" & R.Row)
                Set rg2 = rg.Range(Left(startCell, 1) & r1.Row, "C" & r1.Row)
                colInd = Asc(Left(startCell, 1)) - 64
                col2Ind = Asc(Left(startCell, 1)) - 64
                If CompareWorksheetRanges(wsh, rg1, colInd, R.Row, rg2, col2Ind, r1.Row) Then
                   rg.Range(Left(startCell, 1) & r1.Row, Left(endCell, 1) & r1.Row).Cells.Clear
                End If
            End If
        Next
    Next
End Sub


Function CompareWorksheetRanges(ByRef wsh As Excel.Worksheet, rng1 As Excel.Range, colInd As Integer, rowInd As Integer, rng2 As Excel.Range, col2Ind As Integer, row2Ind As Integer) As Boolean
Dim R As Long, c As Integer
Dim lr1 As Long, lr2 As Long, lc1 As Integer, lc2 As Integer
Dim maxR As Long, maxC As Integer, cf1 As String, cf2 As String
Dim rptWB As Workbook, DiffCount As Long
    
    With rng1
        lr1 = .Rows.count
        lc1 = .Columns.count
    End With
    With rng2
        lr2 = .Rows.count
        lc2 = .Columns.count
    End With
    maxR = lr1
    maxC = lc1
    If maxR < lr2 Then maxR = lr2
    If maxC < lc2 Then maxC = lc2
    DiffCount = 0
    For R = 0 To maxR - 1
        For c = 0 To maxC - 1
            cf1 = ""
            cf2 = ""
            On Error Resume Next
            cf1 = wsh.Cells(rowInd + R, colInd + c).value
            cf2 = wsh.Cells(row2Ind + R, col2Ind + c).value
            On Error GoTo 0
            If cf1 <> cf2 Then
                DiffCount = DiffCount + 1
            End If
        Next
    Next

    If DiffCount = 0 Then
        CompareWorksheetRanges = True
    Else
        CompareWorksheetRanges = False
    End If

End Function

