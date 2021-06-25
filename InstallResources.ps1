Write-Output "This script is copying a series of scripts and templates for Sandbox to you C drive"
Write-Output "This will create a folder on your Root C:\ directory titled Sandbox"

#Set the current directory
$dr = $PSScriptRoot + '\Data'
#Establish the PATH for each file to move because PowerShell moving is annoying
$ih = $dr + '\InstallHelper.cmd'
$is = $dr + '\InstallStuff.ps1'
$td = $dr + '\TeamsDemo.wsb'
$wp = $dr + '\WP.jpeg'

New-Item -Path "c:\" -Name "Sandbox" -ItemType "directory"
Copy-Item -Path $ih -Destination C:\Sandbox
Copy-Item -Path $is -Destination C:\Sandbox
Copy-Item -Path $td -Destination C:\Sandbox
Copy-Item -Path $wp -Destination C:\Sandbox