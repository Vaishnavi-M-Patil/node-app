# nodejs Application

## Create Dockerfile for Node.js App and Run Node.js Container
Step 1: Create Dockerfile
```
cd node-app
mkdir Dockerfile
```
- Create a file named `Dockerfile` (no file extension) inside your project directory with the following content:
```
# Use official Node.js v18 Alpine image for smaller size
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Expose port 5000 to allow external access
EXPOSE 5000

# Define the command to run the app
ENTRYPOINT ["npm", "start"]
```
Step 2: Build Docker Image
- Run the following command to build the Docker image named `nodejs`:
```
docker build -t nodejs .
```
- Verify the image is created:
```
docker images
```
Step 3: Run Docker Container
- Run a new container named node-app, map your host's port 5000 to the container's port 5000:
```bash
docker run -d --name node-app -p 5000:5000 nodejs
```
- Check running containers:
```
docker ps
```
- Or list all containers (including stopped):
```
docker ps -a
```
Step 4: Access Application
- Open a web browser and access your app via your server IP with port 5000: `http://<your-server-ip>:5000/`
