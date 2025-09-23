# nodejs Application

## Create Dockerfile of nodejs app and run nodejs container
1. Write Dockerfile
```
cd node-app
mkdir Dockerfile
```
`Dockerfile`:
```
FROM node:18-alpine

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 5000

ENTRYPOINT ["npm","start"]
```
2. Build a docker image
```
docker build -t nodejs .
```
```
docker images
```
3. Run docker container
```
docker run -d --name node-app -p 5000:5000 nodejs
```
```
docker ps
docker ps -a
```
4. Now open browser and hit ip of server with 5000 port: `http://54.221.112.56:5000/`
