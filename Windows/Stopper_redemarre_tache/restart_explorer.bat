@echo off

:: Ferme l'explorateur Windows
taskkill /f /im explorer.exe

:: Petite pause (optionnelle)
timeout /t 2 /nobreak > nul

:: Relance l'explorateur Windows
start explorer.exe

exit