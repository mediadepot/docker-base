FROM ruby:2.4.5-alpine3.8
MAINTAINER Jason Kulatunga <jason@thesparktree.com>

# root filesystem
COPY rootfs /

# copy over distribution config.sh file. Configures container user & group with customizable PID & GID
WORKDIR /srv/
ADD ./alpine.config.sh /srv/config.sh

RUN chmod u+x  /srv/config.sh && \
	apk --update --no-cache add \
    build-base ruby-dev libc-dev linux-headers \
    openssl-dev libxml2-dev libxslt-dev openssh git curl && \
    mkdir ~/.ssh && \
    ssh-keyscan github.com >> ~/.ssh/known_hosts && \
	curl -L -s https://github.com/just-containers/s6-overlay/releases/download/v1.18.1.5/s6-overlay-amd64.tar.gz \
	| tar xvzf - -C /
