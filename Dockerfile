# Use official Nginx image
FROM nginx:alpine

# Set working directory inside container
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy your static files into the container
COPY . .

# Expose port 80
EXPOSE 80

# Nginx starts by default, so no CMD needed
