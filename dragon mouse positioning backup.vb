
Public Declare Function SetCursorPos Lib "User32.dll" (ByVal x As Integer, ByVal y As Integer) As Long
Public Declare Sub mouse_event Lib "user32" Alias "mouse_event" (ByVal dwFlags As Long, ByVal dx As Long, ByVal dy As Long, ByVal cButtons As Long, ByVal dwExtraInfo As Long)
Public Const MOUSEEVENTF_LEFTDOWN = &H2 ' left button down
Public Const MOUSEEVENTF_LEFTUP = &H4 ' left button up
Public Const MOUSEEVENTF_MIDDLEDOWN = &H20 ' middle button down
Public Const MOUSEEVENTF_MIDDLEUP = &H40 ' middle button up
Public Const MOUSEEVENTF_RIGHTDOWN = &H8 ' right button down
Public Const MOUSEEVENTF_RIGHTUP = &H10 ' right button up


 Private Declare Function GetSystemMetrics Lib "user32.dll" (ByVal nIndex As Long) As Long
Const SM_CXSCREEN = 0
Const SM_CYSCREEN = 1
Private Const SM_CMONITORS As Long = 80
Public Type RectAPI
    Left As Long
    Top As Long
    Right As Long
    Bottom As Long
End Type

Type POINTAPI 'Declare types
 x As Long
 y As Long
End Type
Declare Function GetCursorPos Lib "user32" _
(lpPoint As POINTAPI) As Long 'Declare API

Private Const SM_XVIRTUALSCREEN As Long = 76
Private Const SM_YVIRTUALSCREEN As Long = 77
Private Const SM_CXVIRTUALSCREEN As Long = 78
Private Const SM_CYVIRTUALSCREEN As Long = 79
Dim blnDualMonitors As Boolean
Dim blnFineTune As Boolean
Sub Main
' this script is primarily for the second screen and assumes resolutions as follows screen one 1680 by 1050 
' and screen two 1280 by 1024  (1440 times 900 is what the new screen is)
' trying to make this script also work for the following screen set up which is what it is at home 
'1280×1024 1280×800

 Dim intLeft As Integer
 Dim intTop As Integer
 Dim myRect As RectAPI
 Dim x As Long
 Dim y As Long
 Dim lngScreen1Width As Long
 Dim lngScreen1Height As Long
 Dim lngScreen2Width As Long
 Dim lngScreen2Height As Long
' work out if there is a second monitor

 blnDualMonitors=MultiMonitors()
' get the number of pixels across and down for the main monitor
    lngScreen1Width  = GetSystemMetrics(SM_CXSCREEN)
    lngScreen1Height = GetSystemMetrics(SM_CYSCREEN)
' MsgBox "multi screens" & blnDualMonitors
' get the number of pixels across for the second screen
  myRect=GetVirtualDisplayRect()
  lngScreen2Width= myRect.Right -lngScreen1Width
' work out the height of the second screen based on the width of screens
 If myRect.Right=2960  Or myRect.Right= 2986 Then
  lngScreen2Height=1024
 ElseIf myRect.Right=2560 Then
  lngScreen2Height=800
 ElseIf myRect.Right=3120 Then
  lngScreen2Height=900
 ElseIf myRect.Right= 3360 Then
  lngScreen2Height= 1050
 ElseIf myRect.Right=4640 Then
   lngScreen2Height= 1050
 End If
' MsgBox "screen 2 Height " & lngScreen2Height & " myRect.Right: " & myRect.Right
' now need to put the rest into practice from here
 blnFineTune=False
 Dim columnLetter as String
 columnLetter= CStr(ListVar2)
 Dim rowLetter as String
 rowLetter=CStr(ListVar3)
 intLeft=GetScreenCoordinates(columnLetter,1)
 intTop=GetScreenCoordinates(rowLetter,2)
   'Adjustment for old screen
   if intLeft>lngScreen1Width then 
    intTop=intTop+30
   end if
   Dim z As POINTAPI 'Declare variable
   Dim xpos As Long, ypos As Long
