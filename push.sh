#!/bin/bash -ex
# Script to push the image to dockerhub for publishing

TAG=${1:?'You must specify the image tag to push'}

if [ $TAG == "dev" ]; then
  echo "Don't try to push the dev tag.  Dev is only for local testing."
  exit 1
fi

# Replace /'s in branch names with underscores, since you can't
# have a / in a docker tag.
TAG=`echo "$TAG" | tr / _`

echo "Pushing all images with tag $TAG"

docker tag lsstsqre/lsp-landing-page:dev lsstsqre/lsp-landing-page:$TAG

docker push lsstsqre/lsp-landing-page:$TAG
