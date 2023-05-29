[![Release](https://github.com/enthusiasticcodelab/typescript-node/actions/workflows/release.yml/badge.svg)](https://github.com/enthusiasticcodelab/typescript-node/actions/workflows/release.yml)
[![Create and publish a Docker image to ghcr.io](https://github.com/enthusiasticcodelab/typescript-node/actions/workflows/publish-ghcr.yml/badge.svg)](https://github.com/enthusiasticcodelab/typescript-node/actions/workflows/publish-ghcr.yml)

# Typescript & Node

You can use the Dockefile directly but it is made for Devcontainers basically.

## Usage

Add image to your `devcontainer.json`:

- [without docker-compose.yml file]

  ```jsonc
  // # .devcontainer/devcontainer.json
  {
    "image": "ghcr.io/enthusiasticcodelab/typescript-node:latest"
  }
  ```

- [with docker-compose.yml file]

  ```Dockerfile
  # .devcontainer/Dockerfile
  FROM ghcr.io/enthusiasticcodelab/typescript-node:latest
  ```

  ```yaml
  # .devcontainer/docker-compose.yml
  version: '3.9'
  services:
    app:
      build:
        context: .
      command: sleep infinity
      volumes:
        - ..:/workspace:cached
  ```

  ```jsonc
  // # .devcontainer/devcontainer.json
  {
    "dockerComposeFile": "docker-compose.yml",
    "service": "app",
    "workspaceFolder": "/workspace"
  }
  ```

[without docker-compose.yml file]: https://github.com/enthusiasticcodelab/website/blob/2574612d5b4a6e77db1ea5373590009abc05a7b5/.devcontainer/devcontainer.json#L3
[with docker-compose.yml file]: https://github.com/enthusiasticcodelab/website/tree/main/.devcontainer
