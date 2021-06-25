How to use this config:
STEP 1: Make sure you have Windows Sandbox active on your PC, Use the search bar on the task bar and type Turn Windows Features on and off to access the Windows Optional Features tool. Select Windows Sandbox and then OK. Restart the computer if you're prompted.

STEP 2: Clone this repo anywhere on your device

STEP 3:
Run the "InstallResources" Script. This script copies configuration scripts and the important WSB file to a new directory on your C: drive called "Sandbox"

STEP 4:
Run the "RunDemoSandbox" Script, this will download a fresh copy of Microsoft Teams (https://aka.ms/GetTeams), and ZoomIt (https://docs.microsoft.com/en-us/sysinternals/downloads/zoomit) and copy them to the Sandbox folder, it will then launch the sandbox itself and automatically open Teams and Zoomit

The way that Windows Sandbox works is that it maps a folder from your local PC to the Virtualised Environment, my script maps the "C:\Sandbox" file to the newly invoked sandbox and then runs the Teams and ZoomIt binaries from the mapped folder.
