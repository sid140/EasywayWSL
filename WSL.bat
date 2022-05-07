
@ECHO OFF

ECHO Welcome to EasyWSL Helper v1.0
ECHO =================================

Pause>nul

ECHO DOCUMENTATION
ECHO ================================= 


ECHO 1. Download Ubuntu WSL2 for Windows 10
ECHO 2. Install Windows Terminal
ECHO 3. Install Ubuntu WSL2
Pause>nul

ECHO 1. Download Ubuntu WSL2 for Windows 10 
ECHO Press ENTER Key:Download Ubuntu WSL2 for Windows 10 
Pause>nul
START https://www.microsoft.com/store/productId/9MTTCL66CPXJ

Pause>nul
ECHO 2. Install Windows Terminal 
START https://www.microsoft.com/store/productId/9N0DX20HK701
Pause>nul
ECHO 3. Install Ubuntu WSL2
ECHO Follow Steps and continue the installation (Use Windows Terminal to execute command line)
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

