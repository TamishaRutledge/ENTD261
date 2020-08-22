'-------------------------'
'''Tamisha - Week 3 assignment.'''
'''Scripting Languages for the Administrator'''

'-------------------------'

'Creating a FileSystemObject'
Set fso = CreateObject("Scripting.FileSystemObject")

'Defining the folder to look through'
objStartFolder = "C:\ENTD261"

'Make sure the Folder exists'
exists = fso.FolderExists(objStartFolder)
if not exists then
    WScript.Echo "The Folder you entered does not exist."
    WScript.Quit
end if 

'Get the files within the folder'
set objFolder = fso.GetFolder(objStartFolder)
Set objFiles = objFolder.Files  

'Creating a text file for the output data'
Set outputFile = fso.CreateTextFile("ResultOutput.txt", True)
fileSizeType = " bytes"

'Looping through the files'
For each item in objFiles
    
    'Send the info to the text file'
    outputFile.WriteLine(item.Name)
    outputFile.Write(item.Size)
    outputFile.WriteLine(fileSizeType)
    outputFile.WriteLine(item.DateCreated)
    outputFile.WriteLine("")

Next

'Close text file
outputFile.Close
msgbox "Results File Created"