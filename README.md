# TYPO3 Railway.app Template

Dieses Template ermöglicht die schnelle Einrichtung einer TYPO3-Installation mit Docker und Railway.app.

## Features

- TYPO3 12.4 LTS
- MariaDB 10.11
- Optimierte Docker-Konfiguration
- Healthchecks für bessere Stabilität
- Umgebungsvariablen für sichere Konfiguration

## Voraussetzungen

- Docker und Docker Compose
- Railway.app CLI (optional für Railway.app Deployment)

## Schnellstart

1. Repository klonen:
   ```bash
   git clone https://github.com/yourusername/railwayapp-typo3.git
   cd railwayapp-typo3
   ```

2. Umgebungsvariablen konfigurieren:
   ```bash
   cp .env.example .env
   ```
   Bearbeiten Sie die `.env`-Datei und setzen Sie sichere Passwörter.

3. Container starten:
   ```bash
   docker-compose up -d
   ```

4. TYPO3 ist nun unter `http://localhost:8080` erreichbar.

## Konfiguration

### Umgebungsvariablen

| Variable | Beschreibung | Standard |
|----------|--------------|----------|
| TYPO3_ADMIN_USERNAME | Admin-Benutzername | admin |
| TYPO3_ADMIN_PASSWORD | Admin-Passwort | - |
| TYPO3_DB_NAME | Datenbankname | typo3 |
| TYPO3_DB_USERNAME | Datenbankbenutzer | typo3 |
| TYPO3_DB_PASSWORD | Datenbankpasswort | - |
| MYSQL_ROOT_PASSWORD | MariaDB Root-Passwort | - |
| TYPO3_CONTEXT | TYPO3-Kontext | Development |
| TZ | Zeitzone | Europe/Berlin |

### Volumes

- `railway-typo3-app`: TYPO3-Dateien
- `railway-typo3-db`: MariaDB-Daten

## Deployment auf Railway.app

1. Railway.app CLI installieren
2. Projekt initialisieren:
   ```bash
   railway init
   ```
3. Umgebungsvariablen setzen:
   ```bash
   railway variables set TYPO3_ADMIN_PASSWORD=your-secure-password
   railway variables set TYPO3_DB_PASSWORD=your-secure-password
   railway variables set MYSQL_ROOT_PASSWORD=your-secure-password
   ```
4. Deployen:
   ```bash
   railway up
   ```

## Runtime-Defaults auf Railway

Dieses Template nutzt `railway.toml` mit folgenden Defaults:

- Build ueber `DOCKERFILE`
- Healthcheck auf `/`
- Restart-Policy `ON_FAILURE` mit maximalen Retries

## Sicherheit

- Alle sensiblen Daten werden über Umgebungsvariablen konfiguriert
- Standard-Passwörter wurden entfernt
- Healthchecks für bessere Stabilität
- Optimierte MariaDB-Konfiguration

## Support

Bei Fragen oder Problemen erstellen Sie bitte ein Issue im GitHub-Repository.

## Lizenz

MIT License - siehe [LICENSE](LICENSE) Datei für Details.

```bash
docker compose up -d
```

Open <http://localhost:8144> in access your typo3 instance. You can find the database credentials in the docker-compose.yml file.

```text
host:           db
user:           typo3
password:  secret
database:   typo3
```
