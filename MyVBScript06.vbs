fn="C:\Users"

Set fs = CreateObject("Scripting.FileSystemObject")

If fs.FolderExists(fn) then

   msgbox "good folder"

else

   msgbox "bad file"

end if

Set folder = fs.GetFolder(fn)

wscript.echo "Folder Results File Created"

Set files = folder.Files

For Each file in files

    wscript.echo "Name: " & (file.name)

    wscript.echo "Size: " & (file.size)

    wscript.echo "Date: " & (file.datecreated)

Next