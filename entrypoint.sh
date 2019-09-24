#!/bin/sh -e

# Replace instances of ${MOTD_URL} in the static web site
# with the URL of the environment variable.
# This is done so that an environment variable can set
# the page, which allows docker and kubernetes to override this.
cat /usr/share/nginx/html/index.html.template | envsubst > /usr/share/nginx/html/index.html

# Start nginx in non-daemon mode.
# (this is the normal CMD for the container)
exec nginx -g "daemon off;"
