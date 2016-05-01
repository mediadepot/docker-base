FROM alpine
MAINTAINER Jason Kulatunga <jason@thesparktree.com>

WORKDIR /srv/
ADD ./config.sh /srv/config.sh
RUN chmod u+x  /srv/config.sh

RUN apk --update --no-cache add \
    openssh git && \
    mkdir ~/.ssh && \
    ssh-keyscan github.com >> ~/.ssh/known_hosts