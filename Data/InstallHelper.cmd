REM Set Powershell Execution Policy to allow scripts
powershell.exe -command "&{Set-ExecutionPolicy RemoteSigned -force}"

REM Run the pwoershell setup to install Teams + Zoomit
powershell.exe -file "C:\scripts\InstallStuff.ps1"
