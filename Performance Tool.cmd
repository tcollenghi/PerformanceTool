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
CLS
TITLE 1/6 - CLEANING TEMP...
ECHO.
ECHO 1/6 - CLEANING TEMP...
DEL "%TEMP%" /F /S /Q
CLS
ECHO.
TITLE 1/6 - CLEANING TEMP DONE
ECHO 1/6 - CLEANING TEMP DONE.
ECHO.

TITLE 2/6 - CLEANING TEMP FROM IE...
ECHO.
ECHO 2/6 - CLEANING TEMP FROM IE...
DEL "%USERPROFILE%\LOCALS~1\Temporary Internet Files\Content.IE5" /F /S /Q
CLS
ECHO.
ECHO 2/6 - CLEANING TEMP FROM IE DONE.
ECHO.
TITLE 2/6 - CLEANING TEMP FROM IE DONE.

TITLE 3/6 - CLEANING TEMP FROM WINDOWS TEMP...
ECHO.
ECHO 3/6 - CLEANING TEMP FROM WINDOWS TEMP...
DEL "%SystemRoot%\Temp" /F /S /Q
CLS
ECHO.
ECHO 3/6 - CLEANING TEMP FROM WINDOWS TEMP DONE....
ECHO.
TITLE 3/6 - CLEANING TEMP FROM WINDOWS TEMP DONE....

TITLE 4/6 - CLEANING TEMP FROM  SYSTEMDRIVE...
ECHO.
ECHO 4/6 - CLEANING TEMP FROM  SYSTEMDRIVE...
DEL "%SYSTEMDRIVE%\*.TMP" /F /S /Q
DEL "%SYSTEMDRIVE%\~*.*" /F /S /Q
CLS
ECHO.
ECHO 4/6 - CLEANING TEMP FROM  SYSTEMDRIVE DONE.
ECHO.
TITLE 4/6 - CLEANING TEMP FROM  SYSTEMDRIVE DONE.

TITLE 5/6 - CLEANING LOGS...
ECHO.
ECHO 5/6 - CLEANING LOGS...
DEL "%SYSTEMDRIVE%\*.LOG" /F /S /Q
CLS
ECHO.
ECHO 5/7 - CLEANING LOGS DONE....
ECHO.
TITLE 5/7 - CLEANING LOGS DONE....

TITLE 6/7 - CLEANING RECYCLER...
ECHO.
ECHO 6/7 - CLEANING RECYCLER...
DEL "%SYSTEMDRIVE%\RECYCLER" /F /S /Q
CLS

ECHO 7/7 - PREFETCH...
DEL C:\WINDOWS\Prefetch\*.* /F /S /Q
CLS

cd "C:\ProgramData\Package Cache"
DEL /F /S *.msiDelete /F /S *.cab

ECHO.
TITLE LIMPEZA CONCLUIDA. 
ECHO 1/7 - LIMPEZA DOS TEMPORARIOS CONCLUIDA.
ECHO 2/7 - LIMPEZA DOS TEMPORARIOS DO INTERNET EXPLORER CONCLUIDA.
ECHO 3/7 - LIMPEZA DOS TEMPORARIOS DO WINDOWS CONCLUIDA.
ECHO 4/7 - LIMPEZA DE OUTROS ARQUIVOS TEMPORARIOS CONCLUIDA.
ECHO 5/7 - LIMPEZA DOS LOGS CONCLUIDA.
ECHO 6/7 - LIMPEZA DA LIXEIRA CONCLUIDA.
ECHO 7/7 - LIMPEZA DA PASTA PREFETCH
ECHO.
ECHO.

PAUSE