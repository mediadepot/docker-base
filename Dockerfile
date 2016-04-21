FROM alpine
MAINTAINER Jason Kulatunga <jason@thesparktree.com>

#Create internal depot user (which will be mapped to external DEPOT_USER, with the uid and gid values)
RUN addgroup -g 15000 depot  && adduser -D -u 15000 -G depot depot

WORKDIR /srv/
