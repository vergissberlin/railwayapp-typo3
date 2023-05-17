# TYPO3 for railway.app

Deploy TYPO3 CMS on railway with automated setup.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/jo_8UU?referralCode=2_sIT9)

It is based on the Docker images of [Martin Hemlich](https://github.com/martin-helmich/docker-typo3)

## ✨ Features

* TYPO3 with automated setup
* TYPO3 UI
* Password Authentication (Set username & password in environment variables)

## 🐍 How to Deploy

One click deploy on Railway.app and setup the TYPO3 version in the environment variables. Available versions: <https://hub.docker.com/r/martinhelmich/typo3/tags>

```bash
TYPO3_VERSION=latest
```

1. Wait for Build & Deployment to Finish
2. Click the "Deploy on Railway" button and deploy the app.
3. Take a look to you MYSQL credentials in the Railway dashboard.
4. Open the custom URL (<https://YOURTYPO3.up.railway.app>) and enter your database credentials in the setup wizard.
5. Setup your TYPO3 instance and create a admin user.
6. Enjoy your TYPO3 instance.

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
