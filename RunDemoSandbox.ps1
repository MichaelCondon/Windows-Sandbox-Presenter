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