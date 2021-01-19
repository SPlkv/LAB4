set w=WScript.CreateObject("ClassLibrary.FuncSinX")
WScript.Echo w.FuncName

Set obj = GetObject("script:C:\Users\User\Desktop\ActiveXwsc.wsc")
WScript.Echo obj.FuncName


f=InputBox("Input function number:")
MsgBox(f)

Dim x
x=InputBox("Input x:")

Dim oExcelApp

Set oExcelApp = CreateObject("Excel.Application")
oExcelApp.Visible = True
oExcelApp.Workbooks.Add
oExcelApp.Cells(1,1).Value = "Table values"
oExcelApp.Cells(2,1).Value = "X"
oExcelApp.Cells(2,2).Value = "Y"

Dim i

For i = 1 To x
oExcelApp.Cells(i+2,1).Value = i
Select Case f
	Case "1"
		y=w.TheFunc(i)
		oExcelApp.Cells(i+2,2).Value = y
	Case "2"
		y=obj.TheFunc(i)
		oExcelApp.Cells(i+2,2).Value = y
Case Else
	MsgBox("Error")
End Select
Next

Set objWriteSheet = oExcelApp.Worksheets(1)
Set oMychart = objWriteSheet.ChartObjects.Add(50, 50, 1000, 500).Chart
oMychart.ChartType = 72
oMychart.SetSourceData objWriteSheet.Range("A3:B20")
		