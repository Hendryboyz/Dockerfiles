FROM docker:20.10.8-alpine3.14

RUN apk upgrade && \
    apk update && \
    apk add curl bash nodejs && \
    curl https://cli-assets.heroku.com/install.sh | sh && \
    node -v && \
    heroku --version
