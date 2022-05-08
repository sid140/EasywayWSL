
@ECHO OFF

ECHO Welcome to EasywayWSL Helper v1.0 
ECHO Programmed by Sid 
ECHO =================================

Pause>nul

ECHO INSTALL
ECHO ================================= 


ECHO 1. Download Ubuntu WSL2 for Windows 10
ECHO 2. Install Windows Terminal
ECHO 3. Documentation 
echo.  
echo.
echo.
Pause>nul

ECHO 1. Download Ubuntu WSL2 for Windows 10 
ECHO Press ENTER Key:Download Ubuntu WSL2 for Windows 10 
Pause>nul
Powershell -noprofile -executionpolicy bypass -command wsl --install -d Ubuntu
pause>nul 
ECHO 2. Install Windows Terminal 
START https://github.com/microsoft/terminal/releases/download/v1.12.10982.0/Microsoft.WindowsTerminal_Win10_1.12.10982.0_8wekyb3d8bbwe.msixbundle
pause>nul 

Powershell -noprofile -executionpolicy bypass -command wsl -- sudo apt update && sudo apt -y upgrade

Powershell wsl.exe --set-default-version 2
echo 
ECHO Starting Remote Desktop Services 

 wsl.exe sudo apt install xrdp
pause>nul
 wsl.exe sudo apt install -y xfce4
pause>nul
 wsl.exe sudo apt install -y xfce4-goodies
pause>nul
 wsl.exe sudo cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak
pause>nul
 wsl.exe sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini
pause>nul
 wsl.exe sudo sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini
pause>nul
 wsl.exe sudo sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini
pause>nul
 wsl.exe sudo /etc/init.d/xrdp start
pause>nul
echo !Now in Windows, use Remote Desktop Connection
echo localhost:3390

echo Then login using your Ubuntu username and password

ECHO 3. Install Ubuntu WSL2 Documentation 
@echo off
Pause>nul
START https://docs.microsoft.com/en-us/windows/wsl/install#install-wsl-command

START
Pause>nul
echo================================
echo Need Help 
Pause>nul
set /p search= Search for the latest resources : 
start "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" "https://stackoverflow.com/search?q"
EXIT /B
set choice=
set /p choice=Type the number to print text.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto Download Ubuntu WSL2 for Windows 10 
if '%choice%'=='2' goto Install Ubuntu WSL2
ECHO "%choice%" is not valid, try again

If ECHO1. 
PAUSE

If ECHO2. 
PAUSE

