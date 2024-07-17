# Base image
FROM node:18 AS build

# Set the working directory
WORKDIR /juyo_marco_ui_garden

# Add `/app/node_modules/.bin` to $PATH
ENV PATH /juyo_marco_ui_garden/node_modules/.bin:$PATH

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --silent

# Copy the source code
COPY . .

# Set the environment variable to serve the built files
ENV HOST=0.0.0.0
ENV PORT=8083

# Expose the desired port
EXPOSE 8083

# Start the development server
CMD ["npm", "run", "storybook"]
