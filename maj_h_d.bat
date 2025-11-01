@echo off
setlocal

REM --- Configuration ---
set "PING_ADDR=8.8.8.8"
set "WAIT_SEC=30"
REM ---------------------

:CHECK_CONN
ping -n 1 %PING_ADDR% >nul 2>&1
if errorlevel 1 (
    REM Pas de connexion : blocage silencieux - on attend puis on retente
    timeout /t %WAIT_SEC% >nul 2>&1
    goto CHECK_CONN
) else (
    REM Connexion OK : synchronisation silencieuse
    w32tm /resync >nul 2>&1
)

endlocal
exit /b 0
