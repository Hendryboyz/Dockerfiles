#!/bin/bash
DOCKER_ID=<your-docker-id>
IMAGE_TAG=heroku:docker-python3
docker build --file python-heroku.dockerfile --tag $IMAGE_TAG .
# docker tag $IMAGE_TAG $DOCKER_ID/$IMAGE_TAG
# docker push $DOCKER_ID/$IMAGE_TAG
docker image rm -f $(docker image ls heroku | tail -n 0 | awk '{ print $3 }')
