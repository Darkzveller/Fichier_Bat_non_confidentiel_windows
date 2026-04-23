

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
echo Lancement de la sauvegarde vers %drive%:\...
echo.

:: --- DEBUT DES COPIES ---

echo [1/4] Copie du Bureau...
robocopy "C:\Users\elkat\Desktop" "%drive%:\Desktop" /E /R:0 /W:0

echo.
echo [2/4] Copie des Documents...
robocopy "C:\Users\elkat\Documents" "%drive%:\Documents" /E /R:0 /W:0

echo.
echo [3/4] Copie des Telechargements...
robocopy "C:\Users\elkat\Downloads" "%drive%:\Downloads" /E /R:0 /W:0

echo.
echo [4/4] Copie des Images...
robocopy "C:\Users\elkat\Pictures" "%drive%:\Pictures" /E /R:0 /W:0

:: --- FIN DES COPIES ---

echo.
echo ======================================================
echo Copie terminee. Verifiez votre disque %drive%:.
echo ======================================================
pause


@REM @echo off
@REM echo ======================================================
@REM echo Copie donnée important utilisateur windwos 10 vers disque dur externe
@REM echo ======================================================
@REM echo.

@REM :: Demander confirmation
@REM set /p confirm="Precise sur quel disque il faut copeier : "

@REM set /p confirm="As tu changer le disque sur lequel tu souhaites copier ? (O/N) : "
@REM if /i "%confirm%" neq "O" exit

@REM echo.
@REM echo [1/4] Copie du bureau pc vers le disque dur extern

@REM robocopy "C:\Users\elkat\Desktop" "D:\Desktop" /E /R:0 /W:0

@REM echo.
@REM echo [2/4] Copie de documents pc vers le disque dur extern
@REM robocopy "C:\Users\elkat\Documents" "D:\Documents" /E /R:0 /W:0

@REM echo.
@REM echo [3/4] Copie de Telechargement pc vers le disque dur extern

@REM robocopy "C:\Users\elkat\Downloads" "D:\Downloads" /E /R:0 /W:0
@REM echo.
@REM echo [4/4] Copie de Images pc vers le disque dur extern

@REM robocopy "C:\Users\elkat\Pictures" "D:\Pictures" /E /R:0 /W:0

@REM echo.
@REM echo ======================================================
@REM echo Copie terminer vérifier par toi meme maintenant.
@REM echo ======================================================
@REM pause
