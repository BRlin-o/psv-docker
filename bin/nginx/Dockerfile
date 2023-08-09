# Use an official node runtime as a parent image
FROM node:20 AS build

# Set environment variables
ENV NODE_ENV production

# Set work directory
WORKDIR /app

# Install dependencies
COPY src/frontend/package.json /app/
COPY src/frontend/yarn.lock /app/
RUN yarn install --production

# Copy the current directory contents into the container
COPY src/frontend/ /app/

# Build the app
RUN yarn build

# Use an official Nginx runtime as a parent image
FROM nginx:1.25

# Copy react build output to replace the default nginx contents.
COPY --from=build /app/build /usr/share/nginx/html

# Copy the Nginx configuration file
COPY bin/nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]