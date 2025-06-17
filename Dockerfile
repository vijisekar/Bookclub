# 1. Use nginx from Alpine Linux
FROM nginx:alpine

# 2. Set working directory
WORKDIR /usr/share/nginx/html

# 3. Remove default nginx files FIRST
RUN rm -rf ./*

# 4. Install curl and wget for health checks
RUN apk update && apk add --no-cache curl wget

# 5. Copy your website files
COPY . .

# 6. Expose port 80 for HTTP traffic
EXPOSE 80

# 7. Add a health check
HEALTHCHECK CMD wget --spider --quiet http://localhost || exit 1

# 8. Start nginx in foreground mode
CMD ["nginx", "-g", "daemon off;"]

