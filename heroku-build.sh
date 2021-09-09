#!/bin/bash
docker build --file heroku.dockerfile --tag heroku:docker-node-lts .
docker tag heroku:docker-node-lts <docker_id>/heroku:docker-node-lts
docker push <docker_id>/heroku:docker-node-lts
docker image rm -f $(docker image ls heroku | tail -n 1 | awk '{ print $3 }')