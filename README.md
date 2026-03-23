# TYPO3 Railway.app Template

![Template Header](./template-header.svg)


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

<!-- footer -->
<!-- footer -->
[![Airbyte](https://img.shields.io/badge/Airbyte-615EFF?style=for-the-badge&logo=airbyte&logoColor=white)](https://github.com/vergissberlin/railwayapp-airbyte)
[![Apache Airflow](https://img.shields.io/badge/Apache%20Airflow-017CEE?style=for-the-badge&logo=apacheairflow&logoColor=white)](https://github.com/vergissberlin/railwayapp-airflow)
[![CodiMD](https://img.shields.io/badge/CodiMD-0F766E?style=for-the-badge&logo=markdown&logoColor=white)](https://github.com/vergissberlin/railwayapp-codimd)
[![Email Service](https://img.shields.io/badge/Email%20Service-2563EB?style=for-the-badge&logo=maildotru&logoColor=white)](https://github.com/vergissberlin/railwayapp-email)
[![GitLab CE](https://img.shields.io/badge/GitLab%20CE-FC6D26?style=for-the-badge&logo=gitlab&logoColor=white)](https://github.com/vergissberlin/railwayapp-gitlab)
[![Grafana](https://img.shields.io/badge/Grafana-F46800?style=for-the-badge&logo=grafana&logoColor=white)](https://github.com/vergissberlin/railwayapp-grafana)
[![Home Assistant](https://img.shields.io/badge/Home%20Assistant-18BCF2?style=for-the-badge&logo=homeassistant&logoColor=white)](https://github.com/vergissberlin/railwayapp-homeassistant)
[![InfluxDB](https://img.shields.io/badge/InfluxDB-22ADF6?style=for-the-badge&logo=influxdb&logoColor=white)](https://github.com/vergissberlin/railwayapp-influxdb)
[![Mosquitto MQTT](https://img.shields.io/badge/Mosquitto%20MQTT-3C5280?style=for-the-badge&logo=eclipsemosquitto&logoColor=white)](https://github.com/vergissberlin/railwayapp-mqtt)
[![Node-RED](https://img.shields.io/badge/Node--RED-8F0000?style=for-the-badge&logo=nodered&logoColor=white)](https://github.com/vergissberlin/railwayapp-nodered)
[![OpenSearch](https://img.shields.io/badge/OpenSearch-005EB8?style=for-the-badge&logo=opensearch&logoColor=white)](https://github.com/vergissberlin/railwayapp-opensearch)
[![TYPO3 CMS](https://img.shields.io/badge/TYPO3%20CMS-FF8700?style=for-the-badge&logo=typo3&logoColor=white)](https://github.com/vergissberlin/railwayapp-typo3)
