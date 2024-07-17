# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory
WORKDIR /juyo_marco_ui_garden_build_checks

# Copy the current directory contents into the container
COPY . .

# Install dependencies
RUN npm install

# Build the app for production
RUN npm run build

# Make port 8018 available to the world outside this container
EXPOSE 8018

# Run the app
CMD [ "npx", "serve", "-s", "build", "-l", "8018" ]
