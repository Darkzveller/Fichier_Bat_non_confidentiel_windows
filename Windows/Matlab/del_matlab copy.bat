@echo off
echo ======================================================
echo NETTOYAGE FORCE DE MATLAB (RESOLUTION ACCES REFUSE)
echo ======================================================
echo.

:: 1. Demande de droits Admin
openfiles >nul 2>&1
if %errorlevel% neq 0 (
    echo [!] ERREUR : Vous devez executer ce script en tant qu'ADMINISTRATEUR.
    pause
    exit
)

echo [1/4] Arret des services et processus MathWorks...
:: Arrete le service de fond qui bloque vos DLL
sc stop MathWorksServiceHost >nul 2>&1
taskkill /F /IM MathWorksServiceHost.exe /T >nul 2>&1
taskkill /F /IM MathWorksServiceHost-Monitor.exe /T >nul 2>&1
taskkill /F /IM MATLAB.exe /T >nul 2>&1
timeout /t 3 /nobreak >nul

echo.
echo [2/4] Nettoyage des dossiers locaux (AppData)...
:: Utilisation de DEL et RD avec force
if exist "%LocalAppData%\MathWorks" (
    del /s /f /q "%LocalAppData%\MathWorks\*.*" >nul 2>&1
    rd /s /q "%LocalAppData%\MathWorks"
)
if exist "%AppData%\MathWorks" (
    rd /s /q "%AppData%\MathWorks"
)

echo.
echo [3/4] Nettoyage ProgramData et Installation...
if exist "C:\ProgramData\MathWorks" rd /s /q "C:\ProgramData\MathWorks"
if exist "C:\ProgramData\FLEXnet" (
    del /f /q "C:\ProgramData\FLEXnet\mathworks*" >nul 2>&1
)
if exist "C:\Program Files\MATLAB" rd /s /q "C:\Program Files\MATLAB"

echo.
echo [4/4] Nettoyage final du Registre...
reg delete "HKEY_CURRENT_USER\Software\MathWorks" /f >nul 2>&1
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\MathWorks" /f >nul 2>&1

echo.
echo ======================================================
echo NETTOYAGE FORCE TERMINE.
echo Si des fichiers resistent encore, redemarrez en "Mode Sans Echec".
echo ======================================================
pause