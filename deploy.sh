#!/bin/bash

echo "Starting deployment..."

# Change to app directory if needed
# cd /var/lib/jenkins/workspace/pipeline/


# Install/update dependencies
# npm install

# Run any database migrations or build commands if required
# npm run migrate
npm run build

# Restart the application with a process manager like pm2
pm2 reload pipeline || pm2 start index.js --name pipeline

echo "Deployment finished."
