Absolument. Voici une marche à suivre détaillée et structurée pour mettre en place votre projet de A à Z avec la pile technologique que vous avez choisie : **Strapi (Backend) + Next.js/React (Frontend)**.

Ce guide est conçu pour un ingénieur. Je vais me concentrer sur les étapes clés et les bonnes pratiques.

---

### Phase 0 : Prérequis et Achats (Durée : ~1 heure)

C'est la fondation. On achète et on prépare le terrain avant de construire.

1.  **Acheter le nom de domaine :**
    *   **Action :** Allez sur [Infomaniak](https://www.infomaniak.com/fr/hebergement-et-noms-de-domaine/noms-de-domaine).
    *   **Achetez :** `svp-udc-wall-of-shame.ch` (ou un nom similaire).
    *   **Coût :** ~9-10 CHF pour la première année.
    *   **Important :** Assurez-vous que la protection des données WHOIS est bien activée (elle l'est par défaut chez Infomaniak).

2.  **Louer le serveur VPS (Virtual Private Server) :**
    *   **Action :** Allez sur [Hetzner Cloud](https://www.hetzner.com/cloud).
    *   **Créez un compte.**
    *   **Créez un projet** et ajoutez un nouveau serveur.
    *   **Configuration du serveur :**
        *   **Location :** Falkenstein (Allemagne) ou Helsinki (Finlande).
        *   **Image :** Ubuntu 22.04.
        *   **Type :** **CPX11** (2 vCPU, 2 GB RAM, 40 GB SSD). C'est largement suffisant et coûte ~5-6 CHF/mois.
    *   **Résultat :** Vous obtiendrez une adresse IP publique pour votre serveur (ex: `123.123.123.123`). Conservez-la précieusement.

3.  **Installer les outils sur votre ordinateur de développement :**
    *   **VS Code :** Votre éditeur de code.
    *   **Git :** Pour le versionnement du code.
    *   **Node.js :** Installez-le via `nvm` (Node Version Manager) pour gérer facilement les versions.
    *   **Docker Desktop :** Indispensable pour faire tourner les services (base de données, etc.) de manière isolée et propre.

---

### Phase 1 : Mise en Place du Backend avec Strapi (Durée : ~3-4 heures)

On construit d'abord la base de données et l'API.

**Partie A : En Local sur votre machine**

1.  **Créer le projet Strapi :**
    ```bash
    npx create-strapi-app@latest mon-backend --quickstart --ts
    ```
    *   `mon-backend` : Le nom de votre dossier.
    *   `--quickstart` : Utilise SQLite pour démarrer vite. On passera à PostgreSQL pour la production.
    *   `--ts` : Utilise TypeScript, une bonne pratique.

2.  **Lancer Strapi :**
    ```bash
    cd mon-backend
    npm run develop
    ```
    Ouvrez votre navigateur sur `http://localhost:1337/admin`.

3.  **Créer votre compte administrateur.**

4.  **Modéliser les données (le cœur de votre projet) :**
    *   Dans l'interface de Strapi, allez dans **Content-Type Builder**.
    *   Créez une nouvelle "Collection Type". Nommez-la `Deripage`.
    *   Ajoutez les champs suivants :
        *   `nom` (Text)
        *   `prenom` (Text)
        *   `canton` (Enumeration : `AG`, `BE`, `FR`, `GE`, `ZH`, etc.)
        *   `lieu` (Enumeration : `Parlement`, `Facebook`, `Discours`, `Interview`, `Autre`)
        *   `type_probleme` (Enumeration : `Racisme`, `Sexisme`, `Homophobie`, `Antisémitisme`, `Autre`)
        *   `faits` (Rich Text - Markdown activé)
        *   `date_evenement` (Date)
        *   `consequences` (Text)
        *   `sources` (Rich Text - pour lister des liens cliquables)
        *   `images` (Media - multiple)

5.  **Ajouter 2 ou 3 dérapages de test** via le menu **Content Manager**.

6.  **Ouvrir l'accès à l'API :**
    *   Allez dans **Settings > Roles > Public**.
    *   Cliquez sur `Deripage`.
    *   Cochez les actions `find` (pour lister tous les dérapages) et `findOne` (pour en voir un seul).
    *   Sauvegardez.
    *   Testez dans votre navigateur : `http://localhost:1337/api/deripages` doit vous retourner vos données de test en JSON.

**Partie B : Déploiement sur le serveur VPS**

1.  **Connectez-vous à votre serveur :**
    ```bash
    ssh root@VOTRE_IP_PUBLIQUE
    ```

2.  **Installez Docker et Docker Compose** sur le serveur.

3.  **Créez un dossier pour votre projet :** `mkdir /root/strapi-project && cd /root/strapi-project`

4.  **Créez un fichier `docker-compose.yml` :** Ce fichier va orchestrer Strapi et sa base de données PostgreSQL.
    ```yaml
    version: '3'
    services:
      strapi:
        image: strapi/strapi
        container_name: strapi
        restart: unless-stopped
        environment:
          DATABASE_CLIENT: postgres
          DATABASE_HOST: db
          DATABASE_PORT: 5432
          DATABASE_NAME: strapi_db
          DATABASE_USERNAME: strapi_user
          DATABASE_PASSWORD: 'VOTRE_MOT_DE_PASSE_SOLIDE' # Changez ceci
          JWT_SECRET: 'VOTRE_JWT_SECRET_LONG' # Changez ceci
          ADMIN_JWT_SECRET: 'VOTRE_ADMIN_JWT_SECRET_LONG' # Changez ceci
          APP_KEYS: 'key1,key2' # Générez des clés uniques
        volumes:
          - ./strapi-app:/opt/app # Le code de Strapi sera ici
        ports:
          - "1337:1337"
        depends_on:
          - db

      db:
        image: postgres:14-alpine
        container_name: postgres_db
        restart: unless-stopped
        environment:
          POSTGRES_USER: strapi_user
          POSTGRES_PASSWORD: 'VOTRE_MOT_DE_PASSE_SOLIDE' # Doit être le même qu'au-dessus
          POSTGRES_DB: strapi_db
        volumes:
          - ./pgdata:/var/lib/postgresql/data # Persistance des données !
    ```

5.  **Lancez les services :**
    ```bash
    docker-compose up -d
    ```
    Votre Strapi est maintenant en ligne, mais accessible uniquement via `http://VOTRE_IP_PUBLIQUE:1337`. On va maintenant le sécuriser avec un nom de domaine.

6.  **Mise en place du Reverse Proxy avec HTTPS (la touche pro) :** On va utiliser Nginx Proxy Manager (NPM), qui est lui-même une application Docker.
    *   Créez un autre `docker-compose.yml` dans un dossier séparé (ex: `/root/npm`) pour lancer NPM.
    *   Suivez un guide simple pour le configurer. Une fois NPM lancé, accédez à son interface web (`http://VOTRE_IP_PUBLIQUE:81`).
    *   Dans NPM, ajoutez un "Proxy Host" :
        *   **Domain Name :** `api.svp-udc-wall-of-shame.ch`
        *   **Scheme :** `http`
        *   **Forward Hostname / IP :** `strapi` (le nom du service dans votre premier docker-compose)
        *   **Forward Port :** `1337`
    *   Dans l'onglet SSL, demandez un certificat SSL. NPM s'occupe de tout.
    *   **N'oubliez pas !** Chez Infomaniak, créez un enregistrement DNS de type `A` pour le sous-domaine `api` qui pointe vers votre IP publique.

**Félicitations !** Votre backend est déployé, sécurisé et accessible sur `https://api.svp-udc-wall-of-shame.ch`. Vous devrez refaire la configuration des Content-Types et des permissions sur cette instance de production.

---

### Phase 2 : Développement du Frontend avec Next.js (Durée : ~1-2 jours)

On construit maintenant le site public qui va consommer les données de Strapi.

1.  **Créer le projet Next.js :** Sur votre machine locale.
    ```bash
    npx create-next-app@latest mon-frontend --ts --tailwind --eslint --app
    ```

2.  **Configurer la variable d'environnement :**
    *   Créez un fichier `.env.local` à la racine du projet `mon-frontend`.
    *   Ajoutez cette ligne :
        ```
        NEXT_PUBLIC_STRAPI_URL=http://localhost:1337
        ```

3.  **Créer la page d'accueil pour lister les dérapages :**
    *   Ouvrez le fichier `app/page.tsx`.
    *   Écrivez le code pour récupérer et afficher les données.
    ```tsx
    async function getDerapages() {
      const res = await fetch(`${process.env.NEXT_PUBLIC_STRAPI_URL}/api/deripages?populate=*`);
      if (!res.ok) {
        throw new Error('Failed to fetch data');
      }
      return res.json();
    }

    export default async function HomePage() {
      const { data } = await getDerapages();

      return (
        <main className="container mx-auto p-4">
          <h1 className="text-4xl font-bold mb-8">Wall of Shame</h1>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            {data.map((deripage: any) => (
              <div key={deripage.id} className="border p-4 rounded-lg">
                <h2 className="text-xl font-semibold">{deripage.attributes.nom} {deripage.attributes.prenom}</h2>
                <p className="text-gray-600">{new Date(deripage.attributes.date_evenement).toLocaleDateString()}</p>
                <p className="mt-2">{deripage.attributes.faits}</p>
              </div>
            ))}
          </div>
        </main>
      );
    }
    ```

4.  **Lancer le serveur de développement :**
    ```bash
    cd mon-frontend
    npm run dev
    ```    Ouvrez `http://localhost:3000` pour voir le résultat.

5.  **Développez le reste :** Créez les pages de détail, les filtres, le formulaire de soumission, le multilinguisme, etc.

---

### Phase 3 : Déploiement du Frontend et Finalisation (Durée : ~2 heures)

On met le site en ligne et on connecte tout.

1.  **Pousser votre code sur GitHub :** Créez un nouveau dépôt sur GitHub et poussez votre code `mon-frontend`.

2.  **Déployer avec Vercel :**
    *   Créez un compte sur [Vercel](https://vercel.com) avec votre compte GitHub.
    *   Importez votre dépôt GitHub. Vercel va détecter que c'est un projet Next.js.
    *   **Étape cruciale :** Avant de déployer, allez dans les **Settings > Environment Variables** du projet Vercel et ajoutez :
        *   **Name :** `NEXT_PUBLIC_STRAPI_URL`
        *   **Value :** `https://api.svp-udc-wall-of-shame.ch` (l'URL de votre API de production !)
    *   Cliquez sur **Deploy**. Attendez quelques minutes.

3.  **Connecter le nom de domaine principal :**
    *   Dans le dashboard Vercel de votre projet, allez dans **Settings > Domains**.
    *   Ajoutez `svp-udc-wall-of-shame.ch`.
    *   Vercel vous donnera des enregistrements DNS (de type A ou CNAME) à configurer.
    *   Retournez chez Infomaniak et mettez à jour la configuration DNS de votre domaine avec les informations fournies par Vercel.

4.  **Attendre la propagation DNS** (de quelques minutes à quelques heures).

Votre site est maintenant en ligne, rapide, sécurisé, et prêt à être partagé 
