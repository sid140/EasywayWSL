
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
START sudo dnf instal https://github.com/microsoft/terminal.git
Pause>nul
ECHO 3. Install Ubuntu WSL2
@echo off
ECHO Documentation (Use Windows Terminal to execute command line)
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

