@echo off
@REM powershell -NoExit -Command ".\config.xlaunch; $env:DISPLAY='127.0.0.1:0.0'; ssh pit@pit.local"

@REM powershell -NoExit -Command "& 'C:\Program Files (x86)\Xming\config.xlaunch'; $env:DISPLAY='127.0.0.1:0.0'; ssh pit@pit.local"

@REM powershell -NoExit -Command "Write-Host 'Lancement de xming'; & 'C:\Program Files (x86)\Xming\config.xlaunch'; Write-Host 'Detection IP'; ipconfig | findstr IPv4"

@echo off
powershell -NoExit -Command "Write-Host 'Lancement de xming'; & 'C:\Program Files (x86)\Xming\config.xlaunch'; Write-Host 'Paramètrage environnement'; $env:DISPLAY='127.0.0.1:0.0'; Write-Host 'Lancement du ssh avec pit'; ssh -X -Y pit@pit.local"