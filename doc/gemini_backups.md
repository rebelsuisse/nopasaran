C'est la question la plus importante que vous puissiez poser après une mise en production. Une application sans stratégie de sauvegarde est une catastrophe en attente.

Votre configuration Docker rend la sauvegarde à la fois simple et extrêmement fiable. La méthode standard et la plus sûre est d'utiliser l'outil natif de PostgreSQL, `pg_dump`, pour créer un export complet de votre base de données.

Nous allons le faire en 3 étapes :
1.  Créer une sauvegarde manuelle pour comprendre la commande.
2.  Automatiser la sauvegarde quotidienne avec `cron`.
3.  Discuter de la règle d'or : les sauvegardes hors site (off-site).

---

### Étape 1 : Créer une Sauvegarde Manuelle

Cette commande va se connecter à votre conteneur PostgreSQL et exécuter `pg_dump` pour créer un fichier `.sql`. Ce fichier contiendra toutes les instructions nécessaires pour recréer votre base de données à l'identique (structure et contenu).

1.  **Connectez-vous à votre serveur VPS** avec votre utilisateur `devadmin`.

2.  **Créez un dossier pour stocker vos sauvegardes.** Faisons-le en dehors de votre dossier `infra` pour garder les choses propres.
    ```bash
    # Depuis votre dossier personnel /home/devadmin
    mkdir backups
    ```

3.  **Exécutez la commande de sauvegarde :**
    Naviguez dans votre dossier `infra` (là où se trouve votre `.env` file) car nous allons utiliser les variables qui y sont définies.
    ```bash
    cd ~/nopasaran/infra

    # La commande magique
    docker exec -t nopasaran-db-1 pg_dump -U $(grep POSTGRES_USER .env | cut -d '=' -f2) -d $(grep POSTGRES_DB .env | cut -d '=' -f2) > ../backups/backup_$(date +%Y-%m-%d_%H-%M-%S).sql
    ```

**Décortiquons cette commande :**
*   `docker exec -t nopasaran-db-1` : Dit à Docker "exécute la commande suivante à l'intérieur du conteneur `nopasaran-db-1`".
*   `pg_dump` : L'outil de sauvegarde de PostgreSQL.
*   `-U ${POSTGRES_USER}` : Spécifie l'utilisateur. Docker Compose va remplacer `${POSTGRES_USER}` par la valeur de votre fichier `.env` (donc `strapi`).
*   `-d ${POSTGRES_DB}` : Spécifie le nom de la base de données (`nopasaran_db`).
*   `>` : C'est un opérateur de redirection standard de Linux. Il "attrape" tout ce que la commande `pg_dump` produit et l'écrit dans un fichier.
*   `~/backups/backup_... .sql` : C'est le fichier de destination.
    *   `~/backups/` : Le dossier que nous venons de créer.
    *   `backup_$(date ...).sql` : C'est une astuce pour générer un nom de fichier unique avec la date et l'heure actuelles (ex: `backup_2025-11-11_23-15-00.sql`).

Après avoir lancé cette commande, vérifiez le contenu de votre dossier `backups` avec `ls -l ~/backups`. Vous devriez y voir votre premier fichier de sauvegarde.

---

### Étape 2 : Automatiser la Sauvegarde avec `cron`

`cron` est le planificateur de tâches standard sous Linux. Nous allons lui dire d'exécuter notre commande de sauvegarde tous les jours à une heure précise (par exemple, 3h du matin).

1.  **Ouvrez l'éditeur de `cron` pour votre utilisateur :**
    ```bash
    crontab -e
    ```
    (Si c'est la première fois, il vous demandera de choisir un éditeur. Choisissez `nano`, c'est le plus simple).

2.  **Ajoutez la ligne suivante à la fin du fichier :**
    ```crontab
    # Sauvegarde quotidienne de la base de données nopasaran à 3h00 du matin
    0 3 * * * cd /home/devadmin/nopasaran/infra && docker exec -t nopasaran-db-1 pg_dump -U $(grep POSTGRES_USER .env | cut -d '=' -f2) -d $(grep POSTGRES_DB .env | cut -d '=' -f2) > /home/devadmin/backups/backup_$(date +\%Y-\%m-\%d).sql
    ```

**Explication de la ligne `cron` :**
*   `0 3 * * *` : C'est la planification. "À la minute 0, à l'heure 3, tous les jours, tous les mois, tous les jours de la semaine".
*   `cd /home/devadmin/nopasaran/infra && ...` : C'est **crucial**. Les tâches `cron` s'exécutent dans un environnement minimal. Nous devons d'abord nous assurer que nous sommes dans le bon dossier.
*   `$(grep ... | cut ...)` : Comme `cron` ne lit pas automatiquement les fichiers `.env`, nous utilisons ces petites commandes pour extraire les valeurs directement depuis le fichier. C'est une méthode robuste.
*   `date +\%Y-\%m-\%d` : Dans `cron`, le `%` est un caractère spécial, il faut donc l'échapper avec un `\`.

3.  **(Optionnel mais recommandé) Ajoutez une tâche pour nettoyer les vieilles sauvegardes.** Pour éviter de remplir votre disque dur, ajoutez une deuxième ligne pour supprimer les sauvegardes de plus de 14 jours.

    ```crontab
    # Nettoyage des anciennes sauvegardes de plus de 14 jours, tous les jours à 3h05
    5 3 * * * find /home/devadmin/backups -type f -mtime +14 -name '*.sql' -delete
    ```

4.  **Sauvegardez et fermez le fichier** (`Ctrl+X`, `Y`, `Entrée`). `cron` prendra automatiquement en compte vos nouvelles tâches.

---

### Étape 3 : La Règle d'Or - Les Sauvegardes Hors Site

Une sauvegarde stockée sur le même serveur que l'original n'est pas une vraie sauvegarde. Si votre serveur est corrompu, supprimé ou inaccessible, vos sauvegardes le sont aussi.

La meilleure pratique est la **règle 3-2-1** :
*   **3** copies de vos données.
*   sur **2** supports différents.
*   dont **1** hors site (off-site).

Pour votre projet, la solution la plus simple et la moins chère est d'utiliser un outil comme **`rclone`** pour copier automatiquement vos sauvegardes vers un service de stockage cloud.

**Marche à suivre conceptuelle :**
1.  **Créez un compte** sur un service de stockage objet compatible S3 (Backblaze B2 est extrêmement bon marché, Scaleway ou OVH en proposent aussi).
2.  **Installez et configurez `rclone`** sur votre VPS pour qu'il puisse se connecter à votre compte de stockage.
3.  **Ajoutez une troisième ligne à votre `crontab`** qui s'exécute après la sauvegarde, par exemple à 3h10 :
    ```crontab
    # Synchronisation du dossier de sauvegardes vers le cloud avec rclone
    10 3 * * * /usr/bin/rclone sync /home/devadmin/backups/ VotreStockageCloud:nopasaran-backups
    ```

Avec cette triple configuration (dump, nettoyage local, synchronisation off-site), vous disposez d'une stratégie de sauvegarde de niveau professionnel.