' MsgBox " list of variable values are " & ListVar1 & " " & ListVar2 & " " & ListVar3
 'MsgBox "fine tune " & blnFineTune
 If blnFineTune Then
  SetMousePosition   2,intLeft,intTop
 Else
  Select Case ListVar1
  Case "Grid Left","Grid"  ,"Arrow Click","Right Click","Double Click","doubleclick""
'   If intLeft> lngScreen1Width Then intLeft=lngScreen1Width-1
   If intTop> lngScreen1Height Then intTop=lngScreen1Height-1
     SetCursorPos(CLng(intLeft),CLng(intTop)) ' Where X and Y are in pixel
  Case "Grid Right" ,"Screen Click" ,"Touch","Double Touch","Right Touch","Click","Move"
   If intLeft> lngScreen1Width + lngScreen2Width Then intLeft=(lngScreen1Width+lngScreen2Width)-1
   If intTop> lngScreen2Height Then intTop=lngScreen2Height-1
    'MsgBox "intLeft = " & intLeft & " intTop= " & intTop & " lngScreen1Width=" & lngScreen1Width & " lngScreen2Width=" & lngScreen2Width
    'MsgBox "intLeft = " & intLeft & " intTop= " & intTop & " lngScreen1Width=" & lngScreen1Width & " lngScreen2Width=" & lngScreen2Width
   SetCursorPos(CLng(intLeft),CLng(intTop))
  Case "Drag","Drag Arrow"
    GetCursorPos z 'Get Coordinates
    xpos = CLng(z.x)
    Wait 0.5
    ypos = CLng(z.y)
    mouse_event MOUSEEVENTF_LEFTDOWN, xpos, ypos, cButt, dwEI

    SetCursorPos(CLng(intLeft),CLng(intTop))
    Wait 0.5
    'mouse_event MOUSEEVENTF_LEFTUP, xpos, ypos, cButt, dwEI
  Case "Drag Screen"
   GetCursorPos z 'Get Coordinates
    xpos = CLng(z.x)
    ypos = CLng(z.y)
    mouse_event MOUSEEVENTF_LEFTDOWN, xpos, ypos, cButt, dwEI
    Wait 0.5
    SetCursorPos(CLng(lngScreen1Width+ intLeft),CLng(intTop))
    Wait 0.5
    mouse_event MOUSEEVENTF_LEFTUP, xpos, ypos, cButt, dwEI
  End Select
 End If
Wait 0.1

 Select Case ListVar1
 Case "Arrow Click","Click","Screen Click","Touch"

  ButtonClick 1,1 'Syntax ButtonClick button, count (number of clicks)
 Case "Double Click","Double Touch","doubleclick"

  ButtonClick 1,2
 Case "Right Click","Right Touch"
  ButtonClick 2,1
 End Select

End Sub
Function GetScreenCoordinates(s As String,arg As Integer) As Integer
 Dim intLeft As Integer
 Dim intTop As Integer
 Dim pixelBlocks50 As Integer
