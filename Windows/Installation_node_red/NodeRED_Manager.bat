@echo off
title Gestionnaire Node-RED
color 0A

:menu
cls
echo ==========================================
echo         GESTIONNAIRE NODE-RED
echo ==========================================
echo.
echo  [1] Installer Node-RED
echo  [2] Desinstaller Node-RED
echo  [3] Verifier l'installation
echo  [4] Lancer Node-RED
echo  [5] Quitter
echo.
set /p choix=Choisissez une option : 

if "%choix%"=="1" goto install
if "%choix%"=="2" goto uninstall
if "%choix%"=="3" goto check
if "%choix%"=="4" goto start
if "%choix%"=="5" goto end

echo.
echo Choix invalide.
pause
goto menu


:install
cls
echo ==========================================
echo        INSTALLATION DE NODE-RED
echo ==========================================
echo.

where npm >nul 2>&1
if errorlevel 1 (
    echo ERREUR : npm n'est pas installe ou n'est pas dans le PATH.
    echo Installez Node.js avant de continuer.
    echo.
    pause
    goto menu
)

echo Installation de Node-RED...
echo.

call npm install -g node-red

if errorlevel 1 (
    echo.
    echo ERREUR pendant l'installation de Node-RED.
) else (
    echo.
    echo Node-RED a ete installe avec succes.
)

echo.
pause
goto menu


:uninstall
cls
echo ==========================================
echo       DESINSTALLATION DE NODE-RED
echo ==========================================
echo.

where npm >nul 2>&1
if errorlevel 1 (
    echo ERREUR : npm n'est pas disponible.
    pause
    goto menu
)

echo Desinstallation de Node-RED...
echo.

call npm uninstall -g node-red

if errorlevel 1 (
    echo.
    echo ERREUR pendant la desinstallation.
) else (
    echo.
    echo Node-RED a ete desinstalle.
)

echo.
pause
goto menu


:check
cls
echo ==========================================
echo       VERIFICATION DE NODE-RED
echo ==========================================
echo.

where node-red >nul 2>&1

if errorlevel 1 (
    echo Node-RED n'est pas installe ou n'est pas dans le PATH.
) else (
    echo Node-RED est installe.
    echo.
    echo Version :
    call node-red --version
)

echo.
pause
goto menu


:start
cls
echo ==========================================
echo          DEMARRAGE NODE-RED
echo ==========================================
echo.

where node-red >nul 2>&1

if errorlevel 1 (
    echo Node-RED n'est pas installe.
    echo Utilisez d'abord l'option 1.
    echo.
    pause
    goto menu
)

echo Lancement de Node-RED...
echo.
echo Pour l'arreter, utilisez CTRL+C.
echo.
call node-red

pause
goto menu


:end
exit