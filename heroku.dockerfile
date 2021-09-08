FROM docker:20

RUN apk upgrade && \
    apk update && \
    apk add curl bash nodejs && \
    curl https://cli-assets.heroku.com/install.sh | sh && \
    node -v && \
    heroku --version
