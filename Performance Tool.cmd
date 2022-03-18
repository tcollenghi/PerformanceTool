@echo off
rem Este es el titulo.
title Performance Tool

rem Estos son los servicios que se van a desabilitar.

echo Welcome to Performance Tool!  
timeout /t 3 /nobreak>nul
cls
echo Computer process optimization is about to start! 
timeout /t 3 /nobreak>nul
cls

echo Optimizing services... 
timeout /t 3 /nobreak>nul

C:\WINDOWS\system32\svchost.exe -k LocalServiceNetworkRestricted -p

rem for windows superfetch
net stop "superfetch" 

C:\WINDOWS\System32\svchost.exe -k utcsvc -p

rem for windows index
net stop "windows search" 

C:\WINDOWS\System32\svchost.exe -k LocalSystemNetworkRestricted -p

rem for Fax services
net stop "fax"

C:\WINDOWS\system32\svchost.exe -k netsvcs -p

rem Adobe Acobat Updater Service
net stop "AdobeARMservice" 

C:\WINDOWS\System32\svchost.exe -k NetworkService -p

rem Contact Data11b1d7e
net stop "PimIndexMaintenanceSvc_11b1d7e" 

C:\WINDOWS\System32\svchost.exe -k LocalSystemNetworkRestricted -p

rem for XBOX
net stop "XboxGipSvc" 

C:\WINDOWS\system32\svchost.exe -k LocalService

rem for XBOX
net stop "xbgm"

rem for XBOX
net stop "XblAuthManager" 

C:\WINDOWS\system32\svchost.exe -k LocalSystemNetworkRestricted

rem for XBOX
net stop "XblGameSave" 

C:\WINDOWS\system32\svchost.exe -k localService -p

rem For Demo Applications
net stop "RetailDemo" 

C:\WINDOWS\system32\svchost.exe -k netsvcs -p


rem cleaning temporary files
echo We will now proceed cleaning temporary files...
timeout /t 3 /nobreak>nul
del C:\Users\%username%\AppData\Local\Temp /f /s /q
rd C:\Users\%username%\AppData\Local\Temp /s /q
del c:\Windows\Temp /f /s /q
rd c:\Windows\Temp /s /q
del /q/f/s %TEMP%\*


cls

echo Your PC should be working fine by now.
timeout /t 3 /nobreak>nul
