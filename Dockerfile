# Use an official Nginx image as the base image
FROM nginx:alpine

# Set the working directory in the container to /app
WORKDIR /app

# Copy the content of the current directory to /usr/share/nginx/html in the container
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
