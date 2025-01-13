# Angular + Docker + NGINX = Deploy

## Features:
- Angular application built with Yarn
- Dockerfile setup for building and serving the Angular app using NGINX
- Multi-stage Docker build for optimized image size

## Steps:
1. The project is built using a Node.js base image.
2. The Angular app is compiled using the `yarn build --configuration production` command.
3. NGINX is used to serve the static files created during the build process.
4. The application is exposed on port 80.

## To run the project locally:
 Build the Docker container with:

### Start docker container
`docker-compose up --build`

### Docker containers
`docker ps`

### Stop docker container
`docker-compose down`

# Angular Dockerize Project
