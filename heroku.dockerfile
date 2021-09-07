FROM node:lts-alpine

RUN apk upgrade && \
    apk update && \
    apk add curl bash && \
    curl https://cli-assets.heroku.com/install.sh | sh && \
    heroku --version
