# Use the latest official Node.js image from Docker Hub as the base image
# 'node:latest' pulls the most up-to-date Node.js version available
FROM node:latest

# Install nodemon globally in the container
# Nodemon helps in auto-restarting the application when file changes in the directory are detected
RUN npm install -g nodemon

# Set the working directory inside the container to '/app'
# All subsequent commands will be executed from this directory
WORKDIR /app

# Copy all the files from the current directory (on the host machine)
# to the working directory ('/app') inside the container
COPY . .

# Run 'npm install' to install all dependencies listed in package.json
# This ensures the project has all the necessary packages to run
RUN npm i

# Expose port 3000 so that it can be accessed from outside the container
# This is typically where the Node.js application will listen for requests
EXPOSE 3000

# Define the default command to run when the container starts
# This runs 'npm run dev' to start the application in development mode (likely using nodemon)
CMD [ "npm", "run", "dev" ]
