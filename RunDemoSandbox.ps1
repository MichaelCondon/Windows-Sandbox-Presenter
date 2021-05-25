$progressPreference = 'silentlyContinue'
Write-Output "Downloading Teams fresh from the web - this will take a few minutes depending on your Internet Speed. This window will close once done"
Write-Output "Sandbox Configuration by Michael Condon, contact micondon@microsoft.com for details"
Write-Output " "
Write-Output "Downloading Teams, please wait"
Invoke-WebRequest -Uri "https://go.microsoft.com/fwlink/p/?LinkID=869426&clcid=0xc09&culture=en-au&country=AU&lm=deeplink&lmsrc=groupChatMarketingPageWeb&cmpid=directDownloadWin64" -OutFile "Data\Teams.exe"
Write-Output "Downloading ZoomIt, please wait"
Invoke-WebRequest -Uri "https://live.sysinternals.com/ZoomIt64.exe" -OutFile "Data\Zoomit.exe"

$usrPath = $env:USERPROFILE + "\Desktop\Windows-Sandbox-Presenter"

$sandBox = "Data\TeamsDemo.wsb"
[xml]$xmlDoc = Get-Content $sandBox
#The WSB file is basically XML, I find the HostFolder tag and replace the generic %Userprofile% variable with one locally calculated
$xmlDoc.SelectNodes("//HostFolder") | % { 
    $_."#text" = $_."#text".Replace("%USERPROFILE%",$usrPath) 
    }

$xmlDoc.Save($usrPath + "\Data\TeamsDemo.wsb")
Invoke-Item "Data\TeamsDemo.wsb"