ARG IMAGE=python:3-alpine
ARG BASEFOLDER=/opt
ARG APP=none
ARG APPFOLDER=${BASEFOLDER}/${APP}




FROM ${IMAGE}
ARG APPFOLDER

WORKDIR ${APPFOLDER}

RUN apk add --no-cache apache2-utils

ENTRYPOINT [ "/usr/bin/htpasswd"]
CMD [ "--help" ]
