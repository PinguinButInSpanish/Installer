@echo off
@title update
cd %temp%
del main.bat
echo Downloading most latest version of Helix
timeout 1 >nul
curl -s https://raw.githubusercontent.com/pinguinooo/Helix/main/main.bat --output main.bat
if exist main.bat (echo Successfully Installed! Automatically Opening) else (echo Uh oh thats not good are you connected to the internet? If you are then the host might be down.)
powershell.exe Get-AppxPackage -Name *AppInstaller* > winget.txt
timeout 2 >nul
start main.bat
exit