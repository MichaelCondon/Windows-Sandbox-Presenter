How to use this config:
STEP 1: Make sure you have Windows Sandbox active on your PC, Use the search bar on the task bar and type Turn Windows Features on and off to access the Windows Optional Features tool. Select Windows Sandbox and then OK. Restart the computer if you're prompted.

STEP 2: Clone this repo anywhere on your device

STEP 3:
Run the "RunDemoSandbox" Script, This script detects if setup has been performed prior, if not it will copy the neccessary files into C:\Sandbox, once done this will download a fresh copy of Microsoft Teams (https://aka.ms/GetTeams), and ZoomIt (https://docs.microsoft.com/en-us/sysinternals/downloads/zoomit) and copy them to the Sandbox folder, it will then launch the sandbox itself and automatically open Teams and Zoomit.

The way that Windows Sandbox works is that it maps a folder from your local PC to the Virtualised Environment, my script maps the "C:\Sandbox" file to the newly invoked sandbox and then runs the Teams and ZoomIt binaries from the mapped folder. You may need to allow PowerShell scripts to run on your device if you have never launched a PowerShell script before, running this command in the directory you downloaded the script to may help in unblocking specifically this script:

Unblock-File -Path RunDemoSandBox.ps1

