# PSV Docker
## Installation
### Clone This Repo
```
git clone https://github.com/BRlin-o/psv-docker psv-docker
cd psv-docker
```
### Clone other repo
```
# rm -rf app
mkdir app
git clone https://github.com/BRlin-o/PSV app/backend
git clone https://github.com/BRlin-o/PSV-newClient app/frontend
```
### Setting .env file
```
MYSQL_ROOT_PASSWORD=<your_root_password>
MYSQL_DATABASE=betopsv
MYSQL_USER=psv
MYSQL_PASSWORD=<your_password>
```
### Run Docker Compose
```
docker compose up
```

## About Router
### Nginx：
- 處理所有入站HTTP請求。
- 直接服務靜態內容（例如，React前端應用程序）。
- 代理/api/路由到Flask應用程序。
### Flask：
- 提供API端點（例如/logs/list、/logs和/set-interval）。
### React：
- 前端應用程序，通過Nginx服務。
- 使用React Router處理頁面的路由。
- 與Flask應用程序通信來獲取或設置數據。

## Test building
### Backend
```
docker build -t updater -f ./src/backend/Dockerfile ./app/backend
docker run -p 5000:5000 -v "${PWD}/src/backend:/app" updater

docker run -p 5000:5000 -v /Users/chenghan.lin/Documents/CHlin/PG/decathlon/docker/PSV/src/backend:/app -v /Users/chenghan.lin/Documents/CHlin/PG/decathlon/docker/PSV/envs:/app/envs updater
```