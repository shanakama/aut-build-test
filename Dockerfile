# Use the official lightweight nginx image
FROM nginx:1.27-alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom static site into the container
#COPY ./site /usr/share/nginx/html

# (Optional) Copy a custom nginx config
# COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Nginx listens on port 80 by default
EXPOSE 80

# Run nginx in the foreground (required for containers)
CMD ["nginx", "-g", "daemon off;"]
