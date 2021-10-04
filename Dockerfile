# source: https://github.com/Nike-Inc/gimme-aws-creds/blob/master/Dockerfile
FROM python:3.9-alpine
LABEL maintainer="Boon <boon@securecloud.engineer>"

ENV PACKAGES="gcc musl-dev python3-dev libffi-dev openssl-dev cargo git"
RUN apk --update add $PACKAGES \
    && pip3 install --upgrade git+git://github.com/Nike-Inc/gimme-aws-creds.git \
    && apk del --purge $PACKAGES

ENTRYPOINT ["/usr/local/bin/gimme-aws-creds"]