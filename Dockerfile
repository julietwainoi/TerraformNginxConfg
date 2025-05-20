# Use the official Nginx image as a base
FROM nginx:alpine

# Copy the contents of your local html/ folder into the container's web root
COPY html/ /usr/share/nginx/html

# Expose port 80 so it can be accessed
EXPOSE 80

# Nginx automatically runs as the CMD, so no need to override the entrypoint
