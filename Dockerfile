FROM alpine:edge

LABEL maintainer="Jonatha Boeckel <jonnyb@jonnyb.name>"

RUN apk add --no-cache --upgrade \
    gcc \
    musl-dev \
    py-pip && \
    pip install yt-dlp

ENTRYPOINT [ "/usr/bin/yt-dlp" ]