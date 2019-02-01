# Unprivileged landing page for LSP running in port 8080
# 
FROM nginxinc/nginx-unprivileged:stable-alpine
LABEL maintainer="mcarras2@illinois.edu"
LABEL name="mgckind/lsst-lsp-landing"
ARG BUILD_DATE
ARG VERSION
LABEL build-date=$BUILD_DATE
LABEL version=$VERSION
ADD public_html /usr/share/nginx/html
