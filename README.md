# Project "The Wall of Shame" - Deployment & Maintenance Guide

This document provides a complete guide to the infrastructure, initial setup, and maintenance workflows for this project.

The project consists of two main parts:
*   **Backend:** A Strapi CMS with a PostgreSQL database, running in Docker containers on a VPS.
*   **Frontend:** A Next.js application hosted on Vercel.

## 1. Infrastructure Overview

The entire system is designed to be robust, secure, and scalable. It relies on a separation of concerns between the backend (data management) and the frontend (presentation).

| Component             | Provider/Tool     | Role & Responsibility                                                                                                 |
| --------------------- | ----------------- | --------------------------------------------------------------------------------------------------------------------- |
| **Domain Registrar**    | Infomaniak        | Manages the registration and renewal of the `nopasaran.ch` domain. DNS is delegated to Cloudflare.                        |
| **DNS Provider**        | Cloudflare        | Manages all DNS records. Acts as a proxy, providing DDoS protection, a WAF, and hiding the origin server IP.          |
| **VPS Host**            | Hetzner           | Provides the virtual private server where the backend infrastructure runs.                                            |
| **Server IP Address**   | `w.x.y.z`         | The static IP address of the VPS. This should be kept private and only be known by Cloudflare.                        |
| **Backend API Domain**  | `api.nopasaran.ch`  | The public endpoint for the Strapi API. Traffic is routed through Cloudflare to the VPS.                             |
| **Frontend Domain**     | `nopasaran.ch`    | The public URL for the website. Traffic is routed through Cloudflare to Vercel's servers.                             |
| **Frontend Host**       | Vercel            | Builds, deploys, and hosts the Next.js frontend application globally on its CDN.                                      |
| **Backend Orchestration**| Docker & Caddy    | On the VPS, Docker runs the Strapi and PostgreSQL containers. Caddy acts as a reverse proxy for automatic HTTPS.     |

## 2. Initial Setup Guide (From Scratch)

This guide covers all steps not contained within the Git repositories.

### Prerequisites

*   A domain name purchased from a registrar (e.g., Infomaniak).
*   A VPS running Ubuntu 22.04 or later (e.g., Hetzner).
*   A GitHub account.
*   Accounts for Cloudflare and Vercel.

### Step 1: Point Domain to Cloudflare

1.  Create a free account on Cloudflare and add your site (`nopasaran.ch`).
2.  Cloudflare will provide you with two nameservers (e.g., `damien.ns.cloudflare.com`).
3.  Go to your Infomaniak dashboard, navigate to your domain's **DNS Servers** section.
4.  Replace Infomaniak's default nameservers with the ones provided by Cloudflare. This delegates all DNS management to Cloudflare.

### Step 2: Initial Server (VPS) Configuration

1.  Log into your new VPS as `root`.
    ```bash
    ssh root@[Your VPS IP]
    ```
2.  Create a non-root user for daily operations and give it `sudo` and `docker` privileges.
    ```bash
    adduser devadmin
    usermod -aG sudo devadmin
    usermod -aG docker devadmin
    ```
3.  Log out and log back in as the new user.
    ```bash
    ssh devadmin@[Your VPS IP]
    ```
4.  Disable root login for security.
    ```bash
    sudo nano /etc/ssh/sshd_config
    # Find the line 'PermitRootLogin' and change it to 'no'.
    sudo systemctl restart ssh
    ```
5.  Install Docker and Docker Compose V2.
    ```bash
    sudo apt update && sudo apt upgrade -y
    sudo apt install -y ca-certificates curl gnupg
    # Follow the official Docker guide to add the repository and install docker-ce and its plugins.
    ```
6.  Configure the server firewall (`ufw`).
    ```bash
    sudo ufw default deny incoming
    sudo ufw default allow outgoing
    sudo ufw allow ssh
    sudo ufw allow http
    sudo ufw allow https
    sudo ufw enable
    ```

### Step 3: Configure Cloudflare DNS Records

In your Cloudflare dashboard for `nopasaran.ch`, go to **DNS > Records** and add the following:

1.  **Backend Record:**
    *   **Type:** `A`
    *   **Name:** `api`
    *   **Content:** `w.x.y.z` (Your VPS IP)
    *   **Proxy status:** **Enabled** (Orange Cloud).

2.  **Frontend Records (after getting them from Vercel in the next step):**
    *   **Type:** `A`
    *   **Name:** `@` (for the root domain)
    *   **Content:** The IP address provided by Vercel.
    *   **Proxy status:** **Enabled** (Orange Cloud).
    *   **Type:** `CNAME`
    *   **Name:** `www`
    *   **Content:** The CNAME value provided by Vercel.
    *   **Proxy status:** **Enabled** (Orange Cloud).

