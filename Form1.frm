VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Bloc-Notes de Généalogest"
   ClientHeight    =   6135
   ClientLeft      =   4380
   ClientTop       =   2415
   ClientWidth     =   6540
   LinkTopic       =   "Form1"
   ScaleHeight     =   6135
   ScaleWidth      =   6540
   Begin VB.TextBox Text1 
      Height          =   6135
      Left            =   0
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "Form1.frx":0000
      Top             =   0
      Width           =   6615
   End
   Begin VB.Menu m_menu 
      Caption         =   "&menu"
      Begin VB.Menu m_nouveau 
         Caption         =   "&Nouveau"
      End
      Begin VB.Menu m_effacer 
         Caption         =   "&Effacer"
      End
      Begin VB.Menu sepa2 
         Caption         =   "-"
      End
      Begin VB.Menu m_charger 
         Caption         =   "&charger"
      End
      Begin VB.Menu m_enregistrer 
         Caption         =   "&Enregistrer"
      End
      Begin VB.Menu sepa 
         Caption         =   "-"
      End
      Begin VB.Menu m_quitter 
         Caption         =   "&Quitter"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub m_effacer_Click()
Text1 = ""
End Sub

Private Sub m_enregistrer_Click()
note = Text1
f = InputBox("Entrer un nom pour votre fichier")
Open f & ".txt" For Output As #1
Write #1, note

End Sub

Private Sub m_quitter_Click()
Unload Me
End Sub
