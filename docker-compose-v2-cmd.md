docker compose v2 insatallation and their commands

1. install docker and 
```bash
sudo apt update -y
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER && newgrp docker 
docker --version
docker ps 
```

 2. Install Docker Compose v2 (Plugin Method – Official)
```bash
  mkdir -p ~/.docker/cli-plugins/

curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 \
  -o ~/.docker/cli-plugins/docker-compose

chmod +x ~/.docker/cli-plugins/docker-compose

# Test the installation
docker compose version
```

3. Action & their Commands

i. Start services	
```bash 
  docker compose up
```
ii.Start in background
  ```bash
  docker compose up -d
```	
iii.Stop services	
  
```bash
  docker compose down
```
iv.View logs	
  
```bash
  docker compose logs
  
```
v. View logs of a specific service	 
```bash
  docker compose logs <service>
```
vi. Build images	
```bash
  docker compose build 
```
vii. Rebuild + start	
```bash
  docker compose up --build
```

viii. List running services	
```bash
  docker compose ps 
```
ix. Execute command in service	
```bash
  docker compose exec <service> <cmd>
```
x. Run one-off command	
```bash
  docker compose run <service> <cmd>
```
xi. Pause services	
```bash
  docker compose pause
```
xii. Resume paused services	
```bash
  docker compose unpause
```
xiii. Restart services	
```bash
  docker compose restart
```
xiv. Remove stopped containers	 
```bash
  docker compose rm
```
xv. Pull latest images	
```bash
  docker compose pull
```
xvi. Push images to registry	
```bash
  docker compose push
```
xvii. View help	
```bash
  docker compose --help
```
