#!/bin/bash -ex
# Start up the landing page so you can visually inspect it
# using docker locally on your machine.
echo "Navigate to http://localhost:8080"
docker run -p 8080:8080 -e MOTD_URL="https://github.com/lsst-dm/lsp-landing-page/blob/master/motd/integration.md" lsstsqre/lsp-landing-page:dev
