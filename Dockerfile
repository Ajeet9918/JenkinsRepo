# Use an official Node runtime as the base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Build the app (for React/Vue etc. you may use `npm run build`)
RUN npm run build

# Expose the app port
EXPOSE 300

# Start the app
CMD ["npm", "start"]
