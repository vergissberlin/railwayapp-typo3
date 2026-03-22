# Deploy and Host TYPO3 CMS on Railway

TYPO3 is an enterprise-grade, open-source content management system built with PHP. It powers multilingual sites, complex editorial workflows, and extensible backends through extensions. Teams use it for long-lived corporate sites, portals, and structured content that must stay maintainable and secure over years.

## About Hosting TYPO3 CMS

Hosting TYPO3 means running a PHP application behind a web server and pairing it with a MySQL-compatible database (MariaDB or MySQL). You configure database credentials, `TYPO3_CONTEXT` (for example Production), and secure admin passwords via environment variables. File uploads, caches, and configuration must survive restarts, so persistent volumes or equivalent storage matter in production. This template ships a Docker image based on [crinis/typo3](https://hub.docker.com/r/crinis/typo3), with Railway build settings in `railway.toml` (Dockerfile builder, health check on `/`). For a full stack, provision a database service on Railway and point `TYPO3_DB_HOST` (and related variables) at that service.

## Common Use Cases

- Corporate and marketing websites with strict editorial and release workflows
- Multilingual content hubs and regional portals
- Extensions-driven sites (news, SEO, forms) without rebuilding the core CMS

## Dependencies for TYPO3 CMS Hosting

- **PHP runtime and web server** — provided by the TYPO3 container image (see `Dockerfile`)
- **MySQL-compatible database** — MariaDB or MySQL (e.g. Railway MySQL/MariaDB plugin); local development uses MariaDB 10.11 via Docker Compose
- **Persistent storage** — for `fileadmin`, user uploads, and generated files (configure Railway volumes as needed)
- **Environment configuration** — database host, name, user, password; optional `TYPO3_CONTEXT`, admin credentials, timezone

### Deployment Dependencies

- [TYPO3 documentation](https://docs.typo3.org/)
- [Railway documentation](https://docs.railway.app/)
- [crinis/typo3 image tags](https://hub.docker.com/r/crinis/typo3/tags) (base image for this template’s `Dockerfile`)

### Implementation Details

`railway.toml` uses the Dockerfile builder and a root-path health check:

```toml
[build]
builder = "DOCKERFILE"

[deploy]
healthcheckPath = "/"
healthcheckTimeout = 1800
restartPolicyType = "ON_FAILURE"
restartPolicyMaxRetries = 10
```

Set Railway variables to match your database service (names may vary; align with your `docker-compose.yml` / app expectations), for example: `TYPO3_DB_HOST`, `TYPO3_DB_NAME`, `TYPO3_DB_USERNAME`, `TYPO3_DB_PASSWORD`, `TYPO3_ADMIN_PASSWORD`, and `MYSQL_ROOT_PASSWORD` if your setup requires it. See the [README](README.md) for the full variable table and local `docker compose` workflow.

## Why Deploy TYPO3 CMS on Railway?

Railway is a singular platform to deploy your infrastructure stack. Railway will host your infrastructure so you don't have to deal with configuration, while allowing you to vertically and horizontally scale it.

By deploying TYPO3 CMS on Railway, you are one step closer to supporting a complete full-stack application with minimal burden. Host your servers, databases, AI agents, and more on Railway.
