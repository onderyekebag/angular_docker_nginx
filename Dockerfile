# Use the Node image as the base image
FROM node:22-alpine AS build

# Set the working directory
WORKDIR /app

# Install dependencies
COPY package.json angular.json ./
RUN yarn install --frozen-lockfile

# Copy the source code
COPY . .

# Build the application
RUN yarn build --configuration production

# Now, use NGINX to serve the frontend
FROM nginx:alpine

# Copy the Angular build output to the directory served by NGINX
COPY --from=build /app/dist/angular-dockerize/browser /usr/share/nginx/html

# Expose port 80 for NGINX
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
