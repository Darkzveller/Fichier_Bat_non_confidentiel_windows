@echo off
REM -------------------------------
REM Désactive l'affichage des commandes dans la console
REM Cela rend le script plus propre à l'exécution
REM -------------------------------



REM -------------------------------
REM Démarre un bloc local de variables
REM Les variables définies ici (PING_ADDR, WAIT_SEC) ne sortiront pas du script
REM -------------------------------
setlocal

REM --- Configuration ---
REM Adresse IP ou nom de domaine à pinger pour tester la connexion Internet
set "PING_ADDR=8.8.8.8"

REM Nombre de secondes à attendre entre chaque tentative si pas de connexion
set "WAIT_SEC=30"
REM ---------------------


REM Étiquette pour créer une boucle : ici, on vérifie la connexion Internet
:CHECK_CONN


REM Ping silencieux de l'adresse configurée (%PING_ADDR%)
REM -n 1 → envoie un seul paquet
REM >nul 2>&1 → redirige la sortie standard et les erreurs vers nul (aucun affichage)
ping -n 1 %PING_ADDR% >nul 2>&1


REM Si le ping échoue (code d'erreur 1 ou plus)
if errorlevel 1 (    REM Pas de connexion : blocage silencieux - on attend puis on retente
    
    REM Attend %WAIT_SEC% secondes avant de retenter, silencieusement
    timeout /t %WAIT_SEC% >nul 2>&1

    
    REM Retourne à l'étiquette : boucle infinie jusqu'à ce qu'une connexion soit détectée
    goto CHECK_CONN
) else (
    REM Si le ping réussit (connexion OK)

    REM Connexion OK : synchronisation silencieuse
    REM Synchronise l'heure du PC avec le serveur NTP par défaut
    REM >nul 2>&1 → ne montre aucun message ou erreur

    w32tm /resync 
)

endlocal
REM Termine le bloc local de variables, celles-ci sont détruites
pause
exit /b 0
REM Quitte le script avec un code de sortie 0 (succès)
