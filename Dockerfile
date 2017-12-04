FROM alpine:3.7

ARG BUILD_DATE
ARG VCS_REF

ENV YARN_VERSION=1.3.2-r0

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="Yarn" \
      org.label-schema.description="Simple Yarn container" \
      org.label-schema.url="https://github.com/kns-it/Docker-Yarn" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/kns-it/Docker-Yarn" \
      org.label-schema.vendor="KNS" \
      org.label-schema.version=$YARN_VERSION \
      org.label-schema.schema-version="1.0" \
      maintainer="sebastian.kurfer@kns-it.de"

RUN apk add --update --no-cache nodejs \
				yarn && \
    adduser -h /home/yarn -s /bin/sh -D yarn

USER yarn
WORKDIR /home/yarn

ENTRYPOINT ["yarn"]
