'-------------------------'
'''Tamisha - Week 2 assignment.'''
'''Scripting Languages for the Administrator'''

'-------------------------'

fnum = cint(WScript.arguments(0))
snum = cint(WScript.arguments(1))
tnum = cint(WScript.arguments(2))

addTotal = fnum + snum + tnum
WSH.Echo("The sum total is: " & addTotal)

average = (fnum + snum + tnum) / 3
WSH.Echo("The average is: " & average)

resultFile = "C:\ENTD261\Results.txt"
Set fs = CreateObject("Scripting.FileSystemObject")
Set file = fs.CreateTextFile(resultFile, True)
Set op = fs.OpenTextFile(resultFile)
file.Write ("The sum total is: " & addTotal & vbCrLf & "The average is: " & average)
file.Close
msgbox "Results File Created"