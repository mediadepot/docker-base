FROM ruby:2.1.8-alpine
MAINTAINER Jason Kulatunga <jason@thesparktree.com>

WORKDIR /srv/
ADD ./config.sh /srv/config.sh
RUN chmod u+x  /srv/config.sh

RUN apk --update --no-cache add \
    build-base ruby-dev libc-dev linux-headers \
    openssl-dev libxml2-dev libxslt-dev openssh git && \
    mkdir ~/.ssh && \
    ssh-keyscan github.com >> ~/.ssh/known_hosts
