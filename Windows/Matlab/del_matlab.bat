
@echo off
echo ======================================================
echo NETTOYAGE COMPLET DE MATLAB (FICHIERS ET REGISTRE)
echo ======================================================
echo.

:: Demander confirmation
set /p confirm="Voulez-vous vraiment supprimer TOUS les fichiers et registres MATLAB ? (O/N) : "
if /i "%confirm%" neq "O" exit

echo.
echo [1/3] Arret des processus MATLAB s'ils sont ouverts...
taskkill /F /IM MATLAB.exe /T 2>nul

echo.
echo [2/3] Suppression des dossiers...

:: Suppression AppData (Local et Roaming)
if exist "%AppData%\MathWorks" (
    rd /s /q "%AppData%\MathWorks"
    echo - AppData Roaming nettoye.
)
if exist "%LocalAppData%\MathWorks" (
    rd /s /q "%LocalAppData%\MathWorks"
    echo - AppData Local nettoye.
)

:: Suppression ProgramData
if exist "C:\ProgramData\MathWorks" (
    rd /s /q "C:\ProgramData\MathWorks"
    echo - ProgramData nettoye.
)

:: Suppression du dossier d'installation (Attention au chemin)
if exist "C:\Program Files\MATLAB" (
    rd /s /q "C:\Program Files\MATLAB"
    echo - Dossier Program Files nettoye.
)

:: Suppression du stockage FlexNet (optionnel mais recommande pour erreur -8)
if exist "C:\ProgramData\FLEXnet" (
    echo Nettoyage du stockage de licence...
    del /q "C:\ProgramData\FLEXnet\mathworks*" 2>nul
)

echo.
echo [3/3] Suppression des cles de registre...

:: Suppression des cles MathWorks dans le registre
reg delete "HKEY_CURRENT_USER\Software\MathWorks" /f 2>nul
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\MathWorks" /f 2>nul

echo.
echo ======================================================
echo NETTOYAGE TERMINE. Vous pouvez redemarrer et reinstaller.
echo ======================================================
pause
