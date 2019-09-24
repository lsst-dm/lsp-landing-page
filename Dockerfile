# Unprivileged landing page for LSP running in port 8080
# 
FROM nginxinc/nginx-unprivileged:stable-alpine

# Add the static website, allowing nginx to write.
# This is because entrypoint.sh runs as nginx, and
# uses the environment variable to set the MOTD
# link in the static site.
ADD --chown=nginx public_html /usr/share/nginx/html
ADD entrypoint.sh /entrypoint.sh
CMD ["/bin/sh", "/entrypoint.sh"]
