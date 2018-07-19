FROM jekyll/builder:3.4.1

LABEL maintainer="Daniel Gomes <danielcesargomes@gmail.com>"

RUN apk upgrade --update
RUN apk add --no-cache python-dev python py-pip build-base && \
    pip install --upgrade pip setuptools && \
    pip install --upgrade pygments && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip /usr/bin/pip ; fi && \
    rm -r /root/.cache

RUN rm -rf /var/cache/apk/*
