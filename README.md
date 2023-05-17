# TYPO3 for railway.app

Deploy TYPO3 CMS on railway with automated setup.

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/jo_8UU?referralCode=2_sIT9)

It is based on the Docker images of [Martin Hemlich](https://github.com/martin-helmich/docker-typo3)

## ✨ Features

* TYPO3 with automated setup
* TYPO3 UI
* Password Authentication (Set username & password in environment variables)

## 🐍 How to Deploy

One click deploy on Railway.app and setup the TYPO3 version in the environment variables. Available versions: https://hub.docker.com/r/martinhelmich/typo3/tags

```bash
TYPO3_VERSION=latest
```

2. Wait for Build & Deployment to Finish
3. Open the custom URL an enter your credentials

## 👩‍💻 How to Use

1. When you configure your TYPO3 connection, use your custom URL as the host but be aware that **the port is 443**! Example: `https://demo-typo3.up.railway.app:443`.
2. Use the token in the environment variables to authenticate
3. Setup bucket name and organization name in the environment variables
4. Use typo3 version 2.0 or above

## 🐳  Local Development

```bash
docker compose up -d
```

Open http://localhost:8144 in access your typo3 instance.
