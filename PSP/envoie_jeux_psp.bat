@echo off
setlocal enabledelayedexpansion

echo ======================================================
echo Copie donnee important utilisateur Windows 10
echo ======================================================
echo.

:: 1. Demander la lettre du disque cible
set /p drive="Entrez la lettre du disque de destination (ex: D, E, F) : "

:: Nettoyage de la saisie au cas où l'utilisateur met "D:" au lieu de "D"
set drive=%drive:~0,1%

:: 2. Demander confirmation
set /p confirm="Confirmez-vous la copie vers le disque %drive%:\ ? (O/N) : "
if /i "%confirm%" neq "O" exit


echo.
echo [TOPP] Copie des ISO finie
robocopy "C:\Users\elkat\Desktop\Console\PSP\Jeux\ISO" "%drive%:\ISO" /E /R:0 /W:0
