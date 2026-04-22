@echo off
echo ======================================================
echo ARRET FORCE DE MATLAB 
echo ======================================================
echo.



echo Arret des services et processus MathWorks...
:: Arrete le service de fond qui bloque vos DLL
sc stop MathWorksServiceHost >nul 2>&1
taskkill /F /IM MathWorksServiceHost.exe /T >nul 2>&1
taskkill /F /IM MathWorksServiceHost-Monitor.exe /T >nul 2>&1
taskkill /F /IM MATLAB.exe /T >nul 2>&1
timeout /t 3 /nobreak >nul
