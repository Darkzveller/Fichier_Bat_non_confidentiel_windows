@echo off
set "WAIT_SEC=10"
echo Test de la connexion internet avec l'imprimante

REM timeout /t %WAIT_SEC% >nul 2>&1

REM ping -4 EPSON3581C8.local -n 4 >nul 2>&1

REM Permet de pign l'imprimante
REM ping -4 EPSON3581C8.local -n 4
ping -4 192.168.1.153 -n 4 >nul

REM Permet de sauter de 2 lignes
echo.
echo.

if errorlevel 1 (
    echo La connexion avec l'imprimante n'est pas detectee.
) else (
    echo La connexion avec l'imprimante est detectee.
)
echo.
echo Taper sur une touche pour fermer la page.
pause >nul

