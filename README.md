# 🛠️ Fichiers BAT Windows 10

## Présentation

Ce dépôt est simplement une **collection de petits scripts et utilitaires personnels pour Windows 10**.

L'objectif n'est pas de créer un logiciel complet, mais de regrouper au même endroit plusieurs petits fichiers que j'utilise pour **automatiser des actions répétitives et gagner du temps** au quotidien.

La majorité des outils sont des scripts :

- `.bat` pour automatiser des commandes Windows ;
- `.reg` pour appliquer rapidement certaines modifications du registre ;
- `.txt` pour conserver des commandes ou procédures utiles ;
- quelques fichiers de configuration et tutoriels.

En résumé :

> **Une boîte à outils personnelle contenant plein de petits scripts censés me faire gagner du temps sous Windows 10.**

---

## 🎯 Objectif du dépôt

Au lieu de rechercher à chaque fois une commande, de retaper plusieurs lignes dans un terminal ou de refaire manuellement une procédure, je conserve ici des scripts permettant d'effectuer certaines tâches en quelques clics.

Par exemple :

```text
Action répétitive
       │
       ▼
Lancement du script
       │
       ▼
Commandes exécutées automatiquement
       │
       ▼
Temps gagné
```

Ce dépôt sert donc principalement de :

- boîte à outils Windows ;
- pense-bête ;
- collection de commandes utiles ;
- scripts d'administration ;
- automatisation de petites tâches ;
- sauvegarde de procédures que je peux réutiliser plus tard.

---

# 📂 Contenu

Le dépôt est organisé par catégories.

## 🚀 Démarrage Windows

Dossier :

```text
Demarrage_windows/
```

Contient des scripts permettant notamment d'activer ou de désactiver le démarrage rapide de Windows.

Exemples :

```text
win_disable_faststartup.bat
win_enable_faststartup.bat
```

---

## 🧠 Détection du matériel

Dossier :

```text
Detect_materiel/
```

Scripts permettant d'obtenir rapidement certaines informations sur le matériel du PC.

Par exemple :

- quantité de RAM installée ;
- fréquence de la RAM ;
- type de mémoire ;
- capacité maximale de RAM supportée ;
- nombre d'emplacements mémoire disponibles.

Exemples :

```text
info_ram_max.bat
ram_installee.bat
```

---

## 🔄 Extinction et redémarrage

Dossier :

```text
Extinction_Redemarrage/
```

Contient de petits raccourcis permettant d'exécuter directement certaines commandes système.

Par exemple :

```text
restart.bat
```

permet de redémarrer immédiatement Windows.

---

## 🖨️ Imprimante

Dossier :

```text
Imprimante/
```

Scripts utilisés pour simplifier certaines opérations liées aux imprimantes.

Ils permettent notamment de :

- vérifier si une imprimante est accessible sur le réseau ;
- effectuer un `ping` vers une imprimante ;
- redémarrer le service d'impression Windows ;
- vider la file d'attente du Spouleur d'impression.

---

## 📦 Microsoft Office

Dossier :

```text
Microsoft_office/
```

Contient quelques scripts liés à la maintenance de Microsoft Office.

---

## 🎮 PSP

Dossier :

```text
PSP/
```

Contient un script permettant d'automatiser la copie de fichiers vers un support destiné à une PSP.

Le script demande notamment la lettre du disque cible avant de lancer la copie.

---

## 🍓 Raspberry Pi

Dossier :

```text
Raspberry_pi/
```

Contient des raccourcis permettant de lancer plus rapidement des connexions SSH vers des Raspberry Pi.

Certains scripts lancent également **Xming** afin de permettre l'affichage graphique via SSH/X11.

Exemples :

```text
PI_Q.bat
PI_T.bat
```

---

## 🖥️ Serveur

Dossier :

```text
Serveur/
```

Regroupe plusieurs scripts et documents concernant :

- les connexions à des machines distantes ;
- SSH ;
- Xming ;
- l'accès à certains lecteurs réseau ;
- le bureau à distance ;
- différentes procédures de configuration ou de dépannage.

---

# 🪟 Outils Windows

Le dossier principal :

```text
Windows/
```

regroupe la majorité des petits outils.

---

## ⏱️ Afficher les secondes dans la barre des tâches

Dossier :

```text
Windows/Affiche_seconde_barre_tache/
```

Contient des fichiers `.reg` permettant d'activer ou de désactiver l'affichage des secondes dans l'horloge Windows.

Un script permet également de redémarrer `explorer.exe` afin d'appliquer rapidement la modification.

---

## 💾 Sauvegarde vers un disque externe

Dossier :

```text
Windows/Copie_fichier_vers_disque_extern/
```

Contient un script utilisant :

```text
robocopy
```

pour sauvegarder automatiquement plusieurs dossiers importants vers un disque externe.

Le script peut copier notamment :

- Bureau ;
- Documents ;
- Téléchargements ;
- Images.

La lettre du disque de destination est demandée au lancement.

---

## 🔎 Version de Windows

Le script :

```text
Windows/Detect_ver_windows.bat
```

ouvre directement :

```text
winver.exe
```

afin d'afficher la version de Windows installée.

---

## 🔴 Node-RED

Dossier :

```text
Windows/Installation_node_red/
```

Contient un petit gestionnaire :

```text
NodeRED_Manager.bat
```

qui propose un menu permettant de :

1. installer Node-RED ;
2. désinstaller Node-RED ;
3. vérifier son installation ;
4. lancer Node-RED.

Cela évite de devoir retaper manuellement les différentes commandes `npm`.

---

## 🕐 Synchronisation de l'heure Windows

Dossier :

```text
Windows/MAJ_horaire_date_windows/
```

