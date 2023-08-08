# PSV Docker
## Installation
### Clone This Repo
```
git clone https://github.com/BRlin-o/psv-docker psv-docker
cd psv-docker
```
### Clone other repo
```
# rm -rf src
mkdir src
git clone https://github.com/BRlin-o/PSV src/Backend
git clone https://github.com/BRlin-o/PSV-newClient src/Frontend
```
### Run Docker Compose
```
docker compose up
```

## Test building
### Backend
```
docker build -t updater -f ./src/backend/Dockerfile ./src/backend
docker run -p 5000:5000 -v "${PWD}/src/backend:/app" updater

docker run -p 5000:5000 -v /Users/chenghan.lin/Documents/CHlin/PG/decathlon/docker/PSV/src/backend:/app -v /Users/chenghan.lin/Documents/CHlin/PG/decathlon/docker/PSV/envs:/app/envs updater
```