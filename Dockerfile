# 1. Use nginx from Alpine Linux
FROM nginx:alpine

# 2. Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# 3. Copy your website into nginx html folder
COPY . /usr/share/nginx/html

# 4. Expose port 80
EXPOSE 80

# 5. Start nginx
CMD ["nginx", "-g", "daemon off;"]
