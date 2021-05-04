FROM alpine:3.12

RUN apk add --no-cache bash
RUN apk add --no-cache sed

WORKDIR /usr/local/bin

ADD https://github.com/npryce/adr-tools/archive/refs/tags/3.0.0.tar.gz adr-tools-3.0.0.tar.gz

RUN tar -xzf adr-tools-3.0.0.tar.gz adr-tools-3.0.0/src && rm adr-tools-3.0.0.tar.gz

ENV PATH="/usr/local/bin/adr-tools-3.0.0/src:${PATH}"

WORKDIR /data

ENTRYPOINT ["adr"]