Contient des scripts destinés à forcer ou automatiser la synchronisation de l'heure de Windows.

Ils utilisent notamment :

```text
w32tm
```

et peuvent attendre qu'une connexion réseau soit disponible avant de lancer la synchronisation.

---

## 📐 MATLAB

Dossier :

```text
Windows/Matlab/
```

Contient plusieurs scripts de maintenance pour MATLAB.

Ils permettent notamment de :

- arrêter les processus MathWorks ;
- arrêter certains services ;
- supprimer des fichiers résiduels ;
- nettoyer certaines entrées du registre ;
- préparer une réinstallation propre de MATLAB.

⚠️ **Attention : certains de ces scripts suppriment des fichiers, dossiers et clés de registre.**

Ils doivent être utilisés uniquement lorsque l'on comprend précisément ce qu'ils vont faire.

---

## ⚡ Performances

Dossier :

```text
Windows/Performances/
```

Contient notamment des notes ou tutoriels concernant certains paramètres de performances Windows.

---

## 🔄 Redémarrer l'Explorateur Windows

Dossier :

```text
Windows/Stopper_redemarre_tache/
```

Contient un script permettant de fermer puis relancer :

```text
explorer.exe
```

Cela peut être utile après certaines modifications de Windows sans avoir besoin de redémarrer complètement le PC.

---

## 📚 Tutoriels

Dossier :

```text
Windows/Tuto/
```

Contient différents petits tutoriels, par exemple pour intégrer certains scripts plus facilement à Windows.

---

## 🐧 WSL

Dossier :

```text
Windows/Wsl/
```

Contient des exemples de configuration pour **Windows Subsystem for Linux 2**.

Par exemple :

```ini
[wsl2]
memory=1GB
processors=2
swap=2GB
```

Cela permet de limiter les ressources utilisées par WSL.

---

## 📁 Chemin courant

Dossier :

```text
Windows/chemin_courant/
```

Contient un script permettant d'obtenir rapidement le chemin du dossier courant dans un format facilement réutilisable.

---

# 🔃 Git

Deux petits scripts sont également présents à la racine :

```text
git_pull.bat
git_push.bat
```

Ils servent de raccourcis pour certaines opérations Git fréquentes.

### `git_pull.bat`

Exécute simplement :

```bash
git pull
```

### `git_push.bat`

Enchaîne :

```bash
git status
git add .
git commit -m "maj"
git push
```

L'objectif est encore une fois de gagner quelques secondes lors des opérations répétitives.

---

# ▶️ Utilisation

La majorité des scripts peuvent simplement être lancés avec un double-clic :

```text
script.bat
```

Cependant, certains scripts nécessitent des **droits administrateur**.

Dans ce cas :

```text
Clic droit
   ↓
Exécuter en tant qu'administrateur
```

Certains outils nécessitent également que des logiciels soient déjà installés, par exemple :

- Git ;
- Node.js / npm ;
- Node-RED ;
- OpenSSH ;
- Xming ;
- WSL ;
- MATLAB ;
- ST ou autres outils selon le script concerné.

---

# ⚠️ Important

Ces scripts ont avant tout été créés **pour mon environnement personnel**.

Ils ne sont donc pas forcément directement compatibles avec tous les ordinateurs.

Certains fichiers contiennent par exemple :

- des chemins locaux ;
- des noms d'utilisateurs Windows ;
- des lettres de disque ;
- des noms de machines ;
- des adresses IP locales ;
- des noms d'imprimantes ;
- des emplacements de logiciels.

Par exemple, un chemin comme :

```text
C:\Users\...\Desktop
```

devra éventuellement être modifié avant d'utiliser le script sur une autre machine.

---

## ⚠️ Scripts sensibles

Certains scripts peuvent :

- supprimer des fichiers ;
- supprimer des dossiers ;
- modifier le registre Windows ;
- arrêter des services ;
- tuer des processus ;
- modifier des paramètres système ;
- redémarrer Windows ;
- redémarrer l'Explorateur Windows.

Il est donc recommandé de **lire le contenu d'un script avant de l'exécuter**, surtout lorsqu'il est lancé avec les droits administrateur.

---

# 🧪 Compatibilité

Ces scripts ont principalement été créés et utilisés sous :

```text
Windows 10
```

Certains peuvent fonctionner sous Windows 11, mais ce n'est pas l'objectif principal du dépôt et leur fonctionnement n'est pas garanti.

---

# 💡 Philosophie du projet

Le principe du dépôt est volontairement simple :

> Si une tâche Windows me fait perdre du temps plusieurs fois, j'essaie d'en faire un petit script.

Il ne s'agit donc pas d'un gros projet logiciel structuré autour d'une seule application.

C'est plutôt une collection évolutive de petits outils :

```text
Besoin
  ↓
Commande manuelle
  ↓
Création d'un script
  ↓
Ajout au dépôt
  ↓
Réutilisation en quelques clics
```

Le dépôt est amené à évoluer au fur et à mesure que de nouveaux besoins apparaissent.

---

# 📌 Résumé

Ce dépôt contient simplement **plein de petits scripts et raccourcis destinés à me faire gagner du temps sous Windows 10**.

Ils permettent d'automatiser ou de simplifier des tâches telles que :

- la maintenance Windows ;
- la gestion du réseau ;
- les sauvegardes ;
- la gestion de l'imprimante ;
- les connexions SSH ;
- Raspberry Pi ;
- WSL ;
- Node-RED ;
- MATLAB ;
- Git ;
- la détection du matériel ;
- diverses commandes système.

L'objectif principal est donc :

> **Automatiser les petites tâches répétitives pour éviter de refaire manuellement les mêmes manipulations.**
