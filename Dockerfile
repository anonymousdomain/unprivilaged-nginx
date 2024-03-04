FROM nginx:latest

# Create a non-root user and group
RUN addgroup --system nginx && adduser --system --no-create-home --disabled-login --ingroup nginx nginx

# Change ownership of necessary directories
RUN chown -R nginx:nginx /var/cache/nginx /var/run /var/log/nginx /etc/nginx/conf.d

# Switch to the non-root user
USER nginx
