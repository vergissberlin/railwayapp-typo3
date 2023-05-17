# TYPO3 for railway.app

Deploy TYPO3 CMS on railway with automated setup.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/jo_8UU?referralCode=2_sIT9)

It is based on the Docker images of [Martin Hemlich](https://github.com/martin-helmich/docker-typo3)
https://hub.docker.com/r/crinis/typo3

## ✨ Features

* TYPO3 with automated setup
* Comes with a database
* TYPO3 version can be set in the environment variables

## 🐍 How to Deploy

One click deploy on Railway.app and setup the TYPO3 version in the environment variables. Available versions: <https://hub.docker.com/r/crinis/typo3/tags>

```bash
TYPO3_VERSION latest
TYPO3_ADMIN_USERNAME - Initial admin username when installing TYPO3. (defaults to "admin")
TYPO3_ADMIN_PASSWORD - Initial admin and Install Tool password when installing TYPO3.
TYPO3_DB_HOST - Database host.
TYPO3_DB_PORT - Database port. (defaults to "3306")
TYPO3_DB_NAME - Database name.
TYPO3_DB_USERNAME - Database username.
TYPO3_DB_PASSWORD - Database password.
TYPO3_SITE_NAME - Sets the sites title. (defaults to "TYPO3 CMS")
TYPO3_CONTEXT - Could be "Production" or "Development" and is used by TYPO3 to determine if it runs in production or development mode. (defaults to "Production")
MODIFY_LOCAL_CONFIGURATION - Set to "false" to disable modifications to your LocalConfiguration.php. (defaults to "true")
SETUP_TYPO3_SRC - Setup symlinks for TYPO3 source that is shipped with the image. (defaults to "true")
SETUP_TYPO3 - Attempts to setup TYPO3 ands adds a basic .htaccess file and cache configuration. (defaults to "true")
```

1. Click the "Deploy on Railway" button and wait for build & deployment to finish.
2. Take a look to you MYSQL credentials in the Railway dashboard.
3. Open the custom URL (<https://YOURTYPO3.up.railway.app>) and enter your database credentials in the setup wizard.
4. Setup your TYPO3 instance and create a admin user.
5. Enjoy your TYPO3 instance.

## 🐳  Local Development

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
