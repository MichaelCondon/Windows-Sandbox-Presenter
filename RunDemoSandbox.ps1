$progressPreference = 'silentlyContinue'
Write-Output "Downloading Teams fresh from the web - this will take a few minutes depending on your Internet Speed. This window will close once done"
Write-Output "Sandbox Configuration by Michael Condon, contact micondon@microsoft.com for details"
Write-Output " "
Write-Output "Downloading Teams, please wait"
Invoke-WebRequest -Uri "https://go.microsoft.com/fwlink/p/?LinkID=869426&clcid=0xc09&culture=en-au&country=AU&lm=deeplink&lmsrc=groupChatMarketingPageWeb&cmpid=directDownloadWin64" -OutFile "Data\Teams.exe"
Write-Output "Downloading ZoomIt, please wait"
Invoke-WebRequest -Uri "https://live.sysinternals.com/ZoomIt.exe" -OutFile "Data\Zoomit.exe"

$sandBox = "Data\TeamsDemo.wsb"
[xml]$xmlDoc = Get-Content $sandBox

$usrPath = $env:USERPROFILE + "\Desktop\Sandbox Config"

Write-Output $usrPath

$xmlDoc.Configuration.MappedFolders.MappedFolder.HostFolder = $usrPath

Invoke-Item "Data\TeamsDemo.wsb"