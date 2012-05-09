VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{2C418C3E-54A3-11D3-BC02-00C0F010C82A}#1.0#0"; "IFEpson.ocx"
Begin VB.Form frmMain 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Aeros - Control de Stock"
   ClientHeight    =   5835
   ClientLeft      =   150
   ClientTop       =   435
   ClientWidth     =   9030
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5835
   ScaleWidth      =   9030
   StartUpPosition =   2  'CenterScreen
   Begin EPSON_Impresora_Fiscal.PrinterFiscal EPSON_Printer_Fiscal 
      Left            =   960
      Top             =   5040
      _ExtentX        =   847
      _ExtentY        =   847
   End
   Begin MSComctlLib.TreeView trvPrincipal 
      Height          =   4425
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   3330
      _ExtentX        =   5874
      _ExtentY        =   7805
      _Version        =   393217
      Indentation     =   529
      LabelEdit       =   1
      Style           =   7
      ImageList       =   "imgPrincipal"
      Appearance      =   1
   End
   Begin MSComctlLib.ImageList imgPrincipal 
      Left            =   8520
      Top             =   3960
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   1
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmMain.frx":0000
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.StatusBar sbStatusBar 
      Align           =   2  'Align Bottom
      Height          =   270
      Left            =   0
      TabIndex        =   1
      Top             =   5565
      Width           =   9030
      _ExtentX        =   15928
      _ExtentY        =   476
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   3
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            AutoSize        =   1
            Object.Width           =   10742
            Text            =   "Estado"
            TextSave        =   "Estado"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            AutoSize        =   2
            TextSave        =   "13/03/2010"
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            AutoSize        =   2
            TextSave        =   "12:46"
         EndProperty
      EndProperty
   End
   Begin VB.Image imgFondo 
      Height          =   4455
      Left            =   3360
      Top             =   120
      Width           =   5535
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim NodoSelec As Node

Private Sub Form_Load()

    cPathImagenes = Left(App.path, InStrRev(App.path, "\")) & "imagenes\"
    'FormsReconfig.Load_Reconfig Me
    'imgFondo.Stretch = True
    'imgFondo.Picture = LoadPicture(cPathImagenes & "aeros_bar4.jpg")
    'CargarArbol

End Sub

Private Sub CargarArbol()
Dim nodo As Node
 
    'Raiz
    Set nodo = Me.trvPrincipal.Nodes.Add(, , "Raiz", "Sistema", 1)
    nodo.Expanded = True

    'Artículos
    Set nodo = Me.trvPrincipal.Nodes.Add("Raiz", tvwChild, "Art", "Artículos", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Art", tvwChild, "ABMArt", "ABM Artículos", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Art", tvwChild, "MovArtInc", "Incrementar Stock", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Art", tvwChild, "ConfPtoPedido", "Configurar Pto. Pedido", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Art", tvwChild, "MovArtDec", "Decrementar Stock", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Art", tvwChild, "Stock", "Reporte de Stock", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Art", tvwChild, "TopArt", "Articulos mas vendidos", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Art", tvwChild, "ArtVendPorMozo", "Articulos Vendidos Por Mozos", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Art", tvwChild, "ABMRubros", "ABM Rubros", 1)
    
    'Mozo
    Set nodo = Me.trvPrincipal.Nodes.Add("Raiz", tvwChild, "Moz", "Mozos", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Moz", tvwChild, "ABMMozos", "ABM Mozos", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Moz", tvwChild, "AperMozos", "Apertura Mozos", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Moz", tvwChild, "CieMozos", "Cierre Mozos", 1)
    
    'Proveedores
    Set nodo = Me.trvPrincipal.Nodes.Add("Raiz", tvwChild, "Prov", "Proveedores", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Prov", tvwChild, "ABMProv", "ABM Proveedores", 1)

    'Mesas/Ventas
    Set nodo = Me.trvPrincipal.Nodes.Add("Raiz", tvwChild, "Vent", "Ventas", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Vent", tvwChild, "AperMesas", "Apertura Mesas", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Vent", tvwChild, "Mesas", "Mesas", 1)
    Set nodo = Me.trvPrincipal.Nodes.Add("Vent", tvwChild, "Caja", "Movimientos Caja", 1)

End Sub

Private Sub exportar_articulos()
'Dim oReport As New clsReport
'
'    oReport.ReportToExcel "Stock Articulos"

End Sub

Private Sub exportar_Clientes()
'Dim oReport As New clsReport
'
'    oReport.ReportToExcel "Clientes"

End Sub

Private Sub exportar_art_mas_vendidos()
'Dim oReport As New clsReport
'
'    oReport.ReportToExcel "Articulos Mas Vendidos"

End Sub

Private Sub Exportar_ArtVendidosPorMozosPorDia()
'Dim oReport As New clsReport
'
'    oReport.ReportToExcel "Articulos Vendidos Por Mozos"

End Sub

Private Sub trvPrincipal_DblClick()
    
    If NodoSelec Is Nothing Then
        Set NodoSelec = trvPrincipal.Nodes.Item(1)
    End If
    Select Case NodoSelec.Key
        Case "ABMArt"
            frmArticulos.Show vbModal
        Case "ABMMozos"
            frmMozos.Show vbModal
        Case "AperMozos"
            frmAperturaMozos.Show vbModal
        Case "CieMozos"
            MsgBox "Falta implementar esta funcionalidad."
        Case "ABMProv"
            frmProveedores.Show 1
        Case "ABMClient"
            frmClientes.Show 1
        Case "MovArtInc"
            frmIncrementoStock.Show vbModal
        Case "ConfPtoPedido"
            frmPtoPedido.exTipoMov = 1
            frmPtoPedido.Show vbModal
        Case "MovArtDec"
            frmMovStock.exTipoMov = False
            frmMovStock.Caption = "Decrementar Stock"
            frmMovStock.Show vbModal
        Case "TopArt"
            exportar_art_mas_vendidos
        Case "ArtVendPorMozo"
            Exportar_ArtVendidosPorMozosPorDia
        Case "Stock"
            exportar_articulos
        Case "ClientReport"
            exportar_Clientes
        Case "ABMRubros"
            frmRubros.Show 1
        Case "ABMMarcas"
            frmMarcas.Show 1
        Case "ABMTiposUso"
            frmTiposUso.Show 1
        Case "ABMLineas"
            frmLineas.Show 1
        Case "AperMesas"
            frmAperturaMesas.Show vbModal
        Case "Mesas"
            frmMesas.Show vbModal
        Case "Caja"
            MsgBox "Falta Implementar esta funcionalidad"
            'frmCaja.Show vbModal
    End Select

End Sub

Private Sub trvPrincipal_NodeClick(ByVal Node As MSComctlLib.Node)
    Set NodoSelec = Node
End Sub
