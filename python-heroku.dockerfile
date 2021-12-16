FROM docker:20.10.8-alpine3.14

RUN apk upgrade \
    && apk update \
    && apk add curl bash nodejs git \
       python3 \
       py3-pip \
    && curl https://cli-assets.heroku.com/install.sh | sh \
    && python3 --version \
    && pip3 --version \
    && heroku --version
