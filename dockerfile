# Use an official Node runtime as a parent image
FROM node:18 AS build

# Set the working directory
WORKDIR /juyo_marco_ui_garden_build_checks

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the current directory contents into the container
COPY . .

# Build the Storybook
RUN npm run build-storybook

# Make port 8018 available to the world outside this container
EXPOSE 8018

# Serve the Storybook
CMD [ "npx", "http-server", "storybook-static", "-p", "8018" ]
