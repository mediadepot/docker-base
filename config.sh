#!/usr/bin/env sh
PUID=${PUID:=15000}
PGID=${PGID:=15000}

#Create internal mediadepot user (which will be mapped to external user and used to run the process)
addgroup -g $PUID depot  && adduser -D -u $PGID -G depot depot