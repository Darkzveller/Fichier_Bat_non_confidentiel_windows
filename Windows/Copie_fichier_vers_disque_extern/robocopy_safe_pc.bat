
@echo off
echo ======================================================
echo Copie donnée important utilisateur windwos 10 vers disque dur externe
echo ======================================================
echo.

:: Demander confirmation
set /p confirm="Precise sur quel disque il faut copeier : "

set /p confirm="As tu changer le disque sur lequel tu souhaites copier ? (O/N) : "
if /i "%confirm%" neq "O" exit

echo.
echo [1/4] Copie du bureau pc vers le disque dur extern

robocopy "C:\Users\elkat\Desktop" "D:\Desktop" /E /R:0 /W:0

echo.
echo [2/4] Copie de documents pc vers le disque dur extern
robocopy "C:\Users\elkat\Documents" "D:\Documents" /E /R:0 /W:0

echo.
echo [3/4] Copie de Telechargement pc vers le disque dur extern

robocopy "C:\Users\elkat\Downloads" "D:\Downloads" /E /R:0 /W:0
echo.
echo [4/4] Copie de Images pc vers le disque dur extern

robocopy "C:\Users\elkat\Pictures" "D:\Pictures" /E /R:0 /W:0

echo.
echo ======================================================
echo Copie terminer vérifier par toi meme maintenant.
echo ======================================================
pause
