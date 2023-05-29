# [Choice] Node.js version (use -bullseye variants on local arm64/Apple Silicon):
# 18, 16, 14, 18-bullseye, 16-bullseye, 14-bullseye, 18-buster, 16-buster, 14-buster
ARG VARIANT=20-bullseye

LABEL org.opencontainers.image.source=https://github.com/enthusiasticcodelab/typescript-node
LABEL org.opencontainers.image.description="Typescript & Node container"
LABEL org.opencontainers.image.licenses=MIT

# https://github.com/microsoft/vscode-dev-containers/tree/main/containers/typescript-node#readme
FROM mcr.microsoft.com/devcontainers/typescript-node:0-${VARIANT}

# Uncomment this section to install additional OS packages.
# ENV DEBIAN_FRONTEND=noninteractive

# RUN \
#   apt-get update && \
#   apt-get -y install --no-install-recommends \
#   openjdk-11-jre-headless

ARG USERNAME

# Switch user from root to node
USER $USERNAME

RUN \
  npm install --global @antfu/ni bumpp npkill npm pnpm taze
