function Launch-Sandbox {
    $progressPreference = 'silentlyContinue'
    Write-Output "Downloading Teams fresh from the web - this will take a few minutes depending on your Internet Speed. This window will close once done"
    Write-Output "Sandbox Configuration by Michael Condon, contact micondon@microsoft.com for details"
    Write-Output " "
    Write-Output "Downloading Teams, please wait"
    Invoke-WebRequest -Uri "https://go.microsoft.com/fwlink/p/?LinkID=869426&clcid=0xc09&culture=en-au&country=AU&lm=deeplink&lmsrc=groupChatMarketingPageWeb&cmpid=directDownloadWin64" -OutFile "C:\Sandbox\Teams.exe"
    Write-Output "Downloading ZoomIt, please wait"
    Invoke-WebRequest -Uri "https://live.sysinternals.com/ZoomIt64.exe" -OutFile "C:\Sandbox\Zoomit.exe"
    
    $sandBox = "C:\Sandbox\TeamsDemo.wsb"
    
    Invoke-Item $sandBox
}
function Setup-Sandbox{
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
}


if (Test-Path -Path "C:\Sandbox"){
    Write-Output "Sandbox Setup detected, invoking sandbox"
    Launch-Sandbox
} 
else {
    Write-Output "No Sandbox Setup detected, initialising setup"
    Setup-Sandbox
    Launch-Sandbox
}