### Step 4: Configure and Deploy Frontend on Vercel

1.  Create a new project on Vercel and import your frontend Git repository.
2.  During setup, add an **Environment Variable**:
    *   **Name:** `NEXT_PUBLIC_STRAPI_URL`
    *   **Value:** `https://api.nopasaran.ch`
3.  Deploy the project.
4.  After deployment, go to the project's **Domains** tab, add `nopasaran.ch` and `www.nopasaran.ch`. Vercel will provide the DNS values needed for Step 3.

### Step 5: Deploy the Backend on the VPS

1.  Log into your VPS as `devadmin`.
2.  Clone the main repository.
    ```bash
    git clone [your-git-repo-url]
    cd [repo-name]/infra
    ```
3.  Create the `.env` file for Docker Compose.
    ```bash
    nano .env
    ```
4.  Fill it with your secrets. **Do not commit this file to Git.**
    ```env
    # --- General Project Settings ---
    PROJECT_NAME=nopasaran
    TZ=Europe/Zurich

    # --- Backend URL ---
    BACKEND_URL=https://api.nopasaran.ch

    # --- PostgreSQL Database Settings ---
    POSTGS_DB=nopasaran_db
    POSTGRES_USER=strapi
    POSTGRES_PASSWORD= # Generate a strong random password

    # --- Strapi Security Secrets (Generate new random values) ---
    APP_KEYS= # key1,key2
    API_TOKEN_SALT= # random string
    ADMIN_JWT_SECRET= # random string
    JWT_SECRET= # random string
    ```
5.  Launch the Docker containers.
    ```bash
    docker compose up -d --build
    ```
6.  Check that all containers are running and healthy.
    ```bash
    docker ps
    ```
7.  Access the Strapi admin panel at `https://api.nopasaran.ch/admin` and create your first administrator user. Configure locales and permissions.

## 3. Maintenance & Update Workflow

### 3.1. Updating the Backend (Strapi)

Any change to the Strapi code, schema, or configuration follows this workflow.

1.  **Local Development:** Make your changes locally (e.g., add a field in the Content-Type Builder).
2.  **Commit & Push:** Commit the modified files (`schema.json`, `lifecycles.js`, etc.) to your Git repository.
    ```bash
    git add .
    git commit -m "feat: Add new field to Incident"
    git push origin main
    ```
3.  **SSH into VPS:** Connect to your server.
4.  **Pull Changes:** Navigate to the backend code directory and pull the latest changes.
    ```bash
    cd ~/nopasaran/backend/strapi-backend
    git pull origin main
    ```
5.  **Rebuild & Restart:** Navigate to the `infra` directory and run Docker Compose with the `--build` flag. This is **critical** as it rebuilds the Strapi image with your new code.
    ```bash
    cd ~/nopasaran/infra
    docker compose up -d --build
    ```

### 3.2. Updating the Frontend (Next.js)

The frontend workflow is much simpler thanks to Vercel's Git integration.

1.  **Local Development:** Make your changes to the Next.js code.
2.  **Commit & Push:** Commit your changes and push them to the `main` branch.
    ```bash
    git add .
    git commit -m "fix: Update homepage layout"
    git push origin main
    ```
3.  **Done.** Vercel will automatically detect the push, build a new version of your site, and deploy it with zero downtime.

## 4. Backup and Restore

### Creating a Manual Backup

1.  SSH into the VPS.
2.  Navigate to the `infra` directory.
3.  Run the `pg_dump` command. The backup will be saved in your user's home directory in a `backups` folder.
    ```bash
    docker exec -t nopasaran-db-1 pg_dump -U ${POSTGRES_USER} -d ${POSTGRES_DB} > ~/backups/manual_backup_$(date +%Y-%m-%d).sql
    ```

### Restoring from a Backup

**Warning: This is a destructive operation that will overwrite the current database.**

1.  Place the backup file (e.g., `backup.sql`) on the VPS, for example in the `~/backups` folder.
2.  Navigate to the `infra` directory and stop the Strapi container to prevent new connections.
    ```bash
    docker compose stop strapi
    ```
3.  Run the restore command. This executes `psql` inside the container.
    ```bash
    # First, drop the existing database to start clean
    docker exec -i nopasaran-db-1 psql -U ${POSTGRES_USER} -d ${POSTGRES_DB} -c "DROP SCHEMA public CASCADE; CREATE SCHEMA public;"

    # Then, restore from the backup file
    cat ~/backups/backup.sql | docker exec -i nopasaran-db-1 psql -U ${POSTGRES_USER} -d ${POSTGRES_DB}
    ```
4.  Restart the Strapi container.
    ```bash
    docker compose start strapi
    ```
