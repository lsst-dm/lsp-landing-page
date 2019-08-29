# Unprivileged landing page for LSP running in port 8080
# 
FROM nginxinc/nginx-unprivileged:stable-alpine
ADD public_html /usr/share/nginx/html
