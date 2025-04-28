# DockerCheatSheet
# Docker CLI Cheat Sheet

This document provides a quick reference guide for commonly used Docker commands in Ubuntu.

## Install Docker on Ubuntu

1. Install Docker:
   ```bash
   sudo apt install docker.io -y
   ```

2. Check Docker version:
   ```bash
   sudo docker --version
   ```

## Show Docker Info

Display detailed information about Docker:
```bash
docker info
```

## Install Docker Compose v2

1. Install Docker Compose v2:
   ```bash
   sudo apt install docker-compose-v2 -y
   ```

2. Check Docker Compose version:
   ```bash
   sudo docker compose --version
   ```

## Run Docker Without `sudo`

1. Add the current user to the Docker group:
   ```bash
   sudo usermod -aG docker $USER
   ```

2. Reboot your system:
   ```bash
   sudo reboot
   ```

## Image Management

1. Build a Docker image from a Dockerfile:
   ```bash
   docker build -t image-name .
   ```

2. List all Docker images:
   ```bash
   docker images
   ```

3. Delete an image:
   ```bash
   docker rmi image-name
   ```

## Container Management

1. Run an image:
   ```bash
   docker run image-name / image-id
   ```

2. List all running and exited containers:
   ```bash
   docker ps -a
   ```

3. Stop a running container:
   ```bash
   docker stop container-id
   ```

4. Start a container:
   ```bash
   docker start container-id
   ```

5. Restart a container:
   ```bash
   docker restart container-id
   ```

6. Remove a container:
   ```bash
   docker rm container-id
   ```

## Run a Container in the Background

Run a container in detached mode:
```bash
docker run -d image-id / image-name
```

## Access a Running Container

Access the shell of a running container:
```bash
docker exec -it container-name/container-id /bin/bash
```

## Tagging and Port Exposure

1. Tag a name to an image:
   ```bash
   docker --name enter-name-image
   ```

2. Expose a port from the host to a container:
   ```bash
   docker -p portNo:portNo image-name/id
   ```

3. Run a container in the background, expose a port, and tag an image name:
   ```bash
   docker run -d -p 8000:8000 --name image-name
   ```

## Docker Compose

1. Start services defined in a `docker-compose.yml` file:
   ```bash
   docker compose up -d
   ```

2. Stop and remove services:
   ```bash
   docker compose down
   ```

## Docker Network

List all Docker networks:
```bash
docker network ls
```