# TYPO3 Railway.app Template

<p align="center">
  <img src="logo-typo3.png" alt="TYPO3" width="200" />
</p>

This template helps you spin up a TYPO3 installation quickly with Docker and Railway.app.

## Features

- TYPO3 12.4 LTS
- MariaDB 10.11
- Tuned Docker setup
- Health checks for more stable runs
- Environment variables for safer configuration

## Prerequisites

- Docker and Docker Compose
- Railway.app CLI (optional, for Railway.app deployment)

## Quick start

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/railwayapp-typo3.git
   cd railwayapp-typo3
   ```

2. Configure environment variables:

   ```bash
   cp .env.example .env
   ```

   Edit `.env` and set strong passwords.

3. Start the containers:

   ```bash
   docker compose up -d
   ```

4. Open TYPO3 at [http://localhost:8080](http://localhost:8080).

## Configuration

### Environment variables

| Variable               | Description              | Default     |
|------------------------|--------------------------|-------------|
| `TYPO3_ADMIN_USERNAME` | Admin username           | `admin`     |
| `TYPO3_ADMIN_PASSWORD` | Admin password           | —           |
| `TYPO3_DB_NAME`        | Database name            | `typo3`     |
| `TYPO3_DB_USERNAME`    | Database user            | `typo3`     |
| `TYPO3_DB_PASSWORD`    | Database password        | —           |
| `MYSQL_ROOT_PASSWORD`  | MariaDB root password    | —           |
| `TYPO3_CONTEXT`        | TYPO3 application context | `Development` |
| `TZ`                   | Time zone                | `Europe/Berlin` |

### Volumes

- `railway-typo3-app`: TYPO3 files
- `railway-typo3-db`: MariaDB data

### Database (Docker Compose)

From the TYPO3 container, the database host is `db`. User, password, and database name are the values you set in `.env` (`TYPO3_DB_*`). See `docker-compose.yml` for how they are wired.

## Deploying to Railway.app

1. Install the Railway.app CLI.
2. Initialize the project:

   ```bash
   railway init
   ```

3. Set environment variables:

   ```bash
   railway variables set TYPO3_ADMIN_PASSWORD=your-secure-password
   railway variables set TYPO3_DB_PASSWORD=your-secure-password
   railway variables set MYSQL_ROOT_PASSWORD=your-secure-password
   ```

4. Deploy:

   ```bash
   railway up
   ```

## Railway runtime defaults

This template uses `railway.toml` with these defaults:

- Build via `DOCKERFILE`
- Health check on `/`
- Restart policy `ON_FAILURE` with a maximum number of retries

## Security

- Sensitive values are configured through environment variables
- Default passwords are not baked into the image
- Health checks for more stable operation
- Tuned MariaDB configuration

## Support

Open an issue in the GitHub repository if you have questions or run into problems.

## License

MIT License — see the [LICENSE](LICENSE) file for details.