If arg=1 Then
 Select Case s
 Case "Zero"
  intLeft=5
 Case "Alpha"
  pixelBlocks50=1
 Case "Bravo"
  pixelBlocks50=2
 Case "Charlie"
  pixelBlocks50=3
 Case "Delta"
  pixelBlocks50=4
 Case "Echo"
  pixelBlocks50=5
 Case "Foxtrot"
  pixelBlocks50=6
 Case "Golf"
  pixelBlocks50=7
 Case "Hotel"
  pixelBlocks50=8
 Case "India"
  pixelBlocks50=9
 Case "Juliet"
  pixelBlocks50= 10
 Case "Kilo"
  pixelBlocks50= 11
 Case "Lima"
  pixelBlocks50= 12
 Case "Mike"
  pixelBlocks50= 13
 Case "November"
  pixelBlocks50= 14
 Case "Oscar"
  pixelBlocks50= 15
 Case "Papa"
  pixelBlocks50= 16
 Case "Qubec"
  pixelBlocks50= 17
 Case "Romeo"
  pixelBlocks50= 18
 Case "Sierra"
  pixelBlocks50= 19
 Case "Tango"
  pixelBlocks50= 20
 Case "Uniform"
  pixelBlocks50= 21 
 Case "Victor"
  pixelBlocks50= 22
 Case "Whiskey"
  pixelBlocks50= 23
 Case "X-ray"
  pixelBlocks50= 24
 Case "Yankee"
  pixelBlocks50= 25
 Case "Zulu"
  pixelBlocks50= 26
 Case "One","1"
  pixelBlocks50= 27
 Case "Two"
  pixelBlocks50= 28
 Case "Three"
  pixelBlocks50= 29
 Case "Four","For"
  pixelBlocks50= 30
 Case "Five"
  pixelBlocks50= 31
 Case "Six"
  pixelBlocks50=32
 Case "Seven"
  pixelBlocks50= 33
 Case "Eight"
  pixelBlocks50=  34
 Case "Nine"
  pixelBlocks50= 35
 Case "Ten"
  pixelBlocks50= 36
 Case "Eleven"
  pixelBlocks50= 37
 Case "Twelve"
  pixelBlocks50= 38
 Case "Thirteen"
  pixelBlocks50= 39
 Case "Fourteen"
  pixelBlocks50= 40
 Case "Fifteen"
  pixelBlocks50= 41
  Case "Sixteen"
  pixelBlocks50= 42
  Case "Seventeen"
  pixelBlocks50= 43
  Case "Eighteen"
  pixelBlocks50= 44
  Case "Nineteen"
  pixelBlocks50= 45
  Case "Twenty"
  pixelBlocks50= 46
  Case "twenty-one"
  pixelBlocks50= 47
  Case "twenty-two"
  pixelBlocks50= 48
  Case "twenty-three"
  pixelBlocks50= 49
  Case "twenty-four"
  pixelBlocks50= 50
  Case "twenty-five"
  pixelBlocks50= 51
  Case "twenty-six"
  pixelBlocks50= 52
  Case "twenty-seven"
  pixelBlocks50= 53
  Case "twenty-eight"
  pixelBlocks50= 54
  Case "twenty-nine"
  pixelBlocks50=55
  Case "thirty"
  pixelBlocks50= 56
  Case "thirty-one"
  pixelBlocks50= 57
  Case "thirty-two"
  pixelBlocks50= 58
  Case "thirty-three"
  pixelBlocks50= 59
  Case "thirty-four"
  pixelBlocks50= 60
End Select
intLeft= 50*pixelBlocks50
 GetScreenCoordinates=intLeft
Else
 Select Case s
 Case "Zero"
  intTop=5
 Case "Alpha"
  intTop= 50
 Case "Bravo"
  intTop= 100
 Case "Charlie"
  intTop= 150
 Case "Delta"
  intTop= 200
 Case "Echo"
  intTop= 250
 Case "Foxtrot"
  intTop= 300
 Case "Golf"
  intTop= 350
 Case "Hotel"
  intTop= 400
 Case "India"
  intTop= 450
 Case "Juliet"
  intTop= 500
 Case "Kilo"
  intTop= 550
 Case "Lima"
  intTop= 600
 Case "Mike"
  intTop= 650
 Case "November"
  intTop= 700
 Case "Oscar"
  intTop= 750
 Case "Papa"
  intTop= 800
 Case "Qubec"
  intTop= 850
 Case "Romeo"
  intTop= 900
 Case "Sierra"
  intTop= 950
 Case "Tango"
  intTop= 1000
 Case "Uniform"
  intTop= 1050
 End Select
 GetScreenCoordinates=intTop
End If
End Function

Private Function MultiMonitors() As Boolean
 MultiMonitors = (GetSystemMetrics(SM_CMONITORS) > 1)
End Function

Public Function GetVirtualDisplayRect() As RectAPI
With GetVirtualDisplayRect
    .Left = GetSystemMetrics(SM_XVIRTUALSCREEN)
    .Top = GetSystemMetrics(SM_YVIRTUALSCREEN)
    .Right = GetSystemMetrics(SM_CXVIRTUALSCREEN) + .Left
    .Bottom = GetSystemMetrics(SM_CYVIRTUALSCREEN) + .Top
End With
End Function
