# renovate: datasource=docker depName=crinis/typo3
ARG VERSION=14.3

# See available versions at https://hub.docker.com/r/crinis/typo3/tags
FROM crinis/typo3:${VERSION}
