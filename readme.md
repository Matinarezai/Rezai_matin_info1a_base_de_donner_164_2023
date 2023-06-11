Rezai Matin-
Module 164 - 10.06.2023

Mon projet consiste en une interface (HTML, FLASK, Python, etc.) et une base de données MySQL.

Il s'agit d'un système de gestion des stocks du magasin ETAM, affichant donner , les Matriel  les departemntde  (avec une image représentant chaque catégorie).

Le système est basé sur les opérations CRUD (Create Read Update Delete) adaptées aux besoins des 15 tables de la base de données : "t_Utilisateur", "t_departement ", "t_pays" et "t_".

Avertissement :
Je n'ai pas réussi à établir le lien avec les tables intermédiaires permettant d'ajouter et de retirer des produits . 

Prérequis pour faire fonctionner mon projet :

    Un serveur MySQL doit être installé (Laragon (heidi.sql), XAMPP, UWAMP, MAMP, etc.).
    Python doit être installé.

ATTENTION : Cochez la case pour que le "PATH" intègre le programme Python lors de l'installation de Python. Avant la fin du processus d'installation, cliquez sur "disabled length limit" et sur "CLOSE".
Le test de Python se fait ensuite avec le programme "PyCharm".

    Installez "GIT" à partir de https://gitforwindows.org/.
    Le test de "GIT" se fait dans le programme "PyCharm".

Configuration de PyCharm :

    Installez "PyCharm" (version Community) et utilisez la même version IDE pour faire fonctionner le projet.
    Lors de l'installation, cochez toutes les options ASSOCIATIONS, ADD PATH, etc.
    Ouvrez "PyCharm" pour la première fois afin de le configurer. Choisissez le bouton "New Project".
    Modifiez le répertoire pour ce nouveau projet en créant un nouveau répertoire vide sur votre disque local.
    Il est important d'avoir sélectionné le répertoire que vous venez de créer, car "PyCharm" va automatiquement créer un environnement virtuel (venv) dans ce répertoire.
    Dans le menu, allez à File -> Settings -> Editor -> General -> Auto Import (rubrique Python) et cochez "Show auto-import tooltip".
    "PyCharm" ouvrira une fenêtre avec le contenu de "main.py" pour configurer les actions "UNDO" et "REDO".
    Sélectionnez tout le texte avec "CTRL-A", puis "CTRL-X" (Couper), puis "CTRL-Z" (UNDO). Faites ensuite un REDO avec "CTRL-Y". "PyCharm" vous demandera de choisir l'action du raccourci "CTRL-Y" pour effectuer un "REDO".

Guide pour faire fonctionner mon projet :

    Démarrez le serveur MySQL (Laragon (heidi.sql), uwamp, xamp, mamp, etc.).
    Dans "PyCharm", importez ma base de données à partir du fichier DUMP.
    Ouvrez le fichier APP_ETAM_164/database/1_ImportationDumpSql.py.
    Cliquez avec le bouton droit sur l'onglet de ce fichier et choisissez "run" (CTRL-MAJ-F10).
    En cas d'erreurs, ouvrez le fichier .env à la racine du projet et vérifiez les informations de connexion à la base de données.
    Testez simplement la connexion à la base de données en ouvrant le fichier APP_ETAM_164/database/2_test_connection_bd.py.
    Cliquez avec le bouton droit sur l'onglet de ce fichier et choisissez "run" (CTRL-MAJ-F10).
    Démarrez le microframework FLASK en ouvrant le fichier run_mon_app.py dans le répertoire racine du projet.
    Cliquez avec le bouton droit sur l'onglet de ce fichier et choisissez "run" (CTRL-MAJ-F10).
    Dans la console du "run", vous devriez voir un lien de la forme : "Running on http://127.0.0.1:5005". Cliquez dessus pour ouvrir mon projet dans votre navigateur.
    Vous êtes maintenant sur l'interface finale de mon projet !

Note : Veuillez suivre attentivement les instructions pour chaque étape afin de configurer correctement votre environnement et faire fonctionner le projet sans problème.
