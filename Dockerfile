FROM alpine:3.18.3

LABEL maintainer="Jonathan Boeckel <jonnyb@jonnyb.name>"

RUN apk add --no-cache --upgrade \
    gcc \
    musl-dev \
    py-pip && \
    pip install yt-dlp

ENTRYPOINT [ "/usr/bin/yt-dlp" ]
