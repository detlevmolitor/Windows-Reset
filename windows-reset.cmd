Rem/||(
/* -----------------------------------------------
/* Author : Detlev Molitor  - molitor-eu.de
/* MIT license: http://opensource.org/licenses/MIT
/* GitHub : https://github.com/detlevmolitor/Windows-Reset
/* v1.0.0
/* ----------------------------------------------- */
)
@echo off
:start
taskkill /F /FI &quot;STATUS eq NOT RESPONDING&quot;
taskkill /f /im firefox.exe /im chrome.exe /im iexplore.exe /im opera.exe
ipconfig /flushdns
ipconfig /release
ipconfig /release6
ipconfig /flushdns
netsh interface ip set dns &quot;LAN-Verbindung&quot; dhcp
cmd /c echo off | clip
rundll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
taskkill /f /im explorer.exe
start explorer.exe
if errorlevel 1 shutdown -r -t 01
cleanmgr /verylowdisk
echo (c) Business View Photo Ag
echo.
echo.
echo *******************
echo  please wait&#x2026;
echo ****************
echo.
echo.
ipconfig /renew
ipconfig /renew6
ipconfig /registerdns
netsh interface ip set dns &quot;LAN-Verbindung&quot; static 8.8.8.8
netsh interface ip add dns &quot;LAN-Verbindung&quot; 108.61.210.58
netsh interface ip add dns &quot;LAN-Verbindung&quot; 151.236.29.92
ipconfig /all
netsh interface ip show config
echo.
echo.
echo ********
echo  finish
echo ***********
echo.
echo.
echo (c) Detlev.Molitor@business-view.photo
echo.
echo.
:ende
pause
exit
echo.
:ende
pause
exit
