#!/usr/bin/env sh
PUID=${PUID:=15000}
PUSER=${PUSER:=mediadepot}
PGID=${PGID:=15000}
PGROUP=${PGROUP:=mediadepot}

#Create internal mediadepot user (which will be mapped to external user and used to run the process)
addgroup -g $PGID $PGROUP  && adduser -D -u $PUID -G $PGROUP $PUSER